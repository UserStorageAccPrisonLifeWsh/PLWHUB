local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition = CFrame.new(-908.08905, 94.1082764, 2065.67676, -0.0569367222, 5.23430508e-08, 0.9983778, 2.7252371e-08, 1, -5.08739184e-08, -0.9983778, 2.43115679e-08, -0.0569367222)


local originalPosition = humanoidRootPart.CFrame

humanoidRootPart.CFrame = targetPosition
