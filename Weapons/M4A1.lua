local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(853.493469, 99.9874649, 2254.9563, 0.999839485, -2.65091984e-08, -0.0179156307, 2.71944671e-08, 1, 3.8006096e-08, 0.0179156307, -3.8487201e-08, 0.999839485)
wait(0.16)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["M4A1"].ITEMPICKUP)

wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
