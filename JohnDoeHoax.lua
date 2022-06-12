local ChatService = game:GetService("Chat")
for i,v in pairs(game.Lighting:GetChildren()) do
	v:Destroy()
end
for i=1,5 do
for i,v in pairs(game.Players:GetChildren()) do
	ChatService:Chat(v.Character.Head, "John Doe is back.", "Red")
end
wait(1)
end
local johnDoe = coroutine.wrap(function()
	local sound = Instance.new('Sound',game.Workspace)
	sound.Volume = 5
	sound.PlayOnRemove = true
	sound.Looped = true
	sound.SoundId = 'rbxassetid://182574795'
	sound:Play()
	wait()
	sound:Destroy()
end)
 
johnDoe()
while true do
	if game.Lighting:FindFirstChild('John Doe') == nil then
		local hah = Instance.new('ColorCorrectionEffect',game.Lighting)
		hah.Name = "John Doe"
		hah.Brightness = -0.2
		hah.Contrast = 0
		hah.Saturation = 0
		hah.TintColor = Color3.new(255,0,0)
	elseif game.Lighting["John Doe"].Enabled == false then
		game.Lighting["John Doe"].Enabled = true
	end
	game.Lighting["John Doe"].Name = "John Doe"
	game.Lighting["John Doe"].Brightness = -0.2
	game.Lighting["John Doe"].Contrast = 0
	game.Lighting["John Doe"].Saturation = 0
	game.Lighting["John Doe"].TintColor = Color3.new(255,0,0)
wait()
end