const env = process.env.NODE_ENV || 'dev'

let config = {}

config.dev = {
  web: {
    host: 'localhost',
    port: '3002',
    base_url: ''
  }
}

config.release = {
  web: {
    host: 'localhost',
    port: '80',
    base_url: ''
  }  
}

export default config[env]