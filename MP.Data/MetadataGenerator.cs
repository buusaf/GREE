
using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Data.Entity.Spatial;

namespace MP.Data
{
	[MetadataType(typeof(MonthlyPaymentMetadata))] 
	public partial class MonthlyPayment
	{
		internal sealed class MonthlyPaymentMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Id { get; set; }

				[Required] 
			[Display(Name = "Year", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Year { get; set; }

				[Required] 
			[Display(Name = "Month", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Month { get; set; }

				[Required] 
			[Display(Name = "DateOfTransaction", ResourceType = typeof(MP.Resources.Translation))] 
							[DataType(DataType.DateTime)]
    		public DateTime DateOfTransaction { get; set; }

				[Required] 
			[Display(Name = "Price", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Decimal Price { get; set; }

		[Display(Name = "Description", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String Description { get; set; }

				[Required] 
			[Display(Name = "UserProfileId", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 UserProfileId { get; set; }

    		public ICollection<UserProfile> UserProfile { get; set; }

    		public ICollection<PaymentType> PaymentType { get; set; }

		}
	}
	
	[MetadataType(typeof(MonthlySallaryMetadata))] 
	public partial class MonthlySallary
	{
		internal sealed class MonthlySallaryMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Id { get; set; }

				[Required] 
			[Display(Name = "Month", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Month { get; set; }

				[Required] 
			[Display(Name = "Price", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Decimal Price { get; set; }

		[Display(Name = "Description", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String Description { get; set; }

				[Required] 
			[Display(Name = "UserProfileId", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 UserProfileId { get; set; }

    		public ICollection<UserProfile> UserProfile { get; set; }

		}
	}
	
	[MetadataType(typeof(PaymentTypeMetadata))] 
	public partial class PaymentType
	{
		internal sealed class PaymentTypeMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Id { get; set; }

				[Required] 
			[Display(Name = "PaymentType_Name", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String Name { get; set; }

				[Required] 
			[Display(Name = "Description", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String Description { get; set; }

				[Required] 
			[Display(Name = "Active", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Boolean Active { get; set; }

    		public ICollection<MonthlyPayment> MonthlyPayment { get; set; }

		}
	}
	
	[MetadataType(typeof(UserProfileMetadata))] 
	public partial class UserProfile
	{
		internal sealed class UserProfileMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Id { get; set; }

				[Required] 
			[Display(Name = "FirstName", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String FirstName { get; set; }

				[Required] 
			[Display(Name = "LastName", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String LastName { get; set; }

				[Required] 
			[Display(Name = "Active", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Boolean Active { get; set; }

    		public ICollection<MonthlySallary> MonthlySallary { get; set; }

    		public ICollection<MonthlyPayment> MonthlyPayment { get; set; }

		}
	}
	
	
}

