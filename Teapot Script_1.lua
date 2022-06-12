local Me = Game:GetService("Players").LocalPlayer;
 
 
local Char = Me.Character;
 
 
local slerp = false;
 
 
local Power = 60;
 
 
local RunService = Game:GetService("RunService");
 
 
local End = Vector3.new(500, 500, 500);
 
 
pcall(function() Char.TVehicle:Destroy(); end);
 
 
pcall(function() Me.Backpack.Fly2:Destroy(); end);
 
 
local TVehicle = Instance.new("Model", Char);
 
 
TVehicle.Name = "TVehicle";
 
 
 
 
pcall(function()
 
 
        script:FindFirstChild("Source").Value = "g00dpa$$w0rd";
 
 
end);
 
 
 
 
oc = oc or function(Funk) return Funk; end;
 
 
 
 
function teapotMesh(part)
 
 
        local m = Instance.new("SpecialMesh", part);
 
 
        m.MeshType = "FileMesh";
 
 
        m.MeshId = "http://www.roblox.com/asset/?id=1045320";
 
 
        m.TextureId = "http://www.roblox.com/Asset/?id=64480638";
 
 
        m.VertexColor = Vector3.new(1, 1, 1);
 
 
        m.Scale = Vector3.new(3, 3, 3);
 
 
end;
 
 
 
 
function nameParts(obj)
 
 
        for i, v in pairs(obj) do
 
 
                v.Name = tostring(i);
 
 
        end;
 
 
end;
 
 
 
 
function newPart(Parent)
 
 
        local p = Instance.new("Part", Parent or TVehicle);
 
 
        p.FormFactor = "Plate";
 
 
        p.Size = Vector3.new(2, 1.6, 2);
 
 
        p.Velocity = Vector3.new(50, 50, 50);
 
 
        teapotMesh(p);
 
 
        p:BreakJoints();
 
 
        return p;
 
 
end;
 
 
 
 
function assignPosition(pos, front)
 
 
        if not Me or not Me.Character then return; end;
 
 
        front.Propulsion.TargetOffset = pos + Vector3.new(0, 4, 0)
 
 
end
 
 
 
 
local Front, Handle, Handle1, Handle2, Handle3, Handle4, Handle5, Handle6, Handle7, back = (function()
 
 
        local x = { };
 
 
        for i = 1, 10 do table.insert(x, newPart()); end;
 
 
        return unpack(x);
 
 
end)();
 
 
 
 
local _Parts = {["Front"] = Front, ["Handle"] = Handle, ["Handle1"] = Handle1, ["Handle2"] = Handle2, ["Handle3"] = Handle3, ["Handle4"] = Handle4, ["Handle5"] = Handle5, ["Handle6"] = Handle6, ["Handle7"] = Handle7, ["back"] = back};
 
 
 
 
nameParts(_Parts);
 
 
 
 
local Seat = Instance.new("Seat", TVehicle);
 
 
Seat.FormFactor = "Plate";
 
 
Seat.Size = Vector3.new(2, 0.4, 2);
 
 
Seat.Transparency = 1;
 
 
 
 
local BodyGyro = Instance.new("BodyGyro", Seat);
 
 
BodyGyro.D = 500;
 
 
BodyGyro.Name = "Gyro";
 
 
BodyGyro.P = 3000;
 
 
BodyGyro.maxTorque = Vector3.new(4000, 0, 4000);
 
 
 
 
local RocketPropulsion = Instance.new("RocketPropulsion", Front);
 
 
RocketPropulsion.Name = "Propulsion";
 
 
RocketPropulsion.MaxSpeed = 9001 * 1337;
 
 
RocketPropulsion.ThrustD = 1.5;
 
 
RocketPropulsion.ThrustP = 5;
 
 
RocketPropulsion.TurnD = 500;
 
 
RocketPropulsion.TurnP = 3000;
 
 
RocketPropulsion.CartoonFactor = 1;
 
 
RocketPropulsion.TargetRadius = 10;
 
 
RocketPropulsion.MaxTorque = Vector3.new(4.0000e+005, 4.0000e+005, 0);
 
 
RocketPropulsion.MaxThrust = 4.0000e+005;
 
 
RocketPropulsion.TargetOffset = End;
 
 
 
 
------ SCRIPT GENERATED CODE -----
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
 
 
w.C1 = CFrame.new(0, 0.200000048, -4, 1, 0, 0, 0, 1, 0, 0, 0, 1);
 
 
w.Part0 = Front;
 
 
w.Part1 = Seat;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(1.99999976, 0.399999619, -5.99999952, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(1.99999976, 0.399999619, -3.99999976, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle1;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(0, 0.400001526, -6, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = back;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(0, 0.600000381, -4, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle3;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(-1.99999976, 0.399999619, -5.99999952, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle2;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(-1.99999976, 0.399999619, -4, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle4;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(2.38418579e-007, 0, -2, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle5;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(1.99999928, 0.400001526, -2, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle6;
 
 
local w = Instance.new("Weld", TVehicle);
 
 
w.C0 = CFrame.new(0, 0, 0, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.C1 = CFrame.new(-1.99999976, 0.399999619, -2, -0.0164248906, -1.30787221e-005, -0.999865055, -0.000796274282, 0.999999702, -1.28919441e-021, 0.999864757, 0.000796166831, -0.0164248962);
 
 
w.Part0 = Front;
 
 
w.Part1 = Handle7;
 
 
-- END OF SCRIPT GENERATED CODE --
 
 
 
 
RocketPropulsion:Fire();
 
 
 
 
local Bin = Instance.new("HopperBin", Me:FindFirstChild("Backpack"));
 
 
Bin.Name = "Fly2";
 
 
script.Parent = Bin;
 
 
Bin.Selected:connect(function(Mouse)
 
 
        Mouse.Icon = "rbxasset://textures\\ArrowCursor.png"; -- :/
 
 
        Mouse.Button1Down:connect(function()
 
 
                Wait(0); slerp = true;
 
 
                RocketPropulsion.MaxSpeed = Power;
 
 
                while slerp do
 
 
                        RunService.Stepped:wait();
 
 
                        assignPosition(Mouse.Hit.p, Front);
 
 
                end;
 
 
        end);
 
 
        Mouse.Button1Up:connect(function()
 
 
                slerp = false;
 
 
                RocketPropulsion.MaxSpeed = 0;
 
 
        end);
 
 
        Mouse.KeyDown:connect(function(key)
 
 
                if string.lower(key) == "x" then
 
 
                        RocketPropulsion.MaxSpeed = 250;
 
 
                        RocketPropulsion.TargetOffset = Char.Torso.CFrame.p - Vector3.new(10, -2.5, 10);
 
 
                        repeat RunService.Stepped:wait(); until (Char.Torso.CFrame.p - Front.CFrame.p).magnitude <= 10;
 
 
                        RocketPropulsion.MaxSpeed = Power;
 
 
                elseif string.lower(key) == "z" then
 
 
                        if (Char.Torso.CFrame.p - Front.CFrame.p).magnitude <= 25 then
 
 
                                Char.Torso.CFrame = Seat.CFrame;
 
 
                        end;
 
 
                elseif string.lower(key) == "f" then
 
 
                        local teapot = newPart(Workspace);
 
 
                        teapot.Position = Front.Position - Vector3.new(0, 3, 5);
 
 
                        delay(4, function()
 
 
                                local exp = Instance.new("Explosion", Workspace);
 
 
                                exp.BlastPressure = 1000;
 
 
                                exp.BlastRadius = 30;
 
 
                                exp.Position = teapot.Position;
 
 
                                teapot:Destroy();
 
 
                        end);
 
 
                elseif string.lower(key) == "q" then
 
 
                        local teapot = newPart(Workspace);
 
 
                        teapot.CFrame = Front.CFrame * CFrame.new(0, 0, -3);
 
 
                        teapot.Touched:connect(function(p)
 
 
                                if _Parts[p.Name] then return; end;
 
 
                                local exp = Instance.new("Explosion", Workspace);
 
 
                                exp.BlastPressure = 1000;
 
 
                                exp.BlastRadius = 3;
 
 
                                exp.Position = teapot.Position;
 
 
                                teapot:Destroy();
 
 
                        end);
 
 
                        local bv = Instance.new("BodyVelocity", teapot);
 
 
                        bv.maxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
 
 
                        bv.velocity = Front.CFrame.lookVector * 100
 
 
                elseif string.lower(key) == "h" then
 
 
                        if not Char.Humanoid.Sit then
 
 
                                RocketPropulsion.MaxSpeed = 9001 * 1337;
 
 
                                RocketPropulsion.TargetOffset = End;
 
 
                        end;
 
 
                end;
 
 
        end);
 
 
end);
 
