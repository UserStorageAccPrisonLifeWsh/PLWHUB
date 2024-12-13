game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
            game.Players.LocalPlayer.CharacterAdded:connect(function()
            game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
            game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
            end)
            print("Executed")
