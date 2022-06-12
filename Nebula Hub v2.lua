
-- asd --

repeat wait() until workspace.CurrentCamera

-- Load previous settings --

local savedColor = "152, 6, 235"
local savedKey =  "RightControl"

coroutine.wrap(function()
	local _,_,r,g,b = string.find(tostring(savedColor), "(%d+)%D+(%d+)%D+(%d+)")
	savedColor = Color3.fromRGB(r,g,b)
	savedKey = Enum.KeyCode[savedKey]
end)()

----- Settings -----

local settings = {
	toggleKey = savedKey; -- Key to open/close
	blurLevel = 35; -- Blur level, when open
	mainColor = savedColor;--Color3.fromRGB(33,150,243);
	textColor = Color3.new(1, 1, 1);
}

----- Classifications -----

local TABS = {
--	{
--		Name = 'Users';
--		Icon = 'http://www.roblox.com/asset/?id=658932978';
--	};
{
		Name = 'Scripts';
		Icon = 'rbxassetid://728745761';
	};
	{
		Name = 'Game';
		Icon = 'rbxassetid://728745470';
	};
	{
		Name = 'Server';
		Icon = 'rbxassetid://658933127';
	};
	{
		Name = 'Music';
		Icon = 'rbxassetid://728745690';
	};
	{
		Name = 'Library';
		Icon = 'rbxassetid://728745585';
	};
	{
		Name = 'Settings';
		Icon = 'rbxassetid://898100298';
	};
	{
		Name = 'Info';
		Icon = 'rbxassetid://894507994';
	};
}

----- Main API -----

local runservice = game:GetService'RunService'

local services = setmetatable({
	workspace = workspace;
	lighting = game:service'Lighting';
	replicated = game:service'ReplicatedStorage';
	plrs = game:service'Players';
	step = runservice.Stepped;
	rstep = runservice.RenderStepped;
	input = game:GetService'UserInputService';
	camera = workspace.CurrentCamera;
	plr = game:service'Players'.LocalPlayer;
	plrgui = game:service'Players'.LocalPlayer:WaitForChild("PlayerGui");
	mouse = game:service'Players'.LocalPlayer:GetMouse();
}, {__index = function(_, service) return game:GetService(service) or services[service] or nil end});

local minimizedWindows = {}

local colorCheck = settings.mainColor

function create(obj, tbl)
	local nobj = Instance.new(obj)
	for i,v in pairs(tbl) do
		nobj[i] = v
	end
	return nobj
end

function createShadow(parent)
	return create('Frame', {
		Size = UDim2.new(1, 8, 1, 8);
		Position = UDim2.new(0, -4, 0, -4);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = parent.ZIndex - 1;
		Parent = parent;
	})
end

function createSmallShadow(parent)
	return create('Frame', {
		Size = UDim2.new(1, 6, 1, 6);
		Position = UDim2.new(0, -3, 0, -3);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = parent.ZIndex - 1;
		Parent = parent;
	})
end


function event()
	return Instance.new'BindableEvent'
end

local onKeyPress = event()

local binds = {}

function bindToKey(key, func, nam)
	table.insert(binds, {key, func, nam})
end

function getBindList(cod)
	local lst = {}
	for _,v in pairs(binds) do
		if v[1] == cod then
			table.insert(lst, v[2])
		end
	end
	return lst
end

function createIcon(ic, prop, clik)
	local nic = create(clik and 'ImageButton' or 'ImageLabel', {
		Image = ic;
		BackgroundTransparency = 1;
	})
	for i,v in pairs(prop) do
		nic[i] = v
	end
	return nic
end

function Children(parent,func)
	coroutine.wrap(function()
		for i,v in pairs(parent:children())do
			pcall(function()
				func(v)
			end)
			pcall(function()
				Children(v,func)
			end)
		end
	end)()
end

function httpGet(query)
	return game:HttpGet(query, true)
end

local toggleable = true
services.input.InputBegan:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.Keyboard then
		if toggleable == false then return end
		onKeyPress:Fire(inp.KeyCode)
		for _,v in pairs(getBindList(inp.KeyCode)) do
			spawn(v)
		end
	end
end)

----- Blur Module -----

local blurEffect = create('BlurEffect', {
	Parent = workspace.CurrentCamera;
	Size = 0;
})

local blurLevel = 0

services.step:connect(function()
	local nm,nm2 = blurEffect.Size,services.camera.FieldOfView
	blurEffect.Size = nm + ((blurLevel - nm) * .1)
end)

----- Set up gui -----

local gui = create('ScreenGui', {
	Parent = services.plrgui; --services.plrgui;
	Name = 'NebulaV2';
})
local pingui = create('ScreenGui',{
	Parent = services.plrgui;
	Name = 'NebulaV2pinned';
})
local enabled = false

----- Recursive Transparency -----

function getGuiRecursive(par)
	local rect = {par}

	local function drect(par)
		for _,v in pairs(par:GetChildren()) do
			if v:IsA'GuiObject' and not v.Name:sub(1, 1) == '-' then table.insert(rect, v) end
			drect(v)
		end
	end

	drect(par)

	return rect
end

function makePsuedoBorder(g,length)
	local top = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(1,length,0,length);
		Position = UDim2.new(0,0,0,-length);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
	local bottom = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(1,length,0,length);
		Position = UDim2.new(0,-length,1,0);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
	local left = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(0,length,1,length);
		Position = UDim2.new(0,-length,0,-length);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
	local right = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(0,length,1,length);
		Position = UDim2.new(1,0,0,0);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
end

function getTransparencyProperty(obj)
	if obj.ClassName:sub(1, 5) == 'Image' then
		return 'ImageTransparency'
	elseif obj.ClassName:sub(1, 4) == 'Text' then
		return 'TextTransparency'
	end
	return 'BackgroundTransparency'
end

function setRecursiveTransparency(of, trans)
	coroutine.wrap(function()
		for _,v in pairs(getGuiRecursive(of)) do
			v[getTransparencyProperty(v)] = trans
		end
	end)
end

function tweenRecursiveTransparency(of, trans, chg)
	for _,v in pairs(getGuiRecursive(of)) do
		spawn(function()
			local tp = getTransparencyProperty(v)
			for i=v[tp], trans, chg do
				v[tp] = i
				services.step:wait()
			end
			v[tp] = trans
		end)
	end
end

----- Window API -----

local tabHolder = create('Frame', {
	Name = "Nebula";
	Size = UDim2.new(0, 0, 0, #TABS * 35);
	Position = UDim2.new(0, 10, .5, 0);
	AnchorPoint = Vector2.new(0, .5);
	BackgroundTransparency = 1;
	Parent = gui;
})

local Window = {}

function Window.new(properties)
	local newWindow = create('Frame', {
		Size = UDim2.new(0, properties.width - 50, 0, properties.height - 50);
		ZIndex = 8;
		BorderSizePixel = 0;
		BackgroundColor3 = settings.mainColor;
		Name = properties.name;
		Parent = gui;
	})
--	local theme = create('ImageLabel',{
--		ZIndex = 8;
--		BackgroundTransparency = 1;
--		Image = "rbxassetid://132878702";
--		Size = UDim2.new(1,0,1,0);
--		Parent = newWindow;
--	})
	newWindow.Position = (properties.position or UDim2.new(.5, -(newWindow.AbsoluteSize.X/2)+(#gui:children()-1)*30, .5, -(newWindow.AbsoluteSize.Y/2)+(#gui:children()-1)*30)) + UDim2.new(0, 25, 0, 25);
	local nshad = createShadow(newWindow)
	nshad.Visible = false
	local top = create('TextButton', {
		Name = "Drag";
		Size = UDim2.new(1, 0, 0, 30);
		Position = UDim2.new(0, 31, 0, 0);
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		Font = Enum.Font.SourceSansLight;
		FontSize = Enum.FontSize.Size24;
		TextSize = 22;
		Text = properties.name;
		TextColor3 = settings.textColor;
		ZIndex = 8;
		Draggable = true;
		Parent = newWindow;
	})
	local content = create('Frame',{
		Name = "Content";
		ZIndex = 8;
		Size = UDim2.new(1, 0, 1, -30);
		Position = UDim2.new(0, 0, 0, 30);
		BackgroundColor3 = Color3.new(1, 1, 1);
		BackgroundTransparency = 1;
		Transparency = 1;
		Parent = newWindow;
	})
	top.Changed:connect(function(ch)
		if ch == 'Position' then
			newWindow.Position = newWindow.Position + top.Position - UDim2.new(0, 31, 0, 0)
			top.Position = UDim2.new(0, 31, 0, 0)
		end
	end)
	newWindow.Changed:connect(function(ch)
		if ch == 'AbsolutePosition'then
			if newWindow.AbsolutePosition.Y < 0 then
				newWindow.Position = UDim2.new(newWindow.Position.X,UDim.new(0,0))
			elseif newWindow.AbsolutePosition.Y > gui.AbsoluteSize.Y - 30 then
				newWindow.Position = UDim2.new(newWindow.Position.X,UDim.new(0,gui.AbsoluteSize.Y - 30))
			end
		end
	end)
	local icon = createIcon(properties.icon, {
		Name = "Icon";
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(0, 3, 0, 3);
		ZIndex = 8;
		Parent = newWindow;
	})
	local close = createIcon('http://www.roblox.com/asset/?id=708205809', {
		Name = "Close";
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(1, -27, 0, 3);
		ZIndex = 8;
		Parent = newWindow;
	}, true)
	local minimize = createIcon('http://www.roblox.com/asset/?id=708205677', {
		Name = "Minimize";
		Size = UDim2.new(0, 20, 0, 20);
		Position = UDim2.new(1, -50, 0, 5);
		ZIndex = 8;
		Parent = newWindow;
	}, true)
	local pin = createIcon('http://www.roblox.com/asset/?id=708679031', {
		Name = "Pin";
		Size = UDim2.new(0, 20, 0, 20);
		Position = UDim2.new(1, -75, 0, 5);
		ZIndex = 8;
		Rotation = 0;
		Parent = newWindow;
	}, true)

	local function updateMinimize()
		local pos = 0
		for i,v in pairs(minimizedWindows)do
			coroutine.wrap(function()
				v.Win:TweenPosition(UDim2.new(0,pos,1,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad ,.65,true)
				pos = pos + v.Win.AbsoluteSize.X
			end)()
		end
	end

	local minimized = false
	local function minimizeToggle(move)
		if minimized then
			for i,v in pairs(minimizedWindows)do
				if v.Win == newWindow then
					table.remove(minimizedWindows,i)
					if move then
						newWindow:TweenPosition(v.Pos,Enum.EasingDirection.Out,Enum.EasingStyle.Quad ,.65,true)
					end
				end
			end
			updateMinimize()
			top.Draggable = true
		else
			table.insert(minimizedWindows,{Win = newWindow,Pos = newWindow.Position})
			top.Draggable = false
			updateMinimize()
		end
	end
	
	local pinned = false;
	pin.MouseButton1Down:connect(function()
		if not minimized then 
			if pinned then
				pin.Rotation = 0;
				newWindow.Parent = gui;
				newWindow.Visible = enabled
				pinned = false;
			else
				pin.Rotation = -30;
				newWindow.Parent = pingui;
				pinned = true;
			end
		end
	end)

	close.MouseButton1Down:connect(function()
		if properties.closed then
			properties.closed(newWindow)
		end
		nshad.Visible = false
		coroutine.wrap(function()
		newWindow:TweenSizeAndPosition(UDim2.new(0, properties.width, 0, properties.height), newWindow.Position - UDim2.new(0, 25, 0, 25), 'Out', 'Quart', .3, true)
		tweenRecursiveTransparency(newWindow, 1, .15)
		wait(.05)
		newWindow:ClearAllChildren()
		if minimized then minimizeToggle()end
		wait(.125)
		newWindow:Destroy()
		end)()
	end)

	minimize.MouseButton1Down:connect(function()
		if not pinned then
			minimizeToggle(true)
			minimized = not minimized
		end
	end)
	
	--[[ Gui Snapping ]]--

	local function snapGuis(snapgui,reach,collides)
		local function returnLRTB(sg)
			local left = sg.AbsolutePosition.X
			local right = sg.AbsolutePosition.X+sg.AbsoluteSize.X
			local top = sg.AbsolutePosition.Y
			local bottom = sg.AbsolutePosition.Y+sg.AbsoluteSize.Y
			return {left=left,right=right,top=top,bottom=bottom}
		end
		snapgui.Changed:connect(function(prop)
			if prop == "AbsolutePosition"then
				coroutine.wrap(function()
					if collides ~= snapgui and collides.AbsolutePosition ~= snapgui.AbsolutePosition and collides.Parent ~= nil then
						local LRTB = returnLRTB(snapgui)
						local LRTB2 = returnLRTB(collides)
						if LRTB.left <= LRTB2.right + reach and LRTB.left >= LRTB2.right - reach then
							snapgui.Position = UDim2.new(0,LRTB2.right,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.right <= LRTB2.left + reach and LRTB.right >= LRTB2.left - reach then
							snapgui.Position = UDim2.new(0,LRTB2.left-snapgui.AbsoluteSize.X,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.left <= LRTB2.left + reach and LRTB.left >= LRTB2.left - reach then
							snapgui.Position = UDim2.new(0,LRTB2.left,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.right <= LRTB2.right + reach and LRTB.right >= LRTB2.right - reach then
							snapgui.Position = UDim2.new(0,LRTB2.right-snapgui.AbsoluteSize.X,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.top <= LRTB2.bottom + reach and LRTB.top >= LRTB2.bottom - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.bottom)
						end
						if LRTB.bottom <= LRTB2.top + reach and LRTB.bottom >= LRTB2.top - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.top-snapgui.AbsoluteSize.Y)
						end
						if LRTB.top <= LRTB2.top + reach and LRTB.top >= LRTB2.top - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.top)
						end
						if LRTB.bottom <= LRTB2.bottom + reach and LRTB.bottom >= LRTB2.bottom - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.bottom-snapgui.AbsoluteSize.Y)
						end
					end
				end)()
			end
		end)
	end

	-- Checks for Guis already there to Snap to --

	for i,v in pairs(gui:children())do
		if v ~= tabHolder then
			spawn(function()
			snapGuis(newWindow,5,v)
			end)
		end
	end
	
	-- Snap to Gui when Child is Added --
	
	gui.ChildAdded:connect(function(inst)
		if inst ~= tabHolder then
			spawn(function()
			snapGuis(newWindow,5,inst)
			end)
		end
	end)

	setRecursiveTransparency(newWindow, 1)
	newWindow:TweenSizeAndPosition(UDim2.new(0, properties.width, 0, properties.height), (properties.position or UDim2.new(.5, -(newWindow.AbsoluteSize.X/2)+(#gui:children()-1)*30, .5, -(newWindow.AbsoluteSize.Y/2)+(#gui:children()-1)*30)), 'Out', 'Quart', .3, true)
	tweenRecursiveTransparency(newWindow, 0, -.15)
	coroutine.wrap(function()
		nshad.Visible = true
		wait(.5)
	end)()
	return newWindow
end

----- Main GUI Framework -----

local atbts = {}

for i,v in pairs(TABS) do
	local nbt = create('Frame', {
		Name = v.Name;
		Size = UDim2.new(0, 150, 0, 30);
		Position = UDim2.new(0, -165, 0, (i - 1) * 35);
		BorderSizePixel = 0;
		ZIndex = 8;
		BackgroundColor3 = settings.mainColor;
		Parent = tabHolder;
	})

	nbt.MouseEnter:connect(function()nbt:TweenPosition(UDim2.new(0, 10, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)end)
	nbt.MouseLeave:connect(function()nbt:TweenPosition(UDim2.new(0, 0, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)end)

	table.insert(atbts, nbt)

	local icon = createIcon(v.Icon, {
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(0, 3, 0, 3);
		ZIndex = 8;
		Parent = nbt;
	})

	local ntx = create('TextLabel', {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 31, 0, 0);
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = Enum.Font.SourceSansLight;
		FontSize = Enum.FontSize.Size24;
		TextSize = 22;
		ZIndex = 8;
		TextColor3 = settings.textColor;
		Text = v.Name;
		Parent = nbt;
	})

	createSmallShadow(nbt)
end

-- Toggler --


bindToKey(settings.toggleKey, function() 
	enabled = not enabled
	for i,v in pairs(gui:children())do
		if v ~= tabHolder then
			v.Visible = enabled
		end
	end
	blurLevel = enabled and settings.blurLevel or 0
		for _,v in pairs(atbts) do
		if v.Parent ~= nil then
			v:TweenPosition(UDim2.new(0, enabled and 0 or -165, 0, v.Position.Y.Offset), enabled and 'Out' or 'In', 'Quart', .3, true)
			services.step:wait()
		end
	end
end)

-- Function to play music --

function playMusic(id)
	local audio = Instance.new("Sound",workspace)
	audio.Name = "NebAud"
	audio.Volume = 10
	audio.SoundId = "rbxassetid://"..id
	audio.RobloxLocked = true;
	audio.Loaded:connect(function()
		audio:Play()
	end)
	return audio
end

-- Functon to add SearchGuis --

function searchGuis(content,text,searchterm,func)
	local assetsearch = create('TextBox', {
		Text = "  Search "..text.."..";
		Size = UDim2.new(.95,0,.1,0);
		Position = UDim2.new(.025,0,0,0);
		BackgroundColor3 = Color3.new(1,1,1);
		BackgroundTransparency = .9;
		TextSize = 22;
		TextColor3 = Color3.new(1,1,1);
		Font = Enum.Font.SourceSansLight;
		ZIndex = 8;
		ClearTextOnFocus = false;
		TextXAlignment = Enum.TextXAlignment.Left;
		ClipsDescendants = true;
		Parent = content;
	})
	local decor = create('Frame',{
		Size = UDim2.new(.5, 0, 0, 1);
		Position = UDim2.new(0.25, 0, 1, -1);
		ZIndex = 8;
		BorderSizePixel = 0;
		BackgroundColor3 = Color3.new(1, 1, 1);
		Parent = assetsearch;
	})
	local scrframe = create('ScrollingFrame',{
		BackgroundTransparency = 1;
		Size = UDim2.new(1,0,.9,0);
		Position = UDim2.new(0,0,.1,0);
		CanvasSize = UDim2.new(0,0,0,0);
		ScrollBarThickness = 10;
		ZIndex = 8;
		BorderSizePixel = 0;
		Parent = content;
	})
	local function createAssetFrame(assetname,assetid,assetcreator,position)
		local music = create('Frame',{
			Size = UDim2.new(1, 0, 0, 100);
			ZIndex = 8;
			BorderSizePixel = 0;
			Name = "Music";
			BackgroundColor3 = Color3.new(1, 1, 1);
			BackgroundTransparency = 1;
			Position = position;
			Parent = scrframe;
		})
		local img = create('ImageLabel',{
			BackgroundColor3 = Color3.new(1, 1, 1);
			Size = UDim2.new(0, 100, 1, 0);
			ZIndex = 8;
			BorderSizePixel = 0;
			Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=100&height=100&assetId="..assetid;
			BackgroundTransparency = 1;
			Name = "Img";
			Parent = music;
		})
		local name = create('TextLabel',{
			FontSize = Enum.FontSize.Size24;
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 100, 0, 0);
			ZIndex = 8;
			Font = Enum.Font.SourceSansLight;
			TextSize = 20;
			Name = "Name";
			BackgroundColor3 = Color3.new(1, 1, 1);
			TextColor3 = Color3.new(1, 1, 1);
			TextXAlignment = Enum.TextXAlignment.Left;
			Size = UDim2.new(1, -100, 0.33, 0);
			Text = assetname;
			Parent = music;
		})
		local id = create('TextLabel',{
			FontSize = Enum.FontSize.Size24;
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 100, 0.33, 0);
			ZIndex = 8;
			Font = Enum.Font.SourceSansLight;
			TextSize = 20;
			Name = "ID";
			BackgroundColor3 = Color3.new(1, 1, 1);
			TextColor3 = Color3.new(1, 1, 1);
			TextXAlignment = Enum.TextXAlignment.Left;
			Size = UDim2.new(1, -100, 0.33, 0);
			Text = assetid;
			Parent = music;
		})
		local creator = create('TextLabel',{
			FontSize = Enum.FontSize.Size24;
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 100, 0.66, 0);
			ZIndex = 8;
			Font = Enum.Font.SourceSansLight;
			TextSize = 20;
			Name = "Creator";
			BackgroundColor3 = Color3.new(1, 1, 1);
			TextColor3 = Color3.new(1, 1, 1);
			TextXAlignment = Enum.TextXAlignment.Left;
			Size = UDim2.new(1, -100, 0.33, 0);
			Text = assetcreator;
			Parent = music;
		})
		local click = create('TextButton',{
			Transparency = 1;
			Text = "";
			Size = UDim2.new(1,0,1,0);
			ZIndex = 9;
			Active = true;
			Parent = music;
		})
		click.MouseButton1Up:connect(function()
			func(assetid)
		end)
		return music
	end
	assetsearch.Focused:connect(function()
		decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
		if assetsearch.Text == "  Search "..text..".."then
			assetsearch.Text = ""
		end
	end)
	assetsearch.FocusLost:connect(function(enter)
		decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
		if enter then
			scrframe:ClearAllChildren()
			scrframe.CanvasSize = UDim2.new(0,0,0,0)
			local http = game:service'HttpService':JSONDecode(httpGet(searchterm..assetsearch.Text))
			for i,v in pairs(http)do
				local f = createAssetFrame(v.Name,v.AssetId,v.Creator,UDim2.new(-1,0,0,100*(i-1)))
				f:TweenPosition(f.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
				scrframe.CanvasSize = scrframe.CanvasSize+UDim2.new(0,0,0,100)
				wait()
			end
			assetsearch.Text = "  Search "..text..".."
		end
	end)
	scrframe:ClearAllChildren()
	scrframe.CanvasSize = UDim2.new(0,0,0,0)
	local http = game:service'HttpService':JSONDecode(httpGet(searchterm))
	for i,v in pairs(http)do
		local f = createAssetFrame(v.Name,v.AssetId,v.Creator,UDim2.new(-1,0,0,100*(i-1)))
		f:TweenPosition(f.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
		scrframe.CanvasSize = scrframe.CanvasSize+UDim2.new(0,0,0,100)
		wait()
	end
end

-- Script Tab Functionality --

tabHolder.Scripts.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local window = Window.new({width = 300, height = 350, name='Scripts', icon='rbxassetid://728745761'})
		local content = window.Content;		
		local search = create('TextBox', {
			Text = "  Search Scripts..";
			Size = UDim2.new(.95,0,.1,0);
			Position = UDim2.new(.025,0,0,0);
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = .9;
			TextSize = 22;
			TextColor3 = Color3.new(1,1,1);
			Font = Enum.Font.SourceSansLight;
			ZIndex = 8;
			ClearTextOnFocus = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			ClipsDescendants = true;
			Parent = content;
		})
		local decor = create('Frame',{
			Size = UDim2.new(.5, 0, 0, 1);
			Position = UDim2.new(0.25, 0, 1, -1);
			ZIndex = 8;
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
			Parent = search;
		})
		local scrframe = create('ScrollingFrame',{
			BackgroundTransparency = 1;
			Size = UDim2.new(1,0,.9,0);
			Position = UDim2.new(0,0,.1,0);
			CanvasSize = UDim2.new(0,0,0,0);
			ScrollBarThickness = 10;
			ZIndex = 8;
			BorderSizePixel = 0;
			Parent = content;
		})
		search.Focused:connect(function()
			decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
			if search.Text == "  Search Scripts.."then
				search.Text = ""
			end
		end)
		local Scripts = game:service'HttpService':JSONDecode(httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts'))
		local function createScriptFrames(S)
			scrframe.CanvasSize = UDim2.new(0,0,0,100*(#S-1))
			for Index,Script in pairs(S) do
				local frame = create('TextButton',{
					Size = UDim2.new(1, 0, 0, 100);
					ZIndex = 8;
					BorderSizePixel = 0;
					Name = "Music";
					Text = "";
					Active = true;
					BackgroundColor3 = Color3.new(1, 1, 1);
					BackgroundTransparency = 1;
					Position = UDim2.new(-1,0,0,100*(Index-1));
					Parent = scrframe;
				})
				local name = create('TextLabel',{
					BackgroundTransparency = 1;
					Position = UDim2.new(0, 100, 0, 0);
					ZIndex = 8;
					Font = Enum.Font.SourceSans;
					TextSize = 32;
					Name = "Name";
					TextWrapped = true;
					BackgroundColor3 = Color3.new(1, 1, 1);
					TextColor3 = Color3.new(1, 1, 1);
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					Size = UDim2.new(1, -110, 1, 0);
					Text = Script.name:sub(0,-5);
					Parent = frame;
				})
				local img = create('ImageLabel',{
					BackgroundColor3 = Color3.new(1, 1, 1);
					Size = UDim2.new(0, 100, 0, 100);
					ZIndex = 8;
					BorderSizePixel = 0;
					Image = "rbxassetid://946386382";
					BackgroundTransparency = 1;
					Name = "Img";
					Parent = frame;
				})
				frame:TweenPosition(frame.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
				frame.MouseButton1Down:connect(function()
					local code = httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts&id='..Script.id+(4*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-6,#tostring(os.time())-3))))))
					loadstring(code)()
				end)
				services.rstep:wait()
				--print(v.id*tonumber(tostring(os.time()):sub(1,9)))
				--httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts&id='..Script.id+(4*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-5,#tostring(os.time())-2))))))
			end
		end
		wait(.5)
		createScriptFrames(Scripts)
		search.FocusLost:connect(function(enter)
			decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
			if enter then
				scrframe:ClearAllChildren()
				scrframe.CanvasSize = UDim2.new(0,0,0,0)
				local SortTable = {}
				for i,v in pairs(Scripts)do
					if v.name:lower():sub(0,-5):find(search.Text:lower())then
						table.insert(SortTable,v)
					end
				end
				createScriptFrames(SortTable)
				search.Text = "  Search Scripts.."
			end
		end)
	end
end)

-- Server Tab Functionality --

tabHolder.Server.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local window = Window.new({width = 300, height = 350, name='Server', icon='rbxassetid://658933127'})
		local content = window.Content;		
		local search = create('TextBox', {
			Text = "  Search Server Scripts..";
			Size = UDim2.new(.95,0,.1,0);
			Position = UDim2.new(.025,0,0,0);
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = .9;
			TextSize = 22;
			TextColor3 = Color3.new(1,1,1);
			Font = Enum.Font.SourceSansLight;
			ZIndex = 8;
			ClearTextOnFocus = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			ClipsDescendants = true;
			Parent = content;
		})
		local decor = create('Frame',{
			Size = UDim2.new(.5, 0, 0, 1);
			Position = UDim2.new(0.25, 0, 1, -1);
			ZIndex = 8;
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
			Parent = search;
		})
		local scrframe = create('ScrollingFrame',{
			BackgroundTransparency = 1;
			Size = UDim2.new(1,0,.9,0);
			Position = UDim2.new(0,0,.1,0);
			CanvasSize = UDim2.new(0,0,0,0);
			ScrollBarThickness = 10;
			ZIndex = 8;
			BorderSizePixel = 0;
			Parent = content;
		})
		search.Focused:connect(function()
			decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
			if search.Text == "  Search Server Scripts.."then
				search.Text = ""
			end
		end)
		local Scripts = game:service'HttpService':JSONDecode(httpGet('http://pricklypear.xyz/scripts/get.php?type=server_scripts'))
		local function createScriptFrames(S)
			scrframe.CanvasSize = UDim2.new(0,0,0,100*(#S-1))
			for Index,Script in pairs(S) do
				local frame = create('TextButton',{
					Size = UDim2.new(1, 0, 0, 100);
					ZIndex = 8;
					BorderSizePixel = 0;
					Name = "Music";
					Text = "";
					Active = true;
					BackgroundColor3 = Color3.new(1, 1, 1);
					BackgroundTransparency = 1;
					Position = UDim2.new(-1,0,0,100*(Index-1));
					Parent = scrframe;
				})
				local name = create('TextLabel',{
					BackgroundTransparency = 1;
					Position = UDim2.new(0, 100, 0, 0);
					ZIndex = 8;
					Font = Enum.Font.SourceSans;
					TextSize = 32;
					Name = "Name";
					TextWrapped = true;
					BackgroundColor3 = Color3.new(1, 1, 1);
					TextColor3 = Color3.new(1, 1, 1);
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					Size = UDim2.new(1, -110, 1, 0);
					Text = Script.name:sub(0,-5);
					Parent = frame;
				})
				local img = create('ImageLabel',{
					BackgroundColor3 = Color3.new(1, 1, 1);
					Size = UDim2.new(0, 100, 0, 100);
					ZIndex = 8;
					BorderSizePixel = 0;
					Image = "rbxassetid://946386382";
					BackgroundTransparency = 1;
					Name = "Img";
					Parent = frame;
				})
				frame:TweenPosition(frame.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
				frame.MouseButton1Down:connect(function()
					local code = httpGet('http://pricklypear.xyz/scripts/get.php?type=server_scripts&id='..Script.id+(4*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-5,#tostring(os.time())-2))))))
					loadstring(code)()
				end)
				services.rstep:wait()
				--print(v.id*tonumber(tostring(os.time()):sub(1,9)))
				--httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts&id='..Script.id+(4*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-5,#tostring(os.time())-2))))))
			end
		end
		createScriptFrames(Scripts)
		search.FocusLost:connect(function(enter)
			decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
			if enter then
				scrframe:ClearAllChildren()
				scrframe.CanvasSize = UDim2.new(0,0,0,0)
				local SortTable = {}
				for i,v in pairs(Scripts)do
					if v.name:lower():sub(0,-5):find(search.Text:lower())then
						table.insert(SortTable,v)
					end
				end
				createScriptFrames(SortTable)
				search.Text = "  Search Server Scripts.."
			end
		end)
	end
end)

-- Game Tab Functionality --

tabHolder.Game.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local window = Window.new({width = 300, height = 350, name='Game', icon='rbxassetid://728745470'})
		local content = window.Content;		
		local search = create('TextBox', {
			Text = "  Search Game Scripts..";
			Size = UDim2.new(.95,0,.1,0);
			Position = UDim2.new(.025,0,0,0);
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = .9;
			TextSize = 22;
			TextColor3 = Color3.new(1,1,1);
			Font = Enum.Font.SourceSansLight;
			ZIndex = 8;
			ClearTextOnFocus = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			ClipsDescendants = true;
			Parent = content;
		})
		local decor = create('Frame',{
			Size = UDim2.new(.5, 0, 0, 1);
			Position = UDim2.new(0.25, 0, 1, -1);
			ZIndex = 8;
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
			Parent = search;
		})
		local scrframe = create('ScrollingFrame',{
			BackgroundTransparency = 1;
			Size = UDim2.new(1,0,.9,0);
			Position = UDim2.new(0,0,.1,0);
			CanvasSize = UDim2.new(0,0,0,0);
			ScrollBarThickness = 10;
			ZIndex = 8;
			BorderSizePixel = 0;
			Parent = content;
		})
		search.Focused:connect(function()
			decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
			if search.Text == "  Search Game Scripts.."then
				search.Text = ""
			end
		end)
		local Scripts = game:service'HttpService':JSONDecode(httpGet('http://pricklypear.xyz/scripts/get.php?type=game_scripts'))
		local function createScriptFrames(S)
			scrframe.CanvasSize = UDim2.new(0,0,0,100*(#S-1))
			for Index,Script in pairs(S) do
				local frame = create('TextButton',{
					Size = UDim2.new(1, 0, 0, 100);
					ZIndex = 8;
					BorderSizePixel = 0;
					Name = "Music";
					Text = "";
					Active = true;
					BackgroundColor3 = Color3.new(1, 1, 1);
					BackgroundTransparency = 1;
					Position = UDim2.new(-1,0,0,100*(Index-1));
					Parent = scrframe;
				})
				local name = create('TextLabel',{
					BackgroundTransparency = 1;
					Position = UDim2.new(0, 100, 0, 0);
					ZIndex = 8;
					Font = Enum.Font.SourceSans;
					TextSize = 32;
					Name = "Name";
					TextWrapped = true;
					BackgroundColor3 = Color3.new(1, 1, 1);
					TextColor3 = Color3.new(1, 1, 1);
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					Size = UDim2.new(1, -110, 1, 0);
					Text = Script.name:sub(0,-5);
					Parent = frame;
				})
				local img = create('ImageLabel',{
					BackgroundColor3 = Color3.new(1, 1, 1);
					Size = UDim2.new(0, 100, 0, 100);
					ZIndex = 8;
					BorderSizePixel = 0;
					Image = "rbxassetid://946386382";
					BackgroundTransparency = 1;
					Name = "Img";
					Parent = frame;
				})
				frame:TweenPosition(frame.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
				frame.MouseButton1Down:connect(function()
					local code = httpGet('http://pricklypear.xyz/scripts/get.php?type=game_scripts&id='..Script.id+(4*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-5,#tostring(os.time())-2))))))
					loadstring(code)()
				end)
				services.rstep:wait()
				--print(v.id*tonumber(tostring(os.time()):sub(1,9)))
				--httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts&id='..Script.id+(4*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-5,#tostring(os.time())-2))))))
			end
		end
		createScriptFrames(Scripts)
		search.FocusLost:connect(function(enter)
			decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
			if enter then
				scrframe:ClearAllChildren()
				scrframe.CanvasSize = UDim2.new(0,0,0,0)
				local SortTable = {}
				for i,v in pairs(Scripts)do
					if v.name:lower():sub(0,-5):find(search.Text:lower())then
						table.insert(SortTable,v)
					end
				end
				createScriptFrames(SortTable)
				search.Text = "  Search Game Scripts.."
			end
		end)
	end
end)

-- Library Tab Functionality --

tabHolder.Library.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local window = Window.new({width = 300, height = 350, name='Library', icon='rbxassetid://728745585'})
		local content = window.Content
		searchGuis(content,"Library","http://search.roblox.com/catalog/json?Category=Models&ResultsPerPage=25&Keyword=",function(id)
			local m = game:GetObjects("rbxassetid://"..id)[1]
			Children(m,function(inst)
				if inst.ClassName == "LocalScript" or inst.ClassName == "Script"then
					loadstring(inst.Source)()
				end
			end)
			local model = m
			if model:IsA("Model")then
				model.Parent = workspace
				local mouse = game:service'Players'.LocalPlayer:GetMouse()
				mouse.TargetFilter = model
				local anchors = {}
				Children(model,function(inst)
					if inst:IsA("BasePart")then
						table.insert(anchors,{part=inst,anchored=inst.Anchored})
						inst.Anchored = true;
					end
				end)
				local connec = mouse.Move:connect(function()
					model:MoveTo(mouse.Hit.p)
				end)
				mouse.Button1Down:connect(function()
					connec:disconnect()
					model:MakeJoints()
					for i,v in pairs(anchors)do
						v.part.Anchored = v.anchored
					end
				end)
			elseif model:IsA("Tool")then
				model.Parent = services.plr.Backpack
			elseif model:IsA("Accoutrement")then
				model.Parent = services.plr.Character~=nil and services.plr.Character or workspace;
			end
		end)
	end
end)

-- Music Tab Functionality --

tabHolder.Music.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local window = Window.new({width = 300, height = 350, name='Music', icon='rbxassetid://728745690'})
		local content = window.Content
		searchGuis(content,"Sounds","http://search.roblox.com/catalog/json?Category=Audio&ResultsPerPage=25&Keyword=",function(id)
			local audio = playMusic(id);
			local audplr = Window.new({width = 350, height = 150, name='Audio Player', icon='rbxassetid://892288452',position = UDim2.new(1,-380,1,-180),closed = function()
				audio:Stop()
				audio:remove()
			end})

			-- Audio Title Definition --

			local title = create('TextLabel',{
				Name = "Title";
				Font = Enum.Font.SourceSansLight;
				Text = services.MarketplaceService:GetProductInfo(id).Name;
				TextSize = 22;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.9,0,0,3);
				Position = UDim2.new(.05,0,.7,0);
				BackgroundTransparency = 1;
				ZIndex = 8;
				Parent = audplr;
			})
			title.Size = UDim2.new(0,title.TextBounds.X,0,title.TextBounds.Y);
			title.Position = UDim2.new(0.5,-(title.TextBounds.X/2),0.75,0);

			-- Progress Bar Definitions

			local progressbar =  create('Frame',{
				Name = "ProgressBar";
				Size = UDim2.new(.9,0,0,4);
				Position = UDim2.new(.05,0,.7,0);
				BackgroundTransparency = 1;
				BorderSizePixel = 1;
				BorderColor3 = Color3.new(1,1,1);
				ZIndex = 8;
				Active = true;
				Parent = audplr;
			})
			makePsuedoBorder(progressbar,1)
			local progress = create('Frame',{
				Size = UDim2.new(0,0,1,0);
				BackgroundColor3 = Color3.new(1,1,1);
				BorderSizePixel = 0;
				ZIndex = 8;
				Parent = progressbar;
			})
			local drag = create('Frame',{
				ZIndex = 8;
				Size = UDim2.new(0,8,0,16);
				BackgroundColor3 = Color3.new(1,1,1);
				BorderSizePixel = 0;
				Active = true;
				Parent = progressbar;
			},true)

			-- Progress Bar Handling --

			drag.Position = UDim2.new(progress.Size.X,UDim.new(0,0)) + UDim2.new(0,-(drag.AbsoluteSize.X/2),0,-(drag.AbsoluteSize.Y/2)+(progress.AbsoluteSize.Y/2))
			local function dragTime()
				local mouse = services.mouse
				local x,y = mouse.X,mouse.Y
				local p = (x-progressbar.AbsolutePosition.X)/progressbar.AbsoluteSize.X
				if p <= 0 then
					p = 0
				elseif p >= 1 then
					p = 1
				end
				audio.TimePosition = audio.TimeLength * p
			end
			local dragEvent
			drag.InputBegan:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					local mouse = services.mouse
					dragTime()
					dragEvent = mouse.Move:connect(function()
						dragTime()
					end)
				end
			end)
			drag.InputEnded:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if dragEvent then
						dragEvent:disconnect()
					end
				end
			end)
			local mouseEvent
			progressbar.InputBegan:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					local mouse = services.mouse
					dragTime()
					mouseEvent = mouse.Move:connect(function()
						dragTime()
					end)
				end
			end)
			progressbar.InputEnded:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if mouseEvent then
						mouseEvent:disconnect()
					end
				end
			end)
			progress.Changed:connect(function()
				drag.Position = UDim2.new(progress.Size.X,UDim.new(0,0)) + UDim2.new(0,-(drag.AbsoluteSize.X/2),0,-(drag.AbsoluteSize.Y/2)+(progress.AbsoluteSize.Y/2))
			end)

			-- Definition of Timer --

			local playedTime = create('TextLabel',{
				Font = Enum.Font.SourceSansLight;
				TextColor3 = Color3.new(1,1,1);
				Text = "0:00";
				TextSize = 22;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ZIndex = 8;
				Parent = audplr;
			})
			playedTime.Size = UDim2.new(0,playedTime.TextBounds.X,0,playedTime.TextBounds.Y);
			playedTime.Position = UDim2.new(0.05,0,0.7,(-playedTime.TextBounds.Y)-7);

			local songTime = create('TextLabel',{
				Font = Enum.Font.SourceSansLight;
				TextColor3 = Color3.new(1,1,1);
				Text = "0:00";
				TextSize = 22;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ZIndex = 8;
				Parent = audplr;
			})
			songTime.Size = UDim2.new(0,songTime.TextBounds.X,0,songTime.TextBounds.Y);
			songTime.Position = UDim2.new(0.95,-songTime.TextBounds.X,0.7,(-songTime.TextBounds.Y)-7);

			-- Function to Update Timer --

			local function getTime(number)
				local minutes = math.floor(number / 60)
				local seconds = math.floor(number - (minutes * 60))
				return {minutes = minutes,seconds = seconds}
			end

			local function updateTimer(number,obj)
				local audioPosition = getTime(number)
				local audioLength = getTime(number)
				if string.len(audioPosition.seconds) == 1 then
					obj.Text = audioPosition.minutes..":0"..audioPosition.seconds
					return
				end
				obj.Text = audioPosition.minutes..":"..audioPosition.seconds
			end

			-- Definition of Music Contol Buttons

			local playpause = createIcon("rbxassetid://895198075",{
				ZIndex = 8;
				Position = UDim2.new(0.5,0,0.2,0);
				Size = UDim2.new(0,48,0,48);
				ImageColor3 = Color3.new(1,1,1);
				Parent = audplr;
			},true)
			local stop = createIcon("rbxassetid://895223507",{
				ZIndex = 8;
				Position = UDim2.new(0.5,-48,0.2,0);
				Size = UDim2.new(0,48,0,48);
				ImageColor3 = Color3.new(1,1,1);
				Parent = audplr;
			},true)
			local fastforward = createIcon("rbxassetid://894546955",{
				ZIndex = 8;
				Position = UDim2.new(0.5,48,0.2,0);
				Size = UDim2.new(0,48,0,48);
				ImageColor3 = Color3.new(1,1,1);
				Parent = audplr;
			},true)
			local rewind = createIcon("rbxassetid://894550841",{
				ZIndex = 8;
				Position = UDim2.new(0.5,-96,0.2,0);
				Size = UDim2.new(0,48,0,48);
				ImageColor3 = Color3.new(1,1,1);
				Parent = audplr;
			},true)

			-- Music Control Button Events --

			playpause.InputBegan:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if audio.IsPlaying then
						audio:Pause()
					else
						audio:Resume()
					end
				end
			end)
			stop.InputBegan:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					audio:Stop()
				end
			end)

			-- Rewind & Fast Forward --

			local r = false
			rewind.MouseButton1Down:connect(function()r = true end)
			rewind.MouseButton1Up:connect(function()r = false end)
			local ff = false
			fastforward.MouseButton1Down:connect(function()ff = true end)
			fastforward.MouseButton1Up:connect(function()ff = false end)

			-- Sound Instance Handling --

			audio.Played:connect(function()
				playpause.Image = "rbxassetid://895198075";
			end)
			audio.Resumed:connect(function()
				playpause.Image = "rbxassetid://895198075";
			end)
			audio.Paused:connect(function()
				playpause.Image = "rbxassetid://894282728";
			end)
			audio.Stopped:connect(function()
				playpause.Image = "rbxassetid://894282728";
			end)
			audio.Ended:connect(function()
				playpause.Image = "rbxassetid://894282728";
			end)

			-- Volume Definition --

			local volume = createIcon("rbxassetid://899015310",{
				ZIndex = 8;
				Position = UDim2.new(0.5,-144,0.2,0);
				Size = UDim2.new(0,48,0,48);
				ImageColor3 = Color3.new(1,1,1);
				Parent = audplr;
			},true)

			-- Volume Handling --

			volume.MouseButton1Down:connect(function()
				local volumeWindow = Window.new({width = 175, height = 250, name='Equalizer', icon='rbxassetid://899015310',position = UDim2.new(1,-205,1,-280)})
				local content = volumeWindow.Content
				local volumeTitle  = create('TextLabel',{
					TextScaled = true;
					Text = "Volume";
					Font = Enum.Font.SourceSansLight;
					Size = UDim2.new(.5,0,.1,0);
					BackgroundTransparency = 1;
					ZIndex = 8;
					TextColor3 = Color3.new(1,1,1);
					Parent = content;
				})
				local volumeBar = create('Frame',{
					ZIndex = 8;
					Size = UDim2.new(0,4,.75,0);
					Position = UDim2.new(0.25,-2,.1,5);
					BackgroundTransparency = 1;
					BorderColor3 = Color3.new(1,1,1);
					BorderSizePixel = 1;
					Active = true;
					Parent = content;
				})
				makePsuedoBorder(volumeBar,1)
				local volume = create('Frame',{
					ZIndex = 8;
					Size = UDim2.new(1,0,audio.Volume/10,0);
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Parent = volumeBar;
				})
				volume.Position = UDim2.new(0,0,1,-(volume.AbsoluteSize.Y));
				local volumeDrag = create('Frame',{
					Size = UDim2.new(0,16,0,8);
					ZIndex = 8;
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Active = true;
					Parent = volumeBar;
				})
				volumeDrag.Position = volume.Position + UDim2.new(0,-(volumeDrag.AbsoluteSize.X/2)+(volume.AbsoluteSize.X/2),0,-(volumeDrag.AbsoluteSize.Y/2))

				-- Volume Bar & Drag Functionality --

				local function updateVolume()
					local M = services.mouse;
					local volumeS = (M.Y-volumeBar.AbsolutePosition.Y)/(volumeBar.AbsoluteSize.Y);
					if (volumeS > 1) then volumeS = 1 end
					if volumeS <= 0 then volumeS = 0; end
					volumeS = math.abs(volumeS-1);
					audio.Volume = volumeS*10;
				end
				local volumeBarEvent
				volumeBar.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local M = services.mouse;
						updateVolume();
						volumeBarEvent = M.Move:connect(function()
							updateVolume();
						end)
					end
				end)
				volumeBar.InputEnded:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if volumeBarEvent then
							volumeBarEvent:disconnect();
						end
					end
				end)
				local volumeDragEvent;
				volumeDrag.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local M = services.mouse;
						updateVolume();
						volumeDragEvent = M.Move:connect(function()
							updateVolume();
						end)
					end
				end)
				volumeDrag.InputEnded:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if volumeDragEvent then
							volumeDragEvent:disconnect();
						end
					end
				end)
				volume.Changed:connect(function()
					volumeDrag.Position = volume.Position + UDim2.new(0,-(volumeDrag.AbsoluteSize.X/2)+(volume.AbsoluteSize.X/2),0,-(volumeDrag.AbsoluteSize.Y/2))
					volume.Position = UDim2.new(0,0,1,-(volume.AbsoluteSize.Y));
				end)

				-- Volume Percent Definition --

				local volumePercent = create('TextBox',{
					MultiLine = false;
					ClearTextOnFocus = false;
					TextScaled = true;
					Font = Enum.Font.SourceSansLight;
					Size = UDim2.new(.5,0,.15,-7);
					Position = UDim2.new(0,0,.85,7);
					BackgroundTransparency = 1;
					ZIndex = 8;
					TextColor3 = Color3.new(1,1,1);
					Parent = content;
				})
				volumePercent.Text = tostring(math.floor(audio.Volume*10)).."%"

				-- Volume Percent Functionality --

				volumePercent.Changed:connect(function()
					volumePercent.Text = volumePercent.Text:gsub("%D","") .. "%"
				end)
				volumePercent.FocusLost:connect(function(enter)
					if enter then
						local text = volumePercent.Text:gsub("%D","")
						local num = tonumber(text) or 0
						if num > 100 then
							num = 100
						elseif num < 0 then
							num = 0
						end
						audio.Volume = num/10
						volumePercent.Text = tostring(math.floor(audio.Volume*10)).."%"
					end
				end)
				-- Pitch Definitions --

					local pitchTitle  = create('TextLabel',{
					TextScaled = true;
					Text = "Pitch";
					Font = Enum.Font.SourceSansLight;
					Size = UDim2.new(.5,0,.1,0);
					Position = UDim2.new(.5,0,0,0);
					BackgroundTransparency = 1;
					ZIndex = 8;
					TextColor3 = Color3.new(1,1,1);
					Parent = content;
				})
				local pitchBar = create('Frame',{
					ZIndex = 8;
					Size = UDim2.new(0,4,.75,0);
					Position = UDim2.new(0.75,-2,.1,5);
					BackgroundTransparency = 1;
					BorderColor3 = Color3.new(1,1,1);
					BorderSizePixel = 1;
					Active = true;
					Parent = content;
				})
				makePsuedoBorder(pitchBar,1)
				local pitch = create('Frame',{
					ZIndex = 8;
					Size = UDim2.new(1,0,audio.Pitch/10,0); -- Must edit
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Parent = pitchBar;
				})
				pitch.Position = UDim2.new(0,0,1,-(pitch.AbsoluteSize.Y));
				local pitchDrag = create('Frame',{
					Size = UDim2.new(0,16,0,8);
					ZIndex = 8;
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Active = true;
					Parent = pitchBar;
				})
				pitchDrag.Position = pitch.Position + UDim2.new(0,-(pitchDrag.AbsoluteSize.X/2)+(pitch.AbsoluteSize.X/2),0,-(pitchDrag.AbsoluteSize.Y/2))

				-- Pitch Bar & Drag Functionality --

				local function updatePitch()
					local M = services.mouse;
					local pitchS = (M.Y-pitchBar.AbsolutePosition.Y)/(pitchBar.AbsoluteSize.Y);
					if pitchS >= 1 then pitchS = 1 elseif pitchS <= 0 then pitchS = 0 end
					pitchS = math.abs(pitchS-1);
					audio.PlaybackSpeed = pitchS*10
				end
				local pitchBarEvent
				pitchBar.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local M = services.mouse;
						updatePitch();
						pitchBarEvent = M.Move:connect(function()
							updatePitch();
						end)
					end
				end)
				pitchBar.InputEnded:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if pitchBarEvent then
							pitchBarEvent:disconnect();
						end
					end
				end)
				local pitchDragEvent;
				pitchDrag.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local M = services.mouse;
						updatePitch();
						pitchDragEvent = M.Move:connect(function()
							updatePitch();
						end)
					end
				end)
				pitchDrag.InputEnded:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if pitchDragEvent then
							pitchDragEvent:disconnect();
						end
					end
				end)
				pitch.Changed:connect(function()
					pitchDrag.Position = pitch.Position + UDim2.new(0,-(pitchDrag.AbsoluteSize.X/2)+(pitch.AbsoluteSize.X/2),0,-(pitchDrag.AbsoluteSize.Y/2))
					pitch.Position = UDim2.new(0,0,1,-(pitch.AbsoluteSize.Y));
				end)

				-- Pitch Percent Definition --

				local pitchPercent = create('TextBox',{
					MultiLine = false;
					ClearTextOnFocus = false;
					Text = tostring(math.floor(audio.Pitch*100)).."%";
					TextScaled = true;
					Font = Enum.Font.SourceSansLight;
					Size = UDim2.new(.5,0,.15,-7);
					Position = UDim2.new(0.5,0,.85,7);
					BackgroundTransparency = 1;
					ZIndex = 8;
					TextColor3 = Color3.new(1,1,1);
					Parent = content;
				})

				-- Pitch Percent Functionality --

				pitchPercent.Changed:connect(function()
					pitchPercent.Text = pitchPercent.Text:gsub("%D","") .. "%"
				end)
				pitchPercent.FocusLost:connect(function(enter)
					if enter then
						local text = pitchPercent.Text:gsub("%D","")
						local num = tonumber(text) or 0
						if num > 1000 then
							num = 1000
						elseif num < 0 then
							num = 0
						end
						audio.Pitch = tonumber(num/100)
					end
				end)

				-- Extra Volume Handling --

				audio.Changed:connect(function()
					pitch.Size = UDim2.new(1,0,((audio.Pitch/10)),0);
					pitchPercent.Text = tostring(math.floor(audio.Pitch*100)).."%"
					volumePercent.Text = tostring(math.floor(audio.Volume*10)).."%"
					volume.Size = UDim2.new(1,0,audio.Volume/10,0);
				end)

				--
			end)


			-- Looped Definition --

			local looped = createIcon("rbxassetid://896365760",{
				ZIndex = 8;
				Position = UDim2.new(0.5,96,0.2,0);
				Size = UDim2.new(0,48,0,48);
				ImageColor3 = Color3.new(1,1,1);
				Parent = audplr;
			},true)

			-- Looped Handling --

			looped.InputBegan:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					audio.Looped = not audio.Looped
				end
			end)

			-- Extra Handling --

			coroutine.wrap(function()
				while wait()do
					updateTimer(audio.TimeLength,songTime)
					updateTimer(audio.TimePosition,playedTime)
					progress.Size = UDim2.new(math.floor(audio.TimePosition)/math.floor(audio.TimeLength),0,1,0)
					looped.Rotation = audio.Looped  and looped.Rotation + 3 or looped.Rotation
					if r then audio.TimePosition = audio.TimePosition - .25 end
					if ff then audio.TimePosition = audio.TimePosition + .25 end
				end
			end)()
		end)
	end
end)

-- Info Tab Functionality --

tabHolder.Info.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local window = Window.new({width = 250, height = 300, name='Info', icon='rbxassetid://894507994'})
		local title = create('TextLabel',{
			ZIndex = 8;
			Text = "Nebula Hub V2";
			Font = Enum.Font.SourceSansLight;
			TextScaled = true;
			BackgroundTransparency = 1;
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,28);
			Position = UDim2.new(0.025,0,0,0);
			Parent = window.Content;
		})
		local decor = create('Frame',{
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.new(0, 0, 1, -3);
			ZIndex = 8;
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
			Parent = title;
		})
		local scrframe = create('ScrollingFrame',{
			BackgroundTransparency = 1;
			Size = UDim2.new(1,0,1,-30);
			Position = UDim2.new(0,0,0,30);
			CanvasSize = UDim2.new(0,0,0,0);
			ScrollBarThickness = 10;
			ZIndex = 8;
			Parent = window.Content;
		})
		local fe = workspace.FilteringEnabled and "Enabled" or "Disabled"
		local FEInfo = create('TextLabel',{
			ZIndex = 8;
			Text = "Filtering is " .. fe;
			TextScaled = true;
			BackgroundTransparency = .9;
			Font = Enum.Font.SourceSansLight;
			BackgroundColor3 = Color3.new(1,1,1);
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,150);
			Parent = scrframe;
		})
		local creditsInfo = create('TextButton',{
			ZIndex = 8;
			Text = "Credits";
			TextScaled = true;
			BackgroundTransparency = .9;
			Font = Enum.Font.SourceSansLight;
			BackgroundColor3 = Color3.new(1,1,1);
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,120);
			Parent = scrframe;
		})
		creditsInfo.MouseButton1Down:connect(function()
			local window = Window.new({width = 250, height = 250, name='Credits', icon='rbxassetid://894507994'})
			local title = create('TextLabel',{
				ZIndex = 8;
				Text = "Credits";
				TextScaled = true;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Position = UDim2.new(0.025,0,0,0);
				Parent = window.Content;
			})
			local decor = create('Frame',{
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, -2);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1, 1, 1);
				Parent = title;
			})
			local body = create('TextLabel',{
				ZIndex = 8;
				Text = "Scripterity - Main Scripter\nfinny - Sales Manager\nic3w0lf - Script help\nfatboysraidmcdonalds - Server & Script help\nrocky2u - Being rocky & Script help\nmodFrost - Script help";
				TextWrap = true;
				TextSize = 24;
				TextYAlignment = Enum.TextYAlignment.Top;
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,1,-30);
				Position = UDim2.new(0.025,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Parent = window.Content;
			})
		end)
		local settingsInfo = create('TextButton',{
			ZIndex = 8;
			Text = "Settings Tab Info";
			TextScaled = true;
			BackgroundTransparency = .9;
			Font = Enum.Font.SourceSansLight;
			BackgroundColor3 = Color3.new(1,1,1);
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,90);
			Parent = scrframe;
		})
		settingsInfo.MouseButton1Down:connect(function()
			local window = Window.new({width = 200, height = 250, name='Settings Info', icon='rbxassetid://894507994'})
			local title = create('TextLabel',{
				ZIndex = 8;
				Text = "The Settings Tab";
				TextScaled = true;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Position = UDim2.new(0.025,0,0,0);
				Parent = window.Content;
			})
			local decor = create('Frame',{
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, -2);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1, 1, 1);
				Parent = title;
			})
			local body = create('TextLabel',{
				ZIndex = 8;
				Text = "The Settings Tab includes all of the settings for Nebula. Theme Color, Open/Close Keybind, and Blur Levels. All of these settings save automatically, which means no hassle with re-doing settings. (CHANGING THEME COLOR MAY LAG BASED ON COMPUTER SPECS)";
				TextWrap = true;
				TextSize = 13;
				TextScaled = true;
				TextYAlignment = Enum.TextYAlignment.Top;
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,1,-30);
				Position = UDim2.new(0.025,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Parent = window.Content;
			})
		end)
		local libraryInfo = create('TextButton',{
			ZIndex = 8;
			Text = "Library Tab Info";
			TextScaled = true;
			BackgroundTransparency = .9;
			Font = Enum.Font.SourceSansLight;
			BackgroundColor3 = Color3.new(1,1,1);
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,60);
			Parent = scrframe;
		})
		libraryInfo.MouseButton1Down:connect(function()
			local window = Window.new({width = 200, height = 250, name='Library Info', icon='rbxassetid://894507994'})
			local title = create('TextLabel',{
				ZIndex = 8;
				Text = "The Library Tab";
				TextScaled = true;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Position = UDim2.new(0.025,0,0,0);
				Parent = window.Content;
			})
			local decor = create('Frame',{
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, -2);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1, 1, 1);
				Parent = title;
			})
			local body = create('TextLabel',{
				ZIndex = 8;
				Text = "The Library Tab allows you to search the Catalog for freemodels to insert, click a freemodel to insert it into the game, if it is a model you move it with your mouse, click to place at your mouse position. (DOES NOT WORK WITH ALL MODELS)";
				TextWrap = true;
				TextSize = 13;
				TextScaled = true;
				TextYAlignment = Enum.TextYAlignment.Top;
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,1,-30);
				Position = UDim2.new(0.025,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Parent = window.Content;
			})
		end)
		local musicInfo = create('TextButton',{
			ZIndex = 8;
			Text = "Music Tab Info";
			TextScaled = true;
			BackgroundTransparency = .9;
			Font = Enum.Font.SourceSansLight;
			BackgroundColor3 = Color3.new(1,1,1);
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,30);
			Parent = scrframe;
		})
		musicInfo.MouseButton1Down:connect(function()
			local window = Window.new({width = 200, height = 250, name='Music Info', icon='rbxassetid://894507994'})
			local title = create('TextLabel',{
				ZIndex = 8;
				Text = "The Music Tab";
				TextScaled = true;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Position = UDim2.new(0.025,0,0,0);
				Parent = window.Content;
			})
			local decor = create('Frame',{
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, -2);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1, 1, 1);
				Parent = title;
			})
			local body = create('TextLabel',{
				ZIndex = 8;
				Text = "The Music Tab comes with audio search & ID playing, as well as a fully functional Audio Player, that allows Speed & Volume changing, real-time progress bar, Fast forward, Rewind, Pause, Play, and Stop As well as Sound Looping.";
				TextWrap = true;
				TextSize = 13;
				TextScaled = true;
				TextYAlignment = Enum.TextYAlignment.Top;
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,1,-30);
				Position = UDim2.new(0.025,0,0,24);
				Font = Enum.Font.SourceSansLight;
				Parent = window.Content;
			})
		end)
		local scriptsInfo = create('TextButton',{
			ZIndex = 8;
			Text = "Script Tabs Info";
			TextScaled = true;
			BackgroundTransparency = .9;
			BackgroundColor3 = Color3.new(1,1,1);
			Font = Enum.Font.SourceSansLight;
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,0);
			Parent = scrframe;
		})
		scriptsInfo.MouseButton1Down:connect(function()
			local window = Window.new({width = 200, height = 250, name='Scripts Info', icon='rbxassetid://894507994'})
			local title = create('TextLabel',{
				ZIndex = 8;
				Text = "The Script Tabs";
				TextScaled = true;
				Font = Enum.Font.SourceSansLight;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,0,24);
				Position = UDim2.new(0.025,0,0,0);
				Parent = window.Content;
			})
			local decor = create('Frame',{
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, -2);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1, 1, 1);
				Parent = title;
			})
			local body = create('TextLabel',{
				ZIndex = 8;
				Text = "The Script Tabs contains about 380+ scripts ready to be inserted at any time, most will reset upon Character Death, the server scripts should not. Click one of the buttons to insert the script.";
				TextWrap = true;
				TextSize = 13;
				TextScaled = true;
				TextYAlignment = Enum.TextYAlignment.Top;
				BackgroundTransparency = 1;
				Font = Enum.Font.SourceSansLight;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(.95,0,1,-30);
				Position = UDim2.new(0.025,0,0,24);
				Parent = window.Content;
			})
		end)
	end
end)

-- Settings Tab Functionality

tabHolder.Settings.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local windo = Window.new({width = 250, height = 300, name='Settings', icon='rbxassetid://898100298'})
		
		-- Define Color Mixer Button --
		
		local colorButton = create('TextButton',{
			ZIndex = 8;
			Text = "Set Window Color";
			Font = Enum.Font.SourceSansLight;
			TextScaled = true;
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = .9;
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,0);
			Parent = windo.Content;
		})
		
		local icon = createIcon('rbxassetid://904628594', {
			Size = UDim2.new(0, 0, 1, 0);
			ZIndex = 8;
			Parent = colorButton;
		})
		icon.Size = UDim2.new(0,icon.AbsoluteSize.Y,0,icon.AbsoluteSize.Y)
		
		local keyboardButton = create('TextButton',{
			ZIndex = 8;
			Text = "Set Nebula Keybind";
			TextScaled = true;
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = .9;
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Font = Enum.Font.SourceSansLight;
			Position = UDim2.new(0.025,0,0,30);
			Parent = windo.Content;
		})		
		
		local icon2 = createIcon("rbxassetid://950538977", {
			Size = UDim2.new(0, 0, 1, 0);
			ZIndex = 8;
			Parent = keyboardButton;
		})
		icon2.Size = UDim2.new(0,icon2.AbsoluteSize.Y,0,icon2.AbsoluteSize.Y)
		
		local blurButton = create('TextButton',{
			Font = Enum.Font.SourceSansLight;
			ZIndex = 8;
			Text = "Set Blur Level";
			TextScaled = true;
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = .9;
			TextColor3 = Color3.new(1,1,1);
			Size = UDim2.new(.95,0,0,24);
			Position = UDim2.new(0.025,0,0,60);
			Parent = windo.Content;
		})		
		
		local icon3 = createIcon('rbxassetid://951352122', {
			Size = UDim2.new(0, 0, 1, 0);
			ZIndex = 8;
			Parent = blurButton;
		})
		icon3.Size = UDim2.new(0,icon3.AbsoluteSize.Y,0,icon3.AbsoluteSize.Y)
		
		blurButton.MouseButton1Down:connect(function()
			local window = Window.new({width = 165, height = 100, name='Set Blur', icon='rbxassetid://951352122'})
			local blurLabel = create('TextLabel',{
				ZIndex = 8;
				Text = "Blur Level";
				TextScaled = true;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(0,60,0,60);
				Position = UDim2.new(0.45,-60,0.05,0);
				Parent = window.Content;
			})
			
			local blurBox  = create('TextBox',{
				ZIndex = 8;
				Text = tostring(settings.blurLevel);
				ClearTextOnFocus = false;
				TextSize = 28;
				MultiLine = false;
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Size = UDim2.new(0,60,0,60);
				Position = UDim2.new(0.55,0,0.05,0);
				Parent = window.Content;
			})
			
			blurBox.Changed:connect(function()
				blurBox.Text = blurBox.Text:gsub("%D","")
			end)
			blurBox.FocusLost:connect(function(enter)
				if enter then
					settings.blurLevel = tonumber(blurBox.Text)
					blurLevel = enabled and tonumber(blurBox.Text) or blurLevel
				end
			end)
		end)
		
		keyboardButton.MouseButton1Down:connect(function()
			local window = Window.new({width = 165, height = 100, name='Set Key', icon='rbxassetid://950538977'})
			local changeButton = create('TextButton',{
				ZIndex = 8;
				Text = "Set Keybind";
				Size = UDim2.new(.45,0,.6,0);
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = .9;
				TextColor3 = Color3.new(1,1,1);
				Position = UDim2.new(0.05,0,0.15,0);
				Font = Enum.Font.SourceSansLight;
				TextScaled = true;
				Parent = window.Content;
			})
			local currentButton = create('TextLabel',{
				ZIndex = 8;
				Text = tostring(binds[1][1]):sub(14);
				Size = UDim2.new(.45,0,.6,0);
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1,1,1);
				Position = UDim2.new(0.5,0,0.15,0);
				Font = Enum.Font.SourceSansLight;
				TextScaled = true;
				Parent = window.Content;
			})
			local deb = false
			local function b()
				toggleable = false
				currentButton.Text = "Press A Key"
				local a = services.input.InputBegan:wait()
				if a.UserInputType == Enum.UserInputType.Keyboard then
					binds[1][1] = a.KeyCode
					settings.toggleKey = binds[1][1]
					currentButton.Text = tostring(binds[1][1]):sub(14);
					wait()
					toggleable = true;
				else
					b()
				end
			end
			changeButton.MouseButton1Down:connect(b)
		end)
		
		-- Register Click of Color Mixer Button --
		
		colorButton.MouseButton1Down:connect(function()
			local window = Window.new({width = 250, height = 300, name='Color Mixer', icon='rbxassetid://904628594',closed = function(this)
				
				-- Define Buffer Message on Window Closed --
				
				local bufferText = create('TextLabel',{
					Position = UDim2.new(0.025,0,0.125,0);
					Size = UDim2.new(.95,0,.075,0);
					TextScaled = true;
					Font = Enum.Font.SourceSansLight;
					TextColor3 = Color3.new(1,1,1);
					BackgroundTransparency = .9;
					BorderSizePixel = 0;
					BackgroundColor3 = Color3.new(1,1,1);
					Text = "Closing Buffer Activated";
					ZIndex = 8;
					Parent = this;
				})			
				-- Buffer remove to prevent breaking other tabs --	
				for i,v in pairs(this.Content:children())do
					v.Visible = false;
					wait()
					v:Destroy()
				end
			end})
			local overallColor
			local unmixedColor
			-- Define Hue Slider Frame --
			local colorMixerBar = create('Frame',{
				Size = UDim2.new(0,24,0,180);
				Position = UDim2.new(.95,-24,0.05,0);
				BackgroundTransparency = 1;
				Active = true;
				ZIndex = 8;
				Parent = window.Content;
			})
			-- Returns Center Position of Gui --
			local function returnCenterPosition(g)
				return {x=g.AbsolutePosition.X + (g.AbsoluteSize.X/2),y=g.AbsolutePosition.Y + (g.AbsoluteSize.Y/2)}
			end
				-- Add hue slider colors --
				for hue = 0,180,1 do
					local c = create('Frame',{
						Position = UDim2.new(0,0,0,hue);
						Size = UDim2.new(1,0,0,1);
						BackgroundColor3 = Color3.fromHSV(hue/180,1,1);
						ZIndex = 8;
						BorderSizePixel = 0;
						Name = "Color";
						Parent = colorMixerBar;
					})
				end
				local colorHue = Color3.toHSV(settings.mainColor)
				-- Define Hue Slider Draggable Frame --
				local colorBarDrag = create('Frame',{
					Name = "ColorDrag";
					BackgroundColor3 = Color3.new(1,1,1);
					Size = UDim2.new(1,4,0,8);
					Position = UDim2.new(0,-2,0,(180*colorHue)-2);
					Active = true;
					BorderSizePixel = 0;
					ZIndex = 8;
					Draggable = true;
					Parent = colorMixerBar;
				},true)
				-- Define Inner Color of Draggable --
				local colorBarDragColor = create('Frame',{
					Name = "DragColor";
					Size = UDim2.new(1,-4,0,4);
					Position = UDim2.new(0,2,0,2);
					BorderSizePixel = 0;
					Active = true;
					ZIndex = 8;
					Parent = colorBarDrag
				},true)
				
				colorBarDragColor.BackgroundColor3 = Color3.fromHSV(colorHue,1,1)
				-- Draggable handling --
				colorBarDrag.Changed:connect(function()
					-- Handle X Coords --
					if colorBarDrag.AbsolutePosition.X ~= colorMixerBar.AbsolutePosition.X-2 then
						colorBarDrag.Position = UDim2.new(UDim.new(0,-2),colorBarDrag.Position.Y)
					end
					-- Handle Y Coords --
					if colorBarDrag.AbsolutePosition.Y > (colorMixerBar.AbsolutePosition.Y + colorMixerBar.AbsoluteSize.Y)-4 then
						colorBarDrag.Position = UDim2.new(colorBarDrag.Position.X,UDim.new(0,colorMixerBar.AbsoluteSize.Y-4))
					elseif colorBarDrag.AbsolutePosition.Y < colorMixerBar.AbsolutePosition.Y-4 then
						colorBarDrag.Position = UDim2.new(colorBarDrag.Position.X,UDim.new(0,-4))
					end
					-- Center Circle Color --
					coroutine.wrap(function()
						for i,v in pairs(colorMixerBar:children())do
							if v.Name == "Color"then
								if v.AbsolutePosition.Y == returnCenterPosition(colorBarDrag).y then
									colorBarDragColor.BackgroundColor3 = v.BackgroundColor3
								end
							end
						end
					end)()
				end)
				
				-- Hue Slider Handling --				
				
				local colorEvent
				colorMixerBar.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local M = services.mouse;
						colorBarDrag.Position = UDim2.new(UDim.new(0,-2),UDim.new(0,M.Y-colorMixerBar.AbsolutePosition.Y))
						volumeBarEvent = M.Move:connect(function()
							colorBarDrag.Position = UDim2.new(UDim.new(0,-2),UDim.new(0,M.Y-colorMixerBar.AbsolutePosition.Y))
						end)
					end
				end)
				colorMixerBar.InputEnded:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if volumeBarEvent then
							volumeBarEvent:disconnect();
						end
					end
				end)
				
				-- Handling with hues for later --				
				
				local hue = Color3.toHSV(colorBarDragColor.BackgroundColor3)
				colorBarDragColor.Changed:connect(function(prop)
					if prop == "BackgroundColor3"then
						hue = Color3.toHSV(colorBarDragColor.BackgroundColor3)
					end
				end)
			-- Define HSL Holder --
			local hsvHolder = create('Frame',{
				Position = UDim2.new(0.05,0,0.05,0);
				Size = UDim2.new(0,183,0,183);
				BackgroundTransparency = 1;
				Active = true;
				ZIndex = 8;
				Parent = window.Content;
			})
			local hsvTable = {}
			
			-- Build HSL Frame --
			
			for sat = 0,45,1 do
				for light = 0,45,1 do
					local c = create('Frame',{
						Position = UDim2.new(0,sat*4,0,light*4);
						Size = UDim2.new(0,4,0,4);
						BackgroundColor3 = Color3.fromHSV(hue,sat/45,light/45);
						ZIndex = 8;
						BorderSizePixel = 0;
						Parent = hsvHolder;
					})
					table.insert(hsvTable,c)
					coroutine.wrap(function()
						services.RunService.RenderStepped:connect(function()
							if(c.BackgroundColor3 ~= Color3.fromHSV(hue,sat/45,light/45))then
								c.BackgroundColor3 = Color3.fromHSV(hue,sat/45,light/45);
							end
						end)
					end)()
				end
			end
			
			-- HSL Slider Definition --
			
			local h,s,l = Color3.toHSV(settings.mainColor)
			local outerDragA = create('Frame',{
				Size = UDim2.new(0,15,0,3);
				Position = UDim2.new(0,((45*s)*4)-7,0,((45*l)*4)-1);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1,1,1);
				Parent = hsvHolder;
			})
			local outerDragB = create('Frame',{
				Size = UDim2.new(0,3,0,15);
				Position = outerDragA.Position + UDim2.new(0,6,0,-6);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1,1,1);
				Parent = hsvHolder;
			})
			local innerDragA = create('Frame',{
				Size = UDim2.new(0,13,0,1);
				Position = outerDragA.Position + UDim2.new(0,1,0,1);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = settings.mainColor;
				Parent = hsvHolder;
			})
			local innerDragB = create('Frame',{
				Size = UDim2.new(0,1,0,13);
				Position = outerDragB.Position + UDim2.new(0,1,0,1);
				ZIndex = 8;
				BorderSizePixel = 0;
				BackgroundColor3 = settings.mainColor;
				Parent = hsvHolder;
			})
			local indicator = create('Frame',{
				Size = UDim2.new(0,1,0,1);
				Position = UDim2.new(0,7,0,1);
				ZIndex = 8;
				BackgroundTransparency = 1;
				Parent = outerDragA;
			})
			-- Extra handling for the HSL Slider --
			outerDragA.Changed:connect(function()
				outerDragB.Position = outerDragA.Position + UDim2.new(0,6,0,-6);
				innerDragA.Position = outerDragA.Position + UDim2.new(0,1,0,1);
				innerDragB.Position = outerDragB.Position + UDim2.new(0,1,0,1);
			end)
			
			-- HSL Slider Functionality	--
			local function collisionDetect(gui1, gui2)
				local g1p, g1s = gui1.AbsolutePosition, gui1.AbsoluteSize;
				local g2p, g2s = gui2.AbsolutePosition, gui2.AbsoluteSize;
				return ((g1p.x < g2p.x + g2s.x and g1p.x + g1s.x > g2p.x) and (g1p.y < g2p.y + g2s.y and g1p.y + g1s.y > g2p.y));
			end;
			
			local hsvEvent;
			-- Nasty hsl function to help handle --
			local function hsvFunction()
				local M = services.mouse;
				local X,Y = 0,0
				if M.X < hsvHolder.AbsolutePosition.X then
					X = 0
				elseif M.X > hsvHolder.AbsolutePosition.X + hsvHolder.AbsoluteSize.X then
					X = hsvHolder.AbsoluteSize.X
				else
					X = M.X - hsvHolder.AbsolutePosition.X
				end
				if M.Y < hsvHolder.AbsolutePosition.Y then
					Y = 0
				elseif M.Y > hsvHolder.AbsolutePosition.Y + hsvHolder.AbsoluteSize.Y then
					Y = hsvHolder.AbsoluteSize.Y
				else
					Y = M.Y - hsvHolder.AbsolutePosition.Y
				end
				X,Y = X-7,Y -1
				outerDragA.Position = UDim2.new(0,X,0,Y)
			end
			-- HSL Frame Functionality --
			hsvHolder.InputBegan:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					local M = services.mouse;
					hsvFunction()
					hsvEvent = M.Move:connect(function()
						hsvFunction()
					end)
				end
			end)
			hsvHolder.InputEnded:connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if hsvEvent then
						hsvEvent:disconnect();
					end
				end
			end)
			
			-- Define RGB Boxes --
			
			local function createNumberOnlyBox(t)
				local box = create("TextBox",{
					MultiLine = false;
					ClearTextOnFocus = false;
					Font = Enum.Font.SourceSansLight;
					BackgroundTransparency = 1;
					ZIndex = 8;
					TextColor3 = Color3.new(1,1,1);
					Text = "";
				})
				for i,v in pairs(t)do
					box[i]=v
				end
				box.Changed:connect(function()
					box.Text = box.Text:gsub("%D","")
				end)
				return box
			end
			
			local rLabel = create('TextLabel',{
				Font = Enum.Font.SourceSansLight;
				ZIndex = 8;
				Name = "rLabel";
				Text = "R";
				TextColor3 = Color3.new(1,1,1);
				TextSize = 24;
				Size = UDim2.new(.1,0,.1,0);
				Position = UDim2.new(.15,0,.75,0);
				BackgroundTransparency = 1;
				Parent = window.Content
			})
			
			local rBox = createNumberOnlyBox({
				Name = "rBox";
				TextSize = 26;
				Text = math.floor(settings.mainColor.r*255);
				Position = UDim2.new(.15,0,0.85,0);
				Size = UDim2.new(0.1,0,0.1,0);
				Parent = window.Content;
			})	
			
			local gLabel = create('TextLabel',{
				Font = Enum.Font.SourceSansLight;
				ZIndex = 8;
				Name = "gLabel";
				Text = "G";
				TextColor3 = Color3.new(1,1,1);
				TextSize = 20;
				Size = UDim2.new(.1,0,.1,0);
				Position = UDim2.new(.35,0,.75,0);
				BackgroundTransparency = 1;
				Parent = window.Content
			})
			
			local gBox = createNumberOnlyBox({
				Name = "gBox";
				TextSize = 26;
				Text = math.floor(settings.mainColor.g*255);
				Position = UDim2.new(.35,0,0.85,0);
				Size = UDim2.new(0.1,0,0.1,0);
				Parent = window.Content;
			})	
			
			local bLabel = create('TextLabel',{
				Font = Enum.Font.SourceSansLight;
				ZIndex = 8;
				Name = "bLabel";
				Text = "B";
				TextColor3 = Color3.new(1,1,1);
				TextSize = 20;
				Size = UDim2.new(.1,0,.1,0);
				Position = UDim2.new(.55,0,.75,0);
				BackgroundTransparency = 1;
				Parent = window.Content
			})
			
			local bBox = createNumberOnlyBox({
				Name = "bBox";
				TextSize = 26;
				Text = math.floor(settings.mainColor.b*255);
				Position = UDim2.new(.55,0,0.85,0);
				Size = UDim2.new(0.1,0,0.1,0);
				Parent = window.Content;
			})
			
			-- Functions to help handle the boxes --			
			
			local function updateColorGuis()
				local h,s,l = Color3.toHSV(settings.mainColor)
				rBox.Text = math.floor(settings.mainColor.r*255);
				gBox.Text = math.floor(settings.mainColor.g*255);
				bBox.Text = math.floor(settings.mainColor.b*255);
				innerDragA.BackgroundColor3 = settings.mainColor;
				innerDragB.BackgroundColor3 = settings.mainColor;
			end
			
			local function FocusLost()
				settings.mainColor = Color3.fromRGB(tonumber(rBox.Text),tonumber(gBox.Text),tonumber(bBox.Text))
				local h,s,l = Color3.toHSV(settings.mainColor)
				updateColorGuis()
				local colorHue = Color3.toHSV(settings.mainColor)
				colorBarDrag.Position = UDim2.new(0,-2,0,(180*colorHue)-2);
				outerDragA.Position = UDim2.new(0,((45*s)*4)-7,0,((45*l)*4)-1)
			end
			rBox.FocusLost:connect(function(enter)
				if enter then
					FocusLost()
				end
			end)
			gBox.FocusLost:connect(function(enter)
				if enter then
					FocusLost()
				end
			end)
			bBox.FocusLost:connect(function(enter)
				if enter then
					FocusLost()
				end
			end)
			
			local cEvent
			indicator.Changed:connect(function(prop)
				if prop == "AbsolutePosition"then
					if cEvent then cEvent:disconnect() end
					coroutine.wrap(function()
						for i,v in pairs(hsvTable)do
							if collisionDetect(indicator,v)then
								settings.mainColor = v.BackgroundColor3
								updateColorGuis()
								cEvent = v.Changed:connect(function(prop)
									if prop == "BackgroundColor3"then
										settings.mainColor = v.BackgroundColor3
										updateColorGuis()
									end
								end)
							end
						end
					end)()
				end
			end)
			--
		end)
	end
end)

-- Color Functionality --

function alternateColors(object,property,oldColor3,newColor3,i)
	coroutine.wrap(function()
		for i = 0,1,i do
			object[property] = oldColor3:lerp(newColor3,i)
			game:service'RunService'.RenderStepped:wait()
		end
		object[property] = newColor3
	end)()
end

local Colorables = {}

local function addRecolorables(inst)
	if inst.BackgroundColor3 == colorCheck then
		table.insert(Colorables,inst)
	end
	inst.ChildAdded:connect(function(i)
		if i.BackgroundColor3 == colorCheck then
			table.insert(Colorables,i)
		end
	end)
end

Children(gui,function(inst)
	addRecolorables(inst)
end)
gui.ChildAdded:connect(function(i)
	Children(i,function(inst)
		addRecolorables(inst)
	end)
	addRecolorables(i)
end)
Children(pingui,function(inst)
	addRecolorables(inst)
end)
pingui.ChildAdded:connect(function(i)
	Children(i,function(inst)
		addRecolorables(inst)
	end)
	addRecolorables(i)
end)


game:service'RunService'.Stepped:connect(function()
	if colorCheck ~= settings.mainColor then
		coroutine.wrap(function()
			for i,v in pairs(Colorables)do
				v.BackgroundColor3 = settings.mainColor--alternateColors(v,"BackgroundColor3",colorCheck,settings.mainColor,.05)
			end
			colorCheck = settings.mainColor
		end)()
	end
end)
--Window.new({width = 250, height = 300, name='Server', icon='http://www.roblox.com/asset/?id=658933127'})

-- Handle Saving --

services.Players.PlayerRemoving:connect(function(player)
	game:service'CookiesService':SetCookieValue('nebulaBackgroundColor3',tostring(math.floor(settings.mainColor.r*255)..", "..math.floor(settings.mainColor.g*255)..", "..math.floor(settings.mainColor.b*255)));
	game:service'CookiesService':SetCookieValue('nebulaKeyBind',tostring(settings.toggleKey):sub(14))
	game:service'CookiesService':SetCookieValue('nebulaBlurLevel',tostring(settings.blurLevel))
end)

-- Handle Intro --

local Intro = createIcon('rbxassetid://950437566',{
	Size = UDim2.new(0,150,0,150);
	Position = UDim2.new(.5,-50,0,-150);
	Visible = true;
	Parent = gui;
})
local IntroText = create('TextLabel',{
	Transparency = 1;
	Text = "Created by Scripterity & finny";
	TextSize = 32;
	TextColor3 = Color3.new(1,1,1);
	Font = Enum.Font.SourceSansLight;
	Position = UDim2.new(0,0,1,0);
	Size = UDim2.new(1,0,0,30);
	Parent = Intro;
})
repeat wait()until Intro.IsLoaded
Intro:TweenPosition(UDim2.new(.5,-75,.5,-75),Enum.EasingDirection.Out,Enum.EasingStyle.Back,.5,true)
wait(.75)
tweenRecursiveTransparency(IntroText,0,-.05);
wait(5)
Intro:TweenPosition(UDim2.new(.5,-75,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Quint,.5,true)
--Intro:TweenSizeAndPosition(UDim2.new(0,100+gui.AbsoluteSize.X,0,100+gui.AbsoluteSize.X),UDim2.new(0,0,0,-((gui.AbsoluteSize.X-gui.AbsoluteSize.Y)/2)),Enum.EasingDirection.Out,Enum.EasingStyle.Back ,1,true)
tweenRecursiveTransparency(Intro,1,.05)
tweenRecursiveTransparency(IntroText,1,.05)
repeat wait()until Intro.ImageTransparency == 1
Intro:Destroy()

print("Click ".. tostring(settings.toggleKey) .." to use Nebula");