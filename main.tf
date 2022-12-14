resource "azurerm_postgresql_server" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name

  administrator_login          = var.administrator_login
  administrator_login_password = var.admin_password

  sku_name   = "GP_Gen5_4"
  version    = "11"
  storage_mb = 640000

  backup_retention_days        = 7
  geo_redundant_backup_enabled = true
  auto_grow_enabled            = true

  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

#resource "azurerm_postgresql_firewall_rule" "example" {
#  name                = "AzureServices"
#  resource_group_name = var.rg_name
#  server_name         = azurerm_postgresql_server.example.name
#  start_ip_address    = "0.0.0.0"
#  end_ip_address      = "0.0.0.0"
#}