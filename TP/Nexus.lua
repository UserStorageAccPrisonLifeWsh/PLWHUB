local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition = CFrame.new(951.376343, 99.9754715, 2364.79102, -0.016233122, -2.06975415e-08, 0.999868214, -6.92108948e-09, 1, 2.05879029e-08, -0.999868214, -6.58597177e-09, -0.016233122)


local originalPosition = humanoidRootPart.CFrame

humanoidRootPart.CFrame = targetPosition
