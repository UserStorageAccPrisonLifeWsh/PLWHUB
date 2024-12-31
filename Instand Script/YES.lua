local targetWalkSpeed = 32
local targetJumpPower = 55

local player = game.Players.LocalPlayer

local function updateCharacterProperties()
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        humanoid.WalkSpeed = targetWalkSpeed
        humanoid.JumpPower = targetJumpPower
    end
end

while true do
    updateCharacterProperties()
    wait(0.1)
end




local StarterGui = game:GetService("StarterGui")
local toolbarVisible = true 

while true do
    toolbarVisible = toolbarVisible
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, toolbarVisible)
    wait(0.1)
end
print("ToolBar Works!")




while true do
    wait("15")
    local toolbarVisible = False 
    wait(2.5)
    local toolbarVisible = true 
    print("ToolBar Reload!")
end




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
                wait(4)
            end
        end)

        humanoid.Died:Wait()
        print("")
        wait(5.5)

        local newCharacter = player.CharacterAdded:Wait()
        local newHumanoidRootPart = newCharacter:WaitForChild("HumanoidRootPart")
        newHumanoidRootPart.CFrame = originalCFrame
        print("")
    end
end

print("DeathPosi Works!")

monitorAndReset()


while true do
    wait(15)
    local monitorAndReset = False 
    wait(2)
    local monitorAndReset = true 
    print("DeathPosi Reload!")
end
