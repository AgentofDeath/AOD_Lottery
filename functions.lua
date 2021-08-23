--to do.

-- Make script not rely on esx 1.1.


HasMoney = function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.get("money") >= 500 then --use me for esx 1.1
    --if xPlayer.getAccount("money") >= 500 then --use this option for versions not esx 1.1
      return true
    else
      return false
    end

RemoveCash = function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeMoney(500)
    --xPlayer.removeAccountMoney("money", 500) --for versions above esx 1.1
end
  
AddCash = function(source, amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addMoney(amount)
    --xPlayer.addAccountMoney("bank", amount)
end
