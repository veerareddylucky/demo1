
variable "subscription_id" { 
	description  = " 8109716b-953e-4344-b785-274f0496196c "
	}
	
 variable "client_id" {      
	 description = " c95f8525-8ca5-465a-ba11-dbc2985a0882 "
 }
 variable "client_secret" { 
	 descriptiond = " ELbY2jWT5Z8Kp.cXOeI.y~9_50lbugmh4f "
 }
 variable " tenant_id "  {
	 descriptiont = " 6a1e61a3-7b85-4188-ac42-273b0d6f2df1 "
 }

variable "vnetrg" {
    default= "testvnetrg"
}
variable "loc" {
	type = "map"
	default = "east us"
}
variable "pip" {
	default = "testpip"
	}
variable "vnet" {
	
}
variable "alloc" {}
variable "subnet1" {
	type ="list"
	default="12.0.1.0/24"
}