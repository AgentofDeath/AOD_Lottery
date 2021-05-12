ESX = nil
TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

RegisterServerEvent("lottery:passtoserver")
AddEventHandler(
    "lottery:passtoserver",
    function(result, result2, result3, result4, result5)
        local source = source
        local xPlayer = ESX.GetPlayerFromId(source)

        if xPlayer.get("money") >= 500 then
            local number = result.. "," ..result2.. "," ..result3.. "," ..result4.. "," ..result5
            MySQL.Async.insert(
                "INSERT INTO lottery (numbers, steam) VALUES (@numbers, @steam)",
                {["numbers"] = number, ["steam"] = xPlayer.identifier},
                function(insertId)
                    TriggerEvent(
                        "esx_addonaccount:getSharedAccount",
                        "society_lotto",
                        function(account)
                            account.addMoney(500)
                        end
                    )
                    xPlayer.removeMoney(500)
                    Notify(source, "Your numbers are " .. number)
                end
            )
        else
            Notify(source, "You are too broke to buy your ticket")
        end
    end
)

function drawlotto()
    local winner1 = math.random(99)
    local winner2 = math.random(99)
    local winner3 = math.random(99)
    local winner4 = math.random(99)
    local winner5 = math.random(99)
    local winningnumber = winner1.. "," ..winner2.. "," ..winner3.. "," ..winner4.. "," ..winner5
    TriggerClientEvent("announce", -1, "5 minutes")
    Citizen.Wait(60000)
    TriggerClientEvent("announce", -1, "4 minutes")
    Citizen.Wait(60000)
    TriggerClientEvent("announce", -1, "3 minutes")
    Citizen.Wait(60000)
    TriggerClientEvent("announce", -1, "2 minutes")
    Citizen.Wait(60000)
    TriggerClientEvent("announce", -1, "1 minute")
    Citizen.Wait(60000)
    MySQL.Async.fetchAll(
        "SELECT * FROM lottery WHERE numbers = @numbers",
        {
            ["@numbers"] = winningnumber
        },
        function(result)
            if result[1] ~= nil then
                local player = result[1].steam
                local xPlayer = ESX.GetPlayerFromIdentifier(player)
                local result =
                    MySQL.Sync.fetchAll(
                    "SELECT firstname, lastname FROM users WHERE identifier = @identifier",
                    {
                        ["@identifier"] = xPlayer.identifier
                    }
                )

                local firstname = result[1].firstname
                local lastname = result[1].lastname
                TriggerEvent(
                    "esx_addonaccount:getSharedAccount",
                    "society_lotto",
                    function(account)
                        money = account.money
                        account.removeMoney(money)
                    end
                )
                xPlayer.addMoney(money)
                Notify(-1, "Winner has been found. Winner is " .. firstname .. " " .. lastname)
                MySQL.Async.execute("TRUNCATE TABLE `lottery`", {})
            else
                Notify(-1, "No winner")
                MySQL.Async.execute("TRUNCATE TABLE `lottery`", {})
            end
        end
    )
end

RegisterCommand(
    "Lottery",
    function(source, args, raw)
        drawlotto()
    end,
    true
)
Notify = function(src, text, timer)
	if timer == nil then
		timer = 5000
	end
	 TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'inform', text = text, length = timer, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
	-- TriggerClientEvent('pNotify:SendNotification', src, {text = text, type = 'error', queue = GetCurrentResourceName(), timeout = timer, layout = 'bottomCenter'})
	--TriggerClientEvent('esx:showNotification', src, text)
end
