local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition = CFrame.new(-920.510803, 92.2271957, 2138.27002)

local function teleportAndReturn()
    local originalPosition = humanoidRootPart.CFrame

    humanoidRootPart.CFrame = targetPosition
    print("")

    task.wait(0.5)
    humanoidRootPart.CFrame = originalPosition
    print("")
end

teleportAndReturn()
