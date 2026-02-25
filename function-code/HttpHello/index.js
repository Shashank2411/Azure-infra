module.exports = async function (context, req) {
    context.log("HTTP function triggered.");

    context.res = {
        status: 200,
        body: "Hello from Http trigger Function?"
    };
};