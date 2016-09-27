using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SeniorProject.Startup))]
namespace SeniorProject
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
