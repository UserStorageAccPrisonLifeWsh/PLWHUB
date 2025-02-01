-- Players UI
----------------------------------------------------------

-- Prison Life Weshky Hub V1
-- Main Developer: Sxirbes
-- Main Script: Julia

-- 29.12.2024

print("-----------------------------------------------------")
print("Thanks for using Weshky Hub, you can check out the Discord 25 Members = Update!")
print("-----------------------------------------------------")
print("Weshky Hub: Start Loading Everything!")

local UIS = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local WHubAddon = Instance.new("ScreenGui")
WHubAddon.Name = "WHubAddon"
WHubAddon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WHubAddon.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local SpecificPlayers = Instance.new("Frame")
SpecificPlayers.Name = "SpecificPlayers"
SpecificPlayers.Position = UDim2.new(0.598, 0,0.224, 0)
SpecificPlayers.Size = UDim2.new(0, 285, 0, 411)
SpecificPlayers.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SpecificPlayers.BackgroundTransparency = 0.15
SpecificPlayers.BorderSizePixel = 0
SpecificPlayers.BorderColor3 = Color3.new(0, 0, 0)
SpecificPlayers.Transparency = 0.15
SpecificPlayers.Parent = WHubAddon

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"
UICorner.Parent = SpecificPlayers

local Tp = Instance.new("TextLabel")
Tp.Name = "Tp"
Tp.Position = UDim2.new(0.0509676, 0, 0.186186, 0)
Tp.Size = UDim2.new(0, 120, 0, 36)
Tp.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Tp.BackgroundTransparency = 0.6
Tp.BorderSizePixel = 0
Tp.BorderColor3 = Color3.new(0, 0, 0)
Tp.Transparency = 0.6
Tp.Text = "Teleport To Player:"
Tp.TextColor3 = Color3.new(1, 1, 1)
Tp.TextSize = 15
Tp.TextTransparency = 0
Tp.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Tp.Parent = SpecificPlayers

local Tase = Instance.new("TextLabel")
Tase.Name = "Tase"
Tase.Position = UDim2.new(0.0509676, 0, 0.463798, 0)
Tase.Size = UDim2.new(0, 120, 0, 36)
Tase.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Tase.BackgroundTransparency = 0.6
Tase.BorderSizePixel = 0
Tase.BorderColor3 = Color3.new(0, 0, 0)
Tase.Transparency = 0.6
Tase.Text = "Arrest Player:"
Tase.TextColor3 = Color3.new(1, 1, 1)
Tase.TextSize = 15
Tase.TextTransparency = 0
Tase.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Tase.Parent = SpecificPlayers

local Teleport = Instance.new("TextBox")
Teleport.Name = "Teleport"
Teleport.Position = UDim2.new(0.517879, 0, 0.186186, 0)
Teleport.Size = UDim2.new(0, 122, 0, 35)
Teleport.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Teleport.BackgroundTransparency = 0.6
Teleport.BorderSizePixel = 0
Teleport.Text = "<Username, Press Enter>"
Teleport.TextColor3 = Color3.new(1, 1, 1)
Teleport.TextSize = 15
Teleport.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Teleport.TextWrapped = true
Teleport.Parent = SpecificPlayers

local function teleportToPlayer(playerName)
    local localPlayer = game.Players.LocalPlayer
    local targetPlayer = game.Players:FindFirstChild(playerName)

    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        localPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
        Teleport.Text = "<Username>"
    else
        print("Wehsky Hub: Player Not Found: " .. playerName)
        Teleport.Text = "<Username>"
    end
end

Teleport.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        teleportToPlayer(Teleport.Text)
    end
end)

local ArrestUser = Instance.new("TextBox")
ArrestUser.Name = "ArrestUser"
ArrestUser.Position = UDim2.new(0.517879, 0, 0.463798, 0)
ArrestUser.Size = UDim2.new(0, 122, 0, 35)
ArrestUser.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ArrestUser.BackgroundTransparency = 0.6
ArrestUser.BorderSizePixel = 0
ArrestUser.BorderColor3 = Color3.new(0, 0, 0)
ArrestUser.Transparency = 0.6
ArrestUser.Text = "<Username, Press Enter>"
ArrestUser.TextColor3 = Color3.new(1, 1, 1)
ArrestUser.TextSize = 15
ArrestUser.TextTransparency = 0
ArrestUser.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ArrestUser.TextWrapped = true
ArrestUser.Parent = SpecificPlayers

ArrestUser.FocusLost:connect(function(enterPressed) 
    if enterPressed then 
        local targetPlayerName = ArrestUser.Text 
        local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            print("Whesky Hub: Player found:", targetPlayerName)

            local localPlayer = game.Players.LocalPlayer
            local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                wait(0.0001)
                return
            end

            local returnPart = Instance.new("Part")
            returnPart.Parent = workspace
            returnPart.CFrame = humanoidRootPart.CFrame
            returnPart.Anchored = true
            returnPart.Transparency = 1
            returnPart.BrickColor = BrickColor.new("Bright yellow")
            returnPart.Size = Vector3.new(2, 0.5, 2) 
            returnPart.CanCollide = false

            local character = targetPlayer.Character
            local targetHRP = character and character:FindFirstChild("HumanoidRootPart")
            
            if targetHRP and targetPlayer.Character:FindFirstChild("Humanoid") then
                local humanoid = character.Humanoid
                if humanoid.SeatPart then
                    repeat
                        wait(0.5)
                    until not humanoid.SeatPart
                end
            end

            humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            wait(0.2)

            local i = 0
            repeat
                wait()
                humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
                game.Workspace.Remote.arrest:InvokeServer(targetPlayer.Character.HumanoidRootPart)
                i = i + 1
            until i == 5

            wait(0.5)
            humanoidRootPart.CFrame = returnPart.CFrame
            returnPart:Destroy()
            Arrest.Text = "<Username>"

        else
            print("Whesky Hub: Player Not Found!!")
            ArrestUser.Text = "<Username>"
        end
    end
end)

local Kill = Instance.new("TextLabel")
Kill.Name = "Kill"
Kill.Position = UDim2.new(0.0509676, 0, 0.320514, 0)
Kill.Size = UDim2.new(0, 120, 0, 36)
Kill.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Kill.BackgroundTransparency = 0.6
Kill.BorderSizePixel = 0
Kill.BorderColor3 = Color3.new(0, 0, 0)
Kill.Transparency = 0.6
Kill.Text = "Kill Player:"
Kill.TextColor3 = Color3.new(1, 1, 1)
Kill.TextSize = 15
Kill.TextTransparency = 0
Kill.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Kill.Parent = SpecificPlayers

local KillUser = Instance.new("TextBox")
KillUser.Name = "KillUser"
KillUser.Position = UDim2.new(0.517879, 0, 0.320514, 0)
KillUser.Size = UDim2.new(0, 122, 0, 35)
KillUser.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
KillUser.BackgroundTransparency = 0.6
KillUser.BorderSizePixel = 0
KillUser.BorderColor3 = Color3.new(0, 0, 0)
KillUser.Transparency = 0.6
KillUser.Text = "<Username, Press Enter>"
KillUser.TextColor3 = Color3.new(1, 1, 1)
KillUser.TextSize = 15
KillUser.TextTransparency = 0
KillUser.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
KillUser.TextWrapped = true
KillUser.Parent = SpecificPlayers

KillUser.FocusLost:connect(function(enterPressed)
    if enterPressed then 
        targetPlayerName = KillUser.Text
        local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
        if targetPlayer and targetPlayer.Character then
            local originalPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

            local teleportPart = Instance.new("Part")
            teleportPart.Parent = workspace
            teleportPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            teleportPart.Transparency = 1

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame

            wait(0.2)
            for i = 1, 14 do
                game:GetService("ReplicatedStorage").meleeEvent:FireServer(targetPlayer)
            end

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
            KillUser.Text = "<Username>"
            teleportPart:Destroy()
        else
            print("Weshky Hub: Player Not Found!!")
            KillUser.Text = "<Username>"
        end
    end
end)

local TSMain = Instance.new("Frame")
TSMain.Name = "TSMain"
TSMain.Position = UDim2.new(0.0203802, 0, 0.166511, 0)
TSMain.Size = UDim2.new(0, 272, 0, 335)
TSMain.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
TSMain.BackgroundTransparency = 0.93
TSMain.BorderSizePixel = 0
TSMain.BorderColor3 = Color3.new(0, 0, 0)
TSMain.Transparency = 0.93
TSMain.Parent = SpecificPlayers

local line = Instance.new("Frame")
line.Name = "line"
line.Position = UDim2.new(-0.005, 0,0.134, 0)
line.Size = UDim2.new(0, 285, 0, 7)
line.BackgroundColor3 = Color3.new(1, 0.258824, 0.258824)
line.BackgroundTransparency = 0.30000001192092896
line.BorderSizePixel = 0
line.BorderColor3 = Color3.new(0, 0, 0)
line.Transparency = 0.30000001192092896
line.Parent = SpecificPlayers

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Position = UDim2.new(-0.001, 0,0.014, 0)
Title.Size = UDim2.new(0, 285, 0, 44)
Title.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.Transparency = 1
Title.Text = "Players"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
Title.TextTransparency = 0
Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Title.TextScaled = true
Title.TextWrapped = true
Title.Parent = SpecificPlayers

local Taserr = Instance.new("TextLabel")
Taserr.Name = "Taserr"
Taserr.Position = UDim2.new(0.0474588, 0, 0.602484, 0)
Taserr.Size = UDim2.new(0, 120, 0, 38)
Taserr.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Taserr.BackgroundTransparency = 0.699999988079071
Taserr.BorderSizePixel = 0
Taserr.BorderColor3 = Color3.new(0, 0, 0)
Taserr.Transparency = 0.699999988079071
Taserr.Text = "Tase Player:"
Taserr.TextColor3 = Color3.new(1, 1, 1)
Taserr.TextSize = 15
Taserr.TextTransparency = 0
Taserr.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Taserr.Parent = SpecificPlayers

local TaserrUser = Instance.new("TextBox")
TaserrUser.Name = "TaserrUser"
TaserrUser.Position = UDim2.new(0.510862, 0, 0.602484, 0)
TaserrUser.Size = UDim2.new(0, 122, 0, 35)
TaserrUser.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TaserrUser.BackgroundTransparency = 0.699999988079071
TaserrUser.BorderSizePixel = 0
TaserrUser.BorderColor3 = Color3.new(0, 0, 0)
TaserrUser.Transparency = 0.699999988079071
TaserrUser.Text = "<Username, Press Enter>"
TaserrUser.TextColor3 = Color3.new(1, 1, 1)
TaserrUser.TextSize = 15
TaserrUser.TextTransparency = 0
TaserrUser.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TaserrUser.TextWrapped = true
TaserrUser.Parent = SpecificPlayers
