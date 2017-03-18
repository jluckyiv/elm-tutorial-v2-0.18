var jsonServer = require('json-server');

// Returns an Express server
var server = jsonServer.create();

// Set default middlewares (logger, static, cors, and no-cache)
server.use(jsonServer.defaults());

// Create router
var router = jsonServer.router('db.json');
server.use(router);

// Start server
console.log('Listening at 4000.');
server.listen(4000);
