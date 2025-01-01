local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(821.040283, 102.480148, 2250.36841, 3.23057175e-05, 0.707153201, -0.707060337, -1.33812428e-05, 0.707060337, 0.707153201, 1, -1.33812428e-05, 3.23057175e-05)
wait(0.16)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["M9"].ITEMPICKUP)

wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
