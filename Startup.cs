using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Assessment4.Startup))]
namespace Assessment4
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
