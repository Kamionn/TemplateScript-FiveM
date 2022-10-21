-- Config 
Config = {}
Config.Locale = "fr"
Config.Framework = "ESX" -- ESSENTIAL, ESX, QBCORE, CALIFORNIA
Config.Librairie = "RageUIV2" -- RageUIV2  
Config.Prefix = GetCurrentResourceName().. ':' -- Little protect trigger
Config.Sql = 'oxmysql' --> mysql or oxmysql -- IMPORTANT (change in fxmanifest your dependencies)
Config.NameColumn = {} -- Bdd Column 
Config.Debug = false -- Debug mode