local function Debug() end
     if Config.Debug then Debug = function(...)
     print(...)
     end 
end

if Config.Framework == "ESX" then 
     Esx = nil

     Citizen.CreateThread(function()
          while ESX == nil do
               TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)     
               Citizen.Wait(20)
          end
     end)

     RegisterNetEvent('esx:playerLoaded')
     AddEventHandler('esx:playerLoaded', function(xPlayer)
          ESX.PlayerData = xPlayer
     end)

     function OpenMenuBuildeurRageUI(playerData)
         local OpenMenuBuildeur = RageUI.CreateMenu('aaa', 'playerDat', 5, 5, nil, nil, 0, 0, 0, 0)
         RageUI.Visible(OpenMenuBuildeur, not RageUI.Visible(OpenMenuBuildeur))
     
         Citizen.CreateThread(function()
             while OpenMenuBuildeur do
                 Citizen.Wait(0)
                
                 RageUI.IsVisible(OpenMenuBuildeur, function()
                     RageUI.Line()
                 end)
     
                 if not RageUI.Visible(OpenMenuBuildeur, OpenMenuBuildeur) then
                     OpenMenuBuildeur = RMenu:DeleteType('OpenMenuBuildeur', true)
                 end
             end
         end)
     end
 
elseif Config.Framework == "ESSENTIAL" then 
     Esx = nil

     Citizen.CreateThread(function()
          while ESX == nil do
               TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)     
               Citizen.Wait(20)
          end
     end)

     RegisterNetEvent('esx:playerLoaded')
     AddEventHandler('esx:playerLoaded', function(xPlayer)
          ESX.PlayerData = xPlayer
     end)
         
elseif Config.Framework == "CALIFORNIA" then 
     Esx = nil

     Citizen.CreateThread(function()
          while ESX == nil do
               TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)     
               Citizen.Wait(20)
          end
     end)

elseif Config.Framework == "QBCORE" then 
     local QBCore = exports['qb-core']:GetCoreObject()
     RegisterNetEvent('QBCore:Client:UpdateObject', function() QBCore = exports['qb-core']:GetCoreObject() end)

end -- Config.Framework
