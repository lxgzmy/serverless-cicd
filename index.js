exports.handler = (event, context, callback) => {
    callback(null, {
        statusCode: '200',
        body: 'The time in Los Angeles is 333: version 13',
    });
};
