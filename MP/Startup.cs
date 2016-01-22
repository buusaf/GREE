using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MP.Startup))]
namespace MP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
