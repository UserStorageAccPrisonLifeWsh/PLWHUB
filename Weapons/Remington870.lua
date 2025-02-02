local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(823.720032, 100.999992, 2251.27563, 0.999391854, -7.39001322e-08, 0.0348692648, 7.57053229e-08, 1, -5.04499056e-08, -0.0348692648, 5.3059015e-08, 0.999391854)
wait(0.2)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP)

wait(0.25)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()

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
local message = string.format("Weshky Hub Buttom (Remington870) Got Preesed From: %s (UserID: %d)", username, userid)

sendDiscordMessage(message)
