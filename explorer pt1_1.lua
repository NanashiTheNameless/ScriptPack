gui1 = Instance.new("GuiMain") 
gui1.Parent = game.Players.acb227.PlayerGui 
gui1.Name = "Explorer"

gui2 = Instance.new("GuiMain") 
gui2.Parent = gui1 
gui2.Name = "Properties"

ov = Instance.new("ObjectValue")
ov.Name = "Oindex"
ov.Parent = gui1 

iv = Instance.new("IntValue")
iv.Name = "Tindex"
iv.Parent = gui1 

f1 = Instance.new("Frame") 
f1.Parent = gui2 
f1.Name = "Backgorund"
f1.Position = {0, 100}, {0, 260}
f1.Size = {0, 200}, {0, 140}
f1.Active = false
f1.Visible = false

tb1 = Instance.new("TextButton") 
tb1.Parent = f1 
tb1.Name = "Escape Button"
tb1.Position = {0, 200}, {0, 0}
tb1.Size = {0, 30}, {0, 30}
tb1.Active = true
tb1.Visible = true
tb1.Text = "X"

tb1.MouseButton1Click:connect(function()
	script.Parent.Parent.Visible = false
	for i,v in pairs(script.Parent.Parent:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
			pcall(function()
				v.SOURCE:Remove()
			end)
			pcall(function()
				v.SValue:Remove()
			end)
		end
	end
end)

tb2 = Instance.new("TextButton") 
tb2.Parent = f1 
tb2.Name = "Line[1]"
tb2.Position = {0, 0}, {0, 0}
tb2.Size = {0, 200}, {0, 20}
tb2.Active = true
tb2.Visible = true
tb2.Text = ""

tb2.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			
tb3 = Instance.new("TextButton") 
tb3.Parent = f1 
tb3.Name = "Line[2]"
tb3.Position = {0, 0}, {0, 0}
tb3.Size = {0, 200}, {0, 20}
tb3.Active = true
tb3.Visible = true
tb3.Text = ""

tb3.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			

tb3 = Instance.new("TextButton") 
tb3.Parent = f1 
tb3.Name = "Line[3]"
tb3.Position = {0, 0}, {0, 0}
tb3.Size = {0, 200}, {0, 20}
tb3.Active = true
tb3.Visible = true
tb3.Text = ""

tb3.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			

tb4 = Instance.new("TextButton") 
tb4.Parent = f1 
tb4.Name = "Line[4]"
tb4.Position = {0, 0}, {0, 0}
tb4.Size = {0, 200}, {0, 20}
tb4.Active = true
tb4.Visible = true
tb4.Text = ""

tb4.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			

tb5 = Instance.new("TextButton") 
tb5.Parent = f1 
tb5.Name = "Line[5]"
tb5.Position = {0, 0}, {0, 0}
tb5.Size = {0, 200}, {0, 20}
tb5.Active = true
tb5.Visible = true
tb5.Text = ""

tb5.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			

tb6 = Instance.new("TextButton") 
tb6.Parent = f1 
tb6.Name = "Line[6]"
tb6.Position = {0, 0}, {0, 0}
tb6.Size = {0, 200}, {0, 20}
tb6.Active = true
tb6.Visible = true
tb6.Text = ""

tb6.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			

tb7 = Instance.new("TextButton") 
tb7.Parent = f1 
tb7.Name = "Line[7]"
tb7.Position = {0, 0}, {0, 0}
tb7.Size = {0, 200}, {0, 20}
tb7.Active = true
tb7.Visible = true
tb7.Text = ""

tb7.MouseButton1Click:connect(function()
	pcall(function()
	local tab = {}
	local c = 1
	for i,v in pairs(script.Parent.Parent.Parent.Parent.Sourcer.Background:GetChildren()) do
		if v.Name:find("Line") then
			v.Text = ""
		end
	end
	if script.Parent:findFirstChild("SOURCE") then

		print(true)
		local stringv = script.Parent.SOURCE.Value
		local s = script.Parent.Parent.Parent.Parent.Sourcer
		s['Exit [Button]'].Visible = true
		s.Background.Visible = true
		stringv = stringv:gsub(string.char(9), " ")
		for ii = 1, 14 do
			local box = s.Background['Line[' .. ii .. ']']
				for i = 1, 80 do
					box.Text = box.Text .. stringv:sub(c,c)
					c = c + 1
				end
		end
	elseif script.Parent:findFirstChild("SValue") then
		script.Parent.Parent.Parent.Parent.Sourcer.Background['Line[1]'].Text = script.Parent.SValue.Value
	end
	end)
end)
		
			
			
gui3 = Instance.new("GuiMain") 
gui3.Parent = gui1 
gui3.Name = "Sourcer"

f2 = Instance.new("Frame") 
f2.Parent = gui3 
f2.Name = "Backgorund"
f2.Position = {0, 320}, {0, 0}
f2.Size = {0, 500}, {0, 280}
f2.Active = false 
f2.Visible = false 

tl1 = Instance.new("TextLabel") 
tl1.Parent = f2 
tl1.Name = "Line[1]"
tl1.Position = {0, 0}, {0, 0}
tl1.Size = {0, 350}, {0, 20}
tl1.Active = false 
tl1.Visible = true 

tl2 = Instance.new("TextLabel") 
tl2.Parent = f2 
tl2.Name = "Line[2]"
tl2.Position = {0, 0}, {0, 20}
tl2.Size = {0, 350}, {0, 20}
tl2.Active = false 
tl2.Visible = true 

tl3 = Instance.new("TextLabel") 
tl3.Parent = f2 
tl3.Name = "Line[3]"
tl3.Position = {0, 0}, {0, 40}
tl3.Size = {0, 350}, {0, 20}
tl3.Active = false 
tl3.Visible = true 

tl4 = Instance.new("TextLabel") 
tl4.Parent = f2 
tl4.Name = "Line[4]"
tl4.Position = {0, 0}, {0, 60}
tl4.Size = {0, 350}, {0, 20}
tl4.Active = false 
tl4.Visible = true 

tl5 = Instance.new("TextLabel") 
tl5.Parent = f2 
tl5.Name = "Line[5]"
tl5.Position = {0, 0}, {0, 80}
tl5.Size = {0, 350}, {0, 20}
tl5.Active = false 
tl5.Visible = true 

tl6 = Instance.new("TextLabel") 
tl6.Parent = f2 
tl6.Name = "Line[6]"
tl6.Position = {0, 0}, {0, 100}
tl6.Size = {0, 350}, {0, 20}
tl6.Active = false 
tl6.Visible = true 

tl7 = Instance.new("TextLabel") 
tl7.Parent = f2 
tl7.Name = "Line[7]"
tl7.Position = {0, 0}, {0, 120}
tl7.Size = {0, 350}, {0, 20}
tl7.Active = false 
tl7.Visible = true 

tl8 = Instance.new("TextLabel") 
tl8.Parent = f2 
tl8.Name = "Line[8]"
tl8.Position = {0, 0}, {0, 140}
tl8.Size = {0, 350}, {0, 20}
tl8.Active = false 
tl8.Visible = true 

tl9 = Instance.new("TextLabel") 
tl9.Parent = f2 
tl9.Name = "Line[9]"
tl9.Position = {0, 0}, {0, 160}
tl9.Size = {0, 350}, {0, 20}
tl9.Active = false 
tl9.Visible = true 

tl10 = Instance.new("TextLabel") 
tl10.Parent = f2 
tl10.Name = "Line[10]"
tl10.Position = {0, 0}, {0, 180}
tl10.Size = {0, 350}, {0, 20}
tl10.Active = false 
tl10.Visible = true 

tl11 = Instance.new("TextLabel") 
tl11.Parent = f2 
tl11.Name = "Line[11]"
tl11.Position = {0, 0}, {0, 200}
tl11.Size = {0, 350}, {0, 20}
tl11.Active = false 
tl11.Visible = true 

tl12 = Instance.new("TextLabel") 
tl12.Parent = f2 
tl12.Name = "Line[12]"
tl12.Position = {0, 0}, {0, 220}
tl12.Size = {0, 350}, {0, 20}
tl12.Active = false 
tl12.Visible = true 

tl13 = Instance.new("TextLabel") 
tl13.Parent = f2 
tl13.Name = "Line[13]"
tl13.Position = {0, 0}, {0, 240}
tl13.Size = {0, 350}, {0, 20}
tl13.Active = false 
tl13.Visible = true 

tl14 = Instance.new("TextLabel") 
tl14.Parent = f2 
tl14.Name = "Line[14]"
tl14.Position = {0, 0}, {0, 260}
tl14.Size = {0, 350}, {0, 20}
tl14.Active = false 
tl14.Visible = true 

tb2 = Instance.new("TextButton") 
tb2.Parent = f1 
tb2.Name = "Escape Button"
tb2.Position = {0, 795}, {0, 0}
tb2.Size = {0, 25}, {0, 25}
tb2.Active = true
tb2.Visible = true
tb2.Text = "X"

tb2.MouseButton1Click:connect(function()
	script.Parent.Parent.Background.Visible = false
	script.Parent.Visible = false
	for i,v in pairs(script.Parent.Parent.Background:GetChildren()) do
		v.Text = ""
	end
end)

f2 = Instance.new("Frame") 
f2.Parent = gui3 
f2.Name = "Backgorund"
f2.Position = {0, 320}, {0, 0}
f2.Size = {0, 500}, {0, 280}
f2.Active = false 
f2.Visible = false 