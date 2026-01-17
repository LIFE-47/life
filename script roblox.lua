local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Remotes = {
	["CameraChange"] = ReplicatedStorage.RemoteFunction:FindFirstChild("CameraChange")
}

Remotes["CameraChange"].OnServerInvoke = function(player, value)
	local character = player.Character
	local inCutScene = character:FindFirstChild("InCutscene")
	if inCutScene then
		inCutScene.Value = value
	end
	
	return true
end
