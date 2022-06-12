--[[/-------------------------------\]]--
--[[ .:{ Portable Script Builder }:. ]]--
--[[   (c) stephen77 || 04/28/2013   ]]--
--[[    Version[Date]: 06/26/2013    ]]--
--[[\-------------------------------/]]--

--[[ 
    Whats new in version 06/26/2013: 
        - FPS (@Frostftw)
        - Gui tweens
        - Minor Bug Fix (4): #1. CreateLocal error Handling
                             #2. CreateLocal environment
                             #3. Scroll-buttons '>' and '<' now depends on TextFit
                             #4. ZIndex fix
        - Faster RunLocal

    Full update list:
        [06/22/2013]:    - Menu
                        - Differentiate between Run, Error, and Print
        [06/12/2013]:    - Can be used in other security context as well
        [06/11/2013]:    - Now you can close output!
                        - Main gui now supports cl, and l
                        - Draggable output! (Drag on the title!)
        [06/10/2013]:    - Renewed output
                        - Scroll-buttons!
        [06/08/2013]:    - Fixed output
                        - New main gui!
        [06/06/2013]:    - Portable SB now optimized for Security Context 7

    To do:
        - Damned scrollbar.
        - How about an auto-update?
]]--

wait();
if _G.PortableSBRan == nil or _G.PortableSBRan == false then

if pcall(function() return settings() end) then pcall(function() script.Parent = _Portable_SB_; end) end
pcall(function() script.Parent = nil; end)

Services = setmetatable(getmetatable(newproxy(true)), {__index = function(o, k) return game:service(k) or nil end; __call = function(o, k) return game:service(k) or nil end; __tostring = function(o, k) return "Services List" end; __metatable = "This metatable has been locked";});
LocalPlayer = game:service'Players'.LocalPlayer;
Appearance, NameChosen = LocalPlayer.CharacterAppearance, LocalPlayer.Name;
local GuiParent = pcall(function() game:service'CoreGui'.Name = game:service'CoreGui'.Name end) and game:service'CoreGui' or LocalPlayer.PlayerGui
local OutputGui, GuiPositionIndex, MaxStack, CurrentPosition, CurrentSub, TextList, TextClass, OutputFrame, MouseHold, MousePosition = Instance.new("ScreenGui"), {}, 15, 1, 1, {}, {["P"] = {}; ["E"] = {}; ["R"] = {};}, nil, "None", UDim2.new();
local UsingEnter, UseChat, NoClip = false, false, true;
local Version = "06/26/2013 [STABLE]"
pcall(function() OutputGui.Name = "[Portable SB] - Output"; end);
pcall(function() OutputGui.Parent = GuiParent; end);

--[[ Important Function ]]--
local CreateLine, SetZIndex;
function CreateLine(Position)
    if GuiPositionIndex[Position] ~= nil then return GuiPositionIndex[Position] end
    local NewLine = Instance.new("TextButton", OutputFrame)
    NewLine.Name = "[Portable SB] - OutputLine"
    NewLine.FontSize = "Size9"
    NewLine.Size = UDim2.new(1, -15, 0, 15)
    NewLine.Position = UDim2.new(0, 0, 0, (Position * 15) + 10)
    NewLine.TextXAlignment = "Left"
    NewLine.BorderSizePixel = 0
    NewLine.TextWrapped = true;
    NewLine.BackgroundColor3 = Color3.new(.5, .5, .5)
    NewLine.BackgroundTransparency = .5
    NewLine.BorderColor3 = Color3.new(1, 1, 1)
    NewLine.TextStrokeColor3 = Color3.new()
    NewLine.TextStrokeTransparency = 0.7
    NewLine.ZIndex = 1;
    GuiPositionIndex[Position] = NewLine;
    return NewLine
end 
function SetZIndex(Prn, ZIdx)
    pcall(function() Prn.ZIndex = ZIdx; end);
    if #Prn:children() > 0 then
        for i, v in pairs(Prn:children()) do
            coroutine.resume(coroutine.create(SetZIndex), v, ZIdx);
        end
    end
end
--[[ End of Important Function ]]--


--[[ Shared ]]--
function CheckPermissions()
    local ran, err = pcall(function() return settings() end)
    return ran
end
function print(...)
    local time = tick()
    local hour = math.floor((time % 86400) / 3600)
    local minute = math.floor((time % 3600) / 60)
    local second = math.floor(time % 60)
    hour = string.len(hour) == 2 and hour or "0" .. hour
    minute = string.len(minute) == 2 and minute or "0" .. minute
    second = string.len(second) == 2 and second or "0" .. second
    local Msg = "";
    local args = {...}
    local pos = #TextList + 1
    local function lastIndex(t)
        local last = 0;
        for i, v in pairs(t) do
            last = i > last and i or last;
        end
        return last;
    end
    for i = 1, lastIndex(args) do
        local v = args[i];
        Msg = Msg .. tostring(v) .. "\t";
    end
    Msg = Msg:gsub("\n", " "):gsub("\t", " ");
    Msg = " [" .. hour .. ":" .. minute .. ":" .. second .. "]\t" .. string.sub(Msg, 1, string.len(Msg) - 1);
    TextList[pos] = Msg;
    TextClass["P"][pos] = true;
    if (pos - MaxStack) == CurrentPosition then
        CurrentPosition = CurrentPosition + 1
        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
            local posx = (i - CurrentPosition) + 1
            if TextList[i] ~= nil then
                local line = CreateLine(posx);
                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
                line.Text = string.sub(TextList[i], CurrentSub)
            else
                if GuiPositionIndex[posx] ~= nil then
                    GuiPositionIndex[posx].Parent = nil;
                    GuiPositionIndex[posx] = nil;
                end
            end
        end
    end
    if (pos - CurrentPosition + 1) <= MaxStack then
        local line = CreateLine(pos - CurrentPosition + 1);
        line.TextColor3 = Color3.new(1, 1, 1);
        line.Text = string.sub(Msg, CurrentSub);
    end
end
function GetRecursiveChildren(Parent)
    local ret = {}
    for i, v in pairs(Parent:GetChildren()) do
        if #v:GetChildren() > 0 then
            local childs = GetRecursiveChildren(v)
            for i1, v1 in pairs(childs) do
                ret[#ret + 1] = v1
            end
        end    
        ret[#ret + 1] = v
    end
    return ret
end
function UnFilter(Msg)
    local newMsg = ""
    for i = 1, string.len(Msg) do
        newMsg = newMsg .. string.sub(Msg, i, i) .. "\127"
    end
    return newMsg
end
--[[ End of Shared ]]--

--[[ Non - Shared ]]--
local function customError(msg, scr)
    local msg = (tostring(msg) == nil or tostring(msg) == "") and "Unknown Error" or tostring(msg);
    local pattern = ":(%d+):"
    local match = string.match(msg, pattern)
    local time = tick()
    local hour = math.floor((time % 86400) / 3600)
    local minute = math.floor((time % 3600) / 60)
    local second = math.floor(time % 60)
    hour = string.len(hour) == 2 and hour or "0" .. hour
    minute = string.len(minute) == 2 and minute or "0" .. minute
    second = string.len(second) == 2 and second or "0" .. second
    local function GetLine(msg, line)
        if msg == nil or tonumber(line) == nil then return end
        local line = tonumber(line) - 1
        for i = 1, line do
            if string.find(msg, "\n") then local f = string.find(msg, "\n") msg = string.sub(msg, f + 1) end
        end
        if string.find(msg, "\n") then local f = string.find(msg, "\n") msg = string.sub(msg, 1, f - 1) end
        return msg
    end
    if match then
        local st, en = string.find(msg, pattern)
        local rm
        if scr then
            local line = GetLine(scr, match)
            local txt = string.len(line) <= 25 and line or string.sub(line, 1, 22) .. "..."
            rm = '[string "' .. txt .. '"]:' .. string.sub(msg, en + 1)
        else
            rm = string.sub(msg, en + 1)
        end
        msg = rm;
    end
    local pos = #TextList + 1
    msg = " [" .. hour .. ":" .. minute .. ":" .. second .. "]\t" .. msg;
    TextList[pos] = msg;
    TextClass["E"][pos] = true;
    if (pos - MaxStack) == CurrentPosition then
        CurrentPosition = CurrentPosition + 1
        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
            local posx = (i - CurrentPosition) + 1
            if TextList[i] ~= nil then
                local line = CreateLine(posx);
                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
                line.Text = string.sub(TextList[i], CurrentSub)
            else
                if GuiPositionIndex[posx] ~= nil then
                    GuiPositionIndex[posx].Parent = nil;
                    GuiPositionIndex[posx] = nil;
                end
            end
        end
    end
    if (pos - CurrentPosition + 1) <= MaxStack then
        local line = CreateLine(pos - CurrentPosition + 1);
        line.TextColor3 = Color3.new(1, 0, 0);
        line.Text = string.sub(msg, CurrentSub);
    end
end
local function createRun(msg)
    local time = tick()
    local hour = math.floor((time % 86400) / 3600)
    local minute = math.floor((time % 3600) / 60)
    local second = math.floor(time % 60)
    hour = string.len(hour) == 2 and hour or "0" .. hour
    minute = string.len(minute) == 2 and minute or "0" .. minute
    second = string.len(second) == 2 and second or "0" .. second
    local pos = #TextList + 1
    msg = " [" .. hour .. ":" .. minute .. ":" .. second .. "]\t" .. msg;
    TextList[pos] = msg;
    TextClass["R"][pos] = true;
    if (pos - MaxStack) == CurrentPosition then
        CurrentPosition = CurrentPosition + 1
        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
            local posx = (i - CurrentPosition) + 1
            if TextList[i] ~= nil then
                local line = CreateLine(posx);
                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
                line.Text = string.sub(TextList[i], CurrentSub)
            else
                if GuiPositionIndex[posx] ~= nil then
                    GuiPositionIndex[posx].Parent = nil;
                    GuiPositionIndex[posx] = nil;
                end
            end
        end
    end
    if (pos - CurrentPosition + 1) <= MaxStack then
        local line = CreateLine(pos - CurrentPosition + 1);
        line.TextColor3 = Color3.new(0, 1, 0);
        line.Text = string.sub(msg, CurrentSub);
    end
end
local function fake_loadstring(...)
    local args = {...}
    local rets = {loadstring(unpack(args))}
    return unpack(rets)
end
local function FindPlayer(str)
    local str = tostring(str) or " "
    local rtn = {};
    if str == "me" then
        table.insert(rtn, LocalPlayer);
    elseif str == "all" then
        for i, v in pairs(game:service'Players':GetPlayers()) do 
            if v ~= LocalPlayer then
                table.insert(rtn, v)
            end
        end
        table.insert(rtn, LocalPlayer)
    elseif str == "random" then
        rtn = {game:service'Players':GetPlayers()[math.random(#game:service'Players':GetPlayers())]}
    else
        for i, v in pairs(game:service'Players':GetPlayers()) do
            if str == "others" then
                if v ~= LocalPlayer then
                    table.insert(rtn, v)
                end
            elseif str == "teams" then
                if v.TeamColor == LocalPlayer.TeamColor then
                    table.insert(rtn, v);
                end
            elseif str == "nonteams" then
                if v.TeamColor ~= LocalPlayer.TeamColor then
                    table.insert(rtn, v);
                end
            else
                if string.find(v.Name:lower(), str:lower()) then
                    table.insert(rtn, v);
                end
            end
        end
    end
    return rtn;
end
local function MakeChat(Msg)
    local Msg = tostring(Msg) or " "
    Msg = Msg:gsub("\n", " "):gsub("\t", " ");
    coroutine.wrap(function()
        local function TweenColor3(obj, properties)
            local R, G, B = math.random(), math.random(), math.random();
            for x = 1, 3 do
                for i = 1, 50 do
                    obj[properties] = x == 1 and Color3.new(R + i/50, G, B) or x == 2 and Color3.new(R + 1, G + i/50, B) or x == 3 and Color3.new(R + 1, G + 1, B + i/50);
                    wait();
                end
            end
        end
        local Part = Instance.new("Part", LocalPlayer.Character)
        Part.CanCollide = false
        Part.Transparency = 1
        Part.Locked = true;
        Part.Anchored = true;
        Part:BreakJoints()
        local BBG = Instance.new("BillboardGui", Part)
        BBG.Adornee = Part
        BBG.Size = UDim2.new(0, 10 * string.len(Msg), 0, 30)
        BBG.StudsOffset = Vector3.new(0, 1, 0)
        local Txt = Instance.new("TextLabel", BBG)
        Txt.Text = Msg
        Txt.BackgroundTransparency = 1
        Txt.Font = "ArialBold"
        Txt.FontSize = "Size24"
        Txt.BackgroundColor3 = Color3.new(1,1,1)
        Txt.Size = UDim2.new(1, 0, 1, 0)
        coroutine.wrap(function() TweenColor3(Txt, "TextColor3") end)();
        coroutine.resume(coroutine.create(function()
            while Part.Parent == LocalPlayer.Character do
                Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0);
                wait();
            end
        end))
        coroutine.resume(coroutine.create(function()
            for i = 3, 250 do 
                    BBG.StudsOffset = Vector3.new(0, 1 + (i / 25), 0);
                    Txt.TextTransparency = i / 250;
                    wait()
            end
            Part.Parent = nil;
        end))
    end)()
end
--[[ End of Non - Shared ]]--

--[[ Output GUI ]]--
local DraggingFrame = Instance.new("Frame", OutputGui);
DraggingFrame.Name = "[Portable SB] - DraggingFrame";
DraggingFrame.Size = UDim2.new(1, 1, 1, 1);
DraggingFrame.Position = UDim2.new(0, 0, 0, 0);
DraggingFrame.BackgroundTransparency = 1;
DraggingFrame.MouseMoved:connect(function(X, Y)
    coroutine.wrap(function()
        if MouseHold == "OutputTitle" then
            pcall(function() OutputFrame.Position = UDim2.new(0, X, 0, Y) - MousePosition; end)
        elseif MouseHold == "MenuTitle" then
            pcall(function() OutputGui["[Portable SB] - MenuFrame"].Position = UDim2.new(0, X, 0, Y) - MousePosition; end)
        end
    end)()
end)
OutputFrame = Instance.new("Frame", OutputGui);
OutputFrame.Name = "[Portable SB] - OutputFrame";
OutputFrame.Size = UDim2.new(0.4, 15, 0, 270);
OutputFrame.Position = UDim2.new(0, 5, 1, -350);
OutputFrame.BackgroundColor3 = Color3.new(0, 0, 0);
OutputFrame.BackgroundTransparency = .5;
local OutputTitle = Instance.new("TextButton", OutputFrame)
OutputTitle.Name = "[Portable SB] - OutputTitle"
OutputTitle.FontSize = "Size10"
OutputTitle.Size = UDim2.new(1, -45, 0, 15)
OutputTitle.Position = UDim2.new(0, 0, 0, 5)
OutputTitle.BackgroundColor3 = Color3.new(.5, .5, .5)
OutputTitle.BackgroundTransparency = .5
OutputTitle.TextColor3 = Color3.new(1, 1, 1);
OutputTitle.TextStrokeColor3 = Color3.new(0, 0, 0)
OutputTitle.TextStrokeTransparency = 0.7
OutputTitle.TextXAlignment = "Left"
OutputTitle.BorderSizePixel = 0
OutputTitle.TextWrapped = true;
OutputTitle.Text = " [Portable SB] - Output"
OutputTitle.MouseButton1Down:connect(function(X, Y)
    MouseHold = "OutputTitle"
    MousePosition = UDim2.new(0, X, 0, Y) - OutputFrame.Position
end)
OutputTitle.MouseButton1Up:connect(function()
    MouseHold = "None"
end)
local ShowNote = Instance.new("TextLabel", OutputTitle)
ShowNote.Name = "[Portable SB] - Note"
ShowNote.FontSize = "Size10"
ShowNote.Size = UDim2.new(1, 0, 1, 0)
ShowNote.Position = UDim2.new(0, 0, 0, 0)
ShowNote.BackgroundTransparency = 1
ShowNote.TextColor3 = Color3.new(1, 1, 1);
ShowNote.TextStrokeColor3 = Color3.new(0, 0, 0)
ShowNote.TextStrokeTransparency = 0.7
ShowNote.TextXAlignment = "Right"
ShowNote.BorderSizePixel = 0
ShowNote.TextWrapped = true;
coroutine.resume(coroutine.create(function()
    repeat
        local FPS, ModF = math.modf(1/wait());
        local hour, minute, second = math.floor((tick() % 86400) / 3600), math.floor((tick() % 3600) / 60), math.floor(tick() % 60);
        hour, minute, second = string.len(hour) == 2 and hour or "0" .. hour, string.len(minute) == 2 and minute or "0" .. minute, string.len(second) == 2 and second or "0" .. second;
        ShowNote.Text = "[" .. hour .. ":" .. minute .. ":" .. second .. "]\tFPS [" .. FPS .. "] ";
    until nil;
end))
local Button_CLEAR = Instance.new("TextButton", OutputTitle) 
Button_CLEAR.Name = "[Portable SB] - ClearOutput"
Button_CLEAR.Size = UDim2.new(0, 15, 0, 15) 
Button_CLEAR.Position = UDim2.new(1, 0, 0, 0) 
Button_CLEAR.Text = "C" 
Button_CLEAR.BackgroundColor3 = Color3.new(1, 1, 1)
Button_CLEAR.BackgroundTransparency = 0;
Button_CLEAR.BorderColor3 = Color3.new(1, 1, 1)
Button_CLEAR.TextColor3 = Color3.new(0, 0, 0);
Button_CLEAR.TextStrokeColor3 = Color3.new(1, 1, 1)
Button_CLEAR.FontSize = "Size10"
Button_CLEAR.TextStrokeTransparency = 0.7
Button_CLEAR.BorderSizePixel = 0
Button_CLEAR.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        for i = 1, MaxStack do
            if GuiPositionIndex[i] ~= nil then
                GuiPositionIndex[i].Parent = nil;
                GuiPositionIndex[i] = nil;
            end
            TextList = {};
            TextClass = {["P"] = {}; ["E"] = {}; ["R"] = {};}
            CurrentPosition = 1;
            CurrentSub = 1;
        end
    end)()
end)
local Button_MENU = Instance.new("TextButton", OutputTitle) ;
Button_MENU.Name = "[Portable SB] - Menu";
Button_MENU.Size = UDim2.new(0, 15, 0, 15); 
Button_MENU.Position = UDim2.new(1, 15, 0, 0);
Button_MENU.Text = "M";
Button_MENU.BackgroundColor3 = Color3.new(1, 1, 0);
Button_MENU.BackgroundTransparency = 0;
Button_MENU.TextColor3 = Color3.new(0, 0, 0);
Button_MENU.TextStrokeColor3 = Color3.new(1, 1, 1);
Button_MENU.FontSize = "Size10";
Button_MENU.TextStrokeTransparency = 0.7;
Button_MENU.BorderSizePixel = 0;
Button_MENU.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        if OutputGui:FindFirstChild("[Portable SB] - MenuFrame") == nil then
            local MenuFrame = Instance.new("Frame", OutputGui);
            MenuFrame.Name = "[Portable SB] - MenuFrame";
            MenuFrame.Size = UDim2.new(0, 15, 0, 15);
            MenuFrame.Position = UDim2.new(0, Button_MENU.AbsolutePosition.X, 0, Button_MENU.AbsolutePosition.Y);
            MenuFrame.BackgroundColor3 = Color3.new(0, 0, 0);
            MenuFrame.BackgroundTransparency = .5;
            MenuFrame:TweenSizeAndPosition(UDim2.new(0.4,0,0,150), UDim2.new(0.3,0,0.5,-125), 1, 1, 0.25, false);
            local MenuTitle = Instance.new("TextButton", MenuFrame)
            MenuTitle.Name = "[Portable SB] - MenuTitle"
            MenuTitle.FontSize = "Size10"
            MenuTitle.Size = UDim2.new(1, -15, 0, 15)
            MenuTitle.Position = UDim2.new(0, 0, 0, 5)
            MenuTitle.BackgroundColor3 = Color3.new(.5, .5, .5)
            MenuTitle.BackgroundTransparency = .5
            MenuTitle.TextColor3 = Color3.new(1, 1, 1);
            MenuTitle.TextStrokeColor3 = Color3.new(0, 0, 0)
            MenuTitle.TextStrokeTransparency = 0.7
            MenuTitle.TextXAlignment = "Left"
            MenuTitle.BorderSizePixel = 0
            MenuTitle.TextWrapped = true;
            MenuTitle.Text = " [Portable SB] - Menu"
            MenuTitle.MouseButton1Down:connect(function(X, Y)
                MouseHold = "MenuTitle"
                MousePosition = UDim2.new(0, X, 0, Y) - MenuFrame.Position
            end)
            MenuTitle.MouseButton1Up:connect(function()
                MouseHold = "None"
            end)
            local Button_MenuCLOSE = Instance.new("TextButton", MenuTitle) 
            Button_MenuCLOSE.Name = "[Portable SB] - CloseOutput"
            Button_MenuCLOSE.Size = UDim2.new(0, 15, 0, 15) 
            Button_MenuCLOSE.Position = UDim2.new(1, 0, 0, 0) 
            Button_MenuCLOSE.Text = "X" 
            Button_MenuCLOSE.BackgroundColor3 = Color3.new(1, 0, 0)
            Button_MenuCLOSE.BackgroundTransparency = 0;
            Button_MenuCLOSE.BorderColor3 = Color3.new(1, 1, 1)
            Button_MenuCLOSE.TextColor3 = Color3.new(1, 1, 1);
            Button_MenuCLOSE.TextStrokeColor3 = Color3.new(0, 0, 0)
            Button_MenuCLOSE.FontSize = "Size10"
            Button_MenuCLOSE.TextStrokeTransparency = 0.7
            Button_MenuCLOSE.BorderSizePixel = 0
            Button_MenuCLOSE.MouseButton1Down:connect(function()
                MenuFrame:ClearAllChildren();
                MenuFrame:TweenSizeAndPosition(UDim2.new(0,15,0,15), UDim2.new(0, Button_MENU.AbsolutePosition.X, 0, Button_MENU.AbsolutePosition.Y), 1, 1, 0.25, false);
                game:service'Debris':AddItem(MenuFrame, 0.25);
            end)
            local Vars = setmetatable({}, {
            __index = function(o, k)
                if k == "NoClip" then return NoClip;
                elseif k == "UseChat" then return UseChat;
                elseif k == "UseEnter" or k == "UsingEnter" then return UsingEnter;
                end
            end;
            __newindex = function(o, k, v)
                pcall(function()
                    if k == "NoClip" then NoClip = v;
                    elseif k == "UseChat" then UseChat = v;
                    elseif k == "UseEnter" or k == "UsingEnter" then UsingEnter = v;
                    end
                end)
            end;
            });
            for i, v in pairs({"NoClip"; "UseChat"; "UseEnter";}) do
                local Button_Option, Status_Option;
                Button_Option = Instance.new("TextButton", MenuFrame)
                Button_Option.Name = "[Portable SB] - Button_Option"
                Button_Option.FontSize = "Size10"
                Button_Option.Size = UDim2.new(0.80, 0, 0, 15)
                Button_Option.Position = UDim2.new(0, 0, 0, 10 + (15 * i))
                Button_Option.BackgroundColor3 = Color3.new(.5, .5, .5)
                Button_Option.BackgroundTransparency = .5
                Button_Option.TextColor3 = Color3.new(1, 1, 1);
                Button_Option.TextStrokeColor3 = Color3.new(0, 0, 0)
                Button_Option.TextStrokeTransparency = 0.7
                Button_Option.TextXAlignment = "Left"
                Button_Option.BorderSizePixel = 0
                Button_Option.TextWrapped = true;
                Button_Option.Text = "\t" .. v
                Button_Option.MouseButton1Down:connect(function()
                    Vars[v] = not Vars[v];
                    pcall(function() 
                        Status_Option.Text = Vars[v] and "[ENABLED]" or "[DISABLED]"; 
                        Status_Option.TextColor3 = Vars[v] and Color3.new(0, 1, 0) or Color3.new(1, 0, 0);
                    end);
                end)
                Status_Option = Instance.new("TextLabel", MenuFrame)
                Status_Option.Name = "[Portable SB] - Status_Option"
                Status_Option.Font = "ArialBold";
                Status_Option.FontSize = "Size12"
                Status_Option.Size = UDim2.new(0.20, 0, 0, 15)
                Status_Option.Position = UDim2.new(0.80, 0, 0, 10 + (15 * i))
                Status_Option.BackgroundTransparency = 1
                Status_Option.TextColor3 = Vars[v] and Color3.new(0, 1, 0) or Color3.new(1, 0, 0);
                Status_Option.TextStrokeColor3 = Color3.new(0, 0, 0)
                Status_Option.TextStrokeTransparency = 0.7
                Status_Option.TextXAlignment = "Right"
                Status_Option.BorderSizePixel = 0
                Status_Option.TextWrapped = true;
                Status_Option.Text = Vars[v] and "[ENABLED]" or "[DISABLED]";
            end
            coroutine.resume(coroutine.create(SetZIndex), MenuFrame, 2);
        else
            local MenuFrame = OutputGui:FindFirstChild("[Portable SB] - MenuFrame");
            MenuFrame.Archivable = true;
            local MenuClone = MenuFrame:clone();
            MenuClone.Name = "[Portable SB] - FakeMenuFrame";
            MenuClone.Parent = MenuFrame.Parent;
            MenuFrame:Destroy();
            MenuClone:ClearAllChildren();
            MenuClone:TweenSizeAndPosition(UDim2.new(0,15,0,15), UDim2.new(0, Button_MENU.AbsolutePosition.X, 0, Button_MENU.AbsolutePosition.Y), 1, 1, 0.25, false);
            game:service'Debris':AddItem(MenuClone, 0.25);
        end
    end)()
end)
local Button_CLOSE = Instance.new("TextButton", OutputTitle) 
Button_CLOSE.Name = "[Portable SB] - CloseOutput"
Button_CLOSE.Size = UDim2.new(0, 15, 0, 15) 
Button_CLOSE.Position = UDim2.new(1, 30, 0, 0) 
Button_CLOSE.Text = "X" 
Button_CLOSE.BackgroundColor3 = Color3.new(1, 0, 0)
Button_CLOSE.BackgroundTransparency = 0;
Button_CLOSE.BorderColor3 = Color3.new(1, 1, 1)
Button_CLOSE.TextColor3 = Color3.new(1, 1, 1);
Button_CLOSE.TextStrokeColor3 = Color3.new(0, 0, 0)
Button_CLOSE.FontSize = "Size10"
Button_CLOSE.TextStrokeTransparency = 0.7
Button_CLOSE.BorderSizePixel = 0
Button_CLOSE.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        if OutputGui:FindFirstChild("[Portable SB] - MenuFrame") then
            local MenuFrame = OutputGui:FindFirstChild("[Portable SB] - MenuFrame")
            MenuFrame.Archivable = true;
            local MenuClone = MenuFrame:clone();
            MenuClone.Name = "[Portable SB] - FakeMenuFrame";
            MenuClone.Parent = MenuFrame.Parent;
            MenuFrame:Destroy();
            MenuClone:ClearAllChildren();
            MenuClone:TweenSizeAndPosition(UDim2.new(0,15,0,15), UDim2.new(0, Button_MENU.AbsolutePosition.X, 0, Button_MENU.AbsolutePosition.Y), 1, 1, 0.25, false);
            game:service'Debris':AddItem(MenuClone, 0.25);
            wait(.25);
        end
        OutputFrame.Archivable = true;
        local OutputClone = OutputFrame:clone();
        OutputClone.Name = "[Portable SB] - FakeOutputFrame";
        OutputClone.Parent = OutputFrame.Parent;
        OutputFrame.Parent = nil;
        OutputClone:ClearAllChildren();
        OutputClone:TweenSizeAndPosition(UDim2.new(0, 135, 0, 15), UDim2.new(0, 1, 1, -75), 1, 1, 0.25, false);
        game:service'Debris':AddItem(OutputClone, 0.25);
        wait(.25);
        local Button_SHOW = Instance.new("TextButton", OutputGui)
        Button_SHOW.Name = "[Portable SB] - Button_SHOW"
        Button_SHOW.FontSize = "Size10"
        Button_SHOW.Size = UDim2.new(0, 135, 0, 15)
        Button_SHOW.Position = UDim2.new(0, 1, 1, -75)
        Button_SHOW.BackgroundColor3 = Color3.new(.5, .5, .5)
        Button_SHOW.BackgroundTransparency = .75
        Button_SHOW.BorderColor3 = Color3.new(1, 1, 1)
        Button_SHOW.TextColor3 = Color3.new(1, 1, 1);
        Button_SHOW.TextStrokeColor3 = Color3.new(0, 0, 0)
        Button_SHOW.TextStrokeTransparency = 0.75
        Button_SHOW.BorderSizePixel = 0
        Button_SHOW.TextWrapped = true;
        Button_SHOW.Text = "[Portable SB] - Output"
        Button_SHOW.MouseButton1Down:connect(function()
            coroutine.wrap(function()
                game:service'Debris':AddItem(Button_SHOW, 0);
                local RealPos, RealSize = OutputFrame.Position, OutputFrame.Size;
                OutputFrame.Size = UDim2.new(0, 135, 0, 15)
                OutputFrame.Position = UDim2.new(0, 1, 1, -75)
                OutputFrame.Parent = OutputGui;
                OutputFrame:TweenSizeAndPosition(RealSize, RealPos, 1, 1, 0.25, false);
            end)()
        end)
    end)()
end)
local Button_UP = Instance.new("TextButton", OutputFrame) 
Button_UP.Name = "[Portable SB] - Scrollbar_UP"
Button_UP.Size = UDim2.new(0, 15, 0, 15) 
Button_UP.Position = UDim2.new(1, -15, 0, 25) 
Button_UP.Text = "^" 
Button_UP.BackgroundColor3 = Color3.new(.5, .5, .5)
Button_UP.BackgroundTransparency = 0.5;
Button_UP.BorderColor3 = Color3.new(1, 1, 1)
Button_UP.TextColor3 = Color3.new(1, 1, 1);
Button_UP.TextStrokeColor3 = Color3.new(0, 0, 0)
Button_UP.FontSize = "Size12"
Button_UP.TextStrokeTransparency = 0.7
Button_UP.BorderSizePixel = 0
Button_UP.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        MouseHold = "Button_UP"
        CurrentPosition = CurrentPosition - 1 >= 1 and CurrentPosition - 1 or CurrentPosition
        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
            local pos = (i - CurrentPosition) + 1
            if TextList[i] ~= nil then
                local line = CreateLine(pos);
                line.Text = string.sub(TextList[i], CurrentSub)
                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
            end
        end
    end)()
end)
Button_UP.MouseButton1Up:connect(function()
    MouseHold = "None";
end)
local Button_DOWN = Instance.new("TextButton", OutputFrame) 
Button_DOWN.Name = "[Portable SB] - Scrollbar_DOWN"
Button_DOWN.Size = UDim2.new(0, 15, 0, 15) 
Button_DOWN.Position = UDim2.new(1, -15, 0, 235) 
Button_DOWN.Text = "v" 
Button_DOWN.BackgroundColor3 = Color3.new(.5, .5, .5)
Button_DOWN.BackgroundTransparency = 0.5;
Button_DOWN.BorderColor3 = Color3.new(1, 1, 1)
Button_DOWN.TextColor3 = Color3.new(1, 1, 1);
Button_DOWN.TextStrokeColor3 = Color3.new(0, 0, 0)
Button_DOWN.FontSize = "Size10"
Button_DOWN.TextStrokeTransparency = 0.7
Button_DOWN.BorderSizePixel = 0
Button_DOWN.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        MouseHold = "Button_DOWN"
        CurrentPosition = TextList[CurrentPosition + 1] ~= nil and CurrentPosition + 14 < #TextList and CurrentPosition + 1 or CurrentPosition
        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
            local pos = (i - CurrentPosition) + 1
            if TextList[i] ~= nil then
                local line = CreateLine(pos);
                line.Text = string.sub(TextList[i], CurrentSub)
                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
            else
                if GuiPositionIndex[pos] ~= nil then
                    GuiPositionIndex[pos].Parent = nil;
                    GuiPositionIndex[pos] = nil;
                end
            end
        end
    end)()
end)
Button_DOWN.MouseButton1Up:connect(function()
    MouseHold = "None";
end)
local Button_LEFT = Instance.new("TextButton", OutputFrame) 
Button_LEFT.Name = "[Portable SB] - Scrollbar_LEFT"
Button_LEFT.Size = UDim2.new(0, 15, 0, 15) 
Button_LEFT.Position = UDim2.new(0, 0, 0, 250) 
Button_LEFT.Text = "<" 
Button_LEFT.BackgroundColor3 = Color3.new(.5, .5, .5)
Button_LEFT.BackgroundTransparency = 0.5;
Button_LEFT.BorderColor3 = Color3.new(1, 1, 1)
Button_LEFT.TextColor3 = Color3.new(1, 1, 1);
Button_LEFT.TextStrokeColor3 = Color3.new(0, 0, 0)
Button_LEFT.FontSize = "Size10"
Button_LEFT.TextStrokeTransparency = 0.7
Button_LEFT.BorderSizePixel = 0
Button_LEFT.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        MouseHold = "Button_LEFT"
        CurrentSub = CurrentSub - 1 > 0 and CurrentSub - 1 or CurrentSub
        for i = 1, 15 do
            local pos = (i + CurrentPosition) - 1
            if GuiPositionIndex[i] ~= nil then
                GuiPositionIndex[i].Text = string.sub(TextList[pos], CurrentSub)
            end
        end
    end)()
end)
Button_LEFT.MouseButton1Up:connect(function()
    MouseHold = "None";
end)
local Button_RIGHT = Instance.new("TextButton", OutputFrame) 
Button_RIGHT.Name = "[Portable SB] - Scrollbar_RIGHT"
Button_RIGHT.Size = UDim2.new(0, 15, 0, 15) 
Button_RIGHT.Position = UDim2.new(1, -30, 0, 250) 
Button_RIGHT.Text = ">" 
Button_RIGHT.BackgroundColor3 = Color3.new(.5, .5, .5)
Button_RIGHT.BackgroundTransparency = 0.5;
Button_RIGHT.BorderColor3 = Color3.new(1, 1, 1)
Button_RIGHT.TextColor3 = Color3.new(1, 1, 1);
Button_RIGHT.TextStrokeColor3 = Color3.new(0, 0, 0)
Button_RIGHT.FontSize = "Size10"
Button_RIGHT.TextStrokeTransparency = 0.7
Button_RIGHT.BorderSizePixel = 0
Button_RIGHT.MouseButton1Down:connect(function()
    coroutine.wrap(function()
        MouseHold = "Button_RIGHT"
        CurrentSub = CurrentSub + 1
        local Allow = false;
        pcall(function() 
            for i, v in pairs(GuiPositionIndex) do
                if not v.TextFits then 
                    Allow = true;
                    break
                end
            end
        end)
        if not Allow then CurrentSub = CurrentSub - 1 end
        for i = 1, 15 do
            local pos = (i + CurrentPosition) - 1
            if GuiPositionIndex[i] ~= nil then
                GuiPositionIndex[i].Text = string.sub(TextList[pos], CurrentSub)
            end
        end
    end)()
end)
Button_RIGHT.MouseButton1Up:connect(function()
    MouseHold = "None";
end)
coroutine.resume(coroutine.create(SetZIndex), OutputFrame, 1);
--[[ End of Output GUI ]]--

--[[ CMDBar GUI ]]--
local ChatBox = Instance.new("TextBox", OutputGui)
ChatBox.Name = "[Portable SB] - CMDBar"
ChatBox.Font = "ArialBold"
ChatBox.FontSize = "Size12"
ChatBox.Size = UDim2.new(0, 500, 0, 20)
ChatBox.Position = UDim2.new(0, 75, 1, -25)
ChatBox.BackgroundColor3 = Color3.new(.5, .5, .5)
ChatBox.BackgroundTransparency = 0.7
ChatBox.BorderColor3 = Color3.new(1 , 1, 1)
ChatBox.TextColor3 = Color3.new(0, 0, 0);
ChatBox.Text = " - Type Portable SB commands / chats here, click '>' - "
ChatBox.TextStrokeColor3 = Color3.new(1, 1, 1)
ChatBox.TextStrokeTransparency = 0.7
ChatBox.TextXAlignment = "Left"
ChatBox.BorderSizePixel = 1
ChatBox.ClearTextOnFocus = true;
ChatBox.TextWrapped = true;
ChatBox.Draggable = true;
ChatBox.MultiLine = false;
ChatBox.Changed:connect(function(p)
    if UsingEnter and p == "Text" and p.Text ~= "" then
        local Msg = tostring(ChatBox.Text) or " "
        local isRunning, anyError = coroutine.resume(coroutine.create(function()
            if Msg:sub(1, 1) == "#" then
                LoadScript(Msg:sub(2));
            elseif Msg:sub(1, 2) == "s#" then
                RunScript(Msg:sub(3));
                createRun("[Portable SB]: Created a script. Note: the script might not run!");
            elseif Msg:sub(1, 2) == "l#" then
                RunLocal(Msg:sub(3), LocalPlayer);
                createRun("[Portable SB]: Created a localscript on you.");
            elseif Msg:sub(1, 3) == "cl#" then
                local MsgA = Msg:sub(4);
                local s, e = string.find(MsgA, "#");
                if s and e then
                    local plr = FindPlayer(string.sub(MsgA, 1, s - 1))
                    for i, v in pairs(plr) do
                        RunLocal(string.sub(MsgA, e + 1), v);
                        if v ~= LocalPlayer then
                            createRun("[Portable SB]: Created a localscript on " .. v.Name .. ". Note: the script might not run!");
                        else
                            createRun("[Portable SB]: Created a localscript on you.");
                        end
                    end
                end
            else
                MakeChat(UnFilter(Msg));
            end
        end))
        if not isRunning then customError(anyError); end
    end
end)
local Button_OK = Instance.new("TextButton", ChatBox) 
Button_OK.Name = "[Portable SB] - Chat_OK"
Button_OK.Size = UDim2.new(0, 25, 0, 20) 
Button_OK.Position = UDim2.new(0, 500, 0, 0) 
Button_OK.Text = ">" 
Button_OK.BackgroundColor3 = Color3.new(.5, .5, .5)
Button_OK.BackgroundTransparency = 0.7 
Button_OK.TextColor3 = Color3.new(0, 0, 0)  
Button_OK.BorderColor3 = Color3.new(1, 1, 1)
Button_OK.Font = "ArialBold"
Button_OK.FontSize = "Size12"
Button_OK.TextStrokeColor3 = Color3.new(1, 1, 1)
Button_OK.TextStrokeTransparency = 0.7
Button_OK.BorderSizePixel = 1
Button_OK.MouseButton1Down:connect(function()
    local Msg = tostring(ChatBox.Text) or " "
    local isRunning, anyError = coroutine.resume(coroutine.create(function()
        if Msg:sub(1, 1) == "#" then
            LoadScript(Msg:sub(2));
        elseif Msg:sub(1, 2) == "s#" then
            RunScript(Msg:sub(3));
            createRun("[Portable SB]: Created a script. Note: the script might not run!");
        elseif Msg:sub(1, 2) == "l#" then
            RunLocal(Msg:sub(3), LocalPlayer);
            createRun("[Portable SB]: Created a localscript on you.");
        elseif Msg:sub(1, 3) == "cl#" then
            local MsgA = Msg:sub(4);
            local s, e = string.find(MsgA, "#");
            if s and e then
                local plr = FindPlayer(string.sub(MsgA, 1, s - 1))
                for i, v in pairs(plr) do
                    RunLocal(string.sub(MsgA, e + 1), v);
                    if v ~= LocalPlayer then
                        createRun("[Portable SB]: Created a localscript on " .. v.Name .. ". Note: the script might not run!");
                    else
                        createRun("[Portable SB]: Created a localscript on you.");
                    end
                end
            end
        else
            MakeChat(UnFilter(Msg));
        end
    end))
    if not isRunning then customError(anyError); end
end)
coroutine.resume(coroutine.create(SetZIndex), ChatBox, 3);
--[[ End of CMDBar Gui ]]--

function LoadScript(Msg)
    local works, fail = fake_loadstring(Msg)
    if works then
        local works2, fail2 = coroutine.resume(coroutine.create(works))
        if works2 then
            createRun("[Portable SB]: Script ran successfully!")
        else
            fail2 = tostring(fail2) ~= "" and tostring(fail2) or "Unknown Error";
            customError(fail2, Msg)
        end
    else
        fail = tostring(fail) ~= "" and tostring(fail) or "Unknown Error";
        customError(fail, Msg)
    end
end
function RunLocal(Source, Player)
    local NewLocalScript;
    coroutine.wrap(function()
        NewLocalScript = Instance.new("LocalScript")
        NewLocalScript.Source = [[
            repeat wait() until script:FindFirstChild("NewSource") and script:FindFirstChild("Owner"); 
            Services = setmetatable(getmetatable(newproxy(true)), {__index = function(o, k) return game:service(k) or nil end; __call = function(o, k) return game:service(k) or nil end; __tostring = function(o, k) return "Services List" end; __metatable = "This metatable has been locked";});
            LocalPlayer = Services["Players"].LocalPlayer
            
            local function createOutput(Msg, type)
                local create_output = Instance.new("ObjectValue")
                create_output.Name = "create_output"
                create_output.Value = script
                create_output.Parent = script:FindFirstChild("Owner").Value;
                local value_toPrint = Instance.new("StringValue")
                value_toPrint.Name = "value_toPrint"
                value_toPrint.Value = Msg
                value_toPrint.Parent = create_output
                local output_type = Instance.new("StringValue")
                output_type.Name = "output_type"
                output_type.Value = type
                output_type.Parent = create_output
            end
            
            local function print(...)
                local Msg = "";
                local args = {...}
                local function lastIndex(t)
                    local last = 0;
                    for i, v in pairs(t) do
                        last = i > last and i or last;
                    end
                    return last;
                end
                for i = 1, lastIndex(args) do
                    local v = args[i];
                    Msg = Msg .. tostring(v) .. "\t";
                end
                Msg = string.sub(Msg, 1, string.len(Msg) - 1);
                createOutput(Msg, "print");
            end
            
            local works, fail = loadstring(script:FindFirstChild("NewSource").Value)
            if works then
                getfenv(works)["print"] = print;
                local works2, fail2 = coroutine.resume(coroutine.create(works))
                if works2 then
                    createOutput("Script ran successfully!", "createRun")
                else
                    createOutput(fail2, "customError");
                end
            else
                createOutput(fail, "customError");
            end
        ]]
        NewLocalScript.Disabled = true;
        NewLocalScript.Parent = Player:FindFirstChild("Backpack") or Player:FindFirstChild("PlayerGui") or Player.Character or Player.ChildAdded:wait();
        wait();
        NewLocalScript.Disabled = false;
        local ScrSource = Instance.new("StringValue")
        ScrSource.Name = "NewSource"
        ScrSource.Value = Source
        ScrSource.Parent = NewLocalScript
        local Owner = Instance.new("ObjectValue")
        Owner.Name = "Owner"
        Owner.Value = LocalPlayer
        Owner.Parent = NewLocalScript
    end)()
    return NewLocalScript;
end
function RunScript(Source)
    local NewScript;
    coroutine.wrap(function()
        NewScript = Instance.new("Script")
        NewScript.Source = [[
            repeat wait() until script:FindFirstChild("NewSource") and script:FindFirstChild("Owner"); 
            Services = setmetatable(getmetatable(newproxy(true)), {__index = function(o, k) return game:service(k) or nil end; __call = function(o, k) return game:service(k) or nil end; __tostring = function(o, k) return "Services List" end; __metatable = "This metatable has been locked";});
            
            local function createOutput(Msg, type)
                local create_output = Instance.new("ObjectValue")
                create_output.Name = "create_output"
                create_output.Value = script
                create_output.Parent = script:FindFirstChild("Owner").Value;
                local value_toPrint = Instance.new("StringValue")
                value_toPrint.Name = "value_toPrint"
                value_toPrint.Value = Msg
                value_toPrint.Parent = create_output
                local output_type = Instance.new("StringValue")
                output_type.Name = "output_type"
                output_type.Value = type
                output_type.Parent = create_output
            end
            
            local function print(...)
                local Msg = "";
                local args = {...}
                local function lastIndex(t)
                    local last = 0;
                    for i, v in pairs(t) do
                        last = i > last and i or last;
                    end
                    return last;
                end
                for i = 1, lastIndex(args) do
                    local v = args[i];
                    Msg = Msg .. tostring(v) .. "\t";
                end
                Msg = string.sub(Msg, 1, string.len(Msg) - 1);
                createOutput(Msg, "print");
            end
            
            local works, fail = loadstring(script:FindFirstChild("NewSource").Value)
            if works then
                getfenv(works)["print"] = print;
                local works2, fail2 = coroutine.resume(coroutine.create(works))
                if works2 then
                    createOutput("Script ran successfully!", "createRun")
                else
                    createOutput(fail2, "customError");
                end
            else
                createOutput(fail, "customError");
            end
        ]]
        NewScript.Disabled = true;
        NewScript.Parent = nil;
        wait();
        game:service'InsertService':Insert(NewScript);
        NewScript.Disabled = false;
        local ScrSource = Instance.new("StringValue")
        ScrSource.Name = "NewSource"
        ScrSource.Value = Source
        ScrSource.Parent = NewScript
        local Owner = Instance.new("ObjectValue")
        Owner.Name = "Owner"
        Owner.Value = LocalPlayer
        Owner.Parent = NewScript
    end)()
    return NewScript;
end

--[[ Connections (also Connection-like) ]]--
LocalPlayer.ChildAdded:connect(function(Obj)
    coroutine.resume(coroutine.create(function()
        if Obj.Name == "create_output" and Obj.className == "ObjectValue" then
            repeat wait() until Obj:FindFirstChild("value_toPrint") and Obj:FindFirstChild("output_type")
            local Skrip = Obj.Value
            local value_toPrint = Obj:FindFirstChild("value_toPrint").Value
            if Obj:FindFirstChild("output_type").Value == "createRun" then
                createRun(Skrip:GetFullName() .. ": " .. value_toPrint)
            elseif Obj:FindFirstChild("output_type").Value == "customError" then
                local time = tick()
                local hour = math.floor((time % 86400) / 3600)
                local minute = math.floor((time % 3600) / 60)
                local second = math.floor(time % 60)
                hour = string.len(hour) == 2 and hour or "0" .. hour
                minute = string.len(minute) == 2 and minute or "0" .. minute
                second = string.len(second) == 2 and second or "0" .. second
                local pos = #TextList + 1
                msg = " [" .. hour .. ":" .. minute .. ":" .. second .. "]\t" .. Skrip:GetFullName() .. ": " .. value_toPrint;
                TextList[pos] = msg;
                TextClass["E"][pos] = true;
                if (pos - MaxStack) == CurrentPosition then
                    CurrentPosition = CurrentPosition + 1
                    for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
                        local posx = (i - CurrentPosition) + 1
                        if TextList[i] ~= nil then
                            local line = CreateLine(posx);
                            line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
                            line.Text = string.sub(TextList[i], CurrentSub)
                        else
                            if GuiPositionIndex[posx] ~= nil then
                                GuiPositionIndex[posx].Parent = nil;
                                GuiPositionIndex[posx] = nil;
                            end
                        end
                    end
                end
                if (pos - CurrentPosition + 1) <= MaxStack then
                    local line = CreateLine(pos - CurrentPosition + 1);
                    line.TextColor3 = Color3.new(1, 0, 0);
                    line.Text = string.sub(msg, CurrentSub);
                end
            else
                print(Skrip:GetFullName() .. ": " .. value_toPrint)
            end
            pcall(function() game:service'Debris':AddItem(Obj, 0); end)
        end
    end))
end)
LocalPlayer.Chatted:connect(function(Msg)
    local isRunning, anyError = coroutine.resume(coroutine.create(function()
        if Msg:sub(1, 1) == "#" then
            LoadScript(Msg:sub(2));
        elseif Msg:sub(1, 2) == "s#" then
            RunScript(Msg:sub(3));
            createRun("[Portable SB]: Created a script. Note: the script might not run!");
        elseif Msg:sub(1, 2) == "l#" then
            RunLocal(Msg:sub(3), LocalPlayer);
            createRun("[Portable SB]: Created a localscript on you.");
        elseif Msg:sub(1, 3) == "cl#" then
            local MsgA = Msg:sub(4);
            local s, e = string.find(MsgA, "#");
            if s and e then
                local plr = FindPlayer(string.sub(MsgA, 1, s - 1))
                for i, v in pairs(plr) do
                    RunLocal(string.sub(MsgA, e + 1), v);
                    if v ~= LocalPlayer then
                        createRun("[Portable SB]: Created a localscript on " .. v.Name .. ". Note: the script might not run!");
                    else
                        createRun("[Portable SB]: Created a localscript on you.");
                    end
                end
            end
        end
    end))
    if not isRunning then customError(anyError); end
    pcall(function() if UseChat or LocalPlayer.Parent ~= game:service'Players' then MakeChat(UnFilter(Msg)) end end)
end)
game:service'RunService'.Stepped:connect(function()
    coroutine.resume(coroutine.create(function()
        if NoClip then
            for i, v in pairs(GetRecursiveChildren(LocalPlayer.Character)) do
                if v:IsA("BasePart") then 
                    pcall(function() v.CanCollide = false; end)
                end
            end
        end
    end))
    coroutine.resume(coroutine.create(function()
        LocalPlayer.Name = NameChosen;
        LocalPlayer.Character.Name = NameChosen;
    end))
    coroutine.resume(coroutine.create(function()
        if LocalPlayer.CharacterAppearance ~= Appearance then
            if Appearance ~= "" then
                LocalPlayer.CharacterAppearance = Appearance;
                LocalPlayer.Character:BreakJoints();
            else
                Appearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. LocalPlayer.userId .. "placeId=" .. game.placeId;
            end
        end
    end))
end)
coroutine.resume(coroutine.create(function()
    while wait() do
        if MouseHold ~= "None" then
            wait(.75);
            if MouseHold == "Button_UP" then
                while MouseHold == "Button_UP" do
                    wait(.1)
                    coroutine.wrap(function()
                        CurrentPosition = CurrentPosition - 1 >= 1 and CurrentPosition - 1 or CurrentPosition
                        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
                            local pos = (i - CurrentPosition) + 1
                            if TextList[i] ~= nil then
                                local line = CreateLine(pos);
                                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
                                line.Text = string.sub(TextList[i], CurrentSub)
                            end
                        end
                    end)()
                end
            elseif MouseHold == "Button_DOWN" then
                while MouseHold == "Button_DOWN" do
                    wait(.1)
                    coroutine.wrap(function()
                        CurrentPosition = TextList[CurrentPosition + 1] ~= nil and CurrentPosition + 14 < #TextList and CurrentPosition + 1 or CurrentPosition
                        for i = CurrentPosition, MaxStack + CurrentPosition - 1 do
                            local pos = (i - CurrentPosition) + 1
                            if TextList[i] ~= nil then
                                local line = CreateLine(pos);
                                line.TextColor3 = TextClass["P"][i] ~= nil and TextClass["P"][i] and Color3.new(1, 1, 1) or TextClass["E"][i] ~= nil and TextClass["E"][i] and Color3.new(1, 0, 0) or TextClass["R"][i] ~= nil and TextClass["R"][i] and Color3.new(0, 1, 0);
                                line.Text = string.sub(TextList[i], CurrentSub)
                            else
                                if GuiPositionIndex[pos] ~= nil then
                                    GuiPositionIndex[pos].Parent = nil;
                                    GuiPositionIndex[pos] = nil;
                                end
                            end
                        end
                    end)()
                end
            elseif MouseHold == "Button_LEFT" then
                while MouseHold == "Button_LEFT" do
                    wait(.075)
                    coroutine.wrap(function()
                        CurrentSub = CurrentSub - 1 > 0 and CurrentSub - 1 or CurrentSub
                        for i = 1, 15 do
                            local pos = (i + CurrentPosition) - 1
                            if GuiPositionIndex[i] ~= nil then
                                GuiPositionIndex[i].Text = string.sub(TextList[pos], CurrentSub)
                            end
                        end
                    end)()
                end
            elseif MouseHold == "Button_RIGHT" then
                while MouseHold == "Button_RIGHT" do
                    wait(.075)
                    coroutine.wrap(function()
                        CurrentSub = CurrentSub + 1
                        local Allow = false;
                        pcall(function() 
                            for i, v in pairs(GuiPositionIndex) do
                                if not v.TextFits then 
                                    Allow = true;
                                    break
                                end
                            end
                        end)
                        if not Allow then CurrentSub = CurrentSub - 1 end
                        for i = 1, 15 do
                            local pos = (i + CurrentPosition) - 1
                            if GuiPositionIndex[i] ~= nil then
                                GuiPositionIndex[i].Text = string.sub(TextList[pos], CurrentSub)
                            end
                        end
                    end)()
                end
            end
        end
    end
end))
--[[ End of Connections (also Connection-like) ]]--

--[[ No Double ]]--
_G.PortableSBRan = true;
--[[ End of No Double ]]--

createRun("[Portable SB]: Ran successfully! | Made by stephen77");
createRun("[Portable SB]: Hello, " .. LocalPlayer.Name);
createRun("[Portable SB]: You are currently running version " .. Version);

local rLocalInit = false;
coroutine.resume(coroutine.create(function()
    repeat wait() until #FindPlayer("others") > 0
    while game:service'Workspace':FindFirstChild("RandomObject-Local") == nil do
        wait()
        local scr = RunLocal([[
            function print(...) end
            if Services["Workspace"]:FindFirstChild("RandomObject-Local") == nil then
                Instance.new("Model", Services["Workspace"]).Name = "RandomObject-Local";
            end
        ]], FindPlayer("others")[math.random(#FindPlayer("others"))])
        game:service'Debris':AddItem(scr, .25);
    end
    pcall(function() game:service'Workspace':FindFirstChild("RandomObject-Local").Parent = nil; end)
    createRun("[Portable SB]: RunLocal initialized successfully.");
    rLocalInit = true;
end))
coroutine.resume(coroutine.create(function()
    while game:service'Workspace':FindFirstChild("RandomObject-Script") == nil do
        wait()
        local scr = RunScript([[
            function print(...) end
            if Services["Workspace"]:FindFirstChild("RandomObject-Script") == nil then
                Instance.new("Model", Services["Workspace"]).Name = "RandomObject-Script";
            end
        ]])
        game:service'Debris':AddItem(scr, .25);
    end
    pcall(function() game:service'Workspace':FindFirstChild("RandomObject-Script").Parent = nil; end)
    createRun("[Portable SB]: RunScript initialized successfully.");
end))
coroutine.resume(coroutine.create(function()
    repeat wait() until #FindPlayer("others") > 0 and LocalPlayer.Character and LocalPlayer.Character.Parent
    repeat
        local scr = RunLocal([[
            script.Parent = LocalPlayer.Character;
        ]], LocalPlayer)
        game:service'Debris':AddItem(scr, .25);
        wait(.25) 
    until rLocalInit or LocalPlayer.Parent ~= game:service'Players';
end))

end

-- fuck suck mediafire hitler lego yolo swag dick shit bitch Portable Script Builder Stable 06/26/2013
