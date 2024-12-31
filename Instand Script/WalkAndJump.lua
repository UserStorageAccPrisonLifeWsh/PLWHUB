local targetWalkSpeed = 29
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



while true do
    wait("15")
    local updateCharacterProperties = False 
    wait(2.5)
    local updateCharacterProperties = true 
    print("WalkAndJump Reload!")
end
