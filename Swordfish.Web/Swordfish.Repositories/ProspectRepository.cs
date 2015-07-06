using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Swordfish.BusinessObjects;
using Swordfish.Contracts;
using Swordfish.Entities;

namespace Swordfish.Repositories
{
  public class ProspectRepository : IProspectRepository, IDependency
  {
    public boProspectCustomer GetById(int id)
    {
      using ( var ctx = new SwordfishContext() )
      {
        return ctx.GetById(id);        
      }
    }

    private void FixEfProviderServicesProblem()
    {
      //The Entity Framework provider type 'System.Data.Entity.SqlServer.SqlProviderServices, EntityFramework.SqlServer'
      //for the 'System.Data.SqlClient' ADO.NET provider could not be loaded. 
      //Make sure the provider assembly is available to the running application. 
      //See http://go.microsoft.com/fwlink/?LinkId=260882 for more information.

      var instance = System.Data.Entity.SqlServer.SqlProviderServices.Instance;
    }

  }
}
