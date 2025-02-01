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

print("Weshky Hub: PlayersUi Has Been Loaded!")

----------------------------------------------------------
                        -- Test UI
----------------------------------------------------------

local Add = Instance.new("ScreenGui")
Add.Name = "Add"
Add.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Add.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Name = "Frame"
Frame.Position = UDim2.new(0.253, 0,0.666, 0)
Frame.Size = UDim2.new(0, 945, 0, 86)
Frame.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame.BackgroundTransparency = 0.15
Frame.BorderSizePixel = 0
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.Transparency = 0.15
Frame.Parent = Add

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"
UICorner.Parent = Frame

local DeathPosiB = Instance.new("TextButton")
DeathPosiB.Name = "DeathPosi"
DeathPosiB.Position = UDim2.new(0.696, 0,0.209, 0)
DeathPosiB.Size = UDim2.new(0, 271, 0, 52)
DeathPosiB.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
DeathPosiB.BackgroundTransparency = 0.6
DeathPosiB.BorderSizePixel = 0
DeathPosiB.BorderColor3 = Color3.new(0, 0, 0)
DeathPosiB.Transparency = 0.6
DeathPosiB.Text = "Death Position"
DeathPosiB.TextColor3 = Color3.new(1, 1, 1)
DeathPosiB.TextSize = 24
DeathPosiB.TextTransparency = 0
DeathPosiB.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
DeathPosiB.Parent = Frame

local Frame232 = Instance.new("Frame")
Frame232.Name = "Frame233"
Frame232.Position = UDim2.new(0.00897223, 0, 0.0930233, 0)
Frame232.Size = UDim2.new(0, 929, 0, 70)
Frame232.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Frame232.BackgroundTransparency = 0.93
Frame232.BorderSizePixel = 0
Frame232.BorderColor3 = Color3.new(0, 0, 0)
Frame232.Transparency = 0.93
Frame232.Parent = Frame

local UICorner2 = Instance.new("UICorner")
UICorner2.Name = "UICorner"
UICorner2.CornerRadius = UDim.new(0, 6)
UICorner2.Parent = DeathPosi

local MAINLABEL2 = Instance.new("TextLabel")
MAINLABEL2.Name = "MAINLABEL2"
MAINLABEL2.Position = UDim2.new(0.015, 0,0.209, 0)
MAINLABEL2.Size = UDim2.new(0, 417, 0, 52)
MAINLABEL2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
MAINLABEL2.BackgroundTransparency = 0.6
MAINLABEL2.BorderSizePixel = 0
MAINLABEL2.BorderColor3 = Color3.new(0, 0, 0)
MAINLABEL2.Transparency = 0.6
MAINLABEL2.Text = "Main Scripts, Execute these scripts after Starting Whesky Hub:"
MAINLABEL2.TextColor3 = Color3.new(1, 1, 1)
MAINLABEL2.TextSize = 17
MAINLABEL2.TextTransparency = 0
MAINLABEL2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
MAINLABEL2.Parent = Frame

local UICorner3 = Instance.new("UICorner")
UICorner3.Name = "UICorner"
UICorner3.CornerRadius = UDim.new(0, 6)
UICorner3.Parent = MAINLABEL2

local ZFEUWEFHU = Instance.new("TextLabel")
ZFEUWEFHU.Name = "ZFEUWEFHU"
ZFEUWEFHU.Position = UDim2.new(0.001, 0,1.081, 0)
ZFEUWEFHU.Size = UDim2.new(0, 944, 0, 31)
ZFEUWEFHU.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ZFEUWEFHU.BackgroundTransparency = 1
ZFEUWEFHU.BorderSizePixel = 0
ZFEUWEFHU.BorderColor3 = Color3.new(0, 0, 0)
ZFEUWEFHU.Transparency = 1
ZFEUWEFHU.TextTransparency = 1
ZFEUWEFHU.Text = "Warning: Press 'Death Position' again after you Changed your Team!!"
ZFEUWEFHU.TextColor3 = Color3.new(1, 1, 1)
ZFEUWEFHU.TextSize = 18
ZFEUWEFHU.TextColor3 = Color3.new(1, 0.34902, 0.34902)
ZFEUWEFHU.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ZFEUWEFHU.TextWrapped = true
ZFEUWEFHU.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = ZFEUWEFHU

----------------------------------------------------------
                        -- Main UI
----------------------------------------------------------

local WHub2 = Instance.new("ScreenGui")
WHub2.Name = "WHub2"
WHub2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WHub2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Position = UDim2.new(0.253, 0, 0.224, 0)
Main.Size = UDim2.new(0, 650, 0, 411)
Main.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Main.BackgroundTransparency = 0.15
Main.BorderSizePixel = 0
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.Transparency = 0.15
Main.Parent = WHub2

local MainParts = Instance.new("Folder")
MainParts.Name = "MainParts"
MainParts.Parent = Main

local GetRemington870 = Instance.new("TextButton")
GetRemington870.Name = "GetRemington870"
GetRemington870.Position = UDim2.new(0.0176596, 0, 0.296837, 0)
GetRemington870.Size = UDim2.new(0, 94, 0, 33)
GetRemington870.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
GetRemington870.BackgroundTransparency = 0.7
GetRemington870.BorderSizePixel = 0
GetRemington870.BorderColor3 = Color3.new(0, 0, 0)
GetRemington870.Transparency = 0.7
GetRemington870.Text = "Remington 870"
GetRemington870.TextColor3 = Color3.new(1, 1, 1)
GetRemington870.TextSize = 16
GetRemington870.TextTransparency = 0
GetRemington870.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
GetRemington870.TextWrapped = true
GetRemington870.Parent = MainParts

local GetAK_47 = Instance.new("TextButton")
GetAK_47.Name = "GetAK-47"
GetAK_47.Position = UDim2.new(0.180737, 0, 0.296837, 0)
GetAK_47.Size = UDim2.new(0, 94, 0, 33)
GetAK_47.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
GetAK_47.BackgroundTransparency = 0.7
GetAK_47.BorderSizePixel = 0
GetAK_47.BorderColor3 = Color3.new(0, 0, 0)
GetAK_47.Transparency = 0.7
GetAK_47.Text = "Ak-47"
GetAK_47.TextColor3 = Color3.new(1, 1, 1)
GetAK_47.TextSize = 19
GetAK_47.TextTransparency = 0
GetAK_47.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
GetAK_47.TextWrapped = true
GetAK_47.Parent = MainParts

local GetM4A1 = Instance.new("TextButton")
GetM4A1.Name = "GetM4A1"
GetM4A1.Position = UDim2.new(0.0176596, 0, 0.391728, 0)
GetM4A1.Size = UDim2.new(0, 94, 0, 33)
GetM4A1.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
GetM4A1.BackgroundTransparency = 0.7
GetM4A1.BorderSizePixel = 0
GetM4A1.BorderColor3 = Color3.new(0, 0, 0)
GetM4A1.Transparency = 0.7
GetM4A1.Text = "M4A1 (Gamepass)"
GetM4A1.TextColor3 = Color3.new(1, 1, 1)
GetM4A1.TextSize = 16
GetM4A1.TextTransparency = 0
GetM4A1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
GetM4A1.TextWrapped = true
GetM4A1.Parent = MainParts

local GetM9 = Instance.new("TextButton")
GetM9.Name = "GetM9"
GetM9.Position = UDim2.new(0.180737, 0, 0.391728, 0)
GetM9.Size = UDim2.new(0, 94, 0, 33)
GetM9.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
GetM9.BackgroundTransparency = 0.7
GetM9.BorderSizePixel = 0
GetM9.BorderColor3 = Color3.new(0, 0, 0)
GetM9.Transparency = 0.7
GetM9.Text = "M9"
GetM9.TextColor3 = Color3.new(1, 1, 1)
GetM9.TextSize = 19
GetM9.TextTransparency = 0
GetM9.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
GetM9.TextWrapped = true
GetM9.Parent = MainParts

local ModM4A1 = Instance.new("TextButton")
ModM4A1.Name = "ModM4A1"
ModM4A1.Position = UDim2.new(0.018, 0, 0.894, 0)
ModM4A1.Size = UDim2.new(0, 200, 0, 30)
ModM4A1.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ModM4A1.BackgroundTransparency = 0.7
ModM4A1.BorderSizePixel = 0
ModM4A1.BorderColor3 = Color3.new(0, 0, 0)
ModM4A1.Transparency = 0.7
ModM4A1.Text = "Modding M4A1"
ModM4A1.TextColor3 = Color3.new(1, 1, 1)
ModM4A1.TextSize = 18
ModM4A1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ModM4A1.TextTransparency = 0
ModM4A1.Parent = MainParts

local ModAK = Instance.new("TextButton")
ModAK.Name = "ModAk"
ModAK.Position = UDim2.new(0.018, 0, 0.797, 0)
ModAK.Size = UDim2.new(0, 200, 0, 30)
ModAK.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ModAK.BackgroundTransparency = 0.7
ModAK.BorderSizePixel = 0
ModAK.BorderColor3 = Color3.new(0, 0, 0)
ModAK.Transparency = 0.7
ModAK.Text = "Modding AK-47"
ModAK.TextColor3 = Color3.new(1, 1, 1)
ModAK.TextSize = 18
ModAK.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ModAK.TextWrapped = true
ModAK.TextTransparency = 0
ModAK.Parent = MainParts

local TPPRISON = Instance.new("TextLabel")
TPPRISON.Name = "TextInfoMod"
TPPRISON.Position = UDim2.new(0.019198, 0, 0.59262, 0)
TPPRISON.Size = UDim2.new(0, 198, 0, 30)
TPPRISON.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TPPRISON.BackgroundTransparency = 0.7
TPPRISON.BorderSizePixel = 0
TPPRISON.BorderColor3 = Color3.new(0, 0, 0)
TPPRISON.Transparency = 0.7
TPPRISON.Text = "You need a good Executor, Hold the Weapon in you Hand!!"
TPPRISON.TextColor3 = Color3.new(1, 0.34902, 0.34902)
TPPRISON.TextSize = 14
TPPRISON.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TPPRISON.TextWrapped = true
TPPRISON.TextTransparency = 0
TPPRISON.Parent = MainParts

local ModRem870 = Instance.new("TextButton")
ModRem870.Name = "ModRem870"
ModRem870.Position = UDim2.new(0.018, 0, 0.697, 0)
ModRem870.Size = UDim2.new(0, 200, 0, 30)
ModRem870.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ModRem870.BackgroundTransparency = 0.7
ModRem870.BorderSizePixel = 0
ModRem870.BorderColor3 = Color3.new(0, 0, 0)
ModRem870.Transparency = 0.7
ModRem870.Text = "Modding Remington 870"
ModRem870.TextColor3 = Color3.new(1, 1, 1)
ModRem870.TextSize = 18
ModRem870.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ModRem870.TextTransparency = 0
ModRem870.Parent = MainParts

local DexExploder = Instance.new("TextButton")
DexExploder.Name = "DexExploder"
DexExploder.Position = UDim2.new(0.681539, 0, 0.894, 0)
DexExploder.Size = UDim2.new(0, 192, 0, 29)
DexExploder.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
DexExploder.BackgroundTransparency = 0.7
DexExploder.BorderSizePixel = 0
DexExploder.BorderColor3 = Color3.new(1, 1, 1)
DexExploder.Transparency = 0.7
DexExploder.Text = "Use Dex Exploder"
DexExploder.TextColor3 = Color3.new(1, 1, 1)
DexExploder.TextSize = 26
DexExploder.TextTransparency = 0
DexExploder.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
DexExploder.Parent = MainParts

local InfiniteYield = Instance.new("TextButton")
InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Position = UDim2.new(0.681539, 0, 0.790754, 0)
InfiniteYield.Size = UDim2.new(0, 192, 0, 32)
InfiniteYield.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
InfiniteYield.BackgroundTransparency = 0.7
InfiniteYield.BorderSizePixel = 0
InfiniteYield.BorderColor3 = Color3.new(1, 1, 1)
InfiniteYield.Transparency = 0.7
InfiniteYield.Text = "Use Infinite Yield"
InfiniteYield.TextColor3 = Color3.new(1, 1, 1)
InfiniteYield.TextSize = 26
InfiniteYield.TextTransparency = 0
InfiniteYield.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
InfiniteYield.Parent = MainParts

local Extra = Instance.new("Frame")
Extra.Name = "Extra"
Extra.Position = UDim2.new(0.357585, 0, 0.313829, 0)
Extra.Size = UDim2.new(0, 190, 0, 176)
Extra.BackgroundColor3 = Color3.new(1, 1, 1)
Extra.BackgroundTransparency = 1
Extra.BorderSizePixel = 0
Extra.BorderColor3 = Color3.new(0, 0, 0)
Extra.Transparency = 1
Extra.Parent = MainParts

local ArrestEveryone = Instance.new("TextButton")
ArrestEveryone.Name = "ArrestEveryone"
ArrestEveryone.Position = UDim2.new(0.507888, 0, -0.000468861, 0)
ArrestEveryone.Size = UDim2.new(0, 92, 0, 33)
ArrestEveryone.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ArrestEveryone.BackgroundTransparency = 0.7
ArrestEveryone.BorderSizePixel = 0
ArrestEveryone.BorderColor3 = Color3.new(0, 0, 0)
ArrestEveryone.Transparency = 0.7
ArrestEveryone.Text = "Arrest  Criminals"
ArrestEveryone.TextColor3 = Color3.new(1, 1, 1)
ArrestEveryone.TextSize = 14
ArrestEveryone.TextTransparency = 0
ArrestEveryone.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ArrestEveryone.TextWrapped = true
ArrestEveryone.Parent = Extra

local Fly = Instance.new("TextButton")
Fly.Name = "Fly"
Fly.Position = UDim2.new(0.507888, 0, 0.821987, 0)
Fly.Size = UDim2.new(0, 92, 0, 33)
Fly.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Fly.BackgroundTransparency = 0.7
Fly.BorderSizePixel = 0
Fly.BorderColor3 = Color3.new(0, 0, 0)
Fly.Transparency = 0.7
Fly.Text = "Fly [E]"
Fly.TextColor3 = Color3.new(1, 1, 1)
Fly.TextSize = 16
Fly.TextTransparency = 0
Fly.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Fly.TextWrapped = true
Fly.Parent = Extra

local Crashservers = Instance.new("TextButton")
Crashservers.Name = "Crashservers"
Crashservers.Position = UDim2.new(0.506254, 0, 0.62, 0)
Crashservers.Size = UDim2.new(0, 93, 0, 32)
Crashservers.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Crashservers.BackgroundTransparency = 0.7
Crashservers.BorderSizePixel = 0
Crashservers.BorderColor3 = Color3.new(0, 0, 0)
Crashservers.Transparency = 0.7
Crashservers.Text = "Crash Server"
Crashservers.TextColor3 = Color3.new(1, 1, 1)
Crashservers.TextSize = 16
Crashservers.TextTransparency = 0
Crashservers.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Crashservers.TextWrapped = true
Crashservers.Parent = Extra
