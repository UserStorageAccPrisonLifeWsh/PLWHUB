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

local TaserBypass = Instance.new("TextButton")
TaserBypass.Name = "TaserBypass"
TaserBypass.Position = UDim2.new(0.506777, 0, 0.206644, 0)
TaserBypass.Size = UDim2.new(0, 93, 0, 33)
TaserBypass.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TaserBypass.BackgroundTransparency = 0.7
TaserBypass.BorderSizePixel = 0
TaserBypass.BorderColor3 = Color3.new(0, 0, 0)
TaserBypass.Transparency = 0.7
TaserBypass.Text = "Taser Bypass"
TaserBypass.TextColor3 = Color3.new(1, 1, 1)
TaserBypass.TextSize = 14
TaserBypass.TextTransparency = 0
TaserBypass.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TaserBypass.TextWrapped = true
TaserBypass.Parent = Extra

local TaseAll = Instance.new("TextButton")
TaseAll.Name = "TaseAll"
TaseAll.Position = UDim2.new(0.506777, 0, 0.41758, 0)
TaseAll.Size = UDim2.new(0, 93, 0, 33)
TaseAll.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TaseAll.BackgroundTransparency = 0.7
TaseAll.BorderSizePixel = 0
TaseAll.BorderColor3 = Color3.new(0, 0, 0)
TaseAll.Transparency = 0.7
TaseAll.Text = "Tase All Players"
TaseAll.TextColor3 = Color3.new(1, 1, 1)
TaseAll.TextSize = 15
TaseAll.TextTransparency = 0
TaseAll.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TaseAll.TextWrapped = true
TaseAll.Parent = Extra

local JoinRed = Instance.new("TextButton")
JoinRed.Name = "JoinRed"
JoinRed.Position = UDim2.new(-0.001797, 0, -0.000468861, 0)
JoinRed.Size = UDim2.new(0, 92, 0, 33)
JoinRed.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
JoinRed.BackgroundTransparency = 0.7
JoinRed.BorderSizePixel = 0
JoinRed.BorderColor3 = Color3.new(0, 0, 0)
JoinRed.Transparency = 0.7
JoinRed.Text = "Join Criminal"
JoinRed.TextColor3 = Color3.new(1, 1, 1)
JoinRed.TextSize = 16
JoinRed.TextTransparency = 0
JoinRed.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
JoinRed.TextWrapped = true
JoinRed.Parent = Extra

local DontPunch = Instance.new("TextButton")
DontPunch.Name = "Antipunch"
DontPunch.Position = UDim2.new(-0.001797, 0, 0.62, 0)
DontPunch.Size = UDim2.new(0, 92, 0, 33)
DontPunch.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
DontPunch.BackgroundTransparency = 0.7
DontPunch.BorderSizePixel = 0
DontPunch.BorderColor3 = Color3.new(0, 0, 0)
DontPunch.Transparency = 0.7
DontPunch.Text = "Antipunch"
DontPunch.TextColor3 = Color3.new(1, 1, 1)
DontPunch.TextSize = 16
DontPunch.TextTransparency = 0
DontPunch.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
DontPunch.TextWrapped = true
DontPunch.Parent = Extra

local KillAll = Instance.new("TextButton")
KillAll.Name = "KillAll"
KillAll.Position = UDim2.new(-0.001797, 0, 0.41758, 0)
KillAll.Size = UDim2.new(0, 93, 0, 33)
KillAll.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
KillAll.BackgroundTransparency = 0.7
KillAll.BorderSizePixel = 0
KillAll.BorderColor3 = Color3.new(0, 0, 0)
KillAll.Transparency = 0.7
KillAll.Text = "Kill All Players"
KillAll.TextColor3 = Color3.new(1, 1, 1)
KillAll.TextSize = 16
KillAll.TextTransparency = 0
KillAll.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
KillAll.TextWrapped = true
KillAll.Parent = Extra

local Noclip = Instance.new("TextButton")
Noclip.Name = "Noclip"
Noclip.Position = UDim2.new(-0.001797, 0, 0.821987, 0)
Noclip.Size = UDim2.new(0, 93, 0, 33)
Noclip.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Noclip.BackgroundTransparency = 0.7
Noclip.BorderSizePixel = 0
Noclip.BorderColor3 = Color3.new(0, 0, 0)
Noclip.Transparency = 0.7
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 16
Noclip.TextTransparency = 0
Noclip.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Noclip.TextWrapped = true
Noclip.Parent = Extra

local Super_Punch = Instance.new("TextButton")
Super_Punch.Name = "Super PunchV2"
Super_Punch.Position = UDim2.new(-0.001797, 0, 0.206644, 0)
Super_Punch.Size = UDim2.new(0, 93, 0, 33)
Super_Punch.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Super_Punch.BackgroundTransparency = 0.7
Super_Punch.BorderSizePixel = 0
Super_Punch.BorderColor3 = Color3.new(0, 0, 0)
Super_Punch.Transparency = 0.7
Super_Punch.Text = "Super PunchV2"
Super_Punch.TextColor3 = Color3.new(1, 1, 1)
Super_Punch.TextSize = 16
Super_Punch.TextTransparency = 0
Super_Punch.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Super_Punch.TextWrapped = true
Super_Punch.Parent = Extra

local UIStuff = Instance.new("Folder")
UIStuff.Name = "UIStuff"

UIStuff.Parent = Main

local Version = Instance.new("TextLabel")
Version.Name = "Version"
Version.Position = UDim2.new(0.86243, 0, 0.0632603, 0)
Version.Size = UDim2.new(0, 81, 0, 30)
Version.BackgroundColor3 = Color3.new(1, 1, 1)
Version.BackgroundTransparency = 1
Version.BorderSizePixel = 0
Version.BorderColor3 = Color3.new(0, 0, 0)
Version.Transparency = 1
Version.Text = "Verison: 1.1"
Version.TextColor3 = Color3.new(1, 1, 1)
Version.TextSize = 14
Version.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Version.TextScaled = true
Version.TextWrapped = true
Version.TextTransparency = 0
Version.Parent = UIStuff

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Position = UDim2.new(-0.00137554, 0, 0.0202312, 0)
Title.Size = UDim2.new(0, 650, 0, 40)
Title.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.Transparency = 1
Title.Text = "Weshky Hub"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Title.TextScaled = true
Title.TextWrapped = true
Title.TextTransparency = 0
Title.Parent = UIStuff

local line = Instance.new("Frame")
line.Name = "line"
line.Position = UDim2.new(0, 0, 0.136253, 0)
line.Size = UDim2.new(0, 650, 0, 7)
line.BackgroundColor3 = Color3.new(1, 0.258824, 0.258824)
line.BackgroundTransparency = 0.2
line.BorderSizePixel = 0
line.BorderColor3 = Color3.new(0, 0, 0)
line.Parent = UIStuff

local PartTitles = Instance.new("Folder")
PartTitles.Name = "PartTitles"

PartTitles.Parent = UIStuff

local Weapons = Instance.new("Frame")
Weapons.Name = "Weapons"
Weapons.Position = UDim2.new(0.0116559, 0, 0.167883, 0)
Weapons.Size = UDim2.new(0, 211, 0, 335)
Weapons.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Weapons.BackgroundTransparency = 0.93
Weapons.BorderSizePixel = 0
Weapons.BorderColor3 = Color3.new(0, 0, 0)
Weapons.Transparency = 0.93
Weapons.Parent = PartTitles

local Modded_Guns = Instance.new("TextLabel")
Modded_Guns.Name = "TeleportPLUI"
Modded_Guns.Position = UDim2.new(0.0232339, 0, 0.388132, 0)
Modded_Guns.Size = UDim2.new(0, 200, 0, 37)
Modded_Guns.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Modded_Guns.BackgroundTransparency = 0.6
Modded_Guns.BorderSizePixel = 0
Modded_Guns.BorderColor3 = Color3.new(0, 0, 0)
Modded_Guns.Transparency = 0.6
Modded_Guns.Text = "Weapons Modding"
Modded_Guns.TextColor3 = Color3.new(1, 1, 1)
Modded_Guns.TextSize = 28
Modded_Guns.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Modded_Guns.TextWrapped = true
Modded_Guns.TextTransparency = 0
Modded_Guns.Parent = Weapons

local Guns = Instance.new("TextLabel")
Guns.Name = "Guns"
Guns.Position = UDim2.new(0.0232339, 0, 0.0231689, 0)
Guns.Size = UDim2.new(0, 200, 0, 37)
Guns.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Guns.BackgroundTransparency = 0.6
Guns.BorderSizePixel = 0
Guns.BorderColor3 = Color3.new(0, 0, 0)
Guns.Transparency = 0.6
Guns.Text = "Weapons & Modding"
Guns.TextColor3 = Color3.new(1, 1, 1)
Guns.TextSize = 27
Guns.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Guns.TextWrapped = true
Guns.TextTransparency = 0
Guns.Parent = Weapons

local General = Instance.new("Frame")
General.Name = "General"
General.Position = UDim2.new(0.346848, 0, 0.167883, 0)
General.Size = UDim2.new(0, 205, 0, 335)
General.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
General.BackgroundTransparency = 0.93
General.BorderSizePixel = 0
General.BorderColor3 = Color3.new(0, 0, 0)
General.Transparency = 0.93
General.Parent = PartTitles

local General2 = Instance.new("TextLabel")
General2.Name = "General"
General2.Position = UDim2.new(0.037868, 0, 0.0231689, 0)
General2.Size = UDim2.new(0, 190, 0, 37)
General2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
General2.BackgroundTransparency = 0.6
General2.BorderSizePixel = 0
General2.BorderColor3 = Color3.new(0, 0, 0)
General2.Transparency = 0.6
General2.Text = "General"
General2.TextColor3 = Color3.new(1, 1, 1)
General2.TextSize = 31
General2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
General2.TextWrapped = true
General2.TextTransparency = 0
General2.Parent = General

local Credits = Instance.new("Frame")
Credits.Name = "Credits"
Credits.Position = UDim2.new(0.672709, 0, 0.167883, 0)
Credits.Size = UDim2.new(0, 204, 0, 335)
Credits.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Credits.BackgroundTransparency = 0.93
Credits.BorderSizePixel = 0
Credits.BorderColor3 = Color3.new(0, 0, 0)
Credits.Transparency = 0.93
Credits.Parent = PartTitles

local ye = Instance.new("Folder")
ye.Name = "ye"

ye.Parent = Credits

local General3 = Instance.new("TextLabel")
General3.Name = "General"
General3.Position = UDim2.new(0.028136, 0, 0.181378, 0)
General3.Size = UDim2.new(0, 192, 0, 32)
General3.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
General3.BackgroundTransparency = 0.7
General3.BorderSizePixel = 0
General3.BorderColor3 = Color3.new(0, 0, 0)
General3.Transparency = 0.7
General3.Text = "Main Developers: Sxirbes    Script and Ui: Julia"
General3.TextColor3 = Color3.new(1, 1, 1)
General3.TextSize = 16
General3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
General3.TextWrapped = true
General3.TextXAlignment = Enum.TextXAlignment.Left
General3.TextTransparency = 0
General3.Parent = ye

local General4 = Instance.new("TextLabel")
General4.Name = "General"
General4.Position = UDim2.new(0.028136, 0, 0.2769, 0)
General4.Size = UDim2.new(0, 192, 0, 25)
General4.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
General4.BackgroundTransparency = 0.7
General4.BorderSizePixel = 0
General4.BorderColor3 = Color3.new(0, 0, 0)
General4.Transparency = 0.7
General4.Text = "Discord Invite Link:"
General4.TextColor3 = Color3.new(1, 1, 1)
General4.TextSize = 19
General4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
General4.TextWrapped = true
General4.TextXAlignment = Enum.TextXAlignment.Left
General4.TextTransparency = 0
General4.Parent = ye

local General5 = Instance.new("TextLabel")
General5.Name = "General"
General5.Position = UDim2.new(0.028136, 0, 0.351527, 0)
General5.Size = UDim2.new(0, 192, 0, 19)
General5.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
General5.BackgroundTransparency = 0.7
General5.BorderSizePixel = 0
General5.BorderColor3 = Color3.new(0, 0, 0)
General5.Transparency = 0.7
General5.Text = "https://discord.gg/PMAvgZtN7G"
General5.TextColor3 = Color3.new(0.243137, 0.407843, 1)
General5.TextSize = 15
General5.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
General5.TextWrapped = true
General5.TextXAlignment = Enum.TextXAlignment.Left
General5.TextTransparency = 0
General5.Parent = ye

local General6 = Instance.new("TextLabel")
General6.Name = "General"
General6.Position = UDim2.new(0.028136, 0, 0.0231689, 0)
General6.Size = UDim2.new(0, 192, 0, 37)
General6.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
General6.BackgroundTransparency = 0.6
General6.BorderSizePixel = 0
General6.BorderColor3 = Color3.new(0, 0, 0)
General6.Transparency = 0.6
General6.Text = "Credits & More!"
General6.TextColor3 = Color3.new(1, 1, 1)
General6.TextSize = 27
General6.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
General6.TextWrapped = true
General6.TextTransparency = 0
General6.Parent = Credits

local General7 = Instance.new("TextLabel")
General7.Name = "General"
General7.Position = UDim2.new(0.028136, 0, 0.61182, 0)
General7.Size = UDim2.new(0, 192, 0, 32)
General7.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
General7.BackgroundTransparency = 0.6
General7.BorderSizePixel = 0
General7.BorderColor3 = Color3.new(0, 0, 0)
General7.Transparency = 0.6
General7.Text = "Extra Scripts:"
General7.TextColor3 = Color3.new(1, 1, 1)
General7.TextSize = 27
General7.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
General7.TextWrapped = true
General7.TextTransparency = 0
General7.Parent = Credits

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"

UICorner.Parent = Main

----------------------------------------------
                -- Teams UI
----------------------------------------------

local TeamCH = Instance.new("Frame")
TeamCH.Name = "TeamCH"
TeamCH.Position = UDim2.new(0.022, 0,0.426, 0)
TeamCH.Size = UDim2.new(0, 254, 0, 100)
TeamCH.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TeamCH.BackgroundTransparency = 0.4
TeamCH.BorderSizePixel = 0
TeamCH.BorderColor3 = Color3.new(0, 0, 0)
TeamCH.Transparency = 0.4
TeamCH.Parent = WHub2

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"

UICorner.Parent = TeamCH

local TeamPr = Instance.new("TextButton")
TeamPr.Name = "TeamPr"
TeamPr.Position = UDim2.new(0, 0, 0.353136, 0)
TeamPr.Size = UDim2.new(0, 254, 0, 30)
TeamPr.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TeamPr.BackgroundTransparency = 1
TeamPr.BorderSizePixel = 0
TeamPr.BorderColor3 = Color3.new(0, 0, 0)
TeamPr.Transparency = 1
TeamPr.Text = "Join Team Prisoner"
TeamPr.TextColor3 = Color3.new(1, 0.615686, 0.0784314)
TeamPr.TextSize = 24
TeamPr.TextTransparency = 0
TeamPr.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TeamPr.Parent = TeamCH

local TeamCrim = Instance.new("TextButton")
TeamCrim.Name = "TeamCrim"
TeamCrim.Position = UDim2.new(0, 0, 0.0410349, 0)
TeamCrim.Size = UDim2.new(0, 254, 0, 31)
TeamCrim.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TeamCrim.BackgroundTransparency = 1
TeamCrim.BorderSizePixel = 0
TeamCrim.BorderColor3 = Color3.new(0, 0, 0)
TeamCrim.Transparency = 1
TeamCrim.Text = "Join Team Criminal"
TeamCrim.TextColor3 = Color3.new(1, 0, 0)
TeamCrim.TextSize = 24
TeamCrim.TextTransparency = 0
TeamCrim.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TeamCrim.Parent = TeamCH

local TeamGuards = Instance.new("TextButton")
TeamGuards.Name = "TeamGuards"
TeamGuards.Position = UDim2.new(0, 0, 0.645236, 0)
TeamGuards.Size = UDim2.new(0, 254, 0, 30)
TeamGuards.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TeamGuards.BackgroundTransparency = 1
TeamGuards.BorderSizePixel = 0
TeamGuards.BorderColor3 = Color3.new(0, 0, 0)
TeamGuards.Transparency = 1
TeamGuards.Text = "Join Team Guard"
TeamGuards.TextColor3 = Color3.new(0.0235294, 0.282353, 1)
TeamGuards.TextSize = 24
TeamGuards.TextTransparency = 0
TeamGuards.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TeamGuards.Parent = TeamCH

print("Weshky Hub: MainUI Has Been Loaded!")
----------------------------------------------------------
                    -- Buttons
----------------------------------------------------------

print("Weshky Hub: Everything Has Been Loaded!")
print("-----------------------------------------------------")
print("Weshky Hub: Possible problems with Instant Scripts!")
print("-----------------------------------------------------")

-- Funktion zum Ausführen von Skripten mit Fehlerbehandlung
local function executeScript(url)
    local success, err = pcall(function()
        loadstring(game:HttpGet(url, true))()
    end)
    if not success then
        warn("Failed to execute script from " .. url .. ": " .. err)
    end
end

-- Button-Events
GetAK_47.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/AK-47.lua')
end)

GetM4A1.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/M4A1.lua')
end)

GetRemington870.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/Remington870.lua')
end)

GetM9.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/Pistol.lua')
end)

InfiniteYield.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')
end)

DexExploder.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua')
end)

JoinRed.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Breakout.lua')
    wait(3)
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua')
end)

ArrestEveryone.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/ArrestCrims.lua')
end)

Noclip.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Noclip.lua')
end)

Super_Punch.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/SuperPunch.lua')
end)

TaserBypass.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/TaserBypass.lua')
end)

Fly.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Fly.lua')
    wait(3)
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua')
end)

KillAll.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/KillAll.lua')
end)

TaseAll.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/TaseAll.lua')
end)

DeathPosiB.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua')
end)

ModAK.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/AKMod.lua')
end)

ModM4A1.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/M4A1Mod.lua')
end)

ModRem870.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/Rem870Mod.lua')
end)

DontPunch.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/AntiPunch.lua')
end)

Crashservers.MouseButton1Down:Connect(function()
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/Crash.lua')
end)

-- Teams
TeamCrim.MouseButton1Down:Connect(function()
    local originalPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002)
    wait(0.45)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua')
end)

TeamGuards.MouseButton1Down:Connect(function()
    local originalPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    workspace.Remote.TeamEvent:FireServer("Bright blue")
    wait(0.45)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua')
end)

TeamPr.MouseButton1Down:Connect(function()
    local originalPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    workspace.Remote.TeamEvent:FireServer("Bright orange")
    wait(0.45)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
    executeScript('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua')
end)

----------------------------------------------------------
                    -- More:
----------------------------------------------------------

local function toggleVisibility(element)
    element.Visible = not element.Visible
end

OpenClose.MouseButton1Down:Connect(function()
    toggleVisibility(Main)
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.Q then
        toggleVisibility(Main)
    end
end)
