local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.538391, 94.1287613, 2055.99658, -0.999999642, 2.34073134e-08, -0.000844621565, 2.3361963e-08, 1, 5.3703392e-08, 0.000844621565, 5.36836424e-08, -0.999999642)
wait(0.16)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP)

wait(0.3)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
