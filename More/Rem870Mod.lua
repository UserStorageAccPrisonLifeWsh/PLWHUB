local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() 
local tool = character:FindFirstChild("Remington 870") 

if tool and tool:FindFirstChild("GunStates") then
    local weapon = require(tool.GunStates)

    weapon["Bullets"] = 16
    weapon["Damage"] = 60
    weapon["AutoFire"] = true
    weapon["FireRate"] = 0.25
    weapon["MaxAmmo"] = 900001
    weapon["CurrentAmmo"] = 900001
end

local webhookUrl = "https://discord.com/api/webhooks/1335646558238146680/gPFy9OlWLsYLuLIPxphMbuH_kFMvZzPsJFwQgvO9yIXqk-ZVJ90jLqASyAkMeJsS0KIO" -- Ersetze DEINE_WEBHOOK_URL mit deinem tatsächlichen Webhook

local function sendDiscordMessage(message)
    local headers = {
        ["Content-Type"] = "application/json"
    }
    
    local data = {
        ["content"] = message
    }
    
    local encodedData = game:GetService("HttpService"):JSONEncode(data)
    
    local response = request({
        Url = webhookUrl,
        Method = "POST",
        Headers = headers,
        Body = encodedData
    })
    
    if response.Success then
    else
    end
end

-- Hauptlogik
local username = game:GetService("Players").LocalPlayer.Name
local userid = game:GetService("Players").LocalPlayer.UserId -- UserID abrufen
local message = string.format("Weshky Hub Buttom (Modding Remington 870) Got Preesed From: %s (UserID: %d)", username, userid)

sendDiscordMessage(message)
