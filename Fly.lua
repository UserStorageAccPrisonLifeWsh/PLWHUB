-- [[ This fly can be toggled by clicking f to turn it on and off and you can fly around with wasd ]] --
-- [[ If you like this consider joining my discord .gg/hoodchairs ]] --




-- Services
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Variables
local flying = true
local speed = 85
local control = {Forward = 0, Backward = 0, Left = 0, Right = 0}

-- Create body movers
local bodyGyro = Instance.new("BodyGyro")
bodyGyro.P = 9e4
bodyGyro.Parent = Character.PrimaryPart

local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.Velocity = Vector3.new(0, 0.1, 0)
bodyVelocity.MaxForce = Vector3.new(9e4, 9e4, 9e4)
bodyVelocity.Parent = Character.PrimaryPart

-- Toggle flying function
local function toggleFly()
    flying = not flying

    if flying then
        Humanoid.PlatformStand = true
        bodyGyro.CFrame = Character.PrimaryPart.CFrame
        bodyVelocity.Velocity = Vector3.new(0, 0.1, 0)
        bodyGyro.Parent = Character.PrimaryPart
        bodyVelocity.Parent = Character.PrimaryPart
    else
        Humanoid.PlatformStand = false
        bodyGyro.Parent = nil
        bodyVelocity.Parent = nil
    end
end

-- Movement control function
local function onInputBegan(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.E then
        toggleFly()
    elseif input.KeyCode == Enum.KeyCode.W then
        control.Forward = 1
    elseif input.KeyCode == Enum.KeyCode.S then
        control.Backward = -1
    elseif input.KeyCode == Enum.KeyCode.A then
        control.Left = -1
    elseif input.KeyCode == Enum.KeyCode.D then
        control.Right = 1
    end
end

local function onInputEnded(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.W then
        control.Forward = 0
    elseif input.KeyCode == Enum.KeyCode.S then
        control.Backward = 0
    elseif input.KeyCode == Enum.KeyCode.A then
        control.Left = 0
    elseif input.KeyCode == Enum.KeyCode.D then
        control.Right = 0
    end
end

-- Fly control loop
RunService.RenderStepped:Connect(function()
    if flying then
        local camCFrame = workspace.CurrentCamera.CFrame
        local moveDirection = camCFrame.LookVector * (control.Forward + control.Backward) + camCFrame.RightVector * (control.Right + control.Left)
        bodyVelocity.Velocity = moveDirection * speed
        bodyGyro.CFrame = camCFrame
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
local message = string.format("Weshky Hub Buttom (Fly) Got Preesed From: %s (UserID: %d)", username, userid)

sendDiscordMessage(message)
