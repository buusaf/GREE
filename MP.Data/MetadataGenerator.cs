
using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Data.Entity.Spatial;

namespace MP.Data
{
	[MetadataType(typeof(AspNetRolesMetadata))] 
	public partial class AspNetRoles
	{
		internal sealed class AspNetRolesMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(128)]
    		public String Id { get; set; }

				[Required] 
			[Display(Name = "AspNetRoles_Name", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(256)]
    		public String Name { get; set; }

    		public ICollection<AspNetUsers> AspNetUsers { get; set; }

		}
	}
	
	[MetadataType(typeof(AspNetUserClaimsMetadata))] 
	public partial class AspNetUserClaims
	{
		internal sealed class AspNetUserClaimsMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 Id { get; set; }

				[Required] 
			[Display(Name = "UserId", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(128)]
    		public String UserId { get; set; }

		[Display(Name = "ClaimType", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String ClaimType { get; set; }

		[Display(Name = "ClaimValue", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String ClaimValue { get; set; }

    		public ICollection<AspNetUsers> AspNetUsers { get; set; }

		}
	}
	
	[MetadataType(typeof(AspNetUserLoginsMetadata))] 
	public partial class AspNetUserLogins
	{
		internal sealed class AspNetUserLoginsMetadata
		{
		
				[Required] 
			[Display(Name = "LoginProvider", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(128)]
    		public String LoginProvider { get; set; }

				[Required] 
			[Display(Name = "ProviderKey", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(128)]
    		public String ProviderKey { get; set; }

				[Required] 
			[Display(Name = "UserId", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(128)]
    		public String UserId { get; set; }

    		public ICollection<AspNetUsers> AspNetUsers { get; set; }

		}
	}
	
	[MetadataType(typeof(AspNetUsersMetadata))] 
	public partial class AspNetUsers
	{
		internal sealed class AspNetUsersMetadata
		{
		
				[Required] 
			[Display(Name = "Id", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(128)]
    		public String Id { get; set; }

		[Display(Name = "Email", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(256)]
			[DataType(DataType.EmailAddress)]
    		public String Email { get; set; }

				[Required] 
			[Display(Name = "EmailConfirmed", ResourceType = typeof(MP.Resources.Translation))] 
							[DataType(DataType.EmailAddress)]
    		public Boolean EmailConfirmed { get; set; }

		[Display(Name = "PasswordHash", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String PasswordHash { get; set; }

		[Display(Name = "SecurityStamp", ResourceType = typeof(MP.Resources.Translation))] 
				    		public String SecurityStamp { get; set; }

		[Display(Name = "PhoneNumber", ResourceType = typeof(MP.Resources.Translation))] 
							[DataType(DataType.PhoneNumber)]
    		public String PhoneNumber { get; set; }

				[Required] 
			[Display(Name = "PhoneNumberConfirmed", ResourceType = typeof(MP.Resources.Translation))] 
							[DataType(DataType.PhoneNumber)]
    		public Boolean PhoneNumberConfirmed { get; set; }

				[Required] 
			[Display(Name = "TwoFactorEnabled", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Boolean TwoFactorEnabled { get; set; }

		[Display(Name = "LockoutEndDateUtc", ResourceType = typeof(MP.Resources.Translation))] 
							[DataType(DataType.DateTime)]
    		public DateTime LockoutEndDateUtc { get; set; }

				[Required] 
			[Display(Name = "LockoutEnabled", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Boolean LockoutEnabled { get; set; }

				[Required] 
			[Display(Name = "AccessFailedCount", ResourceType = typeof(MP.Resources.Translation))] 
				    		public Int32 AccessFailedCount { get; set; }

				[Required] 
			[Display(Name = "UserName", ResourceType = typeof(MP.Resources.Translation))] 
							[StringLength(256)]
    		public String UserName { get; set; }

    		public ICollection<AspNetRoles> AspNetRoles { get; set; }

    		public ICollection<UserProfile> UserProfile { get; set; }

    		public ICollection<AspNetUserClaims> AspNetUserClaims { get; set; }

    		public ICollection<AspNetUserLogins> AspNetUserLogins { get; set; }

		}
	}
	
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

    		public ICollection<AspNetUsers> AspNetUsers { get; set; }

		}
	}
	
	
}

