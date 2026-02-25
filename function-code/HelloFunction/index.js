module.exports = async function (context, myTimer) {
    
    const timeStamp = new Date().toISOString();

    context.log("Hello function ran at:" , timeStamp);
};