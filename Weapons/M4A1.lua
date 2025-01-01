local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(853.500732, 103.701538, 2250.48169, 9.15527344e-05, -1, 5.24520874e-06, 5.24520874e-06, 5.24520874e-06, 1, -1, -9.15527344e-05, 5.24520874e-06)
wait(0.16)

workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].giver["M4A1"].ITEMPICKUP)

wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
