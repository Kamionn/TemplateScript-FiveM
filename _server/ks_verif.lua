AddEventHandler('onResourceStart', function(resourceName)
      if (GetCurrentResourceName() ~= resourceName) then
        return
      end
      print('The resource ^4' .. resourceName .. '^0 has been ^4started ^0')
      print('The resource ^4' .. resourceName .. '^0 was create by ^4Kamion ^0')
end)
