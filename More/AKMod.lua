local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() 
local tool = character:FindFirstChild("AK-47") 

if tool and tool:FindFirstChild("GunStates") then
    local weapon = require(tool.GunStates)

    weapon["Bullets"] = 3
    weapon["Damage"] = 45
    weapon["AutoFire"] = true
    weapon["FireRate"] = 0.07
    weapon["MaxAmmo"] = 900001
    weapon["CurrentAmmo"] = 900001
end
