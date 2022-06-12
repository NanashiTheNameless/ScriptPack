local audio = Instance.new('Sound')
audio.Volume = 10
audio.SoundId = "rbxassetid://360322113"
audio.Looped = true
audio.Name = 'GET BLUE'
audio.PlayOnRemove = true
audio.Parent = game.Workspace
audio:Play()
for i,v in pairs(game.Lighting:GetChildren()) do
	v:Destroy()
end
local johnDoe = coroutine.wrap(function()
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
wait()	game.Lighting["John Doe"].Name = "John Doe"
	game.Lighting["John Doe"].Brightness = -0.2
	game.Lighting["John Doe"].Contrast = 0
	game.Lighting["John Doe"].Saturation = 0
	game.Lighting["John Doe"].TintColor = Color3.new(255,0,0)
wait()
end