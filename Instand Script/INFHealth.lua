local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local deathCFrame = nil
local part = nil

local function createPart()
    part = Instance.new("Part")
    part.Size = Vector3.new(2, 2, 2)
    part.BrickColor = BrickColor.Random()
    part.Anchored = true
    part.CanCollide = false
    part.Parent = workspace

    if character and character:FindFirstChild("HumanoidRootPart") then
        part.Position = character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
    end

    task.delay(0.8, function()
        if part then
            part:Destroy()
        end
    end)
end

local function teleportToDeathPosition()
    if deathCFrame and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = deathCFrame
    end
end

local function monitorPlayer()
    while true do
        character = player.Character or player.CharacterAdded:Wait()

        if character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid

            humanoid.Died:Wait()

            if character:FindFirstChild("HumanoidRootPart") then
                deathCFrame = character.HumanoidRootPart.CFrame
            end

            player.CharacterAdded:Wait()
            character = player.Character or player.CharacterAdded:Wait()

            repeat
                task.wait(0.1)
            until character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid")

            teleportToDeathPosition()
        end
    end
end

task.spawn(function()
    while true do
        createPart()
        task.wait(0.15)
    end
end)

-- Starte die Überwachung
monitorPlayer()
