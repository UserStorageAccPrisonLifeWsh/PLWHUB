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

