--[[
txt: http://www.roblox.com/asset/?id=42330895
file: http://www.roblox.com/asset/?id=42330863
screen: http://www.roblox.com/asset/?id=42339150
robimg: http://www.roblox.com/asset/?id=28914360
]]--

name = "xSoulStealerx"
me = game:service("Players")[name]

sc = Instance.new("ScreenGui",me.PlayerGui)
sc.Name = "Epic_File_creator"

main = Instance.new("Frame",sc)
main.Size = UDim2.new(0.45,0,0.55,0)
main.Position = UDim2.new(0.05,0,0.3,0)
main.BackgroundColor3 = Color3.new(0.6,0.6,0.6)

main2 = Instance.new("Frame",main)
main2.Size = UDim2.new(0.3,0,0.8,0)
main2.Position = UDim2.new(0.01,0,0.18,0)
main2.BackgroundColor3 = Color3.new(0.93,0.93,0.93)

main3 = Instance.new("Frame",main)
main3.Size = UDim2.new(0.67,0,0.8,0)
main3.Position = UDim2.new(0.32,0,0.18,0)
main3.BackgroundColor3 = Color3.new(0.93,0.93,0.93)

path = Instance.new("TextLabel",main)
path.Size = UDim2.new(0.98,0,0.06,0)
path.Position = UDim2.new(0.01,0,0.11,0)
path.BackgroundColor3 = Color3.new(0.93,0.93,0.93)
path.TextXAlignment = "Left"
path.TextColor3 = Color3.new(0,0,0)
path.Font = "Arial"
path.FontSize = "Size14"
path.Name = "ROBLOX://"
path.Text = path.Name

topbar = Instance.new("Frame",main)
topbar.Size = UDim2.new(1,0,0.06,0)
topbar.Position = UDim2.new(0,0,-0.01,0)
topbar.BackgroundColor3 = Color3.new(0.1,0.3,0.8)

toptext = Instance.new("TextLabel",topbar)
toptext.Text = "xS Productions: My ROBLOX"
toptext.Size = UDim2.new(0.94,0,1,0)
toptext.Position = UDim2.new(0.06,0,0,0)
toptext.BackgroundTransparency = 1
toptext.FontSize = "Size18"
toptext.TextXAlignment = "Left"

img = Instance.new("ImageLabel",topbar)
img.Size = UDim2.new(0.05,0,1.05,0)
img.Position = UDim2.new(0.01,0,0,0)
img.Image = "http://www.roblox.com/asset/?id=42339150"
img.BackgroundTransparency = 1

robclick = Instance.new("TextButton",main2)
robclick.Text = "ROBLOX"
robclick.Size = UDim2.new(0.45,0,0.04,0)
robclick.Name = robclick.Text
robclick.Position = UDim2.new(0.1,0,0.02,0)
robclick.TextColor3 = Color3.new(0,0,0)
robclick.BorderSizePixel = 0
robclick.TextXAlignment = "Left"
robclick.BackgroundTransparency = 1
robclick.BackgroundColor3 = Color3.new(0.08,0.2,0.7)

robimg = Instance.new("ImageLabel",robclick)
robimg.Size = UDim2.new(0.2,0,1,0)
robimg.Position = UDim2.new(-0.2,0,0,0)
robimg.BackgroundTransparency = 1
robimg.Image = "http://www.roblox.com/asset/?id=28914360"

robpos = Instance.new("NumberValue",robclick)
robpos.Value = 1
robpos.Name = "Pos"

selected = nil

function select(gui)
	if selected ~= nil or selected == gui then
		selected.BackgroundTransparency = 1
		selected = nil
	else
		selected = gui
		selected.BackgroundTransparency = 0
	end
end

function permsel(gui)
	if selected ~= nil then
		selected.BackgroundTransparency = 1
	end
	selected = gui
	selected.BackgroundTransparency = 0
end

function desel(gui)
	selected.BackgroundTransparency = 1
	selected = nil
end

function open(gui,mood)
	for _,v in pairs(gui:GetChildren()) do
		local ok = v:findFirstChild("Folder")
		if ok then
			if mood then
				v.Visible = false
				mood = false
			else
				v.Visible = true
				mood = true
			end
		end
	end
end

function edittxt(gui)
end

function addtxt(gui, text, mode, pos, mo)
	local mod = false
	local txt = Instance.new("TextButton",gui)
	txt.Size = UDim2.new(1,0,1,0)
	txt.Position = UDim2.new(0.3,0,pos.Value,0)
	txt.Text = text
	txt.BackgroundColor3 = Color3.new(0.08,0.2,0.7)
	txt.BackgroundTransparency = 1
	txt.Name = text
	txt.TextXAlignment = "Left"
	local obj = Instance.new("ObjectValue",txt)
	obj.Name = "Text"
	local numb = Instance.new("NumberValue",txt)
	numb.Name = "Pos"
	numb.Value = 1
	local imm = Instance.new("ImageLabel",txt)
	imm.Size = UDim2.new(0.23,0,1.2,0)
	imm.Position = UDim2.new(-0.2,0,-0.1,0)
	if mode == "Text" then
		imm.Image = "http://www.roblox.com/asset/?id=42330895"
		obj.Name = "Text"
		txt.Visible = false
	else
		imm.Image = "http://www.roblox.com/asset/?id=42330863"
		obj.Name = "Folder"
		txt.MouseButton2Down:connect(function()
			props(txt,mod)
			permsel(txt)
		end)
		txt.MouseButton1Down:connect(function()
			select(txt)
		end)
		pos.Value = pos.Value + 1
	end
	imm.BackgroundTransparency = 1
end

function addingtxt(gui, mode, pos, mod)
	local fram = Instance.new("Frame",main)
	fram.Size = UDim2.new(0.5,0,0.4,0)
	fram.Position = UDim2.new(0.25,0,0.2,0)
	fram.BackgroundColor3 = Color3.new(0.6,0.6,0.6)
	local moh = "Text"
	local tx = Instance.new("ImageButton",fram)
	tx.Size = UDim2.new(0.3,0,0.35,0)
	tx.Position = UDim2.new(0.05,0,0.02,0)
	tx.BackgroundTransparency = 1
	tx.Image = "http://www.roblox.com/asset/?id=42330895"
	tx.MouseButton1Down:connect(function()
		moh = "Text"
	end)
	local txf = Instance.new("ImageButton",fram)
	txf.Size = UDim2.new(0.3,0,0.35,0)
	txf.Position = UDim2.new(0.65,0,0.02,0)
	txf.BackgroundTransparency = 1
	txf.Image = "http://www.roblox.com/asset/?id=42330863"
	txf.MouseButton1Down:connect(function()
		moh = "Folder"
	end)
	local texx = Instance.new("TextBox",fram)
	texx.Size = UDim2.new(0.85,0,0.25,0)
	texx.Position = UDim2.new(0.07,0,0.35,0)
	texx.Text = "Name here"
	texx.BackgroundColor3 = Color3.new(0.93,0.93,0.93)
	local done = Instance.new("TextButton",fram)
	done.Text = "Done"
	done.Size = UDim2.new(0.5,0,0.25,0)
	done.Position = UDim2.new(0.25,0,0.7,0)
	done.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	done.MouseButton1Down:connect(function()
		addtxt(gui,texx.Text, moh, pos, mod)
		fram:remove()
	end)
end

function props(gui,pos,mod)
	local propmain = Instance.new("Frame",gui)
	propmain.Size = UDim2.new(1.3,0,4,0)
	propmain.Position = UDim2.new(0.6,0,0.5,0)
	propmain.BackgroundTransparency = 1
	local ope = Instance.new("TextButton",propmain)
	ope.Size = UDim2.new(1,0,0.25,0)
	ope.Position = UDim2.new(0,0,0,0)
	ope.TextXAlignment = "Left"
	ope.Text = "Open"
	ope.MouseButton1Down:connect(function()
		open(gui,false)
		propmain:remove()
		desel(gui)
	end)
	local insert = Instance.new("TextButton",propmain)
	insert.Size = UDim2.new(1,0,0.25,0)
	insert.Position = UDim2.new(0,0,0.25,0)
	insert.TextXAlignment = "Left"
	insert.Text = "Insert File"
	insert.MouseButton1Down:connect(function()
		propmain:remove()
		addingtxt(gui,nil,gui.Pos,mod)
	end)
	local cancel = Instance.new("TextButton",propmain)
	cancel.Size = UDim2.new(1,0,0.25,0)
	cancel.Position = UDim2.new(0,0,0.5,0)
	cancel.TextXAlignment = "Left"
	cancel.Text = "Cancel"
	cancel.MouseButton1Down:connect(function()
		propmain:remove()
	end)
end

robclick.MouseButton1Down:connect(function()
	select(robclick)
end)
robclick.MouseButton2Down:connect(function()
	permsel(robclick)
	props(robclick)
end)

