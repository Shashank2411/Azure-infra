using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using System;

namespace HelloFunctionApp
{
    public class HelloFunction
    {
        private readonly ILogger _logger;

        public HelloFunction(ILoggerFactory loggerFactory)
        {
            _logger = loggerFactory.CreateLogger<HelloFunction>();
        }

        [Function("HelloFunction")]
        public void Run([TimerTrigger("*/30 * * * * *")] TimerInfo timer)
        {
            _logger.LogInformation("Hello World — Function Executed at: {time}", DateTime.Now);
        }
    }
}
