local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition = CFrame.new(837.172058, 99.9899979, 2267.62744, 0.999993086, 3.25096372e-09, 0.00371100102, -3.43431616e-09, 1, 4.94014571e-08, -0.00371100102, -4.94138597e-08, 0.999993086)


local originalPosition = humanoidRootPart.CFrame

humanoidRootPart.CFrame = targetPosition
