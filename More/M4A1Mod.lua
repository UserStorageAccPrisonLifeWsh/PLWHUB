local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() 
local tool = character:FindFirstChild("M4A1") 

if tool and tool:FindFirstChild("GunStates") then
    local weapon = require(tool.GunStates)

    weapon["Bullets"] = 100
    weapon["Damage"] = 45
    weapon["AutoFire"] = true
    weapon["FireRate"] = 0.25
    weapon["MaxAmmo"] = 900001
    weapon["CurrentAmmo"] = 900001
end
