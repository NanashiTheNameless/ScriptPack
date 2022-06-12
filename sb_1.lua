g=game.Players:GetChildren()
for i=1,#g do
if g[i].className=="Player" then
g[i].Chatted:connect(function(msg) onChatted(msg, g[i]) end) 
end
end 


--[[                          made by darkmage0252                                                                                                                                                                                                                                          ]]

function onChatted(msg, speaker) 
source = string.lower(speaker.Name) 

MSG=Instance.new("Hint")
MSG.Parent=speaker
MSG.Text="I Thank darkmage0252 for his script builder"
game:GetService("Debris"):AddItem(MSG,2)

if (string.sub(msg,1,7) == "script/") then 
sc=string.sub(msg,8)
sour=sc

ssource=sc

xx2=Instance.new("ScreenGui")
xx2.Parent=speaker.PlayerGui
x=Instance.new("TextButton")
x.Parent=xx2
x.AutoButtonColor=false
x.Name="Run"
x.Active=false
x.BackgroundTransparency=0.3
x.Text="Running Script..."
x.Position=UDim2.new(0,200,0,110)
x.Size=UDim2.new(0,750,0,15)
game:GetService("Debris"):AddItem(xx2,4)




cl=script.Parent.QuickScriptStart:clone()

cl.Parent=workspace
cl.Name="QuickScript"
cl.QSource.Value=ssource
cl.Disabled=false 







end
end

function onPlayerEntered(newPlayer) 
newPlayer.Chatted:connect(function(msg) onChatted(msg, newPlayer) end) 
end 

game.Players.ChildAdded:connect(onPlayerEntered)


