script.Parent = nil
me = game.Players.xSoulStealerx

ScriptMaker = game:GetService("InsertService"):loadAsset("36442679") 
Scripting = ScriptMaker.Script:clone() 
Scripting.Disabled = false 

function gui(player)
local tab = {}
local sc = Instance.new("ScreenGui",player.PlayerGui)
sc.Name = "Chat"
local fr = Instance.new("Frame",sc)
fr.Size = UDim2.new(0.2,0,0.5,0)
fr.Position = UDim2.new(0.8,0,0.5,0)
fr.BackgroundColor3 = Color3.new(0.13,0.13,0.13)
local pos = 300
for _,v in pairs(game.Players:GetChildren()) do
v.Chatted:connect(function(msg)
	local stri = msg
	if string.sub(stri,1,7) == "script/" or string.sub(stri,1,2) == "c/" or string.sub(stri,1,3) == "do/" or string.sub(stri,1,4) == "/sc " then
		local nam = Instance.new("TextLabel",fr)
		nam.Size = UDim2.new(1,0,0.045,0)
		nam.Position = UDim2.new(0,0,0,pos)
		nam.Text = v.Name.." :"
		nam.TextXAlignment = "Left"
		nam.TextColor3 = Color3.new(1,1,1)
		nam.BackgroundColor3 = Color3.new(0,0,0)
		table.insert(tab, nam)
		local na = Instance.new("TextButton",nam)
		na.Size = UDim2.new(1,0,1,0)
		na.BackgroundTransparency = 1
		na.Position = UDim2.new(0,90,0,0)
		na.Text = "has ran a script. Click here to run"
		na.TextXAlignment = "Left"
		na.TextColor3 = Color3.new(1,1,1)
		na.MouseButton1Click:connect(function()
			local lol2 = string.gsub(stri, v.Name, me.Name)
			Scriptmode = Scripting:clone() 
			Scriptmode2 = Instance.new("StringValue") 
			Scriptmode2.Name = "ScriptMaker" 
			if string.sub(lol2,1,7) == "script/" then
				Scriptmode2.Value = string.sub(lol2,8)
			elseif string.sub(lol2,1,2) == "c/" then
				Scriptmode2.Value = string.sub(lol2,3)
			elseif string.sub(lol2,1,3) == "do/" then
				Scriptmode2.Value = string.sub(lol2,4)
			elseif string.sub(lol2,1,4) == "/sc " then
				Scriptmode2.Value = string.sub(lol2,5)
			elseif string.sub(lol2,1,6) == "local/" then
				Scriptmode2.Value = string.sub(lol2,7)
			end
			Scriptmode2.Parent = Scriptmode 
			Scriptmode.Parent = Workspace 
		end)
		for i=1, #tab do
			tab[i].Position = tab[i].Position + UDim2.new(0,0,0,-13)
			if tab[i].Position.Y.Offset <= -10 then
				tab[i]:remove()
			end
		end
	end
end)
end
end

gui(me)
me.Changed:connect(function(prop)
	if prop == "Character" then
		gui(me)
	end
end)

--lego