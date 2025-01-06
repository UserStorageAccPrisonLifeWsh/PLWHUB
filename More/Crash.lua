loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/Remington870.lua'),true))() 

wait(3)

local Gun = "Remington 870"
 
local Player = game.Players.LocalPlayer.Name
 
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Gun].ITEMPICKUP)
 
for i,v in pairs(game.Players[Player].Backpack:GetChildren()) do
    if v.Name == (Gun) then
        v.Parent = game.Players.LocalPlayer.Character
    end
end
 
Gun = game.Players[Player].Character[Gun]
 
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
 
function FireGun(target)
        coroutine.resume(coroutine.create(function()
                  local bulletTable = {}
                  table.insert(bulletTable, {
                  Hit = target,
                  Distance = 100,
                  Cframe = CFrame.new(0,1,1),
                  RayObject = Ray.new(Vector3.new(0.1,0.2), Vector3.new(0.3,0.4))
                   })
                  game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
                  wait()
        end))
end
 
while game:GetService("RunService").Stepped:Wait() do
    for count = 1, 6 do 
        FireGun()
    end
end


wait(30)


loadstring(game:HttpGet(('https://raw.githubusercontent.com/UserStorageAccPrisonLifeWsh/PLWHUB/refs/heads/main/Weapons/Remington870.lua'),true))() 

wait(3)

local Gun = "Remington 870"
 
local Player = game.Players.LocalPlayer.Name
 
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Gun].ITEMPICKUP)
 
for i,v in pairs(game.Players[Player].Backpack:GetChildren()) do
    if v.Name == (Gun) then
        v.Parent = game.Players.LocalPlayer.Character
    end
end
 
Gun = game.Players[Player].Character[Gun]
 
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
 
function FireGun(target)
        coroutine.resume(coroutine.create(function()
                  local bulletTable = {}
                  table.insert(bulletTable, {
                  Hit = target,
                  Distance = 100,
                  Cframe = CFrame.new(0,1,1),
                  RayObject = Ray.new(Vector3.new(0.1,0.2), Vector3.new(0.3,0.4))
                   })
                  game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
                  wait()
        end))
end
 
while game:GetService("RunService").Stepped:Wait() do
    for count = 1, 6 do 
        FireGun()
    end
end
