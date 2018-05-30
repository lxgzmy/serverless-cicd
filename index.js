exports.handler = (event, context, callback) => {
    console.log("second version");
    console.log("another change 2");
    callback(null, {
        statusCode: '200',
        body: 'The time in Los Angeles is 333: version 10' ,
    });
};
