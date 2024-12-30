local WHubAddon = Instance.new("ScreenGui")
WHubAddon.Name = "WHubAddon"
WHubAddon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WHubAddon.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local SpecificPlayers = Instance.new("Frame")
SpecificPlayers.Name = "SpecificPlayers"
SpecificPlayers.Position = UDim2.new(0.671028, 0, 0.2759, 0)
SpecificPlayers.Size = UDim2.new(0, 285, 0, 411)
SpecificPlayers.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SpecificPlayers.BackgroundTransparency = 0.30000001192092896
SpecificPlayers.BorderSizePixel = 0
SpecificPlayers.BorderColor3 = Color3.new(0, 0, 0)
SpecificPlayers.Transparency = 0.30000001192092896
SpecificPlayers.Parent = WHubAddon

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"

UICorner.Parent = SpecificPlayers

local Tp = Instance.new("TextLabel")
Tp.Name = "Tp"
Tp.Position = UDim2.new(0.0509676, 0, 0.186186, 0)
Tp.Size = UDim2.new(0, 120, 0, 36)
Tp.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Tp.BackgroundTransparency = 0.800000011920929
Tp.BorderSizePixel = 0
Tp.BorderColor3 = Color3.new(0, 0, 0)
Tp.Transparency = 0.800000011920929
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
Tase.BackgroundTransparency = 0.800000011920929
Tase.BorderSizePixel = 0
Tase.BorderColor3 = Color3.new(0, 0, 0)
Tase.Transparency = 0.800000011920929
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
Teleport.BackgroundTransparency = 0.8
Teleport.BorderSizePixel = 0
Teleport.Text = "<Username>"
Teleport.TextColor3 = Color3.new(1, 1, 1)
Teleport.TextSize = 15
Teleport.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Teleport.TextWrapped = true
Teleport.Parent = SpecificPlayers

-- Funktion zum Teleportieren eines Spielers
local function teleportToPlayer(playerName)
    local localPlayer = game.Players.LocalPlayer
    local targetPlayer = game.Players:FindFirstChild(playerName)

    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        localPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
    else
        warn("Spieler nicht gefunden oder ungültig: " .. playerName)
    end
end

-- Event, das ausgelöst wird, wenn der Spieler die Eingabe beendet
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
TaseUser.BackgroundTransparency = 0.800000011920929
TaseUser.BorderSizePixel = 0
TaseUser.BorderColor3 = Color3.new(0, 0, 0)
TaseUser.Transparency = 0.800000011920929
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
Kill.BackgroundTransparency = 0.800000011920929
Kill.BorderSizePixel = 0
Kill.BorderColor3 = Color3.new(0, 0, 0)
Kill.Transparency = 0.800000011920929
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
KillUser.BackgroundTransparency = 0.800000011920929
KillUser.BorderSizePixel = 0
KillUser.BorderColor3 = Color3.new(0, 0, 0)
KillUser.Transparency = 0.800000011920929
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
TSMain.BackgroundTransparency = 0.949999988079071
TSMain.BorderSizePixel = 0
TSMain.BorderColor3 = Color3.new(0, 0, 0)
TSMain.Transparency = 0.949999988079071
TSMain.Parent = SpecificPlayers

local line = Instance.new("Frame")
line.Name = "line"
line.Position = UDim2.new(0.670696, 0, 0.336294, 0)
line.Size = UDim2.new(0, 285, 0, 7)
line.BackgroundColor3 = Color3.new(1, 0.258824, 0.258824)
line.BackgroundTransparency = 0.30000001192092896
line.BorderSizePixel = 0
line.BorderColor3 = Color3.new(0, 0, 0)
line.Transparency = 0.30000001192092896
line.Parent = WHubAddon

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Position = UDim2.new(0.671028, 0, 0.282067, 0)
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
Title.Parent = WHubAddon





