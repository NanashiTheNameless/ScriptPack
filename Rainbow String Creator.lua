-- Decompiled by Blyat
-- Fixed by Bad

local c = {}
local n = Instance.new
local t = type
local ud = "userdata"
c.Part = function(self, P, s)
  
  local p = n("Part", P)
  p.formFactor = "Custom"
  if t(s) == ud then
    p.Size = s
  else
    if t(s) == "table" then
      p.Size = Vector3.new(s[1], s[2], s[3])
    end
  end
  p:BreakJoints()
  return p
end

c.Part3 = function(self, P, s)
  
  local p = c:Part(P, s)
  local m = n("SpecialMesh", p)
  m.MeshId = "rbxassetid://9856898"
  m.TextureId = "rbxassetid://48358980"
  p.Changed:connect(function()
    
    m.Scale = p.Size * 2
  end
)
  return p, m
end

Player = game:GetService("Players").LocalPlayer
pcall(function()
  
  Player.PlayerGui.G:Destroy()
end
)
HSVtoRGB = function(h, s, v)
  
  local c = v * s
  local x = c * (1 - math.abs(h / 60 % 2 - 1))
  local m = v - c
  local r = 0
  local g = 0
  local b = 0
  if h >= 0 and h < 60 then
    r = c
    g = x
  else
    if h >= 60 and h < 120 then
      r = x
      g = c
    else
      if h >= 120 and h < 180 then
        g = c
        b = x
      else
        if h >= 180 and h < 240 then
          g = x
          b = c
        else
          if h >= 240 and h < 300 then
            r = x
            b = c
          else
            if h >= 300 and h < 360 then
              r = c
              b = x
            end
          end
        end
      end
    end
  end
  r = r + m
  g = g + m
  b = b + m
  return r, g, b
end

Screen = Instance.new("ScreenGui", Player.PlayerGui)
Screen.Name = "G"
TextLabel = function(Pa, S, Po, Color)
  
  local T = Instance.new("TextLabel", Pa)
  T.Size = S
  T.Position = Po
  T.BackgroundColor3 = Color
  T.Text = ""
  T.BorderSizePixel = 0
  return T
end

TextButton = function(Pa, S, Po, Color)
  
  local T = Instance.new("TextButton", Pa)
  T.Size = S
  T.Position = Po
  T.BackgroundColor3 = Color
  T.BorderColor3 = Color
  T.Text = ""
  return T
end

TextBox = function(Pa, S, Po, Color)
  
  local T = Instance.new("TextBox", Pa)
  T.Size = S
  T.Position = Po
  T.BackgroundColor3 = Color
  T.BorderColor3 = Color
  T.Text = ""
  return T
end

Frame = function(Pa, S, Po)
  
  local T = Instance.new("Frame", Pa)
  T.Size = S
  T.Position = Po
  T.BackgroundColor3 = Color3.new(1, 1, 1)
  T.BorderSizePixel = 0
  return T
end

local BarScreen = Frame(Screen, UDim2.new(0.15, 0, 2, 0), UDim2.new(0.888, 0, -1, 0))
BarScreen.BackgroundTransparency = 0.5
local WS = Frame(Screen, UDim2.new(0.172, 0, 0.335, 0), UDim2.new(0.715, 0, 0.665, 0))
local TStick = 3
local WantedColor = Color3.new(0.5, 0.5, 0.8)
local MStick = {}
local Angles = {
{185, 0, 0}
, 
{0, 1, 0}
, 
{0, 0, 0}
, 
{0, 0, 0}
, 
{0, 0, 0}
, 
{0, 0, 0}
, 
{0, 0, 0}
}
reVisible = function(Number)
  
  for i = 1, 7 do
    if Number < i then
      MStick[i].Visible = false
    else
      if i <= Number then
        MStick[i].Visible = true
      end
    end
  end
end

CreateGeometry = function()
  
  Centre = Player.Character.Torso.CFrame
  pcall(function()
    
    Player.Character["Geometry" .. Player.Name]:Destroy()
  end
)
  local Boss = Instance.new("Model", Player.Character)
  Boss.Name = "Geometry" .. Player.Name
  local OldPart, FirstPart = nil, nil
  local Parts = {}
  local MyAngles = {}
  local ModifyAngle = {}
  local MyCentre = Centre * CFrame.new(0, -3, 0)
  local MyParent = Boss
  for i,v in pairs(Angles) do
    table.insert(MyAngles, i, {})
    MyAngles[i][1] = v[1]
    MyAngles[i][2] = v[2]
    MyAngles[i][3] = v[3]
  end
  for i = 1, TStick do
    local Part = Instance.new("Part", MyParent)
    table.insert(Parts, i, Part)
    Part.FormFactor = "Custom"
    Part.CanCollide = false
    Part.Anchored = true
    Part.Size = Vector3.new(0.1, 0.1, 5)
    if OldPart == nil then
      Part.CFrame = MyCentre
      FirstPart = Part
    else
      Part.CFrame = OldPart.CFrame + OldPart.CFrame.lookVector * Part.Size.Z / 2
    end
    OldPart = Part
    Part.CFrame = Part.CFrame + Part.CFrame.lookVector * Part.Size.Z / 2
  end
  local ReachMax = false
  for i = 1, #Parts do
    table.insert(ModifyAngle, i, {0, 0, 0})
  end
  local OldPos = Parts[#Parts].CFrame + Parts[#Parts].CFrame.lookVector * Parts[#Parts].Size.Z / 2
  local co = 0
  repeat
    local StopTry = false
    for i,v in pairs(ModifyAngle) do
      v[1] = v[1] + MyAngles[i][1]
      v[2] = v[2] + MyAngles[i][2]
      v[3] = v[3] + MyAngles[i][3]
      if i == 1 then
        Parts[i].CFrame = MyCentre * CFrame.Angles(math.rad(v[1]), math.rad(v[2]), math.rad(v[3]))
      else
        Parts[i].CFrame = Parts[i - 1].CFrame + Parts[i - 1].CFrame.lookVector * Parts[i - 1].Size.Z / 2
        Parts[i].CFrame = Parts[i].CFrame * CFrame.Angles(math.rad(v[1]), math.rad(v[2]), math.rad(v[3]))
      end
      Parts[i].CFrame = Parts[i].CFrame + Parts[i].CFrame.lookVector * Parts[i].Size.Z / 2
      local NewPos = Parts[#Parts].CFrame + Parts[#Parts].CFrame.lookVector * Parts[#Parts].Size.Z / 2
      local L, M = c:Part3(MyParent, {0.1, 0.1, (NewPos.p - OldPos.p).magnitude})
      local R, G, B = HSVtoRGB(co % 360, 1, 1)
      L.FormFactor = "Custom"
      L.TopSurface = "Smooth"
      L.BottomSurface = "Smooth"
      L.CanCollide = true
      L.Anchored = true
      L.CFrame = NewPos:lerp(OldPos, 0.3)
      L.CFrame = CFrame.new(NewPos.p, OldPos.p)
      L.CFrame = L.CFrame + L.CFrame.lookVector * ((NewPos.p - OldPos.p).magnitude / 2)
      M.VertexColor = Vector3.new(R, G, B)
      OldPos = NewPos
      if v[1] % 360 == 0 and v[2] % 360 == 0 and v[3] % 360 == 0 and not StopTry then
        ReachMax = true
      else
        if v[1] % 360 ~= 0 or v[2] % 360 ~= 0 or v[3] % 360 ~= 0 then
          ReachMax = false
          StopTry = true
        end
      end
    end
    wait()
    co = co + 1
  until ReachMax
  for i,v in pairs(Parts) do
    v:Destroy()
  end
end

for i = 1, 7 do
  do
    local Label = TextLabel(WS, UDim2.new(0.1, 0, 0.075, 0), UDim2.new(0.05, 0, 0.05 + (i - 1) * 0.085, 0), WantedColor)
    do
      Label.Text = "S" .. i
      local X = TextBox(Label, UDim2.new(1, 0, 1, 0), UDim2.new(1), WantedColor)
      X.BorderSizePixel = 0
      X.Changed:connect(function()
  
  Angles[i][1] = tonumber(X.Text)
end
)
      local Y = TextBox(Label, UDim2.new(1, 0, 1, 0), UDim2.new(2.02), WantedColor)
      Y.BorderSizePixel = 0
      Y.Changed:connect(function()
  
  Angles[i][2] = tonumber(Y.Text)
end
)
      local Z = TextBox(Label, UDim2.new(1, 0, 1, 0), UDim2.new(3.05), WantedColor)
      Z.BorderSizePixel = 0
      Z.Changed:connect(function()
  
  Angles[i][3] = tonumber(Z.Text)
end
)
      X.Text = Angles[i][1]
      Y.Text = Angles[i][2]
      Z.Text = Angles[i][3]
      if TStick < i then
        Label.Visible = false
      end
      table.insert(MStick, i, Label)
    end
  end
end
local IncStick = TextButton(WS, UDim2.new(0.055, 0, 0.05, 0), UDim2.new(0.9, 0, 0.05, 0), WantedColor)
IncStick.Text = "^"
local DecStick = TextButton(WS, UDim2.new(0.055, 0, 0.049, 0), UDim2.new(0.9, 0, 0.1, 0), WantedColor)
DecStick.Text = "v"
local ShoStick = TextBox(WS, UDim2.new(0.3, 0, 0.1, 0), UDim2.new(0.6, 0, 0.05, 0), WantedColor)
ShoStick.Text = TStick
IncStick.MouseButton1Click:connect(function()
  
  if TStick == 7 then
    return 
  end
  TStick = TStick + 1
  ShoStick.Text = TStick
  reVisible(TStick)
end
)
DecStick.MouseButton1Click:connect(function()
  
  if TStick == 1 then
    return 
  end
  TStick = TStick - 1
  ShoStick.Text = TStick
  reVisible(TStick)
end
)
ShoStick.Changed:connect(function()
  
  if tonumber(ShoStick.Text) < 1 then
    TStick = 1
    reVisible(TStick)
  else
    if tonumber(ShoStick.Text) > 7 then
      TStick = 7
      reVisible(TStick)
    else
      ShoStick.Text = TStick
    end
  end
  ShoStick.Text = TStick
end
)
local Generate = TextButton(WS, UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.7, 0), WantedColor)
Generate.Text = "Generate"
Generate.MouseButton1Click:connect(function()
  
  CreateGeometry()
end
)