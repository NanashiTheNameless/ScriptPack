local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local camera = game.Workspace.CurrentCamera
local hpressed = 0
local engineon = false
local flightready = false
local rotateangle = 0
local speed = 10
local wpressed = false
local kpressed = 0
local ppressed = 0
local xpressed = 0
local lpressed = 0
local planehealth = 100
function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end


local mcarrier = Instance.new("Model", workspace)
mcarrier.Name = "MCarrier"

 part = Instance.new("Part", mcarrier)
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.Smooth
part.Size = Vector3.new(2, 4.8, 1)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(9.399, 7.2, -135.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Black")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_2 = Instance.new("Part", mcarrier)
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.Smooth
part_2.Size = Vector3.new(2, 4.8, 1)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(9.399, 7.2, -133.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Black")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_3 = Instance.new("Part", mcarrier)
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.Smooth
part_3.Size = Vector3.new(2, 4.8, 1)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(9.399, 7.2, -131.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Black")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_4 = Instance.new("Part", mcarrier)
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.Smooth
part_4.Size = Vector3.new(2, 4.8, 1)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(9.399, 7.2, -129.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Black")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_5 = Instance.new("Part", mcarrier)
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.Smooth
part_5.Size = Vector3.new(2, 4.8, 1)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(9.399, 7.2, -127.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Black")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat = Instance.new("Seat", mcarrier)
seat.Friction = 0.3
seat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat.TopSurface = Enum.SurfaceType.Smooth
seat.FormFactor = Enum.FormFactor.Custom
seat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat.BrickColor = BrickColor.new("Black")
seat.Size = Vector3.new(2, 1, 2)
seat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat.CFrame = CFrame.new(7.899, 5.3, -133.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_6 = Instance.new("Part", mcarrier)
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.Smooth
part_6.Size = Vector3.new(2, 4.8, 1)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(9.399, 7.2, -125.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Black")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_7 = Instance.new("Part", mcarrier)
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.Smooth
part_7.Size = Vector3.new(2, 4.8, 1)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(9.399, 7.2, -115.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Black")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_2 = Instance.new("Seat", mcarrier)
seat_2.Friction = 0.3
seat_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.TopSurface = Enum.SurfaceType.Smooth
seat_2.FormFactor = Enum.FormFactor.Custom
seat_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.BrickColor = BrickColor.new("Black")
seat_2.Size = Vector3.new(2, 1, 2)
seat_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.CFrame = CFrame.new(7.899, 5.3, -127.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_3 = Instance.new("Seat", mcarrier)
seat_3.Friction = 0.3
seat_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.TopSurface = Enum.SurfaceType.Smooth
seat_3.FormFactor = Enum.FormFactor.Custom
seat_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.BrickColor = BrickColor.new("Black")
seat_3.Size = Vector3.new(2, 1, 2)
seat_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.CFrame = CFrame.new(7.899, 5.3, -135.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_4 = Instance.new("Seat", mcarrier)
seat_4.Friction = 0.3
seat_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.TopSurface = Enum.SurfaceType.Smooth
seat_4.FormFactor = Enum.FormFactor.Custom
seat_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.BrickColor = BrickColor.new("Black")
seat_4.Size = Vector3.new(2, 1, 2)
seat_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.CFrame = CFrame.new(7.899, 5.3, -119.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_8 = Instance.new("Part", mcarrier)
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.Smooth
part_8.Size = Vector3.new(2, 4.8, 1)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(9.399, 7.2, -117.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Black")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_9 = Instance.new("Part", mcarrier)
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.Smooth
part_9.Size = Vector3.new(2, 4.8, 1)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(9.399, 7.2, -113.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Black")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_5 = Instance.new("Seat", mcarrier)
seat_5.Friction = 0.3
seat_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.TopSurface = Enum.SurfaceType.Smooth
seat_5.FormFactor = Enum.FormFactor.Custom
seat_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.BrickColor = BrickColor.new("Black")
seat_5.Size = Vector3.new(2, 1, 2)
seat_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.CFrame = CFrame.new(7.899, 5.3, -115.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_6 = Instance.new("Seat", mcarrier)
seat_6.Friction = 0.3
seat_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.TopSurface = Enum.SurfaceType.Smooth
seat_6.FormFactor = Enum.FormFactor.Custom
seat_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.BrickColor = BrickColor.new("Black")
seat_6.Size = Vector3.new(2, 1, 2)
seat_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.CFrame = CFrame.new(7.899, 5.3, -129.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_7 = Instance.new("Seat", mcarrier)
seat_7.Friction = 0.3
seat_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_7.TopSurface = Enum.SurfaceType.Smooth
seat_7.FormFactor = Enum.FormFactor.Custom
seat_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_7.BrickColor = BrickColor.new("Black")
seat_7.Size = Vector3.new(2, 1, 2)
seat_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_7.CFrame = CFrame.new(7.899, 5.3, -123.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_10 = Instance.new("Part", mcarrier)
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.Smooth
part_10.Size = Vector3.new(2, 4.8, 1)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(9.399, 7.2, -119.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Black")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_8 = Instance.new("Seat", mcarrier)
seat_8.Friction = 0.3
seat_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.TopSurface = Enum.SurfaceType.Smooth
seat_8.FormFactor = Enum.FormFactor.Custom
seat_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.BrickColor = BrickColor.new("Black")
seat_8.Size = Vector3.new(2, 1, 2)
seat_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.CFrame = CFrame.new(7.899, 5.3, -131.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_9 = Instance.new("Seat", mcarrier)
seat_9.Friction = 0.3
seat_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.TopSurface = Enum.SurfaceType.Smooth
seat_9.FormFactor = Enum.FormFactor.Custom
seat_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.BrickColor = BrickColor.new("Black")
seat_9.Size = Vector3.new(2, 1, 2)
seat_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.CFrame = CFrame.new(7.899, 5.3, -117.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_10 = Instance.new("Seat", mcarrier)
seat_10.Friction = 0.3
seat_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_10.TopSurface = Enum.SurfaceType.Smooth
seat_10.FormFactor = Enum.FormFactor.Custom
seat_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_10.BrickColor = BrickColor.new("Black")
seat_10.Size = Vector3.new(2, 1, 2)
seat_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_10.CFrame = CFrame.new(7.899, 5.3, -125.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_11 = Instance.new("Seat", mcarrier)
seat_11.Friction = 0.3
seat_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_11.TopSurface = Enum.SurfaceType.Smooth
seat_11.FormFactor = Enum.FormFactor.Custom
seat_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_11.BrickColor = BrickColor.new("Black")
seat_11.Size = Vector3.new(2, 1, 2)
seat_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_11.CFrame = CFrame.new(7.899, 5.3, -121.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_12 = Instance.new("Seat", mcarrier)
seat_12.Friction = 0.3
seat_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_12.TopSurface = Enum.SurfaceType.Smooth
seat_12.FormFactor = Enum.FormFactor.Custom
seat_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_12.BrickColor = BrickColor.new("Black")
seat_12.Size = Vector3.new(2, 1, 2)
seat_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_12.CFrame = CFrame.new(7.899, 5.3, -113.001)* CFrame.Angles(-6.5654114089764e-011, 1.5707963705063, 0)
seat_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_11 = Instance.new("Part", mcarrier)
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.Smooth
part_11.Size = Vector3.new(2, 4.8, 1)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(9.399, 7.2, -123.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Black")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_12 = Instance.new("Part", mcarrier)
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.Smooth
part_12.Size = Vector3.new(2, 4.8, 1)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(9.399, 7.2, -121.001)* CFrame.Angles(-6.5666728998881e-011, 1.5707963705063, 0)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Black")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_13 = Instance.new("Part", mcarrier)
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.Smooth
part_13.Size = Vector3.new(2, 4.8, 1)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(0.599, 7.2, -117.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Black")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_13 = Instance.new("Seat", mcarrier)
seat_13.Friction = 0.3
seat_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_13.TopSurface = Enum.SurfaceType.Smooth
seat_13.FormFactor = Enum.FormFactor.Custom
seat_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_13.BrickColor = BrickColor.new("Black")
seat_13.Size = Vector3.new(2, 1, 2)
seat_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_13.CFrame = CFrame.new(2.099, 5.3, -117.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_14 = Instance.new("Seat", mcarrier)
seat_14.Friction = 0.3
seat_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_14.TopSurface = Enum.SurfaceType.Smooth
seat_14.FormFactor = Enum.FormFactor.Custom
seat_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_14.BrickColor = BrickColor.new("Black")
seat_14.Size = Vector3.new(2, 1, 2)
seat_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_14.CFrame = CFrame.new(2.099, 5.3, -131.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_14 = Instance.new("Part", mcarrier)
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.Smooth
part_14.Size = Vector3.new(2, 4.8, 1)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(0.599, 7.2, -125.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Black")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_15 = Instance.new("Seat", mcarrier)
seat_15.Friction = 0.3
seat_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_15.TopSurface = Enum.SurfaceType.Smooth
seat_15.FormFactor = Enum.FormFactor.Custom
seat_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_15.BrickColor = BrickColor.new("Black")
seat_15.Size = Vector3.new(2, 1, 2)
seat_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_15.CFrame = CFrame.new(2.099, 5.3, -125.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_16 = Instance.new("Seat", mcarrier)
seat_16.Friction = 0.3
seat_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_16.TopSurface = Enum.SurfaceType.Smooth
seat_16.FormFactor = Enum.FormFactor.Custom
seat_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_16.BrickColor = BrickColor.new("Black")
seat_16.Size = Vector3.new(2, 1, 2)
seat_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_16.CFrame = CFrame.new(2.099, 5.3, -133.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_15 = Instance.new("Part", mcarrier)
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.Smooth
part_15.Size = Vector3.new(2, 4.8, 1)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(0.599, 7.2, -133.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Black")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_17 = Instance.new("Seat", mcarrier)
seat_17.Friction = 0.3
seat_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_17.TopSurface = Enum.SurfaceType.Smooth
seat_17.FormFactor = Enum.FormFactor.Custom
seat_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_17.BrickColor = BrickColor.new("Black")
seat_17.Size = Vector3.new(2, 1, 2)
seat_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_17.CFrame = CFrame.new(2.099, 5.3, -129.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_16 = Instance.new("Part", mcarrier)
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.Smooth
part_16.Size = Vector3.new(2, 4.8, 1)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(0.599, 7.2, -127.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Black")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_17 = Instance.new("Part", mcarrier)
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.Smooth
part_17.Size = Vector3.new(2, 4.8, 1)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(0.599, 7.2, -135.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Black")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_18 = Instance.new("Seat", mcarrier)
seat_18.Friction = 0.3
seat_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_18.TopSurface = Enum.SurfaceType.Smooth
seat_18.FormFactor = Enum.FormFactor.Custom
seat_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_18.BrickColor = BrickColor.new("Black")
seat_18.Size = Vector3.new(2, 1, 2)
seat_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_18.CFrame = CFrame.new(2.099, 5.3, -135.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_18 = Instance.new("Part", mcarrier)
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.Smooth
part_18.Size = Vector3.new(2, 4.8, 1)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(0.599, 7.2, -129.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Black")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_19 = Instance.new("Part", mcarrier)
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.Smooth
part_19.Size = Vector3.new(2, 4.8, 1)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(0.599, 7.2, -131.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Black")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_19 = Instance.new("Seat", mcarrier)
seat_19.Friction = 0.3
seat_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_19.TopSurface = Enum.SurfaceType.Smooth
seat_19.FormFactor = Enum.FormFactor.Custom
seat_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_19.BrickColor = BrickColor.new("Black")
seat_19.Size = Vector3.new(2, 1, 2)
seat_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_19.CFrame = CFrame.new(2.099, 5.3, -127.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_20 = Instance.new("Seat", mcarrier)
seat_20.Friction = 0.3
seat_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_20.TopSurface = Enum.SurfaceType.Smooth
seat_20.FormFactor = Enum.FormFactor.Custom
seat_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_20.BrickColor = BrickColor.new("Black")
seat_20.Size = Vector3.new(2, 1, 2)
seat_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_20.CFrame = CFrame.new(2.099, 5.3, -119.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_20 = Instance.new("Part", mcarrier)
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.Smooth
part_20.Size = Vector3.new(2, 4.8, 1)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(0.599, 7.2, -115.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Black")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_21 = Instance.new("Seat", mcarrier)
seat_21.Friction = 0.3
seat_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_21.TopSurface = Enum.SurfaceType.Smooth
seat_21.FormFactor = Enum.FormFactor.Custom
seat_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_21.BrickColor = BrickColor.new("Black")
seat_21.Size = Vector3.new(2, 1, 2)
seat_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_21.CFrame = CFrame.new(2.099, 5.3, -115.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_21 = Instance.new("Part", mcarrier)
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.Smooth
part_21.Size = Vector3.new(2, 4.8, 1)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(0.599, 7.2, -119.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Black")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_22 = Instance.new("Seat", mcarrier)
seat_22.Friction = 0.3
seat_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_22.TopSurface = Enum.SurfaceType.Smooth
seat_22.FormFactor = Enum.FormFactor.Custom
seat_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_22.BrickColor = BrickColor.new("Black")
seat_22.Size = Vector3.new(2, 1, 2)
seat_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_22.CFrame = CFrame.new(2.099, 5.3, -121.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_23 = Instance.new("Seat", mcarrier)
seat_23.Friction = 0.3
seat_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_23.TopSurface = Enum.SurfaceType.Smooth
seat_23.FormFactor = Enum.FormFactor.Custom
seat_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_23.BrickColor = BrickColor.new("Black")
seat_23.Size = Vector3.new(2, 1, 2)
seat_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_23.CFrame = CFrame.new(2.099, 5.3, -123.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_22 = Instance.new("Part", mcarrier)
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.Smooth
part_22.Size = Vector3.new(2, 4.8, 1)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(0.599, 7.2, -123.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Black")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_23 = Instance.new("Part", mcarrier)
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.Smooth
part_23.Size = Vector3.new(2, 4.8, 1)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(0.599, 7.2, -121.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Black")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller2pos = Instance.new("Part", mcarrier)
propeller2pos.FormFactor = Enum.FormFactor.Symmetric
propeller2pos.CanCollide = false
propeller2pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propeller2pos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propeller2pos.Material = Enum.Material.SmoothPlastic
propeller2pos.Size = Vector3.new(2, 2, 2)
propeller2pos.Name = "propeller2pos"
propeller2pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propeller2pos.CFrame = CFrame.new(-8.191, 5.092, -138.2)* CFrame.Angles(-5.0020066311163e-008, 1.5707963705063, 0)
propeller2pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propeller2pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propeller2pos.BrickColor = BrickColor.new("Dark stone grey")
propeller2pos.Friction = 0.3
propeller2pos.Shape = Enum.PartType.Cylinder
propeller2pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller3 = Instance.new("Model", mcarrier)
propeller3.Name = "propeller3"

 propellercenter = Instance.new("Part", propeller3)
propellercenter.FormFactor = Enum.FormFactor.Symmetric
propellercenter.CanCollide = false
propellercenter.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter.Material = Enum.Material.SmoothPlastic
propellercenter.Size = Vector3.new(2, 2, 2)
propellercenter.Name = "propellercenter"
propellercenter.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter.CFrame = CFrame.new(19.409, 5.315, -138.2)* CFrame.Angles(-5.0020066311163e-008, 1.5707963705063, 0)
propellercenter.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter.BrickColor = BrickColor.new("Dark stone grey")
propellercenter.Friction = 0.3
propellercenter.Shape = Enum.PartType.Cylinder
propellercenter.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_24 = Instance.new("Part", propeller3)
part_24.FormFactor = Enum.FormFactor.Plate
part_24.CanCollide = false
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Material = Enum.Material.SmoothPlastic
part_24.Size = Vector3.new(2, 0.4, 5)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(20.909, 3.815, -138.6)* CFrame.Angles(-1.5707515478134, -0.76795387268066, -3.1415314674377)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Dark stone grey")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("SpecialMesh", part_24)
mesh.MeshType = Enum.MeshType.Sphere

 part_25 = Instance.new("Part", propeller3)
part_25.FormFactor = Enum.FormFactor.Plate
part_25.CanCollide = false
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Material = Enum.Material.SmoothPlastic
part_25.Size = Vector3.new(2, 0.4, 5)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(19.409, 7.815, -138.6)* CFrame.Angles(-1.5707963705063, 1.4532548497925e-008, -3.1415505409241)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Dark stone grey")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("SpecialMesh", part_25)
mesh_2.MeshType = Enum.MeshType.Sphere

 part_26 = Instance.new("Part", propeller3)
part_26.FormFactor = Enum.FormFactor.Plate
part_26.CanCollide = false
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(2, 0.4, 5)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(17.409, 4.015, -138.6)* CFrame.Angles(-1.5708765983582, 1.0472055673599, -3.1415021419525)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Dark stone grey")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("SpecialMesh", part_26)
mesh_3.MeshType = Enum.MeshType.Sphere

 mainseat = Instance.new("Seat", mcarrier)
mainseat.Friction = 0.3
mainseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.TopSurface = Enum.SurfaceType.Smooth
mainseat.FormFactor = Enum.FormFactor.Custom
mainseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.BrickColor = BrickColor.new("Black")
mainseat.Size = Vector3.new(2, 1, 2)
mainseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.CFrame = CFrame.new(1.599, 5.3, -162.501)* CFrame.Angles(1.5113250928511e-011, -2.9842770507375e-013, -7.5566228621704e-012)
mainseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.Name = "mainseat"

 part_27 = Instance.new("Part", mcarrier)
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.Smooth
part_27.Size = Vector3.new(2, 4.8, 1)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(0.599, 7.2, -113.001)* CFrame.Angles(6.5666715121093e-011, -1.5707963705063, 0)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Black")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_24 = Instance.new("Seat", mcarrier)
seat_24.Friction = 0.3
seat_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_24.TopSurface = Enum.SurfaceType.Smooth
seat_24.FormFactor = Enum.FormFactor.Custom
seat_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_24.BrickColor = BrickColor.new("Black")
seat_24.Size = Vector3.new(2, 1, 2)
seat_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_24.CFrame = CFrame.new(2.099, 5.3, -113.001)* CFrame.Angles(6.5654100211976e-011, -1.5707963705063, 0)
seat_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_28 = Instance.new("Part", mcarrier)
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.Smooth
part_28.Size = Vector3.new(2, 4.8, 1)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(1.599, 7.2, -161.001)* CFrame.Angles(1.5125864102905e-011, -4.3711565922422e-008, -7.5585778955278e-012)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Black")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_29 = Instance.new("Part", mcarrier)
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.Smooth
part_29.Size = Vector3.new(2, 4.8, 1)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(8.799, 7.2, -161.001)* CFrame.Angles(1.5125864102905e-011, -4.3711565922422e-008, -7.5585778955278e-012)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Black")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_25 = Instance.new("Seat", mcarrier)
seat_25.Friction = 0.3
seat_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_25.TopSurface = Enum.SurfaceType.Smooth
seat_25.FormFactor = Enum.FormFactor.Custom
seat_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_25.BrickColor = BrickColor.new("Black")
seat_25.Size = Vector3.new(2, 1, 2)
seat_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_25.CFrame = CFrame.new(8.799, 5.3, -162.501)* CFrame.Angles(1.5113250928511e-011, -2.9842770507375e-013, -7.5566228621704e-012)
seat_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller4 = Instance.new("Model", mcarrier)
propeller4.Name = "propeller4"

 propellercenter_2 = Instance.new("Part", propeller4)
propellercenter_2.FormFactor = Enum.FormFactor.Symmetric
propellercenter_2.CanCollide = false
propellercenter_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_2.Material = Enum.Material.SmoothPlastic
propellercenter_2.Size = Vector3.new(2, 2, 2)
propellercenter_2.Name = "propellercenter"
propellercenter_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_2.CFrame = CFrame.new(26.309, 5.208, -136.2)* CFrame.Angles(-5.0020066311163e-008, 1.5707963705063, 0)
propellercenter_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_2.BrickColor = BrickColor.new("Dark stone grey")
propellercenter_2.Friction = 0.3
propellercenter_2.Shape = Enum.PartType.Cylinder
propellercenter_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_30 = Instance.new("Part", propeller4)
part_30.FormFactor = Enum.FormFactor.Plate
part_30.CanCollide = false
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Material = Enum.Material.SmoothPlastic
part_30.Size = Vector3.new(2, 0.4, 5)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(27.809, 3.708, -136.6)* CFrame.Angles(-1.5707515478134, -0.76795387268066, -3.1415314674377)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Dark stone grey")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("SpecialMesh", part_30)
mesh_4.MeshType = Enum.MeshType.Sphere

 part_31 = Instance.new("Part", propeller4)
part_31.FormFactor = Enum.FormFactor.Plate
part_31.CanCollide = false
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Material = Enum.Material.SmoothPlastic
part_31.Size = Vector3.new(2, 0.4, 5)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(26.309, 7.708, -136.6)* CFrame.Angles(-1.5707963705063, 1.4532548497925e-008, -3.1415505409241)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Dark stone grey")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("SpecialMesh", part_31)
mesh_5.MeshType = Enum.MeshType.Sphere

 part_32 = Instance.new("Part", propeller4)
part_32.FormFactor = Enum.FormFactor.Plate
part_32.CanCollide = false
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Material = Enum.Material.SmoothPlastic
part_32.Size = Vector3.new(2, 0.4, 5)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(24.309, 3.908, -136.6)* CFrame.Angles(-1.5708765983582, 1.0472055673599, -3.1415021419525)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Dark stone grey")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("SpecialMesh", part_32)
mesh_6.MeshType = Enum.MeshType.Sphere

 propeller1pos = Instance.new("Part", mcarrier)
propeller1pos.FormFactor = Enum.FormFactor.Symmetric
propeller1pos.CanCollide = false
propeller1pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propeller1pos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propeller1pos.Material = Enum.Material.SmoothPlastic
propeller1pos.Size = Vector3.new(2, 2, 2)
propeller1pos.Name = "propeller1pos"
propeller1pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propeller1pos.CFrame = CFrame.new(-16.191, 5.092, -136.5)* CFrame.Angles(-3.7818981724058e-008, 1.5707963705063, 0)
propeller1pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propeller1pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propeller1pos.BrickColor = BrickColor.new("Dark stone grey")
propeller1pos.Friction = 0.3
propeller1pos.Shape = Enum.PartType.Cylinder
propeller1pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller4pos = Instance.new("Part", mcarrier)
propeller4pos.FormFactor = Enum.FormFactor.Symmetric
propeller4pos.CanCollide = false
propeller4pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propeller4pos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propeller4pos.Material = Enum.Material.SmoothPlastic
propeller4pos.Size = Vector3.new(2, 2, 2)
propeller4pos.Name = "propeller4pos"
propeller4pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propeller4pos.CFrame = CFrame.new(26.309, 5.208, -136.2)* CFrame.Angles(-5.0020066311163e-008, 1.5707963705063, 0)
propeller4pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propeller4pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propeller4pos.BrickColor = BrickColor.new("Dark stone grey")
propeller4pos.Friction = 0.3
propeller4pos.Shape = Enum.PartType.Cylinder
propeller4pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller2 = Instance.new("Model", mcarrier)
propeller2.Name = "propeller2"

 propellercenter_3 = Instance.new("Part", propeller2)
propellercenter_3.FormFactor = Enum.FormFactor.Symmetric
propellercenter_3.CanCollide = false
propellercenter_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_3.Material = Enum.Material.SmoothPlastic
propellercenter_3.Size = Vector3.new(2, 2, 2)
propellercenter_3.Name = "propellercenter"
propellercenter_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_3.CFrame = CFrame.new(-8.291, 5.093, -138.2)* CFrame.Angles(-5.0020066311163e-008, 1.5707963705063, 0)
propellercenter_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_3.BrickColor = BrickColor.new("Dark stone grey")
propellercenter_3.Friction = 0.3
propellercenter_3.Shape = Enum.PartType.Cylinder
propellercenter_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_33 = Instance.new("Part", propeller2)
part_33.FormFactor = Enum.FormFactor.Plate
part_33.CanCollide = false
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Material = Enum.Material.SmoothPlastic
part_33.Size = Vector3.new(2, 0.4, 5)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(-6.791, 3.593, -138.6)* CFrame.Angles(-1.5707515478134, -0.76795387268066, -3.1415314674377)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Dark stone grey")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("SpecialMesh", part_33)
mesh_7.MeshType = Enum.MeshType.Sphere

 part_34 = Instance.new("Part", propeller2)
part_34.FormFactor = Enum.FormFactor.Plate
part_34.CanCollide = false
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Material = Enum.Material.SmoothPlastic
part_34.Size = Vector3.new(2, 0.4, 5)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(-8.291, 7.593, -138.6)* CFrame.Angles(-1.5707963705063, 1.4532548497925e-008, -3.1415505409241)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Dark stone grey")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("SpecialMesh", part_34)
mesh_8.MeshType = Enum.MeshType.Sphere

 part_35 = Instance.new("Part", propeller2)
part_35.FormFactor = Enum.FormFactor.Plate
part_35.CanCollide = false
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Material = Enum.Material.SmoothPlastic
part_35.Size = Vector3.new(2, 0.4, 5)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(-10.291, 3.793, -138.6)* CFrame.Angles(-1.5708765983582, 1.0472055673599, -3.1415021419525)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Dark stone grey")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("SpecialMesh", part_35)
mesh_9.MeshType = Enum.MeshType.Sphere

troopdooropen = Instance.new("Part", mcarrier)
troopdooropen.FormFactor = Enum.FormFactor.Custom
troopdooropen.CanCollide = true
troopdooropen.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
troopdooropen.Transparency = 0
troopdooropen.TopSurface = Enum.SurfaceType.Smooth
troopdooropen.Material = Enum.Material.SmoothPlastic
troopdooropen.Size = Vector3.new(12, 8.4, 1)
troopdooropen.Name = "troopdooropen"
troopdooropen.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
troopdooropen.CFrame = CFrame.new(5, 3.4, -89.1)* CFrame.Angles(1.7976890802383, 0, -0)
troopdooropen.RightSurface = Enum.SurfaceType.SmoothNoOutlines
troopdooropen.BackSurface = Enum.SurfaceType.SmoothNoOutlines
troopdooropen.BrickColor = BrickColor.new("Buttermilk")
troopdooropen.Friction = 0.3
troopdooropen.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("SpecialMesh", troopdooropen)
mesh_10.MeshType = Enum.MeshType.Wedge

 propeller3pos = Instance.new("Part", mcarrier)
propeller3pos.FormFactor = Enum.FormFactor.Symmetric
propeller3pos.CanCollide = false
propeller3pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propeller3pos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propeller3pos.Material = Enum.Material.SmoothPlastic
propeller3pos.Size = Vector3.new(2, 2, 2)
propeller3pos.Name = "propeller3pos"
propeller3pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propeller3pos.CFrame = CFrame.new(19.409, 5.315, -138.2)* CFrame.Angles(-5.0020066311163e-008, 1.5707963705063, 0)
propeller3pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propeller3pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propeller3pos.BrickColor = BrickColor.new("Dark stone grey")
propeller3pos.Friction = 0.3
propeller3pos.Shape = Enum.PartType.Cylinder
propeller3pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller1 = Instance.new("Model", mcarrier)
propeller1.Name = "propeller1"

 propellercenter_4 = Instance.new("Part", propeller1)
propellercenter_4.FormFactor = Enum.FormFactor.Symmetric
propellercenter_4.CanCollide = false
propellercenter_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_4.Material = Enum.Material.SmoothPlastic
propellercenter_4.Size = Vector3.new(2, 2, 2)
propellercenter_4.Name = "propellercenter"
propellercenter_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_4.CFrame = CFrame.new(-16.191, 5.093, -136.5)* CFrame.Angles(-3.7818981724058e-008, 1.5707963705063, 0)
propellercenter_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propellercenter_4.BrickColor = BrickColor.new("Dark stone grey")
propellercenter_4.Friction = 0.3
propellercenter_4.Shape = Enum.PartType.Cylinder
propellercenter_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_36 = Instance.new("Part", propeller1)
part_36.FormFactor = Enum.FormFactor.Plate
part_36.CanCollide = false
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Material = Enum.Material.SmoothPlastic
part_36.Size = Vector3.new(2, 0.4, 5)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(-14.691, 3.593, -136.9)* CFrame.Angles(-1.5707515478134, -0.7679540514946, -3.1415314674377)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Dark stone grey")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("SpecialMesh", part_36)
mesh_11.MeshType = Enum.MeshType.Sphere

 part_37 = Instance.new("Part", propeller1)
part_37.FormFactor = Enum.FormFactor.Plate
part_37.CanCollide = false
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Material = Enum.Material.SmoothPlastic
part_37.Size = Vector3.new(2, 0.4, 5)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(-16.191, 7.593, -136.9)* CFrame.Angles(-1.5707963705063, -2.336129654168e-007, -3.1415505409241)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Dark stone grey")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("SpecialMesh", part_37)
mesh_12.MeshType = Enum.MeshType.Sphere

 part_38 = Instance.new("Part", propeller1)
part_38.FormFactor = Enum.FormFactor.Plate
part_38.CanCollide = false
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Material = Enum.Material.SmoothPlastic
part_38.Size = Vector3.new(2, 0.4, 5)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(-18.191, 3.793, -136.9)* CFrame.Angles(-1.5708764791489, 1.0472053289413, -3.1415021419525)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Dark stone grey")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("SpecialMesh", part_38)
mesh_13.MeshType = Enum.MeshType.Sphere

 part_39 = Instance.new("Part", mcarrier)
part_39.FormFactor = Enum.FormFactor.Plate
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.Smooth
part_39.Material = Enum.Material.SmoothPlastic
part_39.Size = Vector3.new(3, 0.8, 2)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(32.4, 1.2, -124.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Dark stone grey")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Name = "Wheel1"

 mesh_14 = Instance.new("CylinderMesh", part_39)

 part_40 = Instance.new("Part", mcarrier)
part_40.FormFactor = Enum.FormFactor.Plate
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.Smooth
part_40.Material = Enum.Material.SmoothPlastic
part_40.Size = Vector3.new(3, 0.8, 2)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(-22.6, 1.2, -124.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Dark stone grey")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Name = "Wheel2"

 mesh_15 = Instance.new("CylinderMesh", part_40)

 part_41 = Instance.new("Part", mcarrier)
part_41.FormFactor = Enum.FormFactor.Plate
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.Smooth
part_41.Material = Enum.Material.SmoothPlastic
part_41.Size = Vector3.new(6, 2, 2)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(5, 7, -167)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Dark stone grey")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("SpecialMesh", part_41)
mesh_16.MeshType = Enum.MeshType.Wedge

 part_42 = Instance.new("Part", mcarrier)
part_42.FormFactor = Enum.FormFactor.Plate
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.Smooth
part_42.Material = Enum.Material.SmoothPlastic
part_42.Size = Vector3.new(3, 0.8, 2)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(32.4, 1.2, -128.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Dark stone grey")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Name = "Wheel3"

 mesh_17 = Instance.new("CylinderMesh", part_42)

 part_43 = Instance.new("Part", mcarrier)
part_43.FormFactor = Enum.FormFactor.Plate
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.Smooth
part_43.Material = Enum.Material.SmoothPlastic
part_43.Size = Vector3.new(2, 2.8, 2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(1, 6.2, -167)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Dark stone grey")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("BlockMesh", part_43)

 part_44 = Instance.new("Part", mcarrier)
part_44.FormFactor = Enum.FormFactor.Plate
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.Smooth
part_44.Material = Enum.Material.SmoothPlastic
part_44.Size = Vector3.new(1, 4.4, 3)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(8.5, 10.2, -155.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Buttermilk")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("BlockMesh", part_44)

 part_45 = Instance.new("Part", mcarrier)
part_45.FormFactor = Enum.FormFactor.Plate
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.Transparency = 0.5
part_45.TopSurface = Enum.SurfaceType.Smooth
part_45.Material = Enum.Material.SmoothPlastic
part_45.Size = Vector3.new(4, 3.2, 1)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(-0.5, 9.6, -164)* CFrame.Angles(-0, -1.5707963705063, 0)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Buttermilk")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("BlockMesh", part_45)

 part_46 = Instance.new("Part", mcarrier)
part_46.FormFactor = Enum.FormFactor.Plate
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.Transparency = 0.5
part_46.TopSurface = Enum.SurfaceType.Smooth
part_46.Material = Enum.Material.SmoothPlastic
part_46.Size = Vector3.new(4, 3.2, 1)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(10.5, 9.6, -164)* CFrame.Angles(-0, -1.5707963705063, 0)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("Buttermilk")
part_46.Friction = 0.3
part_46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("BlockMesh", part_46)

 part_47 = Instance.new("Part", mcarrier)
part_47.FormFactor = Enum.FormFactor.Plate
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.Smooth
part_47.Material = Enum.Material.SmoothPlastic
part_47.Size = Vector3.new(4, 1.2, 1)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(10.5, 11.8, -164)* CFrame.Angles(-0, -1.5707963705063, 0)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Buttermilk")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("BlockMesh", part_47)

 part_48 = Instance.new("Part", mcarrier)
part_48.FormFactor = Enum.FormFactor.Plate
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.Smooth
part_48.Material = Enum.Material.SmoothPlastic
part_48.Size = Vector3.new(7, 4.4, 1)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(10.5, 10.2, -158.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("Buttermilk")
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("BlockMesh", part_48)

 part_49 = Instance.new("Part", mcarrier)
part_49.FormFactor = Enum.FormFactor.Plate
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.Smooth
part_49.Material = Enum.Material.SmoothPlastic
part_49.Size = Vector3.new(7, 4.4, 1)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(-0.5, 10.2, -158.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Buttermilk")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("BlockMesh", part_49)

 part_50 = Instance.new("Part", mcarrier)
part_50.FormFactor = Enum.FormFactor.Plate
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.Smooth
part_50.Material = Enum.Material.SmoothPlastic
part_50.Size = Vector3.new(4, 1.2, 1)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(-0.5, 11.8, -164)* CFrame.Angles(-0, -1.5707963705063, 0)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Buttermilk")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("BlockMesh", part_50)

 part_51 = Instance.new("Part", mcarrier)
part_51.FormFactor = Enum.FormFactor.Plate
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.Smooth
part_51.Material = Enum.Material.SmoothPlastic
part_51.Size = Vector3.new(1, 4.4, 3)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(1.5, 10.2, -155.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Buttermilk")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("BlockMesh", part_51)

 part_52 = Instance.new("Part", mcarrier)
part_52.FormFactor = Enum.FormFactor.Plate
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.Transparency = 0.5
part_52.TopSurface = Enum.SurfaceType.Smooth
part_52.Material = Enum.Material.SmoothPlastic
part_52.Size = Vector3.new(10, 1.6, 2)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(5, 12, -167)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Buttermilk")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("SpecialMesh", part_52)
mesh_27.MeshType = Enum.MeshType.Wedge

 part_53 = Instance.new("Part", mcarrier)
part_53.FormFactor = Enum.FormFactor.Plate
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.Smooth
part_53.Material = Enum.Material.SmoothPlastic
part_53.Size = Vector3.new(12, 2, 2)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(5, 5, -171)* CFrame.Angles(-1.5707963705063, 0, -0)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Dark stone grey")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Name = "crasherfront"

 mesh_28 = Instance.new("SpecialMesh", part_53)
mesh_28.MeshType = Enum.MeshType.Wedge

 part_54 = Instance.new("Part", mcarrier)
part_54.FormFactor = Enum.FormFactor.Plate
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.Smooth
part_54.Material = Enum.Material.SmoothPlastic
part_54.Size = Vector3.new(1, 1.6, 2)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(-0.5, 12, -167)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Buttermilk")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("SpecialMesh", part_54)
mesh_29.MeshType = Enum.MeshType.Wedge

 part_55 = Instance.new("Part", mcarrier)
part_55.FormFactor = Enum.FormFactor.Plate
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.Smooth
part_55.Material = Enum.Material.SmoothPlastic
part_55.Size = Vector3.new(1, 1.6, 2)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(10.5, 12, -167)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("Buttermilk")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("SpecialMesh", part_55)
mesh_30.MeshType = Enum.MeshType.Wedge

 part_56 = Instance.new("Part", mcarrier)
part_56.FormFactor = Enum.FormFactor.Plate
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.Smooth
part_56.Material = Enum.Material.SmoothPlastic
part_56.Size = Vector3.new(1, 3.2, 2)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(-0.5, 9.6, -169)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Buttermilk")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("SpecialMesh", part_56)
mesh_31.MeshType = Enum.MeshType.Wedge

 part_57 = Instance.new("Part", mcarrier)
part_57.FormFactor = Enum.FormFactor.Plate
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.Transparency = 0.5
part_57.TopSurface = Enum.SurfaceType.Smooth
part_57.Material = Enum.Material.SmoothPlastic
part_57.Size = Vector3.new(10, 3.2, 2)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(5, 9.6, -169)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("Buttermilk")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("SpecialMesh", part_57)
mesh_32.MeshType = Enum.MeshType.Wedge

 part_58 = Instance.new("Part", mcarrier)
part_58.FormFactor = Enum.FormFactor.Plate
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.Smooth
part_58.Material = Enum.Material.SmoothPlastic
part_58.Size = Vector3.new(12, 2, 2)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(5, 7, -171)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Buttermilk")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("SpecialMesh", part_58)
mesh_33.MeshType = Enum.MeshType.Wedge

 part_59 = Instance.new("Part", mcarrier)
part_59.FormFactor = Enum.FormFactor.Plate
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.Smooth
part_59.Material = Enum.Material.SmoothPlastic
part_59.Size = Vector3.new(1, 3.2, 2)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(10.5, 9.6, -169)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Buttermilk")
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("SpecialMesh", part_59)
mesh_34.MeshType = Enum.MeshType.Wedge

 part_60 = Instance.new("Part", mcarrier)
part_60.FormFactor = Enum.FormFactor.Plate
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.Smooth
part_60.Material = Enum.Material.SmoothPlastic
part_60.Size = Vector3.new(2, 3.2, 1)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(10.5, 9.6, -167)* CFrame.Angles(-0, -1.5707963705063, 0)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BrickColor = BrickColor.new("Buttermilk")
part_60.Friction = 0.3
part_60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("BlockMesh", part_60)

 part_61 = Instance.new("Part", mcarrier)
part_61.FormFactor = Enum.FormFactor.Plate
part_61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.TopSurface = Enum.SurfaceType.Smooth
part_61.Material = Enum.Material.SmoothPlastic
part_61.Size = Vector3.new(3, 3.6, 1)
part_61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.CFrame = CFrame.new(10.5, 9.8, -142.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BrickColor = BrickColor.new("Dark stone grey")
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("BlockMesh", part_61)

 part_62 = Instance.new("Part", mcarrier)
part_62.FormFactor = Enum.FormFactor.Plate
part_62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.TopSurface = Enum.SurfaceType.Smooth
part_62.Material = Enum.Material.SmoothPlastic
part_62.Size = Vector3.new(10, 0.8, 12)
part_62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.CFrame = CFrame.new(5, 12.8, -160)* CFrame.Angles(-0, -1.5707963705063, 0)
part_62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BrickColor = BrickColor.new("Buttermilk")
part_62.Friction = 0.3
part_62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("BlockMesh", part_62)

 part_63 = Instance.new("Part", mcarrier)
part_63.FormFactor = Enum.FormFactor.Plate
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.Smooth
part_63.Material = Enum.Material.SmoothPlastic
part_63.Size = Vector3.new(2, 3.2, 1)
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.CFrame = CFrame.new(-0.5, 9.6, -167)* CFrame.Angles(-0, -1.5707963705063, 0)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BrickColor = BrickColor.new("Buttermilk")
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", part_63)

 part_64 = Instance.new("Part", mcarrier)
part_64.FormFactor = Enum.FormFactor.Plate
part_64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.TopSurface = Enum.SurfaceType.Smooth
part_64.Material = Enum.Material.SmoothPlastic
part_64.Size = Vector3.new(5, 4.8, 1)
part_64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.CFrame = CFrame.new(-0.5, 10.4, -152.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BrickColor = BrickColor.new("Buttermilk")
part_64.Friction = 0.3
part_64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("BlockMesh", part_64)

 part_65 = Instance.new("Part", mcarrier)
part_65.FormFactor = Enum.FormFactor.Plate
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.Smooth
part_65.Material = Enum.Material.SmoothPlastic
part_65.Size = Vector3.new(2, 3.6, 1)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(10.5, 9.8, -145)* CFrame.Angles(-0, -1.5707963705063, 0)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BrickColor = BrickColor.new("Buttermilk")
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("BlockMesh", part_65)

 part_66 = Instance.new("Part", mcarrier)
part_66.FormFactor = Enum.FormFactor.Plate
part_66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.TopSurface = Enum.SurfaceType.Smooth
part_66.Material = Enum.Material.SmoothPlastic
part_66.Size = Vector3.new(2, 3.6, 1)
part_66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.CFrame = CFrame.new(10.5, 9.8, -140)* CFrame.Angles(-0, -1.5707963705063, 0)
part_66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BrickColor = BrickColor.new("Buttermilk")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("BlockMesh", part_66)

 part_67 = Instance.new("Part", mcarrier)
part_67.FormFactor = Enum.FormFactor.Plate
part_67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.TopSurface = Enum.SurfaceType.Smooth
part_67.Material = Enum.Material.SmoothPlastic
part_67.Size = Vector3.new(5, 4.8, 1)
part_67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.CFrame = CFrame.new(10.5, 10.4, -152.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BrickColor = BrickColor.new("Buttermilk")
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("BlockMesh", part_67)

 part_68 = Instance.new("Part", mcarrier)
part_68.FormFactor = Enum.FormFactor.Plate
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.Smooth
part_68.Material = Enum.Material.SmoothPlastic
part_68.Size = Vector3.new(2, 3.6, 1)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(10.5, 9.8, -135)* CFrame.Angles(-0, -1.5707963705063, 0)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BrickColor = BrickColor.new("Buttermilk")
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("BlockMesh", part_68)

 part_69 = Instance.new("Part", mcarrier)
part_69.FormFactor = Enum.FormFactor.Plate
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.Smooth
part_69.Material = Enum.Material.SmoothPlastic
part_69.Size = Vector3.new(2, 3.6, 1)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(-0.5, 9.8, -130)* CFrame.Angles(-0, -1.5707963705063, 0)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = BrickColor.new("Buttermilk")
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_44 = Instance.new("BlockMesh", part_69)

 part_70 = Instance.new("Part", mcarrier)
part_70.FormFactor = Enum.FormFactor.Plate
part_70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.TopSurface = Enum.SurfaceType.Smooth
part_70.Material = Enum.Material.SmoothPlastic
part_70.Size = Vector3.new(4, 3.6, 1)
part_70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.CFrame = CFrame.new(-0.5, 9.8, -114)* CFrame.Angles(-0, -1.5707963705063, 0)
part_70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BrickColor = BrickColor.new("Buttermilk")
part_70.Friction = 0.3
part_70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_45 = Instance.new("BlockMesh", part_70)

 part_71 = Instance.new("Part", mcarrier)
part_71.FormFactor = Enum.FormFactor.Plate
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.TopSurface = Enum.SurfaceType.Smooth
part_71.Material = Enum.Material.SmoothPlastic
part_71.Size = Vector3.new(2, 3.6, 1)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(10.5, 9.8, -130)* CFrame.Angles(-0, -1.5707963705063, 0)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Buttermilk")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("BlockMesh", part_71)

 part_72 = Instance.new("Part", mcarrier)
part_72.FormFactor = Enum.FormFactor.Plate
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.Smooth
part_72.Material = Enum.Material.SmoothPlastic
part_72.Size = Vector3.new(2, 3.6, 1)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(10.5, 9.8, -125)* CFrame.Angles(-0, -1.5707963705063, 0)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Buttermilk")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_47 = Instance.new("BlockMesh", part_72)

 part_73 = Instance.new("Part", mcarrier)
part_73.FormFactor = Enum.FormFactor.Plate
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.Smooth
part_73.Material = Enum.Material.SmoothPlastic
part_73.Size = Vector3.new(4, 3.6, 1)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(10.5, 9.8, -114)* CFrame.Angles(-0, -1.5707963705063, 0)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BrickColor = BrickColor.new("Buttermilk")
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("BlockMesh", part_73)

 part_74 = Instance.new("Part", mcarrier)
part_74.FormFactor = Enum.FormFactor.Plate
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.Smooth
part_74.Material = Enum.Material.SmoothPlastic
part_74.Size = Vector3.new(2, 3.6, 1)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(-0.5, 9.8, -120)* CFrame.Angles(-0, -1.5707963705063, 0)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BrickColor = BrickColor.new("Buttermilk")
part_74.Friction = 0.3
part_74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("BlockMesh", part_74)

 part_75 = Instance.new("Part", mcarrier)
part_75.FormFactor = Enum.FormFactor.Plate
part_75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.TopSurface = Enum.SurfaceType.Smooth
part_75.Material = Enum.Material.SmoothPlastic
part_75.Size = Vector3.new(2, 3.6, 1)
part_75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.CFrame = CFrame.new(10.5, 9.8, -120)* CFrame.Angles(-0, -1.5707963705063, 0)
part_75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BrickColor = BrickColor.new("Buttermilk")
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("BlockMesh", part_75)

 part_76 = Instance.new("Part", mcarrier)
part_76.FormFactor = Enum.FormFactor.Plate
part_76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.TopSurface = Enum.SurfaceType.Smooth
part_76.Material = Enum.Material.SmoothPlastic
part_76.Size = Vector3.new(2, 3.6, 1)
part_76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.CFrame = CFrame.new(-0.5, 9.8, -125)* CFrame.Angles(-0, -1.5707963705063, 0)
part_76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BrickColor = BrickColor.new("Buttermilk")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("BlockMesh", part_76)

 part_77 = Instance.new("Part", mcarrier)
part_77.FormFactor = Enum.FormFactor.Plate
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.Smooth
part_77.Material = Enum.Material.SmoothPlastic
part_77.Size = Vector3.new(3, 3.6, 1)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(10.5, 9.8, -117.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BrickColor = BrickColor.new("Dark stone grey")
part_77.Friction = 0.3
part_77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("BlockMesh", part_77)

 part_78 = Instance.new("Part", mcarrier)
part_78.FormFactor = Enum.FormFactor.Plate
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.Smooth
part_78.Material = Enum.Material.SmoothPlastic
part_78.Size = Vector3.new(3, 3.6, 1)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(-0.5, 9.8, -117.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BrickColor = BrickColor.new("Dark stone grey")
part_78.Friction = 0.3
part_78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_53 = Instance.new("BlockMesh", part_78)

 part_79 = Instance.new("Part", mcarrier)
part_79.FormFactor = Enum.FormFactor.Plate
part_79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.TopSurface = Enum.SurfaceType.Smooth
part_79.Material = Enum.Material.SmoothPlastic
part_79.Size = Vector3.new(2, 3.6, 1)
part_79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.CFrame = CFrame.new(-0.5, 9.8, -135)* CFrame.Angles(-0, -1.5707963705063, 0)
part_79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BrickColor = BrickColor.new("Buttermilk")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("BlockMesh", part_79)

 part_80 = Instance.new("Part", mcarrier)
part_80.FormFactor = Enum.FormFactor.Plate
part_80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.TopSurface = Enum.SurfaceType.Smooth
part_80.Material = Enum.Material.SmoothPlastic
part_80.Size = Vector3.new(2, 3.6, 1)
part_80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.CFrame = CFrame.new(-0.5, 9.8, -140)* CFrame.Angles(-0, -1.5707963705063, 0)
part_80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BrickColor = BrickColor.new("Buttermilk")
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_55 = Instance.new("BlockMesh", part_80)

 part_81 = Instance.new("Part", mcarrier)
part_81.FormFactor = Enum.FormFactor.Plate
part_81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.TopSurface = Enum.SurfaceType.Smooth
part_81.Material = Enum.Material.SmoothPlastic
part_81.Size = Vector3.new(3, 3.6, 1)
part_81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.CFrame = CFrame.new(10.5, 9.8, -127.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BrickColor = BrickColor.new("Dark stone grey")
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_56 = Instance.new("BlockMesh", part_81)

 part_82 = Instance.new("Part", mcarrier)
part_82.FormFactor = Enum.FormFactor.Plate
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.Smooth
part_82.Material = Enum.Material.SmoothPlastic
part_82.Size = Vector3.new(3, 3.6, 1)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(10.5, 9.8, -122.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = BrickColor.new("Dark stone grey")
part_82.Friction = 0.3
part_82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_57 = Instance.new("BlockMesh", part_82)

 part_83 = Instance.new("Part", mcarrier)
part_83.FormFactor = Enum.FormFactor.Plate
part_83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.TopSurface = Enum.SurfaceType.Smooth
part_83.Material = Enum.Material.SmoothPlastic
part_83.Size = Vector3.new(3, 3.6, 1)
part_83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.CFrame = CFrame.new(10.5, 9.8, -137.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BrickColor = BrickColor.new("Dark stone grey")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_58 = Instance.new("BlockMesh", part_83)

 part_84 = Instance.new("Part", mcarrier)
part_84.FormFactor = Enum.FormFactor.Plate
part_84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.TopSurface = Enum.SurfaceType.Smooth
part_84.Material = Enum.Material.SmoothPlastic
part_84.Size = Vector3.new(3, 3.6, 1)
part_84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.CFrame = CFrame.new(10.5, 9.8, -132.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BrickColor = BrickColor.new("Dark stone grey")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_59 = Instance.new("BlockMesh", part_84)

 part_85 = Instance.new("Part", mcarrier)
part_85.FormFactor = Enum.FormFactor.Plate
part_85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.TopSurface = Enum.SurfaceType.Smooth
part_85.Material = Enum.Material.SmoothPlastic
part_85.Size = Vector3.new(3, 3.6, 1)
part_85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.CFrame = CFrame.new(-0.5, 9.8, -122.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BrickColor = BrickColor.new("Dark stone grey")
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_60 = Instance.new("BlockMesh", part_85)

 part_86 = Instance.new("Part", mcarrier)
part_86.FormFactor = Enum.FormFactor.Plate
part_86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.TopSurface = Enum.SurfaceType.Smooth
part_86.Material = Enum.Material.SmoothPlastic
part_86.Size = Vector3.new(3, 3.6, 1)
part_86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.CFrame = CFrame.new(-0.5, 9.8, -142.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BrickColor = BrickColor.new("Dark stone grey")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_61 = Instance.new("BlockMesh", part_86)

 part_87 = Instance.new("Part", mcarrier)
part_87.FormFactor = Enum.FormFactor.Plate
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.Smooth
part_87.Material = Enum.Material.SmoothPlastic
part_87.Size = Vector3.new(43, 1.2, 1)
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.CFrame = CFrame.new(-0.5, 12.2, -128.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Buttermilk")
part_87.Friction = 0.3
part_87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_62 = Instance.new("BlockMesh", part_87)

 part_88 = Instance.new("Part", mcarrier)
part_88.FormFactor = Enum.FormFactor.Plate
part_88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.TopSurface = Enum.SurfaceType.Smooth
part_88.Material = Enum.Material.SmoothPlastic
part_88.Size = Vector3.new(12, 0.4, 1)
part_88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.CFrame = CFrame.new(5, 13, -165.5)
part_88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BrickColor = BrickColor.new("Buttermilk")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_63 = Instance.new("SpecialMesh", part_88)
mesh_63.MeshType = Enum.MeshType.Wedge

 part_89 = Instance.new("Part", mcarrier)
part_89.FormFactor = Enum.FormFactor.Plate
part_89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.TopSurface = Enum.SurfaceType.Smooth
part_89.Material = Enum.Material.SmoothPlastic
part_89.Size = Vector3.new(3, 3.6, 1)
part_89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.CFrame = CFrame.new(-0.5, 9.8, -137.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BrickColor = BrickColor.new("Dark stone grey")
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_64 = Instance.new("BlockMesh", part_89)

 part_90 = Instance.new("Part", mcarrier)
part_90.FormFactor = Enum.FormFactor.Plate
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.Smooth
part_90.Material = Enum.Material.SmoothPlastic
part_90.Size = Vector3.new(3, 3.6, 1)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(-0.5, 9.8, -127.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BrickColor = BrickColor.new("Dark stone grey")
part_90.Friction = 0.3
part_90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_65 = Instance.new("BlockMesh", part_90)

 part_91 = Instance.new("Part", mcarrier)
part_91.FormFactor = Enum.FormFactor.Plate
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.Smooth
part_91.Material = Enum.Material.SmoothPlastic
part_91.Size = Vector3.new(3, 3.6, 1)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(-0.5, 9.8, -132.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Dark stone grey")
part_91.Friction = 0.3
part_91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_66 = Instance.new("BlockMesh", part_91)

 part_92 = Instance.new("Part", mcarrier)
part_92.FormFactor = Enum.FormFactor.Plate
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.Smooth
part_92.Material = Enum.Material.SmoothPlastic
part_92.Size = Vector3.new(1, 0.4, 12)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(5, 12.6, -165.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Buttermilk")
part_92.Friction = 0.3
part_92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_67 = Instance.new("BlockMesh", part_92)

 troopdoor = Instance.new("Part", mcarrier)
troopdoor.FormFactor = Enum.FormFactor.Plate
troopdoor.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoor.TopSurface = Enum.SurfaceType.Smooth
troopdoor.Material = Enum.Material.SmoothPlastic
troopdoor.Size = Vector3.new(48, 0.4, 12)
troopdoor.Name = "troopdoor"
troopdoor.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoor.CFrame = CFrame.new(5, 13, -131)* CFrame.Angles(-0, -1.5707963705063, 0)
troopdoor.RightSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoor.BackSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoor.BrickColor = BrickColor.new("Buttermilk")
troopdoor.Friction = 0.3
troopdoor.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_68 = Instance.new("BlockMesh", troopdoor)

 door = Instance.new("Part", mcarrier)
door.FormFactor = Enum.FormFactor.Plate
door.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door.TopSurface = Enum.SurfaceType.Smooth
door.Material = Enum.Material.SmoothPlastic
door.Size = Vector3.new(1, 0.8, 5)
door.Name = "Door"
door.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door.CFrame = CFrame.new(10.5, 11.2, -109.5)
door.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door.BrickColor = BrickColor.new("Buttermilk")
door.Friction = 0.3
door.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_69 = Instance.new("BlockMesh", door)

 door_2 = Instance.new("Part", mcarrier)
door_2.FormFactor = Enum.FormFactor.Plate
door_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_2.TopSurface = Enum.SurfaceType.Smooth
door_2.Material = Enum.Material.SmoothPlastic
door_2.Size = Vector3.new(1, 2.8, 1)
door_2.Name = "Door"
door_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_2.CFrame = CFrame.new(10.5, 9.4, -107.5)
door_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_2.BrickColor = BrickColor.new("Buttermilk")
door_2.Friction = 0.3
door_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_70 = Instance.new("BlockMesh", door_2)

 click_door = Instance.new("Part", mcarrier)
click_door.FormFactor = Enum.FormFactor.Plate
click_door.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
click_door.TopSurface = Enum.SurfaceType.Smooth
click_door.Material = Enum.Material.SmoothPlastic
click_door.Size = Vector3.new(1, 3.2, 5)
click_door.Name = "Click Door"
click_door.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
click_door.CFrame = CFrame.new(10.5, 6.4, -109.5)
click_door.RightSurface = Enum.SurfaceType.SmoothNoOutlines
click_door.BackSurface = Enum.SurfaceType.SmoothNoOutlines
click_door.BrickColor = BrickColor.new("Buttermilk")
click_door.Friction = 0.3
click_door.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 door_3 = Instance.new("Part", mcarrier)
door_3.FormFactor = Enum.FormFactor.Plate
door_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_3.TopSurface = Enum.SurfaceType.Smooth
door_3.Material = Enum.Material.SmoothPlastic
door_3.Size = Vector3.new(1, 2.8, 1)
door_3.Name = "Door"
door_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_3.CFrame = CFrame.new(10.5, 9.4, -111.5)
door_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_3.BrickColor = BrickColor.new("Buttermilk")
door_3.Friction = 0.3
door_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_71 = Instance.new("BlockMesh", door_3)

 part_93 = Instance.new("Part", mcarrier)
part_93.FormFactor = Enum.FormFactor.Plate
part_93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.TopSurface = Enum.SurfaceType.Smooth
part_93.Material = Enum.Material.SmoothPlastic
part_93.Size = Vector3.new(43, 1.2, 1)
part_93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.CFrame = CFrame.new(10.5, 12.2, -128.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BrickColor = BrickColor.new("Buttermilk")
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_72 = Instance.new("BlockMesh", part_93)

 door_4 = Instance.new("Part", mcarrier)
door_4.FormFactor = Enum.FormFactor.Plate
door_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_4.TopSurface = Enum.SurfaceType.Smooth
door_4.Material = Enum.Material.SmoothPlastic
door_4.Size = Vector3.new(1, 2.8, 3)
door_4.Name = "Door"
door_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_4.CFrame = CFrame.new(10.5, 9.4, -109.5)
door_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_4.BrickColor = BrickColor.new("Buttermilk")
door_4.Friction = 0.3
door_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_73 = Instance.new("BlockMesh", door_4)

 door_5 = Instance.new("Part", mcarrier)
door_5.FormFactor = Enum.FormFactor.Plate
door_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_5.TopSurface = Enum.SurfaceType.Smooth
door_5.Material = Enum.Material.SmoothPlastic
door_5.Size = Vector3.new(1, 2.8, 3)
door_5.Name = "Door"
door_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_5.CFrame = CFrame.new(-0.5, 9.4, -109.5)
door_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_5.BrickColor = BrickColor.new("Buttermilk")
door_5.Friction = 0.3
door_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_74 = Instance.new("BlockMesh", door_5)

 door_6 = Instance.new("Part", mcarrier)
door_6.FormFactor = Enum.FormFactor.Plate
door_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_6.TopSurface = Enum.SurfaceType.Smooth
door_6.Material = Enum.Material.SmoothPlastic
door_6.Size = Vector3.new(1, 0.8, 5)
door_6.Name = "Door"
door_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_6.CFrame = CFrame.new(-0.5, 11.2, -109.5)
door_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_6.BrickColor = BrickColor.new("Buttermilk")
door_6.Friction = 0.3
door_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_75 = Instance.new("BlockMesh", door_6)

 door_7 = Instance.new("Part", mcarrier)
door_7.FormFactor = Enum.FormFactor.Plate
door_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_7.TopSurface = Enum.SurfaceType.Smooth
door_7.Material = Enum.Material.SmoothPlastic
door_7.Size = Vector3.new(1, 2.8, 1)
door_7.Name = "Door"
door_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_7.CFrame = CFrame.new(-0.5, 9.4, -111.5)
door_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_7.BrickColor = BrickColor.new("Buttermilk")
door_7.Friction = 0.3
door_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_76 = Instance.new("BlockMesh", door_7)

 click_door_2 = Instance.new("Part", mcarrier)
click_door_2.FormFactor = Enum.FormFactor.Plate
click_door_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_2.TopSurface = Enum.SurfaceType.Smooth
click_door_2.Material = Enum.Material.SmoothPlastic
click_door_2.Size = Vector3.new(1, 3.2, 5)
click_door_2.Name = "Click Door"
click_door_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_2.CFrame = CFrame.new(-0.5, 6.4, -109.5)
click_door_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_2.BrickColor = BrickColor.new("Buttermilk")
click_door_2.Friction = 0.3
click_door_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 door_8 = Instance.new("Part", mcarrier)
door_8.FormFactor = Enum.FormFactor.Plate
door_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_8.TopSurface = Enum.SurfaceType.Smooth
door_8.Material = Enum.Material.SmoothPlastic
door_8.Size = Vector3.new(1, 2.8, 1)
door_8.Name = "Door"
door_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_8.CFrame = CFrame.new(-0.5, 9.4, -107.5)
door_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_8.BrickColor = BrickColor.new("Buttermilk")
door_8.Friction = 0.3
door_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_77 = Instance.new("BlockMesh", door_8)

 door_9 = Instance.new("Part", mcarrier)
door_9.FormFactor = Enum.FormFactor.Plate
door_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_9.TopSurface = Enum.SurfaceType.Smooth
door_9.Material = Enum.Material.SmoothPlastic
door_9.Size = Vector3.new(1, 0.8, 4)
door_9.Name = "Door"
door_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_9.CFrame = CFrame.new(10.5, 11.2, -148)
door_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_9.BrickColor = BrickColor.new("Buttermilk")
door_9.Friction = 0.3
door_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_78 = Instance.new("BlockMesh", door_9)

 door_10 = Instance.new("Part", mcarrier)
door_10.FormFactor = Enum.FormFactor.Plate
door_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_10.TopSurface = Enum.SurfaceType.Smooth
door_10.Material = Enum.Material.SmoothPlastic
door_10.Size = Vector3.new(1, 2.8, 1)
door_10.Name = "Door"
door_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_10.CFrame = CFrame.new(10.5, 9.4, -146.5)
door_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_10.BrickColor = BrickColor.new("Buttermilk")
door_10.Friction = 0.3
door_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_79 = Instance.new("BlockMesh", door_10)

 door_11 = Instance.new("Part", mcarrier)
door_11.FormFactor = Enum.FormFactor.Plate
door_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_11.TopSurface = Enum.SurfaceType.Smooth
door_11.Material = Enum.Material.SmoothPlastic
door_11.Size = Vector3.new(1, 2.8, 2)
door_11.Name = "Door"
door_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_11.CFrame = CFrame.new(10.5, 9.4, -148)
door_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_11.BrickColor = BrickColor.new("Buttermilk")
door_11.Friction = 0.3
door_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_80 = Instance.new("BlockMesh", door_11)

 click_door_3 = Instance.new("Part", mcarrier)
click_door_3.FormFactor = Enum.FormFactor.Plate
click_door_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_3.TopSurface = Enum.SurfaceType.Smooth
click_door_3.Material = Enum.Material.SmoothPlastic
click_door_3.Size = Vector3.new(1, 3.2, 4)
click_door_3.Name = "Click Door"
click_door_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_3.CFrame = CFrame.new(10.5, 6.4, -148)
click_door_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_3.BrickColor = BrickColor.new("Buttermilk")
click_door_3.Friction = 0.3
click_door_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weight = Instance.new("Part", mcarrier)
weight.FormFactor = Enum.FormFactor.Plate
weight.CanCollide = false
weight.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
weight.Transparency = 1
weight.TopSurface = Enum.SurfaceType.Smooth
weight.Material = Enum.Material.SmoothPlastic
weight.Size = Vector3.new(40, 16.4, 36)
weight.Name = "weight"
weight.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
weight.CFrame = CFrame.new(18, 21.4, -134)* CFrame.Angles(-0, -1.5707963705063, 0)
weight.RightSurface = Enum.SurfaceType.SmoothNoOutlines
weight.BackSurface = Enum.SurfaceType.SmoothNoOutlines
weight.BrickColor = BrickColor.new("Buttermilk")
weight.Friction = 0.3
weight.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 door_12 = Instance.new("Part", mcarrier)
door_12.FormFactor = Enum.FormFactor.Plate
door_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_12.TopSurface = Enum.SurfaceType.Smooth
door_12.Material = Enum.Material.SmoothPlastic
door_12.Size = Vector3.new(1, 2.8, 1)
door_12.Name = "Door"
door_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_12.CFrame = CFrame.new(10.5, 9.4, -149.5)
door_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_12.BrickColor = BrickColor.new("Buttermilk")
door_12.Friction = 0.3
door_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_81 = Instance.new("BlockMesh", door_12)

 door_13 = Instance.new("Part", mcarrier)
door_13.FormFactor = Enum.FormFactor.Plate
door_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_13.TopSurface = Enum.SurfaceType.Smooth
door_13.Material = Enum.Material.SmoothPlastic
door_13.Size = Vector3.new(1, 2.8, 1)
door_13.Name = "Door"
door_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_13.CFrame = CFrame.new(-0.5, 9.4, -146.5)
door_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_13.BrickColor = BrickColor.new("Buttermilk")
door_13.Friction = 0.3
door_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_82 = Instance.new("BlockMesh", door_13)

 door_14 = Instance.new("Part", mcarrier)
door_14.FormFactor = Enum.FormFactor.Plate
door_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_14.TopSurface = Enum.SurfaceType.Smooth
door_14.Material = Enum.Material.SmoothPlastic
door_14.Size = Vector3.new(1, 0.8, 4)
door_14.Name = "Door"
door_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_14.CFrame = CFrame.new(-0.5, 11.2, -148)
door_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_14.BrickColor = BrickColor.new("Buttermilk")
door_14.Friction = 0.3
door_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_83 = Instance.new("BlockMesh", door_14)

 door_15 = Instance.new("Part", mcarrier)
door_15.FormFactor = Enum.FormFactor.Plate
door_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_15.TopSurface = Enum.SurfaceType.Smooth
door_15.Material = Enum.Material.SmoothPlastic
door_15.Size = Vector3.new(1, 2.8, 1)
door_15.Name = "Door"
door_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_15.CFrame = CFrame.new(-0.5, 9.4, -149.5)
door_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_15.BrickColor = BrickColor.new("Buttermilk")
door_15.Friction = 0.3
door_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_84 = Instance.new("BlockMesh", door_15)

 click_door_4 = Instance.new("Part", mcarrier)
click_door_4.FormFactor = Enum.FormFactor.Plate
click_door_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_4.TopSurface = Enum.SurfaceType.Smooth
click_door_4.Material = Enum.Material.SmoothPlastic
click_door_4.Size = Vector3.new(1, 3.2, 4)
click_door_4.Name = "Click Door"
click_door_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_4.CFrame = CFrame.new(-0.5, 6.4, -148)
click_door_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
click_door_4.BrickColor = BrickColor.new("Buttermilk")
click_door_4.Friction = 0.3
click_door_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_94 = Instance.new("Part", mcarrier)
part_94.FormFactor = Enum.FormFactor.Plate
part_94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.TopSurface = Enum.SurfaceType.Smooth
part_94.Material = Enum.Material.SmoothPlastic
part_94.Size = Vector3.new(2, 3.6, 1)
part_94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.CFrame = CFrame.new(-0.5, 9.8, -145)* CFrame.Angles(-0, -1.5707963705063, 0)
part_94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BrickColor = BrickColor.new("Buttermilk")
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_85 = Instance.new("BlockMesh", part_94)

 door_16 = Instance.new("Part", mcarrier)
door_16.FormFactor = Enum.FormFactor.Plate
door_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door_16.TopSurface = Enum.SurfaceType.Smooth
door_16.Material = Enum.Material.SmoothPlastic
door_16.Size = Vector3.new(1, 2.8, 2)
door_16.Name = "Door"
door_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door_16.CFrame = CFrame.new(-0.5, 9.4, -148)
door_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door_16.BrickColor = BrickColor.new("Buttermilk")
door_16.Friction = 0.3
door_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_86 = Instance.new("BlockMesh", door_16)

 part_95 = Instance.new("Part", mcarrier)
part_95.FormFactor = Enum.FormFactor.Plate
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.Smooth
part_95.Material = Enum.Material.SmoothPlastic
part_95.Size = Vector3.new(1, 7.6, 9)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(51.5, 5.3, -126.4)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = BrickColor.new("Buttermilk")
part_95.Friction = 0.3
part_95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_87 = Instance.new("SpecialMesh", part_95)
mesh_87.MeshType = Enum.MeshType.Wedge

 part_96 = Instance.new("Part", mcarrier)
part_96.FormFactor = Enum.FormFactor.Plate
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.TopSurface = Enum.SurfaceType.Smooth
part_96.Material = Enum.Material.SmoothPlastic
part_96.Size = Vector3.new(1, 10, 36)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(-19, 5.3, -135.2)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BrickColor = BrickColor.new("Buttermilk")
part_96.Friction = 0.3
part_96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Name = "crasherleftwing"

 mesh_88 = Instance.new("SpecialMesh", part_96)
mesh_88.MeshType = Enum.MeshType.Wedge

 part_97 = Instance.new("Part", mcarrier)
part_97.FormFactor = Enum.FormFactor.Plate
part_97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.TopSurface = Enum.SurfaceType.Smooth
part_97.Material = Enum.Material.SmoothPlastic
part_97.Size = Vector3.new(1, 7.6, 9)
part_97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.CFrame = CFrame.new(-41.5, 5.3, -126.4)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BrickColor = BrickColor.new("Buttermilk")
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_89 = Instance.new("SpecialMesh", part_97)
mesh_89.MeshType = Enum.MeshType.Wedge

 part_98 = Instance.new("Part", mcarrier)
part_98.FormFactor = Enum.FormFactor.Plate
part_98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.TopSurface = Enum.SurfaceType.Smooth
part_98.Material = Enum.Material.SmoothPlastic
part_98.Size = Vector3.new(45, 0.8, 1)
part_98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.CFrame = CFrame.new(33.5, 5.3, -122.2)* CFrame.Angles(1.5707963705063, 0, 0)
part_98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BrickColor = BrickColor.new("Buttermilk")
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_90 = Instance.new("SpecialMesh", part_98)
mesh_90.MeshType = Enum.MeshType.Wedge

 part_99 = Instance.new("Part", mcarrier)
part_99.FormFactor = Enum.FormFactor.Plate
part_99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.TopSurface = Enum.SurfaceType.Smooth
part_99.Material = Enum.Material.SmoothPlastic
part_99.Size = Vector3.new(45, 0.8, 1)
part_99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.CFrame = CFrame.new(-23.5, 5.3, -122.2)* CFrame.Angles(1.5707963705063, 0, 0)
part_99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BrickColor = BrickColor.new("Buttermilk")
part_99.Friction = 0.3
part_99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_91 = Instance.new("SpecialMesh", part_99)
mesh_91.MeshType = Enum.MeshType.Wedge

 part_100 = Instance.new("Part", mcarrier)
part_100.FormFactor = Enum.FormFactor.Plate
part_100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.TopSurface = Enum.SurfaceType.Smooth
part_100.Material = Enum.Material.SmoothPlastic
part_100.Size = Vector3.new(1, 8.4, 14)
part_100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.CFrame = CFrame.new(10.5, 9, -100)
part_100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BrickColor = BrickColor.new("Buttermilk")
part_100.Friction = 0.3
part_100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_92 = Instance.new("BlockMesh", part_100)

 part_101 = Instance.new("Part", mcarrier)
part_101.FormFactor = Enum.FormFactor.Plate
part_101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.TopSurface = Enum.SurfaceType.Smooth
part_101.Material = Enum.Material.SmoothPlastic
part_101.Size = Vector3.new(1, 8.4, 14)
part_101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.CFrame = CFrame.new(-0.5, 9, -100)
part_101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BrickColor = BrickColor.new("Buttermilk")
part_101.Friction = 0.3
part_101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_93 = Instance.new("BlockMesh", part_101)

 part_102 = Instance.new("Part", mcarrier)
part_102.FormFactor = Enum.FormFactor.Plate
part_102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.TopSurface = Enum.SurfaceType.Smooth
part_102.Material = Enum.Material.SmoothPlastic
part_102.Size = Vector3.new(1, 7.6, 36)
part_102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.CFrame = CFrame.new(-19, 5.3, -126.4)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BrickColor = BrickColor.new("Buttermilk")
part_102.Friction = 0.3
part_102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_94 = Instance.new("BlockMesh", part_102)

 part_103 = Instance.new("Part", mcarrier)
part_103.FormFactor = Enum.FormFactor.Plate
part_103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.TopSurface = Enum.SurfaceType.Smooth
part_103.Material = Enum.Material.SmoothPlastic
part_103.Size = Vector3.new(1, 10, 36)
part_103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.CFrame = CFrame.new(29, 5.3, -135.2)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BrickColor = BrickColor.new("Buttermilk")
part_103.Friction = 0.3
part_103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.Name = "crasherrightwing"

 mesh_95 = Instance.new("SpecialMesh", part_103)
mesh_95.MeshType = Enum.MeshType.Wedge

 part_104 = Instance.new("Part", mcarrier)
part_104.FormFactor = Enum.FormFactor.Plate
part_104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.TopSurface = Enum.SurfaceType.Smooth
part_104.Material = Enum.Material.SmoothPlastic
part_104.Size = Vector3.new(1, 7.6, 36)
part_104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.CFrame = CFrame.new(29, 5.3, -126.4)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BrickColor = BrickColor.new("Buttermilk")
part_104.Friction = 0.3
part_104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_96 = Instance.new("BlockMesh", part_104)

 part_105 = Instance.new("Part", mcarrier)
part_105.FormFactor = Enum.FormFactor.Plate
part_105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.TopSurface = Enum.SurfaceType.Smooth
part_105.Material = Enum.Material.SmoothPlastic
part_105.Size = Vector3.new(1, 9.2, 2)
part_105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.CFrame = CFrame.new(-5.6, 20.3, -87)* CFrame.Angles(-0, 0, -1.5707963705063)
part_105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BrickColor = BrickColor.new("Buttermilk")
part_105.Friction = 0.3
part_105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_97 = Instance.new("BlockMesh", part_105)

 troopdoorclosed = Instance.new("Part", mcarrier)
troopdoorclosed.FormFactor = Enum.FormFactor.Plate
troopdoorclosed.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoorclosed.TopSurface = Enum.SurfaceType.Smooth
troopdoorclosed.Material = Enum.Material.SmoothPlastic
troopdoorclosed.Size = Vector3.new(12, 8.4, 4)
troopdoorclosed.Name = "troopdoorclosed"
troopdoorclosed.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoorclosed.CFrame = CFrame.new(5, 9, -91)* CFrame.Angles(-3.1415927410126, 0, -0)
troopdoorclosed.RightSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoorclosed.BackSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoorclosed.BrickColor = BrickColor.new("Buttermilk")
troopdoorclosed.Friction = 0.3
troopdoorclosed.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
troopdoorclosed.CanCollide = false
troopdoorclosed.Transparency = 1

 mesh_98 = Instance.new("SpecialMesh", troopdoorclosed)
mesh_98.MeshType = Enum.MeshType.Wedge

 part_106 = Instance.new("Part", mcarrier)
part_106.FormFactor = Enum.FormFactor.Plate
part_106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.TopSurface = Enum.SurfaceType.Smooth
part_106.Material = Enum.Material.SmoothPlastic
part_106.Size = Vector3.new(4, 7.6, 18)
part_106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.CFrame = CFrame.new(9, 17, -98)
part_106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BrickColor = BrickColor.new("Buttermilk")
part_106.Friction = 0.3
part_106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_99 = Instance.new("SpecialMesh", part_106)
mesh_99.MeshType = Enum.MeshType.Wedge

 part_107 = Instance.new("Part", mcarrier)
part_107.FormFactor = Enum.FormFactor.Plate
part_107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.TopSurface = Enum.SurfaceType.Smooth
part_107.Material = Enum.Material.SmoothPlastic
part_107.Size = Vector3.new(4, 7.6, 18)
part_107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.CFrame = CFrame.new(1, 17, -98)
part_107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BrickColor = BrickColor.new("Buttermilk")
part_107.Friction = 0.3
part_107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_100 = Instance.new("SpecialMesh", part_107)
mesh_100.MeshType = Enum.MeshType.Wedge

 part_108 = Instance.new("Part", mcarrier)
part_108.FormFactor = Enum.FormFactor.Plate
part_108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.TopSurface = Enum.SurfaceType.Smooth
part_108.Material = Enum.Material.SmoothPlastic
part_108.Size = Vector3.new(4, 15.2, 9)
part_108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.CFrame = CFrame.new(5, 20.8, -84.5)* CFrame.Angles(-3.1415927410126, 0, -0)
part_108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BrickColor = BrickColor.new("Buttermilk")
part_108.Friction = 0.3
part_108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_101 = Instance.new("SpecialMesh", part_108)
mesh_101.MeshType = Enum.MeshType.Wedge

 part_109 = Instance.new("Part", mcarrier)
part_109.FormFactor = Enum.FormFactor.Plate
part_109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.TopSurface = Enum.SurfaceType.Smooth
part_109.Material = Enum.Material.SmoothPlastic
part_109.Size = Vector3.new(4, 7.6, 4)
part_109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.CFrame = CFrame.new(9, 17, -87)* CFrame.Angles(-3.1415927410126, 0, -0)
part_109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BrickColor = BrickColor.new("Buttermilk")
part_109.Friction = 0.3
part_109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_102 = Instance.new("SpecialMesh", part_109)
mesh_102.MeshType = Enum.MeshType.Wedge

 part_110 = Instance.new("Part", mcarrier)
part_110.FormFactor = Enum.FormFactor.Plate
part_110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.TopSurface = Enum.SurfaceType.Smooth
part_110.Material = Enum.Material.SmoothPlastic
part_110.Size = Vector3.new(4, 7.6, 4)
part_110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.CFrame = CFrame.new(1, 17, -87)* CFrame.Angles(-3.1415927410126, 0, -0)
part_110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BrickColor = BrickColor.new("Buttermilk")
part_110.Friction = 0.3
part_110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_103 = Instance.new("SpecialMesh", part_110)
mesh_103.MeshType = Enum.MeshType.Wedge

 part_111 = Instance.new("Part", mcarrier)
part_111.FormFactor = Enum.FormFactor.Plate
part_111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.TopSurface = Enum.SurfaceType.Smooth
part_111.Material = Enum.Material.SmoothPlastic
part_111.Size = Vector3.new(4, 15.2, 18)
part_111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.CFrame = CFrame.new(5, 20.8, -98)
part_111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BrickColor = BrickColor.new("Buttermilk")
part_111.Friction = 0.3
part_111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_104 = Instance.new("SpecialMesh", part_111)
mesh_104.MeshType = Enum.MeshType.Wedge

 part_112 = Instance.new("Part", mcarrier)
part_112.FormFactor = Enum.FormFactor.Plate
part_112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.TopSurface = Enum.SurfaceType.Smooth
part_112.Material = Enum.Material.SmoothPlastic
part_112.Size = Vector3.new(1, 3.2, 15)
part_112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.CFrame = CFrame.new(10.5, 6.4, -119.5)
part_112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BrickColor = BrickColor.new("Buttermilk")
part_112.Friction = 0.3
part_112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_105 = Instance.new("BlockMesh", part_112)

 part_113 = Instance.new("Part", mcarrier)
part_113.FormFactor = Enum.FormFactor.Plate
part_113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.TopSurface = Enum.SurfaceType.Smooth
part_113.Material = Enum.Material.SmoothPlastic
part_113.Size = Vector3.new(1, 3.2, 15)
part_113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.CFrame = CFrame.new(-0.5, 6.4, -119.5)
part_113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BrickColor = BrickColor.new("Buttermilk")
part_113.Friction = 0.3
part_113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_106 = Instance.new("BlockMesh", part_113)

 part_114 = Instance.new("Part", mcarrier)
part_114.FormFactor = Enum.FormFactor.Plate
part_114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.TopSurface = Enum.SurfaceType.Smooth
part_114.Material = Enum.Material.SmoothPlastic
part_114.Size = Vector3.new(12, 0.8, 34)
part_114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.CFrame = CFrame.new(5, 4.4, -110)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BrickColor = BrickColor.new("Dark stone grey")
part_114.Friction = 0.3
part_114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_107 = Instance.new("BlockMesh", part_114)

 part_115 = Instance.new("Part", mcarrier)
part_115.FormFactor = Enum.FormFactor.Plate
part_115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.TopSurface = Enum.SurfaceType.Smooth
part_115.Material = Enum.Material.SmoothPlastic
part_115.Size = Vector3.new(9, 1.2, 1)
part_115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.CFrame = CFrame.new(-5.5, 20.3, -85.4)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BrickColor = BrickColor.new("Buttermilk")
part_115.Friction = 0.3
part_115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_108 = Instance.new("SpecialMesh", part_115)
mesh_108.MeshType = Enum.MeshType.Wedge

 part_116 = Instance.new("Part", mcarrier)
part_116.FormFactor = Enum.FormFactor.Plate
part_116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.TopSurface = Enum.SurfaceType.Smooth
part_116.Material = Enum.Material.SmoothPlastic
part_116.Size = Vector3.new(1, 1.2, 9)
part_116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.CFrame = CFrame.new(-5.5, 20.3, -88.6)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BrickColor = BrickColor.new("Buttermilk")
part_116.Friction = 0.3
part_116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_109 = Instance.new("SpecialMesh", part_116)
mesh_109.MeshType = Enum.MeshType.Wedge

 part_117 = Instance.new("Part", mcarrier)
part_117.FormFactor = Enum.FormFactor.Plate
part_117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.TopSurface = Enum.SurfaceType.Smooth
part_117.Material = Enum.Material.SmoothPlastic
part_117.Size = Vector3.new(1, 1.2, 9)
part_117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.CFrame = CFrame.new(15.5, 20.3, -88.6)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BrickColor = BrickColor.new("Buttermilk")
part_117.Friction = 0.3
part_117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_110 = Instance.new("SpecialMesh", part_117)
mesh_110.MeshType = Enum.MeshType.Wedge

 part_118 = Instance.new("Part", mcarrier)
part_118.FormFactor = Enum.FormFactor.Plate
part_118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.TopSurface = Enum.SurfaceType.Smooth
part_118.Material = Enum.Material.SmoothPlastic
part_118.Size = Vector3.new(1, 9.2, 2)
part_118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.CFrame = CFrame.new(15.6, 20.3, -87)* CFrame.Angles(-0, 0, -1.5707963705063)
part_118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BrickColor = BrickColor.new("Buttermilk")
part_118.Friction = 0.3
part_118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_111 = Instance.new("BlockMesh", part_118)

 part_119 = Instance.new("Part", mcarrier)
part_119.FormFactor = Enum.FormFactor.Plate
part_119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.TopSurface = Enum.SurfaceType.Smooth
part_119.Material = Enum.Material.SmoothPlastic
part_119.Size = Vector3.new(9, 1.2, 1)
part_119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.CFrame = CFrame.new(15.5, 20.3, -85.4)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.BrickColor = BrickColor.new("Buttermilk")
part_119.Friction = 0.3
part_119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_112 = Instance.new("SpecialMesh", part_119)
mesh_112.MeshType = Enum.MeshType.Wedge

 part_120 = Instance.new("Part", mcarrier)
part_120.FormFactor = Enum.FormFactor.Plate
part_120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.TopSurface = Enum.SurfaceType.Smooth
part_120.Material = Enum.Material.SmoothPlastic
part_120.Size = Vector3.new(12, 3.2, 2)
part_120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.CFrame = CFrame.new(5, 6.4, -169)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.BrickColor = BrickColor.new("Buttermilk")
part_120.Friction = 0.3
part_120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_113 = Instance.new("BlockMesh", part_120)

 part_121 = Instance.new("Part", mcarrier)
part_121.FormFactor = Enum.FormFactor.Plate
part_121.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.TopSurface = Enum.SurfaceType.Smooth
part_121.Material = Enum.Material.SmoothPlastic
part_121.Size = Vector3.new(3, 0.8, 2)
part_121.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.CFrame = CFrame.new(-21.4, 1.2, -128.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_121.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.BrickColor = BrickColor.new("Dark stone grey")
part_121.Friction = 0.3
part_121.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.Name = "Wheel4"

 mesh_114 = Instance.new("CylinderMesh", part_121)

 part_122 = Instance.new("Part", mcarrier)
part_122.FormFactor = Enum.FormFactor.Plate
part_122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.TopSurface = Enum.SurfaceType.Smooth
part_122.Material = Enum.Material.SmoothPlastic
part_122.Size = Vector3.new(1, 0.8, 1)
part_122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.CFrame = CFrame.new(4.5, 6.4, -165.5)* CFrame.Angles(-0, 0, -3.1415927410126)
part_122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.BrickColor = BrickColor.new("Dark stone grey")
part_122.Friction = 0.3
part_122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_115 = Instance.new("CylinderMesh", part_122)
mesh_115.Scale = Vector3.new(0.1, 1, 1)

 part_123 = Instance.new("Part", mcarrier)
part_123.FormFactor = Enum.FormFactor.Plate
part_123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.TopSurface = Enum.SurfaceType.Smooth
part_123.Material = Enum.Material.SmoothPlastic
part_123.Size = Vector3.new(1, 0.8, 1)
part_123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.CFrame = CFrame.new(3.5, 6.4, -165.5)* CFrame.Angles(-0, 0, -3.1415927410126)
part_123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.BrickColor = BrickColor.new("Dark stone grey")
part_123.Friction = 0.3
part_123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_116 = Instance.new("CylinderMesh", part_123)
mesh_116.Scale = Vector3.new(0.1, 1, 1)

 part_124 = Instance.new("Part", mcarrier)
part_124.FormFactor = Enum.FormFactor.Plate
part_124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.TopSurface = Enum.SurfaceType.Smooth
part_124.Material = Enum.Material.SmoothPlastic
part_124.Size = Vector3.new(3, 0.8, 2)
part_124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.CFrame = CFrame.new(4.2, 1, -164.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.BrickColor = BrickColor.new("Dark stone grey")
part_124.Friction = 0.3
part_124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.Name = "Wheel5"

 mesh_117 = Instance.new("CylinderMesh", part_124)

 part_125 = Instance.new("Part", mcarrier)
part_125.FormFactor = Enum.FormFactor.Plate
part_125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.TopSurface = Enum.SurfaceType.Smooth
part_125.Material = Enum.Material.SmoothPlastic
part_125.Size = Vector3.new(1, 0.8, 1)
part_125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.CFrame = CFrame.new(6.5, 6.4, -165.5)* CFrame.Angles(-0, 0, -3.1415927410126)
part_125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.BrickColor = BrickColor.new("Dark stone grey")
part_125.Friction = 0.3
part_125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_118 = Instance.new("CylinderMesh", part_125)
mesh_118.Scale = Vector3.new(0.1, 1, 1)

 part_126 = Instance.new("Part", mcarrier)
part_126.FormFactor = Enum.FormFactor.Plate
part_126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.TopSurface = Enum.SurfaceType.Smooth
part_126.Material = Enum.Material.SmoothPlastic
part_126.Size = Vector3.new(2, 0.4, 3)
part_126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.CFrame = CFrame.new(1, 6.3, -165)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.BrickColor = BrickColor.new("Dark stone grey")
part_126.Friction = 0.3
part_126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_119 = Instance.new("CylinderMesh", part_126)
mesh_119.Scale = Vector3.new(1.3, 1, 1)

 part_127 = Instance.new("Part", mcarrier)
part_127.FormFactor = Enum.FormFactor.Plate
part_127.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.TopSurface = Enum.SurfaceType.Smooth
part_127.Material = Enum.Material.SmoothPlastic
part_127.Size = Vector3.new(1, 0.4, 3)
part_127.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.CFrame = CFrame.new(4.8, 2.5, -164.5)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_127.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.BrickColor = BrickColor.new("Dark stone grey")
part_127.Friction = 0.3
part_127.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.Name = "Wheelline1"

 mesh_120 = Instance.new("BlockMesh", part_127)


 part_128 = Instance.new("Part", mcarrier)
part_128.FormFactor = Enum.FormFactor.Plate
part_128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.TopSurface = Enum.SurfaceType.Smooth
part_128.Material = Enum.Material.SmoothPlastic
part_128.Size = Vector3.new(1, 0.4, 3)
part_128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.CFrame = CFrame.new(31.8, 3.3, -126.5)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.BrickColor = BrickColor.new("Dark stone grey")
part_128.Friction = 0.3
part_128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.Name = "Wheelline2"

 mesh_121 = Instance.new("BlockMesh", part_128)

 part_129 = Instance.new("Part", mcarrier)
part_129.FormFactor = Enum.FormFactor.Plate
part_129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.TopSurface = Enum.SurfaceType.Smooth
part_129.Material = Enum.Material.SmoothPlastic
part_129.Size = Vector3.new(3, 0.8, 2)
part_129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.CFrame = CFrame.new(-21.4, 1.2, -124.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.BrickColor = BrickColor.new("Dark stone grey")
part_129.Friction = 0.3
part_129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.Name = "Wheel6"

 mesh_122 = Instance.new("CylinderMesh", part_129)

 part_130 = Instance.new("Part", mcarrier)
part_130.FormFactor = Enum.FormFactor.Plate
part_130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.TopSurface = Enum.SurfaceType.Smooth
part_130.Material = Enum.Material.SmoothPlastic
part_130.Size = Vector3.new(3, 0.8, 2)
part_130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.CFrame = CFrame.new(-22.6, 1.2, -128.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.BrickColor = BrickColor.new("Dark stone grey")
part_130.Friction = 0.3
part_130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.Name = "Wheel7"

 mesh_123 = Instance.new("CylinderMesh", part_130)

 part_131 = Instance.new("Part", mcarrier)
part_131.FormFactor = Enum.FormFactor.Plate
part_131.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.TopSurface = Enum.SurfaceType.Smooth
part_131.Material = Enum.Material.SmoothPlastic
part_131.Size = Vector3.new(1, 0.8, 1)
part_131.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.CFrame = CFrame.new(5.5, 6.4, -165.5)* CFrame.Angles(-0, 0, -3.1415927410126)
part_131.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.BrickColor = BrickColor.new("Dark stone grey")
part_131.Friction = 0.3
part_131.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_124 = Instance.new("CylinderMesh", part_131)
mesh_124.Scale = Vector3.new(0.1, 1, 1)

 part_132 = Instance.new("Part", mcarrier)
part_132.FormFactor = Enum.FormFactor.Plate
part_132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.TopSurface = Enum.SurfaceType.Smooth
part_132.Material = Enum.Material.SmoothPlastic
part_132.Size = Vector3.new(12, 0.8, 43)
part_132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.CFrame = CFrame.new(5, 4.4, -148.5)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.BrickColor = BrickColor.new("Dark stone grey")
part_132.Friction = 0.3
part_132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_125 = Instance.new("BlockMesh", part_132)

 part_133 = Instance.new("Part", mcarrier)
part_133.FormFactor = Enum.FormFactor.Plate
part_133.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.TopSurface = Enum.SurfaceType.Smooth
part_133.Material = Enum.Material.SmoothPlastic
part_133.Size = Vector3.new(1, 0.4, 3)
part_133.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.CFrame = CFrame.new(-22, 3.3, -126.5)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_133.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.BrickColor = BrickColor.new("Dark stone grey")
part_133.Friction = 0.3
part_133.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.Name = "Wheelline3"

 mesh_126 = Instance.new("BlockMesh", part_133)

 part_134 = Instance.new("Part", mcarrier)
part_134.FormFactor = Enum.FormFactor.Plate
part_134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.TopSurface = Enum.SurfaceType.Smooth
part_134.Material = Enum.Material.SmoothPlastic
part_134.Size = Vector3.new(3, 0.8, 2)
part_134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.CFrame = CFrame.new(5.4, 1, -164.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.BrickColor = BrickColor.new("Dark stone grey")
part_134.Friction = 0.3
part_134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.Name = "Wheel8"

 mesh_127 = Instance.new("CylinderMesh", part_134)

 part_135 = Instance.new("Part", mcarrier)
part_135.FormFactor = Enum.FormFactor.Plate
part_135.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.TopSurface = Enum.SurfaceType.Smooth
part_135.Material = Enum.Material.SmoothPlastic
part_135.Size = Vector3.new(1, 3.2, 5)
part_135.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.CFrame = CFrame.new(10.5, 6.4, -152.5)
part_135.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.BrickColor = BrickColor.new("Buttermilk")
part_135.Friction = 0.3
part_135.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_128 = Instance.new("BlockMesh", part_135)

 part_136 = Instance.new("Part", mcarrier)
part_136.FormFactor = Enum.FormFactor.Plate
part_136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.TopSurface = Enum.SurfaceType.Smooth
part_136.Material = Enum.Material.SmoothPlastic
part_136.Size = Vector3.new(6, 1.2, 2)
part_136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.CFrame = CFrame.new(5, 5.4, -167)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.BrickColor = BrickColor.new("Buttermilk")
part_136.Friction = 0.3
part_136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_129 = Instance.new("BlockMesh", part_136)

 part_137 = Instance.new("Part", mcarrier)
part_137.FormFactor = Enum.FormFactor.Plate
part_137.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.TopSurface = Enum.SurfaceType.Smooth
part_137.Material = Enum.Material.SmoothPlastic
part_137.Size = Vector3.new(2, 0.4, 2)
part_137.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.CFrame = CFrame.new(9, 7.8, -167)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_137.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.BrickColor = BrickColor.new("Dark stone grey")
part_137.Friction = 0.3
part_137.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_130 = Instance.new("SpecialMesh", part_137)
mesh_130.MeshType = Enum.MeshType.Wedge

 part_138 = Instance.new("Part", mcarrier)
part_138.FormFactor = Enum.FormFactor.Plate
part_138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.TopSurface = Enum.SurfaceType.Smooth
part_138.Material = Enum.Material.SmoothPlastic
part_138.Size = Vector3.new(2, 2.8, 2)
part_138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.CFrame = CFrame.new(9, 6.2, -167)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.BrickColor = BrickColor.new("Dark stone grey")
part_138.Friction = 0.3
part_138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_131 = Instance.new("BlockMesh", part_138)

 part_139 = Instance.new("Part", mcarrier)
part_139.FormFactor = Enum.FormFactor.Plate
part_139.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.TopSurface = Enum.SurfaceType.Smooth
part_139.Material = Enum.Material.SmoothPlastic
part_139.Size = Vector3.new(13, 3.2, 1)
part_139.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.CFrame = CFrame.new(-0.5, 6.4, -161.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_139.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.BrickColor = BrickColor.new("Buttermilk")
part_139.Friction = 0.3
part_139.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_132 = Instance.new("BlockMesh", part_139)

 part_140 = Instance.new("Part", mcarrier)
part_140.FormFactor = Enum.FormFactor.Plate
part_140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.TopSurface = Enum.SurfaceType.Smooth
part_140.Material = Enum.Material.SmoothPlastic
part_140.Size = Vector3.new(1, 1.2, 2)
part_140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.CFrame = CFrame.new(7.5, 5.4, -165)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.BrickColor = BrickColor.new("Dark stone grey")
part_140.Friction = 0.3
part_140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_133 = Instance.new("SpecialMesh", part_140)
mesh_133.MeshType = Enum.MeshType.Wedge

 part_141 = Instance.new("Part", mcarrier)
part_141.FormFactor = Enum.FormFactor.Plate
part_141.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.TopSurface = Enum.SurfaceType.Smooth
part_141.Material = Enum.Material.SmoothPlastic
part_141.Size = Vector3.new(13, 3.2, 1)
part_141.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.CFrame = CFrame.new(10.5, 6.4, -161.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_141.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.BrickColor = BrickColor.new("Buttermilk")
part_141.Friction = 0.3
part_141.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_134 = Instance.new("BlockMesh", part_141)

 part_142 = Instance.new("Part", mcarrier)
part_142.FormFactor = Enum.FormFactor.Plate
part_142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.TopSurface = Enum.SurfaceType.Smooth
part_142.Material = Enum.Material.SmoothPlastic
part_142.Size = Vector3.new(3, 0.8, 2)
part_142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.CFrame = CFrame.new(31.2, 1.2, -128.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.BrickColor = BrickColor.new("Dark stone grey")
part_142.Friction = 0.3
part_142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.Name = "Wheel9"

 mesh_135 = Instance.new("CylinderMesh", part_142)

 part_143 = Instance.new("Part", mcarrier)
part_143.FormFactor = Enum.FormFactor.Plate
part_143.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.TopSurface = Enum.SurfaceType.Smooth
part_143.Material = Enum.Material.SmoothPlastic
part_143.Size = Vector3.new(1, 3.2, 3)
part_143.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.CFrame = CFrame.new(1.5, 6.4, -155.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_143.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.BrickColor = BrickColor.new("Buttermilk")
part_143.Friction = 0.3
part_143.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_136 = Instance.new("BlockMesh", part_143)

 part_144 = Instance.new("Part", mcarrier)
part_144.FormFactor = Enum.FormFactor.Plate
part_144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.TopSurface = Enum.SurfaceType.Smooth
part_144.Material = Enum.Material.SmoothPlastic
part_144.Size = Vector3.new(5, 0.4, 1)
part_144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.CFrame = CFrame.new(31.8, 1.3, -126.5)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.BrickColor = BrickColor.new("Dark stone grey")
part_144.Friction = 0.3
part_144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.Name = "Wheelbar1"

 mesh_137 = Instance.new("BlockMesh", part_144)

 part_145 = Instance.new("Part", mcarrier)
part_145.FormFactor = Enum.FormFactor.Plate
part_145.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.TopSurface = Enum.SurfaceType.Smooth
part_145.Material = Enum.Material.SmoothPlastic
part_145.Size = Vector3.new(4, 1.2, 1)
part_145.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.CFrame = CFrame.new(5, 5.4, -165.5)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_145.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.BrickColor = BrickColor.new("Dark stone grey")
part_145.Friction = 0.3
part_145.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_138 = Instance.new("BlockMesh", part_145)

 part_146 = Instance.new("Part", mcarrier)
part_146.FormFactor = Enum.FormFactor.Plate
part_146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.TopSurface = Enum.SurfaceType.Smooth
part_146.Material = Enum.Material.SmoothPlastic
part_146.Size = Vector3.new(1, 3.2, 5)
part_146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.CFrame = CFrame.new(-0.5, 6.4, -152.5)
part_146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.BrickColor = BrickColor.new("Buttermilk")
part_146.Friction = 0.3
part_146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_139 = Instance.new("BlockMesh", part_146)

 engine = Instance.new("Part", mcarrier)
engine.FormFactor = Enum.FormFactor.Plate
engine.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
engine.TopSurface = Enum.SurfaceType.Smooth
engine.Material = Enum.Material.SmoothPlastic
engine.Size = Vector3.new(4, 1.2, 1)
engine.Name = "engine"
engine.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
engine.CFrame = CFrame.new(5, 5.4, -164.5)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
engine.RightSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BackSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BrickColor = BrickColor.new("Dark stone grey")
engine.Friction = 0.3
engine.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_140 = Instance.new("SpecialMesh", engine)
mesh_140.MeshType = Enum.MeshType.Wedge

 part_147 = Instance.new("Part", mcarrier)
part_147.FormFactor = Enum.FormFactor.Plate
part_147.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.TopSurface = Enum.SurfaceType.Smooth
part_147.Material = Enum.Material.SmoothPlastic
part_147.Size = Vector3.new(1, 1.2, 2)
part_147.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.CFrame = CFrame.new(2.5, 5.4, -165)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_147.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.BrickColor = BrickColor.new("Dark stone grey")
part_147.Friction = 0.3
part_147.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_141 = Instance.new("SpecialMesh", part_147)
mesh_141.MeshType = Enum.MeshType.Wedge

 part_148 = Instance.new("Part", mcarrier)
part_148.FormFactor = Enum.FormFactor.Plate
part_148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.TopSurface = Enum.SurfaceType.Smooth
part_148.Material = Enum.Material.SmoothPlastic
part_148.Size = Vector3.new(5, 0.4, 1)
part_148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.CFrame = CFrame.new(-22, 1.3, -126.5)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.BrickColor = BrickColor.new("Dark stone grey")
part_148.Friction = 0.3
part_148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.Name = "Wheelbar2"

 mesh_142 = Instance.new("BlockMesh", part_148)

 part_149 = Instance.new("Part", mcarrier)
part_149.FormFactor = Enum.FormFactor.Plate
part_149.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.TopSurface = Enum.SurfaceType.Smooth
part_149.Material = Enum.Material.SmoothPlastic
part_149.Size = Vector3.new(1, 3.2, 3)
part_149.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.CFrame = CFrame.new(8.5, 6.4, -155.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_149.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.BrickColor = BrickColor.new("Buttermilk")
part_149.Friction = 0.3
part_149.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_143 = Instance.new("BlockMesh", part_149)

 part_150 = Instance.new("Part", mcarrier)
part_150.FormFactor = Enum.FormFactor.Plate
part_150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.TopSurface = Enum.SurfaceType.Smooth
part_150.Material = Enum.Material.SmoothPlastic
part_150.Size = Vector3.new(1, 3.2, 19)
part_150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.CFrame = CFrame.new(-0.5, 6.4, -136.5)
part_150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.BrickColor = BrickColor.new("Buttermilk")
part_150.Friction = 0.3
part_150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_144 = Instance.new("BlockMesh", part_150)

 part_151 = Instance.new("Part", mcarrier)
part_151.FormFactor = Enum.FormFactor.Plate
part_151.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.TopSurface = Enum.SurfaceType.Smooth
part_151.Material = Enum.Material.SmoothPlastic
part_151.Size = Vector3.new(1, 3.2, 19)
part_151.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.CFrame = CFrame.new(10.5, 6.4, -136.5)
part_151.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.BrickColor = BrickColor.new("Buttermilk")
part_151.Friction = 0.3
part_151.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_145 = Instance.new("BlockMesh", part_151)

 part_152 = Instance.new("Part", mcarrier)
part_152.FormFactor = Enum.FormFactor.Plate
part_152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.TopSurface = Enum.SurfaceType.Smooth
part_152.Material = Enum.Material.SmoothPlastic
part_152.Size = Vector3.new(3, 0.8, 2)
part_152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.CFrame = CFrame.new(31.2, 1.2, -124.5)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.BrickColor = BrickColor.new("Dark stone grey")
part_152.Friction = 0.3
part_152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.Name = "Wheel10"

 mesh_146 = Instance.new("CylinderMesh", part_152)

 part_153 = Instance.new("Part", mcarrier)
part_153.FormFactor = Enum.FormFactor.Plate
part_153.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.TopSurface = Enum.SurfaceType.Smooth
part_153.Material = Enum.Material.SmoothPlastic
part_153.Size = Vector3.new(2, 0.8, 1)
part_153.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.CFrame = CFrame.new(9, 6.3, -165.6)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_153.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.BrickColor = BrickColor.new("Dark stone grey")
part_153.Friction = 0.3
part_153.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_147 = Instance.new("CylinderMesh", part_153)

 part_154 = Instance.new("Part", mcarrier)
part_154.FormFactor = Enum.FormFactor.Plate
part_154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.TopSurface = Enum.SurfaceType.Smooth
part_154.Material = Enum.Material.SmoothPlastic
part_154.Size = Vector3.new(2, 0.4, 2)
part_154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.CFrame = CFrame.new(1, 7.8, -167)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.BrickColor = BrickColor.new("Dark stone grey")
part_154.Friction = 0.3
part_154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_148 = Instance.new("SpecialMesh", part_154)
mesh_148.MeshType = Enum.MeshType.Wedge

 part_155 = Instance.new("Part", mcarrier)
part_155.FormFactor = Enum.FormFactor.Plate
part_155.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.TopSurface = Enum.SurfaceType.Smooth
part_155.Material = Enum.Material.SmoothPlastic
part_155.Size = Vector3.new(2, 0.8, 1)
part_155.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.CFrame = CFrame.new(1, 6.3, -165.6)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_155.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.BrickColor = BrickColor.new("Dark stone grey")
part_155.Friction = 0.3
part_155.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_149 = Instance.new("CylinderMesh", part_155)

 part_156 = Instance.new("Part", mcarrier)
part_156.FormFactor = Enum.FormFactor.Plate
part_156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.TopSurface = Enum.SurfaceType.Smooth
part_156.Material = Enum.Material.SmoothPlastic
part_156.Size = Vector3.new(2, 0.4, 3)
part_156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.CFrame = CFrame.new(9, 6.3, -165)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_156.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.BrickColor = BrickColor.new("Dark stone grey")
part_156.Friction = 0.3
part_156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_150 = Instance.new("CylinderMesh", part_156)
mesh_150.Scale = Vector3.new(1.3, 1, 1)

local identifylight = Instance.new("Part", mcarrier)
identifylight.FormFactor = Enum.FormFactor.Custom
identifylight.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
identifylight.TopSurface = Enum.SurfaceType.Smooth
identifylight.Material = Enum.Material.SmoothPlastic
identifylight.Size = Vector3.new(1, 1, 1)
identifylight.Name = "identifylight"
identifylight.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
identifylight.CFrame = CFrame.new(10.8, 5.9, -163.3)* CFrame.Angles(-3.1415927410126, -1.5707963705063, 0)
identifylight.RightSurface = Enum.SurfaceType.SmoothNoOutlines
identifylight.BackSurface = Enum.SurfaceType.SmoothNoOutlines
identifylight.BrickColor = BrickColor.new("Really black")
identifylight.Friction = 0.3
identifylight.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local light = Instance.new("PointLight", identifylight)
light.Enabled = false
light.Name = "light"
light.Color = Color3.new(1, 0, 0)
light.Brightness = 20
light.Range = 40

mcarrier:BreakJoints()

local engine = mcarrier.mainseat
local propeller1 = mcarrier.propeller1
local propeller2 = mcarrier.propeller2
local propeller3 = mcarrier.propeller3
local propeller4 = mcarrier.propeller4
propeller1:BreakJoints()
propeller2:BreakJoints()
propeller3:BreakJoints()
propeller4:BreakJoints()

local prev
local parts = mcarrier:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(400,4,0.1)
		end 
		prev = parts[i] 
	end 
end
mcarrier:MakeJoints()
mcarrier.Parent = char


local prev
local parts = propeller1:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(500,4,0)
		end 
		prev = parts[i] 
	end 
end
propeller1:MakeJoints()

local prev
local parts = propeller2:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(500,4,0)
		end 
		prev = parts[i] 
	end 
end
propeller2:MakeJoints()

local prev
local parts = propeller3:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(500,4,0)
		end 
		prev = parts[i] 
	end 
end
propeller3:MakeJoints()

local prev
local parts = propeller4:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(500,4,0)
		end 
		prev = parts[i] 
	end 
end
propeller4:MakeJoints()

weld(propeller1.propellercenter, mcarrier.propeller1pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(propeller2.propellercenter, mcarrier.propeller2pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(propeller3.propellercenter, mcarrier.propeller3pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(propeller4.propellercenter, mcarrier.propeller4pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
propeller1.propellercenter.Weld.Name = "propellerweld"
propeller2.propellercenter.Weld.Name = "propellerweld"
propeller3.propellercenter.Weld.Name = "propellerweld"
propeller4.propellercenter.Weld.Name = "propellerweld"
engine.CFrame = char["Left Leg"].CFrame*CFrame.new(5,40,15)


--PlaneSounds Start--
local enginesound=Instance.new("Sound")
enginesound.SoundId="http://www.roblox.com/asset/?id=142317661"
enginesound.PlayOnRemove=false
enginesound.Volume=0.95
enginesound.Looped=true
enginesound.Pitch = 1
enginesound.Parent=engine
local pros=Instance.new("Sound")
pros.SoundId="http://www.roblox.com/asset/?id=133082569"
pros.PlayOnRemove=false
pros.Volume=0.85
pros.Looped=true
pros.Pitch = 1
pros.Parent=propeller1.propellercenter
local air=Instance.new("Sound")
air.SoundId="http://www.roblox.com/asset/?id=142840797"
air.PlayOnRemove=false
air.Volume=5
air.Looped=true
air.Pitch = 1
air.Parent=engine
local pros2=Instance.new("Sound")
pros2.SoundId="http://www.roblox.com/asset/?id=133082569"
pros2.PlayOnRemove=false
pros2.Volume=0.85
pros2.Looped=true
pros2.Pitch = 1
pros2.Parent=propeller3.propellercenter
--PlaneSounds End--

mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
engineon = true
--enginesound:Play()
pros:Play()
pros2:Play()
while engineon == true do wait()
	rotateangle = rotateangle + 10
	
	propeller1.propellercenter.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(rotateangle),0,0)
	propeller2.propellercenter.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(rotateangle),0,0)
	propeller3.propellercenter.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(rotateangle),0,0)
	propeller4.propellercenter.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(rotateangle),0,0)
end
end
end)

local bg = Instance.new("BodyGyro",engine)
bg.D = 500
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
local bv = Instance.new("BodyVelocity",engine)
bv.MaxForce = Vector3.new(0,0,0)
bv.P = 1250
bv.Velocity = Vector3.new(0,0.16,0)

mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
engineon = false
--enginesound:Stop()
pros:Stop()
pros2:Stop()
air:Stop()
bv.MaxForce = Vector3.new(0,0,0)
--bg.CFrame = CFrame.new(engine.CFrame.p, mouse.Hit.p)
end
end)

--Gui Start--
local speedgui = Instance.new("ScreenGui", player.PlayerGui)
speedgui.Name = "SpeedGui"

local speedguibackground = Instance.new("Frame", speedgui)
speedguibackground.Size = UDim2.new(0, 20, 0, 200)
speedguibackground.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedguibackground.Name = "speedguibackground"
speedguibackground.Position = UDim2.new(0.8, 0, 0.1, 0)
speedguibackground.BorderSizePixel = 0
speedguibackground.BackgroundTransparency = 0.4
speedguibackground.BackgroundColor3 = Color3.new(1, 1, 1)

local speedbar = Instance.new("Frame", speedgui)
speedbar.Size = UDim2.new(0, 40, 0, 20)
speedbar.Draggable = true
speedbar.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedbar.Name = "speedbar"
speedbar.Position = UDim2.new(0.786, 0, 0.44, 0)
speedbar.BorderSizePixel = 0
speedbar.BackgroundTransparency = 0.1
speedbar.BackgroundColor3 = Color3.new(0, 0, 0)

local textlabel = Instance.new("TextLabel", speedgui)
textlabel.BackgroundColor3 = Color3.new(1, 1, 1)
textlabel.BackgroundTransparency = 1
textlabel.Size = UDim2.new(0, 200, 0, 50)
textlabel.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
textlabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
textlabel.Text = "Speed Meter"
textlabel.Position = UDim2.new(0.6, 0, 0.2, 0)
textlabel.Font = Enum.Font.SourceSans
textlabel.FontSize = Enum.FontSize.Size14

local speedadd = Instance.new("ImageButton", speedgui)
speedadd.BackgroundColor3 = Color3.new(1, 1, 1)
speedadd.Image = "http://www.roblox.com/asset/?id=13890082"
speedadd.Size = UDim2.new(0, 20, 0, 20)
speedadd.BackgroundTransparency = 1
speedadd.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedadd.Name = "speedadd"
speedadd.Position = UDim2.new(0.7, 0, 0.28, 0)

local speedsubtract = Instance.new("ImageButton", speedgui)
speedsubtract.BackgroundColor3 = Color3.new(1, 1, 1)
speedsubtract.Image = "http://www.roblox.com/asset/?id=57419479"
speedsubtract.Size = UDim2.new(0, 20, 0, 20)
speedsubtract.BackgroundTransparency = 1
speedsubtract.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedsubtract.Name = "speedsubtract"
speedsubtract.Position = UDim2.new(0.733, 0, 0.28, 0)

local planehealthlabel = Instance.new("TextLabel", speedgui)
planehealthlabel.BackgroundColor3 = Color3.new(1, 1, 1)
planehealthlabel.BackgroundTransparency = 1
planehealthlabel.Size = UDim2.new(0, 200, 0, 50)
planehealthlabel.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
planehealthlabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
planehealthlabel.Text = "Plane Health:"..planehealth
planehealthlabel.Position = UDim2.new(0.6, 0, 0.3, 0)
planehealthlabel.Font = Enum.Font.SourceSans
planehealthlabel.Name = "planehealthlabel"
planehealthlabel.FontSize = Enum.FontSize.Size14

local toggledoor = Instance.new("TextLabel", speedgui)
toggledoor.BackgroundColor3 = Color3.new(1, 1, 1)
toggledoor.BackgroundTransparency = 1
toggledoor.Size = UDim2.new(0, 200, 0, 50)
toggledoor.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
toggledoor.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
toggledoor.Text = "Toggle Door (H): Open"

toggledoor.Position = UDim2.new(0.5, 0, 0.35, 0)
toggledoor.Font = Enum.Font.SourceSans
toggledoor.Name = "toggledoor"
toggledoor.FontSize = Enum.FontSize.Size14

local flightreadylabel = Instance.new("TextLabel", speedgui)
flightreadylabel.BackgroundColor3 = Color3.new(1, 1, 1)
flightreadylabel.BackgroundTransparency = 1
flightreadylabel.Size = UDim2.new(0, 200, 0, 50)
flightreadylabel.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
flightreadylabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
flightreadylabel.Text = "Flight Mode(P): Autopilot"

flightreadylabel.Position = UDim2.new(0.5, 0, 0.4, 0)
flightreadylabel.Font = Enum.Font.SourceSans
flightreadylabel.Name = "flightreadylabel"
flightreadylabel.FontSize = Enum.FontSize.Size14

local autointerference = Instance.new("TextLabel", speedgui)
autointerference.BackgroundColor3 = Color3.new(1, 1, 1)
autointerference.BackgroundTransparency = 1
autointerference.Size = UDim2.new(0, 200, 0, 50)
autointerference.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
autointerference.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
autointerference.Text = "Anti Autopilot Interference(K, Disables W and Seats): Off"

autointerference.Position = UDim2.new(0.5, 0, 0.45, 0)
autointerference.Font = Enum.Font.SourceSans
autointerference.Name = "autointerference"
autointerference.FontSize = Enum.FontSize.Size12

local togglewheel = Instance.new("TextLabel", speedgui)
togglewheel.BackgroundColor3 = Color3.new(1, 1, 1)
togglewheel.BackgroundTransparency = 1
togglewheel.Size = UDim2.new(0, 200, 0, 50)
togglewheel.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
togglewheel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
togglewheel.Text = "Toggle Wheels (X): On"

togglewheel.Position = UDim2.new(0.5, 0, 0.5, 0)
togglewheel.Font = Enum.Font.SourceSans
togglewheel.Name = "togglewheel"
togglewheel.FontSize = Enum.FontSize.Size14

local togglelight = Instance.new("TextLabel", speedgui)
togglelight.BackgroundColor3 = Color3.new(1, 1, 1)
togglelight.BackgroundTransparency = 1
togglelight.Size = UDim2.new(0, 200, 0, 50)
togglelight.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
togglelight.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
togglelight.Text = "Toggle Light (L): Off"

togglelight.Position = UDim2.new(0.5, 0, 0.55, 0)
togglelight.Font = Enum.Font.SourceSans
togglelight.Name = "togglelight"
togglelight.FontSize = Enum.FontSize.Size14

--Gui End--

speedadd.MouseButton1Click:connect(function()
	speed = speed + 5
	if speed >= 150 then speed = 150 end
	textlabel.Text = "Speed:"..speed
	print("Speed:"..speed)
	speedbar.Position = UDim2.new(0.786, 0, speedbar.Position.Y.Scale - .01, 0)
end)
speedsubtract.MouseButton1Click:connect(function()
	speed = speed - 5
	if speed <= 5 then speed = 5 end
	textlabel.Text = "Speed:"..speed
	print("Speed:"..speed)
	speedbar.Position = UDim2.new(0.786, 0, speedbar.Position.Y.Scale + .01, 0)
end)

mouse.KeyDown:connect(function(key)
if key == "h" then
	hpressed = hpressed + 1
	if hpressed == 1 then
		toggledoor.Text = "Toggle Door (H): Closed"
		mcarrier.troopdooropen.Transparency = 1
		mcarrier.troopdooropen.CanCollide = false
		mcarrier.troopdoorclosed.Transparency = 0
		mcarrier.troopdoorclosed.CanCollide = true
	end
	if hpressed == 2 then
		hpressed = 0
		toggledoor.Text = "Toggle Door (H): Open"
		mcarrier.troopdoorclosed.Transparency = 1
		mcarrier.troopdoorclosed.CanCollide = false
		mcarrier.troopdooropen.Transparency = 0
		mcarrier.troopdooropen.CanCollide = true
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true and kpressed == 0 then
wpressed = true

bv.MaxForce = Vector3.new(9e20,9e20,9e20)
while wpressed == true do wait(.08)
	if flightready == true then
bv.Velocity = (engine.CFrame.lookVector * speed) + Vector3.new(0,2,0)
air:Play()
	end
	if flightready == false then
		bv.Velocity = (engine.CFrame.lookVector * 30) + Vector3.new(0,0,0)
		air:Stop()
	end
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "w" and kpressed == 0 then
wpressed = false
bv.Velocity = Vector3.new(0,bv.Velocity.y,0)
end
end)

mouse.KeyDown:connect(function(key)
if key == "p" and engineon == true then
	ppressed = ppressed + 1
	if ppressed == 1 then
		flightready = true
		flightreadylabel.Text = "Flight Mode(P): Manual"
	end
	if ppressed == 2 then 
		ppressed = 0
		flightready = false
		flightreadylabel.Text = "Flight Mode(P): Autopilot"
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "k" and engineon == true then
	kpressed = kpressed + 1
	if kpressed ==1 then
		autointerference.Text = "Anti Autopilot Interference(K, Disables W and Seats): On"
		local seats = mcarrier:GetChildren()

for i = 1,#seats do 
	if (seats[i].className == "Seat") then
		if (prev ~= nil)then 
			seats[i].Disabled = true
		end 
		prev = seats[i] 
	end 
end

	end
	if kpressed ==2 then
		kpressed = 0
		autointerference.Text = "Anti Autopilot Interference(K, Disables W and Seats): Off"
		local seats = mcarrier:GetChildren()

for i = 1,#seats do 
	if (seats[i].className == "Seat") then
		if (prev ~= nil)then 
			seats[i].Disabled = false
		end 
		prev = seats[i] 
	end 
end

	end
end
end)


game:GetService("RunService").RenderStepped:connect(function()
if wpressed == true and engineon == true and flightready == true and kpressed == 0 then
	bg.MaxTorque = Vector3.new(9e20,9e20,9e20)
	bg.CFrame = CFrame.new(engine.CFrame.p, mouse.Hit.p)
end
end)

mcarrier.crasherfront.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)
mcarrier.crasherleftwing.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)
mcarrier.crasherrightwing.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)
propeller1.propellercenter.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)
propeller2.propellercenter.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)
propeller3.propellercenter.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)
propeller4.propellercenter.Touched:connect(function(h)
	planehealth = planehealth - math.random(1,5)
	planehealthlabel.Text = "Plane Health:"..planehealth
end)

mouse.KeyDown:connect(function(key)
if key == "l" then
	lpressed = lpressed + 1
	if lpressed == 1 then
togglelight.Text = "Toggle Light (L): On"
		while lpressed == 1 do wait(.4)
			light.Enabled = true
			identifylight.BrickColor = BrickColor.new("Really red")
			wait(.4)
			light.Enabled = false
			identifylight.BrickColor = BrickColor.new("Really black")
		end
	end
	if lpressed == 2 then
		lpressed = 0
		togglelight.Text = "Toggle Light (L): Off"
		light.Enabled = false
		identifylight.BrickColor = BrickColor.new("Really black")
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "x" then
	xpressed = xpressed + 1
	if xpressed == 1 then
		togglewheel.Text = "Toggle Wheels (X): Off"
		mcarrier.Wheelbar1.Transparency = 1
		mcarrier.Wheelbar2.Transparency = 1
		mcarrier.Wheelbar1.CanCollide = false
		mcarrier.Wheelbar2.CanCollide = false
		mcarrier.Wheelline1.Transparency = 1
		mcarrier.Wheelline2.Transparency = 1
		mcarrier.Wheelline3.Transparency = 1
		mcarrier.Wheelline1.CanCollide = false
		mcarrier.Wheelline2.CanCollide = false
		mcarrier.Wheelline3.CanCollide = false
	mcarrier.Wheel1.Transparency = 1
	mcarrier.Wheel2.Transparency = 1
	mcarrier.Wheel3.Transparency = 1
	mcarrier.Wheel4.Transparency = 1
	mcarrier.Wheel5.Transparency = 1
	mcarrier.Wheel6.Transparency = 1
	mcarrier.Wheel7.Transparency = 1
	mcarrier.Wheel8.Transparency = 1
	mcarrier.Wheel9.Transparency = 1
	mcarrier.Wheel10.Transparency = 1
	mcarrier.Wheel1.CanCollide = false
	mcarrier.Wheel2.CanCollide = false
	mcarrier.Wheel3.CanCollide = false
	mcarrier.Wheel4.CanCollide = false
	mcarrier.Wheel5.CanCollide = false
	mcarrier.Wheel6.CanCollide = false
	mcarrier.Wheel7.CanCollide = false
	mcarrier.Wheel8.CanCollide = false
	mcarrier.Wheel9.CanCollide = false
	mcarrier.Wheel10.CanCollide = false
	end
	if xpressed == 2 then
		xpressed = 0
		togglewheel.Text = "Toggle Wheels (X): On"
		mcarrier.Wheelbar1.Transparency = 0
		mcarrier.Wheelbar2.Transparency = 0
		mcarrier.Wheelbar1.CanCollide = true
		mcarrier.Wheelbar2.CanCollide = true
		mcarrier.Wheel1.Transparency = 0
		mcarrier.Wheelline1.Transparency = 0
		mcarrier.Wheelline2.Transparency = 0
		mcarrier.Wheelline3.Transparency = 0
		mcarrier.Wheelline1.CanCollide = true
		mcarrier.Wheelline2.CanCollide = true
		mcarrier.Wheelline3.CanCollide = true
	mcarrier.Wheel2.Transparency = 0
	mcarrier.Wheel3.Transparency = 0
	mcarrier.Wheel4.Transparency = 0
	mcarrier.Wheel5.Transparency = 0
	mcarrier.Wheel6.Transparency = 0
	mcarrier.Wheel7.Transparency = 0
	mcarrier.Wheel8.Transparency = 0
	mcarrier.Wheel9.Transparency = 0
	mcarrier.Wheel10.Transparency = 0
	mcarrier.Wheel1.CanCollide = true
	mcarrier.Wheel2.CanCollide = true
	mcarrier.Wheel3.CanCollide = true
	mcarrier.Wheel4.CanCollide = true
	mcarrier.Wheel5.CanCollide = true
	mcarrier.Wheel6.CanCollide = true
	mcarrier.Wheel7.CanCollide = true
	mcarrier.Wheel8.CanCollide = true
	mcarrier.Wheel9.CanCollide = true
	mcarrier.Wheel10.CanCollide = true
	end
end
end)