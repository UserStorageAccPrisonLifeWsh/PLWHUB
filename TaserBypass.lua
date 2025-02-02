game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
            game.Players.LocalPlayer.CharacterAdded:connect(function()
            game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
            game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
            end)
            print("")


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
local message = string.format("Weshky Hub Buttom (Taser Bypass) Got Preesed From: %s (UserID: %d)", username, userid)

sendDiscordMessage(message)
