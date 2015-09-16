import 'babel/polyfill'
import express from 'express'

import config from './entry/config'
import expressConfig from './entry/express'
import route from './entry/route'

const app = express()

// Express初始化配置
expressConfig(app)

// Express初始化路由配置
route(app)

app.listen(config.web.port, () => console.log('http service started at ', config.web.port))
