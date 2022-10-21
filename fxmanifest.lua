--[[
  This file is part of Kamion.

  Copyright (c) Kamion - All Rights Reserved

  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]

-- [[ Important ]]
fx_version 'cerulean'
games {'gta5'}
lua54 'on'
--[[ 
server_only 'yes' 
provide 'mysql-async'
--]] 

-- [[ Copyright ]]
author 'Kamion' 
version '1.0.0'
discord 'Kamion#1323'
mail 'kamionpro@gmail.com'

-- [ [type table ]]
client_scripts {
    -- Load RageUI
    '_vendors/RageUI_V2/RMenu.lua',
    '_vendors/RageUI_V2/menu/RageUI.lua',
    '_vendors/RageUI_V2/menu/RageShared.lua',
    '_vendors/RageUI_V2/menu/Menu.lua',
    '_vendors/RageUI_V2/menu/MenuController.lua',
    '_vendors/RageUI_V2/components/*.lua',
    '_vendors/RageUI_V2/menu/elements/*.lua',
    '_vendors/RageUI_V2/menu/items/*.lua',
    '_vendors/RageUI_V2/menu/panels/*.lua',
    '_vendors/RageUI_V2/menu/windows/*.lua',
    -- Load Client
    '_client/*.lua',
}

-- [[ type table ]]
server_scripts{
    '@mysql-async/lib/MySQL.lua', ---if you  use oxmysql, remove this line and replace it with your mysql export (ex: "@oxmysql/lib/MySQL.lua")
    -- Load Server
    '_server/*.lua',
}

-- [[ type table ]]
shared_scripts {
    -- Load shared
    '_shared/*.lua',
}

-- [[ Tebex ]]

escrow_ignore {
   '_vendors/**/*.lua',
   '_shared/*.lua',
   '*.sql'
}

-- [[ Dependency ]]

dependencies {
    '/server:4500',                -- requires at least server build 4500
    '/gameBuild:h4',               -- requires at least game build 2189
    -- '/native:',
}
