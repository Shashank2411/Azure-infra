module.exports = async function (context, req) {
    context.log('HTTP function processed a request.');

    context.res = {
        status: 200,
        body: "Hello from HTTP Trigger Functions!"
    };
};