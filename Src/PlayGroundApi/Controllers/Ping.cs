using Microsoft.AspNetCore.Mvc;

namespace PlayGroundApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Ping : ControllerBase
    {

        [HttpGet(Name = "GetPing")]
        public string Get(string message)
        { 
            return message; 
        }
    }
}
