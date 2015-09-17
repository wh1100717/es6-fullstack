const env = process.env.NODE_ENV || 'dev'

let config = {}

config.dev = {
  web: {
    host: 'localhost',
    port: '3000',
    base_url: ''
  },
  myslq: {
    host: 'your.mysql.host',
    port: 'your.mysql.port',
    user: 'your.mysql.username',
    password: 'your.mysql.password',
    database: 'your.mysql.dbName',
    charset: 'utf8'
  }
}

config.release = {
  web: {
    host: 'localhost',
    port: '80',
    base_url: ''
  },
  myslq: {
    host: 'your.mysql.host',
    port: 'your.mysql.port',
    user: 'your.mysql.username',
    password: 'your.mysql.password',
    database: 'your.mysql.dbName',
    charset: 'utf8'
  }
}

export default config[env]