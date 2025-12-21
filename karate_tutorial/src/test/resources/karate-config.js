//Karate mandatorily looks for a function named fn()
function fn() {

//This object acts as a container for global variables
  var config = {};

  config.baseUrls = {
    userService: "https://gorest.co.in",
  };
  // load common headers
  config.commonHeaders = karate.callSingle('classpath:config/header.js');

  return config;
}



/* When you are using a real project then BaseURL is fetched like this
function fn() {

  var env = karate.env || 'dev';

  var config = {};

  var urls = {
    dev: {
      userService: 'https://reqres.in/api',
      orderService: 'https://dev.orders.api.com',
      paymentService: 'https://dev.payments.api.com'
    },
    qa: {
      userService: 'https://qa.reqres.in/api',
      orderService: 'https://qa.orders.api.com',
      paymentService: 'https://qa.payments.api.com'
    },
    prod: {
      userService: 'https://api.reqres.in',
      orderService: 'https://orders.api.com',
      paymentService: 'https://payments.api.com'
    }
  };

  config.baseUrls = urls[env];

  karate.log('Environment:', env);
  karate.log('Base URLs:', config.baseUrls);

  return config;
}

*/