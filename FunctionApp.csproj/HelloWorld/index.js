module.exports = async function (context, req) {
    context.log("Hello World");  // <-- This will show in portal logs
    return {
        status: 200,
        body: "Hello World from Azure Function!"
    };
};