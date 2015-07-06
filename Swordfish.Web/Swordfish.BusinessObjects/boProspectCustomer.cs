using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Swordfish.BusinessObjects
{
	public class boProspectCustomer
	{

		[Required] 
		[DisplayName("Id")] 
		public int Id {get; set;}

		[Required] 
		[DisplayName("Sms Number")] 
		public string SmsNumber {get; set;}

		[Required] 
		[DisplayName("SupplierType")] 
		public int SupplierTypeId {get; set;}

		[Required] 
		[DisplayName("Supplier Type")] 
		public string SupplierTypeName {get; set;}

		[Required] 
		[DisplayName("City Id")] 
		public int CityId {get; set;}

		[Required] 
		[DisplayName("City")] 
		public string CityName {get; set;}

		 
		[DisplayName("Town Id")] 
		public int? TownId {get; set;}

		 
		[DisplayName("Town")] 
		public string TownName {get; set;}

		[Required] 
		[DisplayName("Is Subscribed")] 
		public bool IsSubscribed {get; set;}

		 
		[DisplayName("Unsubscription Date")] 
		public DateTime? UnsubscribeDate {get; set;}

		 
		[DisplayName("Created By")] 
		public string CreatedBy {get; set;}

		 
		[DisplayName("User Name")] 
		public string UserName {get; set;}

		 
		[DisplayName("Created Date")] 
		public DateTime? CreatedDate {get; set;}
	}

}
