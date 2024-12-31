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
