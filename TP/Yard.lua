local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition = CFrame.new(787.005005, 97.999939, 2464.3584, 0.999848306, 2.02913615e-08, -0.0174189601, -2.06066915e-08, 1, -1.79231563e-08, 0.0174189601, 1.82793833e-08, 0.999848306)
humanoidRootPart.CFrame = targetPosition
