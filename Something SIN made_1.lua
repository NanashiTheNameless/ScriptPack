local Screen
for k,v in pairs(workspace:GetChildren()) do
	if v:IsA("Part") and v.Anchored and v.Name:lower():find("base") then
		Screen = v
	end
end if not Screen then return end
local Gui = Instance.new("SurfaceGui",Screen)
local X,Z = Screen.Size.X,Screen.Size.Z
Gui.Face = "Top" Gui.CanvasSize = Vector2.new(X*5,Z*5)
local Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1

local Filters = {
	"HaxSB","SB_Script",
	"object of type Players",
	"should be \"HttpPost\"",
	"ServerScriptService.oxSB","Script ended",
	"Can't insert this asset",
	"GetCoreGuiEnabled"
} Filters={}

local function Line()
	local l = Instance.new("TextLabel",Frame)
	l.Size = UDim2.new(1,0,0,24)
	l.Position = UDim2.new(0,0,1,0)
	l.Font = "SourceSansBold"
	l.TextColor3 = Color3.new()
	l.TextStrokeTransparency = 0
	l.ClipsDescendants = true
	l.TextXAlignment = "Left"
	l.BackgroundTransparency = 1
	l.BorderSizePixel = 0
	l.FontSize = "Size24" return l
end local off = UDim2.new(0,0,0,24)
local function AddLine(msg,col)
	local line = Line()
	line.Text = "  "..tostring(msg)
	line.TextStrokeColor3 = col
	for k,v in pairs(Frame:GetChildren()) do
		v.Position = v.Position - off
	end
end AddLine("Baseplate Console by einsteinK initiated",Color3.new(0,1,1))
local function AddLines(msg,col)
	for k,v in pairs(Filters) do
		if msg:find(v) then
			return
		end
	end
	if msg:match("\n") then
		local a,b = msg:match("^(.-)\n(.*)$")
		if a then msg = b AddLine(a,col) end
	else
		return AddLine(msg,col)
	end
	for v in msg:gmatch("[^\n]+") do
		AddLine("\t"..v,col)
	end
end

local con = game:GetService("LogService").MessageOut:connect(function(msg,typ)
	if typ == Enum.MessageType.MessageInfo then
		if not msg:match("^Stack") and not msg:match("Script '%[string \"CENSORED\"%]'") then
			AddLines(msg,Color3.new(0.75,0.75,0.75))
		end
	elseif typ == Enum.MessageType.MessageWarning then
		local a,b,c = msg:match("Something unexpectedly tried to set the parent of (%w+) to (%w+)"
		.." while trying to set the parent of %w+%. Current parent is (%w+)%.")
		if a then
			AddLines(("Couldn't parent %s to %s. Parent stays %s"):format(a,b,c),Color3.new(0.5,1))
		elseif not msg:match("^Type failed to learn") and not msg:match("^ClassDescriptor failed to learn") then
			AddLines(msg,Color3.new(1,0.5))
		end
	elseif typ == Enum.MessageType.MessageError then
		if not msg:match("^SendData: ") and not msg:match("^%[string \"CENSORED\"%]") then
			AddLines(msg,Color3.new(1))
		end
	elseif not msg:match("^MAIN ") and not msg:match("^ERROR ") then
		if not msg:match("^Player %d+ ") and not msg:match("STAT: ") then
			 AddLines(msg,Color3.new(1,1,1))
		end
	end
end)

while Frame:IsDescendantOf(workspace) do
	wait()
end con:disconnect() Gui:Destroy()