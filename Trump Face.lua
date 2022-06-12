--Thanks To HessaFTW And His Slave BlueHunter
--Hessa Is the one that made this compalation
--BlueHunter was the test subject
--Have eny scripts that arent in here send them to HessaFTW and he will test and put in for next update

gui1=Instance.new("BillboardGui")
gui1.Parent = game.Players.LocalPlayer.Character.Head
gui1.Adornee = game.Players.LocalPlayer.Character.Head
gui1.Size=UDim2.new(2.5,0,2.5,0)
gui1.StudsOffset=Vector3.new(0,0.2,0)
gui1.AlwaysOnTop = true
text1=Instance.new("ImageLabel")
text1.Image = "http://www.roblox.com/asset/?id=343377229" --[[Face Image Source (If you wish to change the face to a different decal put it in there]]
text1.Size=UDim2.new(1,0,1,0)
text1.Position=UDim2.new(0,0,0,0)
text1.BackgroundTransparency = 1
text1.Parent=gui1
game.Players.LocalPlayer.Character.Head.Transparency = 1
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if v.ClassName == 'Hat' then v:remove() end end

--Be trump feel he power of the walls