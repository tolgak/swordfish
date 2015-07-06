using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Swordfish.BusinessObjects;

namespace Swordfish.Entities
{

  public partial class SwordfishContext : DbContext
  {
    public SwordfishContext() : base("name=SwordfishContext")
    {
    }

    private SqlParameter CreateParameter(string paramName, object value)
    {
      var varType = value == null ? string.Empty : value.GetType().Name;
      switch ( varType )
      {
        case "Int32":
          return new SqlParameter(paramName, SqlDbType.Int) { Value = value == null ? DBNull.Value : value };
        case "Int64":
          return new SqlParameter(paramName, SqlDbType.BigInt) { Value = value == null ? DBNull.Value : value };
        case "String":
          return new SqlParameter(paramName, SqlDbType.VarChar, 200) { Value = value == null ? DBNull.Value : value };
        case "DateTime":
          return new SqlParameter(paramName, SqlDbType.SmallDateTime) { Value = value == null ? DBNull.Value : value };
        case "Guid":
          return new SqlParameter(paramName, SqlDbType.UniqueIdentifier) { Value = value == null ? DBNull.Value : value };
        case "Boolean":
          return new SqlParameter(paramName, SqlDbType.Bit) { Value = value == null ? DBNull.Value : value };

        default:
          return new SqlParameter(paramName, SqlDbType.VarChar, 200) { Value = DBNull.Value };
      }
    }

    public boProspectCustomer GetById(int id)
    {
      var procedureName = "exec spProspectCustomer_GetById @id";
      var p_id = this.CreateParameter("@id", id);

      return this.Database.SqlQuery<boProspectCustomer>(procedureName, p_id).FirstOrDefault();
    }

  }


}



