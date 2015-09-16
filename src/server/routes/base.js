export default app => {
  app.route('/').get((req, res) => {
    res.send('index page')
  })
  app.route('/api/*').get((req, res) => {
    res.send("api url")
  })
  app.route('/*').get((req, res) => {
    res.send("other pages")
  })
}