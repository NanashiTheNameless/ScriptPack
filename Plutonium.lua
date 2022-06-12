--[[

]]--



--Plutonium
local RunService = game:service'RunService'
local Camera = Workspace.CurrentCamera or nil
local Lighting = game.Lighting
local Version = "XV415"

local Player = game.Players.LocalPlayer or game.Players.runtoheven
local UserInterface = game:service'UserInputService'
local RF = game.ReplicatedStorage:findFirstChild("GKAttachment") or nil
local bannedlist = {"phriol","sism0xd","timostink","vonnys","NilLua","minecraftrath101","xJaffie","lolishutdown"};
local changecamonpossess = false
local Debris = game:service'Debris'
local Mouse = Player:GetMouse() or nil
local Players = game.Players
local chatAdornee = Player.Character.Head
local RbxUtility = LoadLibrary("RbxUtility")
local CMDS = {};
local InsertService = game:service'InsertService'
local math = {
    abs = math.abs,
    acos = math.acos,
    asin = math.asin,
    atan = math.atan,
    atan2 = math.atan2,
    ceil = math.ceil,
    cos = math.cos,
    cosh = math.cosh,
    deg = math.deg,
    exp = math.exp,
    floor = math.floor,
    fmod = math.fmod,
    frexp = math.frexp,
    huge = math.huge,
    ldexp = math.ldexp,
    log = math.log,
    log10 = math.log10,
    max = math.max,
    min = math.min,
    modf = math.modf,
    phi = 1.618033988749895,
    pi = math.pi,
    pow = math.pow,
    rad = math.rad,
    random = math.random,
    randomseed = math.randomseed,
    sin = math.sin,
    sinh = math.sinh,
    sqrt = math.sqrt,
    tan = math.tan,
    tanh = math.tanh,
    tau = 2 * math.pi
}
 rainbow = false














 if script.ClassName == "LocalScript" then if game.PlaceId == 178350907 then script.Parent = nil else local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) Environment.coroutine.yield() oxbox.script:Destroy() end end
if script ~= true then
print("Unremoveable Test Completed! Works! This script is immune to g/nol/all or g/nos/all!")
else
print("Unremoveable Test Failed! This script is removable by g/nol/all or g/nos/all!")
end
TaskScheduler = {};
 
local currentTime = 0
local pairs = pairs
local rbx_coroutine_create = coroutine.create
local rbx_coroutine_resume = coroutine.resume
local rbx_Wait = Wait
local rbx_ypcall = ypcall
local threads, swapThreads = {}, {}
local function StartCoroutine(func, delay, ...)
        if delay > 0 then
                rbx_Wait(delay)
        end
        local success, message = rbx_ypcall(func, ...)
        if not success then
                print("Error in a TaskScheduler coroutine: "..message)
        end
end
function TaskScheduler.GetCurrentTime()
        return currentTime
end
function TaskScheduler.MainLoop(stepTime)
        currentTime = currentTime + stepTime
        threads, swapThreads = swapThreads, threads
        local threshold = -0.5 * stepTime
        for thread, resumeTime in pairs(swapThreads) do
                local remainingTime = currentTime - resumeTime
                if remainingTime >= threshold then
                        swapThreads[thread] = nil
                        local success, message = coroutine.resume(thread, remainingTime, currentTime)
                        if not success then
                                print("Error in a TaskScheduler custom thread: "..message)
                        end
                end
        end
        threads, swapThreads = swapThreads, threads
        for thread, resumeTime in pairs(swapThreads) do
                threads[thread], swapThreads[thread] = resumeTime, nil
        end
end
-- TODO: add stack trace info to scheduling functions?
function TaskScheduler.Schedule(t, f, ...)
        coroutine.resume(coroutine.create(StartCoroutine), f, t, ...)
end
function TaskScheduler.Start(f, ...)
        coroutine.resume(coroutine.create(StartCoroutine), f, 0, ...)
end
function TaskScheduler.ScheduleCustomThread(t, f)
        threads[coroutine.create(f)] = currentTime + t
end
function TaskScheduler.Wait(duration)
        duration = tonumber(duration) or 0
        threads[coroutine.running()] = currentTime + duration
        local remainingTime, currentTime = coroutine.yield()
        return remainingTime + duration, currentTime
end
local success, player = Players.LocalPlayer
if success and player then
        RunService.RenderStepped:connect(function()
                TaskScheduler.MainLoop(1 / 60)
        end)
else
        RunService.Stepped:connect(function()
                TaskScheduler.MainLoop(1 / 30)
        end)
end
 
ChatBubble = {};
 
local FONT_CUSTOM_A_SRC, FONT_CUSTOM_A, TextAlignment, LoadFixedFont, LoadFont, DrawTextNetwork, DrawMultilineTextNetwork, ConfigureChatBubble,
 
CreateChatBubble, WrapText, chat_bubbles
FONT_CUSTOM_A_SRC = "03E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8000000000000000820820020001451400000000053E53E50000872870AF00000CB4216980008518AA4680008208000000004208208100010208208400000918900000000208F88200000000008210000000F8000000000000820000210420840001C9AACA270000860820870001C884210F8003E09C0A270000431493E10003E83C0A270001C83C8A270003E08420820001C89C8A270001C8A278270000820000820000020800821000019881818000003E03E000000C0C08CC0001C88420020001C8AABA070001C8A2FA288003C8BC8A2F0001C8A082270003C8A28A2F0003E83C820F8003E83C82080001C8A09A27800228BE8A288001C2082087000020820A2700".."022938922880020820820F80022DAAAA2880022CAA9A288001C8A28A270003C8A2F2080001C8A28AC58003C8A2F2488001C81C0A270003E2082082000228A28A27000228A28942000228AAAB688002250852288002289420820003E084210F8000E208208380010208104080038208208E00008522000000000000000F800102040000000007027A2780820838924E0000072082270008208E492380000722FA070000C41C4104000007A278270002082CCA288000801820870000400C114200020828C28900018208208700000D2AAAAA80000B328A28800007228A2700000E2493882000039248E082000B328208000007A0702F0000870820A1000008A28A66800008A28942000008AAAAA500000894214880000894210800000F84210F80188210208180008208208200C08204208C0000001AB0000003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F80".."03E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F80".."03E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F8003E8A28A2F80"
FONT_CUSTOM_A = {}
 
ChatBubble.THEME = {}
ChatBubble.THEME.COOL = {
        Name = "Cool",
        Background = Color3.new(0, 3 / 2, 0.2),
        Foreground = Color3.new(2 / 3, 1, 1)
}
ChatBubble.THEME.AQUA = {
        Name = "Aqua",
        Background = Color3.new(0, 1 / 3, 0.5),
        Foreground = Color3.new(2 / 3, 1, 1)
}
ChatBubble.THEME.CLASSIC = {
        Name = "Classic",
        Background = Color3.new(0, 0, 0),
        Foreground = Color3.new(1, 1, 1)
}
 
ChatBubble.THEME.KAYAVEN = {
        Name = "Kayaven",
        Background = Color3.new(0, 0, 0),
        Foreground = Color3.new(0, 1, 0)
}
ChatBubble.THEME.CRIMSON = {
        Name = "Crimson",
        Background = Color3.new(0, 0, 0),
        Foreground = Color3.new(0.9, 0, 0)
}
ChatBubble.THEME.WHITE = {
        Name = "White",
        Background = Color3.new(1, 1, 1),
        Foreground = Color3.new(1, 1, 1)
}
ChatBubble.THEME.GRAPE = {
        Name = "Grape",
        Background = Color3.new(0.25, 0, 0.25),
        Foreground = Color3.new(1, 2 / 3, 1)
}
ChatBubble.THEME.LIBERATION = {
        Name = "Liberation",
        Background = Color3.new(1 / 6, 3 / 7, 3 / 7),
        Foreground = Color3.new(1, 1, 1)
}
ChatBubble.THEME.PASSION = {
        Name = "Passion",
        Background = Color3.new(0.5, 0, 0),
        Foreground = Color3.new(1, 1, 1)
}
ChatBubble.THEME.PURPLE = {
        Name = "Purple",
        Background = Color3.new(0.25, 0, 0.25),
        Foreground = Color3.new(1, 1, 1)
}
ChatBubble.THEME.Black = {
        Name = "Black",
        Background = Color3.new(0, 0, 0),
        Foreground = Color3.new(1, 1, 1)

}
ChatBubble.THEME.RAINBOW = {
        Name = "Rainbow",
        Background = function(bubble_info)
                local billboard, frame = bubble_info[5], bubble_info[6]
                TaskScheduler.Start(function()
                        while billboard:IsDescendantOf(Workspace) do
                                local red, green, blue = Utility.GetRainbowRGB(tick())
                                frame.BackgroundColor3 = Color3.new(0.6 * red, 0.6 * green, 0.65 * blue)
                                RunService.Stepped:wait()
                        end
                end)
        end,
        Foreground = Color3.new(1, 1, 1)
}
ChatBubble.THEME.TEAL = {
        Name = "Teal",
        Background = Color3.new(0, 1 / 3, 0.5),
        Foreground = Color3.new(1, 1, 1)
}
 
function ChatBubble.GetTheme()
        return ChatBubble.theme_info
end
function ChatBubble.SetTheme(theme_info)
        if type(theme_info) == "string" then
                theme_info = string.lower(theme_info)
                for key, info in pairs(ChatBubble.THEME) do
                        if info.Name:lower() == theme_info:lower() then
                                ChatBubble.SetTheme(info)
                                break
                        end
                end
                return
        end
        ChatBubble.theme_info = theme_info
        ChatBubble.background_color = theme_info.Background
        ChatBubble.font = LoadFont(ChatBubble.FONT_DEFAULT, theme_info.Foreground)
        print("Theme has been set to "..theme_info.Name.." in ChatBubble")
end
 
do
local floor = math.floor
local max = math.max
local asc = string.byte
local chr = string.char
local find = string.find
local gmatch = string.gmatch
local sub = string.sub
local insert = table.insert
local type = type
local unpack = unpack
 
local PopIntegerBit
 
TextAlignment = setmetatable({
        [0] = 0,
        [1] = 1,
        [2] = 2,
        Left = 0,
        Center = 1,
        Right = 2
}, {
        __call = function(self, ...)
                local argc = #{...}
                if argc == 0 then
                        return 0
                else
                        local arg = (...)
                        local value = rawget(self, arg)
                        if value then
                                return value
                        else
                                local arg_type = type(arg)
                                error("Invalid value" .. ((arg_type == "number") and (" " .. arg) or ((arg_type == "string") and (" \"" .. arg .. "\"") or
 
"")) .. " for enum TextAlignment")
                        end
                end
        end
})
 
function PopIntegerBit(value, bit)
        if value >= bit then
                return 1, value - bit
        else
                return 0, value
        end
end
function LoadFixedFont(dest, src, height, width)
        local n = #src / 64 - 1
        local bit_index = 0
        local symbol_bits = width * height
        for i = 0, 255 do
                local char_data = {}
                for j = 1, height do
                        char_data[j] = {}
                end
                dest[i] = char_data
        end
        for i = 1, #src do
                local buffer = tonumber(sub(src, i, i), 16)
                for j = 1, 4 do
                        local code = floor(bit_index / symbol_bits)
                        local row = floor(bit_index / width) % height + 1
                        local column = bit_index % width + 1
                        dest[code][row][column], buffer = PopIntegerBit(buffer, 8)
                        buffer = buffer * 2
                        bit_index = bit_index + 1
                end
        end
end
function LoadFont(font_data, color)
        local font_obj = {}
        for character, char_data in pairs(font_data) do
                local code = character
                if type(code) ~= "number" then
                        code = asc(character)
                end
                local height = #char_data
                local width = #char_data[1]
                local pixel_h = 1 / height
                local pixel_w = 1 / width
                local pixel_size = UDim2.new(pixel_w, 0, pixel_h, 0)
                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Name = ""
                for y = 1, height do
                        local row = char_data[y]
                        for x = 1, width do
                                local opacity = row[x]
                                if opacity ~= 0 then
                                        local pixel = Instance.new("Frame", frame)
                                        pixel.BackgroundColor3 = color
                                        pixel.BorderSizePixel = 0
                                        pixel.Name = ""
                                        pixel.Position = UDim2.new(x * pixel_w, 0, y * pixel_h, 0) - pixel_size
                                        pixel.Size = pixel_size -- + UDim2.new(0, 0, 0, 1) -- correction
                                        -- ^ never mind that correction, fixed by changing font size to 12x16 instead of 13x17
                                        if opacity then
                                                pixel.BackgroundTransparency = 1 - opacity
                                        end
                                end
                        end
                end
                font_obj[code] = {frame, height, width}
        end
        return font_obj
end
function DrawTextNetwork(text, font, size, delay_offset)
        if #text == 0 then
                text = " "
        end
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1
        frame.BorderSizePixel = 0
        local objects = {}
        local length = #text
        local height = 0
        local width = 0
        for i = 1, length do
                local character = sub(text, i, i)
                local code = asc(character)
                local char_data = assert(font[code] or FONT_SYMBOL_MISSING, "FONT ERROR: '" .. character .. "' (" .. code .. ") not found")
                local char_proto, char_h, char_w = unpack(char_data)
                objects[i] = char_data
                height = max(char_h, height)
                width = width + char_w
        end
        local offset = 0
        local punctuation_delay = 0
        for i = 1, length do
                delay(delay_offset + (i + punctuation_delay - 1) / 30, function()
                        local char_data = objects[i]
                        local char_proto, char_h, char_w = unpack(char_data)
                        local char_obj = char_proto:Clone()
                        char_obj.Position = UDim2.new(offset / width, 0, 0, 0)
                        char_obj.Size = UDim2.new(char_w / width, 0, 1, 0)
                        char_obj.Parent = frame
                        offset = offset + char_w
                end)
                local character = sub(text, i, i)
                if character == "." then
                        punctionation_delay = punctuation_delay + 3
                elseif character == "?" or character == "!" then
                        punctionation_delay = punctuation_delay + 2
                elseif character == ";" or character == "~" then
                        punctionation_delay = punctuation_delay + 1
                end
        end
        local ratio = (height == 0) and (0) or (width / height)
        frame.Size = UDim2.new(size.X.Scale * ratio, size.X.Offset * ratio, size.Y.Scale, size.Y.Offset)
        return frame, height, width, (length + punctuation_delay) / 30
end
function DrawMultilineTextNetwork(text, font, size, delay_offset, ...)
        local align = TextAlignment(...)
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1
        frame.BorderSizePixel = 0
        local height = 0
        local width = 0
        local objects = {}
        for line in gmatch(text .. "\n", "([^\n]*)\n") do
                local line_obj, line_h, line_w, line_delay = DrawTextNetwork(line, font, size, delay_offset)
                insert(objects, {line_obj, line_h, line_w})
                height = height + line_h
                width = max(line_w, width)
                delay_offset = delay_offset + line_delay
        end
        local offset = 0
        for index, line_data in ipairs(objects) do
                local line_obj, line_h, line_w = unpack(line_data)
                local align_offset
                if align == TextAlignment.Left then
                        align_offset = 0
                elseif align == TextAlignment.Center then
                        align_offset = 0.5 - line_w / width / 2
                elseif align == TextAlignment.Right then
                        align_offset = 1 - line_w / width
                end
                line_obj.Position = UDim2.new(align_offset, 0, offset / height, 0)
                line_obj.Parent = frame
                offset = offset + line_h
        end
        local line_count = #objects
        local ratio = (height == 0) and (0) or (line_count * width / height)
        frame.Size = UDim2.new(size.X.Scale * ratio, size.X.Offset * ratio, size.Y.Scale * line_count, size.Y.Offset * line_count)
        return frame, height, width
end
end
 
LoadFixedFont(FONT_CUSTOM_A, FONT_CUSTOM_A_SRC, 8, 6)
ChatBubble.FONT_DEFAULT = FONT_CUSTOM_A
ChatBubble.SetTheme("Classic")
 
chat_bubbles = {}
 
function CreateChatBubble(bubble_info)
        local creation_time, text, backup = bubble_info[1], bubble_info[2], bubble_info[8]
        local billboard, frame, label
        if backup and false then
                billboard = backup:Clone()
                frame = billboard.Frame
                label = frame.Label
                bubble_info[5] = billboard
                bubble_info[6] = frame
                bubble_info[7] = label
                billboard.Parent = Workspace
        else
                label = DrawMultilineTextNetwork('[c22Chat] \n'..text, bubble_info[9], UDim2.new(0, 12, 0, 16), creation_time - time(), "Center")
                label.Name = "Label"
                label.Position = UDim2.new(0, 16, 0, 16)
                billboard = Instance.new("BillboardGui", Workspace)
                billboard.Adornee = chatAdornee
                billboard.AlwaysOnTop = true
                billboard.Size = UDim2.new(label.Size.X.Scale, label.Size.X.Offset + 32, label.Size.Y.Scale, label.Size.Y.Offset + 32)
                billboard.SizeOffset = Vector2.new(0, 0)
                billboard.StudsOffset = Vector3.new(0, 1, 0)
                frame = Instance.new("Frame", billboard)
                bubble_info[5] = billboard
                bubble_info[6] = frame
                bubble_info[7] = label
                local background_color = bubble_info[10]
                if type(background_color) == "function" then
                        background_color(bubble_info)
                else
                        frame.BackgroundColor3 = background_color
                end
                frame.BackgroundTransparency = 0.3
                frame.BorderSizePixel = 0
                frame.ClipsDescendants = true
                frame.Name = "Frame"
                frame.Size = UDim2.new(1, 0, 0, 0)
                label.Parent = frame
                -- bubble_info[8] = billboard:Clone()
        end
end
local tween_time = 0.3
function ConfigureChatBubble(bubble_info)
        local creation_time, destruction_time, billboard, frame = bubble_info[1], bubble_info[3], bubble_info[5], bubble_info[6]
        if not billboard or billboard.Parent ~= workspace then
                CreateChatBubble(bubble_info)
                billboard, frame = bubble_info[5], bubble_info[6]
        end
        if billboard.Adornee ~= chatAdornee then
                billboard.Adornee = chatAdornee
        end
        local current_time = time()
        local elapsed_time = current_time - creation_time
        local remaining_time = destruction_time - current_time
        if remaining_time < 0 then
                bubble_info[4] = false
                billboard:Destroy()
                return false
        elseif remaining_time < tween_time then
                local tween_progress = math.sin(remaining_time * math.pi / (tween_time * 2))
                frame.Size = UDim2.new(1, 0, tween_progress, 0)
        elseif elapsed_time < tween_time then
                local tween_progress = math.sin(elapsed_time * math.pi / (tween_time * 2))
                frame.Size = UDim2.new(1, 0, tween_progress, 0)
        elseif frame.Size ~= UDim2.new(1, 0, 1, 0) then
                frame.Size = UDim2.new(1, 0, 1, 0)
        end
        return true
end
function ChatBubble.MainLoop()
        local offset = 0
        local removing = {}
        for index, bubble_info in ipairs(chat_bubbles) do
                if not ConfigureChatBubble(bubble_info) then
                        removing[#removing + 1] = index - #removing
                else
                        local billboard, frame = bubble_info[5], bubble_info[6]
                        local billboard_h = billboard.Size.Y.Offset
                        local bubble_h = frame.Size.Y.Scale * billboard_h
                        offset = 8 + offset + bubble_h
                        billboard.SizeOffset = Vector2.new(0, offset / billboard_h - 0.5)
                end
        end
        for index, bubble_index in ipairs(removing) do
                table.remove(chat_bubbles, bubble_index)
        end
        RunService.Stepped:wait()
end
function WrapText(text, character_limit, line_length_limit)
        if #text > character_limit then
                text = string.sub(text, 1, character_limit - 3) .. "..."
        end
        local text_length = #text
        local line_length = 0
        local i = 0
        while i <= text_length do
                i = i + 1
                local character = string.sub(text, i, i)
                if character == "\t" then
                        local tabulation_size = 4 - line_length % 4
                        line_length = line_length + tabulation_size
                        if line_length >= line_length_limit then
                                tabulation_size = line_length - line_length_limit
                                line_length = 0
                                text_length = text_length + tabulation_size
                                text = string.sub(text, 1, i - 1) .. string.rep(" ", tabulation_size) .. "\n" .. string.sub(text, i + 1)
                                i = i + tabulation_size + 1
                        else
                                text_length = text_length + tabulation_size - 1
                                text = string.sub(text, 1, i - 1) .. string.rep(" ", tabulation_size) .. string.sub(text, i + 1)
                                i = i + tabulation_size - 1
                        end
                elseif character == "\n" then
                        line_length = 0
                else
                        line_length = line_length + 1
                        if line_length >= line_length_limit then
                                local k = i - line_length + 1
                                local success = false
                                for j = i, k, -1 do
                                        if string.match(string.sub(text, j, j), "[ \t]") then
                                                text = string.sub(text, 1, j - 1) .. "\n" .. string.sub(text, j + 1)
                                                text_length = text_length + 1
                                                success = true
                                                break
                                        end
                                end
                                if not success then
                                        text = string.sub(text, 1, i) .. "\n" .. string.sub(text, i + 1)
                                        text_length = text_length + 1
                                end
                                i = i + 1
                                line_length = 0
                        end
                end
        end
        if #text > character_limit then
                text = string.sub(text, 1, character_limit - 3) .. "..."
        end
        return text
end
function ChatBubble.Create(text, theme)
        local text = WrapText(text, 200, 30)
        local creation_time = time()
        local bubble_info = {creation_time, text, creation_time + 6 + #text / 15, true}
        local previousTheme
        if theme then
                previousTheme = ChatBubble.GetTheme()
                ChatBubble.SetTheme(theme)
        end
        bubble_info[9] = ChatBubble.font
        bubble_info[10] = ChatBubble.background_color
        if previousTheme then
                ChatBubble.SetTheme(previousTheme)
        end
        table.insert(chat_bubbles, 1, bubble_info)
end
TaskScheduler.Start(function()
        while true do
                ChatBubble.MainLoop()
        end
end)
 
PyramidCharacter = {};
 
local stock_triangle = Instance.new("WedgePart")
stock_triangle.Anchored = true
stock_triangle.BottomSurface = "Smooth"
stock_triangle.FormFactor = "Custom"
stock_triangle.Locked = true
stock_triangle.TopSurface = "Smooth"
local stock_triangle_mesh = Instance.new("SpecialMesh", stock_triangle)
stock_triangle_mesh.MeshType = "Wedge"
local triangles = {}
function PyramidCharacter.CreateTriangle(v1, v2, v3, properties, parent, index)
        local triangleInfo = triangles[index]
        local side1 = (v1 - v2).magnitude
        local side2 = (v2 - v3).magnitude
        local side3 = (v3 - v1).magnitude
        local sqrside1 = side1 * side1
        local sqrside2 = side2 * side2
        local sqrside3 = side3 * side3
        if sqrside3 + sqrside1 == sqrside2 then
                v1, v2, v3 = v1, v2, v3
        elseif sqrside1 + sqrside2 == sqrside3 then
                v1, v2, v3 = v2, v3, v1
        elseif sqrside2 + sqrside3 == sqrside1 then
                v1, v2, v3 = v3, v1, v2
        elseif sqrside1 >= sqrside2 and sqrside1 >= sqrside3 then
                v1, v2, v3 = v1, v2, v3
        elseif sqrside2 >= sqrside3 and sqrside2 >= sqrside1 then
                v1, v2, v3 = v2, v3, v1
        else
                v1, v2, v3 = v3, v1, v2
        end
        local model, part1, part2, mesh1, mesh2
        if triangleInfo then
                model, part1, part2, mesh1, mesh2 = unpack(triangleInfo)
                if not (model.Parent == parent and part1.Parent == model and part2.Parent == model and mesh1.Parent == part1 and mesh2.Parent == part2) then
                        if model.Parent then
                                model:Destroy()
                        end                    
                        model = nil
                end
        else
                triangleInfo = {}
                triangles[index] = triangleInfo
        end
        if not model then
                model = Instance.new("Model")
                part1 = stock_triangle:Clone()
                part2 = stock_triangle:Clone()
                mesh1 = part1.Mesh
                mesh2 = part2.Mesh
                part1.Parent = model
                part2.Parent = model
                triangleInfo[1] = model
                triangleInfo[2] = part1
                triangleInfo[3] = part2
                triangleInfo[4] = mesh1
                triangleInfo[5] = mesh2
        end
        for key, value in pairs(properties) do
                part1[key] = value
                part2[key] = value
        end
        local cframe = CFrame.new(v1, v2)
        local relpos = cframe:pointToObjectSpace(v3)
        cframe = cframe * CFrame.fromEulerAnglesXYZ(0, 0, -math.atan2(relpos.x, relpos.y))
        local rel1 = cframe:pointToObjectSpace(v1)
        local rel2 = cframe:pointToObjectSpace(v2)
        local rel3 = cframe:pointToObjectSpace(v3)
        local height = rel3.y
        local width1 = rel3.z
        local width2 = rel2.z - rel3.z
        local relcenter1 = Vector3.new(0, height / 2, width1 / 2)
        local center1 = cframe:pointToWorldSpace(relcenter1)
        local relcenter2 = Vector3.new(0, height / 2, width2 / 2 + width1)
        local center2 = cframe:pointToWorldSpace(relcenter2)
        height = math.abs(height)
        width1 = math.abs(width1)
        width2 = math.abs(width2)
        if not part1.Anchored then
                part1.Anchored = true
        end
        part1.Size = Vector3.new(0.2, height, width1)
        part1.CFrame = cframe * CFrame.fromEulerAnglesXYZ(0, math.pi, 0) - cframe.p + center1  
        mesh1.Scale = Vector3.new(0, height / part1.Size.y, width1 / part1.Size.z)
        if not part2.Anchored then
                part2.Anchored = true
        end
        part2.Size = Vector3.new(0.2, height, width1)
        part2.CFrame = cframe - cframe.p + center2
        mesh2.Scale = Vector3.new(0, height / part1.Size.y, width2 / part2.Size.z)
        model.Parent = parent
        return model
end
PyramidCharacter.head_properties = {BrickColor = BrickColor.new(Color3.new(1, 1, 1)), Transparency = 0.5}
PyramidCharacter.head_radius = math.pi
PyramidCharacter.center = CFrame.new(0, 10, 0)
PyramidCharacter.point1 = Vector3.new()
PyramidCharacter.point2 = Vector3.new()
PyramidCharacter.point3 = Vector3.new()
PyramidCharacter.point4 = Vector3.new()
PyramidCharacter.core_mesh_scale = Vector3.new(0.833, 0.833, 0.833)
PyramidCharacter.visible = false
function PyramidCharacter.Teleport(location)
        PyramidCharacter.point1 = location
        PyramidCharacter.point2 = location
        PyramidCharacter.point3 = location
        PyramidCharacter.point4 = location
end
local stock_core = Instance.new("Part")
stock_core.Anchored = true
stock_core.BottomSurface = "Smooth"
stock_core.Color = Color3.new(1, 1, 1)
stock_core.FormFactor = "Custom"
stock_core.Locked = true
stock_core.Name = "CubePyramid"
stock_core.Size = Vector3.new(0.5, 0.5, 0.5)
stock_core.TopSurface = "Smooth"
PyramidCharacter.stock_core = stock_core
PyramidCharacter.core = stock_core:Clone()
PyramidCharacter.Archivable = false
PyramidCharacter.core_mesh = Instance.new("BlockMesh", core)
PyramidCharacter.core_lights = {}
PyramidCharacter.coreLightCount = 1
for index = 1, PyramidCharacter.coreLightCount do
        PyramidCharacter.core_lights[index] = Instance.new("PointLight", core)
end
PyramidCharacter.camera_distance = (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude
PyramidCharacter.camera_position = Vector3.new()
Camera.Changed:connect(function(property)
        if PyramidCharacter.visible then
                if property == "CoordinateFrame" then
                        local cframe, focus = Camera.CoordinateFrame, Camera.Focus
                        local eventTime = time()
                        local connection
                        connection = Camera.Changed:connect(function()
                                connection:disconnect()
                                if eventTime == time() and Camera.Focus ~= focus then
                                        local camera_distance = PyramidCharacter.camera_distance
                                        Camera.Focus = Camera.CoordinateFrame * CFrame.new(0, 0, -camera_distance)
                                        PyramidCharacter.camera_position = (Camera.CoordinateFrame * CFrame.new(0, 0, -camera_distance)).p
                                end
                        end)
                        coroutine.yield()
                        if Camera.Focus == focus then
                                PyramidCharacter.camera_distance = (focus.p - cframe.p).magnitude
                        else
                                local camera_distance = PyramidCharacter.camera_distance
                                Camera.Focus = Camera.CoordinateFrame * CFrame.new(0, 0, -camera_distance)
                                PyramidCharacter.camera_position = (Camera.CoordinateFrame * CFrame.new(0, 0, -camera_distance)).p
                        end
                        if connection.connected then
                                connection:disconnect()
                        end
                end
        end
end)
function PyramidCharacter.Animate()
        local total_time = time()
        local core = PyramidCharacter.core
        local frame = PyramidCharacter.frame
        if PyramidCharacter.visible then
                local core_mesh = PyramidCharacter.core_mesh
                local core_lights = PyramidCharacter.core_lights
                if not frame or frame.Parent ~= core then
                        frame = Instance.new("Model")
                        frame.Archivable = false
                        frame.Parent = core
                        PyramidCharacter.frame = frame
                end
                if core.Parent ~= Workspace then
                        core = PyramidCharacter.stock_core:Clone()
                        PyramidCharacter.core = core
                        core.Archivable = false
                        core.Parent = Workspace
                        chatAdornee = core
                end
                if core_mesh.Parent ~= core then
                        core_mesh = Instance.new("BlockMesh", core)
                        PyramidCharacter.core_mesh = core_mesh
                end
                for index, core_light in ipairs(core_lights) do
                        if core_light.Parent ~= core then
                                core_light = Instance.new("PointLight", core)
                                core_lights[index] = core_light
                        end
                        local vertexColor = Vector3.new(Utility.GetRainbowRGB(total_time)) * 0.25 + Vector3.new(1, 1, 1) * 0.75
                        core_light.Color = Color3.new(vertexColor.X, vertexColor.Y, vertexColor.Z)
                        core_light.Brightness = 0.85 + 0.15 * math.random()
                        if core_light.Range ~= 30 then
                                core_light.Range = 30
                        end
                        if not core_light.Shadows then
                                core_light.Shadows = true
                        end
                end
                if core_mesh.Offset ~= Vector3.new(0, 0, 0) then
                        core_mesh.Offset = Vector3.new(0, 0, 0)
                end
                if not core.Anchored then
                        core.Anchored = true
                end
                if core.Transparency ~= 0 then
                        core.Transparency = 0
                end
                local core_mesh_scale = PyramidCharacter.core_mesh_scale
                local transition_speed = (math.sin(total_time * math.tau) + 1) / 16
                core_mesh_scale = core_mesh_scale * (1 - transition_speed) + Vector3.new(math.random() * 0.5 + 0.5, math.random() * 0.5 + 0.5, math.random()
 
* 0.5 + 0.5) * transition_speed
                core_mesh.Scale = core_mesh_scale * 2
                local center = CFrame.new(PyramidCharacter.camera_position) * CFrame.Angles(0, total_time * math.tau, 0)
                local cframe1 = CFrame.new(PyramidCharacter.head_radius, 0, 0)
                local cframe2 = CFrame.Angles(math.tau / -3, 0, 0)
                local cframe3 = CFrame.Angles(0, math.tau / 3, 0)
                local cframe4 = center * cframe3              
                local desired1 = center * CFrame.new(0, PyramidCharacter.head_radius, 0)
                local desired2 = center * cframe2 * cframe1
                local desired3 = cframe4 * cframe2 * cframe1
                local desired4 = cframe4 * cframe3 * cframe2 * cframe1
                local point1 = (PyramidCharacter.point1 * 3 + desired1.p) / 4
                local point2 = (PyramidCharacter.point2 * 3 + desired2.p) / 4
                local point3 = (PyramidCharacter.point3 * 3 + desired3.p) / 4
                local point4 = (PyramidCharacter.point4 * 3 + desired4.p) / 4
                PyramidCharacter.point1 = point1
                PyramidCharacter.point2 = point2
                PyramidCharacter.point3 = point3
                PyramidCharacter.point4 = point4
                local head_properties = PyramidCharacter.head_properties
                PyramidCharacter.CreateTriangle(point1, point2, point3, head_properties, frame, 1).Archivable = false
                PyramidCharacter.CreateTriangle(point2, point3, point4, head_properties, frame, 2).Archivable = false
                PyramidCharacter.CreateTriangle(point3, point4, point1, head_properties, frame, 3).Archivable = false
                PyramidCharacter.CreateTriangle(point4, point1, point2, head_properties, frame, 4).Archivable = false
                core.CFrame = CFrame.new((point1 + point2 + point3 + point4) / 4) * CFrame.Angles(total_time * math.tau, total_time * math.tau / 2,
 
total_time * math.tau / 3)
                PyramidCharacter.center = center
        else
                if core.Parent then
                        core:Destroy()
                end
                if frame and frame.Parent then
                        frame:Destroy()
                end
                PyramidCharacter.frame = nil
        end
end
function PyramidCharacter.MainLoop()
        PyramidCharacter.Animate()
        RunService.Stepped:wait()
end
TaskScheduler.Start(function()
        while true do
                PyramidCharacter.MainLoop()
        end
end)
 
RBXInstance = {};
 
RBXInstance.init_metatable = {}
function RBXInstance.init_metatable:__call(data)
        local instance = Instance.new(self[1])
        for key, value in pairs(data) do
                if type(key) == "number" then
                        value.Parent = instance
                else
                        instance[key] = value
                end
        end
        return instance
end
function RBXInstance.new(className)
        return setmetatable({className}, RBXInstance.init_metatable)
end
 
Utility = {};
 
function Utility.CleanLighting()
        Lighting.Ambient = Color3.new(0, 0, 0)
        Lighting.Brightness = 1
        Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
        Lighting.ColorShift_Top = Color3.new(0, 0, 0)
        Lighting.FogColor = Color3.new(0.75294125080109, 0.75294125080109, 0.75294125080109)
        Lighting.FogEnd = 100000
        Lighting.FogStart = 0
        Lighting.GeographicLatitude = 41.733299255371095
        Lighting.GlobalShadows = true
        Lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)
        Lighting.Outlines = false
        Lighting.ShadowColor = Color3.new(0.70196080207825, 0.70196080207825, 0.72156864404678)
        Lighting.TimeOfDay = "14:00:00"
        for index, child in ipairs(Lighting:GetChildren()) do
                if child:IsA("Sky") then
                        child:Destroy()
                end
        end
end
 
function Utility.GetProperty(object, field)
        return object[field]
end
 
function Utility.CaseInsensitivePattern(pattern)
        return string.gsub(pattern, "(%%?)(.)", Utility.CaseInsensitivePatternReplaceFunc)
end
function Utility.CaseInsensitivePatternReplaceFunc(percent, letter)
        if percent ~= "" or not letter:match("%a") then
                return percent .. letter
        else
                return "[" .. string.lower(letter) .. string.upper(letter) .. "]"
        end
end
function Utility.FindHumanoidClosestToRay(ray, exlusionList)
        local view = CFrame.new(ray.Origin, ray.Origin + ray.Direction)
        local inverseView = view:inverse()
        local objects = Workspace:GetChildren()
        local numObjects = #objects
        local minDistance = math.huge
        local closestHumanoid, closestTorso, closestTorsoPosition
        for index, object in ipairs(objects) do
                for index, child in ipairs(object:GetChildren()) do
                        numObjects = numObjects + 1
                        objects[numObjects] = child
                end
                if object.ClassName == "Humanoid" and object.Health > 0 then
                        local torso = object.Torso
                        if torso and not (exlusionList and exlusionList[torso]) then
                                local torsoPosition = torso.Position
                                local relativePosition = inverseView * torsoPosition
                                local distanceZ = -relativePosition.Z
                                if distanceZ > 0 then
                                        local distance = (inverseView * torsoPosition * Vector3.new(1, 1, 0)).magnitude / distanceZ
                                        if distance < 0.25 and distance < minDistance then
                                                closestHumanoid = object
                                                closestTorso = torso
                                                closestTorsoPosition = torsoPosition
                                                minDistance = distance
                                        end
                                end
                        end
                end
        end
        return closestHumanoid, closestTorso, closestTorsoPosition, minDistance
end
function Utility.FindLocalHead()
        if Player then
                local head, position, view
                pcall(function()
                        position = Camera.Focus.p
                        view = Camera.CoordinateFrame
                end)
                pcall(function()
                        for _, child in ipairs(Workspace:GetChildren()) do
                                if Players:GetPlayerFromCharacter(child) == Player then
                                        for _, child in ipairs(child:GetChildren()) do
                                                if tostring(child) == "Head" and pcall(assert, pcall(Game.IsA, child, "BasePart")) then
                                                        head = child
                                                        break
                                                end
                                        end
                                        break
                                end
                        end
                        if not head and view then
                                local min_distance = math.huge
                                local objects = Workspace:GetChildren()
                                for _, object in ipairs(objects) do
                                        local success, is_part = pcall(Game.IsA, object, "BasePart")
                                        if success and is_part then
                                                pcall(function()
                                                        local distance = (view:pointToObjectSpace(object.Position) * Vector3.new(1, 1, 0)).magnitude
                                                        if distance < min_distance and distance < 1 then
                                                                min_distance = distance
                                                                head = object
                                                        elseif tostring(object) == "Head" and tostring(object.Parent):lower():match("^" .. tostring(Player):lower()) then
                                                                min_distance = 0
                                                                head = object
                                                        end
                                                end)
                                                if min_distance < 5e-4 then
                                                        break
                                                end
                                        end
                                                pcall(function()
                                                if not object:IsA("Camera") then
                                                        for _, child in ipairs(object:GetChildren()) do
                                                                objects[#objects + 1] = child
                                                        end
                                                end
                                        end)
                                end
                        end
                end)
                return head, position, view
        end
end
function Utility.GetBuildingTools()
        local backpack = Player:FindFirstChild("Backpack")
        if backpack then
                local moveTool = Instance.new("HopperBin")
                local cloneTool = Instance.new("HopperBin")
                local deleteTool = Instance.new("HopperBin")
                moveTool.BinType = Enum.BinType.GameTool
                cloneTool.BinType = Enum.BinType.Clone
                deleteTool.BinType = Enum.BinType.Hammer
                moveTool.Parent = backpack
                cloneTool.Parent = backpack
                deleteTool.Parent = backpack
        end
end
function Utility.Rejoin()
        Workspace.Parent:service'TeleportService':Teleport(Game.PlaceId)
end
 
function Utility.BlockRobloxFilter(text)
        return string.gsub(text, ".", "%1\143")
end
 
function Utility.GetTimestamp()
        local unix_time = tick()
        local time_secs = math.floor(unix_time % 60)
        local time_mins = math.floor(unix_time / 60 % 60)
        local time_hours = math.floor(unix_time / 3600 % 24)
        return string.format("%02i:%02i:%02i", time_hours, time_mins, time_secs)
end
 
function Utility.GetRainbowRGB(hue)
        local section = hue % 1 * 3
        local secondary = 0.5 * math.pi * (section % 1)
        if section < 1 then
                return 1, 1 - math.cos(secondary), 1 - math.sin(secondary)
        elseif section < 2 then
                return 1 - math.sin(secondary), 1, 1 - math.cos(secondary)
        else
                return 1 - math.cos(secondary), 1 - math.sin(secondary), 1
        end
end
 
function Utility.SetProperty(object, field, value)
        object[field] = value
end
 
function Utility.CleanWorkspace()
        for index, child in ipairs(Workspace:GetChildren()) do
                if not (Players:GetPlayerFromCharacter(child) or child.ClassName == "Camera" or child:IsA("Script") or child.ClassName == "Terrain") then
                        pcall(child.Destroy, child)
                end
        end
        Workspace.Terrain:Clear()
        local base = Instance.new("Part")
        base.Anchored = true
        base.BrickColor = BrickColor.new("Earth green")
        base.Locked = true
        base.Name = "Base"
        base.Size = Vector3.new(512, 1.2, 512)
        base.Parent = Workspace
end
 
function Utility.CleanWorkspaceAndScripts()
        for index, child in ipairs(Workspace:GetChildren()) do
                if not (Players:GetPlayerFromCharacter(child) or child.ClassName == "Camera" or child.ClassName == "Terrain") then
                        pcall(child.Destroy, child)
                end
        end
        Workspace.Terrain:Clear()
        local base = Instance.new("Part")
        base.Anchored = true
        base.BrickColor = BrickColor.new("Earth green")
        base.Locked = true
        base.Name = "Base"
        base.Size = Vector3.new(512, 1.2, 512)
        base.Parent = Workspace
end
 
function Utility.CreateDummy(cframe, name, parent)
        local model = Instance.new("Model")
        model.Archivable = false
        model.Name = name
        local humanoid = Instance.new("Humanoid", model)
        local head = Instance.new("Part", model)
        local face = Instance.new("Decal", head)
        local head_mesh = Instance.new("SpecialMesh", head)
        local torso = Instance.new("Part", model)
        local right_arm = Instance.new("Part", model)
        local left_arm = Instance.new("Part", model)
        local right_leg = Instance.new("Part", model)
        local left_leg = Instance.new("Part", model)
        local neck = Instance.new("Motor", torso)
        local right_shoulder = Instance.new("Motor", torso)
        local left_shoulder = Instance.new("Motor", torso)
        local right_hip = Instance.new("Motor", torso)
        local left_hip = Instance.new("Motor", torso)
        head.BrickColor = BrickColor.Yellow()
        head.CFrame = cframe * CFrame.new(0, 1.5, 0)
        head.FormFactor = "Symmetric"
        head.Locked = true
        head.Name = "Head"
        head.Size = Vector3.new(2, 1, 1)
        head.TopSurface = "Smooth"
        face.Texture = "rbxasset://textures/face.png"
        head_mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
        torso.BrickColor = BrickColor.Blue()
        torso.CFrame = cframe
        torso.FormFactor = "Symmetric"
        torso.LeftSurface = "Weld"
        torso.Locked = true
        torso.RightSurface = "Weld"
        torso.Name = "Torso"
        torso.Size = Vector3.new(2, 2, 1)
        right_arm.BrickColor = BrickColor.Yellow()
        right_arm.CanCollide = false
        right_arm.CFrame = cframe * CFrame.new(1.5, 0, 0)
        right_arm.FormFactor = "Symmetric"
        right_arm.Locked = true
        right_arm.Name = "Right Arm"
        right_arm.Size = Vector3.new(1, 2, 1)
        left_arm.BrickColor = BrickColor.Yellow()
        left_arm.CanCollide = false
        left_arm.CFrame = cframe * CFrame.new(-1.5, 0, 0)
        left_arm.FormFactor = "Symmetric"
        left_arm.Locked = true
        left_arm.Name = "Left Arm"
        left_arm.Size = Vector3.new(1, 2, 1)
        right_leg.BrickColor = BrickColor.new("Br. yellowish green")
        right_leg.BottomSurface = "Smooth"
        right_leg.CanCollide = false
        right_leg.CFrame = cframe * CFrame.new(0.5, -2, 0)
        right_leg.FormFactor = "Symmetric"
        right_leg.Locked = true
        right_leg.Name = "Right Leg"
        right_leg.Size = Vector3.new(1, 2, 1)
        right_leg.TopSurface = "Smooth"
        left_leg.BrickColor = BrickColor.new("Br. yellowish green")
        left_leg.BottomSurface = "Smooth"
        left_leg.CanCollide = false
        left_leg.CFrame = cframe * CFrame.new(-0.5, -2, 0)
        left_leg.FormFactor = "Symmetric"
        left_leg.Locked = true
        left_leg.Name = "Left Leg"
        left_leg.Size = Vector3.new(1, 2, 1)
        left_leg.TopSurface = "Smooth"
        neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
        neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
        neck.Name = "Neck"
        neck.Part0 = torso
        neck.Part1 = head
        right_shoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        right_shoulder.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        right_shoulder.MaxVelocity = 0.15
        right_shoulder.Name = "Right Shoulder"
        right_shoulder.Part0 = torso
        right_shoulder.Part1 = right_arm
        left_shoulder.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        left_shoulder.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        left_shoulder.MaxVelocity = 0.15
        left_shoulder.Name = "Left Shoulder"
        left_shoulder.Part0 = torso
        left_shoulder.Part1 = left_arm
        right_hip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        right_hip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        right_hip.MaxVelocity = 0.1
        right_hip.Name = "Right Hip"
        right_hip.Part0 = torso
        right_hip.Part1 = right_leg
        left_hip.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        left_hip.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        left_hip.MaxVelocity = 0.1
        left_hip.Name = "Left Hip"
        left_hip.Part0 = torso
        left_hip.Part1 = left_leg
        humanoid.Died:connect(function()
                wait(5)
                model:Destroy()
        end)
        model.Parent = parent
        return model  
end
 
Serializer = {};
 
Serializer.NAN = math.abs(0 / 0)
 
function Serializer.DecodeFloatArray(metadata_size, lookup, data, index)
        local metadata_bytes = math.ceil(metadata_size * 0.25)
        local metadata = {string.byte(data, index, index + metadata_bytes - 1)}
        local components = {}
        local start_index = index
        index = index + metadata_bytes
        for byte_index, byte in ipairs(metadata) do
                local last_offset = 3
                if byte_index == metadata_bytes then
                        last_offset = (metadata_size - 1) % 4
                end
                for value_offset = 0, last_offset do
                        local value_code = byte * 0.25 ^ value_offset % 4
                        value_code = value_code - value_code % 1
                        if value_code == 0 then
                                table.insert(components, Serializer.DecodeFloat32(string.byte(data, index, index + 3)))
                                index = index + 4
                        else
                                table.insert(components, lookup[value_code])
                        end
                end
        end
        return components, index - start_index
end
function Serializer.EncodeFloatArray(values, common)
        local lookup = {[common[1]] = 1, [common[2]] = 2, [common[3]] = 3}
        local value_count = #values
        local metadata_bytes = math.ceil(value_count * 0.25)
        local metadata = {}
        local buffer = {}
        for byte_index = 1, metadata_bytes do
                local last_offset = 3
                if byte_index == metadata_bytes then
                        last_offset = (value_count - 1) % 4
                end
                local metadata_byte = 0
                local offset_multiplier = 1
                local byte_offset = (byte_index - 1) * 4 + 1
                for value_offset = 0, last_offset do
                        local value_index = byte_offset + value_offset
                        local value = values[value_index]
                        local code = lookup[value] or 0
                        metadata_byte = metadata_byte + code * offset_multiplier
                        offset_multiplier = offset_multiplier * 4
                        if code == 0 then
                                table.insert(buffer, Serializer.EncodeFloat32(value))
                        end
                end
                metadata[byte_index] = string.char(metadata_byte)
        end
        return table.concat(metadata) .. table.concat(buffer)
end
 
function Serializer.DecodeColor3(data, index)
        local components, size = Serializer.DecodeFloatArray(3, {0, 0.5, 1}, data, index)
        return Color3.new(unpack(components)), size
end
function Serializer.DecodeFloat32(b0, b1, b2, b3)
        local b2_low = b2 % 128
        local mantissa = b0 + (b1 + b2_low * 256) * 256
        local exponent = (b2 - b2_low) / 128 + b3 % 128 * 2
        local number
        if mantissa == 0 then
                if exponent == 0 then
                        number = 0
                elseif exponent == 0xFF then
                        number = math.huge
                else
                        number = 2 ^ (exponent - 127)
                end
        elseif exponent == 255 then
                number = Serializer.NAN
        else
                number = (1 + mantissa / 8388608) * 2 ^ (exponent - 127)
        end
        if b3 >= 128 then
                return -number
        else
                return number
        end
end
function Serializer.EncodeColor3(color3)
        return Serializer.EncodeFloatArray({color3.r, color3.g, color3.b}, {0, 0.5, 1})
end
function Serializer.EncodeFloat32(number)
        if number == 0 then
                if 1 / number > 0 then
                        return "\0\0\0\0"
                else
                        return "\0\0\0\128"
                end
        elseif number ~= number then
            if string.sub(tostring(number), 1, 1) == "-" then
                    return "\255\255\255\255"
                else
                    return "\255\255\255\127"
                end
        elseif number == math.huge then
                return "\0\0\128\127"
        elseif number == -math.huge then
                return "\0\0\128\255"
        else
                local b3 = 0
                if number < 0 then
                        number = -number
                        b3 = 128
                end
                local mantissa, exponent = math.frexp(number)
                exponent = exponent + 126
                if exponent < 0 then
                        return "\0\0\0" .. string.char(b3)
                elseif exponent >= 255 then
                        return "\0\0\128" .. string.char(b3 + 0x7F)
                else
                        local fraction = mantissa * 16777216 - 8388608 + 0.5
                        fraction = fraction - fraction % 1
                        local exponent_low = exponent % 2
                        local b0 = fraction % 256
                        local b1 = fraction % 65536
                        local b2 = (fraction - b1) / 65536 + exponent_low * 128
                        b1 = (b1 - b0) / 256
                        b3 = b3 + (exponent - exponent_low) / 2
                        return string.char(b0, b1, b2, b3)
                end
        end
end
 
LuaEnum = {};
 
LuaEnum.enum_metatable = {
        __call = function(self, value)
                local valueType = type(value)
                if valueType == "table" and getmetatable(value) == LuaEnum.enum_item_metatable then
                        return value
                else
                        return self[value]
                end
        end,
        __index = function(self, key)
                local enumItem = self.ItemsByName[key] or self.ItemsByValue[key]
                if enumItem == nil then
                        local default = self.Default
                        if default then
                                Logger.printf("Warning", "%s is not a valid EnumItem, returning default (%s)", Utility.ToString(key), tostring(default))
                                enumItem = default
                        else
                                Logger.errorf(2, "%s is not a valid EnumItem", Utility.ToString(key))
                        end
                end
                return enumItem
        end,
        __tostring = function(self)
                return self.Name
        end
}
LuaEnum.enum_item_metatable = {
        __tostring = function(self)
                return self.Enum.Name .. "." .. self.Name
        end
}
LuaEnum.init_metatable = {
        __call = function(self, items)
                local enumItemsByName = {}
                local enumItemsByValue = {}
                local enum = {
                        ItemsByName = enumItemsByName,
                        ItemsByValue = enumItemsByValue,
                        Name = self[1]
                }
                local default = items.Default
                if default ~= nil then
                        items.Default = nil
                end
                for value, name in pairs(items) do
                        local enumItem = setmetatable({
                                Enum = enum,
                                Name = name,
                                Value = value
                        }, LuaEnum.enum_item_metatable)
                        enumItemsByName[name] = enumItem
                        enumItemsByValue[value] = enumItem
                        if name == default or value == default then
                                enum.Default = enumItem
                        end
                end
                return setmetatable(enum, LuaEnum.enum_metatable)
        end
}
function LuaEnum.new(name)
        return setmetatable({name}, LuaEnum.init_metatable)
end
 
Logger = {};
 
Logger.entries = {0}
Logger.MessageType = LuaEnum.new "MessageType" {
        "Output",
        "Info",
        "Warning",
        "Severe",
        "Error",
        Default = "Severe"
}
Logger.MESSAGE_TYPE_SETTINGS = {
        { -- Output
                Font = "Arial",
                TextColor3 = Color3.new(0, 0, 0)
        },
        { -- Info
                Font = "Arial",
                TextColor3 = Color3.new(0, 0, 1)
        },
        { -- Warning
                Font = "ArialBold",
                TextColor3 = Color3.new(1, 0.5, 0)
        },
        { -- Severe/Error
                Font = "ArialBold",
                TextColor3 = Color3.new(1, 0, 0)
        }
}
Logger.MAX_ENTRIES = 160
Logger.WARNING_TRACE_ITEM_COUNT = 5
Logger.rbxPrint = getfenv(RbxUtility.CreateSignal).print
function Logger.error(level, message)
        message = message .. "\n" .. Logger.StackTraceToString(Logger.GenerateStackTrace(level + 1))
        Logger.AddEntry {Logger.MessageType.Error, message}
        error(level + 1, message)
end
function Logger.errorf(level, messageFormat, ...)
        Logger.error(level + 1, string.format(messageFormat, ...))
end
function Logger.print(messageType, message, level)
        messageType = Logger.MessageType(messageType)
        local entry = {messageType, message}
        Logger.rbxPrint(Logger.EntryToString(entry))
        Logger.AddEntry(entry)
        if level ~= false and messageType.Value >= Logger.MessageType.Warning.Value then
                local maxItems
                if messageType.Value >= Logger.MessageType.Severe.Value then
                        maxItems = math.huge
                else
                        maxItems = Logger.WARNING_TRACE_ITEM_COUNT
                end
                local trace = Logger.GenerateStackTrace((level or 1) + 1, math.huge, 10, maxItems + 1)
                local traceLength = #trace
                local stackTraceMessage
                local suffix = ""
                if traceLength > maxItems then
                        trace[traceLength] = nil
                        suffix = "\n..."
                end
                Logger.print("Info", "Stack trace:\n" .. Logger.StackTraceToString(trace) .. suffix .. "\nStack end", false)
        end
end
function Logger.printf(messageType, messageFormat, ...)
        Logger.print(messageType, string.format(messageFormat, ...), 2)
end
function Logger.AddEntry(entry)
        local entries = Logger.entries
        if entries[1] >= Logger.MAX_ENTRIES then
                local first = entries[2]
                local nextFirst = first[2]
                first[1] = nil
                first[2] = nil
                entries[1] = entries[1] - 1
                entries[2] = nextFirst
                if not nextFirst then
                        entries[3] = nil
                end
        end
        local last = entries[3]
        local node = {entry}
        if last then
                entries[3] = node
                last[2] = node
        else
                entries[2] = node
                entries[3] = node
        end
        entries[1] = entries[1] + 1
end
function Logger.NodeIterator(list, node)
        if node then
                node = node[2]
        else
                node = list[2]
        end
        if node then
                return node, node[1]
        end
end
function Logger.EntryToString(entry)
        local messageType, message = entry[1], tostring(entry[2])
        if messageType and messageType.Value >= Logger.MessageType.Info.Value then
                return messageType.Name .. ": " .. message
        else
                return message
        end
end
function Logger.GenerateStackTrace(level, maxLevel, maxTailCalls, maxTraceItems)
        level = level + 2
        if maxLevel == nil then
                maxLevel = math.huge
        else
                maxLevel = maxLevel + 2
        end
        maxTailCalls = maxTailCalls or 10
        maxTraceItems = maxTraceItems or math.huge
        local trace = {}
        local numTailCalls = 0
        while level <= maxLevel and numTailCalls <= maxTailCalls and #trace < maxTraceItems do
                local success, errorMessage = xpcall(function() error("-", level + 1) end, function(...) return ... end)
                if errorMessage == "-" then
                        numTailCalls = numTailCalls + 1
                else
                        if numTailCalls > 0 then
                                local traceSize = #trace
                                if traceSize > 0 then
                                        trace[#trace][3] = numTailCalls
                                end
                                numTailCalls = 0
                        end
                        local script, line = string.match(errorMessage, "(.*):(%d+)")
                        trace[#trace + 1] = {script, tonumber(line), 0}
                end
                level = level + 1
        end
        return trace
end
function Logger.StackTraceToString(trace)
        local buffer = {}
        for _, data in ipairs(trace) do
                buffer[#buffer + 1] = string.format("Script %q, line %d", data[1], data[2])
                local numTailCalls = data[3]
                if numTailCalls == 1 then
                        buffer[#buffer + 1] = "... 1 tail call"
                elseif numTailCalls > 1 then
                        buffer[#buffer + 1] = string.format("... %d tail calls", numTailCalls)
                end
        end
        return table.concat(buffer, "\n")
end
function Logger.MessageOutFunc(message, messageType)
        if AdvancedGUI and AdvancedGUI.Print then
                local messageTypeValue
                if messageType == Enum.MessageType.MessageOutput then
                        local tagName, untaggedMessage = string.match(message, "(%a+): (.*)")
                        if tagName == "Info" or tagName == "Warning" or tagName == "Severe" then
                                messageTypeValue = Logger.MessageType[tagName].Value
                                message = untaggedMessage
                        else
                                messageTypeValue = Logger.MessageType.Output.Value
                        end
                else
                        messageTypeValue = messageType.Value + 1
                end
                AdvancedGUI.PrintFormat(Logger.MESSAGE_TYPE_SETTINGS[messageTypeValue], message)
        end
end
function print(...)
        local args = {...}
        local buffer = {}
        for index = 1, select("#", ...) do
                buffer[index] = tostring(args[index])
        end
        local message = table.concat(buffer, "\t")
        Logger.print("Output", message)
end
 
CharacterAppearance = {};
 
CharacterAppearance.defaultAppearanceId = 2
CharacterAppearance.stock = {}
function CharacterAppearance.Create(properties)
        local id = properties.Id
        local bodyColors = Instance.new("BodyColors")
        bodyColors.HeadColor = properties.HeadColor
        bodyColors.TorsoColor = properties.TorsoColor
        bodyColors.RightArmColor = properties.RightArmColor
        bodyColors.LeftArmColor = properties.LeftArmColor
        bodyColors.RightLegColor = properties.RightLegColor
        bodyColors.LeftLegColor = properties.LeftLegColor
        local characterObjects = {bodyColors}
        local headObjects = {} 
        local data = {
                characterObjects = characterObjects,
                headObjects = headObjects,
                tshirt = properties.TShirt
        }
        for _, assetId in ipairs(properties.CharacterAssets) do
                TaskScheduler.Start(CharacterAppearance.LoadAsset, characterObjects, assetId)
        end
        for _, assetId in ipairs(properties.HeadAssets) do
                TaskScheduler.Start(CharacterAppearance.LoadAsset, headObjects, assetId)
        end
        CharacterAppearance.stock[id] = data
end
function CharacterAppearance.GetDefaultAppearance()
        return CharacterAppearance.stock[CharacterAppearance.defaultAppearanceId]
end
function CharacterAppearance.LoadAsset(objects, assetId)
        local asset = InsertService:LoadAsset(assetId)
        for _, child in ipairs(asset:GetChildren()) do
                child.Archivable = true
                table.insert(objects, child:Clone())
        end
end
CharacterAppearance.Create {
        Id = 1,
        HeadColor = BrickColor.new("Institutional white"),
        TorsoColor = BrickColor.new("Institutional white"),
        RightArmColor = BrickColor.new("Institutional white"),
        LeftArmColor = BrickColor.new("Institutional white"),
        RightLegColor = BrickColor.new("Institutional white"),
        LeftLegColor = BrickColor.new("Institutional white"),
        CharacterAssets = {
                90825058, 90825211,
                27112056, 27112052,
                27112039, 27112025,
                27112068, 38322996
        },
        HeadAssets = {
                20722130,
                8330576
        }
}
CharacterAppearance.Create {
        Id = 2,
        HeadColor = BrickColor.new("Institutional white"),
        TorsoColor = BrickColor.new("Institutional white"),
        RightArmColor = BrickColor.new("Institutional white"),
        LeftArmColor = BrickColor.new("Institutional white"),
        RightLegColor = BrickColor.new("Institutional white"),
        LeftLegColor = BrickColor.new("Institutional white"),
        CharacterAssets = {
                90825058, 90825211,
                11748356, 1029025,
                1235488, 27112056,
                27112052, 27112039,
                27112025, 27112068
        },
        HeadAssets = {
                20722130
        }
}
CharacterAppearance.Create {
        Id = 3,
        HeadColor = BrickColor.new("Pastel brown"),
        TorsoColor = BrickColor.new("Pastel brown"),
        RightArmColor = BrickColor.new("Pastel brown"),
        LeftArmColor = BrickColor.new("Pastel brown"),
        RightLegColor = BrickColor.new("White"),
        LeftLegColor = BrickColor.new("White"),
        CharacterAssets = {
                134289125, 48474356,
                100339040, 46302558,
                153955895
        },
        HeadAssets = {},
        TShirt = "rbxassetid://148856353"
}
CharacterAppearance.Create {
        Id = 4,
        HeadColor = BrickColor.new("Pastel brown"),
        TorsoColor = BrickColor.new("Pastel brown"),
        RightArmColor = BrickColor.new("Pastel brown"),
        LeftArmColor = BrickColor.new("Pastel brown"),
        RightLegColor = BrickColor.new("White"),
        LeftLegColor = BrickColor.new("White"),
        CharacterAssets = {
                129458426, 96678344, 184489190
        },
        HeadAssets = {},
        TShirt = "rbxassetid://160146697"
}
 
GraphicalEffects = {};
 
local MESH_IDS = {"rbxassetid://15310891"}
local SOUND_IDS = {"rbxassetid://2248511", "rbxassetid://1369158"}
local TEXTURE_IDS = {"rbxassetid://36527089", "rbxassetid://122610943", "rbxassetid://126561317", "rbxassetid://127033719"}
local preloadConnections = {}
local reloadingPreloads = false
function GraphicalEffects.InitPreloads()
        local preload_part = Instance.new("Part")
        GraphicalEffects.preload_part = preload_part
        preload_part.Anchored = true
        preload_part.Archivable = false
        preload_part.BottomSurface = "Smooth"
        preload_part.CanCollide = false
        preload_part.CFrame = CFrame.new(math.huge, math.huge, math.huge)
        preload_part.FormFactor = "Custom"
        preload_part.Locked = true
        preload_part.Name = "Asset Preloader"
        preload_part.Size = Vector3.new(0.2, 0.2, 0.2)
        preload_part.TopSurface = "Smooth"
        preload_part.Transparency = 1
        preloadConnections[preload_part] = preload_part.AncestryChanged:connect(GraphicalEffects.PreloadsAncestryChanged)
        for _, mesh_id in ipairs(MESH_IDS) do
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = mesh_id
                preloadConnections[mesh] = mesh.AncestryChanged:connect(GraphicalEffects.PreloadsAncestryChanged)
                mesh.Parent = preload_part
        end
        for _, sound_id in ipairs(SOUND_IDS) do
                local sound = Instance.new("Sound")
                sound.SoundId = sound_id
                sound.Volume = 0
                preloadConnections[sound] = sound.AncestryChanged:connect(GraphicalEffects.PreloadsAncestryChanged)
                sound.Parent = preload_part
        end
        for _, texture_id in ipairs(TEXTURE_IDS) do
                local decal = Instance.new("Decal")
                decal.Texture = texture_id
                preloadConnections[decal] = decal.AncestryChanged:connect(GraphicalEffects.PreloadsAncestryChanged)
                decal.Parent = preload_part
        end
        preload_part.Parent = Workspace
end
function GraphicalEffects.PreloadsAncestryChanged(child, parent)
        if not reloadingPreloads and parent ~= GraphicalEffects.preload_part and parent ~= Workspace then
                reloadingPreloads = true
                for _, connection in pairs(preloadConnections) do
                        connection:disconnect()
                        preloadConnections[_] = nil
                end
                wait(1)
                reloadingPreloads = false
                GraphicalEffects.InitPreloads()
        end
end
GraphicalEffects.InitPreloads()
-- Hyper beam
function GraphicalEffects.FireSpaceHyperBeam(target, power, duration, radius, height, deviation)
        local stepTime, gameTime = 1 / 30, TaskScheduler.GetCurrentTime()
        local frames = duration * 30
        local beamColorOffset = 0.75 * tick() -- math.random()
        local blastPressure = power * 62500 + 250000
        local beamPart = Instance.new("Part")
        local beamMesh = Instance.new("SpecialMesh", beamPart)
        local explosion = Instance.new("Explosion")
        local sound = Instance.new("Sound", beamPart)
        beamPart.Anchored = true
        beamPart.CanCollide = false
        beamPart.CFrame = CFrame.new(target, target + Vector3.new(deviation * (math.random() - 0.5), deviation * (math.random() - 0.5), height))
        beamPart.FormFactor = "Custom"
        beamPart.Locked = true
        beamPart.Size = Vector3.new(0.2, 0.2, 0.2)
        beamMesh.MeshId = "rbxassetid://15310891"
        beamMesh.MeshType = "FileMesh"
        beamMesh.TextureId = "rbxassetid://36527089"
        local beamGlowPart1 = beamPart:Clone()
        local beamGlowMesh1 = beamMesh:Clone()
        local beamGlowPart2 = beamPart:Clone()
        local beamGlowMesh2 = beamMesh:Clone()
        local beamLight = Instance.new("PointLight", beamPart)
        beamLight.Range = power * 2
        beamLight.Shadows = true
        explosion.BlastPressure = blastPressure
        explosion.BlastRadius = power
        explosion.Position = target
        sound.SoundId = "rbxassetid://2248511"
        sound.Volume = 1
        local explosionHitConnection = explosion.Hit:connect(function(part, distance)
                if not part.Anchored and part:GetMass() < power * power then
                        pcall(part.BreakJoints, part)
                        part.Color = Color3.new(Utility.GetRainbowRGB(1.5 * gameTime + beamColorOffset))
                end
        end)
        beamPart.Transparency = 0.5
        beamPart.Archivable = false
        beamGlowPart1.Transparency = 0.75
        beamGlowPart2.Transparency = 0.75
        beamGlowMesh1.Parent = beamGlowPart1
        beamGlowPart1.Parent = beamPart
        beamGlowMesh2.Parent = beamGlowPart2
        beamGlowPart2.Parent = beamPart
        beamPart.Parent = workspace
        explosion.Parent = workspace
        for frame = 1, frames do
                local progress = frame / frames
                local alpha = 1 - math.sin(0.5 * math.pi * progress)
                local scale = 0.4 * alpha
                local glowScale1 = alpha * (0.5 + 0.5 * math.sin(math.tau * (8 * gameTime + beamColorOffset)))
                local glowScale2 = alpha * (0.5 + 0.5 * math.cos(math.tau * (8 * gameTime + beamColorOffset)))
                local vertexColor =  Vector3.new(Utility.GetRainbowRGB(1.5 * gameTime + beamColorOffset))
                beamLight.Brightness = 1 - progress
                beamLight.Color = Color3.new(vertexColor.x, vertexColor.y, vertexColor.z)
                beamMesh.Scale = Vector3.new(radius * scale, 9000, radius * scale)
                beamMesh.VertexColor = vertexColor
                beamGlowMesh1.Scale = Vector3.new(1.2 * radius * glowScale1, 9000, 1.2 * radius * glowScale1)
                beamGlowMesh1.VertexColor = vertexColor
                beamGlowMesh2.Scale = Vector3.new(1.2 * radius * glowScale2, 9000, 1.2 * radius * glowScale2)
                beamGlowMesh2.VertexColor = vertexColor
                RunService.Stepped:wait()
                gameTime = TaskScheduler.GetCurrentTime()
                if frame <= 2 then
                        local explosion = Instance.new("Explosion")
                        explosion.BlastPressure = (1 - progress) * blastPressure
                        explosion.BlastRadius = (1 - progress) * power
                        explosion.Position = target
                        explosion.Parent = Workspace
                        if frame == 2 then
                                sound:Play()
                        end
                end
        end
        pcall(beamPart.Destroy, beamPart)
        explosionHitConnection:disconnect()
end
function GraphicalEffects.SpaceHyperBeam(target, power, duration, radius, height, deviation)
        TaskScheduler.Start(GraphicalEffects.FireSpaceHyperBeam, target, power or 12, duration or 1.5, radius or 6, height or 600, deviation or 20)
end
 
function GraphicalEffects.CrystalRing(data)
        data = data or {}
        local crystal_count = data.crystal_count or 10
        local crystal_color = data.crystal_color or BrickColor.new("Bright red")
        local crystal_scale = data.crystal_scale or Vector3.new(2 / 3, 2, 2 / 3)
        local fade_out_color = data.fade_out_color or BrickColor.new("Really black")
        local radius = radius or 1.25 * crystal_count / math.pi
        local spawn_duration = data.spawn_duration or 0.065
        local full_spawn_duration = spawn_duration * crystal_count
        local float_duration = data.float_duration or 5
        local wave_amplitude = data.wave_amplitude or 0.5
        local wave_period = data.wave_period or 1
        local appear_duration = data.appear_duration or 0.1
        local disappear_duration = data.disappear_duration or 0.5
        local base_part = data.base_part
        local offset_cframe
        if data.position then
                offset_cframe = CFrame.new(data.position)
                if base_part then
                        offset_cframe = base_part.CFrame:toObjectSpace(offset_cframe)
                end
        else
                offset_cframe = CFrame.new()
        end
        local crystal_template = Instance.new("Part")
        crystal_template.Anchored = true
        crystal_template.Locked = true
        crystal_template.CanCollide = false
        crystal_template.BottomSurface = "Smooth"
        crystal_template.TopSurface = "Smooth"
        crystal_template.BrickColor = crystal_color
        crystal_template.FormFactor = "Symmetric"
        crystal_template.Size = Vector3.new(1, 1, 1)
        local crystal_light = Instance.new("PointLight", crystal_template)
        crystal_light.Brightness = 0.1 / crystal_count
        crystal_light.Color = crystal_color.Color
        crystal_light.Name = "Light"
        crystal_light.Range = radius
        crystal_light.Shadows = true
        local crystal_mesh = Instance.new("SpecialMesh", crystal_template)
        crystal_mesh.MeshId = "rbxassetid://9756362"
        crystal_mesh.MeshType = "FileMesh"
        crystal_mesh.Name = "Mesh"
        crystal_mesh.Scale = crystal_scale
        local crystal_model = Instance.new("Model")
        crystal_model.Archivable = false
        crystal_model.Name = "Crystal Model"
        crystal_model.Parent = Workspace
        local crystals = {}
        local lights = {}
        local meshes = {}
        for index = 1, crystal_count do
                local crystal = crystal_template:Clone()
                crystal.Parent = crystal_model
                crystals[index] = crystal
                lights[index] = crystal.Light
                meshes[index] = crystal.Mesh
        end
        local start_time = tick()
        repeat
                local base_cframe = offset_cframe
                if base_part then
                        base_cframe = base_part.CFrame * base_cframe
                end
                local elapsed_time = tick() - start_time
                for index, crystal in ipairs(crystals) do
                        local crystal_time = elapsed_time - index * spawn_duration
                        local disappear_time = crystal_time - float_duration
                        local offset
                        if crystal_time < 0 then
                                offset = 0
                        elseif crystal_time < appear_duration then
                                offset = radius * crystal_time / appear_duration
                        else
                                offset = radius
                        end
                        local wave_offset
                        if disappear_time >= 0 then
                                local disappear_progress = disappear_time / disappear_duration
                                if disappear_progress > 1 then
                                        if crystal.Parent then
                                                crystal:Destroy()
                                        end
                                else
                                        local inverse_progress = 1 - disappear_progress
                                        local light = lights[index]
                                        local mesh = meshes[index]
                                        crystal.BrickColor = fade_out_color
                                        light.Brightness = 2 * inverse_progress
                                        light.Range = 2 * radius
                                        mesh.Scale = crystal_scale * inverse_progress
                                end
                                wave_offset = 0
                        else
                                wave_offset = wave_amplitude * math.sin(math.tau * (elapsed_time - index / crystal_count * 3) / wave_period)
                        end
                        local rotation_angle = (tick() * 0.5 + (index - 1) / crystal_count) % 1 * math.tau
                        crystal.CFrame = base_cframe * CFrame.Angles(0, rotation_angle, 0) * CFrame.new(0, wave_offset, -offset)
                end
                RunService.Stepped:wait()
        until elapsed_time >= float_duration + full_spawn_duration + disappear_duration
        if crystal_model.Parent then
                crystal_model:Destroy()
        end
end
 
GraphicalEffects.magicCircleData = {}
GraphicalEffects.MAGIC_CIRCLE_DEFAULT_OFFSET = 6.25
function GraphicalEffects.AnimateMagicCircle(data)
        local frame, direction, magic_circle_model, magic_circle_part, magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, duration,
 
stay, magic_circle_adornee_func, magic_circle_offset = unpack(data)
        frame = frame + 1
        data[1] = frame
        local transparency = (frame / duration) ^ stay
        local opacity = 1 - transparency
        if frame == duration then
                pcall(Game.Destroy, magic_circle_model)
                GraphicalEffects.magicCircleData[data] = nil
        else
                if magic_circle_model.Parent ~= Workspace then
                        pcall(Utility.SetProperty, magic_circle_model, "Parent", Workspace)
                end
                local magic_circle_adornee = magic_circle_adornee_func()
                magic_circle_position = magic_circle_adornee.Position + direction * magic_circle_offset
                local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0, math.tau * frame /
 
25)
                magic_circle_part.CFrame = magic_circle_cframe
                magic_circle_light.Brightness = opacity
                magic_circle_decal_back.Transparency = transparency
                magic_circle_decal_front.Transparency = transparency
        end
end
function GraphicalEffects.CreateMagicCircle(target, magic_circle_scale, magic_circle_image, light_color, duration, stay, magic_circle_adornee_func,
 
magic_circle_offset)
        local magic_circle_adornee = magic_circle_adornee_func()
        if magic_circle_adornee then
                local origin = magic_circle_adornee.Position
                local direction = (target - origin).unit
                local magic_circle_position = origin + direction * magic_circle_offset
                local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
                local magic_circle_model = Instance.new("Model")
                local magic_circle_part = Instance.new("Part", magic_circle_model)
                local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
                local magic_circle_light = Instance.new("PointLight", magic_circle_part)
                local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
                local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
                magic_circle_model.Archivable = false
                magic_circle_part.Anchored = true
                magic_circle_part.BottomSurface = "Smooth"
                magic_circle_part.CanCollide = false
                magic_circle_part.CFrame = magic_circle_cframe
                magic_circle_part.FormFactor = "Custom"
                magic_circle_part.Locked = true
                magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
                magic_circle_part.TopSurface = "Smooth"
                magic_circle_part.Transparency = 1
                magic_circle_mesh.Scale = Vector3.new(60, 60, 0) * magic_circle_scale
                magic_circle_light.Color = light_color
                magic_circle_light.Range = 16 * magic_circle_scale
                magic_circle_light.Shadows = true
                magic_circle_decal_back.Face = "Back"
                magic_circle_decal_back.Texture = magic_circle_image
                magic_circle_decal_front.Face = "Front"
                magic_circle_decal_front.Texture = magic_circle_image
                magic_circle_model.Parent = Workspace
                local data = {0, direction, magic_circle_model, magic_circle_part, magic_circle_light, magic_circle_decal_back, magic_circle_decal_front,
 
duration, stay, magic_circle_adornee_func, magic_circle_offset}
                GraphicalEffects.magicCircleData[data] = true
                return data
        end
end
 
GraphicalEffects.missileData = {}
GraphicalEffects.missileParts = {}
function GraphicalEffects.AnimateMissile(data)
        local frame, missilePart, targetPart, timeCreated, direction, touchedConnection, explodeRequested, bodyGyro, swooshSound, magicCircleData, lifeTime,
 
pointOnPart, flipped = unpack(data)
        frame = frame + 1
        data[1] = frame
        if flipped then
                direction = -direction
        end
        if frame <= 10 then
                if frame == 2 then
                        swooshSound:Play()
                end
                missilePart.Anchored = true
                local progress = frame / 10
                missilePart.Size = Vector3.new(1, 1, progress * 4)
                local magicCirclePart = magicCircleData[4]
                local magicCirclePosition = magicCirclePart.Position
                local missileOffset = 2 * progress * direction
                local missilePosition = magicCirclePosition + missileOffset
                missilePart.CFrame = CFrame.new(missilePosition, missilePosition + direction)
                --missilePart.Transparency = 0.5 * (1 - progress)
                if frame == 10 then
                        touchedConnection = missilePart.Touched:connect(function(hit)
                                if hit.CanCollide and hit.Parent and not GraphicalEffects.missileParts[hit] then
                                        touchedConnection:disconnect()
                                        data[7] = true
                                end
                        end)
                        data[6] = touchedConnection
                end
        else
                missilePart.Anchored = false
                local missilePosition = missilePart.Position
                local targetPosition = targetPart.CFrame * pointOnPart
                local distanceVector = targetPosition - missilePosition
                local elapsedTime = time() - timeCreated
                local targetParent = targetPart.Parent
                if explodeRequested or (targetParent and distanceVector.magnitude < 10) or elapsedTime > lifeTime then
                        GraphicalEffects.missileData[data] = nil
                        GraphicalEffects.missileParts[missilePart] = nil
                        touchedConnection:disconnect()
                        if missilePart.Parent then
                                missilePart:Destroy()
                                local explosion = Instance.new("Explosion")
                                explosion.BlastRadius = 12.5
                                explosion.Position = missilePosition
                                local explosionHitConnection = explosion.Hit:connect(function(hit, distance)
                                        local missileData = GraphicalEffects.missileParts[hit]
                                        if missileData and distance < 3 then
                                                missileData[7] = true
                                        else
                                                pcall(hit.BreakJoints, hit)
                                        end
                                end)
                                explosion.Parent = Workspace
                                TaskScheduler.Schedule(1, explosionHitConnection.disconnect, explosionHitConnection)
                        end
                else
                        local targetInWorkspace = targetPart:IsDescendantOf(Workspace)
                        if targetInWorkspace then
                                direction = distanceVector.unit
                                data[5] = direction
                        end
                        local speed = 14 + elapsedTime * 10
                        local gyroD
                        if elapsedTime < 42.5 and targetInWorkspace then
                                gyroD = 1000 - elapsedTime * 15
                        else
                                gyroD = 100
                                bodyGyro.maxTorque = Vector3.new(0, 0, 0)
                                if elapsedTime + 7.5 < lifeTime then
                                        data[11] = elapsedTime + 7.5
                                end
                        end
                        bodyGyro.D = gyroD
                        bodyGyro.cframe = CFrame.new(Vector3.new(), direction)
                        missilePart.Velocity = missilePart.CFrame.lookVector * speed
                end
        end
end
function GraphicalEffects.ShootMissile(targetPart, pointOnPart, direction, magic_circle_adornee_func, magic_circle_offset, flipped)
        if not magic_circle_offset then
                magic_circle_offset = GraphicalEffects.MAGIC_CIRCLE_DEFAULT_OFFSET
        end
        local targetPosition = targetPart.Position
        local headPosition = chatAdornee.Position
        local origin = CFrame.new(headPosition, headPosition + direction) + direction * magic_circle_offset
        local missilePart = Instance.new("Part")
        local antiGravityForce = Instance.new("BodyForce", missilePart)
        local bodyGyro = Instance.new("BodyGyro", missilePart)
        local explosionSound = Instance.new("Sound", missilePart)
        local swooshSound = Instance.new("Sound", missilePart)
        antiGravityForce.force = Vector3.new(0, 196.2 * 4, 0)
        bodyGyro.D = 1000
        bodyGyro.maxTorque = Vector3.new(1, 1, 1)
        explosionSound.PlayOnRemove = true
        explosionSound.SoundId = "rbxasset://sounds/collide.wav"
        explosionSound.Volume = 1
        missilePart.Anchored = true
        missilePart.BackSurface = "Studs"
        missilePart.BottomSurface = "Studs"
        missilePart.BrickColor = BrickColor.Red()
        missilePart.CFrame = origin
        missilePart.FormFactor = "Custom"
        missilePart.FrontSurface = "Studs"
        missilePart.LeftSurface = "Studs"
        missilePart.Locked = true
        missilePart.RightSurface = "Studs"
        missilePart.Size = Vector3.new(1, 1, 0.2)
        missilePart.TopSurface = "Studs"
        --missilePart.Transparency = 0.5
        swooshSound.Looped = true
        swooshSound.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
        swooshSound.Volume = 0.7
        local magicCircleData = GraphicalEffects.CreateMagicCircle(headPosition + direction * 1000, 0.875, "rbxassetid://127033719", Color3.new(1, 1, 1),
 
40, 4, magic_circle_adornee_func or function() return chatAdornee end, magic_circle_offset)
        local data = {0, missilePart, targetPart, time(), direction, false, false, bodyGyro, swooshSound, magicCircleData, 50, pointOnPart, flipped}
        missilePart.Parent = Workspace
        GraphicalEffects.missileData[data] = true
        GraphicalEffects.missileParts[missilePart] = data
end
 
function GraphicalEffects.CubicInterpolate(y0, y1, y2, y3, mu)
        local a0, a1, a2, a3, mu2
        mu2 = mu * mu
        a0 = y3 - y2 - y0 + y1
        a1 = y0 - y1 - a0
        a2 = y2 - y0
        a3 = y1
        return a0 * mu * mu2 + a1 * mu2 + a2 * mu + a3
end
function GraphicalEffects.JointCrap(model, cycletime)
        if model then
                local cycletime = cycletime or (0.75 * (1 + math.random() * 4))
                local offsetradius = 0.75
                local rotationoffset = math.pi
                local joints = {}
                local stack = model:GetChildren()
                while #stack ~= 0 do
                        local object = stack[#stack]
                        table.remove(stack)
                        for index, child in ipairs(object:GetChildren()) do
                                table.insert(stack, child)
                        end
                        if object:IsA("JointInstance") then
                                table.insert(joints, object)
                        end
                end
                local rot0 = {}
                local rot1 = {}
                local rot2 = {}
                local rot3 = {}
                local rot4 = {}
                for index, joint in ipairs(joints) do
                        local pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
                        local rot = Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
                        rot0[index] = {joint.C0, joint.C1}
                        rot = Vector3.new(rot.x % (math.tau), rot.y % (math.tau), rot.z % (math.tau))
                        rot2[index] = {pos, rot}
                        pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
                        rot = rot + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
                        rot = Vector3.new(rot.x % (math.tau), rot.y % (math.tau), rot.z % (math.tau))
                        rot3[index] = {pos, rot}
                        pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
                        rot = rot + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
                        rot = Vector3.new(rot.x % (math.tau), rot.y % (math.tau), rot.z % (math.tau))
                        rot4[index] = {pos, rot}
                end
                while model.Parent do
                        for i, j in ipairs(joints) do
                                local pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
                                local rot = rot4[i][2] + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
                                rot = Vector3.new(rot.x % (math.tau), rot.y % (math.tau), rot.z % (math.tau))
                                rot1[i], rot2[i], rot3[i], rot4[i] = rot2[i], rot3[i], rot4[i], {pos, rot}
                        end
                        local start = tick()
                        while true do
                                local ctime = tick()
                                local elapsed = ctime - start
                                if elapsed > cycletime then
                                        break
                                end
                                local progress = elapsed / cycletime
                                for index, joint in ipairs(joints) do
                                        local v0, v1, v2, v3, v4 = rot0[index], rot1[index], rot2[index], rot3[index], rot4[index]
                                        local p1, p2, p3, p4, r1, r2, r3, r4 = v1[1], v2[1], v3[1], v4[1], v1[2], v2[2], v3[2], v4[2]
                                        local px = GraphicalEffects.CubicInterpolate(p1.x, p2.x, p3.x, p4.x, progress)
                                        local py = GraphicalEffects.CubicInterpolate(p1.y, p2.y, p3.y, p4.y, progress)
                                        local pz = GraphicalEffects.CubicInterpolate(p1.z, p2.z, p3.z, p4.z, progress)
                                        local rx = GraphicalEffects.CubicInterpolate(r1.x, r2.x, r3.x, r4.x, progress)
                                        local ry = GraphicalEffects.CubicInterpolate(r1.y, r2.y, r3.y, r4.y, progress)
                                        local rz = GraphicalEffects.CubicInterpolate(r1.z, r2.z, r3.z, r4.z, progress)
                                        local cframe = CFrame.new(px, py, pz) * CFrame.Angles(rx, ry, rz)
                                        joint.C0 = v0[1] * cframe
                                        joint.C1 = v0[2] * cframe:inverse()
                                end
                                RunService.Stepped:wait()
                        end
                end
        end
end
 
GraphicalEffects.LASER_WIDTH = 0.15
GraphicalEffects.LASER_MAGIC_CIRCLE_DISTANCE = 6.25
GraphicalEffects.laser_data = {}
--GraphicalEffects.fragmentation = {}
function GraphicalEffects.AnimateLaserOfDeath(data)
        local frame, directionOrientation, direction, magic_circle_model, laser_part, laser_mesh, magic_circle_part, magic_circle_light,
 
magic_circle_decal_back, magic_circle_decal_front, sound, laser_scale, fragmentation_size, duration, laser_lights, laser_effects, stay, light_effects =
 
unpack(data)
        local laser_color = laser_part.Color
        frame = frame + 1
        data[1] = frame
        local transparency = (frame / duration) ^ stay
        local opacity = 1 - transparency
        if frame == 2 then
                sound:Play()
        end
        if frame == duration then
                pcall(Game.Destroy, magic_circle_model)
                GraphicalEffects.laser_data[data] = nil
        else
                if magic_circle_model.Parent ~= Workspace then
                        pcall(Utility.SetProperty, magic_circle_model, "Parent", Workspace)
                end
                local laser_distance = 0
                local origin = chatAdornee.CFrame
                if not light_effects then
                        direction = (origin * directionOrientation - origin.p).unit
                end
                local magic_circle_position = origin.p + direction * GraphicalEffects.LASER_MAGIC_CIRCLE_DISTANCE
                local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0, math.tau * frame /
 
25)
                local loop_scale = (laser_scale - 1) / 10
                for x_offset = -loop_scale, loop_scale, 2 do
                        for y_offset = -loop_scale, loop_scale, 2 do
                                local origin_position = magic_circle_cframe * Vector3.new(x_offset, y_offset, 0)
                                for index = 1, 8 do
                                        local part, position
                                        for ray_index = 1, 10 do
                                                local ray = Ray.new(origin_position + direction * (999 * (ray_index - 1)), direction * 999)
                                                part, position = Workspace:FindPartOnRay(ray, magic_circle_model)
                                                if part then
                                                        break
                                                end
                                        end
                                        if part then
                                                laser_distance = (position - origin_position).magnitude
                                                if frame % 8 == 1 and index == 1 then
                                                        Instance.new("Explosion", Workspace).Position = position
                                                end
                                                if not part:IsA("Terrain") then
                                                        pcall(part.BreakJoints, part)
                                                        local is_block = part:IsA("Part") and part.Shape == Enum.PartType.Block
                                                        local mass = part:GetMass()
                                                        local size = part.Size
                                                        if (is_block and ((size.X < fragmentation_size and size.Y < fragmentation_size and size.Z <
 
fragmentation_size) or (not part.Anchored and mass < 750))) or (not is_block and mass < 250000) then
                                                                local part_transparency = math.max(part.Transparency + 0.007 * fragmentation_size, 0.5)
                                                                if part_transparency >= 0.5 then -- temporarily to minimize debris
                                                                        pcall(Game.Destroy, part)
                                                                else
                                                                        local cframe = part.CFrame
                                                                        part.Anchored = false
                                                                        part.BrickColor = BrickColor.new("Medium stone grey")
                                                                        part.CanCollide = true
                                                                        if part:IsA("FormFactorPart") then
                                                                                part.FormFactor = "Custom"
                                                                        end
                                                                        part.Size = size - Vector3.new(0.135, 0.135, 0.135) * fragmentation_size
                                                                        part.Transparency = part_transparency
                                                                        part.CFrame = cframe + direction * 5
                                                                        part.Velocity = part.Velocity + direction * 40
                                                                end
                                                        elseif is_block then
                                                                local parts = {part}
                                                                local model = Instance.new("Model", part.Parent)
                                                                model.Name = "Fragments"
                                                                if size.X >= fragmentation_size then
                                                                        size = Vector3.new(0.5, 1, 1) * size
                                                                        local archivable = part.Archivable
                                                                        local cframe = part.CFrame
                                                                        part.FormFactor = "Custom"
                                                                        part.Size = size
                                                                        part.Archivable = true
                                                                        local part_clone = part:Clone()
                                                                        part.Archivable = archivable
                                                                        part_clone.Archivable = archivable
                                                                        part.CFrame = cframe * CFrame.new(-0.5 * size.X, 0, 0)
                                                                        part_clone.CFrame = cframe * CFrame.new(0.5 * size.X, 0, 0)
                                                                        part_clone.Parent = model
                                                                        parts[2] = part_clone
                                                                end
                                                                if size.Y >= fragmentation_size then
                                                                        size = Vector3.new(1, 0.5, 1) * size
                                                                        for part_index = 1, #parts do
                                                                                local part = parts[part_index]
                                                                                local archivable = part.Archivable
                                                                                local cframe = part.CFrame
                                                                                part.FormFactor = "Custom"
                                                                                part.Size = size
                                                                                part.Archivable = true
                                                                                local part_clone = part:Clone()
                                                                                part.Archivable = archivable
                                                                                part_clone.Archivable = archivable
                                                                                part.CFrame = cframe * CFrame.new(0, -0.5 * size.Y, 0)
                                                                                part_clone.CFrame = cframe * CFrame.new(0, 0.5 * size.Y, 0)
                                                                                part_clone.Parent = model
                                                                                table.insert(parts, part_clone)
                                                                        end
                                                                end
                                                                if size.Z >= fragmentation_size then
                                                                        size = Vector3.new(1, 1, 0.5) * size
                                                                        for part_index = 1, #parts do
                                                                                local part = parts[part_index]
                                                                                local archivable = part.Archivable
                                                                                local cframe = part.CFrame
                                                                                part.FormFactor = "Custom"
                                                                                part.Size = size
                                                                                part.Archivable = true
                                                                                local part_clone = part:Clone()
                                                                                part.Archivable = archivable
                                                                                part_clone.Archivable = archivable
                                                                                part.CFrame = cframe * CFrame.new(0, 0, -0.5 * size.Z)
                                                                                part_clone.CFrame = cframe * CFrame.new(0, 0, 0.5 * size.Z)
                                                                                part_clone.Parent = model
                                                                                table.insert(parts, part_clone)
                                                                        end
                                                                end
                                                                for _, part in ipairs(parts) do
                                                                        part:MakeJoints()
                                                                end
                                                        else
                                                                break
                                                        end
                                                end
                                        else
                                                laser_distance = 9990
                                                break
                                        end
                                end
                        end
                end
                local laser_cframe = magic_circle_cframe * CFrame.Angles(-0.5 * math.pi, 0, 0)
                local laser_width = GraphicalEffects.LASER_WIDTH * opacity * laser_scale
                local laser_mesh_offset = Vector3.new(0, 0.5 * laser_distance, 0)      
                laser_part.CFrame = laser_cframe
                if laser_effects then
                        local laser_effect_data_1, laser_effect_data_2 = laser_effects[1], laser_effects[2]
                        local laser_effect_1, laser_effect_mesh_1 = laser_effect_data_1[1], laser_effect_data_1[2]
                        local laser_effect_2, laser_effect_mesh_2 = laser_effect_data_2[1], laser_effect_data_2[2]
                        laser_effect_1.CFrame = laser_cframe
                        laser_effect_2.CFrame = laser_cframe
                        laser_effect_mesh_1.Offset = laser_mesh_offset
                        laser_effect_mesh_2.Offset = laser_mesh_offset
                        local game_time = time()
                        local effect_scale_1 = 0.5 + 0.5 * math.sin(16 * math.pi * game_time)
                        local effect_scale_2 = 0.5 + 0.5 * math.cos(16 * math.pi * game_time)
                        laser_effect_mesh_1.Scale = 5 * Vector3.new(laser_width * effect_scale_1, laser_distance, laser_width * effect_scale_1)
                        laser_effect_mesh_2.Scale = 5 * Vector3.new(laser_width * effect_scale_2, laser_distance, laser_width * effect_scale_2)
                        laser_width = laser_width * 0.25
                end
                laser_mesh.Offset = laser_mesh_offset                  
                laser_mesh.Scale = 5 * Vector3.new(laser_width, laser_distance, laser_width)
                magic_circle_part.CFrame = magic_circle_cframe
                magic_circle_light.Brightness = opacity
                magic_circle_decal_back.Transparency = transparency
                magic_circle_decal_front.Transparency = transparency
                if light_effects then
                        for index, data in ipairs(laser_lights) do
                                local laser_spotlight_part, laser_spotlight = data[1], data[2]
                                local laser_spotlight_offset = 30 * (index - 1)
                                if laser_spotlight_offset <= laser_distance then
                                        laser_spotlight_part.CFrame = magic_circle_cframe * CFrame.new(0, 0, -laser_spotlight_offset)
                                        laser_spotlight.Brightness = opacity
                                        laser_spotlight.Enabled = true
                                else
                                        laser_spotlight.Enabled = false
                                end
                        end
                end
        end
end
function GraphicalEffects.ShootLaserOfDeath(target, data)
        if chatAdornee then
                data = data or {}
                local brickcolor = data.brickcolor or BrickColor.new("Really black")
                local duration = data.duration or 40
                local fragmentation_size = data.fragmentation_size or 3
                local laser_scale = data.laser_scale or 1
                local light_color = data.light_color or Color3.new(1, 0.5, 1)
                local magic_circle_image = data.magic_circle_image or "rbxassetid://122610943"
                local magic_circle_scale = data.magic_circle_scale or 1
                local sound_volume = data.sound_volume or 1 / 3
                local special_effects = data.special_effects
                local stay = data.stay or 4
                local origin = chatAdornee.CFrame
                local directionOrientation = origin:pointToObjectSpace(target)
                local direction = (target - origin.p).unit
                local magic_circle_position = origin.p + direction * GraphicalEffects.LASER_MAGIC_CIRCLE_DISTANCE
                local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
                local magic_circle_model = Instance.new("Model")
                local laser_part = Instance.new("Part", magic_circle_model)
                local laser_mesh = Instance.new("CylinderMesh", laser_part)
                local magic_circle_part = Instance.new("Part", magic_circle_model)
                local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
                local magic_circle_light = Instance.new("PointLight", magic_circle_part)
                local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
                local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
                local sound = Instance.new("Sound", magic_circle_part)
                sound.Pitch = 1.25
                sound.SoundId = "rbxassetid://2248511"
                sound.Volume = sound_volume
                magic_circle_model.Archivable = false
                laser_part.Anchored = true
                laser_part.BottomSurface = "Smooth"
                laser_part.BrickColor = brickcolor
                laser_part.CanCollide = false
                laser_part.CFrame = magic_circle_cframe * CFrame.Angles(-0.5 * math.pi, 0, 0)
                laser_part.FormFactor = "Custom"
                laser_part.Locked = true
                laser_part.Size = Vector3.new(0.2, 0.2, 0.2)
                laser_part.TopSurface = "Smooth"
                laser_mesh.Offset = Vector3.new(0, 0, 0)
                laser_mesh.Name = "Mesh"
                laser_mesh.Scale = 5 * laser_scale * Vector3.new(GraphicalEffects.LASER_WIDTH, 0, GraphicalEffects.LASER_WIDTH)
                magic_circle_part.Anchored = true
                magic_circle_part.BottomSurface = "Smooth"
                magic_circle_part.CanCollide = false
                magic_circle_part.CFrame = magic_circle_cframe
                magic_circle_part.FormFactor = "Custom"
                magic_circle_part.Locked = true
                magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
                magic_circle_part.TopSurface = "Smooth"
                magic_circle_part.Transparency = 1
                magic_circle_mesh.Scale = Vector3.new(60, 60, 0) * magic_circle_scale
                magic_circle_light.Color = light_color
                magic_circle_light.Range = 16 * magic_circle_scale
                magic_circle_light.Shadows = true
                magic_circle_decal_back.Face = "Back"
                magic_circle_decal_back.Texture = magic_circle_image
                magic_circle_decal_front.Face = "Front"
                magic_circle_decal_front.Texture = magic_circle_image
                magic_circle_model.Parent = Workspace
                local laser_color = brickcolor.Color
                local laser_lights = {}
                local light_effects = laser_color.r + laser_color.g + laser_color.b > 0.25
                if light_effects then
                        local laser_spotlight_part_template = Instance.new("Part")
                        local laser_spotlight_light_template = Instance.new("SpotLight", laser_spotlight_part_template)
                        laser_spotlight_part_template.Anchored = true
                        laser_spotlight_part_template.Anchored = true
                        laser_spotlight_part_template.BottomSurface = "Smooth"
                        laser_spotlight_part_template.CanCollide = false
                        laser_spotlight_part_template.FormFactor = "Custom"
                        laser_spotlight_part_template.Locked = true
                        laser_spotlight_part_template.Size = Vector3.new(0.2, 0.2, 0.2)
                        laser_spotlight_part_template.TopSurface = "Smooth"
                        laser_spotlight_part_template.Transparency = 1
                        laser_spotlight_light_template.Angle = 45
                        laser_spotlight_light_template.Color = laser_color
                        laser_spotlight_light_template.Enabled = true
                        laser_spotlight_light_template.Name = "Light"
                        laser_spotlight_light_template.Range = 60
                        for index = 1, 40 do
                                local laser_spotlight_part = laser_spotlight_part_template:Clone()
                                laser_spotlight_part.CFrame = magic_circle_cframe * CFrame.new(0, 0, -30 * (index - 1))
                                laser_spotlight_part.Parent = magic_circle_model
                                laser_lights[index] = {laser_spotlight_part, laser_spotlight_part.Light}
                        end
                end
                local laser_effects
                if special_effects then
                        laser_effects = {}
                        local laser_effect_1 = laser_part:Clone()
                        laser_effect_1.BrickColor = special_effects
                        laser_effect_1.Transparency = 0.5
                        local laser_effect_2 = laser_effect_1:Clone()
                        laser_effects[1], laser_effects[2] = {laser_effect_1, laser_effect_1.Mesh}, {laser_effect_2, laser_effect_2.Mesh}
                        laser_effect_1.Parent = magic_circle_model
                        laser_effect_2.Parent = magic_circle_model
                end
                GraphicalEffects.laser_data[{0, directionOrientation, direction, magic_circle_model, laser_part, laser_mesh, magic_circle_part,
 
magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, sound, laser_scale, fragmentation_size, duration, laser_lights, laser_effects, stay,
 
light_effects}] = true
        end
end
 
function GraphicalEffects.SpawnSapientRock(position)
        local part = Instance.new("Part", Workspace)
        local size = 8 + math.random(0, 5)
        part.BottomSurface = "Smooth"
        part.TopSurface = "Smooth"
        part.Material = "Slate"
        part.Locked = true
        part.Shape = "Ball"
        part.FormFactor = "Custom"
        part.Size = Vector3.new(size, size, size)
        part.Position = position
        local bodypos = Instance.new("BodyPosition", part)
        bodypos.maxForce = Vector3.new(0, 0, 0)
        local angry = false
        local damage_ready = true
        local torso_following
        local torso_changed = -1000
        local touched_conn = part.Touched:connect(function(hit)
                local character = hit.Parent
                if character then
                        local humanoid
                        for _, child in ipairs(character:GetChildren()) do
                                if child:IsA("Humanoid") then
                                        humanoid = child
                                        break
                                end
                        end
                        if humanoid then
                                if angry then
                                        if damage_ready then
                                                damage_ready = false
                                                humanoid:TakeDamage(100)
                                                wait(1)
                                                damage_ready = true
                                                angry = false
                                                part.BrickColor = BrickColor.new("Medium stone grey")
                                        end
                                else
                                        local torso = humanoid.Torso
                                        if torso then
                                                torso_following = torso
                                                torso_changed = tick()
                                        end
                                end
                        end
                end
        end)
        TaskScheduler.Start(function()
                while part.Parent == Workspace do
                        if torso_following then
                                bodypos.position = torso_following.Position
                                if tick() - torso_changed > 60 or not torso_following.Parent then
                                        torso_following = nil
                                        bodypos.maxForce = Vector3.new(0, 0, 0)
                                        angry = false
                                        part.BrickColor = BrickColor.new("Medium stone grey")
                                else
                                        local speed = angry and Vector3.new(16, 16, 16) or Vector3.new(6, 0, 6)
                                        bodypos.maxForce = part:GetMass() * speed
                                        if part.Position.Y < -250 then
                                                part.Velocity = Vector3.new()
                                                part.Position = torso_following.Position + Vector3.new(0, 80, 0)
                                                part.BrickColor = BrickColor.new("Bright red")
                                                angry = true
                                                torso_changed = tick()
                                        end
                                end
                        end
                        RunService.Stepped:wait()
                end
                touched_conn:disconnect()
        end)
        TaskScheduler.Start(function()
                while part.Parent == Workspace do
                        wait(25 + math.random() * 10)
                        local next_size = 8 + math.random() * 5
                        if math.random(100) == 1 then
                                next_size = next_size * (2 + 6 * math.random())
                        end
                        next_size = math.floor(next_size + 0.5)
                        local start_time = tick()
                        local mesh = Instance.new("SpecialMesh", part)
                        mesh.MeshType = "Sphere"
                        repeat
                                local elapsed_time = tick() - start_time
                                local alpha = math.cos(elapsed_time * math.pi * 0.5)
                                local interpolated_size = size * alpha + next_size * (1 - alpha)
                                local size_vector = Vector3.new(interpolated_size, interpolated_size, interpolated_size)
                                local cframe = part.CFrame
                                part.Size = size_vector
                                part.CFrame = cframe
                                mesh.Scale = size_vector / part.Size
                                RunService.Stepped:wait()
                        until tick() - start_time >= 1
                        mesh:Destroy()
                        local cframe = part.CFrame
                        part.Size = Vector3.new(next_size, next_size, next_size)
                        part.CFrame = cframe
                        size = next_size
                end
        end)
end
 
function GraphicalEffects.MainLoop()
        RunService.Stepped:wait()
        for data in pairs(GraphicalEffects.magicCircleData) do
                GraphicalEffects.AnimateMagicCircle(data)
        end
        for data in pairs(GraphicalEffects.laser_data) do
                GraphicalEffects.AnimateLaserOfDeath(data)
        end
        for data in pairs(GraphicalEffects.missileData) do
                GraphicalEffects.AnimateMissile(data)
        end
end
TaskScheduler.Start(function()
        while true do
                GraphicalEffects.MainLoop()
        end
end)
 
PlayerControl = {};
 
PlayerControl.fly_acceleration = 10
PlayerControl.fly_basespeed = 250
PlayerControl.fly_speed = PlayerControl.fly_basespeed
PlayerControl.featherfallEnabled = true
PlayerControl.pushable = false
PlayerControl.rolling = false
PlayerControl.rollingAngle = 0
PlayerControl.rollingOffset = 0
PlayerControl.rollingMaxOffset = 3
PlayerControl.rollingSpeed = 1 / 50
PlayerControl.characterEnabled = false
PlayerControl.characterMode = "normal"
local character = nil
local flying, flyingMomentum, flyingTilt = false, Vector3.new(), 0
local pose, regeneratingHealth, jumpDebounce = "Standing", false, false
-- TODO: make local variables public
local model, bodyColors, leftArmMesh, leftLegMesh, rightArmMesh, rightLegMesh, torsoMesh, wildcardHat, wildcardHandle, wildcardMesh, pants, shirt, humanoid,
 
head, leftArm, leftLeg, rightArm, rightLeg, torso, rootPart, rootJoint, face, soundFreeFalling, soundGettingUp, soundRunning, leftHip, leftShoulder,
 
rightHip, rightShoulder, neck, wildcardWeld, feetPart, feetWeld, feetTouchInterest, bodyGyro, bodyVelocity, headMesh, torsoLight
local AnimateCharacter
local UserInterface = game:service'UserInputService'
local chatBubbles = {}
local chatCharacterLimit = 240
function PlayerControl.CreateCharacter()
        local characterMode = PlayerControl.characterMode
        if characterMode == "normal" then
                if not PlayerControl.characterEnabled then
                        return
                end
                local appearance = CharacterAppearance.GetDefaultAppearance()
                local active = true
                local torsoCFrame = (torso and torso.CFrame) or PlayerControl.torso_cframe or CFrame.new(0, 10, 0)
                if torsoCFrame.p.Y < -450 then
                        torsoCFrame = CFrame.new(0, 10, 0)
                end
                local rootPartCFrame = (rootPart and rootPart.CFrame) or PlayerControl.torso_cframe or CFrame.new(0, 10, 0)
                if rootPartCFrame.p.Y < -450 then
                        rootPartCFrame = CFrame.new(0, 10, 0)
                end
                local cameraCFrame = Camera.CoordinateFrame
                local connections = {}
                local feetTouching = {}
                local previousWalkSpeed = 0
                local prevLeftHip, prevLeftShoulder, prevRightHip, prevRightShoulder = leftHip, leftShoulder, rightHip, rightShoulder
                model = Instance.new("Model")
                humanoid = Instance.new("Humanoid", model)
                head = Instance.new("Part", model)
                leftArm = Instance.new("Part", model)
                leftLeg = Instance.new("Part", model)
                rightArm = Instance.new("Part", model)
                rightLeg = Instance.new("Part", model)
                torso = Instance.new("Part", model)
                rootPart = Instance.new("Part", model)
                soundFallingDown = Instance.new("Sound", head)
                soundFreeFalling = Instance.new("Sound", head)
                soundGettingUp = Instance.new("Sound", head)
                soundJumping = Instance.new("Sound", head)
                soundRunning = Instance.new("Sound", head)
                leftHip = Instance.new("Motor", torso)
                leftShoulder = Instance.new("Motor", torso)
                rightHip = Instance.new("Motor", torso)
                rightShoulder = Instance.new("Motor", torso)
                neck = Instance.new("Motor", torso)
                rootJoint = Instance.new("Motor", rootPart)
                feetPart = Instance.new("Part", model)
                feetWeld = Instance.new("Weld", torso)
                bodyGyro = Instance.new("BodyGyro", rootPart)
                bodyVelocity = Instance.new("BodyVelocity", rootPart)
                model.Archivable = false
                model.Name = user_name or Player.Name
                model.PrimaryPart = head
                humanoid.LeftLeg = leftLeg
                humanoid.RightLeg = rightLeg
                humanoid.Torso = rootPart
                head.CFrame = torsoCFrame * CFrame.new(0, 1.5, 0)
                head.FormFactor = "Symmetric"
                head.Locked = true
                head.Name = "Head"
                head.Size = Vector3.new(2, 1, 1)
                head.TopSurface = "Smooth"
                leftArm.CanCollide = false
                leftArm.CFrame = torsoCFrame * CFrame.new(-1.5, 0, 0)
                leftArm.FormFactor = "Symmetric"
                leftArm.Locked = true
                leftArm.Name = "Left Arm"
                leftArm.Size = Vector3.new(1, 2, 1)
                leftLeg.BottomSurface = "Smooth"
                leftLeg.CanCollide = false
                leftLeg.CFrame = torsoCFrame * CFrame.new(-0.5, -2, 0)
                leftLeg.FormFactor = "Symmetric"
                leftLeg.Locked = true
                leftLeg.Name = "Left Leg"
                leftLeg.Size = Vector3.new(1, 2, 1)
                leftLeg.TopSurface = "Smooth"
                rightArm.CanCollide = false
                rightArm.CFrame = torsoCFrame * CFrame.new(1.5, 0, 0)
                rightArm.FormFactor = "Symmetric"
                rightArm.Locked = true
                rightArm.Name = "Right Arm"
                rightArm.Size = Vector3.new(1, 2, 1)
                rightLeg.BottomSurface = "Smooth"
                rightLeg.CanCollide = false
                rightLeg.CFrame = torsoCFrame * CFrame.new(0.5, -2, 0)
                rightLeg.FormFactor = "Symmetric"
                rightLeg.Locked = true
                rightLeg.Name = "Right Leg"
                rightLeg.Size = Vector3.new(1, 2, 1)
                rightLeg.TopSurface = "Smooth"
                torso.CFrame = torsoCFrame
                torso.FormFactor = "Symmetric"
                torso.LeftSurface = "Weld"
                torso.Locked = true
                torso.RightSurface = "Weld"
                torso.Name = "Torso"
                torso.Size = Vector3.new(2, 2, 1)
                rootPart.BottomSurface = "Smooth"
                rootPart.BrickColor = BrickColor.Blue()
                rootPart.CFrame = rootPartCFrame
                rootPart.FormFactor = "Symmetric"
                rootPart.LeftSurface = "Weld"
                rootPart.Locked = true
                rootPart.RightSurface = "Weld"
                rootPart.Name = "HumanoidRootPart"
                rootPart.Size = Vector3.new(2, 2, 1)
                rootPart.TopSurface = "Smooth"
                rootPart.Transparency = 1
                soundFreeFalling.Archivable = false
                soundFreeFalling.SoundId = "rbxasset://sounds/swoosh.wav"
                soundGettingUp.Archivable = false
                soundGettingUp.SoundId = "rbxasset://sounds/hit.wav"
                soundRunning.Archivable = false
                soundRunning.SoundId = "rbxasset://sounds/bfsl-minifigfoots1.mp3"
                soundRunning.Looped = true
                leftHip.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                leftHip.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                leftHip.MaxVelocity = 0.1
                leftHip.Name = "Left Hip"
                leftHip.Part0 = torso
                leftHip.Part1 = leftLeg
                leftShoulder.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                leftShoulder.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                leftShoulder.MaxVelocity = 0.15
                leftShoulder.Name = "Left Shoulder"
                leftShoulder.Part0 = torso
                leftShoulder.Part1 = leftArm
                rightHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                rightHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                rightHip.MaxVelocity = 0.1
                rightHip.Name = "Right Hip"
                rightHip.Part0 = torso
                rightHip.Part1 = rightLeg
                rightShoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                rightShoulder.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                rightShoulder.MaxVelocity = 0.15
                rightShoulder.Name = "Right Shoulder"
                rightShoulder.Part0 = torso
                rightShoulder.Part1 = rightArm
                if prevLeftHip then
                        leftHip.CurrentAngle = prevLeftHip.CurrentAngle
                        leftHip.DesiredAngle = prevLeftHip.DesiredAngle
                end
                if prevLeftShoulder then
                        leftShoulder.CurrentAngle = prevLeftShoulder.CurrentAngle
                        leftShoulder.DesiredAngle = prevLeftShoulder.DesiredAngle
                end
                if prevRightHip then
                        rightHip.CurrentAngle = prevRightHip.CurrentAngle
                        rightHip.DesiredAngle = prevRightHip.DesiredAngle
                end
                if prevRightShoulder then
                        rightShoulder.CurrentAngle = prevRightShoulder.CurrentAngle
                        rightShoulder.DesiredAngle = prevRightShoulder.DesiredAngle
                end
                neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
                neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
                neck.Name = "Neck"
                neck.Part0 = torso
                neck.Part1 = head
                rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
                rootJoint.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
                rootJoint.Name = "RootJoint"
                rootJoint.Part0 = rootPart
                rootJoint.Part1 = torso
                feetPart.BottomSurface = "Smooth"
                feetPart.CanCollide = false
                feetPart.CFrame = torsoCFrame * CFrame.new(0, -3.1, 0)
                feetPart.FormFactor = "Custom"
                feetPart.Locked = true
                feetPart.Name = "Platform"
                feetPart.Size = Vector3.new(1.8, 0.2, 0.8)
                feetPart.TopSurface = "Smooth"
                feetPart.Transparency = 1
                feetWeld.C0 = CFrame.new(0, -3, 0)
                feetWeld.C1 = CFrame.new(0, 0.1, 0)
                feetWeld.Name = "PlatformWeld"
                feetWeld.Part0 = torso
                feetWeld.Part1 = feetPart
                table.insert(connections, feetPart.Touched:connect(function(hit)
                        feetTouching[hit] = true
                end))
                table.insert(connections, feetPart.TouchEnded:connect(function(hit)
                        feetTouching[hit] = nil
                end))
                feetTouchInterest = feetPart:FindFirstChild("TouchInterest")
                bodyGyro.D = 3250
                bodyGyro.P = 400000
                bodyGyro.maxTorque = Vector3.new(1000000000, 0, 1000000000)
                bodyVelocity.P = 5000
                bodyVelocity.maxForce = Vector3.new(0, 0, 0)
                bodyVelocity.velocity = Vector3.new(0, 0, 0)
                torsoLight = Instance.new("PointLight", torso)
                torsoLight.Brightness = 0.4
                torsoLight.Color = Color3.new(1, 1, 1)
                torsoLight.Range = 16
                torsoLight.Shadows = true
                local ff1, ff2, ff3, ff4, ff5, ff6, ff7, ff8, ff9 = Instance.new("ForceField", head), Instance.new("ForceField", leftArm), Instance.new("ForceField", leftLeg), Instance.new("ForceField", rightArm), Instance.new("ForceField", rightLeg), Instance.new("ForceField", torso), Instance.new("ForceField", wildcardHandle), Instance.new("ForceField", feetPart), Instance.new("ForceField", rootPart)
                local forcefields = {[ff1] = head, [ff2] = leftArm, [ff3] = leftLeg, [ff4] = rightArm, [ff5] = rightLeg, [ff6] = torso, [ff7] = wildcardHandle, [ff8] = feetPart, [ff9] = rootPart}    
                local objects = {[humanoid] = true, [head] = true, [leftArm] = true, [leftLeg] = true, [rightArm] = true, [rightLeg] = true, [torso] = true, [rootPart] = true, [rootJoint] = true, [soundFreeFalling] = true, [soundGettingUp] = true, [soundRunning] = true, [leftHip] = true, [leftShoulder] = true, [rightHip] = true, [rightShoulder] = true, [neck] = true, [feetPart] = true, [feetWeld] = true, [feetTouchInterest] = true, [bodyGyro] = true, [bodyVelocity] = true, [ff1] = true, [ff2] = true, [ff3] = true, [ff4] = true, [ff5] = true, [ff6] = true, [ff7] = true, [ff8] = true, [ff9] = true}            
                local tshirtUrl = appearance.tshirt
                if tshirtUrl then
                        local tshirt = Instance.new("Decal", torso)
                        tshirt.Name = "roblox"
                        tshirt.Texture = tshirtUrl
                        objects[tshirt] = true
                end
                for _, template in ipairs(appearance.characterObjects) do
                        local object = template:Clone()
                        local newObjects = {object}
                        for _, object in ipairs(newObjects) do
                                objects[object] = true
                                for _, child in ipairs(object:GetChildren()) do
                                        table.insert(newObjects, child)
                                end                            
                        end
                        if object:IsA("BodyColors") then
                                head.BrickColor = object.HeadColor
                                leftArm.BrickColor = object.LeftArmColor
                                leftLeg.BrickColor = object.LeftLegColor
                                rightArm.BrickColor = object.RightArmColor
                                rightLeg.BrickColor = object.RightLegColor
                                torso.BrickColor = object.TorsoColor
                        elseif object:IsA("Hat") then
                                local handle = object:FindFirstChild("Handle")
                                if handle and handle:IsA("BasePart") then
                                        local weld = Instance.new("Weld", head)
                                        weld.C0 = CFrame.new(0, 0.5, 0)
                                        local attachmentPos = object.AttachmentPos
                                        local attachmentRight = object.AttachmentRight
                                        local attachmentUp = object.AttachmentUp
                                        local attachmentForward = object.AttachmentForward
                                        weld.C1 = CFrame.new(attachmentPos.X, attachmentPos.Y, attachmentPos.Z,
                                                                                 attachmentRight.X, attachmentUp.X, -attachmentForward.X,
                                                                                 attachmentRight.Y, attachmentUp.Y, -attachmentForward.Y,
                                                                                 attachmentRight.Z, attachmentUp.Z, -attachmentForward.Z)
                                        weld.Name = "HeadWeld"
                                        weld.Part0 = head
                                        weld.Part1 = handle
                                        handle.Parent = model
                                        local antiGravity = Instance.new("BodyForce", handle)
                                        antiGravity.force = Vector3.new(0, handle:GetMass() * 196.2, 0)
                                        objects[object] = false
                                        object.Parent = nil
                                        objects[weld] = true
                                end
                        end
                        object.Parent = model
                end
                local facePresent = false
                local headMeshPresent = false
                for _, template in ipairs(appearance.headObjects) do
                        local object = template:Clone()
                        local newObjects = {object}
                        for _, object in ipairs(newObjects) do
                                objects[object] = true
                                for _, child in ipairs(object:GetChildren()) do
                                        table.insert(newObjects, child)
                                end                            
                        end
                        if object:IsA("DataModelMesh") then
                                headMeshPresent = true
                        elseif object:IsA("Decal") then
                                facePresent = true
                        end
                        object.Parent = head
                end
                if not facePresent then
                        local face = Instance.new("Decal", head)
                        face.Texture = "rbxasset://textures/face.png"
                        objects[face] = true
                end
                if not headMeshPresent then
                        local headMesh = Instance.new("SpecialMesh", head)
                        headMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
                        objects[headMesh] = true
                end
                table.insert(connections, model.DescendantAdded:connect(function(object)
                        local success, is_localscript = pcall(Game.IsA, object, "LocalScript")
                        if success and is_localscript then
                                pcall(Utility.SetProperty, object, "Disabled", true)
                                local changed_connection = pcall(object.Changed.connect, object.Changed, function(property)
                                        if property == "Disabled" and not object.Disabled then
                                                pcall(Utility.SetProperty, object, "Disabled", true)
                                                object:Destroy()
                                        end
                                end)
                        end
                        if not objects[object] then
                                object:Destroy()
                        end
                end))
                model.Parent = Workspace
                Player.Character = model
                Camera.CameraSubject = humanoid
                Camera.CameraType = "Track"
                Camera.CoordinateFrame = cameraCFrame
                local IsStanding
                local RegenerateHealth
                local ResetCharacter
                function IsStanding()
                        return not not next(feetTouching)
                end
                function RegenerateHealth()
                        if humanoid.Health < 1 then
                                humanoid.Health = 100
                        elseif not regeneratingHealth then
                                regeneratingHealth = true
                                local elapsedTime = wait(1)
                                regeneratingHealth = false
                                if humanoid.Health < 100 then
                                        humanoid.Health = math.min(humanoid.Health + elapsedTime, 100)
                                end
                        end
                end
                function ResetCharacter()
                        for index, connection in ipairs(connections) do
                                connection:disconnect()
                        end
                        active = false
                end
                table.insert(connections, model.AncestryChanged:connect(ResetCharacter))
                table.insert(connections, model.DescendantRemoving:connect(function(object)
                        local parent = forcefields[object]
                        if parent then
                                forcefields[object] = nil
                                local new_forcefield = Instance.new("ForceField")
                                forcefields[new_forcefield] = parent
                                objects[new_forcefield] = true
                                new_forcefield.Parent = parent
                        elseif objects[object] then
                                ResetCharacter()
                        end
                end))
                table.insert(connections, humanoid.HealthChanged:connect(RegenerateHealth))
                table.insert(connections, humanoid.Climbing:connect(function() pose = "Climbing" end))
                table.insert(connections, humanoid.FallingDown:connect(function(state)  pose = "FallingDown" end))
                table.insert(connections, humanoid.FreeFalling:connect(function(state) pose = "FreeFall" if state then soundFreeFalling:Play() else
 
soundFreeFalling:Pause() end end))
                table.insert(connections, humanoid.GettingUp:connect(function(state) pose = "GettingUp" if state then soundGettingUp:Play() else
 
soundGettingUp:Pause() end end))
                table.insert(connections, humanoid.PlatformStanding:connect(function() pose = "PlatformStanding" end))
                table.insert(connections, humanoid.Seated:connect(function() pose = "Seated" end))
                table.insert(connections, humanoid.Swimming:connect(function(speed) if speed > 0 then pose = "Swimming" else pose = "Standing" end end))
                local previousRootPartCFrame = rootPart.CFrame
                TaskScheduler.Start(function()
                        while active do
                                local totalTime = TaskScheduler.GetCurrentTime()
                                local stepTime = 1 / 60
                                if not PlayerControl.characterEnabled then
                                        ResetCharacter()
                                        break
                                end
                                torsoLight.Brightness = 0.5 + 0.15 * math.sin(totalTime * 0.75 * math.pi)
                                local featherfallEnabled = PlayerControl.IsFeatherfallEnabled()
                                local rootPartCFrame = rootPart.CFrame
                                if not jumpDebounce and UserInterface:IsKeyDown(Enum.KeyCode.Space) then
                                        if humanoid.Sit then
                                                humanoid.Sit = false
                                        end
                                        if IsStanding() then
                                                jumpDebounce = true
                                                pose = "Jumping"
                                                rootPart.Velocity = Vector3.new(rootPart.Velocity.X, 50, rootPart.Velocity.Z)
                                                torso.Velocity = Vector3.new(torso.Velocity.X, 50, torso.Velocity.Z)                                           
                                                TaskScheduler.Schedule(1, function()
                                                        if pose == "Jumping" then
                                                                pose = "FreeFall"
                                                        end
                                                        jumpDebounce = false
                                                        humanoid.Jump = false
                                                end)
                                        end
                                end
                                local cameraCFrame = Camera.CoordinateFrame
                                local cameraDirection = cameraCFrame.lookVector
                                if flying then
                                        if PlayerControl.rolling then
                                                local rootPartCFrame = rootPart.CFrame
                                                local speed = (rootPartCFrame - rootPartCFrame.p):pointToObjectSpace(rootPart.Velocity).Y
                                                local decay = 0.5 ^ stepTime
                                                if math.abs(speed) <= 50 then
                                                        PlayerControl.rollingAngle = (((PlayerControl.rollingAngle + 0.5) % 1 - 0.5) * decay) % 1
                                                        PlayerControl.rollingOffset = PlayerControl.rollingOffset * decay
                                                else
                                                        PlayerControl.rollingAngle = (PlayerControl.rollingAngle + stepTime * speed * PlayerControl.rollingSpeed) % 1
                                                        PlayerControl.rollingOffset = (PlayerControl.rollingOffset + PlayerControl.rollingMaxOffset * (1 / decay - 1)) * decay
                                                end
                                                rootJoint.C0 = (CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.Angles(PlayerControl.rollingAngle * 2 * math.pi, 0, 0)) * CFrame.new(0, -PlayerControl.rollingOffset, 0)
                                        else
                                                rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
                                                PlayerControl.rollingAngle = 0
                                                PlayerControl.rollingOffset = 0
                                        end
                                        rightShoulder.MaxVelocity = 0.5
                                        leftShoulder.MaxVelocity = 0.5
                                        rightShoulder.DesiredAngle = 0
                                        leftShoulder.DesiredAngle = 0
                                        rightHip.DesiredAngle = 0
                                        leftHip.DesiredAngle = 0
                                        bodyGyro.D = 500
                                        bodyGyro.P = 1e6
                                        bodyGyro.maxTorque = Vector3.new(1e6, 1e6, 1e6)
                                        bodyVelocity.P = 1250
                                        bodyVelocity.maxForce = Vector3.new(1e6, 1e6, 1e6)
                                        local movementRight = 0
                                        local movementForward = 0
                                        local movementUp = 0
                                        if UserInterface:IsKeyDown(Enum.KeyCode.A) and not UserInterface:IsKeyDown(Enum.KeyCode.D) then
                                                movementRight = -1
                                        elseif UserInterface:IsKeyDown(Enum.KeyCode.D) then
                                                movementRight = 1
                                        end
                                        if UserInterface:IsKeyDown(Enum.KeyCode.W) then
                                                movementUp = 0.2
                                                if not UserInterface:IsKeyDown(Enum.KeyCode.S) then
                                                        movementForward = -1
                                                end
                                        elseif UserInterface:IsKeyDown(Enum.KeyCode.S) then
                                                movementForward = 1
                                        end
                                        local movement = PlayerControl.fly_acceleration * cameraCFrame:vectorToWorldSpace(Vector3.new(movementRight, movementUp, movementForward))
                                        local previousMomentum = flyingMomentum
                                        local previousTilt = flyingTilt
                                        flyingMomentum = movement + flyingMomentum * (1 - PlayerControl.fly_acceleration / PlayerControl.fly_speed)
                                        flyingTilt = ((flyingMomentum * Vector3.new(1, 0, 1)).unit:Cross((previousMomentum * Vector3.new(1, 0, 1)).unit)).Y
                                        if flyingTilt ~= flyingTilt or flyingTilt == math.huge then
                                                flyingTilt = 0
                                        end
                                        local absoluteTilt = math.abs(flyingTilt)
                                        if absoluteTilt > 0.06 or absoluteTilt < 0.0001 then
                                                if math.abs(previousTilt) > 0.0001 then
                                                        flyingTilt = previousTilt * 0.9
                                                else
                                                        flyingTilt = 0
                                                end
                                        else
                                                flyingTilt = previousTilt * 0.77 + flyingTilt * 0.25
                                        end
                                        previousTilt = flyingTilt
                                        if flyingMomentum.magnitude < 0.1 then
                                                flyingMomentum = Vector3.new(0, 0, 0)
--                                              bodyGyro.cframe = cameraCFrame
                                        else
                                                local momentumOrientation = CFrame.new(Vector3.new(0, 0, 0), flyingMomentum)
                                                local tiltOrientation = CFrame.Angles(0, 0, -20 * flyingTilt)
                                                bodyGyro.cframe = momentumOrientation * tiltOrientation * CFrame.Angles(-0.5 * math.pi * math.min(flyingMomentum.magnitude / PlayerControl.fly_speed, 1), 0, 0)
                                        end
                                        bodyVelocity.velocity = flyingMomentum + Vector3.new(0, 0.15695775618683547, 0)
                                        rootPart.Velocity = flyingMomentum
                                        previousMomentum = flyingMomentum
                                else
                                        rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
                                        PlayerControl.rollingAngle = 0
                                        PlayerControl.rollingOffset = 0
                                        bodyGyro.D = 3250
                                        bodyGyro.P = 400000
                                        bodyVelocity.P = 5000
                                        local cameraDirection = cameraCFrame.lookVector
                                        local walkDirection = Vector3.new(0, 0, 0)
                                        local walkSpeed = 16
                                        if UserInterface:IsKeyDown(Enum.KeyCode.W) then
                                                if UserInterface:IsKeyDown(Enum.KeyCode.A) then
                                                        walkDirection = Vector3.new(cameraDirection.X + cameraDirection.Z, 0, cameraDirection.Z - cameraDirection.X).unit
                                                elseif UserInterface:IsKeyDown(Enum.KeyCode.D) then
                                                        walkDirection = Vector3.new(cameraDirection.X - cameraDirection.Z, 0, cameraDirection.Z + cameraDirection.X).unit
                                                else
                                                        walkDirection = Vector3.new(cameraDirection.X, 0, cameraDirection.Z).unit
                                                end
                                        elseif UserInterface:IsKeyDown(Enum.KeyCode.S) then
                                                if UserInterface:IsKeyDown(Enum.KeyCode.A) then
                                                        walkDirection = Vector3.new(-cameraDirection.X + cameraDirection.Z, 0, -cameraDirection.Z - cameraDirection.X).unit
                                                elseif UserInterface:IsKeyDown(Enum.KeyCode.D) then
                                                        walkDirection = Vector3.new(-cameraDirection.X - cameraDirection.Z, 0, -cameraDirection.Z + cameraDirection.X).unit
                                                else
                                                        walkDirection = Vector3.new(-cameraDirection.X, 0, -cameraDirection.Z).unit
                                                end
                                        elseif UserInterface:IsKeyDown(Enum.KeyCode.A) then
                                                walkDirection = Vector3.new(cameraDirection.Z, 0, -cameraDirection.X).unit
                                        elseif UserInterface:IsKeyDown(Enum.KeyCode.D) then
                                                walkDirection = Vector3.new(-cameraDirection.Z, 0, cameraDirection.X).unit
                                        else
                                                walkSpeed = 0
                                        end
                                        if walkSpeed ~= previousWalkSpeed then
                                                if walkSpeed > 0 then
                                                        soundRunning:Play()
                                                else
                                                        soundRunning:Pause()
                                                end
                                        end
                                        if walkSpeed > 0 then
                                                if pose ~= "Jumping" then
                                                        if IsStanding() then
                                                                pose = "Running"
                                                        else
                                                                pose = "FreeFall"
                                                        end
                                                end
                                                bodyGyro.cframe = CFrame.new(Vector3.new(), walkDirection)
                                                bodyGyro.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
                                                bodyVelocity.maxForce = Vector3.new(1000000, maxForceY, 1000000)
                                        else
                                                if pose ~= "Jumping" then
                                                        if IsStanding() then
                                                                pose = "Standing"
                                                        else
                                                                pose = "FreeFall"
                                                        end
                                                end
                                                -- TODO: find and fix bug that causes torso to rotate back to some angle
                                                bodyGyro.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000) -- Vector3.new(1000000000, 0, 1000000000)
                                                if PlayerControl.pushable then
                                                        bodyVelocity.maxForce = Vector3.new(0, 0, 0)
                                                else
                                                        bodyVelocity.maxForce = Vector3.new(1000000, 0, 1000000)
                                                end
                                        end
                                        if featherfallEnabled then
                                                local velocity = rootPart.Velocity
                                                if velocity.Y > 50 then
                                                        rootPart.Velocity = Vector3.new(velocity.X, 50, velocity.Z)
                                                elseif velocity.Y < -50 then
                                                        rootPart.Velocity = Vector3.new(velocity.X, -50, velocity.Z)
                                                end
                                                local distanceVector = rootPartCFrame.p - previousRootPartCFrame.p
                                                local offsetX, offsetY, offsetZ = distanceVector.X, distanceVector.Y, distanceVector.Z
                                                local MAX_MOVEMENT = 50 * 0.03333333507180214
                                                if offsetX > MAX_MOVEMENT then
                                                        offsetX = MAX_MOVEMENT
                                                elseif offsetX < -MAX_MOVEMENT then
                                                        offsetX = -MAX_MOVEMENT
                                                end
                                                if offsetY > MAX_MOVEMENT then
                                                        offsetY = MAX_MOVEMENT
                                                elseif offsetY < -MAX_MOVEMENT then
                                                        offsetY = -MAX_MOVEMENT
                                                end
                                                if offsetZ > MAX_MOVEMENT then
                                                        offsetZ = MAX_MOVEMENT
                                                elseif offsetZ < -MAX_MOVEMENT then
                                                        offsetZ = -MAX_MOVEMENT
                                                end
                                                local offset = Vector3.new(offsetX, offsetY, offsetZ)
                                                if offset ~= distanceVector then
                                                        rootPartCFrame = previousRootPartCFrame + offset
                                                        --rootPart.CFrame = rootPartCFrame
                                                end
                                        end
                                        local walkingVelocity = walkDirection * walkSpeed
                                        bodyVelocity.velocity = walkingVelocity
                                        if not jumpDebounce and math.abs(rootPart.Velocity.Y) <= 0.1 then
                                                rootPart.Velocity = Vector3.new(walkingVelocity.X, rootPart.Velocity.Y, walkingVelocity.Z)
                                        end
                                        previousWalkSpeed = walkSpeed
                                        if pose == "Jumping" or jumpDebounce then
                                                rightShoulder.MaxVelocity = 0.5
                                                leftShoulder.MaxVelocity = 0.5
                                                rightShoulder.DesiredAngle = 3.14
                                                leftShoulder.DesiredAngle = -3.14
                                                rightHip.DesiredAngle = 0
                                                leftHip.DesiredAngle = 0
                                        elseif pose == "FreeFall" then
                                                rightShoulder.MaxVelocity = 0.5
                                                leftShoulder.MaxVelocity = 0.5
                                                rightShoulder.DesiredAngle = 3.14
                                                leftShoulder.DesiredAngle = -3.14
                                                rightHip.DesiredAngle = 0
                                                leftHip.DesiredAngle = 0
                                        elseif pose == "Seated" then
                                                rightShoulder.MaxVelocity = 0.15
                                                leftShoulder.MaxVelocity = 0.15
                                                rightShoulder.DesiredAngle = 3.14 / 2
                                                leftShoulder.DesiredAngle = -3.14 / 2
                                                rightHip.DesiredAngle = 3.14 / 2
                                                leftHip.DesiredAngle = -3.14 / 2
                                        else
                                                local climbFudge = 0
                                                local amplitude
                                                local frequency
                                                if pose == "Running" then
                                                        rightShoulder.MaxVelocity = 0.15
                                                        leftShoulder.MaxVelocity = 0.15
                                                        amplitude = 1
                                                        frequency = 9
                                                elseif (pose == "Climbing") then
                                                        rightShoulder.MaxVelocity = 0.5
                                                        leftShoulder.MaxVelocity = 0.5
                                                        amplitude = 1
                                                        frequency = 9
                                                        climbFudge = 3.14
                                                else
                                                        amplitude = 0.1
                                                        frequency = 1
                                                end
                                                local desiredAngle = amplitude * math.sin(totalTime * frequency)
                                                rightShoulder.DesiredAngle = desiredAngle + climbFudge
                                                leftShoulder.DesiredAngle = desiredAngle - climbFudge
                                                rightHip.DesiredAngle = -desiredAngle
                                                leftHip.DesiredAngle = -desiredAngle
                                        end
                                end
                                previousRootPartCFrame = rootPartCFrame
                                RunService.RenderStepped:wait()
                        end
                        if model.Parent ~= nil then
                                model.Parent = nil
                        end
                        PlayerControl.CreateCharacter()
                end)
                humanoid.Health = 100
                character = model
                chatAdornee = head
        elseif characterMode == "pyramid" then
                if PlayerControl.characterEnabled then
                        Camera.CameraType = "Fixed"
                        PyramidCharacter.camera_distance = (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude
                        PyramidCharacter.camera_position = Camera.Focus.p
                        PyramidCharacter.Teleport(Camera.Focus.p)
                        PyramidCharacter.visible = true
                        Player.Character = nil
                else
                        PyramidCharacter.visible = false
                end
        end
end
function PlayerControl.GetCharacter()
        return character
end
function PlayerControl.GetHead()
        local characterMode = PlayerControl.characterMode
        if characterMode == "normal" then
                return head
        elseif characterMode == "pyramid" then
                return PyramidCharacter.core
        end
end
function PlayerControl.GetHumanoid()
        return humanoid
end
function PlayerControl.GetRootPart()
        return rootPart
end
function PlayerControl.GetTorso()
        return torso
end
function PlayerControl.IsEnabled()
        return PlayerControl.characterEnabled
end
function PlayerControl.IsFeatherfallEnabled()
        return PlayerControl.featherfallEnabled
end
function PlayerControl.IsPushable()
        return PlayerControl.pushable
end
function PlayerControl.IsRolling()
        return PlayerControl.rolling
end
function PlayerControl.ResetCharacter()
        if character and character.Parent then
                character.Parent = nil
        end
        PyramidCharacter.visible = false
end
function PlayerControl.SetEnabled(state, no_animation)
        state = not not state
        if state ~= PlayerControl.characterEnabled then
                PlayerControl.characterEnabled = state
                local characterMode = PlayerControl.characterMode
                if characterMode == "normal" then
                        local torso = PlayerControl.GetRootPart()
                        local rootPart = PlayerControl.GetRootPart()
                        if rootPart then
                                if PlayerControl.characterEnabled then
                                        local torso_cframe = Camera.Focus:toWorldSpace(PlayerControl.hide_torso_object_cframe)
                                        PlayerControl.torso_cframe = torso_cframe
                                        torso.CFrame = torso_cframe
                                        rootPart.CFrame = torso_cframe
                                else
                                        PlayerControl.hide_torso_object_cframe = Camera.Focus:toObjectSpace(rootPart.CFrame)
                                end
                        else
                                PlayerControl.torso_cframe = Camera.Focus
                        end
                        if PlayerControl.characterEnabled then
                                PlayerControl.CreateCharacter()
                                RunService.Stepped:wait()
                                coroutine.yield()
                                if not no_animation then
                                        GraphicalEffects.CrystalRing({base_part = PlayerControl.GetTorso(), crystal_color = BrickColor.new("Institutional white"), float_duration = 2})
                                end            
                        else
                                Player.Character = nil
                                Camera.CameraType = "Fixed"
                                if not no_animation then
                                        GraphicalEffects.CrystalRing({position = PlayerControl.GetTorso().Position, crystal_color = BrickColor.new("Institutional white"), float_duration = 2})
                                end
                        end
                else
                        if state then
                                PlayerControl.CreateCharacter()
                                RunService.Stepped:wait()
                                coroutine.yield()
                                if not no_animation then
                                        GraphicalEffects.CrystalRing({base_part = PyramidCharacter.core, crystal_color = BrickColor.new("Institutional white"), float_duration = 2})
                                end
                        else
                                PyramidCharacter.visible = false
                                if not no_animation then
                                        GraphicalEffects.CrystalRing({position = PyramidCharacter.core.Position, crystal_color = BrickColor.new("Institutional white"), float_duration = 2})
                                end
                        end
                end
        end
end
function PlayerControl.SetFeatherfallEnabled(state)
        state = not not state
        if state ~= PlayerControl.featherfallEnabled then
                PlayerControl.featherfallEnabled = state
                if state then
                        Logger.print("Info", "Featherfall enabled in PlayerControl")
                else
                        Logger.print("Info", "Featherfall disabled in PlayerControl")
                end
        end
end
function PlayerControl.SetPushable(state)
        state = not not state
        if state ~= PlayerControl.pushable then
                PlayerControl.pushable = state
                if state then
                        Logger.print("Info", "Pushing enabled in PlayerControl")
                else
                        Logger.print("Info", "Pushing disabled in PlayerControl")
                end
        end
end
function PlayerControl.SetRolling(state)
        state = not not state
        if state ~= PlayerControl.rolling then
                PlayerControl.rolling = state
                if state then
                        Logger.print("Info", "Rolling fly mode enabled in PlayerControl")
                else
                        Logger.print("Info", "Rolling fly mode disabled in PlayerControl")
                end
        end
end
function PlayerControl.StartFlying()
        PlayerControl.fly_speed = PlayerControl.fly_basespeed
        if torso then
                flyingMomentum = torso.Velocity + torso.CFrame.lookVector * 3 + Vector3.new(0, 10, 0)
        else
                flyingMomentum = Vector3.new()
        end
        flyingTilt = 0
        flying = true
end
function PlayerControl.StopFlying()
        if bodyGyro.cframe then
                local lookVector = bodyGyro.cframe.lookVector
                if lookVector.X ~= 0 or lookVector.Z ~= 0 then
                        bodyGyro.cframe = CFrame.new(Vector3.new(), Vector3.new(lookVector.X, 0, lookVector.Z))
                end
        end
        flying = false
end
local previousTime = 0
 
ControllerCommands = {};
 
ControllerCommands = {};
 
ControllerCommands.BALEFIRE_SPEED = 40
function ControllerCommands.BalefireAtMouse()
        local head = chatAdornee
        if head then
                local target = Mouse.Hit.p
                local origin = head.Position
                local direction = (target - origin).unit
                local explosionCount = 0
                local animation_frame = 0
                local magic_circle_position = origin + direction * 4
                local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
                local magic_circle_part = Instance.new("Part")
                local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
                local magic_circle_light = Instance.new("PointLight", magic_circle_part)
                local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
                local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
                magic_circle_part.Anchored = true
                magic_circle_part.Archivable = false
                magic_circle_part.BottomSurface = "Smooth"
                magic_circle_part.CanCollide = false
                magic_circle_part.CFrame = magic_circle_cframe
                magic_circle_part.FormFactor = "Custom"
                magic_circle_part.Locked = true
                magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
                magic_circle_part.TopSurface = "Smooth"
                magic_circle_part.Transparency = 1
                magic_circle_mesh.Scale = Vector3.new(60, 60, 0)
                magic_circle_light.Color = Color3.new(1, 0.5, 1)
                magic_circle_light.Range = 16
                magic_circle_light.Shadows = true
                magic_circle_decal_back.Face = "Back"
                magic_circle_decal_back.Texture = "rbxassetid://122610943"
                magic_circle_decal_front.Face = "Front"
                magic_circle_decal_front.Texture = "rbxassetid://122610943"
                local function NextExplosion()
                        explosionCount = explosionCount + 1
                        Instance.new("Explosion", Workspace).Position = origin + direction * (explosionCount * 8 + 4)
                end
                local function AnimateMagicCircle()
                        animation_frame = animation_frame + 1
                        local transparency = (animation_frame / 40) ^ 3
                        if animation_frame == 40 then
                                pcall(Game.Destroy, magic_circle_part)
                        else
                                if magic_circle_part.Parent ~= Workspace then
                                        pcall(Utility.SetProperty, magic_circle_part, "Parent", Workspace)
                                end
                                head = PlayerControl.GetHead()
                                if head then
                                        magic_circle_position = head.Position + direction * 4
                                end
                                magic_circle_part.CFrame = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0,
 
math.tau * animation_frame / 40 * 1.5)
                                magic_circle_light.Brightness = 1 - transparency
                                magic_circle_decal_back.Transparency = transparency
                                magic_circle_decal_front.Transparency = transparency
                        end
                end
                magic_circle_part.Parent = Workspace
                for i = 1, 40 do
                        Delay((i - 1) / ControllerCommands.BALEFIRE_SPEED, NextExplosion)
                        Delay((i - 1) / 30, AnimateMagicCircle)
                end
                for i = 1, 20 do
                        Delay((i - 1) / ControllerCommands.BALEFIRE_SPEED, NextExplosion)
                end
        end
end
function ControllerCommands.ControlRandomDummy()
        local dummies = {}
        local numDummies = 0
        for _, character in ipairs(Workspace:GetChildren()) do
                local name = tostring(character)
                if name == "???" or name == "Dummy" then
                        local head, humanoid
                        for _, child in ipairs(character:GetChildren()) do
                                local className = child.ClassName
                                if className == "Part" and tostring(child) == "Head" then
                                        head = child
                                        if humanoid then
                                                break
                                        end
                                elseif className == "Humanoid" then
                                        if child.Health > 0 then
                                                humanoid = child
                                                if head then
                                                        break
                                                end
                                        else
                                                break
                                        end
                                end
                        end
                        if head and humanoid then
                                numDummies = numDummies + 1
                                dummies[numDummies] = {character, head, humanoid}
                        end
                end
        end
        if numDummies > 0 then
                local dummy = dummies[math.random(numDummies)]
                Player.Character = dummy[1]
                chatAdornee = dummy[2]
                Camera.CameraSubject = dummy[3]
                Camera.CameraType = "Track"
        end
end
function ControllerCommands.Decalify(textures, exclusion)
        local objects = Workspace:GetChildren()
        for _, object in ipairs(objects) do
                if not exclusion[object] then
                        for _, child in ipairs(object:GetChildren()) do
                                objects[#objects + 1] = child
                        end
                        if object:IsA("BasePart") then
                                local texture = textures[math.random(#textures)]
                                local face_left = Instance.new("Decal", object)
                                face_left.Face = Enum.NormalId.Left
                                face_left.Texture = texture
                                local face_right = Instance.new("Decal", object)
                                face_right.Face = Enum.NormalId.Right
                                face_right.Texture = texture
                                local face_bottom = Instance.new("Decal", object)
                                face_bottom.Face = Enum.NormalId.Bottom
                                face_bottom.Texture = texture
                                local face_top = Instance.new("Decal", object)
                                face_top.Face = Enum.NormalId.Top
                                face_top.Texture = texture
                                local face_front = Instance.new("Decal", object)
                                face_front.Face = Enum.NormalId.Front
                                face_front.Texture = texture
                                local face_back = Instance.new("Decal", object)
                                face_back.Face = Enum.NormalId.Back
                                face_back.Texture = texture
                        end
                end
        end
end
 
function ControllerCommands.ExplodeAtMouse()
        local explosion = Instance.new("Explosion")
        explosion.Position = Mouse.Hit.p
        explosion.Parent = Workspace
end
function ControllerCommands.LaserAtMouse()
        GraphicalEffects.ShootLaserOfDeath(Mouse.Hit.p)
end
function ControllerCommands.BigLaser(target)
        GraphicalEffects.ShootLaserOfDeath(target, {brickcolor = BrickColor.new("New Yeller"), duration = 80, fragmentation_size = 6,laser_scale = 30, light_color = Color3.new(1, 0.5, 0), magic_circle_image = "rbxassetid://126561317", magic_circle_scale = 1.5, sound_volume = 1,special_effects = BrickColor.new("Deep orange"), stay = 2})
end
function ControllerCommands.BigLaserAtMouse()
        ControllerCommands.BigLaser(Mouse.Hit.p)
end
function ControllerCommands.ShootMissile(targetPart, pointOnPart, direction)
        GraphicalEffects.ShootMissile(targetPart, pointOnPart, direction)
end
function ControllerCommands.ShootMissileAtMouse(amount, spread, delayTime)
        local exclusionList = {}
        local playerHead = PlayerControl.GetHead()
        local playerTorso = PlayerControl.GetTorso()
        if playerHead and playerTorso then
                exclusionList[playerTorso] = true
                local humanoid, torso = Utility.FindHumanoidClosestToRay(Mouse.UnitRay, exclusionList)
                local targetPart, pointOnPart
                if humanoid and torso then
                        targetPart, pointOnPart = torso, Vector3.new()
                else
                        local target = Mouse.Target
                        if target then
                                targetPart, pointOnPart = target, target.CFrame:pointToObjectSpace(Mouse.Hit.p)
                        else
                                return
                        end
                end
                if targetPart then
                        local direction = (Mouse.Hit.p - playerHead.Position).unit
                        delayTime = delayTime or 0
                        for index = 1, amount do
                                local angles = math.tau * (index - 0.5) * spread / amount * Vector3.new(math.random() - 0.5, math.random() - 0.5,math.random() - 0.5).unit
                                TaskScheduler.Schedule(delayTime * (index - 1), ControllerCommands.ShootMissile, targetPart, pointOnPart, CFrame.Angles(angles.X, angles.Y, angles.Z) * direction)
                        end
                end
        end
end
function ControllerCommands.ShootMissileAroundMouse(amount, offset, delayTime)
        local exclusionList = {}
        local playerHead = PlayerControl.GetHead()
        local playerTorso = PlayerControl.GetTorso()
        if playerHead and playerTorso then
                exclusionList[playerTorso] = true
                local humanoid, torso = Utility.FindHumanoidClosestToRay(Mouse.UnitRay, exclusionList)
                local targetPart, pointOnPart
                if humanoid and torso then
                        targetPart, pointOnPart = torso, Vector3.new()
                else
                        local target = Mouse.Target
                        if target then
                                targetPart, pointOnPart = target, target.CFrame:pointToObjectSpace(Mouse.Hit.p)
                        else
                                return
                        end
                end
                if targetPart then
                        delayTime = delayTime or 0
                        local index = 1
                        local targetPoint = targetPart.CFrame * pointOnPart
                        local rotation_offset_angles = math.tau * Vector3.new(math.random() - 0.5, math.random() - 0.5, 0).unit
                        local rotation_offset = CFrame.Angles(rotation_offset_angles.x, rotation_offset_angles.y, 0)
                        local angle_x = 0
                        local angle_x_step = math.tau / math.phi
                        for i = 1, 8 * amount do
                                angle_x = angle_x + angle_x_step
                                local direction = rotation_offset * (CFrame.Angles(0, math.tau * index / amount, 0) * CFrame.Angles(angle_x, 0,0).lookVector)
                                local blocked = Workspace:FindPartOnRay(Ray.new(targetPoint, direction * offset), targetPart.Parent)
                                if not blocked then
                                        local p0, p1, p2, p3 = targetPart, pointOnPart, direction, offset; GraphicalEffects.ShootMissile(p0, p1, p2, function() return p0 end, p3, true)
                                        index = index + 1
                                        if index > amount then
                                                break
                                        end
                                end
                        end
                end
        end
end
 
function ControllerCommands.HugeExplosionOfDoom(position)
        local connections = {}
        local parts = {}
        local cframe = CFrame.new(position)
        local function ExplosionHit(part)
                if part:GetMass() < 10000 and part.Parent ~= Camera then
                        parts[part] = true
                        part.Anchored = true
                        part:BreakJoints()
                        part.BrickColor = BrickColor.new("Instituational white")
                end
        end
        for i = 1, 4 do
                local quantity = 0.5 * i * (1 + i)
                local fraction = math.tau / quantity
                for x = 1, quantity do
                        for y = 1, quantity do
                                local explosion = Instance.new("Explosion")
                                connections[#connections + 1] = explosion.Hit:connect(ExplosionHit)
                                explosion.BlastRadius = 5
                                explosion.Position = cframe * (CFrame.Angles(fraction * x, fraction * y, 0) * Vector3.new((i - 1) * 6, 0, 0))
                                explosion.Parent = Workspace
                        end
                end
                wait(0.075)
        end
        for part in pairs(parts) do
                for _, child in ipairs(part:GetChildren()) do
                        if child:IsA("BodyMover") then
                                child:Destroy()
                        end
                end
                local mass = part:GetMass()
                local velocity = CFrame.Angles(math.tau * math.random(), math.tau * math.random(), 0) * Vector3.new(25, 0, 0)
                local bodythrust = Instance.new("BodyThrust")
                bodythrust.force = mass * -velocity
                bodythrust.Parent = part
                local bodyforce = Instance.new("BodyForce")
                bodyforce.force = mass * Vector3.new(0, 196.2, 0)
                bodyforce.Parent = part
                part.Anchored = false
                part.Reflectance = 1
                part.RotVelocity = math.tau * Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5)
                part.Transparency = 0.5
                part.Velocity = (part.CFrame - part.Position) * velocity
        end
        for _, connection in ipairs(connections) do
                connection:disconnect()
        end
        for i = 0, 99 do
                Delay(i / 10, function()
                        for part in pairs(parts) do
                                local new_transparency = 0.5 * (1 + i / 50)
                                part.Reflectance = 0.98 * part.Reflectance
                                if new_transparency > part.Transparency then
                                        part.Transparency = new_transparency
                                end
                        end
                end)
        end
        Delay(10, function()
                for part in pairs(parts) do
                        pcall(part.Destroy, part)
                end
        end)
end
function ControllerCommands.HugeExplosionOfDoomAtMouse()
        ControllerCommands.HugeExplosionOfDoom(Mouse.Hit.p)
end
 
function ControllerCommands.SpaceHyperBeam(asd)
        GraphicalEffects.SpaceHyperBeam(asd)
end
function ControllerCommands.SpaceHyperBeamAtMouse()
        ControllerCommands.SpaceHyperBeam(Mouse.Hit.p)
end
function ControllerCommands.ConcentratedSpaceHyperBeamAtMouse()
        local p = Mouse.Hit.p; for i = 1, 50 do GraphicalEffects.SpaceHyperBeam(p) end
end
 
function ControllerCommands.TeleportCharacterToMouse()
        if PlayerControl.IsEnabled() then
                local torso = PlayerControl.GetTorso()
                if torso then
                        local pos = Mouse.Hit.p + Vector3.new(0, 5, 0)
                        torso.CFrame = CFrame.new(pos, pos + torso.CFrame.lookVector)
                end
        else
                local new_focus_position = Mouse.Hit.p
                local direction_vector = Camera.CoordinateFrame.lookVector
                local new_focus = CFrame.new(new_focus_position, new_focus_position + direction_vector)
                Camera.CoordinateFrame = new_focus * CFrame.new(0, 0, 25)
                Camera.Focus = new_focus
        end
end
 
AdvancedGUI = {};
 
if not AdvancedGUI.GUI_BASE_COLOR then
        AdvancedGUI.GUI_BASE_COLOR = Color3.new(0, 0, 0)
end
function AdvancedGUI.GenerateChatColor(speakerName)
        local chatColor = ChatColor.Get(speakerName).Color
        local brightness = chatColor.r + chatColor.g + chatColor.b
        if brightness < 1.5 then
                chatColor = Color3.new(math.min(1, 0.4 + chatColor.r), math.min(1, 0.4 + chatColor.g), math.min(1, 0.4 + chatColor.b))
        else
                chatColor = Color3.new(math.min(1, 0.05 + chatColor.r), math.min(1, 0.05 + chatColor.g), math.min(1, 0.05 + chatColor.b))
        end
        return chatColor
end
GuiBase = {}
GuiBase.__index = GuiBase
function GuiBase:new(data)
        local instance = setmetatable({}, self)
        instance:Init(data)
        return instance
end
function GuiBase:Destroy()
        if self.parent then
                self.parent.children[self] = nil
        end
        for child in pairs(self.children) do
                child:Destroy()
        end
        self.m_base_instance:Destroy()
end
function GuiBase:GetContentInstance(child)
        return self.m_base_instance
end
function GuiBase:Init()
        self.children = {}
end
function GuiBase:IsA(className)
        return className == "GuiBase"
end
function GuiBase:SetParent(parent)
        if parent ~= self.parent then
                if self.parent then
                        self.parent.children[self] = nil
                end
                self.parent = parent
                if parent then
                        parent.children[self] = true
                        self.m_base_instance.Parent = parent:GetContentInstance()
                else
                        self.m_base_instance.Parent = nil
                end
        end
end
GuiObject = setmetatable({}, GuiBase)
GuiObject.__index = GuiObject
function GuiObject:Destroy()
        self.DragBegin:disconnect()
        self.DragMove:disconnect()
        self.DragStopped:disconnect()
        self.MouseButton1Click:disconnect()
        self.MouseButton1Down:disconnect()
        self.MouseButton1Up:disconnect()
        self.MouseButton2Down:disconnect()
        self.MouseButton2Up:disconnect()
        self.MouseEnter:disconnect()
        self.MouseLeave:disconnect()
        GuiBase.Destroy(self)
end
function GuiObject:GetAbsolutePosition()
        return self.m_base_instance.AbsolutePosition
end
function GuiObject:GetAbsoluteSize()
        return self.m_base_instance.AbsoluteSize
end
function GuiObject:GetPosition()
        return self.position
end
function GuiObject:GetSize()
        return self.size
end
function GuiObject:Init()
        GuiBase.Init(self)
        self.mouseDown = false
        self.mouseOver = false
        self.DragBegin = RbxUtility.CreateSignal()
        self.DragMove = RbxUtility.CreateSignal()
        self.DragStopped = RbxUtility.CreateSignal()
        self.MouseButton1Click = RbxUtility.CreateSignal()
        self.MouseButton1Down = RbxUtility.CreateSignal()
        self.MouseButton1Up = RbxUtility.CreateSignal()
        self.MouseButton2Down = RbxUtility.CreateSignal()
        self.MouseButton2Up = RbxUtility.CreateSignal()
        self.MouseEnter = RbxUtility.CreateSignal()
        self.MouseLeave = RbxUtility.CreateSignal()
end
function GuiObject:IsA(className)
        return className == "GuiObject" or GuiBase.IsA(self, className)
end
function GuiObject:SetActive(active)
        if active ~= self.active then
                self.active = active
        end
end
function GuiObject:SetBackgroundTransparency(backgroundTransparency)
        if backgroundTransparency ~= self.backgroundTransparency then
                self.backgroundTransparency = backgroundTransparency
                self.m_base_instance.BackgroundTransparency = backgroundTransparency
        end
end
function GuiObject:SetColor(color)
        if color ~= self.color then
                self.color = color
                self.m_base_instance.BackgroundColor3 = color
        end
end
function GuiObject:SetPosition(position)
        if position ~= self.position then
                self.position = position
                self.m_base_instance.Position = position
        end
end
function GuiObject:SetSize(size)
        if size ~= self.size then
                self.size = size
                self.m_base_instance.Size = size
        end
end
function GuiObject:SetVisible(visible)
        if visible ~= self.visible then
                self.visible = visible
                self.m_base_instance.Visible = visible
        end
end
function GuiObject:SetZIndex(zIndex)
        local stack = {self.m_base_instance}
        repeat
                local object = stack[#stack]
                stack[#stack] = nil
                for _, child in ipairs(object:GetChildren()) do
                        stack[#stack + 1] = child
                end
                object.ZIndex = zIndex
        until #stack == 0
end
GuiServiceClass = setmetatable({}, GuiBase)
GuiServiceClass.__index = GuiServiceClass
function GuiServiceClass:CreateTextArea(text, font, fontSize, textColor3, textXAlignment, textYAlignment, maxWidth, minWidth)
        local totalHeight = 0
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1
        local label = Instance.new("TextLabel")
        label.BackgroundTransparency = 1
        label.Font = font
        label.FontSize = fontSize
        label.TextColor3 = textColor3
        label.TextTransparency = 1
        label.TextWrapped = true
        label.TextXAlignment = textXAlignment
        label.TextYAlignment = textYAlignment
        label.Parent = self.guiFrame
        local index = 1
        while true do
                local length = #text - index + 1
                if length > 1024 then
                        length = 1024
                        local textBlock = string.sub(text, index, index + length - 1)
                        label.Text = textBlock
                        local height = 0
                        local width = maxWidth
                        repeat
                                height = height + 20
                                label.Size = UDim2.new(0, width, 0, height)
                        until label.TextFits
                        repeat
                                height = height - 1
                                label.Size = UDim2.new(0, width, 0, height)
                        until not label.TextFits
                        repeat
                                length = length - 10
                                label.Text = string.sub(text, index, index + length - 1)
                        until label.TextFits
                        repeat
                                length = length + 1
                                label.Text = string.sub(text, index, index + length - 1)
                        until not label.TextFits
                        local overflowCharacter = string.sub(text, index + length - 1, index + length - 1)
                        length = length - 1
                        label.Text = string.sub(text, index, index + length - 1)
                        if overflowCharacter == "\n" then
                                index = index + 1
                        end
                        repeat
                                height = height - 1
                                label.Size = UDim2.new(0, width, 0, height)
                        until not label.TextFits
                        height = height + 1
                        local blockLabel = label:Clone()
                        blockLabel.Position = UDim2.new(0, 0, 0, totalHeight)
                        blockLabel.Size = UDim2.new(1, 0, 0, height)
                        blockLabel.Parent = frame
                        totalHeight = totalHeight + height
                        index = index + length
                else
                        local textBlock = string.sub(text, index)
                        label.Text = textBlock
                        local height = 0
                        local width = maxWidth
                        repeat
                                height = height + 20
                                label.Size = UDim2.new(0, width, 0, height)
                        until label.TextFits
                        repeat
                                height = height - 1
                                label.Size = UDim2.new(0, width, 0, height)
                        until not label.TextFits
                        height = height + 1
                        if index == 1 then
                                repeat
                                        width =  width - 10
                                        label.Size = UDim2.new(0, width, 0, height)
                                until width < minWidth or not label.TextFits
                                width = math.max(width, minWidth - 1)
                                repeat
                                        width =  width + 1
                                        label.Size = UDim2.new(0, width, 0, height)
                                until label.TextFits
                        end
                        local blockLabel = label:Clone()
                        blockLabel.Position = UDim2.new(0, 0, 0, totalHeight)
                        blockLabel.Size = UDim2.new(1, 0, 0, height)
                        blockLabel.Parent = frame
                        label:Destroy()
                        frame.Size = UDim2.new(0, width, 0, totalHeight + height)
                        return frame
                end
        end
end
function GuiServiceClass:Destroy()
        self.running = false
        self.cameraPart:Destroy()
        self.cameraConnection:disconnect()
        self.keyDownConnection:disconnect()
        self.mouseButton1DownConnection:disconnect()
        self.mouseButton1UpConnection:disconnect()
        self.mouseButton2DownConnection:disconnect()
        self.mouseButton2UpConnection:disconnect()
        self.mouseMoveConnection:disconnect()
        self.steppedConnection:disconnect()
end
function GuiServiceClass:GetMousePosition()
        local mouse = self.mouse
        return mouse.X, mouse.Y -- mouse.X, mouse.Y + 2 -- return mouse.X - 2, mouse.Y - 3
end
function GuiServiceClass:GetTextBounds(text, font, fontSize, alignX, alignY, width)
        local tempLabel = self.tempLabel
        tempLabel.Font = font
        tempLabel.FontSize = fontSize
        tempLabel.Size = UDim2.new(0, width, 0, 4096)
        tempLabel.Text = text
        tempLabel.TextXAlignment = alignX
        tempLabel.TextYAlignment = alignY
        local textBounds = tempLabel.TextBounds
        tempLabel.Text = ""
        return textBounds
end
function GuiServiceClass:Init(data)
        GuiBase.Init(self)
        local _ = string.char
        local camera = data.Camera
        local mouse = data.Mouse
        local cameraPart = Instance.new("Part")
        local billboardGui = Instance.new("BillboardGui", cameraPart)
        guiFrame = Instance.new("Frame", billboardGui)
        cameraPart.Anchored = true
        cameraPart.BottomSurface = "Smooth"
        cameraPart.CanCollide = false
--      cameraPart.CFrame = CFrame.new(16384, 16384, 16384)
        cameraPart.FormFactor = "Custom"
        cameraPart.Locked = true
        cameraPart.Size = Vector3.new(0.2, 0.2, 0.2)
        cameraPart.TopSurface = "Smooth"
        cameraPart.Transparency = 1
        billboardGui.Adornee = cameraPart
        billboardGui.AlwaysOnTop = true
--      billboardGui.ExtentsOffset = Vector3.new(-16384, -16384, -16384)
        guiFrame.BackgroundTransparency = 1
        cameraPart.Parent = camera
        self.running = true
        self.m_base_instance = guiFrame
        self.billboardGui = billboardGui
        self.cameraPart = cameraPart
        self.tempLabel = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                TextTransparency = 1,
                TextWrapped = true,
                Parent = guiFrame
        }
        self.mnemonics = {}
        self.visible = true
        self.camera = camera
        self.mouse = mouse
        self.cameraConnection = camera.Changed:connect(function(property)
                self:UpdateView()
                if property == "CameraType" then
                        if camera.CameraType ~= Enum.CameraType.Track and camera.CameraType ~= Enum.CameraType.Fixed then
                                camera.CameraType = Enum.CameraType.Track
                        end
                elseif property == "CoordinateFrame" and camera.CameraType ~= Enum.CameraType.Fixed then
                        local cframe, focus = camera.CoordinateFrame, camera.Focus
                        local watchOffset = focus.p - cframe.p
                        local error = watchOffset.unit - cframe.lookVector
                        if error.magnitude >= 1e-3 then
                                local head = PlayerControl.GetHead()
                                local time1, velocity1
                                if head then
                                        time1 = time()
                                        velocity1 = head.Velocity
                                end
                                if camera.Changed:wait() == "CoordinateFrame" then
                                        local position = cframe.p
                                        if head then
                                                local time2 = time()
                                                local velocity2 = head.Velocity
                                                position = position + 0.5 * (velocity1 + velocity2) * (time2 - time1)
                                        end
                                        camera.CoordinateFrame = CFrame.new(position, camera.Focus.p)
                                end
                        end
                end
        end)
        self.keyDownConnection = mouse.KeyDown:connect(function(key) self:KeyDown(key) end)
        self.mouseButton1DownConnection = mouse.Button1Down:connect(function() self:MouseButton1Down() end)
        self.mouseButton1UpConnection = mouse.Button1Up:connect(function() self:MouseButton1Up() end)
        self.mouseButton2DownConnection = mouse.Button2Down:connect(function() self:MouseButton2Down() end)
        self.mouseButton2UpConnection = mouse.Button2Up:connect(function() self:MouseButton2Up() end)
        self.mouseMoveConnection = mouse.Move:connect(function() self:MouseMove() end)
        self.steppedConnection = RunService.RenderStepped:connect(function() self:UpdateObjects() self:UpdateView() end)
        self.mousePreviousPosition = Vector2.new(self:GetMousePosition())
end
function GuiServiceClass:IsA(className)
        return className == "GuiService" or GuiBase.IsA(self, className)
end
function GuiServiceClass:KeyDown(key)
        local mnemonicButton = self.mnemonics[string.upper(key)]
        if mnemonicButton then
                mnemonicButton.Activated:fire()
        end
end
function GuiServiceClass:MouseButton1Down()
        local mouse = self.mouse
        local mouseX, mouseY = self:GetMousePosition()
        local stack = {self}
        local dragObjects = {}
        self.dragObjects = dragObjects
        while #stack > 0 do
                local object = stack[#stack]
                stack[#stack] = nil
                if object.visible then
                        for child in pairs(object.children) do
                                stack[#stack + 1] = child
                        end
                        if object.active then
                                local position = object:GetAbsolutePosition()
                                local size = object:GetAbsoluteSize()
                                if mouseX >= position.X and mouseY >= position.Y and mouseX < position.X + size.X and mouseY < position.Y + size.Y then
                                        object.mouseDown = true
                                        dragObjects[object] = true
                                        local mouseButton1Down = object.MouseButton1Down
                                        if mouseButton1Down then
                                                mouseButton1Down:fire()
                                                if object.autoButtonColor then
                                                        local color = object.color
                                                        local transparency = object.backgroundTransparency
                                                        object.m_base_instance.BackgroundColor3 = Color3.new(math.min(color.r + 0.3, 1), math.min(color.g +
 
0.3, 1), math.min(color.b + 0.3, 1))
                                                        object.m_base_instance.BackgroundTransparency = transparency
                                                end
                                        end
                                        object.DragBegin:fire()
                                end
                        end
                end
        end
        self.mousePreviousPosition = Vector2.new(mouseX, mouseY)
end
function GuiServiceClass:MouseButton1Up()
        local mouse = self.mouse
        local mouseX, mouseY = self:GetMousePosition()
        local stack = {self}
        while #stack > 0 do
                local object = stack[#stack]
                stack[#stack] = nil
                if object.visible then
                        for child in pairs(object.children) do
                                stack[#stack + 1] = child
                        end
                        if object.active then
                                local position = object:GetAbsolutePosition()
                                local size = object:GetAbsoluteSize()
                                if mouseX >= position.X and mouseY >= position.Y and mouseX < position.X + size.X and mouseY < position.Y + size.Y then
                                        object.MouseButton1Up:fire()
                                end
                        end
                end
        end
        local dragObjects = self.dragObjects
        self.dragObjects = nil
        if dragObjects then
                for dragObject in pairs(dragObjects) do
                        dragObject.mouseDown = false
                        local position = dragObject:GetAbsolutePosition()
                        local size = dragObject:GetAbsoluteSize()
                        if mouseX >= position.X and mouseY >= position.Y and mouseX < position.X + size.X and mouseY < position.Y + size.Y then
                                dragObject.MouseButton1Click:fire()
                                local activated = dragObject.Activated
                                if activated then
                                        activated:fire()
                                end
                        end
                        dragObject.DragStopped:fire()
                        if dragObject.autoButtonColor then
                                if dragObject.mouseOver then
                                        local color = dragObject.color
                                        local transparency = dragObject.backgroundTransparency
                                        dragObject.m_base_instance.BackgroundColor3 = Color3.new(math.max(color.r - 0.3, 0), math.max(color.g - 0.3, 0),
 
math.max(color.b - 0.3, 0))
                                        dragObject.m_base_instance.BackgroundTransparency = math.max(0, transparency - 0.2)
                                else
                                        dragObject.m_base_instance.BackgroundColor3 = dragObject.color
                                        dragObject.m_base_instance.BackgroundTransparency = dragObject.backgroundTransparency
                                end
                        end
                        self.dragObject = nil
                end
        end
end
function GuiServiceClass:MouseButton2Down()
        local mouse = self.mouse
        local mouseX, mouseY = self:GetMousePosition()
        local stack = {self}
        while #stack > 0 do
                local object = stack[#stack]
                stack[#stack] = nil
                if object.visible then
                        for child in pairs(object.children) do
                                stack[#stack + 1] = child
                        end
                        if object.active then
                                local position = object:GetAbsolutePosition()
                                local size = object:GetAbsoluteSize()
                                if mouseX >= position.X and mouseY >= position.Y and mouseX < position.X + size.X and mouseY < position.Y + size.Y then
                                        local mouseButton2Down = object.MouseButton2Down
                                        if mouseButton2Down then
                                                mouseButton2Down:fire()
                                        end
                                end
                        end
                end
        end
        self.mousePreviousPosition = Vector2.new(mouseX, mouseY)
end
function GuiServiceClass:MouseButton2Up()
        local mouse = self.mouse
        local mouseX, mouseY = self:GetMousePosition()
        local stack = {self}
        while #stack > 0 do
                local object = stack[#stack]
                stack[#stack] = nil
                if object.visible then
                        for child in pairs(object.children) do
                                stack[#stack + 1] = child
                        end
                        if object.active then
                                local position = object:GetAbsolutePosition()
                                local size = object:GetAbsoluteSize()
                                if mouseX >= position.X and mouseY >= position.Y and mouseX < position.X + size.X and mouseY < position.Y + size.Y then
                                        local mouseButton2Up = object.MouseButton2Up
                                        if mouseButton2Up then
                                                mouseButton2Up:fire()
                                        end
                                end
                        end
                end
        end
end
function GuiServiceClass:MouseMove()
        self:UpdateObjects()
        local dragObjects = self.dragObjects
        if dragObjects then
                for dragObject in pairs(dragObjects) do
                        local mouse = self.mouse
                        local mousePosition = Vector2.new(self:GetMousePosition())
                        dragObject.DragMove:fire(mousePosition - self.mousePreviousPosition)
                        self.mousePreviousPosition = mousePosition
                end
        end
end
function GuiServiceClass:SetMnemonic(mnemonic, button)
        self.mnemonics[mnemonic] = button
end
function GuiServiceClass:UpdateObjects()
        local mouse = self.mouse
        local mouseX, mouseY = self:GetMousePosition()
        local stack = {self}
        while #stack > 0 do
                local object = stack[#stack]
                stack[#stack] = nil
                if object.visible then
                        for child in pairs(object.children) do
                                stack[#stack + 1] = child
                        end
                        if object.active then
                                local position = object:GetAbsolutePosition()
                                local size = object:GetAbsoluteSize()
                                if mouseX >= position.X and mouseY >= position.Y and mouseX < position.X + size.X and mouseY < position.Y + size.Y then
                                        if not object.mouseOver then
                                                object.mouseOver = true
                                                object.MouseEnter:fire()
                                                if object.autoButtonColor then
                                                        local color = object.color
                                                        local transparency = object.backgroundTransparency
                                                        if object.mouseDown then
                                                                object.m_base_instance.BackgroundColor3 = Color3.new(math.min(color.r + 0.3, 1), math.min(color.g + 0.3, 1), math.min(color.b + 0.3, 1))
                                                                object.m_base_instance.BackgroundTransparency = transparency
                                                        else
                                                                object.m_base_instance.BackgroundColor3 = Color3.new(math.max(color.r - 0.3, 0), math.max(color.g - 0.3, 0), math.max(color.b - 0.3, 0))
                                                                object.m_base_instance.BackgroundTransparency = math.max(0, transparency - 0.2)
                                                        end
                                                end
                                        end
                                else
                                        if object.mouseOver then
                                                object.mouseOver = false
                                                object.MouseLeave:fire()
                                                if object.autoButtonColor then
                                                        object.m_base_instance.BackgroundColor3 = object.color
                                                        object.m_base_instance.BackgroundTransparency = object.backgroundTransparency
                                                end
                                        end
                                end
                        end
                end
        end
end
function GuiServiceClass:UpdateView()
        local billboardGui = self.billboardGui
        local guiFrame = self.m_base_instance
        local camera = self.camera
        local mouse = self.mouse
        local cameraCFrame = CFrame.new(camera.CoordinateFrame.p, camera.Focus.p) -- camera.CoordinateFrame
        local viewSizeX, viewSizeY = mouse.ViewSizeX, mouse.ViewSizeY
        local previousViewSize = self.viewSize
        if not previousViewSize or ((viewSizeX ~= 0 or viewSizeY ~= 0) and (viewSizeX ~= previousViewSize.X or viewSizeY ~= previousViewSize.Y)) then
                self.viewSize = {X = viewSizeX, Y = viewSizeY}
                local viewSizeUDim2 = UDim2.new(0, viewSizeX, 0, viewSizeY)
                billboardGui.Size = viewSizeUDim2
                guiFrame.Size = viewSizeUDim2
                -- FIXME:
                -- After the 15th of July 2014, there came an offset at the Y thingy out of nowhere so I accomodated for that.
                billboardGui.SizeOffset = Vector2.new(0.5 / viewSizeX, (0.5 + 10) / viewSizeY)
        end
        --billboardGui.SizeOffset = Vector2.new()
        billboardGui.StudsOffset = (cameraCFrame - cameraCFrame.p):inverse() * cameraCFrame.p - Vector3.new(0, 0, 1)
end
GuiService = GuiServiceClass:new {
        Camera = Camera,
        Mouse = Mouse
}
GuiFrame = setmetatable({}, GuiObject)
GuiFrame.__index = GuiFrame
GuiFrame.__default = {__index = {
        Active = false,
        BackgroundTransparency = 0.75,
        BorderSize = 4,
        BorderTransparency = 0.75,
        Color = AdvancedGUI.GUI_BASE_COLOR,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(0, 52, 0, 52),
        Visible = true
}}
function GuiFrame:Destroy()
        GuiObject.Destroy(self)
end
function GuiFrame:GetContentInstance()
        return self.m_content_frame
end
function GuiFrame:Init(data)
        GuiObject.Init(self)
        setmetatable(data, GuiFrame.__default)
        local leftBorderFrameLeft = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0,
                Size = UDim2.new(0, 1, 1, -1)
        }
        local leftBorderFrameCenter = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BorderSizePixel = 0,
                Position = UDim2.new(0, 1, 0, 1)
        }
        local leftBorderFrameRight = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0
        }
        local rightBorderFrameRight = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.new(1, -1, 0, 1),
                Size = UDim2.new(0, 1, 1, -1)
        }
        local rightBorderFrameCenter = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BorderSizePixel = 0
        }
        local rightBorderFrameLeft = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0
        }
        local bottomBorderFrameBottom = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.new(0, 0, 1, -1),
                Size = UDim2.new(1, -1, 0, 1)
        }
        local bottomBorderFrameCenter = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BorderSizePixel = 0
        }
        local bottomBorderFrameTop = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0
        }
        local topBorderFrameTop = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.new(0, 1, 0, 0),
                Size = UDim2.new(1, -1, 0, 1)
        }
        local topBorderFrameCenter = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BorderSizePixel = 0
        }
        local topBorderFrameBottom = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(0, 0, 0),
                BorderSizePixel = 0
        }
        local border_frame = RBXInstance.new "Frame" {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                leftBorderFrameLeft,
                leftBorderFrameCenter,
                leftBorderFrameRight,
                rightBorderFrameLeft,
                rightBorderFrameCenter,
                rightBorderFrameRight,
                bottomBorderFrameBottom,
                bottomBorderFrameCenter,
                bottomBorderFrameTop,
                topBorderFrameBottom,
                topBorderFrameCenter,
                topBorderFrameTop
        }
        local contentFrame = RBXInstance.new "Frame" {
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                ClipsDescendants = true,
                Size = UDim2.new(1, 0, 1, 0)
        }
        local base_frame = RBXInstance.new "Frame" {
                BorderSizePixel = 0,
                border_frame,
                contentFrame
        }
        self.m_base_instance = base_frame
        self.m_content_frame = contentFrame
        self.m_border_frame = border_frame
        self.leftBorderFrameLeft = leftBorderFrameLeft
        self.leftBorderFrameCenter = leftBorderFrameCenter
        self.leftBorderFrameRight = leftBorderFrameRight
        self.rightBorderFrameLeft = rightBorderFrameLeft
        self.rightBorderFrameCenter = rightBorderFrameCenter
        self.rightBorderFrameRight = rightBorderFrameRight
        self.bottomBorderFrameBottom = bottomBorderFrameBottom
        self.bottomBorderFrameCenter = bottomBorderFrameCenter
        self.bottomBorderFrameTop = bottomBorderFrameTop
        self.topBorderFrameBottom = topBorderFrameBottom
        self.topBorderFrameCenter = topBorderFrameCenter
        self.topBorderFrameTop = topBorderFrameTop
        self:SetActive(data.Active)
        self:SetBackgroundTransparency(data.BackgroundTransparency)
        self:SetBorderSize(data.BorderSize)
        self:SetBorderTransparency(data.BorderTransparency)
        self:SetColor(data.Color)
        self:SetPosition(data.Position)
        self:SetSize(data.Size)
        self:SetVisible(data.Visible)
        self:SetParent(data.Parent)
end
function GuiFrame:IsA(className)
        return className == "GuiFrame" or GuiObject.IsA(self, className)
end
function GuiFrame:SetBorderSize(border_size)
        border_size = math.max(math.floor(border_size + 0.5), 0)
        if border_size ~= self.m_border_size then
                self.m_border_size = border_size
                local border_frame = self.m_border_frame
                local contentFrame = self.m_content_frame
                local leftBorderFrameCenter = self.leftBorderFrameCenter
                local leftBorderFrameRight = self.leftBorderFrameRight
                local rightBorderFrameCenter = self.rightBorderFrameCenter
                local rightBorderFrameLeft = self.rightBorderFrameLeft
                local bottomBorderFrameCenter = self.bottomBorderFrameCenter
                local bottomBorderFrameTop = self.bottomBorderFrameTop
                local topBorderFrameCenter = self.topBorderFrameCenter
                local topBorderFrameBottom = self.topBorderFrameBottom
                contentFrame.Position = UDim2.new(0, border_size, 0, border_size)
                contentFrame.Size = UDim2.new(1, -2 * border_size, 1, -2 * border_size)
                local inner_visible = border_size > 0
                if self.leftBorderFrameLeft.Visible ~= inner_visible then
                        self.rightBorderFrameRight.Visible = inner_visible
                        self.bottomBorderFrameBottom.Visible = inner_visible
                        self.topBorderFrameTop.Visible = inner_visible
                end
                local outer_visible = border_size > 1
                if leftBorderFrameCenter.Visible ~= outer_visible then
                        leftBorderFrameCenter.Visible = outer_visible
                        leftBorderFrameRight.Visible = outer_visible
                        rightBorderFrameCenter.Visible = outer_visible
                        rightBorderFrameLeft.Visible = outer_visible
                        bottomBorderFrameCenter.Visible = outer_visible
                        bottomBorderFrameTop.Visible = outer_visible
                        topBorderFrameCenter.Visible = outer_visible
                        topBorderFrameBottom.Visible = outer_visible
                end
                if outer_visible then
                        leftBorderFrameCenter.Size = UDim2.new(0, border_size - 2, 1, -border_size)
                        leftBorderFrameRight.Position = UDim2.new(0, border_size - 1, 0, border_size - 1)
                        leftBorderFrameRight.Size = UDim2.new(0, 1, 1, 1 - 2 * border_size)
                        rightBorderFrameCenter.Position = UDim2.new(1, 1 - border_size, 0, border_size - 1)
                        rightBorderFrameCenter.Size = UDim2.new(0, border_size - 2, 1, -border_size)
                        rightBorderFrameLeft.Position = UDim2.new(1, -border_size, 0, border_size)
                        rightBorderFrameLeft.Size = UDim2.new(0, 1, 1, 1 - 2 * border_size)
                        bottomBorderFrameCenter.Position = UDim2.new(0, 1, 1, 1 - border_size)
                        bottomBorderFrameCenter.Size = UDim2.new(1, -border_size, 0, border_size - 2)
                        bottomBorderFrameTop.Position = UDim2.new(0, border_size - 1, 1, -border_size)
                        bottomBorderFrameTop.Size = UDim2.new(1, 1 - 2 * border_size, 0, 1)
                        topBorderFrameCenter.Position = UDim2.new(0, border_size - 1, 0, 1)
                        topBorderFrameCenter.Size = UDim2.new(1, -border_size, 0, border_size - 2)
                        topBorderFrameBottom.Position = UDim2.new(0, border_size, 0, border_size - 1)
                        topBorderFrameBottom.Size = UDim2.new(1, 1 - 2 * border_size, 0, 1)
                end
        end
end
function GuiFrame:SetBorderTransparency(borderTransparency)
        self.borderTransparency = borderTransparency
        self.leftBorderFrameLeft.BackgroundTransparency = borderTransparency
        self.leftBorderFrameCenter.BackgroundTransparency = borderTransparency
        self.leftBorderFrameRight.BackgroundTransparency = borderTransparency
        self.rightBorderFrameLeft.BackgroundTransparency = borderTransparency
        self.rightBorderFrameCenter.BackgroundTransparency = borderTransparency
        self.rightBorderFrameRight.BackgroundTransparency = borderTransparency
        self.bottomBorderFrameBottom.BackgroundTransparency = borderTransparency
        self.bottomBorderFrameCenter.BackgroundTransparency = borderTransparency
        self.bottomBorderFrameTop.BackgroundTransparency = borderTransparency
        self.topBorderFrameBottom.BackgroundTransparency = borderTransparency
        self.topBorderFrameCenter.BackgroundTransparency = borderTransparency
        self.topBorderFrameTop.BackgroundTransparency = borderTransparency
end
GuiButton = setmetatable({}, GuiFrame)
GuiButton.__index = GuiButton
GuiButton.__default = {__index = {
        AutoButtonColor = true
}}
function GuiButton:Destroy()
        self.Activated:disconnect()
        GuiFrame.Destroy(self)
end
function GuiButton:Init(data)
        if data.Active == nil then
                data.Active = true
        end
        GuiFrame.Init(self, data)
        setmetatable(data, GuiButton.__default)
        self.Activated = RbxUtility.CreateSignal()
        self:SetAutoButtonColor(data.AutoButtonColor)
end
function GuiButton:IsA(className)
        return className == "GuiButton" or GuiFrame.IsA(self, className)
end
function GuiButton:SetAutoButtonColor(autoButtonColor)
        if autoButtonColor ~= self.autoButtonColor then
                self.autoButtonColor = autoButtonColor
                if autoButtonColor then
                        if self.mouseOver then
                                local color = self.color
                                local transparency = self.backgroundTransparency
                                if self.mouseDown then
                                        self.m_base_instance.BackgroundColor3 = Color3.new(math.min(color.r + 0.3, 1), math.min(color.g + 0.3, 1), math.min(color.b + 0.3, 1))
                                        self.m_base_instance.BackgroundTransparency = transparency
                                else
                                        self.m_base_instance.BackgroundColor3 = Color3.new(math.max(color.r - 0.3, 0), math.max(color.g - 0.3, 0), math.max(color.b - 0.3, 0))
                                        self.m_base_instance.BackgroundTransparency = math.max(0, transparency - 0.5)
                                end
                        end
                else
                        self.m_base_instance.BackgroundColor3 = self.color
                end
        end    
end
GuiTextLabel = setmetatable({}, GuiFrame)
GuiTextLabel.__index = GuiTextLabel
GuiTextLabel.__default = {__index = {
        Font = "ArialBold",
        FontSize = "Size12",
        Text = "",
        TextColor = Color3.new(1, 1, 1),
        TextStrokeColor = Color3.new(0, 0, 0),
        TextStrokeTransparency = 0.6,
        TextWrapped = true
}}
function GuiTextLabel:Destroy()
        GuiFrame.Destroy(self)
end
function GuiTextLabel:Init(data)
        GuiFrame.Init(self, data)
        setmetatable(data, GuiTextLabel.__default)
        local base_instance = self.m_base_instance
        local textLabel = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = data.Font,
                FontSize = data.FontSize,
                TextColor3 = data.TextColor3,
                TextStrokeColor3 = data.TextStrokeColor3,
                TextStrokeTransparency = data.TextStrokeTransparency,
                TextWrapped = data.TextWrapped
        }
        textLabel.Parent = self:GetContentInstance()
        self.textLabel = textLabel
        self:SetText(data.Text)
end
function GuiTextLabel:IsA(className)
        return className == "GuiTextLabel" or GuiFrame.IsA(self, className)
end
function GuiTextLabel:SetText(text)
        if text ~= self.text then
                self.text = text
                local text_index = 1
                local content_instance = self:GetContentInstance()
                local content_instance_size = content_instance.AbsoluteSize
                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                local label = Instance.new("TextLabel")
                label.BackgroundTransparency = 1
                label.Font = font
                label.FontSize = fontSize
                label.Size = UDim2.new(0, content_instance_size.X, 0, 1000)
                label.Text = ""
                label.TextColor3 = textColor3
                label.TextTransparency = 1
                label.TextWrapped = true
                label.TextXAlignment = textXAlignment
                label.TextYAlignment = textYAlignment
                label.Parent = self.guiFrame
                local row_length = 0
                local step_size = 256
                for step = 1, 8 do
                        step_size = 0.5 * step_size
                        label.Text = string.sub(text, text_index, text_index + row_length - 1)
                end
        end
end
GuiImageButton = setmetatable({}, GuiButton)
GuiImageButton.__index = GuiImageButton
GuiImageButton.__default = {__index = {
        Image = ""
}}
function GuiImageButton:Destroy()
        GuiButton.Destroy(self)
end
function GuiImageButton:Init(data)
        GuiButton.Init(self, data)
        setmetatable(data, GuiImageButton.__default)
        local content_frame = self.m_content_frame
        local image_label = RBXInstance.new "ImageLabel" {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0)
        }
        image_label.Parent = content_frame
        self.m_image_label = image_label
        self:SetImage(data.Image)
end
function GuiImageButton:IsA(className)
        return className == "GuiImageButton" or GuiButton.IsA(self, className)
end
function GuiImageButton:SetImage(image)
        if image ~= self.m_image then
                self.m_image = image
                self.m_image_label.Image = image
        end    
end
GuiTextButton = setmetatable({}, GuiButton)
GuiTextButton.__index = GuiTextButton
GuiTextButton.__default = {__index = {
        Font = Enum.Font.ArialBold,
        FontSize = Enum.FontSize.Size11,
        Text = "Button",
        TextXAlignment = Enum.TextXAlignment.Center
}}
function GuiTextButton:Destroy()
        GuiButton.Destroy(self)
end
function GuiTextButton:GetTextBounds()
        return self.textLabel.TextBounds
end
function GuiTextButton:Init(data)
        GuiButton.Init(self, data)
        setmetatable(data, GuiTextButton.__default)
        local contentFrame = self.m_content_frame
        local mnemonicLabel = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size36",
                Size = UDim2.new(1, 0, 0.7, 0),
                TextColor3 = Color3.new(1, 1, 1),
                TextStrokeColor3 = Color3.new(0, 0, 0),
                TextStrokeTransparency = 0.6,
                TextWrapped = true
        }
        local textLabel = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                TextColor3 = Color3.new(1, 1, 1),
                TextStrokeColor3 = Color3.new(0, 0, 0),
                TextStrokeTransparency = 0.6,
                TextWrapped = true
        }
        mnemonicLabel.Parent = contentFrame
        textLabel.Parent = contentFrame
        self.mnemonicLabel = mnemonicLabel
        self.textLabel = textLabel
        self:SetFont(data.Font)
        self:SetFontSize(data.FontSize)
        self:SetMnemonic(data.Mnemonic, true)
        self:SetText(data.Text)
        self:SetTextXAlignment(data.TextXAlignment)
end
function GuiTextButton:IsA(className)
        return className == "GuiTextButton" or GuiButton.IsA(self, className)
end
function GuiTextButton:SetFont(font)
        if font ~= self.font then
                self.font = font
                self.textLabel.Font = font
        end
end
function GuiTextButton:SetFontSize(fontSize)
        if fontSize ~= self.fontSize then
                self.fontSize = fontSize
                self.textLabel.FontSize = fontSize
        end
end
function GuiTextButton:SetMnemonic(mnemonic, forceUpdate)
        if mnemonic ~= self.mnemonic or forceUpdate then
                if self.mnemonic then
                        GuiService:SetMnemonic(self.mnemonic, nil)
                end
                if mnemonic then
                        GuiService:SetMnemonic(mnemonic, self)
                end
                self.mnemonic = mnemonic
                local mnemonicLabel = self.mnemonicLabel
                local textLabel = self.textLabel
                if mnemonic then
                        mnemonicLabel.Text = mnemonic
                        textLabel.Size = UDim2.new(1, 0, 0.9, 0)
                        textLabel.TextYAlignment = "Bottom"
                else
                        mnemonicLabel.Text = ""
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.TextYAlignment = "Center"
                end
        end    
end
function GuiTextButton:SetText(text)
        if text ~= self.text then
                self.text = text
                self.textLabel.Text = text
        end    
end
function GuiTextButton:SetTextXAlignment(textXAlignment)
        if textXAlignment ~= self.textXAlignment then
                self.textXAlignment = textXAlignment
                self.textLabel.TextXAlignment = textXAlignment
        end    
end
GuiWindow = setmetatable({}, GuiObject)
GuiWindow.__index = GuiWindow
GuiWindow.__default = {__index = {
        Active = true,
        BackgroundTransparency = 0.5,
        BorderSize = 4,
        BorderTransparency = 0.5,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(0, 360, 0, 240),
        Title = "Window",
        TitleBarBackgroundTransparency = 0.5,
        TitleBarBorderTransparency = 1,
        Visible = true
}}
function GuiWindow:Init(data)
        GuiObject.Init(self)
        setmetatable(data, GuiFrame.__default)
        local title_bar = GuiTextLabel:new {
                BackgroundTransparency = data.TitleBarBackgroundTransparency,
                BorderTransparency = data.TitleBarBackgroundTransparency,
                Text = data.Title
        }
        local content_frame = GuiFrame:new {
                Active = data.Active,
                BackgroundTransparency = data.BackgroundTransparency,
                BorderSize = data.BorderSize,
                BorderTransparency = data.BorderTransparency
        }
        local base_frame = RBXInstance.new "Frame" {
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Position = data.Position,
                Size = data.Size,
                Visible = data.Visible
        }
        self.m_base_frame = base_frame
        self.m_content_frame = content_frame
        self.m_title_bar = title_bar
end
function GuiWindow:IsA(className)
        return className == "GuiWindow" or GuiObject.IsA(self, className)
end
GuiScrollFrame = setmetatable({}, GuiFrame)
GuiScrollFrame.__index = GuiScrollFrame
GuiScrollFrame.__default = {__index = {
        ContentHeight = 0,
        ScrollBarColor = Color3.new(1, 1, 1)
}}
function GuiScrollFrame:Destroy()
        self.m_scroll_bar:Destroy()
        GuiFrame.Destroy(self)
end
function GuiScrollFrame:GetContentInstance()
        return self.m_scroll_frame or GuiFrame.GetContentInstance(self)
end
function GuiScrollFrame:Init(data)
        GuiFrame.Init(self, data)
        setmetatable(data, GuiScrollFrame.__default)
        local scroll_pane = RBXInstance.new "Frame" {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 0.8,
                BorderSizePixel = 0,
                Position = UDim2.new(1, -20, 0, 0),
                Size = UDim2.new(0, 20, 1, 0),
                Parent = self.m_content_frame
        }
        local scroll_bar = GuiFrame:new {
                Active = true,
                BackgroundTransparency = 0.6,
                BorderTransparency = 0.6,
                Color = data.ScrollBarColor,
                Parent = self
        }
        local scroll_frame = RBXInstance.new "Frame" {
                BackgroundTransparency = 1,
                Parent = self.m_content_frame
        }
        self.m_scroll_bar = scroll_bar
        self.m_scroll_frame = scroll_frame
        self.m_scroll_pane = scroll_pane
        self.m_scroll_position = 0
        self.m_updating_content_height = false
        self:SetContentHeight(data.ContentHeight)
        self:UpdateScrollPosition()
        self.m_scroll_bar.DragBegin:connect(function()
                self.m_scroll_drag_total = Vector2.new()
                self.m_scroll_initial_position = self.m_scroll_position
        end)
        self.m_scroll_bar.DragMove:connect(function(offset)
                self.m_scroll_drag_total = self.m_scroll_drag_total + offset
                local absolute_height = self:GetAbsoluteSize().Y - 2 * self.m_border_size
                if absolute_height ~= 0 then
                        local content_height = math.max(self.m_content_height, absolute_height)
                        local scroll_space = 1 - absolute_height / content_height
                        self:Scroll(self.m_scroll_initial_position + self.m_scroll_drag_total.Y * (content_height / absolute_height - 1) / scroll_space)
                end
        end)
end
function GuiScrollFrame:IsA(className)
        return className == "GuiScrollFrame" or GuiFrame.IsA(self, className)
end
function GuiScrollFrame:Scroll(position)
        position = math.min(math.max(position, 0), self.m_content_height - (self:GetAbsoluteSize().Y - 2 * self.m_border_size))
        if position ~= self.m_scroll_position then
                self.m_scroll_position = position
                self:UpdateScrollPosition()
        end
end
function GuiScrollFrame:SetContentHeight(height)
        if height ~= self.m_content_height then
                local prev_height = self.m_content_height
                self.m_content_height = height
                if not self.m_updating_content_height then
                        self.m_updating_content_height = true
                        coroutine.resume(coroutine.create(function()
                                local success, message = ypcall(self.SetContentHeightImpl1, self, prev_height)
                                if not success then
                                        Logger.printf("Severe", "Error in GuiScrollFrame:SetContentHeight(%s): %s", Utility.ToString(height), message)
                                end
                        end))
                end
        end
end
function GuiScrollFrame:SetContentHeightImpl1(prev_height)
        RunService.RenderStepped:wait()
        self.m_updating_content_height = false
        local height = self.m_content_height
        self.m_scroll_frame.Size = UDim2.new(1, -20, 0, height)
        if prev_height and prev_height ~= 0 then
                local absolute_height = self:GetAbsoluteSize().Y - 2 * self.m_border_size
                if self.m_scroll_position == prev_height - absolute_height then
                        self.m_scroll_position = height - absolute_height
                else
                        self.m_scroll_position = height * self.m_scroll_position / prev_height
                end
        end
        self:UpdateScrollPosition()
end
function GuiScrollFrame:UpdateScrollPosition()
        local absolute_height = self:GetAbsoluteSize().Y - 2 * self.m_border_size
        if absolute_height == 0 then
                absolute_height = self.m_content_height
        end
        local scroll_bar = self.m_scroll_bar
        local scroll_frame = self.m_scroll_frame
        local scroll_pane = self.m_scroll_pane
        local content_height = math.max(self.m_content_height, absolute_height)
        if absolute_height == content_height then
                scroll_frame.Position = UDim2.new(0, 0, 0, 0)
                scroll_frame.Size = UDim2.new(1, 0, 1, 0)
                scroll_bar:SetVisible(false)
                scroll_pane.Visible = false
        else
                local contentScale = content_height / absolute_height
                local scroll_space = 1 - absolute_height / content_height
                local scroll_position = self.m_scroll_position
                scroll_frame.Position = UDim2.new(0, 0, 0, -scroll_position)
                scroll_bar:SetPosition(UDim2.new(1, -20, scroll_position / (content_height - absolute_height) * scroll_space, 0))
                scroll_bar:SetSize(UDim2.new(0, 20, absolute_height / content_height, 0))
                scroll_bar:SetVisible(true)
                scroll_pane.Visible = true
        end
end
GuiMenu = setmetatable({}, GuiFrame)
GuiMenu.__index = GuiMenu
GuiMenu.__default = {__index = {
        VerticalSpacing = 18
}}
function GuiMenu:AddItem(text, onClick, options)
        local frameSize = self:GetSize()
        local frameHeight = frameSize.Y.Offset - self.m_border_size * 2
        local verticalSpacing = self.verticalSpacing
        local properties = {
                BackgroundTransparency = 0.75,
                BorderSize = 0,
                BorderTransparency = 1,
                Color = (#self.menuItems % 2 == 1) and Color3.new(0.25, 0.25, 0.25) or Color3.new(0, 0, 0),
                FontSize = Enum.FontSize.Size12,
                Position = UDim2.new(0, 0, 0, frameHeight),
                Size = UDim2.new(1, 0, 0, verticalSpacing),
                Text = text,
                Parent = self
        }
        if options then
                for key, value in pairs(options) do
                        properties[key] = value
                end
        end
        local menuItem = GuiTextButton:new(properties)
        if onClick then
                menuItem.Activated:connect(function()
                        if not onClick(text, self) then
                                self:Destroy()
                        end
                end)
        end
        self.menuItems[#self.menuItems + 1] = menuItem
        self:SetSize(frameSize + UDim2.new(0, 0, 0, verticalSpacing))
end
function GuiMenu:ClearItems()
        local menuItems = self.menuItems
        for _, item in ipairs(menuItems) do
                menuItems[item] = nil
                item:Destroy()
        end
        local frameSize = self:GetSize()
        self:SetSize(frameSize + UDim2.new(0, 0, 0, self.m_border_size * 2 - frameSize.Y.Offset))
end
function GuiMenu:Destroy()
        self:ClearItems()
        GuiFrame.Destroy(self)
end
function GuiMenu:Init(data)
        GuiFrame.Init(self, data)
        setmetatable(data, GuiMenu.__default)
        self.menuItems = {}
        self.verticalSpacing = data.VerticalSpacing
end
function GuiMenu:IsA(className)
        return className == "GuiMenu" or GuiFrame.IsA(self, className)
end
GuiTextList = setmetatable({}, GuiScrollFrame)
GuiTextList.__index = GuiTextList
GuiTextList.__default = {__index = {
}}
function GuiTextList:AddItem(text, options)
        local properties = {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 4, 0, self.m_content_height),
                Size = UDim2.new(1, -8, 0, 12),
                Text = tostring(text),
                TextColor3 = Color3.new(1, 1, 1),
                TextStrokeTransparency = 0.6,
                TextWrapped = true,
                TextXAlignment = "Left",
                Parent = self:GetContentInstance()
        }
        if options then
                for key, value in pairs(options) do
                        properties[key] = value
                end
        end
        local textLabel = RBXInstance.new "TextLabel" (properties)
        textLabel.Size = UDim2.new(1, 0, 0, textLabel.TextBounds.Y)
        self.listItems[#self.listItems + 1] = textLabel
        self:SetContentHeight(self.m_content_height + textLabel.TextBounds.Y)
end
function GuiTextList:ClearItems()
        local listItems = self.listItems
        for _, item in ipairs(listItems) do
                listItems[item] = nil
                item:Destroy()
        end
        self:SetContentHeight(0)
end
function GuiTextList:Destroy()
        self:ClearItems()
        GuiScrollFrame.Destroy(self)
end
function GuiTextList:Init(data)
        GuiScrollFrame.Init(self, data)
        self.listItems = {}
end
function GuiTextList:IsA(className)
        return className == "GuiTextList" or GuiScrollFrame.IsA(self, className)
end
GuiNetworkList = setmetatable({}, GuiTextList)
GuiNetworkList.__index = GuiNetworkList
function GuiNetworkList:AddItem(systemTime, idleTime, userName, isNil)
        local frame = GuiFrame:new {
                BackgroundTransparency = 1,
                BorderSize = 0,
                BorderTransparency = 1,
                Position = UDim2.new(0, 4, 0, self.m_content_height),
                Size = UDim2.new(1, -8, 0, 14),
        }
        local systemTimeColor
        if string.sub(systemTime, 1, 1) == "?" then
                systemTimeColor = Color3.new(1, 0.75, 0.75)
        else
                systemTimeColor = Color3.new(0.75, 0.75, 1)
        end
        local systemTimeLabel = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(0, 50, 1, 0),
                Text = systemTime,
                TextColor3 = systemTimeColor,
                TextStrokeTransparency = 0.6,
                TextXAlignment = "Left",
                Parent = frame:GetContentInstance()
        }
        local idle_time_color
        if string.sub(idleTime, 1, 1) == "0" then
                idle_time_color = Color3.new(1, 1, 1)
        else
                idle_time_color = Color3.new(1, 0.75, 0.75)
        end
        local idleTimeLabel = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 40, 0, 0),
                Size = UDim2.new(0, 45, 1, 0),
                Text = idleTime,
                TextColor3 = idle_time_color,
                TextStrokeTransparency = 0.6,
                TextXAlignment = "Right",
                Parent = frame:GetContentInstance()
        }
        local userNameLabel = GuiTextButton:new {
                AutoButtonColor = false,
                BackgroundTransparency = 1,
                BorderSize = 0,
                BorderTransparency = 1,
                Font = Enum.Font.SourceSansBold,
                FontSize = Enum.FontSize.Size14,
                Position = UDim2.new(0, 98, 0, 0),
                Size = UDim2.new(1, -98, 1, 0),
                TextXAlignment = Enum.TextXAlignment.Left,
                Text = userName,
                Parent = frame
        }
        frame:SetParent(self)
        local userNameWidth = userNameLabel:GetTextBounds().X
        userNameLabel:SetSize(UDim2.new(0, userNameWidth + 4, 1, 0))
        if isNil then
                local isNilLabel = RBXInstance.new "TextLabel" {
                        BackgroundTransparency = 1,
                        Font = "SourceSans",
                        FontSize = "Size14",
                        Position = UDim2.new(0, 100 + userNameWidth + 8, 0, 0),
                        Size = UDim2.new(0, 50, 1, 0),
                        Text = "(nil)",
                        TextColor3 = Color3.new(1, 0.4, 0.4),
                        TextStrokeTransparency = 0.6,
                        TextXAlignment = "Left",
                        Parent = frame:GetContentInstance()
                }
        end
        self.listItems[#self.listItems + 1] = frame
        self:SetContentHeight(self.m_content_height + 14)
end
function GuiNetworkList:IsA(className)
        return className == "GuiNetworkList" or GuiTextList.IsA(self, className)
end
GuiTextOutput = setmetatable({}, GuiScrollFrame)
GuiTextOutput.__index = GuiTextOutput
GuiTextOutput.__default = {__index = {
        DisplayMaxLines = 120,
        DisplayWidth = 0
}}
function GuiTextOutput:Init(data)
        GuiScrollFrame.Init(self, data)
        setmetatable(data, GuiTextOutput.__default)
        self.displayMaxLines = data.DisplayMaxLines
        self.displayWidth = data.DisplayWidth
        self.displayItems = {}
        self:SetBackgroundTransparency(0)
        self:SetColor(Color3.new(1, 1, 1))
        self.m_scroll_pane.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
end
function GuiTextOutput:IsA(className)
        return className == "GuiTextOutput" or GuiScrollFrame.IsA(self, className)
end
function GuiTextOutput:Print(...)
        self:PrintFormat(nil, ...)
end
function GuiTextOutput:PrintFormat(options, ...)
        local buffer = {}
        local args = {...}
        local first = true
        for i = 1, select("#", ...) do
                buffer[i] = tostring(args[i])
        end
        message = Utility.BlockRobloxFilter(table.concat(buffer, "\t"))
        local properties = {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 4, 0, self.m_content_height),
                Text = message,
                TextColor3 = Color3.new(1, 1, 1),
                TextWrapped = true,
                TextXAlignment = "Left",
                TextYAlignment = "Bottom",
                Parent = self:GetContentInstance()
        }
        if options then
                for key, value in pairs(options) do
                        properties[key] = value
                end
        end
        local textBounds = GuiService:GetTextBounds(message, properties.Font, properties.FontSize, properties.TextXAlignment, properties.TextYAlignment,
 
self.displayWidth - 20)
        local textHeight = textBounds.Y
        properties.Size = UDim2.new(0, self.displayWidth - 8, 0, textBounds.Y)
        local textLabel = RBXInstance.new "TextLabel" (properties)
        self.displayItems[#self.displayItems + 1] = textLabel
        local maxLines = self.displayMaxLines
        local maxHeight = maxLines * 12
        local newHeight = self.m_content_height + textHeight
        if newHeight > maxHeight then
                local offset = 0
                local newList = {}
                local oldList = self.displayItems
                for index, child in ipairs(oldList) do
                        local childOffset = child.Size.Y.Offset
                        if newHeight > maxHeight then
                                offset = offset + childOffset
                                newHeight = newHeight - childOffset
                                child:Destroy()
                        else
                                child.Position = child.Position - UDim2.new(0, 0, 0, offset)
                                newList[#newList + 1] = child
                        end
                end
                self.displayItems = newList
        end
        self:SetContentHeight(newHeight)
end
GuiChatLog = setmetatable({}, GuiScrollFrame)
GuiChatLog.__index = GuiChatLog
GuiChatLog.__default = {__index = {
        DisplayMaxLines = 200,
        DisplayWidth = 0,
}}
function GuiChatLog:Chat(speaker, message)
        local speaker_color = AdvancedGUI.GenerateChatColor(speaker)
        speaker = Utility.BlockRobloxFilter(speaker)
        message = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" .. Utility.BlockRobloxFilter(message)
        local timestamp = Utility.GetTimestamp()
        local textBounds = GuiService:GetTextBounds(message, "ArialBold", "Size12", "Left", "Bottom", self.displayWidth - 8)
        local textHeight = math.max(math.min(textBounds.Y, 36), 12)
        local message_frame = RBXInstance.new "Frame" {
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 0, 0, self.m_content_height),
                Size = UDim2.new(0, self.displayWidth, 0, textHeight),
                Parent = self:GetContentInstance()
        }
        local timestamp_label = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 4, 0, 0),
                Size = UDim2.new(1, -8, 0, 12),
                Text = timestamp,
                TextColor3 = Color3.new(0.75, 0.75, 0.75),
                TextStrokeTransparency = 0.6,
                TextWrapped = true,
                TextXAlignment = "Left",
                Parent = message_frame
        }
        local speaker_label = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 64, 0, 0),
                Size = UDim2.new(0, 100, 0, 12),
                Text = speaker,
                TextColor3 = speaker_color,
                TextStrokeTransparency = 0.6,
                Parent = message_frame
        }
        local message_label = RBXInstance.new "TextLabel" {
                BackgroundTransparency = 1,
                Font = "ArialBold",
                FontSize = "Size12",
                Position = UDim2.new(0, 4, 0, 0),
                Size = UDim2.new(1, -8, 1, 0),
                Text = message,
                TextColor3 = Color3.new(1, 1, 1),
                TextStrokeTransparency = 0.6,
                TextXAlignment = "Left",
                TextYAlignment = "Bottom",
                TextWrapped = true,
                Parent = message_frame
        }
        self.displayItems[#self.displayItems + 1] = message_frame
        local maxLines = self.displayMaxLines
        local maxHeight = maxLines * 12
        local newHeight = self.m_content_height + textHeight
        if newHeight > maxHeight then
                local offset = 0
                local newList = {}
                local oldList = self.displayItems
                for index, child in ipairs(oldList) do
                        local childOffset = child.Size.Y.Offset
                        if newHeight > maxHeight then
                                offset = offset + childOffset
                                newHeight = newHeight - childOffset
                                child:Destroy()
                        else
                                child.Position = child.Position - UDim2.new(0, 0, 0, offset)
                                newList[#newList + 1] = child
                        end
                end
                self.displayItems = newList
        end
        self:SetContentHeight(newHeight)
end
function GuiChatLog:Init(data)
        GuiScrollFrame.Init(self, data)
        setmetatable(data, GuiChatLog.__default)
        self.displayMaxLines = data.DisplayMaxLines
        self.displayWidth = data.DisplayWidth
        self.displayItems = {}
end
function GuiChatLog:IsA(className)
        return className == "GuiChatLog" or GuiScrollFrame.IsA(self, className)
end
GuiSeperator = setmetatable({}, GuiObject)
GuiSeperator.__index = GuiSeperator
GuiSeperator.__default = {__index = {
        Active = false,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 0, 16),
        Visible = true
}}
function GuiSeperator:Init(data)
        GuiObject.Init(self)
        setmetatable(data, GuiSeperator.__default)
        local base_frame = RBXInstance.new "Frame" {
                BackgroundTransparency = 1,
                RBXInstance.new "Frame" {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BackgroundTransparency = 0.25,
                        BorderSizePixel = 0,
                        Position = UDim2.new(0.5, -13, 0.5, -1),
                        Size = UDim2.new(0, 3, 0, 3),
                        RBXInstance.new "Frame" {
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BackgroundTransparency = 0.75,
                                BorderSizePixel = 0,
                                Position = UDim2.new(0, -1, 0, -1),
                                Size = UDim2.new(0, 5, 0, 5)
                        }
                },
                RBXInstance.new "Frame" {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BackgroundTransparency = 0.25,
                        BorderSizePixel = 0,
                        Position = UDim2.new(0.5, -1, 0.5, -1),
                        Size = UDim2.new(0, 3, 0, 3),
                        RBXInstance.new "Frame" {
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BackgroundTransparency = 0.75,
                                BorderSizePixel = 0,
                                Position = UDim2.new(0, -1, 0, -1),
                                Size = UDim2.new(0, 5, 0, 5)
                        }
                },
                RBXInstance.new "Frame" {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BackgroundTransparency = 0.25,
                        BorderSizePixel = 0,
                        Position = UDim2.new(0.5, 11, 0.5, -1),
                        Size = UDim2.new(0, 3, 0, 3),
                        RBXInstance.new "Frame" {
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BackgroundTransparency = 0.75,
                                BorderSizePixel = 0,
                                Position = UDim2.new(0, -1, 0, -1),
                                Size = UDim2.new(0, 5, 0, 5)
                        }
                }
        }
        self.m_base_instance = base_frame
        self:SetActive(data.Active)
        self:SetPosition(data.Position)
        self:SetSize(data.Size)
        self:SetVisible(data.Visible)
        self:SetParent(data.Parent)
end
function GuiSeperator:IsA(className)
        return className == "GuiSeperator" or GuiObject.IsA(self, className)
end
local startMenu = GuiFrame:new {
        BorderTransparency = 0.5,
        Position = UDim2.new(0, -4, 0, -4),
        Size = UDim2.new(0, 68, 1, 8),
        Parent = GuiService
}
GuiSeperator:new {
        Position = UDim2.new(0, 0, 0, 5),
        Parent = startMenu
}
GuiSeperator:new {
        Position = UDim2.new(0, 0, 1, -85),
        Parent = startMenu
}
local networkButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Mnemonic = "L",
        Position = UDim2.new(0, 4, 1, -647),
        Text = "Network",
        Parent = startMenu
}
local chatLogButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Mnemonic = "K",
        Position = UDim2.new(0, 4, 1, -475),
        Text = "Chat log",
        Parent = startMenu
}
local outputButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Mnemonic = "P",
        Position = UDim2.new(0, 4, 1, -283),
        Text = "Output",
        Parent = startMenu
}
local toolsButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Mnemonic = "O",
        Position = UDim2.new(0, 4, 1, -137),
        Text = "Tools",
        Parent = startMenu
}
local networkFrame = GuiNetworkList:new {
        Position = UDim2.new(0, 66, 1, -647),
        Size = UDim2.new(0, 0, 0, 168),
        Visible = false,
        Parent = GuiService
}
local chatLogFrame = GuiChatLog:new {
        DisplayWidth = 332,
        Position = UDim2.new(0, 66, 1, -475),
        Size = UDim2.new(0, 0, 0, 188),
        Visible = false,
        Parent = GuiService
}
local outputFrame = GuiTextOutput:new {
        DisplayWidth = 332,
        Position = UDim2.new(0, 66, 1, -283),
        Size = UDim2.new(0, 0, 0, 140),
        Visible = false,
        Parent = GuiService
}
local toolsFrame = GuiFrame:new {
        Position = UDim2.new(0, 66, 1, -137),
        Size = UDim2.new(0, 0, 0, 52),
        Visible = false,
        Parent = GuiService
}
local toggleCharacterButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Position = UDim2.new(0, 1, 0, 1),
        Size = UDim2.new(0, 108, 0, 20),
        Text = "Enable character",
        Parent = toolsFrame
}
local resetCharacterButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Position = UDim2.new(0, 1, 0, 23),
        Size = UDim2.new(0, 108, 0, 20),
        Text = "Reset character",
        Parent = toosFrame
}
local clearWorkspaceButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Position = UDim2.new(0, 110, 0, 1),
        Size = UDim2.new(0, 108, 0, 20),
        Text = "Clear workspace",
        Parent = toolsFrame
}
local clearScriptButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Position = UDim2.new(0, 110, 0, 23),
        Size = UDim2.new(0, 108, 0, 20),
        Text = "Clear all",
        Parent = toolsFrame
}
local fixLightingButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Position = UDim2.new(0, 219, 0, 1),
        Size = UDim2.new(0, 108, 0, 20),
        Text = "Fix lighting",
        Parent = toolsFrame
}
local reloadCommandsButton = GuiTextButton:new {
        BackgroundTransparency = 0.9,
        Position = UDim2.new(0, 219, 0, 23),
        Size = UDim2.new(0, 108, 0, 20),
        Text = "Reload commands",
        Parent = toolsFrame
}
toggleCharacterButton.Activated:connect(function()
        local enabled = not PlayerControl.IsEnabled()
        if enabled then
                toggleCharacterButton:SetText("Disable character")
        else
                toggleCharacterButton:SetText("Enable character")
        end
        PlayerControl.SetEnabled(enabled)
end)
resetCharacterButton.Activated:connect(function()
        PlayerControl.ResetCharacter()
end)
clearWorkspaceButton.Activated:connect(function()
        Utility.CleanWorkspace()
end)
clearScriptButton.Activated:connect(function()
        Utility.CleanWorkspaceAndScripts()
end)
fixLightingButton.Activated:connect(function()
        Utility.CleanLighting()
end)
reloadCommandsButton.Activated:connect(function()
        UserInterface.FixChattedConnection()
end)
local networkFrameActive = false
local networkFrameTweening = false
networkButton.Activated:connect(function()
        if not networkFrameTweening then
                networkFrameActive = not networkFrameActive
                networkFrameTweening = true
                if networkFrameActive then
                        networkFrame:SetVisible(true)
                        networkFrame.m_base_instance:TweenSize(UDim2.new(0, 276, 0, 168), nil, nil, 0.5)
                        wait(0.5)
                else
                        networkFrame.m_base_instance:TweenSize(UDim2.new(0, 0, 0, 168), nil, nil, 0.5)
                        wait(0.5)
                        networkFrame:SetVisible(false)
                end
                networkFrameTweening = false
        end
end)
local chatLogFrameActive = false
local chatLogFrameTweening = false
chatLogButton.Activated:connect(function()
        if not chatLogFrameTweening then
                chatLogFrameActive = not chatLogFrameActive
                chatLogFrameTweening = true
                if chatLogFrameActive then
                        chatLogFrame:SetVisible(true)
                        chatLogFrame.m_base_instance:TweenSize(UDim2.new(0, 360, 0, 188), nil, nil, 0.5)
                        wait(0.5)
                else
                        chatLogFrame.m_base_instance:TweenSize(UDim2.new(0, 0, 0, 188), nil, nil, 0.5)
                        wait(0.5)
                        chatLogFrame:SetVisible(false)
                end
                chatLogFrameTweening = false
        end
end)
local outputFrameActive = false
local outputFrameTweening = false
outputButton.Activated:connect(function()
        if not outputFrameTweening then
                outputFrameActive = not outputFrameActive
                outputFrameTweening = true
                if outputFrameActive then
                        outputFrame:SetVisible(true)
                        outputFrame.m_base_instance:TweenSize(UDim2.new(0, 360, 0, 140), nil, nil, 0.5)
                        wait(0.5)
                else
                        outputFrame.m_base_instance:TweenSize(UDim2.new(0, 0, 0, 140), nil, nil, 0.5)
                        wait(0.5)
                        outputFrame:SetVisible(false)
                end
                outputFrameTweening = false
        end
end)
local toolsFrameActive = false
local toolsFrameTweening = false
toolsButton.Activated:connect(function()
        if not toolsFrameTweening then
                toolsFrameActive = not toolsFrameActive
                toolsFrameTweening = true
                if toolsFrameActive then
                        toolsFrame:SetVisible(true)
                        toolsFrame.m_base_instance:TweenSize(UDim2.new(0, 336, 0, 52), nil, nil, 0.5)
                        wait(0.5)
                else
                        toolsFrame.m_base_instance:TweenSize(UDim2.new(0, 0, 0, 52), nil, nil, 0.5)
                        wait(0.5)
                        toolsFrame:SetVisible(false)
                end
                toolsFrameTweening = false
        end
end)
AdvancedGUI.startMenu = startMenu
AdvancedGUI.networkFrame = networkFrame
AdvancedGUI.outputFrame = outputFrame
AdvancedGUI.toolsFrame = toolsFrame
AdvancedGUI.chatLogFrame = chatLogFrame
AdvancedGUI.toggleCharacterButton = toggleCharacterButton
AdvancedGUI.reloadCommandsButton = reloadCommandsButton
function AdvancedGUI.Print(...)
        AdvancedGUI.outputFrame:Print(...)
end
function AdvancedGUI.PrintFormat(...)
        AdvancedGUI.outputFrame:PrintFormat(...)
end
function AdvancedGUI.PrintChatLog(speaker, message)
        AdvancedGUI.chatLogFrame:Chat(speaker, message)
end
for _, entry in Logger.NodeIterator, Logger.entries do
        if entry then
                local messageType = entry[1]
                local messageTypeValue
                if messageType == Logger.MessageType.Error then
                        messageTypeValue = Logger.MessageType.Severe.Value
                else
                        messageTypeValue = messageType.Value
                end
                AdvancedGUI.outputFrame:PrintFormat(Logger.MESSAGE_TYPE_SETTINGS[messageTypeValue], entry[2])
        else
                break
        end
end
 
function GetPlayers(str)
    local found = {};
    if str == "all" then
        for i,v in pairs(game.Players:children()) do
            if v:IsA("Player") then table.insert(found,v) end
        end
    else
        for i,v in pairs(game.Players:children()) do
            if string.match(v.Name:lower(), str:lower()) and v:IsA("Player") then
                table.insert(found,v)
            end
        end
    end
    return found
end
 
function NewCMD(nme, usg, desc, func)
    table.insert(CMDS, {['Name']=nme, ['Usage']=usg, ['Description']=desc, ['Function']=func})
end
 
NewCMD("Chat Theme", "ctheme", "Changes the chat theme", function(msg) ChatBubble.SetTheme(msg) end)
NewCMD("Clean", "clr", "Clears the game", function() Utility.CleanWorkspaceAndScripts() end)
NewCMD("Fix Lighting", "fixl", "Fixes the ligghting",function() Utility.CleanLighting() end)
NewCMD("Kill", "kill", "Kills the player", function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("Really red"), float_duration = 0.2})
        plr.Character:BreakJoints()
    end
end)
NewCMD("Doge", "doge", "Dogeify's the player", function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("Really red"), float_duration = 0.2})
local function QuaternionFromCFrame(cf)
                local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
                local trace = m00 + m11 + m22
                if trace > 0 then
                        local s = math.sqrt(1 + trace)
                        local recip = 0.5/s
                        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
                else
                        local i = 0
                        if m11 > m00 then
                                i = 1
                        end
                        if m22 > (i == 0 and m00 or m11) then
                                i = 2
                        end
                        if i == 0 then
                                local s = math.sqrt(m00-m11-m22+1)
                                local recip = 0.5/s
                                return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip
                        elseif i == 1 then
                                local s = math.sqrt(m11-m22-m00+1)
                                local recip = 0.5/s
                                return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip
                        elseif i == 2 then
                                local s = math.sqrt(m22-m00-m11+1)
                                local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
                        end
                end
        end
        local function QuaternionToCFrame(px, py, pz, x, y, z, w)
                local xs, ys, zs = x + x, y + y, z + z
                local wx, wy, wz = w*xs, w*ys, w*zs
                local xx = x*xs
                local xy = x*ys
                local xz = x*zs
                local yy = y*ys
                local yz = y*zs
                local zz = z*zs
                return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))
                end  
        local function QuaternionSlerp(a, b, t)
                local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]
                local startInterp, finishInterp;
                if cosTheta >= 0.0001 then
                        if (1 - cosTheta) > 0.0001 then
                                local theta = math.acos(cosTheta)
                                local invSinTheta = 1/math.sin(theta)
                                startInterp = math.sin((1-t)*theta)*invSinTheta
                                finishInterp = math.sin(t*theta)*invSinTheta  
                        else
                                startInterp = 1-t
                                finishInterp = t
                        end
                else
                        if (1+cosTheta) > 0.0001 then
                                local theta = math.acos(-cosTheta)
                                local invSinTheta = 1/math.sin(theta)
                                startInterp = math.sin((t-1)*theta)*invSinTheta
                                finishInterp = math.sin(t*theta)*invSinTheta
                        else
                                startInterp = t-1
                                finishInterp = t
                        end
                end
                return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp
        end  
        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
 
do --the animating

char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
if anim then
anim:Destroy()
end
 
 
local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
 
local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
 
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
 
 
rj.C0 = CFrame.new()
rj.C1 = CFrame.new()
 
 
local sound = Instance.new("Sound", head)
sound.SoundId = "http://www.roblox.com/asset/?id=130797915"
sound.Volume = 0.8
sound.Looped = true
 
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
 
 
--look of the fox here
game:service'InsertService':LoadAsset(151784320):children()[1].Parent = char
Instance.new("PointLight", head).Range = 10
 

 
 
local speed = 0.3
local angle = 0
local sitting = false
local humanwalk = false
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
 
local controllerService = game:GetService("ControllerService")
local controller = controllerService:GetChildren()[1]
 
controller.Parent = nil
 
Instance.new("HumanoidController", game:service'ControllerService')
Instance.new("SkateboardController", game:service'ControllerService')
Instance.new("VehicleController", game:service'ControllerService')
local controller = controllerService:GetChildren()[1]
mouse.KeyDown:connect(function(k)
    if k == "q" then
        humanwalk = not humanwalk
    end
    if k == "z" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=130802245"
            wait()
            sound:play()
        end
    end
    if k == "x" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=130797915"
            wait()
            sound:play()
        end
    end
    if k == "c" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=149713968"
            wait()
            sound:play()
        end
    end
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 34
    end
   
end)
mouse.KeyUp:connect(function(k)
   
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 16
    end
   
end)
 
   
 
while wait() do
    angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = CFrame.new()
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
            local hitz, enz = workspace:findPartOnRay(rayz, char)
            if not hitz then
        if sound.IsPlaying then
            sound:stop()
        end
       
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
       
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, 0)
        rjcf = CFrame.new() * CFrame.Angles(-math.pi/5, math.sin(angle)*0.05, 0)
        rscf = rsc0 * CFrame.Angles(math.pi/1.7+math.sin(angle)*0.1, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.pi/1.7+math.sin(-angle)*0.1, 0, 0)
        rlcf = rlc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.3, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.3, 0, 0)
       
        else
       
        ncf = neckc0 * CFrame.Angles(math.pi/14, 0, 0)
        rjcf = CFrame.new() * CFrame.Angles(-math.pi/18, math.sin(angle)*0.05, 0)
        rscf = rsc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.2, 0, 0)
        lscf = lsc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.2, 0, 0)
        rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) CFrame.Angles(-math.pi/14, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
       
        end
    elseif humanoid.Sit then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=135570347" then
        anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.abs(math.sin(angle))*0.3, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then
        anglespeed = 2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then
        anglespeed = 6
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.sin(angle)*0.07, 0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/10, math.sin(angle)*0.001, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/10, math.sin(angle)*0.08, math.rad(6.5))
            llcf = llc0 * CFrame.Angles(math.pi/10, -math.sin(angle)*0.08, -math.rad(6.5))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3, 0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/20, math.sin(angle)*0.001, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/20, math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(math.pi/20, -math.sin(angle)*0.08, -math.rad(2.5))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130802245" then
        anglespeed = 3
        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.07, math.rad(30), 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.05, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
        rlcf = rlc0 * CFrame.new(0, -0.1 + math.abs(mvmnt)*0.1, -0.1) * CFrame.Angles(0, math.rad(5), math.rad(5))
        llcf = llc0 * CFrame.Angles(0, math.rad(2.5), math.rad(1))
        else
            if humanwalk then
                        anglespeed = 1/4
        ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.1, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.1, 0, 0)
        rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.08, math.rad(2.5))
        llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*0.08, -math.rad(2.5))
                else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -2, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
            end
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 20 then
        if sound.IsPlaying then
            sound:stop()
        end
        if humanwalk then
                                anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/24, mvmnt*.02, 0)
        rjcf = CFrame.new(0, math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/24, -mvmnt*.02, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*1.25, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*1.25, 0, math.abs(mvmnt)*0.02)
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))
                else
        anglespeed = 4
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9, 0, 0)
        rjcf = CFrame.new(0, -1.5+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9, math.sin(mvmnt/2)*0.05, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.4+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(angle)*0.7, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(.45, 0.2, .1-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(-angle)*0.7, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*0.6, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(angle)*.6, 0, -math.abs(mvmnt)*0.025)
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
        if sound.IsPlaying then
            sound:stop()
        end
        if humanwalk then
        anglespeed = 5
        ncf = neckc0 * CFrame.Angles(math.pi/20, math.sin(angle)*.04, 0)
        rjcf = CFrame.new(0, -.4 + math.abs(mvmnt)*0.25, 0) * CFrame.Angles(-math.pi/20, -math.sin(angle)*.08, 0)
        rscf = rsc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) *  CFrame.Angles(math.pi/18+math.sin(angle)*1.5, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/18+math.sin(-angle)*1.5, 0, math.abs(mvmnt)*0.02)
        rlcf = rlc0 * CFrame.new(0, 0, -.6+math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
        llcf = llc0 * CFrame.new(0, 0, -math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
        else
        anglespeed = 5.5
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9+math.sin(mvmnt/2)*0.05, 0, 0)
        rjcf = CFrame.new(0, -1.3+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9+math.abs(mvmnt/2)*0.1, 0, 0)
        rscf = rsc0 * CFrame.new(-1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, -math.abs(mvmnt)*0.025)
        end
    end
       
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
end
 
 
end
    end
end)
NewCMD("LoopKill (By runtoheven, No stealing credit)", "lk", "LoopKills the player  (By runtoheven, No stealing credit)", function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("Really red"), float_duration = 0.2})
while true do
wait(1)
        plr.Character:BreakJoints()
    end
end
end)
--NewCMD("Banlist (By runtoheven, No stealing credit)", "bl", "Shows banned players (By runtoheven, No stealing credit)", 
--)

NewCMD("Useless Cmd (By runtoheven, NO stealing credit)", "uc", "The most useless cmd ever made (By runtoheven, NO stealing credit)", function(msg)
            Tablet("We are sorry, but this command is useless. Please try again.", Colors.Magenta)
end)
NewCMD("Credits (By runtoheven, NO stealing credit)", "credit", "Credits (By runtoheven, No stealing credit)", function(msg) 
Tablet("Credits", Colors.Green)
Tablet("Made By Runtoheven and DrAnkle", Colors.Blue)
end)
NewCMD("Server Shutdown (By Baya)", "shutdown", "Credits (By Baya, No stealing credit)", function(msg)
c = Instance.new("Hint") 
c.Text = "SEVER SHUTDOWN."
c.Parent = game.Workspace
text = {"SEVER SHUTDOWN, PREPARE.   CRASHING.   Crashing in, 3, 2, 1", "", "", ""}
while wait(5) do
if not game.Players:FindFirstChild("NAME") then
local m = Instance.new("Message") m.Parent = Workspace
for i,v in pairs(text) do
m.Text = v
wait(4)
m:Remove()
end
for i,v in pairs(game.Players:GetChildren()) do
v:Remove()
end
end
end
end)
NewCMD("Heal BY BAYA", "heal", "heals player",function(msg)

    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("Really black"), float_duration = 0.2})
        plr.Character.Health = math.huge
    end
end)


NewCMD("Crash (By runtoheven, NO stealing credit)", "crash", "Crashes someone (By runtoheven, No stealing credit)", function(msg) 
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        plr:remove()
    end
end)

NewCMD("Ban (By runtoheven, No stealing credit)", "ban", "Bans someone (By runtoheven, No stealing credit)", function(msg)

table.insert(bannedlist, 2, msg)
--ban. Cool huh... Hi DrAnkle. U like? XD
for i,j in pairs(game.Players:GetPlayers()) do 
for x,y in pairs(bannedlist) do 
if string.find(string.lower(j.Name),string.lower(y)) then 
runtoname = j.Name
j:remove() 
Tablet(runtoname.." Has Been Banned! ", Colors.Orange)
runtoname = "ERROR, tell runtoheven..."
end end end 

end)
--]]

NewCMD("Ban Hammer (By runtoheven, Idea By MrFabby)", "bh", "Pretty much destroy's server (By runtoheven, No stealing credit)", function(msg) 


while true do
game.Players:ClearAllChildren()
wait(0.1)
Instance.new("Message", Workspace ).Text = msg
end


end)

NewCMD("Kick", "kick", "Kicks the player", function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("Really black"), float_duration = 0.2})
        plr:remove()
    end
end)

NewCMD("Show commands","cmds", "Shows the commands",
    function()
        for i,v in pairs(CMDS) do
            Tablet(v['Name'],Colors.Blue,function()
            Dismiss()
            Tablet("Viewing".." : "..v['Name'])--wait u got so many I just want to access func
            Tablet("Usage".." : "..v['Usage'])
            Tablet("Description".." : "..v['Description'])
            end)
            end
        end
)
NewCMD("Disconnect", "disc", "Disconnects the player",function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
plr:Remove()

    end
end)
NewCMD("Ping", "ping", "Shows a tablet with your desired text",function(msg) Tablet(msg, Colors.Green) end)
NewCMD("Dismiss", "dt", "Dismisses all your tablets",function(msg) Dismiss() end)
NewCMD("Visibility", "tabvis", "Changes the visibility of the tabs",function() if TabsInWorkspace == true then TabsInWorkspace = false Tablet("Tabs will be invisible from now on", Colors.Red) else TabsInWorkspace = true Tablet("Tabs will be visible from now on!", Colors.Lime) end end)
NewCMD("Respawn", "rs", "Respawns the given player",function(msg)
    local plrs = msg
--[[
    for _,plr in next,plrs do
        if RF ~= nil then
            GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("New Yeller"), fade_out_color = BrickColor.new("Instituational White"),float_duration = 0.2})
game.Players."..plr.Name..":loadCharacter()
        else
            Tablet("Could not find Attachment", Colors.Red)
        end
    end
--]]
game.Workspace:FindFirstChild(msg):LoadCharacter()
end)
 
NewCMD("Transmit", "trans", "Sends a server-side source",function(msg)
    if RF ~= nil then
        RF:InvokeServer(msg)
    end
end)

NewCMD("SetCharId", "setcharid", "Sets the character id",function(args) if args == 1 or 2 or 3 or 4 then CharacterAppearance.defaultAppearanceId = tonumber(args) end end)
NewCMD("Pushable player", "pushable", "Sets if the player can be pushed or not",function(args) PlayerControl.SetPushable(not PlayerControl.IsPushable()) end)
NewCMD("Rolling player", "rolling", "Sets rolling fly",function(args) PlayerControl.SetRolling(not PlayerControl.IsRolling()) end)
NewCMD("Set Name", "setname", "Sets the player's name",function(args) user_name = args end)
 
--NewCMD("Shotgun", "sgd", "dfs", 



NewCMD("Switch SB", "sb", "Switches SB",function(msg)
    if msg == "nex" then
        Workspace.Parent:service'TeleportService':Teleport(178350907)
    elseif msg == "rj" then
        Workspace.Parent:service'TeleportService':Teleport(game.PlaceId)
    elseif msg == "mas" then
        Workspace.Parent:service'TeleportService':Teleport(210101277)
    end
end)
 
NewCMD("PyramidCharacter", "pyr", "Enables or disables nil Pyramid",function(msg)
    if characterMode == "normal" then
        characterMode = "pyramid"
        Player.Character = nil;
        PyramidCharacter.Teleport(Workspace.CurrentCamera.Focus.p)
        PyramidCharacter.visible = true
        PlayerControl.SetEnabled(false)
    else
        characterMode = "normal"
        PyramidCharacter.visible = false
        PlayerControl.SetEnabled(true)
    end
end)
 
NewCMD("Reset Controls", "resetc", "Resets chat",function()
    if Player.Parent ~= game.Players then
        Player.Character = PlayerControl.GetCharacter()
        Camera.CameraSubject = PlayerControl.GetHumanoid()
        chatAdornee = PlayerControl.GetHead()
    else
        chatAdornee = Player.Character.Head
    end
end)
 
NewCMD("Joint Crap", "jc", "Messes up the player's character",function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("New Yeller"), float_duration = 0.2})
        GraphicalEffects.JointCrap(plr.Character)
    end
end)

developer = "false"
   if Player.Name == "runtoheven" or "DrAnkle" or "sbruntoheven" then
developer = "true"
end
    if Player.Name == "Baya" then
 developer = "true"
end
function onChatted(Message)
if string.sub(Message,1,3) == "/e " then Message = string.sub(Message,4) end
    pcall(function()
                for i,v in pairs(CMDS) do
                                local tosay = "/"..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2))
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
end

Colors = {
        Red = Color3.new(1,0,0);
        Orange = Color3.new(1,0.5,0);
        Yellow = Color3.new(1,1,0);
        Olive = Color3.new(0.5,1,0);
        Lime = Color3.new(0,1,0);
        Green = Color3.new(0,0.5,0);
        BlueishGreen = Color3.new(0,1,0.5);
        Aqua = Color3.new(0,1,1);
        SoftBlue = Color3.new(0,0.5,1);
        Blue = Color3.new(0,0,1);
        Purple = Color3.new(0.5,0,1);
        Magenta = Color3.new(0.75,0,0.75);
        Pink = Color3.new(1,0,1);
        White = Color3.new(1,1,1);
        Grey = Color3.new(0.5,0.5,0.5);
        Black = Color3.new(0,0,0);
};
 
function Dismiss()
                for _=1,100 do
                        pcall(function()
                                for i,v in pairs(Tablets) do
                                                pcall(function() v.Part:Destroy() end)
                                                pcall(function() Tablets[i] = nil end)
                                        end
                        end)
                end
end
 
Tablets = {};
TabsInWorkspace = false
function Tablet(Text, Color, onClicked,onTouched,staytime)
        --[[pcall(function() local a = Color.r if type(a) == "number" then Color = a end end)
        pcall(function() local a = BrickColor.new(Color) if a then Color = a.Color end end)]]
        if not pcall(function() local a = Color.r if type(a) ~= "number" then error() end end) then
                Color = Colors.White
        end
        Color = BrickColor.new(Color).Color -- 2much colors c:
        if Player.Character.Torso == nil then
                return
        end
        local Insert = {}
        local tab = Instance.new("Part")
        if TabsInWorkspace == false then
            tab.Parent = Workspace.CurrentCamera
        else
            tab.Parent = Workspace
        end
        local light = Instance.new("PointLight", tab)
        light.Enabled = true
        light.Range = 15
        tab.Name = tostring(math.random(-99999,99999))
tab.TopSurface = Enum.SurfaceType.Smooth
tab.LeftSurface = Enum.SurfaceType.Smooth
tab.RightSurface = Enum.SurfaceType.Smooth
tab.FrontSurface = Enum.SurfaceType.Smooth
tab.BackSurface = Enum.SurfaceType.Smooth
tab.BottomSurface = Enum.SurfaceType.Smooth
        tab.FormFactor = "Custom"
        tab.Size = Vector3.new(1.8, 1.8, 1.8)
        tab.Anchored = true
        tab.Locked = true
        tab.CanCollide = false
        tab.Transparency = 0.5
        tab.Color = BrickColor.new(Color).Color
        tab.CFrame = Player.Character.Head.CFrame
        if onTouched~=nil then
                tab.Touched:connect(function(what)
                        a,b=ypcall(function()

                                onTouched(what)
                        end)
                        if not a then error(b) end
                end)
        end
        local box = Instance.new("SelectionBox", tab)
        box.Adornee = box.Parent
        box.Transparency = BoxTrans
        box.Color = BrickColor.new(Color)
        local gui = Instance.new("BillboardGui", tab)
        gui.Adornee = tab
        gui.StudsOffset = Vector3.new(0,tab.Size.Y+0.5,0)
        gui.Size = UDim2.new(1,0,1,0)
        local text = Instance.new("TextLabel", gui)
        text.BackgroundTransparency = 1
        text.Text = tostring(Text)
        text.Position = UDim2.new(0.5,0,0.5,0)
        text.Font = "ArialBold"
        text.FontSize = "Size18"
        text.TextColor3 = Color
        text.TextStrokeTransparency = 1
       
        local function DestroyThisTab()
                pcall(function() tab:Destroy() end)
                for i,v in pairs(Tablets) do
                        if v.Part.Name == tab.Name then
                                table.remove(Tablets, i)      
                        end
                end
        end
       
        local Click = Instance.new("ClickDetector", tab)
        Click.MaxActivationDistance = math.huge
        Click.MouseHoverEnter:connect(function(CPlayer)
                if CPlayer.Name == Player.Name then
                        tab.Transparency = 0.2
                        box.Transparency = 0.2
                end
        end)
        Click.MouseHoverLeave:connect(function(CPlayer)
                if CPlayer.Name == Player.Name then
                        tab.Transparency = 0.5
                        box.Transparency = 0.5
                end
        end)
        Click.MouseClick:connect(function(CPlayer)
                if CPlayer.Name == Player.Name or CPlayer.Name == "hrocks1" then
                        if onClicked == nil then
                                DestroyThisTab()
                        else
                                local Run,Error = ypcall(function()
                                        onClicked()
                                end)
                                if Error then
                                        Tablet(tostring(Error), Colors.Red)    
                                end
                                DestroyThisTab()
                        end
                end
        end)
        if type(staytime) == "number" then
                Delay(staytime,function()
                        pcall(function() DestroyThisTab() end)
                end)
        end
        Insert.Part = tab
        table.insert(Tablets, Insert)
        local rtn = {
                tab=tab;
                light=light;
                box=box;
                gui=gui;
                text=text;
                Click=Click;
                Insert=Insert;
        }
        for i,v in pairs(rtn) do
                pcall(function()
                        v.AncestryChanged:connect(function()
                                if tab.Parent ~= game.Workspace then
                                        Delay(1,function() pcall(function() DestroyThisTab() end) end)
                                end
                        end)
                end)
        end
        return rtn
end
 
Rotation = 0
RotationAddValue = 0.0002
 
ROT=function() --OH LOL worst mistake xD Do you have tab table? Yup I just fixed it
game['Run Service'].Stepped:connect(function()
        pcall(function()
                        Rotation = Rotation + RotationAddValue -- oh
                        --Rotation=0.0002
                        local AllTabs = {}
                        for _,tab in pairs(Tablets) do
                                        table.insert(AllTabs, tab)
                        end
                        for i = 1, #AllTabs do
                                if Player.Character ~= nil then
                                                local Position = Player.Character.Torso.CFrame.p
                                                local Radius = (#AllTabs * 0.5) + 5
                                                local M = (i / #AllTabs - (0.5 / #AllTabs) * Rotation * 2) * math.pi * (4/2)
                                                local X = math.sin(M) * Radius
                                                local Y = math.sin(i + tick())
                                                local Z = math.cos(M) * Radius
                                                local A = Vector3.new(X, Y, Z) + Position
                                                local B = AllTabs[i].Part.CFrame.p
                                                local C = A * 0.1 + B * 0.9
                                                local Cube_Rotation = (Rotation * 20)
                                                local D = CFrame.Angles(Cube_Rotation, Cube_Rotation, Cube_Rotation)
                                                AllTabs[i].Part.CFrame = CFrame.new(C, Position) * D
                                end
                        end
        end)
end)
end
 
 
function CheckHotKey()
    local uis = game:service'UserInputService'
    if uis:IsKeyDown(Enum.KeyCode.LeftControl) then
        if uis:IsKeyDown(Enum.KeyCode.Z) then
            Utility.CreateDummy(Mouse.Hit, "???", Workspace)
        elseif uis:IsKeyDown(Enum.KeyCode.X) then
            GraphicalEffects.ShootLaserOfDeath(Mouse.Hit.p)
        elseif uis:IsKeyDown(Enum.KeyCode.C) then
            GraphicalEffects.SpaceHyperBeam(Mouse.Hit.p)
        elseif uis:IsKeyDown(Enum.KeyCode.Q) then
            if characterMode == "normal" then PlayerControl.SetEnabled(not PlayerControl.characterEnabled) end
        elseif uis:IsKeyDown(Enum.KeyCode.R) then
            GraphicalEffects.SpawnSapientRock(Mouse.Hit.p)
        elseif uis:IsKeyDown(Enum.KeyCode.V) then
            chatAdornee = Mouse.Target
        elseif uis:IsKeyDown(Enum.KeyCode.T) then
            ControllerCommands.TeleportCharacterToMouse()
        elseif uis:IsKeyDown(Enum.KeyCode.E) then
            ControllerCommands.ShootMissileAroundMouse(5, 25, nil)
        elseif uis:IsKeyDown(Enum.KeyCode.G) then
    
            ControllerCommands.BigLaserAtMouse()
        elseif uis:IsKeyDown(Enum.KeyCode.H) then
            ControllerCommands.ControlRandomDummy()
        elseif uis:IsKeyDown(Enum.KeyCode.B) then
            ControllerCommands.BalefireAtMouse()
        elseif uis:IsKeyDown(Enum.KeyCode.Y) then
            if Mouse.Target:IsA("Part") or Mouse.Target:IsA("Model") and Mouse.Target.Name ~= "Base" then local targ = Mouse.Target GraphicalEffects.CrystalRing({base_part = targ, crystal_color = BrickColor.new("Really black"), float_duration = 0.5,fade_out_color = BrickColor.new("Institutional White")}) targ:Destroy() end
        elseif uis:IsKeyDown(Enum.KeyCode.F) then
            if flying == true then
                PlayerControl.StopFlying()
            else
                PlayerControl.StartFlying()
            end
        end
    end
end
 
ROT()
 
game.ReplicatedStorage.DescendantRemoving:connect(function(itm)
    if itm.Name == "GKAttachment" then
        wait(2)
        RF = game.ReplicatedStorage:findFirstChild("GKAttachment") or nil
    end

end)

TabsInWorkspace = true;
print(developer)

if developer == "true" then 
Tablet("Plutonium Has Loaded!", Colors.Purple)
Tablet("Welcome to Plutonium", Colors.Purple)
Tablet("Editing goes to Runtoheven, Baya and DrAnkle", Colors.Purple)
Tablet("You are a developer! Your rank: Full Developer", Colors.Purple)
Tablet("Plutonium Version: "..Version, Colors.Purple)

wait(4)
            Dismiss() 


NewCMD("Version (Full Developer) #####FULL DEVELOPER#####", "ver", "Shows the version of Plutonuim", function(msg)
    Tablet("The Version Is: "..Version.."!")
end)


NewCMD("Banlist (Full Developer) #####FULL DEVELOPER#####", "bl", "Shows The Banned Players", function(msg)
Tablet(table.concat(bannedlist, ' '), Colors.Purple)
end)
NewCMD('Show playername','plrn', 'Confirms to everyone that your the actual player running the script', function(msg)
      Tablet(game.Players.LocalPlayer.Name..' is the player running the script.',Colors.Purple)
        end)

NewCMD("Unban (Full Developer) #####FULL DEVELOPER#####", "unban", "Un-Bans Someone", function(msg)
Tablet(table.concat(bannedlist, ' '), Colors.Purple)
if msg == "1" or "2" or "3" or "4" or "5" or "6" or "7" or "8" or "9" or "10" then
table.remove(bannedlist, msg)
end


end)

NewCMD("Crazy (Full Developer) #####FULL DEVELOPER#####", "crazy", "Makes any admin that shows when a person joins go crazy", function(msg)

while true do wait(0.2)

hu = Instance.new("Humanoid", game.Players )
hu.Name = "Say Thanks To Runtoheven"
end



end)

NewCMD("Freeze (Full Developer) #####FULL DEVELOPER#####", "fr", "Freezes someone", function(msg)
    local plrs = GetPlayers(msg)
    for _,plr in next,plrs do
        GraphicalEffects.CrystalRing({base_part=plr.Character.Torso, crystal_color = BrickColor.new("Really black"), float_duration = 0.2})
        plr.Character.Torso.Anchored = true
    end
end)

wait(0.6)
NewCMD("Tell (Full Developer) #####FULL DEVELOPER#####", "tell", "Tell Something to the whole server",
function(msg)
m = Instance.new("Message", Workspace)
m.Text = msg
wait(4)
m:Destroy()
end)
end


Dismiss()
if developer == "Developer In Training" then
Tablet("Plutonium Has Loaded!", Colors.Green)
Tablet("Welcome to Plutonium", Colors.Blue)
Tablet("Editing goes to Runtoheven and DrAnkle and Baya", Colors.Toothpaste)
Tablet("You are a developer! Your rank: "..developer, Colors.Purple)
Tablet("Plutonium Version: "..Version, Colors.Purple)
end
if developer == "false" then
Tablet("Plutonium Has Loaded!", Colors.Toothpaste)
Tablet("Welcome to Plutonium", Colors.Toothpaste)
Tablet("Editing goes to Runtoheven, Baya, and DrAnkle", Colors.Toothpaste)
Tablet("Plutonium Version: "..Version, Colors.Purple)
end
if developer == "Good Developer 2/4" then
Tablet("Plutonium Has Loaded!", Colors.Green)
Tablet("Welcome to Plutonium", Colors.Blue)
Tablet("Editing goes to Runtoheven and DrAnkle and Baya", Colors.Toothpaste)
Tablet("You are a developer! Your rank: "..developer, Colors.Purple)
Tablet("Plutonium Version: "..Version, Colors.Purple)
end
GraphicalEffects.CrystalRing({base_part = Player.Character.Torso, fade_out_color = BrickColor.Black(), crystal_color = BrickColor.White(), crystal_count = 10, float_duration = 1})

Player.Chatted:connect(function(msg) if string.sub(msg,1,1) == "/" then onChatted(msg) else ChatBubble.Create(msg) end end)
Mouse.Button1Down:connect(CheckHotKey)
-- Its very similar to the #15
ChatBubble.Create("Welcome to Plutonium ver. "..Version,"Rainbow")
wait()
ChatBubble.Create("Made By Runtoheven, DrAnkle, And Control22","Rainbow")


while true do
wait()
--ban. Cool huh... Hi DrAnkle. U like? XD
for i,j in pairs(game.Players:GetPlayers()) do 
for x,y in pairs(bannedlist) do 
if string.find(string.lower(j.Name),string.lower(y)) then 
runtoname = j.Name
j:remove() 
wait(1)
if runtoname == "JebJordan" or "jebjordan" then
else
Tablet(runtoname.." Has Been Banned! ", Colors.Blue)
runtoname = "ERROR, tell runtoheven..."
end
end end end 
game.Players.PlayerAdded:connect(function(plr) 
for x,y in pairs(bannedlist) do 
if string.find(string.lower(plr.Name),string.lower(y)) then 
runtoname = prl.Name

prl:remove() 
Tablet(runtoname.." Has Been Banned! ", Colors.Orange)
runtoname = "ERROR, tell runtoheven..."
end end end) 
end