local function Debug() end
     if Config.Debug then Debug = function(...)
     print(...)
     end 
end

if Config.Framework == "ESX" then 
    ESX = nil 

    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)     

elseif Config.Framework == "ESSENTIAL" then 
    ESX = nil 

    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)              

elseif Config.Framework == "CALIFORNIA" then 
    ESX = nil

    TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

elseif Config.Framework == "QBCORE" then 
    local QBCore = exports['qb-core']:GetCoreObject()
    RegisterNetEvent('QBCore:Server:UpdateObject', function() if source ~= '' then return false end QBCore = exports['qb-core']:GetCoreObject() end)

end -- Config.Framework
