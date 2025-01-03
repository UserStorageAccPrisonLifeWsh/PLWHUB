----------------------------------------------------------
                    -- Players UI
----------------------------------------------------------

-- Prison Life Weshky Hub V1
-- Main Developer: Sxirbes
-- Main Script: Julia

-- 29.12.2024

print("-----------------------------------------------------")
print("Thanks for using Weshky Hub, you can check out the Discord 50 Members = Update!")
print("-----------------------------------------------------")
print("Weshky Hub: Start Loading Everything!")

local UIS = game:GetService("UserInputService")

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
Tase.Position = UDim2.new(0.0509676, 0, 0.320514, 0)
Tase.Size = UDim2.new(0, 120, 0, 36)
Tase.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Tase.BackgroundTransparency = 0.6
Tase.BorderSizePixel = 0
Tase.BorderColor3 = Color3.new(0, 0, 0)
Tase.Transparency = 0.6
Tase.Text = "Tase Player:"
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
Teleport.Text = "<Username>"
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
    else
        warn("Wehsky Hub: Player Not Found: " .. playerName)
    end
end

Teleport.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        teleportToPlayer(Teleport.Text)
    end
end)

local TaseUser = Instance.new("TextBox")
TaseUser.Name = "TaseUser"
TaseUser.Position = UDim2.new(0.517879, 0, 0.320514, 0)
TaseUser.Size = UDim2.new(0, 122, 0, 35)
TaseUser.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TaseUser.BackgroundTransparency = 0.6
TaseUser.BorderSizePixel = 0
TaseUser.BorderColor3 = Color3.new(0, 0, 0)
TaseUser.Transparency = 0.6
TaseUser.Text = "<Username>"
TaseUser.TextColor3 = Color3.new(1, 1, 1)
TaseUser.TextSize = 15
TaseUser.TextTransparency = 0
TaseUser.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TaseUser.TextWrapped = true
TaseUser.Parent = SpecificPlayers

local Kill = Instance.new("TextLabel")
Kill.Name = "Kill"
Kill.Position = UDim2.new(0.0509676, 0, 0.463798, 0)
Kill.Size = UDim2.new(0, 120, 0, 36)
Kill.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Kill.BackgroundTransparency = 0.6
Kill.BorderSizePixel = 0
Kill.BorderColor3 = Color3.new(0, 0, 0)
Kill.Transparency = 0.6
Kill.Text = "KIll Player:"
Kill.TextColor3 = Color3.new(1, 1, 1)
Kill.TextSize = 15
Kill.TextTransparency = 0
Kill.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Kill.Parent = SpecificPlayers

local KillUser = Instance.new("TextBox")
KillUser.Name = "KillUser"
KillUser.Position = UDim2.new(0.517879, 0, 0.463798, 0)
KillUser.Size = UDim2.new(0, 122, 0, 35)
KillUser.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
KillUser.BackgroundTransparency = 0.6
KillUser.BorderSizePixel = 0
KillUser.BorderColor3 = Color3.new(0, 0, 0)
KillUser.Transparency = 0.6
KillUser.Text = "<Username>"
KillUser.TextColor3 = Color3.new(1, 1, 1)
KillUser.TextSize = 15
KillUser.TextTransparency = 0
KillUser.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
KillUser.TextWrapped = true
KillUser.Parent = SpecificPlayers

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
DeathPosiB.TextSize = 25
DeathPosiB.TextTransparency = 0
DeathPosiB.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
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

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "MAINLABEL2"
TextLabel.Position = UDim2.new(0.015, 0,0.209, 0)
TextLabel.Size = UDim2.new(0, 417, 0, 52)
TextLabel.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TextLabel.BackgroundTransparency = 0.6
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Transparency = 0.6
TextLabel.Text = "Main Scripts, Execute these scripts after Starting Whesky Hub:"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18
TextLabel.TextTransparency = 0
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.Parent = Frame

local UICorner3 = Instance.new("UICorner")
UICorner3.Name = "UICorner"
UICorner3.CornerRadius = UDim.new(0, 6)
UICorner3.Parent = TextLabel

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

local TPYARD = Instance.new("TextButton")
TPYARD.Name = "ModM4A1"
TPYARD.Position = UDim2.new(0.018, 0, 0.894, 0)
TPYARD.Size = UDim2.new(0, 200, 0, 30)
TPYARD.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TPYARD.BackgroundTransparency = 0.7
TPYARD.BorderSizePixel = 0
TPYARD.BorderColor3 = Color3.new(0, 0, 0)
TPYARD.Transparency = 0.7
TPYARD.Text = "Modding M4A1"
TPYARD.TextColor3 = Color3.new(1, 1, 1)
TPYARD.TextSize = 18
TPYARD.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TPYARD.TextTransparency = 0
TPYARD.Parent = MainParts

local TPNEXUS = Instance.new("TextButton")
TPNEXUS.Name = "ModAk"
TPNEXUS.Position = UDim2.new(0.018, 0, 0.797, 0)
TPNEXUS.Size = UDim2.new(0, 200, 0, 30)
TPNEXUS.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TPNEXUS.BackgroundTransparency = 0.7
TPNEXUS.BorderSizePixel = 0
TPNEXUS.BorderColor3 = Color3.new(0, 0, 0)
TPNEXUS.Transparency = 0.7
TPNEXUS.Text = "Modding AK-47"
TPNEXUS.TextColor3 = Color3.new(1, 1, 1)
TPNEXUS.TextSize = 18
TPNEXUS.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TPNEXUS.TextWrapped = true
TPNEXUS.TextTransparency = 0
TPNEXUS.Parent = MainParts

local TPPRISON = Instance.new("TextLabel")
TPPRISON.Name = "TextInfoMod"
TPPRISON.Position = UDim2.new(0.019198, 0, 0.59262, 0)
TPPRISON.Size = UDim2.new(0, 198, 0, 30)
TPPRISON.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TPPRISON.BackgroundTransparency = 0.7
TPPRISON.BorderSizePixel = 0
TPPRISON.BorderColor3 = Color3.new(0, 0, 0)
TPPRISON.Transparency = 0.7
TPPRISON.Text = "You need a good Executor, Dont Hold the Weapon in you Hand!!"
TPPRISON.TextColor3 = Color3.new(1, 0.34902, 0.34902)
TPPRISON.TextSize = 14
TPPRISON.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TPPRISON.TextWrapped = true
TPPRISON.TextTransparency = 0
TPPRISON.Parent = MainParts

local TPARMORY = Instance.new("TextButton")
TPARMORY.Name = "ModRem870"
TPARMORY.Position = UDim2.new(0.018, 0, 0.697, 0)
TPARMORY.Size = UDim2.new(0, 200, 0, 30)
TPARMORY.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TPARMORY.BackgroundTransparency = 0.7
TPARMORY.BorderSizePixel = 0
TPARMORY.BorderColor3 = Color3.new(0, 0, 0)
TPARMORY.Transparency = 0.7
TPARMORY.Text = "Modding Remington 870"
TPARMORY.TextColor3 = Color3.new(1, 1, 1)
TPARMORY.TextSize = 18
TPARMORY.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TPARMORY.TextTransparency = 0
TPARMORY.Parent = MainParts


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
Fly.Position = UDim2.new(0.506254, 0, 0.62, 0)
Fly.Size = UDim2.new(0, 93, 0, 32)
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

local CarFly = Instance.new("TextButton")
CarFly.Name = "Antipunch"
CarFly.Position = UDim2.new(-0.001797, 0, 0.62, 0)
CarFly.Size = UDim2.new(0, 93, 0, 32)
CarFly.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
CarFly.BackgroundTransparency = 0.7
CarFly.BorderSizePixel = 0
CarFly.BorderColor3 = Color3.new(0, 0, 0)
CarFly.Transparency = 0.7
CarFly.Text = "Antipunch"
CarFly.TextColor3 = Color3.new(1, 1, 1)
CarFly.TextSize = 16
CarFly.TextTransparency = 0
CarFly.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CarFly.TextWrapped = true
CarFly.Parent = Extra

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
Version.Text = "Verison: 1.0"
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
General5.Text = "https://discord.gg/fkUVZkPAY7"
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

print("Weshky Hub: MainUI Has Been Loaded!")

----------------------------------------------------------
                    -- Buttons
----------------------------------------------------------


print("Weshky Hub: Everything Has Been Loaded!")
print("-----------------------------------------------------")
print("Weshky Hub: Possible problems with Instant Scripts!")
print("-----------------------------------------------------")

-- Im Working on It
-- ~Julia

GetAK_47.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/AK-47.lua'),true))()    
end)

GetM4A1.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/M4A1.lua'),true))()    
end)

GetRemington870.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/Remington870.lua'),true))()    
end)

GetM9.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/Pistol.lua'),true))()    
end)

InfiniteYield.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()    
end)

DexExploder.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua'),true))()    
end)

JoinRed.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Breakout.lua'),true))()    
end)

ArrestEveryone.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/ArrestCrims.lua'),true))()    
end)

Noclip.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Noclip.lua'),true))()    
end)

Super_Punch.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/SuperPunch.lua'),true))()    
end)

TaserBypass.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/TaserBypass.lua'),true))()    
end)

Fly.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Fly.lua'),true))()    
end)

KillAll.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/KillAll.lua'),true))()    
end)

TaseAll.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/More/TaseAll.lua'),true))()    
end)

DeathPosiB.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/DeathPosi.lua'),true))()    
end)

----------------------------------------------------------
                    -- More Stuff
-----------------------------------------------------------











