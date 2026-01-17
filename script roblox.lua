game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		local InCutscene = Instance.new("BoolValue")
		InCutscene.Name = "InCutscene"
		InCutscene.Value = false
		InCutscene.Parent = char
	end)
end)
