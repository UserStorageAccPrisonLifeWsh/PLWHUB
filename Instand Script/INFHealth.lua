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
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Instand%20Script/WalkAndJump.lua'),true))()
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

