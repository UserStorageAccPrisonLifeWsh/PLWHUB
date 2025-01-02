local player = game.Players.LocalPlayer
local originalCFrame

local function monitorAndReset()
    while true do
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        task.spawn(function()
            while humanoid.Health > 0 do
                originalCFrame = humanoidRootPart.CFrame
                wait(5.5)
            end
        end)
        humanoid.Died:Wait()
        print("")
        wait(1)

        local newCharacter = player.CharacterAdded:Wait()
        local newHumanoidRootPart = newCharacter:WaitForChild("HumanoidRootPart")
        newHumanoidRootPart.CFrame = originalCFrame
        print("")
    end
end

print("DeathPosi Works!")

monitorAndReset()

