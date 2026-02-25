module.exports = async function (context, myTimer) {
    
    var timeStamp = new Date().toISOString();

    context.log('Hello function ran at: ', timeStamp);
};