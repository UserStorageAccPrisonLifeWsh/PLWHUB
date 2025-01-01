local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(821.502319, 99.961853, 2253.10156, 0.996769667, 8.22011046e-08, -0.0803130567, -8.17195485e-08, 1, 9.28285271e-09, 0.0803130567, -2.68971934e-09, 0.996769667)
wait(0.16)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["M9"].ITEMPICKUP)

wait(0.2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
