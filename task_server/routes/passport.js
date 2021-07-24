const express = require('express')
const router = express.Router()
const Captcha = require('../utils/captcha/index')
const md5 = require('md5')
const keys = require('../keys')
const jwt = require('jsonwebtoken')
const handleDB = require('../db/handleDB')

// 获取验证码登录接口
router.get('/api/login/img_captcha', (req, res) => {
    let captchaObj = new Captcha()
    let captcha = captchaObj.getCode()
    res.setHeader('Content-Type', 'image/svg+xml')
    // 将图片的验证码存入到 session 中
    req.session['img_captcha'] = captcha.text
    res.type('svg')
    res.send(captcha.data)
})
// 登录接口
router.post('/api/login', (req, res) => {
    (async function () {
        let {
            username,
            password,
            captcha
        } = req.body
        console.log(req.body);
        if (!username || !password) {
            res.send({
                msg: '用户名或密码不能为空', //返回内容
                code: '401' //状态码 
            })
            return
        }
        console.log(req.session['img_captcha']);
        if (captcha.toLowerCase() !== req.session['img_captcha'].toLowerCase()) {
            res.send({
                msg: "验证码错误",
                code: '402'
            })
            return
        }
        let queryUser = await handleDB.queryUser(res, username)
        if (queryUser <= 0) {
            res.send({
                msg: "用户不存在",
                code: '403'
            })
        } else {
            let loginResult = await handleDB.login(res, username, md5(md5(password) + keys.password_key))
            if (loginResult.length <= 0) {
                res.send({
                    msg: "用户名或密码错误",
                    code: '405'
                })
                return
            } else { //正确
                // 保存当前登录用户的id
                req.session['user_id'] = loginResult[0].id
                // 生成token
                let token = jwt.sign({
                    username: username
                }, keys.jwt_salt, {
                    expiresIn: 60 * 60 * 2
                })
                res.send({
                    msg: "登录成功",
                    code: '200',
                    token: token
                })
            }
        }
    })()
})

// 退出登录
router.post('/api/logout', (req, res) => {
    // 删除(session)登录状态
    delete req.session['user_id']
    delete req.session['img_captcha']
    res.send({
        code: '200',
        msg: '退出登录成功'
    })
})

// 提交反馈接口
router.post('/api/comment', (req, res) => {
    (async function () {
        let {
            title,
            description
        } = req.body
        if (!title) {
            res.send({
                msg: '请填写标题',
                code: '401',
            })
            return
        }
        if (!description) {
            res.send({
                msg: '请填写内容',
                code: '401'
            })
            return
        }
        // 从session中获取当前用户id
        let user_id = req.session['user_id']
        if (!user_id) {
            res.send({
                msg: '用户未登录，请登录',
                code: '401'
            })
            return
        }
        let create_time = new Date().toLocaleString()
        // 数据库操作
        let commentResult = await handleDB.submitComment(res, user_id, title, description, create_time)
        if (!commentResult.insertId) {
            res.send({
                msg: '提交反馈出错',
                code: '401'
            })
            return
        };
        res.send({
            msg: '提交反馈成功',
            code: '200'
        })

    })()
})
// 添加任务
router.post('/api/addtask', (req, res) => {
    (async function () {
        let {
            category_id,
            name,
            description,
            label_id
        } = req.body
        if (!category_id || !name || !description || !label_id) {
            res.send({
                msg: '请填写完整内容',
                code: '401'
            })
            return
        }
        let user_id = req.session['user_id']
        let create_time = new Date().toLocaleString()
        // 添加任务
        let addTaskResult = await handleDB.submitTask(res, user_id, category_id, name, description, create_time)
        if (!addTaskResult.insertId) {
            res.send({
                msg: '添加任务出错',
                code: '401'
            })
            return
        }
        // 向task_label添加task_id
        let task_id = addTaskResult.insertId
        let tasklabelResult = await handleDB.addTaskLabel(res, task_id, label_id, create_time)
        if (!tasklabelResult.insertId) {
            res.send({
                msg: '添加出错',
                code: '401'
            })
            return
        }
        res.send({
            msg: '添加任务成功',
            code: '200'
        })
    })()
})

// 获取等级列表
router.get('/api/category', (req, res) => {
    (async function () {
        let categoryResult = await handleDB.queryCategory(res)
        if (categoryResult.length) {
            res.send({
                msg: '获取等级成功',
                code: '200',
                data: categoryResult
            })
        } else {
            res.send({
                msg: '获取等级失败',
                code: '401',
            })
            return
        }
    })()
})

// 获取标签列表
router.get('/api/label', (req, res) => {
    (async function () {
        let labelResult = await handleDB.queryLabel(res)
        if (labelResult.length) {
            res.send({
                msg: '获取标签成功',
                code: '200',
                data: labelResult
            })
        } else {
            res.send({
                msg: '获取标签失败',
                code: '401',
            })
            return
        }
    })()
})

// 获取标签-任务数列表数据
router.get('/api/label_task', (req, res) => {
    (async function () {
        let {
            curPage,
            pageSize
        } = req.query
        // console.log(typeof curPage, typeof pageSize);
        let categoryTaskResult = await handleDB.queryLabel_Task(res, curPage, pageSize)
        let categoryResult = await handleDB.queryLabel(res)
        let total = categoryResult.length
        if (categoryTaskResult.length < 0 || total < 0) {
            res.send({
                code: '402',
                msg: '获取数据失败'
            })
            return
        }
        res.send({
            code: '200',
            msg: '获取数据成功',
            data: categoryTaskResult,
            total: total
        })
    })()
})


// 获取等级-任务数列表数据
router.get('/api/category_task', (req, res) => {
    (async function () {
        let {
            curPage,
            pageSize
        } = req.query
        // console.log(typeof curPage, typeof pageSize);
        let categoryTaskResult = await handleDB.queryCategory_Task(res, curPage, pageSize)
        let categoryResult = await handleDB.queryCategory(res)
        let total = categoryResult.length
        if (categoryTaskResult.length < 0 || total < 0) {
            res.send({
                code: '402',
                msg: '获取数据失败'
            })
            return
        }
        res.send({
            code: '200',
            msg: '获取数据成功',
            data: categoryTaskResult,
            total: total
        })
    })()
})

// 添加分类(等级)
router.post('/api/addcategory', (req, res) => {
    (async function () {
        let {
            name
        } = req.body
        if (!name) {
            res.send({
                code: '402',
                msg: '请输入内容'
            })
            return
        }
        // 根据名称查询
        let hasResult = await handleDB.queryCategoryByName(res, name)
        if (hasResult.length > 0) {
            // 存在则不添加
            res.send({
                msg: '等级已存在,请重新添加',
                code: '401'
            })
            return
        } else {
            let user_id = req.session['user_id']
            if (!user_id) {
                res.send({
                    code: '401',
                    msg: '未登录,请登录'
                })
                return
            }
            let create_time = new Date().toLocaleString()
            // name不存在，则可以添加
            let insertResult = await handleDB.addCategory(res, user_id, name, create_time)
            if (insertResult.insertId) {
                res.send({
                    code: '200',
                    msg: '添加成功'
                })
            } else {
                res.send({
                    code: '403',
                    msg: '添加失败'
                })
                return
            }
        }
    })()
})

// 添加标签
router.post('/api/addlabel', (req, res) => {
    (async function () {
        let {
            name
        } = req.body
        if (!name) {
            res.send({
                code: '402',
                msg: '请输入内容'
            })
            return
        }
        // 根据名称查询
        let hasResult = await handleDB.queryLabelByName(res, name)
        if (hasResult.length > 0) {
            // 存在则不添加
            res.send({
                msg: '标签已存在,请重新添加',
                code: '401'
            })
            return
        } else {
            let user_id = req.session['user_id']
            if (!user_id) {
                res.send({
                    code: '401',
                    msg: '未登录,请登录'
                })
                return
            }
            let create_time = new Date().toLocaleString()
            // name不存在，则可以添加
            let insertResult = await handleDB.addLabel(res, user_id, name, create_time)
            if (insertResult.insertId) {
                res.send({
                    code: '200',
                    msg: '添加成功'
                })
            } else {
                res.send({
                    code: '403',
                    msg: '添加失败'
                })
                return
            }
        }
    })()
})

// 删除等级
router.delete('/api/category', (req, res) => {
    (async function () {
        let {
            id
        } = req.body

        // 删除category
        let deleteResult = await handleDB.deleteCategoryById(res, id)
        if (deleteResult.affectedRows > 0) {
            // 成功
            res.send({
                code: '200',
                msg: '删除成功'
            })
        } else {
            res.send({
                code: '401',
                msg: '删除失败'
            })
        }
    })()
})
// 删除标签
router.delete('/api/label', (req, res) => {
    (async function () {
        let {
            id
        } = req.body

        // 删除category
        let deleteResult = await handleDB.deleteLabelById(res, id)
        if (deleteResult.affectedRows > 0) {
            // 成功
            res.send({
                code: '200',
                msg: '删除成功'
            })
        } else {
            res.send({
                code: '401',
                msg: '删除失败'
            })
        }
    })()
})

// 获取单个分类信息
router.get('/api/singlecategory', (req, res) => {
    (async function () {
        let {
            id
        } = req.query
        let singleResult = await handleDB.queryCategoryById(res, id)
        if (singleResult.length > 0) {
            res.send({
                code: '200',
                msg: '获取成功',
                data: singleResult
            })
        }
    })()
})
// 获取单个任务信息
router.get('/api/singletask', (req, res) => {
    (async function () {
        let {
            id
        } = req.query
        let singleResult = await handleDB.queryTaskById(res, id)
        if (singleResult.length > 0) {
            res.send({
                code: '200',
                msg: '获取成功',
                data: singleResult
            })
        }
    })()
})

// 获取单个标签信息
router.get('/api/singlelabel', (req, res) => {
    (async function () {
        let {
            id
        } = req.query
        let singleResult = await handleDB.queryLabelById(res, id)
        if (singleResult.length > 0) {
            res.send({
                code: '200',
                msg: '获取成功',
                data: singleResult
            })
        }
    })()
})

// 提交修改分类
router.post('/api/editcategory', (req, res) => {
    (async function () {
        let {
            id,
            name
        } = req.body
        // 根据名称查询
        let hasResult = await handleDB.queryCategoryByName(res, name)
        if (hasResult.length > 0) {
            // 存在，无法修改
            res.send({
                msg: '等级已存在,无法修改',
                code: '401'
            })
            return
        } else {
            let update_time = new Date().toLocaleString()
            // 不存在，可以修改
            let updatecateResult = await handleDB.updateCategoryById(res, id, name, update_time)
            if (updatecateResult.affectedRows > 0) {
                // 成功
                res.send({
                    code: '200',
                    msg: '修改成功'
                })
            } else {
                // 失败
                res.send({
                    code: '401',
                    msg: '修改失败'
                })
                return
            }
        }
    })()
})

// 提交修改标签
router.post('/api/editlabel', (req, res) => {
    (async function () {
        let {
            id,
            name
        } = req.body
        // 根据名称查询
        let hasResult = await handleDB.queryLabelByName(res, name)
        if (hasResult.length > 0) {
            // 存在，无法修改
            res.send({
                msg: '标签已存在,无法修改',
                code: '401'
            })
            return
        } else {
            let update_time = new Date().toLocaleString()
            // 不存在，可以修改
            let updatecateResult = await handleDB.updateLabelById(res, id, name, update_time)
            if (updatecateResult.affectedRows > 0) {
                // 成功
                res.send({
                    code: '200',
                    msg: '修改成功'
                })
            } else {
                // 失败
                res.send({
                    code: '401',
                    msg: '修改失败'
                })
                return
            }
        }
    })()
})

// 模糊查询接口
router.get('/api/task', (req, res) => {
    (async function () {
        let {
            name,
            category_id,
            label_id,
            curPage,
            pageSize
        } = req.query
        let taskResult = await handleDB.queryTask(res, name, category_id, label_id, curPage, pageSize)
        let taskNumResult = await handleDB.queryTaskCount(res, name, category_id, label_id)
        if (taskResult.length < 0) {
            res.send({
                code: '402',
                msg: '暂无数据'
            })
            return
        }
        res.send({
            code: '200',
            msg: '获取数据成功',
            data: taskResult,
            total: taskNumResult.length
        })
    })()
})

// 删除任务接口
router.delete('/api/task', (req, res) => {
    (async function () {
        let {
            id
        } = req.body
        let update_time = new Date().toLocaleString()
        let deleteTaskResult = await handleDB.deleteTaskById(res, id, update_time)
        if (deleteTaskResult.affectedRows > 0) {
            // 成功
            res.send({
                code: '200',
                msg: '删除成功'
            })
        } else {
            res.send({
                code: '401',
                msg: '删除失败'
            })
        }
    })()
})

// 提交修改任务
router.post('/api/edittask', (req, res) => {
    (async function () {
        let {
            id,
            name,
            description
        } = req.body
        let update_time = new Date().toLocaleString()
        let updatecateResult = await handleDB.updateTaskById(res, id, name, description, update_time)
        if (updatecateResult.affectedRows > 0) {
            // 成功
            res.send({
                code: '200',
                msg: '修改成功'
            })
        } else {
            // 失败
            res.send({
                code: '401',
                msg: '修改失败'
            })
            return
        }

    })()
})

// 数量统计
router.get('/api/data', (req, res) => {
    (async function () {
        // 获取未完成
        let unCompletedResult = await handleDB.unCompleted(res)
        // 获取上周完成
        let lastWeekResult = await handleDB.laskweekCompleted(res)
        // 获取上月完成
        let lastMonthResult = await handleDB.laskmonthCompleted(res)
        // 获取已完成
        let completedResult = await handleDB.completed(res)
        // 获取最近7天
        let latelyAweekResult = await handleDB.calculaLatelyAweek(res)
        // 获取最近几周
        let latelyMonthResult = await handleDB.calculaLatelyMonth(res)
        if (!unCompletedResult.length ||
            !lastWeekResult.length ||
            !lastMonthResult.length ||
            !completedResult.length ||
            !latelyAweekResult.length ||
            !latelyMonthResult.length) {
            res.send({
                code: '401',
                msg: '获取数据失败'
            })
            return
        }

        res.send({
            code: '200',
            msg: '获取数据成功',
            uncompletedcount: unCompletedResult[0].count,
            lastweekcount: lastWeekResult[0].count,
            lastmonthcount: lastMonthResult[0].count,
            completedcount: completedResult[0].count,
            latelyweekdata: latelyAweekResult,
            latelymonthdata: latelyMonthResult,
        })

    })()
})

// 修改密码
router.post('/api/password', (req, res) => {
    (async function () {
        let {
            old_password,
            new_password,
            new_password2
        } = req.body
        // 当前用户登录id
        let user_id = req.session['user_id']
        // 根据id查询用户密码
        let passwordRusult = await handleDB.queryUserById(res, user_id)
        if (!old_password || !new_password || !new_password2) {
            res.send({
                msg: "密码不能为空",
                code: '401'
            })
            return
        }
        if (new_password !== new_password2) {
            res.send({
                msg: '两次密码不一致',
                code: '401'
            })
            return
        }
        if (md5(md5(old_password) + keys.password_key) !== passwordRusult[0].password) {
            res.send({
                msg: '旧密码错误',
                code: '401'
            })
            return
        }
        // update
        let updatecateResult = await handleDB.updatePassword(res, user_id, md5(md5(new_password) + keys.password_key))
        if (updatecateResult.affectedRows < 0) {
            // 失败
            res.send({
                code: '402',
                msg: '修改失败'
            })
            return
        }
        res.send({
            code: '200',
            msg: '密码修改成功'
        })
    })()
})

// 生成token
// router.get('/passport/token', (req, res) => {
//     // 生成token
//     const token = jwt.sign({
//         id: 1,
//         username: 'zhangsan'
//     }, keys.jwt_salt, {
//         expiresIn: 60 * 60 * 2
//     })

//     res.send({
//         errmsg: '登录成功',
//         errno: '200',
//         result: {
//             token: token
//         }
//     })
// })

module.exports = router