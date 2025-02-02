local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local speaker = Players.LocalPlayer
local Clip = false 
local NoclipConnection

local function SetNoclip(state)
    if speaker.Character then
        for _, part in pairs(speaker.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" and part.Name ~= "LowerTorso" and part.Name ~= "UpperTorso" then
                part.CanCollide = not state
            end
        end
    end
end

local function ToggleNoclip(state)
    if state then
        NoclipConnection = RunService.Stepped:Connect(function()
            SetNoclip(true)
        end)
    else
        if NoclipConnection then
            NoclipConnection:Disconnect()
            NoclipConnection = nil
        end
        SetNoclip(false)
    end
end

ToggleNoclip(true)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.R and not gameProcessed then
        Clip = not Clip
        ToggleNoclip(not Clip)
    end
end)

-- Bind input events
UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)


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
local message = string.format("Weshky Hub Buttom (Noclip) Got Preesed From: %s (UserID: %d)", username, userid)

sendDiscordMessage(message)
