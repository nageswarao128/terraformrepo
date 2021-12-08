terraform {
  required_version = ">= 0.11" 
 backend "azurerm" {
  storage_account_name = "mystorageaccount123128"
    container_name       = "mycontainer"
    key                  = "Key1"
	access_key  ="Key1"
	}
	}
resource "azurerm_resource_group" "master" {
  name     = "PULTerraform"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "master" {
  name                = "appserviceplan"
  location            = "${azurerm_resource_group.master.East US}"
  resource_group_name = "${azurerm_resource_group.master.terraform}"

  sku {
    tier = "Pay-As-You-Go"
    size = "S1"
  }
}

resource "azurerm_app_service" "master" {
  name                = "appservicename"
  location            = "${azurerm_resource_group.master.East US}"
  resource_group_name = "${azurerm_resource_group.master.terraform}"
  app_service_plan_id = "${azurerm_app_service_plan.master.nageswarao}"

}
