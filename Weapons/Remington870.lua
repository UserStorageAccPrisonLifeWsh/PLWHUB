local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(823.720032, 100.999992, 2251.27563, 0.999391854, -7.39001322e-08, 0.0348692648, 7.57053229e-08, 1, -5.04499056e-08, -0.0348692648, 5.3059015e-08, 0.999391854)
wait(0.2)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP)

wait(0.25)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()

