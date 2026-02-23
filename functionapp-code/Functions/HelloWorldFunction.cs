using System.Net;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using Microsoft.Extensions.Logging;

namespace FunctionApp.Functions;

public class HelloWorldFunction
{
    private readonly ILogger<HelloWorldFunction> _logger;

    public HelloWorldFunction(ILogger<HelloWorldFunction> logger)
    {
        _logger = logger;
    }

    [Function("HelloWorld")]
    public HttpResponseData Run(
        [HttpTrigger(AuthorizationLevel.Function, "get", "post")] HttpRequestData req)
    {
        _logger.LogInformation("Hello World"); // <- Logs what you asked

        var res = req.CreateResponse(HttpStatusCode.OK);
        res.WriteString("Hello World from Azure Function (.NET)!");
        return res;
    }
}