local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() 
local tool = character:FindFirstChild("Remington 870") 

if tool and tool:FindFirstChild("GunStates") then
    local weapon = require(tool.GunStates)

    weapon["Bullets"] = 6
    weapon["Damage"] = 60
    weapon["AutoFire"] = true
    weapon["maxAmmos"] = 87
    weapon["FireRate"] = 0.25
    weapon["MaxAmmo"] = 900001
    weapon["CurrentAmmo"] = 900001
end
