using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lesson15.Startup))]
namespace Lesson15
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
