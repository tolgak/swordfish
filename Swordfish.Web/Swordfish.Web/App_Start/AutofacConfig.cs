using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using Autofac;
using Autofac.Integration.Mvc;

namespace Swordfish.Web
{
  public interface IDependency { }
  public interface IPerWebRequest { }


  // https://www.talksharp.com/ioc-container-aspnet-mvc
  // http://autofac.readthedocs.org/en/latest/getting-started/index.html
  public static class AutofacConfig
  {
    public static void RegisterDependencies()
    {
      var builder = new ContainerBuilder();

      // autowire
      builder.RegisterAssemblyTypes(Assembly.GetExecutingAssembly())
             .As<IDependency>()
             .AsImplementedInterfaces()
             .InstancePerDependency();

      builder.RegisterAssemblyTypes(Assembly.GetExecutingAssembly())
             .As<IPerWebRequest>()
             .AsImplementedInterfaces()
             .InstancePerRequest();

      // make controllers use constructor injection
      builder.RegisterControllers(Assembly.GetExecutingAssembly());

      // change the MVC dependency resolver to use Autofac
      DependencyResolver.SetResolver(new AutofacDependencyResolver(builder.Build()));
    }

  }
}