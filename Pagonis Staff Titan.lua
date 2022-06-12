--[[
	@FileName:	Pagonis
	@Author: 	iKrypto
	@Date: 		9/25/16
	@Engine: 	Lua 5.1
	@Notes:		
		
	@Changelog:	
		
	
]]

wait(0.003)
--print'starting script...'

local startLoad = tick()
script.Name = "Pagonis"

local Player = game:service("Players").LocalPlayer
repeat wait() until Player.Character ~= nil

-- todo:

local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("BlockMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Part")
o7 = Instance.new("BlockMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("BlockMesh")
o12 = Instance.new("Part")
o13 = Instance.new("BlockMesh")
o14 = Instance.new("Part")
o15 = Instance.new("BlockMesh")
o16 = Instance.new("Part")
o17 = Instance.new("BlockMesh")
o18 = Instance.new("Part")
o19 = Instance.new("BlockMesh")
o20 = Instance.new("Part")
o21 = Instance.new("Part")
o22 = Instance.new("BlockMesh")
o23 = Instance.new("Part")
o24 = Instance.new("Part")
o25 = Instance.new("BlockMesh")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Part")
o29 = Instance.new("BlockMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("BlockMesh")
o34 = Instance.new("Part")
o35 = Instance.new("BlockMesh")
o36 = Instance.new("Part")
o37 = Instance.new("SpecialMesh")
o38 = Instance.new("Part")
o39 = Instance.new("BlockMesh")
o40 = Instance.new("Part")
o41 = Instance.new("BlockMesh")
o42 = Instance.new("Part")
o43 = Instance.new("BlockMesh")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("BlockMesh")
o50 = Instance.new("Part")
o51 = Instance.new("BlockMesh")
o52 = Instance.new("Part")
o53 = Instance.new("SpecialMesh")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("CylinderMesh")
o58 = Instance.new("Part")
o59 = Instance.new("Part")
o60 = Instance.new("BlockMesh")
o61 = Instance.new("Part")
o62 = Instance.new("SpecialMesh")
o63 = Instance.new("Part")
o64 = Instance.new("BlockMesh")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("SpecialMesh")
o69 = Instance.new("Part")
o70 = Instance.new("SpecialMesh")
o71 = Instance.new("Part")
o72 = Instance.new("BlockMesh")
o73 = Instance.new("Part")
o74 = Instance.new("BlockMesh")
o75 = Instance.new("Part")
o76 = Instance.new("BlockMesh")
o77 = Instance.new("Part")
o78 = Instance.new("BlockMesh")
o79 = Instance.new("Part")
o80 = Instance.new("BlockMesh")
o81 = Instance.new("Part")
o82 = Instance.new("BlockMesh")
o83 = Instance.new("Part")
o84 = Instance.new("CylinderMesh")
o85 = Instance.new("Part")
o86 = Instance.new("SpecialMesh")
o87 = Instance.new("Part")
o88 = Instance.new("BlockMesh")
o89 = Instance.new("Part")
o90 = Instance.new("SpecialMesh")
o91 = Instance.new("Part")
o92 = Instance.new("BlockMesh")
o93 = Instance.new("Part")
o94 = Instance.new("BlockMesh")
o95 = Instance.new("Part")
o96 = Instance.new("BlockMesh")
o97 = Instance.new("Part")
o98 = Instance.new("BlockMesh")
o99 = Instance.new("Part")
o100 = Instance.new("Part")
o101 = Instance.new("BlockMesh")
o102 = Instance.new("Part")
o103 = Instance.new("Part")
o104 = Instance.new("BlockMesh")
o105 = Instance.new("Part")
o106 = Instance.new("BlockMesh")
o107 = Instance.new("Part")
o108 = Instance.new("BlockMesh")
o109 = Instance.new("Part")
o110 = Instance.new("CylinderMesh")
o111 = Instance.new("Part")
o112 = Instance.new("BlockMesh")
o113 = Instance.new("Part")
o114 = Instance.new("BlockMesh")
o115 = Instance.new("Part")
o116 = Instance.new("BlockMesh")
o117 = Instance.new("Part")
o118 = Instance.new("BlockMesh")
o119 = Instance.new("Part")
o120 = Instance.new("BlockMesh")
o121 = Instance.new("Part")
o122 = Instance.new("BlockMesh")
o123 = Instance.new("Part")
o124 = Instance.new("BlockMesh")
o125 = Instance.new("Part")
o126 = Instance.new("CylinderMesh")
o127 = Instance.new("Part")
o128 = Instance.new("BlockMesh")
o129 = Instance.new("Part")
o130 = Instance.new("BlockMesh")
o131 = Instance.new("Part")
o132 = Instance.new("CylinderMesh")
o133 = Instance.new("Part")
o134 = Instance.new("CylinderMesh")
o135 = Instance.new("Part")
o136 = Instance.new("CylinderMesh")
o137 = Instance.new("Part")
o138 = Instance.new("BlockMesh")
o139 = Instance.new("Part")
o140 = Instance.new("BlockMesh")
o141 = Instance.new("Part")
o142 = Instance.new("BlockMesh")
o143 = Instance.new("Part")
o144 = Instance.new("BlockMesh")
o145 = Instance.new("Part")
o146 = Instance.new("BlockMesh")
o147 = Instance.new("Part")
o148 = Instance.new("BlockMesh")
o149 = Instance.new("Part")
o150 = Instance.new("BlockMesh")
o151 = Instance.new("Part")
o152 = Instance.new("BlockMesh")
o153 = Instance.new("Part")
o154 = Instance.new("BlockMesh")
o155 = Instance.new("Part")
o156 = Instance.new("BlockMesh")
o157 = Instance.new("Part")
o158 = Instance.new("BlockMesh")
o159 = Instance.new("Part")
o160 = Instance.new("BlockMesh")
o161 = Instance.new("Part")
o162 = Instance.new("BlockMesh")
o163 = Instance.new("Part")
o164 = Instance.new("BlockMesh")
o165 = Instance.new("Part")
o166 = Instance.new("BlockMesh")
o167 = Instance.new("Part")
o168 = Instance.new("BlockMesh")
o169 = Instance.new("Part")
o170 = Instance.new("BlockMesh")
o171 = Instance.new("Part")
o172 = Instance.new("BlockMesh")
o173 = Instance.new("Part")
o174 = Instance.new("BlockMesh")
o175 = Instance.new("Part")
o176 = Instance.new("BlockMesh")
o177 = Instance.new("Part")
o178 = Instance.new("SpecialMesh")
o179 = Instance.new("Part")
o180 = Instance.new("SpecialMesh")
o181 = Instance.new("Part")
o182 = Instance.new("CylinderMesh")
o183 = Instance.new("Part")
o184 = Instance.new("BlockMesh")
o185 = Instance.new("Part")
o186 = Instance.new("BlockMesh")
o187 = Instance.new("Part")
o188 = Instance.new("BlockMesh")
o189 = Instance.new("Part")
o190 = Instance.new("BlockMesh")
o191 = Instance.new("Part")
o192 = Instance.new("CylinderMesh")
o193 = Instance.new("Part")
o194 = Instance.new("BlockMesh")
o195 = Instance.new("Part")
o196 = Instance.new("BlockMesh")
o197 = Instance.new("Part")
o198 = Instance.new("BlockMesh")
o199 = Instance.new("Part")
o200 = Instance.new("BlockMesh")
o201 = Instance.new("Part")
o202 = Instance.new("BlockMesh")
o203 = Instance.new("Part")
o204 = Instance.new("BlockMesh")
o205 = Instance.new("Part")
o206 = Instance.new("CylinderMesh")
o207 = Instance.new("Part")
o208 = Instance.new("BlockMesh")
o209 = Instance.new("Part")
o210 = Instance.new("BlockMesh")
o211 = Instance.new("Part")
o212 = Instance.new("BlockMesh")
o213 = Instance.new("Part")
o214 = Instance.new("BlockMesh")
o215 = Instance.new("Part")
o216 = Instance.new("Part")
o217 = Instance.new("BlockMesh")
o218 = Instance.new("Part")
o219 = Instance.new("BlockMesh")
o220 = Instance.new("Part")
o221 = Instance.new("BlockMesh")
o222 = Instance.new("Part")
o223 = Instance.new("BlockMesh")
o224 = Instance.new("Part")
o225 = Instance.new("Part")
o226 = Instance.new("BlockMesh")
o227 = Instance.new("Part")
o228 = Instance.new("Part")
o229 = Instance.new("BlockMesh")
o230 = Instance.new("Part")
o231 = Instance.new("BlockMesh")
o232 = Instance.new("Part")
o233 = Instance.new("BlockMesh")
o234 = Instance.new("Part")
o235 = Instance.new("CylinderMesh")
o236 = Instance.new("Part")
o237 = Instance.new("BlockMesh")
o238 = Instance.new("Part")
o239 = Instance.new("SpecialMesh")
o240 = Instance.new("Part")
o241 = Instance.new("BlockMesh")
o242 = Instance.new("Part")
o243 = Instance.new("SpecialMesh")
o244 = Instance.new("Part")
o245 = Instance.new("BlockMesh")
o246 = Instance.new("Part")
o247 = Instance.new("BlockMesh")
o248 = Instance.new("WedgePart")
o249 = Instance.new("SpecialMesh")
o250 = Instance.new("WedgePart")
o251 = Instance.new("SpecialMesh")
o252 = Instance.new("WedgePart")
o253 = Instance.new("SpecialMesh")
o254 = Instance.new("WedgePart")
o255 = Instance.new("SpecialMesh")
o256 = Instance.new("WedgePart")
o257 = Instance.new("SpecialMesh")
o258 = Instance.new("WedgePart")
o259 = Instance.new("SpecialMesh")
o260 = Instance.new("WedgePart")
o261 = Instance.new("SpecialMesh")
o262 = Instance.new("WedgePart")
o263 = Instance.new("SpecialMesh")
o264 = Instance.new("WedgePart")
o265 = Instance.new("SpecialMesh")
o266 = Instance.new("WedgePart")
o267 = Instance.new("SpecialMesh")
o268 = Instance.new("WedgePart")
o269 = Instance.new("SpecialMesh")
o270 = Instance.new("WedgePart")
o271 = Instance.new("SpecialMesh")
o272 = Instance.new("WedgePart")
o273 = Instance.new("SpecialMesh")
o274 = Instance.new("WedgePart")
o275 = Instance.new("SpecialMesh")
o276 = Instance.new("WedgePart")
o277 = Instance.new("SpecialMesh")
o278 = Instance.new("WedgePart")
o279 = Instance.new("SpecialMesh")
o280 = Instance.new("Model")
o281 = Instance.new("Part")
o282 = Instance.new("SpecialMesh")
o283 = Instance.new("LocalScript")
o284 = Instance.new("Part")
o285 = Instance.new("SpecialMesh")
o1.Name = "Nethex"
o1.Parent = mas
o2.Name = "Block"
o2.Parent = o1
o2.Material = Enum.Material.Metal
o2.BrickColor = BrickColor.new("Smoky grey")
o2.Position = Vector3.new(-24.8577271, 174.787277, -8.90002441)
o2.Anchored = true
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o2.CFrame = CFrame.new(-24.8577271, 174.787277, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.356863, 0.364706, 0.411765)
o2.Position = Vector3.new(-24.8577271, 174.787277, -8.90002441)
o3.Parent = o2
o3.Scale = Vector3.new(1, 0.163143069, 1)
o4.Name = "Block"
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.BrickColor = BrickColor.new("Black")
o4.Position = Vector3.new(-25.0979614, 173.474228, -8.65979004)
o4.Anchored = true
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o4.CFrame = CFrame.new(-25.0979614, 173.474228, -8.65979004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.105882, 0.164706, 0.207843)
o4.Position = Vector3.new(-25.0979614, 173.474228, -8.65979004)
o5.Parent = o4
o5.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o6.Name = "Block"
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Black")
o6.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o6.Anchored = true
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(0.392673701, 1.4093641, 0.576557934)
o6.CFrame = CFrame.new(-24.8577271, 173.474228, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o6.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o7.Parent = o6
o7.Scale = Vector3.new(0.326286137, 1, 1)
o8.Name = "Block"
o8.Parent = o1
o8.Material = Enum.Material.Neon
o8.BrickColor = BrickColor.new("Bright blue")
o8.Position = Vector3.new(-24.940979, 173.474228, -8.90002441)
o8.Rotation = Vector3.new(0, 90, 0)
o8.Anchored = true
o8.CanCollide = false
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o8.CFrame = CFrame.new(-24.940979, 173.474228, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o8.Position = Vector3.new(-24.940979, 173.474228, -8.90002441)
o9.Parent = o8
o9.Scale = Vector3.new(1, 1, 0.571000755)
o10.Name = "Block"
o10.Parent = o1
o10.Material = Enum.Material.Metal
o10.BrickColor = BrickColor.new("Smoky grey")
o10.Position = Vector3.new(-24.8577271, 172.769165, -8.90002441)
o10.Anchored = true
o10.CanCollide = false
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o10.CFrame = CFrame.new(-24.8577271, 172.769165, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.356863, 0.364706, 0.411765)
o10.Position = Vector3.new(-24.8577271, 172.769165, -8.90002441)
o11.Parent = o10
o11.Scale = Vector3.new(1, 0.163143069, 1)
o12.Name = "Block"
o12.Parent = o1
o12.Material = Enum.Material.Neon
o12.BrickColor = BrickColor.new("Bright blue")
o12.Position = Vector3.new(-24.8609276, 173.474228, -8.98010159)
o12.Anchored = true
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o12.CFrame = CFrame.new(-24.8609276, 173.474228, -8.98010159, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o12.Position = Vector3.new(-24.8609276, 173.474228, -8.98010159)
o13.Parent = o12
o13.Scale = Vector3.new(1, 1, 0.244714648)
o14.Name = "Block"
o14.Parent = o1
o14.Material = Enum.Material.Marble
o14.BrickColor = BrickColor.new("Black")
o14.Position = Vector3.new(-24.8577271, 175.760849, -8.90002441)
o14.Rotation = Vector3.new(0, 90, 0)
o14.Anchored = true
o14.CanCollide = false
o14.FormFactor = Enum.FormFactor.Custom
o14.Size = Vector3.new(1.47342587, 0.392673731, 0.392673671)
o14.CFrame = CFrame.new(-24.8577271, 175.760849, -8.90002441, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.105882, 0.164706, 0.207843)
o14.Position = Vector3.new(-24.8577271, 175.760849, -8.90002441)
o15.Parent = o14
o15.Scale = Vector3.new(1, 0.407857716, 0.815715313)
o16.Name = "Block"
o16.Parent = o1
o16.Material = Enum.Material.Metal
o16.BrickColor = BrickColor.new("Black")
o16.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o16.Rotation = Vector3.new(0, 90, 0)
o16.Anchored = true
o16.CanCollide = false
o16.FormFactor = Enum.FormFactor.Custom
o16.Size = Vector3.new(0.392673701, 1.4093641, 0.576557934)
o16.CFrame = CFrame.new(-24.8577271, 173.474228, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o16.Color = Color3.new(0.105882, 0.164706, 0.207843)
o16.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o17.Parent = o16
o17.Scale = Vector3.new(0.326286137, 1, 1)
o18.Name = "Block"
o18.Parent = o1
o18.Material = Enum.Material.Marble
o18.BrickColor = BrickColor.new("Black")
o18.Position = Vector3.new(-24.8577271, 175.760849, -8.90002441)
o18.Anchored = true
o18.CanCollide = false
o18.FormFactor = Enum.FormFactor.Custom
o18.Size = Vector3.new(1.47342587, 0.392673731, 0.392673671)
o18.CFrame = CFrame.new(-24.8577271, 175.760849, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.105882, 0.164706, 0.207843)
o18.Position = Vector3.new(-24.8577271, 175.760849, -8.90002441)
o19.Parent = o18
o19.Scale = Vector3.new(1, 0.407857716, 0.815715313)
o20.Name = "Block"
o20.Parent = o1
o20.Material = Enum.Material.Metal
o20.BrickColor = BrickColor.new("Smoky grey")
o20.Position = Vector3.new(-24.8609276, 173.474228, -8.90313625)
o20.Rotation = Vector3.new(0, 90, 0)
o20.Anchored = true
o20.FormFactor = Enum.FormFactor.Custom
o20.Size = Vector3.new(0.512495995, 1.28123999, 0.512495935)
o20.CFrame = CFrame.new(-24.8609276, 173.474228, -8.90313625, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.356863, 0.364706, 0.411765)
o20.Position = Vector3.new(-24.8609276, 173.474228, -8.90313625)
o21.Name = "Block"
o21.Parent = o1
o21.Material = Enum.Material.Metal
o21.BrickColor = BrickColor.new("Black")
o21.Position = Vector3.new(-25.0979614, 173.474228, -9.14025784)
o21.Anchored = true
o21.CanCollide = false
o21.FormFactor = Enum.FormFactor.Custom
o21.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o21.CFrame = CFrame.new(-25.0979614, 173.474228, -9.14025784, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.105882, 0.164706, 0.207843)
o21.Position = Vector3.new(-25.0979614, 173.474228, -9.14025784)
o22.Parent = o21
o22.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o23.Name = "Block"
o23.Parent = o1
o23.Material = Enum.Material.Metal
o23.BrickColor = BrickColor.new("Smoky grey")
o23.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o23.Anchored = true
o23.FormFactor = Enum.FormFactor.Custom
o23.Size = Vector3.new(0.512495995, 1.28123999, 0.512495935)
o23.CFrame = CFrame.new(-24.8577271, 173.474228, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.356863, 0.364706, 0.411765)
o23.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o24.Name = "Block"
o24.Parent = o1
o24.Material = Enum.Material.Metal
o24.BrickColor = BrickColor.new("Smoky grey")
o24.Position = Vector3.new(-24.8577271, 174.178574, -8.90002441)
o24.Anchored = true
o24.CanCollide = false
o24.FormFactor = Enum.FormFactor.Custom
o24.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o24.CFrame = CFrame.new(-24.8577271, 174.178574, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.356863, 0.364706, 0.411765)
o24.Position = Vector3.new(-24.8577271, 174.178574, -8.90002441)
o25.Parent = o24
o25.Scale = Vector3.new(1, 0.163143069, 1)
o26.Parent = o1
o26.Material = Enum.Material.Neon
o26.BrickColor = BrickColor.new("Toothpaste")
o26.Transparency = 0.30000001192093
o26.Position = Vector3.new(-24.8577271, 176.513702, -8.90002441)
o26.Rotation = Vector3.new(-180, 0, -180)
o26.Anchored = true
o26.CanCollide = false
o26.FormFactor = Enum.FormFactor.Symmetric
o26.Shape = Enum.PartType.Ball
o26.Size = Vector3.new(1.96336854, 1.96336854, 1.96336854)
o26.CFrame = CFrame.new(-24.8577271, 176.513702, -8.90002441, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0, 1, 1)
o26.Position = Vector3.new(-24.8577271, 176.513702, -8.90002441)
o27.Parent = o26
o27.Scale = Vector3.new(0.358914793, 0.358914793, 0.358914703)
o27.MeshType = Enum.MeshType.Sphere
o28.Name = "Block"
o28.Parent = o1
o28.Material = Enum.Material.Neon
o28.BrickColor = BrickColor.new("Bright blue")
o28.Position = Vector3.new(-24.8577271, 174.242676, -8.90002441)
o28.Anchored = true
o28.CanCollide = false
o28.FormFactor = Enum.FormFactor.Custom
o28.Size = Vector3.new(0.448433995, 0.392673731, 0.448433965)
o28.CFrame = CFrame.new(-24.8577271, 174.242676, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o28.Position = Vector3.new(-24.8577271, 174.242676, -8.90002441)
o29.Parent = o28
o29.Scale = Vector3.new(1, 0.163143069, 1)
o30.Name = "Block"
o30.Parent = o1
o30.Material = Enum.Material.Neon
o30.BrickColor = BrickColor.new("Bright blue")
o30.Position = Vector3.new(-24.8577271, 175.507889, -8.90002441)
o30.Anchored = true
o30.CanCollide = false
o30.FormFactor = Enum.FormFactor.Custom
o30.Size = Vector3.new(0.640620053, 0.392673731, 0.640619934)
o30.CFrame = CFrame.new(-24.8577271, 175.507889, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o30.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o30.Position = Vector3.new(-24.8577271, 175.507889, -8.90002441)
o31.Parent = o30
o31.Scale = Vector3.new(1, 0.244714633, 1)
o32.Name = "Block"
o32.Parent = o1
o32.Material = Enum.Material.Metal
o32.BrickColor = BrickColor.new("Smoky grey")
o32.Position = Vector3.new(-25.1780434, 175.315598, -9.20428371)
o32.Rotation = Vector3.new(-0, 0, -90)
o32.Anchored = true
o32.CanCollide = false
o32.FormFactor = Enum.FormFactor.Custom
o32.Size = Vector3.new(0.864836931, 0.392673731, 0.392673671)
o32.CFrame = CFrame.new(-25.1780434, 175.315598, -9.20428371, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.356863, 0.364706, 0.411765)
o32.Position = Vector3.new(-25.1780434, 175.315598, -9.20428371)
o33.Parent = o32
o33.Scale = Vector3.new(1, 0.163143069, 0.244714648)
o34.Name = "Block"
o34.Parent = o1
o34.Material = Enum.Material.Metal
o34.BrickColor = BrickColor.new("Smoky grey")
o34.Position = Vector3.new(-25.1780434, 175.315598, -8.59570217)
o34.Rotation = Vector3.new(-0, 0, -90)
o34.Anchored = true
o34.CanCollide = false
o34.FormFactor = Enum.FormFactor.Custom
o34.Size = Vector3.new(0.864836931, 0.392673731, 0.392673671)
o34.CFrame = CFrame.new(-25.1780434, 175.315598, -8.59570217, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.356863, 0.364706, 0.411765)
o34.Position = Vector3.new(-25.1780434, 175.315598, -8.59570217)
o35.Parent = o34
o35.Scale = Vector3.new(1, 0.163143069, 0.244714648)
o36.Parent = o1
o36.Material = Enum.Material.Metal
o36.BrickColor = BrickColor.new("Smoky grey")
o36.Position = Vector3.new(-24.8577271, 174.338593, -8.89996243)
o36.Rotation = Vector3.new(-180, 4.78521319e-021, -180)
o36.Anchored = true
o36.CanCollide = false
o36.FormFactor = Enum.FormFactor.Custom
o36.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o36.CFrame = CFrame.new(-24.8577271, 174.338593, -8.89996243, -0.999993026, 8.74225776e-008, 8.35177264e-023, 8.74225705e-008, 0.999995351, 3.82133493e-015, -7.10542736e-015, 1.91066492e-015, -0.999996126)
o36.Color = Color3.new(0.356863, 0.364706, 0.411765)
o36.Position = Vector3.new(-24.8577271, 174.338593, -8.89996243)
o37.Parent = o36
o37.Scale = Vector3.new(1, 0.163143069, 1)
o37.MeshType = Enum.MeshType.Torso
o38.Name = "Block"
o38.Parent = o1
o38.Material = Enum.Material.Metal
o38.BrickColor = BrickColor.new("Smoky grey")
o38.Position = Vector3.new(-24.8577271, 174.274689, -8.90002441)
o38.Anchored = true
o38.CanCollide = false
o38.FormFactor = Enum.FormFactor.Custom
o38.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o38.CFrame = CFrame.new(-24.8577271, 174.274689, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.356863, 0.364706, 0.411765)
o38.Position = Vector3.new(-24.8577271, 174.274689, -8.90002441)
o39.Parent = o38
o39.Scale = Vector3.new(1, 0.163143069, 1)
o40.Name = "Block"
o40.Parent = o1
o40.Material = Enum.Material.Neon
o40.BrickColor = BrickColor.new("Bright blue")
o40.Position = Vector3.new(-24.7488213, 173.474228, -8.90002441)
o40.Rotation = Vector3.new(0, 90, 0)
o40.Anchored = true
o40.CanCollide = false
o40.FormFactor = Enum.FormFactor.Custom
o40.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o40.CFrame = CFrame.new(-24.7488213, 173.474228, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.TopSurface = Enum.SurfaceType.Smooth
o40.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o40.Position = Vector3.new(-24.7488213, 173.474228, -8.90002441)
o41.Parent = o40
o41.Scale = Vector3.new(1, 1, 0.407857716)
o42.Name = "Block"
o42.Parent = o1
o42.Material = Enum.Material.Metal
o42.BrickColor = BrickColor.new("Black")
o42.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o42.Anchored = true
o42.CanCollide = false
o42.FormFactor = Enum.FormFactor.Custom
o42.Size = Vector3.new(0.392673701, 1.4093641, 0.576557934)
o42.CFrame = CFrame.new(-24.8577271, 173.474228, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o42.BottomSurface = Enum.SurfaceType.Smooth
o42.TopSurface = Enum.SurfaceType.Smooth
o42.Color = Color3.new(0.105882, 0.164706, 0.207843)
o42.Position = Vector3.new(-24.8577271, 173.474228, -8.90002441)
o43.Parent = o42
o43.Scale = Vector3.new(0.326286137, 1, 1)
o44.Name = "Block"
o44.Parent = o1
o44.Material = Enum.Material.Metal
o44.BrickColor = BrickColor.new("Smoky grey")
o44.Position = Vector3.new(-24.8577271, 175.699921, -8.90002441)
o44.Anchored = true
o44.CanCollide = false
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.704681993, 0.392673731, 0.704681993)
o44.CFrame = CFrame.new(-24.8577271, 175.699921, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.356863, 0.364706, 0.411765)
o44.Position = Vector3.new(-24.8577271, 175.699921, -8.90002441)
o45.Parent = o44
o45.Scale = Vector3.new(1, 0.244714633, 1)
o46.Name = "Block"
o46.Parent = o1
o46.Material = Enum.Material.Marble
o46.BrickColor = BrickColor.new("Black")
o46.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o46.Rotation = Vector3.new(-0, -90, 0)
o46.Anchored = true
o46.CanCollide = false
o46.FormFactor = Enum.FormFactor.Custom
o46.Size = Vector3.new(0.392673701, 1.15311623, 0.640619934)
o46.CFrame = CFrame.new(-24.8577271, 171.263931, -8.90002441, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o46.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o47.Parent = o46
o47.Scale = Vector3.new(0.489429265, 1, 1)
o48.Name = "Block"
o48.Parent = o1
o48.Material = Enum.Material.Neon
o48.BrickColor = BrickColor.new("Bright blue")
o48.Position = Vector3.new(-24.8609276, 173.474228, -8.98010159)
o48.Anchored = true
o48.CanCollide = false
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o48.CFrame = CFrame.new(-24.8609276, 173.474228, -8.98010159, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.TopSurface = Enum.SurfaceType.Smooth
o48.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o48.Position = Vector3.new(-24.8609276, 173.474228, -8.98010159)
o49.Parent = o48
o49.Scale = Vector3.new(1, 1, 0.571000755)
o50.Name = "Block"
o50.Parent = o1
o50.Material = Enum.Material.Marble
o50.BrickColor = BrickColor.new("Black")
o50.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o50.Anchored = true
o50.CanCollide = false
o50.FormFactor = Enum.FormFactor.Custom
o50.Size = Vector3.new(0.392673701, 1.15311623, 0.640619934)
o50.CFrame = CFrame.new(-24.8577271, 171.263931, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.105882, 0.164706, 0.207843)
o50.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o51.Parent = o50
o51.Scale = Vector3.new(0.489429265, 1, 1)
o52.Parent = o1
o52.Material = Enum.Material.Metal
o52.BrickColor = BrickColor.new("Black")
o52.Position = Vector3.new(-24.8577271, 169.97963, -8.90002441)
o52.Rotation = Vector3.new(-180, 0, 5.00895612e-006)
o52.Anchored = true
o52.CanCollide = false
o52.FormFactor = Enum.FormFactor.Symmetric
o52.Shape = Enum.PartType.Ball
o52.Size = Vector3.new(1.96336854, 1.96336854, 1.96336854)
o52.CFrame = CFrame.new(-24.8577271, 169.97963, -8.90002441, 1, -8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, -1)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.TopSurface = Enum.SurfaceType.Smooth
o52.Color = Color3.new(0.105882, 0.164706, 0.207843)
o52.Position = Vector3.new(-24.8577271, 169.97963, -8.90002441)
o53.Parent = o52
o53.Scale = Vector3.new(0.326286167, 0.326286137, 0.326286227)
o53.MeshType = Enum.MeshType.Sphere
o54.Name = "Block"
o54.Parent = o1
o54.Material = Enum.Material.Neon
o54.BrickColor = BrickColor.new("Bright blue")
o54.Position = Vector3.new(-24.8609276, 173.474228, -8.81994629)
o54.Anchored = true
o54.CanCollide = false
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o54.CFrame = CFrame.new(-24.8609276, 173.474228, -8.81994629, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.TopSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o54.Position = Vector3.new(-24.8609276, 173.474228, -8.81994629)
o55.Parent = o54
o55.Scale = Vector3.new(1, 1, 0.244714648)
o56.Name = "Circle"
o56.Parent = o1
o56.Material = Enum.Material.Metal
o56.BrickColor = BrickColor.new("Toothpaste")
o56.Reflectance = 0.30000001192093
o56.Position = Vector3.new(-24.8577271, 168.621643, -8.90002441)
o56.Anchored = true
o56.CanCollide = false
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(0.832805932, 0.392673731, 0.640619934)
o56.CFrame = CFrame.new(-24.8577271, 168.621643, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Color = Color3.new(0, 1, 1)
o56.Position = Vector3.new(-24.8577271, 168.621643, -8.90002441)
o57.Parent = o56
o57.Scale = Vector3.new(1, 0.244714633, 1)
o58.Name = "Block"
o58.Parent = o1
o58.Material = Enum.Material.Metal
o58.BrickColor = BrickColor.new("Smoky grey")
o58.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o58.Anchored = true
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(0.512495995, 1.47342587, 0.512495935)
o58.CFrame = CFrame.new(-24.8577271, 171.263931, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.356863, 0.364706, 0.411765)
o58.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o59.Name = "Block"
o59.Parent = o1
o59.Material = Enum.Material.Neon
o59.BrickColor = BrickColor.new("Bright blue")
o59.Position = Vector3.new(-24.8577271, 175.315598, -8.90002441)
o59.Anchored = true
o59.CanCollide = false
o59.FormFactor = Enum.FormFactor.Custom
o59.Size = Vector3.new(0.640620053, 0.392673731, 0.640619934)
o59.CFrame = CFrame.new(-24.8577271, 175.315598, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.TopSurface = Enum.SurfaceType.Smooth
o59.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o59.Position = Vector3.new(-24.8577271, 175.315598, -8.90002441)
o60.Parent = o59
o60.Scale = Vector3.new(1, 0.244714633, 1)
o61.Parent = o1
o61.Material = Enum.Material.Metal
o61.BrickColor = BrickColor.new("Smoky grey")
o61.Position = Vector3.new(-24.8577271, 172.609009, -8.89996243)
o61.Rotation = Vector3.new(97.7674789, 89.8405151, 82.2325439)
o61.Anchored = true
o61.CanCollide = false
o61.FormFactor = Enum.FormFactor.Custom
o61.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o61.CFrame = CFrame.new(-24.8577271, 172.609009, -8.89996243, 1.19247963e-008, -8.74223716e-008, 0.999996126, -8.74225705e-008, -0.999995351, -8.74224426e-008, 0.999993026, -8.74225776e-008, -1.19248345e-008)
o61.Color = Color3.new(0.356863, 0.364706, 0.411765)
o61.Position = Vector3.new(-24.8577271, 172.609009, -8.89996243)
o62.Parent = o61
o62.Scale = Vector3.new(1, 0.163143069, 1)
o62.MeshType = Enum.MeshType.Torso
o63.Name = "Block"
o63.Parent = o1
o63.Material = Enum.Material.Metal
o63.BrickColor = BrickColor.new("Smoky grey")
o63.Position = Vector3.new(-24.8577271, 172.673126, -8.90002441)
o63.Anchored = true
o63.CanCollide = false
o63.FormFactor = Enum.FormFactor.Custom
o63.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o63.CFrame = CFrame.new(-24.8577271, 172.673126, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o63.BottomSurface = Enum.SurfaceType.Smooth
o63.TopSurface = Enum.SurfaceType.Smooth
o63.Color = Color3.new(0.356863, 0.364706, 0.411765)
o63.Position = Vector3.new(-24.8577271, 172.673126, -8.90002441)
o64.Parent = o63
o64.Scale = Vector3.new(1, 0.163143069, 1)
o65.Name = "Block"
o65.Parent = o1
o65.Material = Enum.Material.Neon
o65.BrickColor = BrickColor.new("Bright blue")
o65.Position = Vector3.new(-24.940979, 173.474228, -8.90002441)
o65.Rotation = Vector3.new(0, 90, 0)
o65.Anchored = true
o65.CanCollide = false
o65.FormFactor = Enum.FormFactor.Custom
o65.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o65.CFrame = CFrame.new(-24.940979, 173.474228, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.TopSurface = Enum.SurfaceType.Smooth
o65.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o65.Position = Vector3.new(-24.940979, 173.474228, -8.90002441)
o66.Parent = o65
o66.Scale = Vector3.new(1, 1, 0.244714648)
o67.Parent = o1
o67.Material = Enum.Material.Neon
o67.BrickColor = BrickColor.new("Bright blue")
o67.Transparency = 0.30000001192093
o67.Position = Vector3.new(-24.8577271, 176.513702, -8.90002441)
o67.Rotation = Vector3.new(-180, 0, -180)
o67.Anchored = true
o67.CanCollide = false
o67.FormFactor = Enum.FormFactor.Symmetric
o67.Shape = Enum.PartType.Ball
o67.Size = Vector3.new(1.96336854, 1.96336854, 1.96336854)
o67.CFrame = CFrame.new(-24.8577271, 176.513702, -8.90002441, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o67.BottomSurface = Enum.SurfaceType.Smooth
o67.TopSurface = Enum.SurfaceType.Smooth
o67.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o67.Position = Vector3.new(-24.8577271, 176.513702, -8.90002441)
o68.Parent = o67
o68.Scale = Vector3.new(0.22840032, 0.228400305, 0.228400305)
o68.MeshType = Enum.MeshType.Sphere
o69.Parent = o1
o69.Material = Enum.Material.Metal
o69.BrickColor = BrickColor.new("Smoky grey")
o69.Position = Vector3.new(-24.8577271, 172.609009, -8.89996243)
o69.Rotation = Vector3.new(180, -2.3926112e-020, 1.00179486e-005)
o69.Anchored = true
o69.CanCollide = false
o69.FormFactor = Enum.FormFactor.Custom
o69.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o69.CFrame = CFrame.new(-24.8577271, 172.609009, -8.89996243, 0.999993026, -1.74844956e-007, -4.1758944e-022, -1.74844729e-007, -0.999995351, -3.82133493e-015, -7.10542736e-015, 1.91066492e-015, -0.999996126)
o69.Color = Color3.new(0.356863, 0.364706, 0.411765)
o69.Position = Vector3.new(-24.8577271, 172.609009, -8.89996243)
o70.Parent = o69
o70.Scale = Vector3.new(1, 0.163143069, 1)
o70.MeshType = Enum.MeshType.Torso
o71.Name = "Block"
o71.Parent = o1
o71.Material = Enum.Material.Metal
o71.BrickColor = BrickColor.new("Smoky grey")
o71.Position = Vector3.new(-24.8577271, 174.931427, -8.90002441)
o71.Anchored = true
o71.CanCollide = false
o71.FormFactor = Enum.FormFactor.Custom
o71.Size = Vector3.new(0.704681993, 0.392673731, 0.704681993)
o71.CFrame = CFrame.new(-24.8577271, 174.931427, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.TopSurface = Enum.SurfaceType.Smooth
o71.Color = Color3.new(0.356863, 0.364706, 0.411765)
o71.Position = Vector3.new(-24.8577271, 174.931427, -8.90002441)
o72.Parent = o71
o72.Scale = Vector3.new(1, 0.244714633, 1)
o73.Name = "Block"
o73.Parent = o1
o73.Material = Enum.Material.Metal
o73.BrickColor = BrickColor.new("Black")
o73.Position = Vector3.new(-24.8577271, 172.833435, -8.90002441)
o73.Anchored = true
o73.CanCollide = false
o73.FormFactor = Enum.FormFactor.Custom
o73.Size = Vector3.new(0.576557994, 0.392673731, 0.576557934)
o73.CFrame = CFrame.new(-24.8577271, 172.833435, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o73.BottomSurface = Enum.SurfaceType.Smooth
o73.TopSurface = Enum.SurfaceType.Smooth
o73.Color = Color3.new(0.105882, 0.164706, 0.207843)
o73.Position = Vector3.new(-24.8577271, 172.833435, -8.90002441)
o74.Parent = o73
o74.Scale = Vector3.new(1, 0.326286137, 1)
o75.Name = "Block"
o75.Parent = o1
o75.Material = Enum.Material.Metal
o75.BrickColor = BrickColor.new("Smoky grey")
o75.Position = Vector3.new(-24.8577271, 174.882996, -8.90002441)
o75.Anchored = true
o75.CanCollide = false
o75.FormFactor = Enum.FormFactor.Custom
o75.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o75.CFrame = CFrame.new(-24.8577271, 174.882996, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o75.BottomSurface = Enum.SurfaceType.Smooth
o75.TopSurface = Enum.SurfaceType.Smooth
o75.Color = Color3.new(0.356863, 0.364706, 0.411765)
o75.Position = Vector3.new(-24.8577271, 174.882996, -8.90002441)
o76.Parent = o75
o76.Scale = Vector3.new(1, 0.163143069, 1)
o77.Name = "Block"
o77.Parent = o1
o77.Material = Enum.Material.Neon
o77.BrickColor = BrickColor.new("Bright blue")
o77.Position = Vector3.new(-24.8577271, 172.73735, -8.90002441)
o77.Anchored = true
o77.CanCollide = false
o77.FormFactor = Enum.FormFactor.Custom
o77.Size = Vector3.new(0.448433995, 0.392673731, 0.448433965)
o77.CFrame = CFrame.new(-24.8577271, 172.73735, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o77.BottomSurface = Enum.SurfaceType.Smooth
o77.TopSurface = Enum.SurfaceType.Smooth
o77.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o77.Position = Vector3.new(-24.8577271, 172.73735, -8.90002441)
o78.Parent = o77
o78.Scale = Vector3.new(1, 0.163143069, 1)
o79.Name = "Block"
o79.Parent = o1
o79.Material = Enum.Material.Neon
o79.BrickColor = BrickColor.new("Bright blue")
o79.Position = Vector3.new(-24.8609276, 173.474228, -8.81994629)
o79.Anchored = true
o79.CanCollide = false
o79.FormFactor = Enum.FormFactor.Custom
o79.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o79.CFrame = CFrame.new(-24.8609276, 173.474228, -8.81994629, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o79.BottomSurface = Enum.SurfaceType.Smooth
o79.TopSurface = Enum.SurfaceType.Smooth
o79.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o79.Position = Vector3.new(-24.8609276, 173.474228, -8.81994629)
o80.Parent = o79
o80.Scale = Vector3.new(1, 1, 0.571000755)
o81.Name = "Block"
o81.Parent = o1
o81.Material = Enum.Material.Metal
o81.BrickColor = BrickColor.new("Black")
o81.Position = Vector3.new(-24.8577271, 174.114609, -8.90002441)
o81.Anchored = true
o81.CanCollide = false
o81.FormFactor = Enum.FormFactor.Custom
o81.Size = Vector3.new(0.576557994, 0.392673731, 0.576557934)
o81.CFrame = CFrame.new(-24.8577271, 174.114609, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o81.BottomSurface = Enum.SurfaceType.Smooth
o81.TopSurface = Enum.SurfaceType.Smooth
o81.Color = Color3.new(0.105882, 0.164706, 0.207843)
o81.Position = Vector3.new(-24.8577271, 174.114609, -8.90002441)
o82.Parent = o81
o82.Scale = Vector3.new(1, 0.326286137, 1)
o83.Name = "Circle"
o83.Parent = o1
o83.Material = Enum.Material.Metal
o83.BrickColor = BrickColor.new("Toothpaste")
o83.Reflectance = 0.30000001192093
o83.Position = Vector3.new(-24.8577271, 169.902557, -8.90002441)
o83.Anchored = true
o83.CanCollide = false
o83.FormFactor = Enum.FormFactor.Custom
o83.Size = Vector3.new(0.832805932, 0.392673731, 0.640619934)
o83.CFrame = CFrame.new(-24.8577271, 169.902557, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o83.BottomSurface = Enum.SurfaceType.Smooth
o83.TopSurface = Enum.SurfaceType.Smooth
o83.Color = Color3.new(0, 1, 1)
o83.Position = Vector3.new(-24.8577271, 169.902557, -8.90002441)
o84.Parent = o83
o84.Scale = Vector3.new(1, 0.244714633, 1)
o85.Parent = o1
o85.Material = Enum.Material.Metal
o85.BrickColor = BrickColor.new("Black")
o85.Position = Vector3.new(-24.8577271, 168.377853, -8.90002441)
o85.Rotation = Vector3.new(-180, 0, 5.00895612e-006)
o85.Anchored = true
o85.CanCollide = false
o85.FormFactor = Enum.FormFactor.Symmetric
o85.Shape = Enum.PartType.Ball
o85.Size = Vector3.new(1.96336854, 1.96336854, 1.96336854)
o85.CFrame = CFrame.new(-24.8577271, 168.377853, -8.90002441, 1, -8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, -1)
o85.BottomSurface = Enum.SurfaceType.Smooth
o85.TopSurface = Enum.SurfaceType.Smooth
o85.Color = Color3.new(0.105882, 0.164706, 0.207843)
o85.Position = Vector3.new(-24.8577271, 168.377853, -8.90002441)
o86.Parent = o85
o86.Scale = Vector3.new(0.326286167, 0.326286137, 0.326286227)
o86.MeshType = Enum.MeshType.Sphere
o87.Name = "Block"
o87.Parent = o1
o87.Material = Enum.Material.Marble
o87.BrickColor = BrickColor.new("Black")
o87.Position = Vector3.new(-24.8577271, 175.760849, -8.90002441)
o87.Anchored = true
o87.CanCollide = false
o87.FormFactor = Enum.FormFactor.Custom
o87.Size = Vector3.new(0.832805932, 0.392673731, 0.832805753)
o87.CFrame = CFrame.new(-24.8577271, 175.760849, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o87.BottomSurface = Enum.SurfaceType.Smooth
o87.TopSurface = Enum.SurfaceType.Smooth
o87.Color = Color3.new(0.105882, 0.164706, 0.207843)
o87.Position = Vector3.new(-24.8577271, 175.760849, -8.90002441)
o88.Parent = o87
o88.Scale = Vector3.new(1, 0.407857716, 1)
o89.Parent = o1
o89.Material = Enum.Material.Metal
o89.BrickColor = BrickColor.new("Smoky grey")
o89.Position = Vector3.new(-24.8577271, 174.338593, -8.89996243)
o89.Rotation = Vector3.new(-179.999969, -89.8405151, -180)
o89.Anchored = true
o89.CanCollide = false
o89.FormFactor = Enum.FormFactor.Custom
o89.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o89.CFrame = CFrame.new(-24.8577271, 174.338593, -8.89996243, -1.19248043e-008, 0, -0.999996126, 8.74225705e-008, 0.999995351, 7.10542736e-015, 0.999993026, -8.74225776e-008, -1.19248345e-008)
o89.Color = Color3.new(0.356863, 0.364706, 0.411765)
o89.Position = Vector3.new(-24.8577271, 174.338593, -8.89996243)
o90.Parent = o89
o90.Scale = Vector3.new(1, 0.163143069, 1)
o90.MeshType = Enum.MeshType.Torso
o91.Name = "Block"
o91.Parent = o1
o91.Material = Enum.Material.Metal
o91.BrickColor = BrickColor.new("Bright blue")
o91.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o91.Anchored = true
o91.CanCollide = false
o91.FormFactor = Enum.FormFactor.Custom
o91.Size = Vector3.new(0.392673701, 1.28123999, 0.576557934)
o91.CFrame = CFrame.new(-24.8577271, 171.263931, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o91.BottomSurface = Enum.SurfaceType.Smooth
o91.TopSurface = Enum.SurfaceType.Smooth
o91.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o91.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o92.Parent = o91
o92.Scale = Vector3.new(0.815715492, 1, 1)
o93.Name = "Block"
o93.Parent = o1
o93.Material = Enum.Material.Metal
o93.BrickColor = BrickColor.new("Black")
o93.Position = Vector3.new(-24.617485, 173.474228, -9.14025784)
o93.Anchored = true
o93.CanCollide = false
o93.FormFactor = Enum.FormFactor.Custom
o93.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o93.CFrame = CFrame.new(-24.617485, 173.474228, -9.14025784, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o93.BottomSurface = Enum.SurfaceType.Smooth
o93.TopSurface = Enum.SurfaceType.Smooth
o93.Color = Color3.new(0.105882, 0.164706, 0.207843)
o93.Position = Vector3.new(-24.617485, 173.474228, -9.14025784)
o94.Parent = o93
o94.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o95.Name = "Block"
o95.Parent = o1
o95.Material = Enum.Material.Neon
o95.BrickColor = BrickColor.new("Bright blue")
o95.Position = Vector3.new(-24.8577271, 175.123505, -8.90002441)
o95.Anchored = true
o95.CanCollide = false
o95.FormFactor = Enum.FormFactor.Custom
o95.Size = Vector3.new(0.640620053, 0.392673731, 0.640619934)
o95.CFrame = CFrame.new(-24.8577271, 175.123505, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o95.BottomSurface = Enum.SurfaceType.Smooth
o95.TopSurface = Enum.SurfaceType.Smooth
o95.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o95.Position = Vector3.new(-24.8577271, 175.123505, -8.90002441)
o96.Parent = o95
o96.Scale = Vector3.new(1, 0.244714633, 1)
o97.Name = "Block"
o97.Parent = o1
o97.Material = Enum.Material.Metal
o97.BrickColor = BrickColor.new("Bright blue")
o97.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o97.Rotation = Vector3.new(0, 90, 0)
o97.Anchored = true
o97.CanCollide = false
o97.FormFactor = Enum.FormFactor.Custom
o97.Size = Vector3.new(0.392673701, 1.28123999, 0.576557934)
o97.CFrame = CFrame.new(-24.8577271, 171.263931, -8.90002441, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
o97.BottomSurface = Enum.SurfaceType.Smooth
o97.TopSurface = Enum.SurfaceType.Smooth
o97.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o97.Position = Vector3.new(-24.8577271, 171.263931, -8.90002441)
o98.Parent = o97
o98.Scale = Vector3.new(0.815715492, 1, 1)
o99.Name = "Block"
o99.Parent = o1
o99.Material = Enum.Material.Metal
o99.BrickColor = BrickColor.new("Really black")
o99.Position = Vector3.new(-24.8577271, 175.299789, -8.90002441)
o99.Anchored = true
o99.FormFactor = Enum.FormFactor.Custom
o99.Size = Vector3.new(0.576557994, 0.704682052, 0.576557934)
o99.CFrame = CFrame.new(-24.8577271, 175.299789, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o99.BottomSurface = Enum.SurfaceType.Smooth
o99.TopSurface = Enum.SurfaceType.Smooth
o99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o99.Position = Vector3.new(-24.8577271, 175.299789, -8.90002441)
o100.Name = "Block"
o100.Parent = o1
o100.Material = Enum.Material.Metal
o100.BrickColor = BrickColor.new("Bright blue")
o100.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o100.Rotation = Vector3.new(0, 90, 0)
o100.Anchored = true
o100.CanCollide = false
o100.FormFactor = Enum.FormFactor.Custom
o100.Size = Vector3.new(0.392673701, 1.28123999, 0.576557934)
o100.CFrame = CFrame.new(-24.8577271, 167.132004, -8.90002441, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
o100.BottomSurface = Enum.SurfaceType.Smooth
o100.TopSurface = Enum.SurfaceType.Smooth
o100.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o100.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o101.Parent = o100
o101.Scale = Vector3.new(0.815715492, 1, 1)
o102.Name = "Block"
o102.Parent = o1
o102.Material = Enum.Material.Neon
o102.BrickColor = BrickColor.new("Toothpaste")
o102.Position = Vector3.new(-24.8577271, 175.203476, -8.90002441)
o102.Anchored = true
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.448433995, 0.768743992, 0.448433965)
o102.CFrame = CFrame.new(-24.8577271, 175.203476, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o102.BottomSurface = Enum.SurfaceType.Smooth
o102.TopSurface = Enum.SurfaceType.Smooth
o102.Color = Color3.new(0, 1, 1)
o102.Position = Vector3.new(-24.8577271, 175.203476, -8.90002441)
o103.Name = "Block"
o103.Parent = o1
o103.Material = Enum.Material.Neon
o103.BrickColor = BrickColor.new("Bright blue")
o103.Position = Vector3.new(-24.7462463, 169.221542, -9.20495605)
o103.Rotation = Vector3.new(-180, 5.00895612e-006, -5.00895612e-006)
o103.Anchored = true
o103.CanCollide = false
o103.FormFactor = Enum.FormFactor.Custom
o103.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o103.CFrame = CFrame.new(-24.7462463, 169.221542, -9.20495605, 1, 8.74227766e-008, 8.74227766e-008, 8.74227766e-008, -1, 0, 8.74227766e-008, 7.64274186e-015, -1)
o103.BottomSurface = Enum.SurfaceType.Smooth
o103.TopSurface = Enum.SurfaceType.Smooth
o103.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o103.Position = Vector3.new(-24.7462463, 169.221542, -9.20495605)
o104.Parent = o103
o104.Scale = Vector3.new(0.039154347, 0.156617373, 0.0978858471)
o105.Name = "Block"
o105.Parent = o1
o105.Material = Enum.Material.Neon
o105.BrickColor = BrickColor.new("Bright blue")
o105.Transparency = 1.1920929132714e-008
o105.Position = Vector3.new(-24.8830681, 169.264694, -9.20495605)
o105.Rotation = Vector3.new(-180, 5.00895612e-006, 150.000504)
o105.Anchored = true
o105.CanCollide = false
o105.FormFactor = Enum.FormFactor.Custom
o105.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o105.CFrame = CFrame.new(-24.8830681, 169.264694, -9.20495605, -0.866029859, -0.499992371, 8.74227766e-008, -0.499992371, 0.866029859, 0, -7.57107372e-008, -4.37107204e-008, -1)
o105.BottomSurface = Enum.SurfaceType.Smooth
o105.TopSurface = Enum.SurfaceType.Smooth
o105.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o105.Position = Vector3.new(-24.8830681, 169.264694, -9.20495605)
o106.Parent = o105
o106.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o107.Name = "Block"
o107.Parent = o1
o107.Material = Enum.Material.Neon
o107.BrickColor = BrickColor.new("Bright blue")
o107.Transparency = 1.1920929132714e-008
o107.Position = Vector3.new(-24.8323784, 169.264694, -9.20495605)
o107.Rotation = Vector3.new(-180, 5.00895612e-006, -150)
o107.Anchored = true
o107.CanCollide = false
o107.FormFactor = Enum.FormFactor.Custom
o107.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o107.CFrame = CFrame.new(-24.8323784, 169.264694, -9.20495605, -0.86602813, 0.500001609, 8.74227766e-008, 0.500001609, 0.86602813, 0, -7.57105809e-008, 4.37115304e-008, -1)
o107.BottomSurface = Enum.SurfaceType.Smooth
o107.TopSurface = Enum.SurfaceType.Smooth
o107.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o107.Position = Vector3.new(-24.8323784, 169.264694, -9.20495605)
o108.Parent = o107
o108.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o109.Name = "Shaft"
o109.Parent = o1
o109.Material = Enum.Material.Metal
o109.BrickColor = BrickColor.new("Really black")
o109.Reflectance = 0.30000001192093
o109.Position = Vector3.new(-24.8577271, 169.149918, -8.90002441)
o109.Anchored = true
o109.FormFactor = Enum.FormFactor.Custom
o109.Size = Vector3.new(0.448433995, 4.42027855, 0.512495935)
o109.CFrame = CFrame.new(-24.8577271, 169.149918, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o109.BottomSurface = Enum.SurfaceType.Smooth
o109.TopSurface = Enum.SurfaceType.Smooth
o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o109.Position = Vector3.new(-24.8577271, 169.149918, -8.90002441)
o110.Parent = o109
o111.Name = "Block"
o111.Parent = o1
o111.Material = Enum.Material.Neon
o111.BrickColor = BrickColor.new("Bright blue")
o111.Transparency = 1.1920929132714e-008
o111.Position = Vector3.new(-24.8070068, 169.220993, -9.20495605)
o111.Rotation = Vector3.new(-180, 5.00895612e-006, -90)
o111.Anchored = true
o111.CanCollide = false
o111.FormFactor = Enum.FormFactor.Custom
o111.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o111.CFrame = CFrame.new(-24.8070068, 169.220993, -9.20495605, 7.45057491e-008, 0.999999106, 8.74227766e-008, 0.999999106, -7.45057491e-008, 0, 6.51349956e-015, 8.74226984e-008, -1)
o111.BottomSurface = Enum.SurfaceType.Smooth
o111.TopSurface = Enum.SurfaceType.Smooth
o111.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o111.Position = Vector3.new(-24.8070068, 169.220993, -9.20495605)
o112.Parent = o111
o112.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o113.Name = "Block"
o113.Parent = o1
o113.Material = Enum.Material.Neon
o113.BrickColor = BrickColor.new("Bright blue")
o113.Transparency = 1.1920929132714e-008
o113.Position = Vector3.new(-24.8218613, 169.25679, -9.20495605)
o113.Rotation = Vector3.new(-180, 5.00895612e-006, -135)
o113.Anchored = true
o113.CanCollide = false
o113.FormFactor = Enum.FormFactor.Custom
o113.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o113.CFrame = CFrame.new(-24.8218613, 169.25679, -9.20495605, -0.707106769, 0.707106829, 8.74227766e-008, 0.707106829, 0.707106769, 0, -6.18172393e-008, 6.18172393e-008, -1)
o113.BottomSurface = Enum.SurfaceType.Smooth
o113.TopSurface = Enum.SurfaceType.Smooth
o113.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o113.Position = Vector3.new(-24.8218613, 169.25679, -9.20495605)
o114.Parent = o113
o114.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o115.Name = "Block"
o115.Parent = o1
o115.Material = Enum.Material.Neon
o115.BrickColor = BrickColor.new("Bright blue")
o115.Transparency = 1.1920929132714e-008
o115.Position = Vector3.new(-24.8446007, 169.171921, -9.20495605)
o115.Rotation = Vector3.new(-180, 5.00895612e-006, -14.9999952)
o115.Anchored = true
o115.CanCollide = false
o115.FormFactor = Enum.FormFactor.Custom
o115.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o115.CFrame = CFrame.new(-24.8446007, 169.171921, -9.20495605, 0.965925813, 0.258818954, 8.74227766e-008, 0.258818954, -0.965925813, 0, 8.44439185e-008, 2.26266721e-008, -1)
o115.BottomSurface = Enum.SurfaceType.Smooth
o115.TopSurface = Enum.SurfaceType.Smooth
o115.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o115.Position = Vector3.new(-24.8446007, 169.171921, -9.20495605)
o116.Parent = o115
o116.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o117.Name = "Block"
o117.Parent = o1
o117.Material = Enum.Material.Neon
o117.BrickColor = BrickColor.new("Bright blue")
o117.Transparency = 1.1920929132714e-008
o117.Position = Vector3.new(-24.8138046, 169.246429, -9.20495605)
o117.Rotation = Vector3.new(-180, 5.00895612e-006, -119.999992)
o117.Anchored = true
o117.CanCollide = false
o117.FormFactor = Enum.FormFactor.Custom
o117.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o117.CFrame = CFrame.new(-24.8138046, 169.246429, -9.20495605, -0.499999911, 0.866025448, 8.74227766e-008, 0.866025448, 0.499999911, 0, -4.37113847e-008, 7.57103464e-008, -1)
o117.BottomSurface = Enum.SurfaceType.Smooth
o117.TopSurface = Enum.SurfaceType.Smooth
o117.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o117.Position = Vector3.new(-24.8138046, 169.246429, -9.20495605)
o118.Parent = o117
o118.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o119.Name = "Block"
o119.Parent = o1
o119.Material = Enum.Material.Neon
o119.BrickColor = BrickColor.new("Bright blue")
o119.Transparency = 1.1920929132714e-008
o119.Position = Vector3.new(-24.8708382, 169.171921, -9.20495605)
o119.Rotation = Vector3.new(-180, 5.00895612e-006, 15.0000076)
o119.Anchored = true
o119.CanCollide = false
o119.FormFactor = Enum.FormFactor.Custom
o119.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o119.CFrame = CFrame.new(-24.8708382, 169.171921, -9.20495605, 0.965922594, -0.258818299, 8.74227766e-008, -0.258818299, -0.965922594, 0, 8.44436343e-008, -2.26266135e-008, -1)
o119.BottomSurface = Enum.SurfaceType.Smooth
o119.TopSurface = Enum.SurfaceType.Smooth
o119.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o119.Position = Vector3.new(-24.8708382, 169.171921, -9.20495605)
o120.Parent = o119
o120.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o121.Name = "Block"
o121.Parent = o1
o121.Material = Enum.Material.Neon
o121.BrickColor = BrickColor.new("Bright blue")
o121.Transparency = 1.1920929132714e-008
o121.Position = Vector3.new(-24.8323784, 169.176926, -9.20495605)
o121.Rotation = Vector3.new(-180, 5.00895612e-006, -29.9999981)
o121.Anchored = true
o121.CanCollide = false
o121.FormFactor = Enum.FormFactor.Custom
o121.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o121.CFrame = CFrame.new(-24.8323784, 169.176926, -9.20495605, 0.866024435, 0.499999374, 8.74227766e-008, 0.499999374, -0.866024435, 0, 7.57102612e-008, 4.3711335e-008, -1)
o121.BottomSurface = Enum.SurfaceType.Smooth
o121.TopSurface = Enum.SurfaceType.Smooth
o121.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o121.Position = Vector3.new(-24.8323784, 169.176926, -9.20495605)
o122.Parent = o121
o122.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o123.Name = "Block"
o123.Parent = o1
o123.Material = Enum.Material.Neon
o123.BrickColor = BrickColor.new("Bright blue")
o123.Transparency = 1.1920929132714e-008
o123.Position = Vector3.new(-24.8577271, 169.170349, -9.20495605)
o123.Rotation = Vector3.new(-180, 5.00895612e-006, 5.12264251e-006)
o123.Anchored = true
o123.CanCollide = false
o123.FormFactor = Enum.FormFactor.Custom
o123.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o123.CFrame = CFrame.new(-24.8577271, 169.170349, -9.20495605, 0.999999642, -8.94069387e-008, 8.74227766e-008, -8.94069387e-008, -0.999999642, 0, 8.74227482e-008, -7.8162032e-015, -1)
o123.BottomSurface = Enum.SurfaceType.Smooth
o123.TopSurface = Enum.SurfaceType.Smooth
o123.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o123.Position = Vector3.new(-24.8577271, 169.170349, -9.20495605)
o124.Parent = o123
o124.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o125.Name = "Circle"
o125.Parent = o1
o125.Material = Enum.Material.Granite
o125.BrickColor = BrickColor.new("Bright blue")
o125.Position = Vector3.new(-24.8577271, 169.53418, -8.90002441)
o125.Anchored = true
o125.CanCollide = false
o125.FormFactor = Enum.FormFactor.Custom
o125.Size = Vector3.new(0.576557994, 12.2358427, 0.392673671)
o125.CFrame = CFrame.new(-24.8577271, 169.53418, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o125.BottomSurface = Enum.SurfaceType.Smooth
o125.TopSurface = Enum.SurfaceType.Smooth
o125.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o125.Position = Vector3.new(-24.8577271, 169.53418, -8.90002441)
o126.Parent = o125
o126.Scale = Vector3.new(1, 1, 0.978858471)
o127.Name = "Block"
o127.Parent = o1
o127.Material = Enum.Material.Neon
o127.BrickColor = BrickColor.new("Bright blue")
o127.Transparency = 1.1920929132714e-008
o127.Position = Vector3.new(-24.8218613, 169.184891, -9.20495605)
o127.Rotation = Vector3.new(-180, 5.00895612e-006, -45)
o127.Anchored = true
o127.CanCollide = false
o127.FormFactor = Enum.FormFactor.Custom
o127.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o127.CFrame = CFrame.new(-24.8218613, 169.184891, -9.20495605, 0.707106709, 0.70710665, 8.74227766e-008, 0.70710665, -0.707106709, 0, 6.18172322e-008, 6.18172251e-008, -1)
o127.BottomSurface = Enum.SurfaceType.Smooth
o127.TopSurface = Enum.SurfaceType.Smooth
o127.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o127.Position = Vector3.new(-24.8218613, 169.184891, -9.20495605)
o128.Parent = o127
o128.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o129.Name = "Block"
o129.Parent = o1
o129.Material = Enum.Material.Neon
o129.BrickColor = BrickColor.new("Bright blue")
o129.Position = Vector3.new(-24.8577271, 169.321457, -9.20495605)
o129.Rotation = Vector3.new(-180, 5.00895612e-006, -180)
o129.Anchored = true
o129.CanCollide = false
o129.FormFactor = Enum.FormFactor.Custom
o129.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o129.CFrame = CFrame.new(-24.8577271, 169.321457, -9.20495605, -1, 0, 8.74227766e-008, 0, 1, 0, -8.74227766e-008, 0, -1)
o129.BottomSurface = Enum.SurfaceType.Smooth
o129.TopSurface = Enum.SurfaceType.Smooth
o129.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o129.Position = Vector3.new(-24.8577271, 169.321457, -9.20495605)
o130.Parent = o129
o130.Scale = Vector3.new(0.039154347, 0.156617373, 0.0978858471)
o131.Name = "Circle"
o131.Parent = o1
o131.Material = Enum.Material.SmoothPlastic
o131.BrickColor = BrickColor.new("Bright blue")
o131.Position = Vector3.new(-24.8577271, 169.213867, -9.13958645)
o131.Rotation = Vector3.new(-90, 90, 0)
o131.Anchored = true
o131.CanCollide = false
o131.FormFactor = Enum.FormFactor.Custom
o131.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o131.CFrame = CFrame.new(-24.8577271, 169.213867, -9.13958645, 0, 8.74227766e-008, 1, -1, 0, 0, 0, -1, 8.74227766e-008)
o131.BottomSurface = Enum.SurfaceType.Smooth
o131.TopSurface = Enum.SurfaceType.Smooth
o131.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o131.Position = Vector3.new(-24.8577271, 169.213867, -9.13958645)
o132.Parent = o131
o132.Scale = Vector3.new(0.978858531, 0.195771694, 0.978858471)
o133.Name = "Circle"
o133.Parent = o1
o133.Material = Enum.Material.Metal
o133.BrickColor = BrickColor.new("Toothpaste")
o133.Reflectance = 0.30000001192093
o133.Position = Vector3.new(-24.8577271, 169.774475, -8.90002441)
o133.Anchored = true
o133.CanCollide = false
o133.FormFactor = Enum.FormFactor.Custom
o133.Size = Vector3.new(0.832805932, 0.392673731, 0.640619934)
o133.CFrame = CFrame.new(-24.8577271, 169.774475, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o133.BottomSurface = Enum.SurfaceType.Smooth
o133.TopSurface = Enum.SurfaceType.Smooth
o133.Color = Color3.new(0, 1, 1)
o133.Position = Vector3.new(-24.8577271, 169.774475, -8.90002441)
o134.Parent = o133
o134.Scale = Vector3.new(1, 0.244714633, 1)
o135.Name = "Circle"
o135.Parent = o1
o135.Material = Enum.Material.Neon
o135.BrickColor = BrickColor.new("Really black")
o135.Reflectance = 0.30000001192093
o135.Position = Vector3.new(-24.8577271, 169.838654, -8.90002441)
o135.Anchored = true
o135.CanCollide = false
o135.FormFactor = Enum.FormFactor.Custom
o135.Size = Vector3.new(0.602182806, 0.392673731, 0.640619934)
o135.CFrame = CFrame.new(-24.8577271, 169.838654, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o135.BottomSurface = Enum.SurfaceType.Smooth
o135.TopSurface = Enum.SurfaceType.Smooth
o135.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o135.Position = Vector3.new(-24.8577271, 169.838654, -8.90002441)
o136.Parent = o135
o136.Scale = Vector3.new(1, 0.244714633, 1)
o137.Name = "Block"
o137.Parent = o1
o137.Material = Enum.Material.Metal
o137.BrickColor = BrickColor.new("Black")
o137.Position = Vector3.new(-24.8577271, 164.290283, -8.90002441)
o137.Rotation = Vector3.new(0, 90, 0)
o137.Anchored = true
o137.CanCollide = false
o137.FormFactor = Enum.FormFactor.Custom
o137.Size = Vector3.new(0.392673701, 1.4093641, 0.576557934)
o137.CFrame = CFrame.new(-24.8577271, 164.290283, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o137.BottomSurface = Enum.SurfaceType.Smooth
o137.TopSurface = Enum.SurfaceType.Smooth
o137.Color = Color3.new(0.105882, 0.164706, 0.207843)
o137.Position = Vector3.new(-24.8577271, 164.290283, -8.90002441)
o138.Parent = o137
o138.Scale = Vector3.new(0.326286137, 1, 1)
o139.Name = "Block"
o139.Parent = o1
o139.Material = Enum.Material.Neon
o139.BrickColor = BrickColor.new("Bright blue")
o139.Transparency = 1.1920929132714e-008
o139.Position = Vector3.new(-24.808773, 169.207825, -9.20495605)
o139.Rotation = Vector3.new(-180, 5.00895612e-006, -75)
o139.Anchored = true
o139.CanCollide = false
o139.FormFactor = Enum.FormFactor.Custom
o139.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o139.CFrame = CFrame.new(-24.808773, 169.207825, -9.20495605, 0.258817017, 0.965918124, 8.74227766e-008, 0.965918124, -0.258817017, 0, 2.26265016e-008, 8.44432435e-008, -1)
o139.BottomSurface = Enum.SurfaceType.Smooth
o139.TopSurface = Enum.SurfaceType.Smooth
o139.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o139.Position = Vector3.new(-24.808773, 169.207825, -9.20495605)
o140.Parent = o139
o140.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o141.Name = "Block"
o141.Parent = o1
o141.Material = Enum.Material.Neon
o141.BrickColor = BrickColor.new("Bright blue")
o141.Transparency = 1.1920929132714e-008
o141.Position = Vector3.new(-24.8138046, 169.195572, -9.20495605)
o141.Rotation = Vector3.new(-180, 5.00895612e-006, -60.0000038)
o141.Anchored = true
o141.CanCollide = false
o141.FormFactor = Enum.FormFactor.Custom
o141.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o141.CFrame = CFrame.new(-24.8138046, 169.195572, -9.20495605, 0.5, 0.866025388, 8.74227766e-008, 0.866025388, -0.5, 0, 4.37113883e-008, 7.57103464e-008, -1)
o141.BottomSurface = Enum.SurfaceType.Smooth
o141.TopSurface = Enum.SurfaceType.Smooth
o141.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o141.Position = Vector3.new(-24.8138046, 169.195572, -9.20495605)
o142.Parent = o141
o142.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o143.Name = "Block"
o143.Parent = o1
o143.Material = Enum.Material.Neon
o143.BrickColor = BrickColor.new("Bright blue")
o143.Transparency = 1.1920929132714e-008
o143.Position = Vector3.new(-24.8935852, 169.25679, -9.20495605)
o143.Rotation = Vector3.new(-180, 5.00895612e-006, 135.000504)
o143.Anchored = true
o143.CanCollide = false
o143.FormFactor = Enum.FormFactor.Custom
o143.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o143.CFrame = CFrame.new(-24.8935852, 169.25679, -9.20495605, -0.707116067, -0.70710361, 8.74227766e-008, -0.70710361, 0.707116067, 0, -6.18180493e-008, -6.18169622e-008, -1)
o143.BottomSurface = Enum.SurfaceType.Smooth
o143.TopSurface = Enum.SurfaceType.Smooth
o143.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o143.Position = Vector3.new(-24.8935852, 169.25679, -9.20495605)
o144.Parent = o143
o144.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o145.Name = "Block"
o145.Parent = o1
o145.Material = Enum.Material.Metal
o145.BrickColor = BrickColor.new("Smoky grey")
o145.Position = Vector3.new(-24.5454025, 175.315598, -9.20428371)
o145.Rotation = Vector3.new(-0, 0, -90)
o145.Anchored = true
o145.CanCollide = false
o145.FormFactor = Enum.FormFactor.Custom
o145.Size = Vector3.new(0.864836931, 0.392673731, 0.392673671)
o145.CFrame = CFrame.new(-24.5454025, 175.315598, -9.20428371, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1)
o145.BottomSurface = Enum.SurfaceType.Smooth
o145.TopSurface = Enum.SurfaceType.Smooth
o145.Color = Color3.new(0.356863, 0.364706, 0.411765)
o145.Position = Vector3.new(-24.5454025, 175.315598, -9.20428371)
o146.Parent = o145
o146.Scale = Vector3.new(1, 0.203928858, 0.244714648)
o147.Name = "Block"
o147.Parent = o1
o147.Material = Enum.Material.Neon
o147.BrickColor = BrickColor.new("Bright blue")
o147.Transparency = 1.1920929132714e-008
o147.Position = Vector3.new(-24.9067078, 169.234177, -9.20495605)
o147.Rotation = Vector3.new(-180, 5.00895612e-006, 105.000504)
o147.Anchored = true
o147.CanCollide = false
o147.FormFactor = Enum.FormFactor.Custom
o147.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o147.CFrame = CFrame.new(-24.9067078, 169.234177, -9.20495605, -0.258827537, -0.965923607, 8.74227766e-008, -0.965923607, 0.258827537, 0, -2.26274217e-008, -8.44437267e-008, -1)
o147.BottomSurface = Enum.SurfaceType.Smooth
o147.TopSurface = Enum.SurfaceType.Smooth
o147.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o147.Position = Vector3.new(-24.9067078, 169.234177, -9.20495605)
o148.Parent = o147
o148.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o149.Name = "Block"
o149.Parent = o1
o149.Material = Enum.Material.Neon
o149.BrickColor = BrickColor.new("Bright blue")
o149.Transparency = 1.1920929132714e-008
o149.Position = Vector3.new(-24.8708382, 169.269745, -9.20495605)
o149.Rotation = Vector3.new(-180, 5.00895612e-006, 165.000504)
o149.Anchored = true
o149.CanCollide = false
o149.FormFactor = Enum.FormFactor.Custom
o149.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o149.CFrame = CFrame.new(-24.8708382, 169.269745, -9.20495605, -0.965928257, -0.25881055, 8.74227766e-008, -0.25881055, 0.965928257, 0, -8.44441317e-008, -2.26259367e-008, -1)
o149.BottomSurface = Enum.SurfaceType.Smooth
o149.TopSurface = Enum.SurfaceType.Smooth
o149.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o149.Position = Vector3.new(-24.8708382, 169.269745, -9.20495605)
o150.Parent = o149
o150.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o151.Name = "Block"
o151.Parent = o1
o151.Material = Enum.Material.Neon
o151.BrickColor = BrickColor.new("Bright blue")
o151.Transparency = 1.1920929132714e-008
o151.Position = Vector3.new(-24.9084091, 169.220993, -9.20495605)
o151.Rotation = Vector3.new(-180, 5.00895612e-006, 90.0005035)
o151.Anchored = true
o151.CanCollide = false
o151.FormFactor = Enum.FormFactor.Custom
o151.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o151.CFrame = CFrame.new(-24.9084091, 169.220993, -9.20495605, -8.77680941e-006, -1.00000322, 8.74227766e-008, -1.00000322, 8.77680941e-006, 0, -7.67293022e-013, -8.74230608e-008, -1)
o151.BottomSurface = Enum.SurfaceType.Smooth
o151.TopSurface = Enum.SurfaceType.Smooth
o151.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o151.Position = Vector3.new(-24.9084091, 169.220993, -9.20495605)
o152.Parent = o151
o152.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o153.Name = "Block"
o153.Parent = o1
o153.Material = Enum.Material.Neon
o153.BrickColor = BrickColor.new("Bright blue")
o153.Transparency = 1.1920929132714e-008
o153.Position = Vector3.new(-24.901638, 169.246429, -9.20495605)
o153.Rotation = Vector3.new(-180, 5.00895612e-006, 120.000511)
o153.Anchored = true
o153.CanCollide = false
o153.FormFactor = Enum.FormFactor.Custom
o153.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o153.CFrame = CFrame.new(-24.901638, 169.246429, -9.20495605, -0.500007868, -0.866021454, 8.74227766e-008, -0.866021454, 0.500007868, 0, -4.37120775e-008, -7.57099983e-008, -1)
o153.BottomSurface = Enum.SurfaceType.Smooth
o153.TopSurface = Enum.SurfaceType.Smooth
o153.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o153.Position = Vector3.new(-24.901638, 169.246429, -9.20495605)
o154.Parent = o153
o154.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o155.Name = "Block"
o155.Parent = o1
o155.Material = Enum.Material.Neon
o155.BrickColor = BrickColor.new("Bright blue")
o155.Position = Vector3.new(-24.8577271, 169.321457, -9.20495605)
o155.Rotation = Vector3.new(-180, 5.00895612e-006, 90)
o155.Anchored = true
o155.CanCollide = false
o155.FormFactor = Enum.FormFactor.Custom
o155.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o155.CFrame = CFrame.new(-24.8577271, 169.321457, -9.20495605, 4.37113812e-008, -1, 8.74227766e-008, -1, -4.37113812e-008, 0, 3.82137093e-015, -8.74227766e-008, -1)
o155.BottomSurface = Enum.SurfaceType.Smooth
o155.TopSurface = Enum.SurfaceType.Smooth
o155.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o155.Position = Vector3.new(-24.8577271, 169.321457, -9.20495605)
o156.Parent = o155
o156.Scale = Vector3.new(0.039154347, 0.156617373, 0.0978858471)
o157.Name = "Block"
o157.Parent = o1
o157.Material = Enum.Material.Metal
o157.BrickColor = BrickColor.new("Smoky grey")
o157.Position = Vector3.new(-24.5454025, 175.315598, -8.59570217)
o157.Rotation = Vector3.new(-0, 0, -90)
o157.Anchored = true
o157.CanCollide = false
o157.FormFactor = Enum.FormFactor.Custom
o157.Size = Vector3.new(0.864836931, 0.392673731, 0.392673671)
o157.CFrame = CFrame.new(-24.5454025, 175.315598, -8.59570217, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1)
o157.BottomSurface = Enum.SurfaceType.Smooth
o157.TopSurface = Enum.SurfaceType.Smooth
o157.Color = Color3.new(0.356863, 0.364706, 0.411765)
o157.Position = Vector3.new(-24.5454025, 175.315598, -8.59570217)
o158.Parent = o157
o158.Scale = Vector3.new(1, 0.203928858, 0.244714648)
o159.Name = "Block"
o159.Parent = o1
o159.Material = Enum.Material.Neon
o159.BrickColor = BrickColor.new("Bright blue")
o159.Transparency = 1.1920929132714e-008
o159.Position = Vector3.new(-24.8446007, 169.269745, -9.20495605)
o159.Rotation = Vector3.new(-180, 5.00895612e-006, -165)
o159.Anchored = true
o159.CanCollide = false
o159.FormFactor = Enum.FormFactor.Custom
o159.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o159.CFrame = CFrame.new(-24.8446007, 169.269745, -9.20495605, -0.96592617, 0.258819133, 8.74227766e-008, 0.258819133, 0.96592617, 0, -8.44439469e-008, 2.26266881e-008, -1)
o159.BottomSurface = Enum.SurfaceType.Smooth
o159.TopSurface = Enum.SurfaceType.Smooth
o159.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o159.Position = Vector3.new(-24.8446007, 169.269745, -9.20495605)
o160.Parent = o159
o160.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o161.Name = "Block"
o161.Parent = o1
o161.Material = Enum.Material.Metal
o161.BrickColor = BrickColor.new("Black")
o161.Position = Vector3.new(-24.617485, 173.474228, -8.65979004)
o161.Anchored = true
o161.CanCollide = false
o161.FormFactor = Enum.FormFactor.Custom
o161.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o161.CFrame = CFrame.new(-24.617485, 173.474228, -8.65979004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o161.BottomSurface = Enum.SurfaceType.Smooth
o161.TopSurface = Enum.SurfaceType.Smooth
o161.Color = Color3.new(0.105882, 0.164706, 0.207843)
o161.Position = Vector3.new(-24.617485, 173.474228, -8.65979004)
o162.Parent = o161
o162.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o163.Name = "Block"
o163.Parent = o1
o163.Material = Enum.Material.Metal
o163.BrickColor = BrickColor.new("Bright blue")
o163.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o163.Anchored = true
o163.CanCollide = false
o163.FormFactor = Enum.FormFactor.Custom
o163.Size = Vector3.new(0.392673701, 1.28123999, 0.576557934)
o163.CFrame = CFrame.new(-24.8577271, 167.132004, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o163.BottomSurface = Enum.SurfaceType.Smooth
o163.TopSurface = Enum.SurfaceType.Smooth
o163.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o163.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o164.Parent = o163
o164.Scale = Vector3.new(0.815715492, 1, 1)
o165.Name = "Block"
o165.Parent = o1
o165.Material = Enum.Material.Metal
o165.BrickColor = BrickColor.new("Black")
o165.Position = Vector3.new(-24.8577271, 163.649979, -8.90002441)
o165.Anchored = true
o165.CanCollide = false
o165.FormFactor = Enum.FormFactor.Custom
o165.Size = Vector3.new(0.576557994, 0.392673731, 0.576557934)
o165.CFrame = CFrame.new(-24.8577271, 163.649979, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o165.BottomSurface = Enum.SurfaceType.Smooth
o165.TopSurface = Enum.SurfaceType.Smooth
o165.Color = Color3.new(0.105882, 0.164706, 0.207843)
o165.Position = Vector3.new(-24.8577271, 163.649979, -8.90002441)
o166.Parent = o165
o166.Scale = Vector3.new(1, 0.326286137, 1)
o167.Name = "Block"
o167.Parent = o1
o167.Material = Enum.Material.Metal
o167.BrickColor = BrickColor.new("Smoky grey")
o167.Position = Vector3.new(-24.8577271, 165.091339, -8.90002441)
o167.Anchored = true
o167.CanCollide = false
o167.FormFactor = Enum.FormFactor.Custom
o167.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o167.CFrame = CFrame.new(-24.8577271, 165.091339, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o167.BottomSurface = Enum.SurfaceType.Smooth
o167.TopSurface = Enum.SurfaceType.Smooth
o167.Color = Color3.new(0.356863, 0.364706, 0.411765)
o167.Position = Vector3.new(-24.8577271, 165.091339, -8.90002441)
o168.Parent = o167
o168.Scale = Vector3.new(1, 0.163143069, 1)
o169.Name = "Block"
o169.Parent = o1
o169.Material = Enum.Material.Metal
o169.BrickColor = BrickColor.new("Smoky grey")
o169.Position = Vector3.new(-24.8577271, 163.490036, -8.90002441)
o169.Anchored = true
o169.CanCollide = false
o169.FormFactor = Enum.FormFactor.Custom
o169.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o169.CFrame = CFrame.new(-24.8577271, 163.490036, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o169.BottomSurface = Enum.SurfaceType.Smooth
o169.TopSurface = Enum.SurfaceType.Smooth
o169.Color = Color3.new(0.356863, 0.364706, 0.411765)
o169.Position = Vector3.new(-24.8577271, 163.490036, -8.90002441)
o170.Parent = o169
o170.Scale = Vector3.new(1, 0.163143069, 1)
o171.Name = "Block"
o171.Parent = o1
o171.Material = Enum.Material.Neon
o171.BrickColor = BrickColor.new("Bright blue")
o171.Position = Vector3.new(-24.8577271, 169.271606, -9.20495605)
o171.Rotation = Vector3.new(-180, 5.00895612e-006, -180)
o171.Anchored = true
o171.CanCollide = false
o171.FormFactor = Enum.FormFactor.Custom
o171.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o171.CFrame = CFrame.new(-24.8577271, 169.271606, -9.20495605, -1, 0, 8.74227766e-008, 0, 1, 0, -8.74227766e-008, 0, -1)
o171.BottomSurface = Enum.SurfaceType.Smooth
o171.TopSurface = Enum.SurfaceType.Smooth
o171.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o171.Position = Vector3.new(-24.8577271, 169.271606, -9.20495605)
o172.Parent = o171
o172.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o173.Name = "Block"
o173.Parent = o1
o173.Material = Enum.Material.Neon
o173.BrickColor = BrickColor.new("Bright blue")
o173.Transparency = 1.1920929132714e-008
o173.Position = Vector3.new(-24.808773, 169.234177, -9.20495605)
o173.Rotation = Vector3.new(-180, 5.00895612e-006, -104.999992)
o173.Anchored = true
o173.CanCollide = false
o173.FormFactor = Enum.FormFactor.Custom
o173.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o173.CFrame = CFrame.new(-24.808773, 169.234177, -9.20495605, -0.258818954, 0.965925753, 8.74227766e-008, 0.965925753, 0.258818954, 0, -2.26266721e-008, 8.44439114e-008, -1)
o173.BottomSurface = Enum.SurfaceType.Smooth
o173.TopSurface = Enum.SurfaceType.Smooth
o173.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o173.Position = Vector3.new(-24.808773, 169.234177, -9.20495605)
o174.Parent = o173
o174.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o175.Name = "Block"
o175.Parent = o1
o175.Material = Enum.Material.Neon
o175.BrickColor = BrickColor.new("Bright blue")
o175.Position = Vector3.new(-24.9653625, 169.221542, -9.20495605)
o175.Rotation = Vector3.new(-180, 5.00895612e-006, -5.00895612e-006)
o175.Anchored = true
o175.CanCollide = false
o175.FormFactor = Enum.FormFactor.Custom
o175.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o175.CFrame = CFrame.new(-24.9653625, 169.221542, -9.20495605, 1, 8.74227766e-008, 8.74227766e-008, 8.74227766e-008, -1, 0, 8.74227766e-008, 7.64274186e-015, -1)
o175.BottomSurface = Enum.SurfaceType.Smooth
o175.TopSurface = Enum.SurfaceType.Smooth
o175.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o175.Position = Vector3.new(-24.9653625, 169.221542, -9.20495605)
o176.Parent = o175
o176.Scale = Vector3.new(0.039154347, 0.156617373, 0.0978858471)
o177.Parent = o1
o177.Material = Enum.Material.Metal
o177.BrickColor = BrickColor.new("Smoky grey")
o177.Position = Vector3.new(-24.8577271, 163.425949, -8.89996243)
o177.Rotation = Vector3.new(180, -6.22079176e-020, 2.00358827e-005)
o177.Anchored = true
o177.CanCollide = false
o177.FormFactor = Enum.FormFactor.Custom
o177.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o177.CFrame = CFrame.new(-24.8577271, 163.425949, -8.89996243, 0.999993026, -3.49689685e-007, -1.08573292e-021, -3.4968906e-007, -0.999995351, -3.82133493e-015, -7.10542736e-015, 1.91066492e-015, -0.999996126)
o177.Color = Color3.new(0.356863, 0.364706, 0.411765)
o177.Position = Vector3.new(-24.8577271, 163.425949, -8.89996243)
o178.Parent = o177
o178.Scale = Vector3.new(1, 0.163143069, 1)
o178.MeshType = Enum.MeshType.Torso
o179.Parent = o1
o179.Material = Enum.Material.Metal
o179.BrickColor = BrickColor.new("Smoky grey")
o179.Position = Vector3.new(-24.8577271, 163.425949, -8.89996243)
o179.Rotation = Vector3.new(92.6033401, 89.8405151, 87.3966599)
o179.Anchored = true
o179.CanCollide = false
o179.FormFactor = Enum.FormFactor.Custom
o179.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o179.CFrame = CFrame.new(-24.8577271, 163.425949, -8.89996243, 1.19247803e-008, -2.62267122e-007, 0.999996126, -8.74225705e-008, -0.999995351, -2.62267292e-007, 0.999993026, -8.74225776e-008, -1.19248345e-008)
o179.Color = Color3.new(0.356863, 0.364706, 0.411765)
o179.Position = Vector3.new(-24.8577271, 163.425949, -8.89996243)
o180.Parent = o179
o180.Scale = Vector3.new(1, 0.163143069, 1)
o180.MeshType = Enum.MeshType.Torso
o181.Name = "Circle"
o181.Parent = o1
o181.Material = Enum.Material.Metal
o181.BrickColor = BrickColor.new("Toothpaste")
o181.Reflectance = 0.30000001192093
o181.Position = Vector3.new(-24.8577271, 168.493393, -8.90002441)
o181.Anchored = true
o181.CanCollide = false
o181.FormFactor = Enum.FormFactor.Custom
o181.Size = Vector3.new(0.832805932, 0.392673731, 0.640619934)
o181.CFrame = CFrame.new(-24.8577271, 168.493393, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o181.BottomSurface = Enum.SurfaceType.Smooth
o181.TopSurface = Enum.SurfaceType.Smooth
o181.Color = Color3.new(0, 1, 1)
o181.Position = Vector3.new(-24.8577271, 168.493393, -8.90002441)
o182.Parent = o181
o182.Scale = Vector3.new(1, 0.244714633, 1)
o183.Name = "Block"
o183.Parent = o1
o183.Material = Enum.Material.Neon
o183.BrickColor = BrickColor.new("Bright blue")
o183.Position = Vector3.new(-24.8577271, 169.221542, -9.20495605)
o183.Rotation = Vector3.new(-180, 5.00895612e-006, -180)
o183.Anchored = true
o183.CanCollide = false
o183.FormFactor = Enum.FormFactor.Custom
o183.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o183.CFrame = CFrame.new(-24.8577271, 169.221542, -9.20495605, -1, 0, 8.74227766e-008, 0, 1, 0, -8.74227766e-008, 0, -1)
o183.BottomSurface = Enum.SurfaceType.Smooth
o183.TopSurface = Enum.SurfaceType.Smooth
o183.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o183.Position = Vector3.new(-24.8577271, 169.221542, -9.20495605)
o184.Parent = o183
o184.Scale = Vector3.new(0.039154347, 0.156617373, 0.0978858471)
o185.Name = "Block"
o185.Parent = o1
o185.Material = Enum.Material.Neon
o185.BrickColor = BrickColor.new("Bright blue")
o185.Position = Vector3.new(-24.8577271, 163.55394, -8.90002441)
o185.Anchored = true
o185.CanCollide = false
o185.FormFactor = Enum.FormFactor.Custom
o185.Size = Vector3.new(0.448433995, 0.392673731, 0.448433965)
o185.CFrame = CFrame.new(-24.8577271, 163.55394, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o185.BottomSurface = Enum.SurfaceType.Smooth
o185.TopSurface = Enum.SurfaceType.Smooth
o185.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o185.Position = Vector3.new(-24.8577271, 163.55394, -8.90002441)
o186.Parent = o185
o186.Scale = Vector3.new(1, 0.163143069, 1)
o187.Name = "Block"
o187.Parent = o1
o187.Material = Enum.Material.Metal
o187.BrickColor = BrickColor.new("Smoky grey")
o187.Position = Vector3.new(-24.8577271, 163.585953, -8.90002441)
o187.Anchored = true
o187.CanCollide = false
o187.FormFactor = Enum.FormFactor.Custom
o187.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o187.CFrame = CFrame.new(-24.8577271, 163.585953, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o187.BottomSurface = Enum.SurfaceType.Smooth
o187.TopSurface = Enum.SurfaceType.Smooth
o187.Color = Color3.new(0.356863, 0.364706, 0.411765)
o187.Position = Vector3.new(-24.8577271, 163.585953, -8.90002441)
o188.Parent = o187
o188.Scale = Vector3.new(1, 0.163143069, 1)
o189.Name = "Block"
o189.Parent = o1
o189.Material = Enum.Material.Metal
o189.BrickColor = BrickColor.new("Black")
o189.Position = Vector3.new(-24.8577271, 164.930893, -8.90002441)
o189.Anchored = true
o189.CanCollide = false
o189.FormFactor = Enum.FormFactor.Custom
o189.Size = Vector3.new(0.576557994, 0.392673731, 0.576557934)
o189.CFrame = CFrame.new(-24.8577271, 164.930893, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o189.BottomSurface = Enum.SurfaceType.Smooth
o189.TopSurface = Enum.SurfaceType.Smooth
o189.Color = Color3.new(0.105882, 0.164706, 0.207843)
o189.Position = Vector3.new(-24.8577271, 164.930893, -8.90002441)
o190.Parent = o189
o190.Scale = Vector3.new(1, 0.326286137, 1)
o191.Name = "Circle"
o191.Parent = o1
o191.Material = Enum.Material.SmoothPlastic
o191.BrickColor = BrickColor.new("Really black")
o191.Position = Vector3.new(-24.8577271, 169.213867, -9.17803955)
o191.Rotation = Vector3.new(-90, 90, 0)
o191.Anchored = true
o191.CanCollide = false
o191.FormFactor = Enum.FormFactor.Custom
o191.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o191.CFrame = CFrame.new(-24.8577271, 169.213867, -9.17803955, 0, 8.74227766e-008, 1, -1, 0, 0, 0, -1, 8.74227766e-008)
o191.BottomSurface = Enum.SurfaceType.Smooth
o191.TopSurface = Enum.SurfaceType.Smooth
o191.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o191.Position = Vector3.new(-24.8577271, 169.213867, -9.17803955)
o192.Parent = o191
o192.Scale = Vector3.new(0.978858531, 0.195771694, 0.783086717)
o193.Name = "Block"
o193.Parent = o1
o193.Material = Enum.Material.Neon
o193.BrickColor = BrickColor.new("Bright blue")
o193.Position = Vector3.new(-24.940979, 164.290283, -8.90002441)
o193.Rotation = Vector3.new(0, 90, 0)
o193.Anchored = true
o193.CanCollide = false
o193.FormFactor = Enum.FormFactor.Custom
o193.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o193.CFrame = CFrame.new(-24.940979, 164.290283, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o193.BottomSurface = Enum.SurfaceType.Smooth
o193.TopSurface = Enum.SurfaceType.Smooth
o193.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o193.Position = Vector3.new(-24.940979, 164.290283, -8.90002441)
o194.Parent = o193
o194.Scale = Vector3.new(1, 1, 0.244714648)
o195.Name = "Block"
o195.Parent = o1
o195.Material = Enum.Material.Neon
o195.BrickColor = BrickColor.new("Bright blue")
o195.Position = Vector3.new(-24.7808495, 164.290283, -8.90002441)
o195.Rotation = Vector3.new(0, 90, 0)
o195.Anchored = true
o195.CanCollide = false
o195.FormFactor = Enum.FormFactor.Custom
o195.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o195.CFrame = CFrame.new(-24.7808495, 164.290283, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o195.BottomSurface = Enum.SurfaceType.Smooth
o195.TopSurface = Enum.SurfaceType.Smooth
o195.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o195.Position = Vector3.new(-24.7808495, 164.290283, -8.90002441)
o196.Parent = o195
o196.Scale = Vector3.new(1, 1, 0.897286892)
o197.Name = "Block"
o197.Parent = o1
o197.Material = Enum.Material.Neon
o197.BrickColor = BrickColor.new("Bright blue")
o197.Transparency = 1.1920929132714e-008
o197.Position = Vector3.new(-24.901638, 169.195572, -9.20495605)
o197.Rotation = Vector3.new(-180, 5.00895612e-006, 60.0003662)
o197.Anchored = true
o197.CanCollide = false
o197.FormFactor = Enum.FormFactor.Custom
o197.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o197.CFrame = CFrame.new(-24.901638, 169.195572, -9.20495605, 0.499996364, -0.866031885, 8.74227766e-008, -0.866023183, -0.500005901, 0, 4.37110721e-008, -7.57109149e-008, -1)
o197.BottomSurface = Enum.SurfaceType.Smooth
o197.TopSurface = Enum.SurfaceType.Smooth
o197.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o197.Position = Vector3.new(-24.901638, 169.195572, -9.20495605)
o198.Parent = o197
o198.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o199.Name = "Block"
o199.Parent = o1
o199.Material = Enum.Material.Marble
o199.BrickColor = BrickColor.new("Black")
o199.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o199.Rotation = Vector3.new(-0, -90, 0)
o199.Anchored = true
o199.CanCollide = false
o199.FormFactor = Enum.FormFactor.Custom
o199.Size = Vector3.new(0.392673701, 1.15311623, 0.640619934)
o199.CFrame = CFrame.new(-24.8577271, 167.132004, -8.90002441, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
o199.BottomSurface = Enum.SurfaceType.Smooth
o199.TopSurface = Enum.SurfaceType.Smooth
o199.Color = Color3.new(0.105882, 0.164706, 0.207843)
o199.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o200.Parent = o199
o200.Scale = Vector3.new(0.489429265, 1, 1)
o201.Name = "Block"
o201.Parent = o1
o201.Material = Enum.Material.Marble
o201.BrickColor = BrickColor.new("Black")
o201.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o201.Anchored = true
o201.CanCollide = false
o201.FormFactor = Enum.FormFactor.Custom
o201.Size = Vector3.new(0.392673701, 1.15311623, 0.640619934)
o201.CFrame = CFrame.new(-24.8577271, 167.132004, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o201.BottomSurface = Enum.SurfaceType.Smooth
o201.TopSurface = Enum.SurfaceType.Smooth
o201.Color = Color3.new(0.105882, 0.164706, 0.207843)
o201.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o202.Parent = o201
o202.Scale = Vector3.new(0.489429265, 1, 1)
o203.Name = "Block"
o203.Parent = o1
o203.Material = Enum.Material.Neon
o203.BrickColor = BrickColor.new("Bright blue")
o203.Position = Vector3.new(-24.8609276, 164.290283, -8.98010159)
o203.Anchored = true
o203.CanCollide = false
o203.FormFactor = Enum.FormFactor.Custom
o203.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o203.CFrame = CFrame.new(-24.8609276, 164.290283, -8.98010159, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o203.BottomSurface = Enum.SurfaceType.Smooth
o203.TopSurface = Enum.SurfaceType.Smooth
o203.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o203.Position = Vector3.new(-24.8609276, 164.290283, -8.98010159)
o204.Parent = o203
o204.Scale = Vector3.new(1, 1, 0.244714648)
o205.Name = "Circle"
o205.Parent = o1
o205.Material = Enum.Material.Neon
o205.BrickColor = BrickColor.new("Really black")
o205.Reflectance = 0.30000001192093
o205.Position = Vector3.new(-24.8577271, 169.838654, -8.90002441)
o205.Anchored = true
o205.CanCollide = false
o205.FormFactor = Enum.FormFactor.Custom
o205.Size = Vector3.new(0.602182806, 0.392673731, 0.640619934)
o205.CFrame = CFrame.new(-24.8577271, 169.838654, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o205.BottomSurface = Enum.SurfaceType.Smooth
o205.TopSurface = Enum.SurfaceType.Smooth
o205.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o205.Position = Vector3.new(-24.8577271, 169.838654, -8.90002441)
o206.Parent = o205
o206.Scale = Vector3.new(1, 0.244714633, 1)
o207.Name = "Block"
o207.Parent = o1
o207.Material = Enum.Material.Neon
o207.BrickColor = BrickColor.new("Bright blue")
o207.Position = Vector3.new(-24.8609276, 164.290283, -8.98010159)
o207.Anchored = true
o207.CanCollide = false
o207.FormFactor = Enum.FormFactor.Custom
o207.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o207.CFrame = CFrame.new(-24.8609276, 164.290283, -8.98010159, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o207.BottomSurface = Enum.SurfaceType.Smooth
o207.TopSurface = Enum.SurfaceType.Smooth
o207.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o207.Position = Vector3.new(-24.8609276, 164.290283, -8.98010159)
o208.Parent = o207
o208.Scale = Vector3.new(1, 1, 0.571000755)
o209.Name = "Block"
o209.Parent = o1
o209.Material = Enum.Material.Metal
o209.BrickColor = BrickColor.new("Smoky grey")
o209.Position = Vector3.new(-24.8577271, 164.995255, -8.90002441)
o209.Anchored = true
o209.CanCollide = false
o209.FormFactor = Enum.FormFactor.Custom
o209.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o209.CFrame = CFrame.new(-24.8577271, 164.995255, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o209.BottomSurface = Enum.SurfaceType.Smooth
o209.TopSurface = Enum.SurfaceType.Smooth
o209.Color = Color3.new(0.356863, 0.364706, 0.411765)
o209.Position = Vector3.new(-24.8577271, 164.995255, -8.90002441)
o210.Parent = o209
o210.Scale = Vector3.new(1, 0.163143069, 1)
o211.Name = "Block"
o211.Parent = o1
o211.Material = Enum.Material.Neon
o211.BrickColor = BrickColor.new("Bright blue")
o211.Position = Vector3.new(-24.8577271, 165.059067, -8.90002441)
o211.Anchored = true
o211.CanCollide = false
o211.FormFactor = Enum.FormFactor.Custom
o211.Size = Vector3.new(0.448433995, 0.392673731, 0.448433965)
o211.CFrame = CFrame.new(-24.8577271, 165.059067, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o211.BottomSurface = Enum.SurfaceType.Smooth
o211.TopSurface = Enum.SurfaceType.Smooth
o211.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o211.Position = Vector3.new(-24.8577271, 165.059067, -8.90002441)
o212.Parent = o211
o212.Scale = Vector3.new(1, 0.163143069, 1)
o213.Name = "Block"
o213.Parent = o1
o213.Material = Enum.Material.Neon
o213.BrickColor = BrickColor.new("Bright blue")
o213.Transparency = 1.1920929132714e-008
o213.Position = Vector3.new(-24.9067078, 169.207825, -9.20495605)
o213.Rotation = Vector3.new(-180, 5.00895612e-006, 75.0005035)
o213.Anchored = true
o213.CanCollide = false
o213.FormFactor = Enum.FormFactor.Custom
o213.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o213.CFrame = CFrame.new(-24.9067078, 169.207825, -9.20495605, 0.258810669, -0.965928435, 8.74227766e-008, -0.965928435, -0.258810669, 0, 2.26259473e-008, -8.44441459e-008, -1)
o213.BottomSurface = Enum.SurfaceType.Smooth
o213.TopSurface = Enum.SurfaceType.Smooth
o213.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o213.Position = Vector3.new(-24.9067078, 169.207825, -9.20495605)
o214.Parent = o213
o214.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o215.Name = "Block"
o215.Parent = o1
o215.Material = Enum.Material.Metal
o215.BrickColor = BrickColor.new("Smoky grey")
o215.Position = Vector3.new(-24.8609276, 164.290283, -8.90313625)
o215.Rotation = Vector3.new(0, 90, 0)
o215.Anchored = true
o215.FormFactor = Enum.FormFactor.Custom
o215.Size = Vector3.new(0.512495995, 1.28123999, 0.512495935)
o215.CFrame = CFrame.new(-24.8609276, 164.290283, -8.90313625, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o215.BottomSurface = Enum.SurfaceType.Smooth
o215.TopSurface = Enum.SurfaceType.Smooth
o215.Color = Color3.new(0.356863, 0.364706, 0.411765)
o215.Position = Vector3.new(-24.8609276, 164.290283, -8.90313625)
o216.Name = "Block"
o216.Parent = o1
o216.Material = Enum.Material.Neon
o216.BrickColor = BrickColor.new("Bright blue")
o216.Position = Vector3.new(-24.8609276, 164.290283, -8.81994629)
o216.Anchored = true
o216.CanCollide = false
o216.FormFactor = Enum.FormFactor.Custom
o216.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o216.CFrame = CFrame.new(-24.8609276, 164.290283, -8.81994629, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o216.BottomSurface = Enum.SurfaceType.Smooth
o216.TopSurface = Enum.SurfaceType.Smooth
o216.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o216.Position = Vector3.new(-24.8609276, 164.290283, -8.81994629)
o217.Parent = o216
o217.Scale = Vector3.new(1, 1, 0.244714648)
o218.Name = "Block"
o218.Parent = o1
o218.Material = Enum.Material.Metal
o218.BrickColor = BrickColor.new("Black")
o218.Position = Vector3.new(-25.0979614, 164.290283, -8.65979004)
o218.Anchored = true
o218.CanCollide = false
o218.FormFactor = Enum.FormFactor.Custom
o218.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o218.CFrame = CFrame.new(-25.0979614, 164.290283, -8.65979004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o218.BottomSurface = Enum.SurfaceType.Smooth
o218.TopSurface = Enum.SurfaceType.Smooth
o218.Color = Color3.new(0.105882, 0.164706, 0.207843)
o218.Position = Vector3.new(-25.0979614, 164.290283, -8.65979004)
o219.Parent = o218
o219.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o220.Name = "Block"
o220.Parent = o1
o220.Material = Enum.Material.Metal
o220.BrickColor = BrickColor.new("Black")
o220.Position = Vector3.new(-24.617485, 164.290283, -8.65979004)
o220.Anchored = true
o220.CanCollide = false
o220.FormFactor = Enum.FormFactor.Custom
o220.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o220.CFrame = CFrame.new(-24.617485, 164.290283, -8.65979004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o220.BottomSurface = Enum.SurfaceType.Smooth
o220.TopSurface = Enum.SurfaceType.Smooth
o220.Color = Color3.new(0.105882, 0.164706, 0.207843)
o220.Position = Vector3.new(-24.617485, 164.290283, -8.65979004)
o221.Parent = o220
o221.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o222.Name = "Block"
o222.Parent = o1
o222.Material = Enum.Material.Neon
o222.BrickColor = BrickColor.new("Bright blue")
o222.Position = Vector3.new(-24.7808495, 164.290283, -8.90002441)
o222.Rotation = Vector3.new(0, 90, 0)
o222.Anchored = true
o222.CanCollide = false
o222.FormFactor = Enum.FormFactor.Custom
o222.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o222.CFrame = CFrame.new(-24.7808495, 164.290283, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o222.BottomSurface = Enum.SurfaceType.Smooth
o222.TopSurface = Enum.SurfaceType.Smooth
o222.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o222.Position = Vector3.new(-24.7808495, 164.290283, -8.90002441)
o223.Parent = o222
o223.Scale = Vector3.new(1, 1, 0.244714648)
o224.Name = "Block"
o224.Parent = o1
o224.Material = Enum.Material.Metal
o224.BrickColor = BrickColor.new("Smoky grey")
o224.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o224.Anchored = true
o224.FormFactor = Enum.FormFactor.Custom
o224.Size = Vector3.new(0.512495995, 1.47342587, 0.512495935)
o224.CFrame = CFrame.new(-24.8577271, 167.132004, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o224.BottomSurface = Enum.SurfaceType.Smooth
o224.TopSurface = Enum.SurfaceType.Smooth
o224.Color = Color3.new(0.356863, 0.364706, 0.411765)
o224.Position = Vector3.new(-24.8577271, 167.132004, -8.90002441)
o225.Name = "Block"
o225.Parent = o1
o225.Material = Enum.Material.Metal
o225.BrickColor = BrickColor.new("Black")
o225.Position = Vector3.new(-25.0979614, 164.290283, -9.14025784)
o225.Anchored = true
o225.CanCollide = false
o225.FormFactor = Enum.FormFactor.Custom
o225.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o225.CFrame = CFrame.new(-25.0979614, 164.290283, -9.14025784, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o225.BottomSurface = Enum.SurfaceType.Smooth
o225.TopSurface = Enum.SurfaceType.Smooth
o225.Color = Color3.new(0.105882, 0.164706, 0.207843)
o225.Position = Vector3.new(-25.0979614, 164.290283, -9.14025784)
o226.Parent = o225
o226.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o227.Name = "Block"
o227.Parent = o1
o227.Material = Enum.Material.Metal
o227.BrickColor = BrickColor.new("Smoky grey")
o227.Position = Vector3.new(-24.8577271, 164.290283, -8.90002441)
o227.Anchored = true
o227.FormFactor = Enum.FormFactor.Custom
o227.Size = Vector3.new(0.512495995, 1.28123999, 0.512495935)
o227.CFrame = CFrame.new(-24.8577271, 164.290283, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o227.BottomSurface = Enum.SurfaceType.Smooth
o227.TopSurface = Enum.SurfaceType.Smooth
o227.Color = Color3.new(0.356863, 0.364706, 0.411765)
o227.Position = Vector3.new(-24.8577271, 164.290283, -8.90002441)
o228.Name = "Block"
o228.Parent = o1
o228.Material = Enum.Material.Metal
o228.BrickColor = BrickColor.new("Black")
o228.Position = Vector3.new(-24.617485, 164.290283, -9.14025784)
o228.Anchored = true
o228.CanCollide = false
o228.FormFactor = Enum.FormFactor.Custom
o228.Size = Vector3.new(0.392673701, 1.4093641, 0.392673671)
o228.CFrame = CFrame.new(-24.617485, 164.290283, -9.14025784, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o228.BottomSurface = Enum.SurfaceType.Smooth
o228.TopSurface = Enum.SurfaceType.Smooth
o228.Color = Color3.new(0.105882, 0.164706, 0.207843)
o228.Position = Vector3.new(-24.617485, 164.290283, -9.14025784)
o229.Parent = o228
o229.Scale = Vector3.new(0.244714648, 1, 0.244714648)
o230.Name = "Block"
o230.Parent = o1
o230.Material = Enum.Material.Neon
o230.BrickColor = BrickColor.new("Bright blue")
o230.Position = Vector3.new(-24.940979, 164.290283, -8.90002441)
o230.Rotation = Vector3.new(0, 90, 0)
o230.Anchored = true
o230.CanCollide = false
o230.FormFactor = Enum.FormFactor.Custom
o230.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o230.CFrame = CFrame.new(-24.940979, 164.290283, -8.90002441, 1.19248806e-008, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-008)
o230.BottomSurface = Enum.SurfaceType.Smooth
o230.TopSurface = Enum.SurfaceType.Smooth
o230.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o230.Position = Vector3.new(-24.940979, 164.290283, -8.90002441)
o231.Parent = o230
o231.Scale = Vector3.new(1, 1, 0.571000755)
o232.Name = "Block"
o232.Parent = o1
o232.Material = Enum.Material.Neon
o232.BrickColor = BrickColor.new("Bright blue")
o232.Transparency = 1.1920929132714e-008
o232.Position = Vector3.new(-24.8830681, 169.176926, -9.20495605)
o232.Rotation = Vector3.new(-180, 5.00895612e-006, 30.0000076)
o232.Anchored = true
o232.CanCollide = false
o232.FormFactor = Enum.FormFactor.Custom
o232.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o232.CFrame = CFrame.new(-24.8830681, 169.176926, -9.20495605, 0.866025329, -0.500000119, 8.74227766e-008, -0.50000006, -0.866025448, 0, 7.57103393e-008, -4.37113989e-008, -1)
o232.BottomSurface = Enum.SurfaceType.Smooth
o232.TopSurface = Enum.SurfaceType.Smooth
o232.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o232.Position = Vector3.new(-24.8830681, 169.176926, -9.20495605)
o233.Parent = o232
o233.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o234.Name = "Circle"
o234.Parent = o1
o234.Material = Enum.Material.Metal
o234.BrickColor = BrickColor.new("Black")
o234.Reflectance = 0.30000001192093
o234.Position = Vector3.new(-24.8577271, 169.213867, -8.90002441)
o234.Anchored = true
o234.FormFactor = Enum.FormFactor.Custom
o234.Size = Vector3.new(0.704681993, 1.47342587, 0.576557934)
o234.CFrame = CFrame.new(-24.8577271, 169.213867, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o234.BottomSurface = Enum.SurfaceType.Smooth
o234.TopSurface = Enum.SurfaceType.Smooth
o234.Color = Color3.new(0.105882, 0.164706, 0.207843)
o234.Position = Vector3.new(-24.8577271, 169.213867, -8.90002441)
o235.Parent = o234
o236.Name = "Block"
o236.Parent = o1
o236.Material = Enum.Material.Neon
o236.BrickColor = BrickColor.new("Bright blue")
o236.Position = Vector3.new(-24.8609276, 164.290283, -8.81994629)
o236.Anchored = true
o236.CanCollide = false
o236.FormFactor = Enum.FormFactor.Custom
o236.Size = Vector3.new(0.544526935, 1.4093641, 0.392673671)
o236.CFrame = CFrame.new(-24.8609276, 164.290283, -8.81994629, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o236.BottomSurface = Enum.SurfaceType.Smooth
o236.TopSurface = Enum.SurfaceType.Smooth
o236.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o236.Position = Vector3.new(-24.8609276, 164.290283, -8.81994629)
o237.Parent = o236
o237.Scale = Vector3.new(1, 1, 0.571000755)
o238.Parent = o1
o238.Material = Enum.Material.Metal
o238.BrickColor = BrickColor.new("Smoky grey")
o238.Position = Vector3.new(-24.8577271, 165.155518, -8.89996243)
o238.Rotation = Vector3.new(-93.9016647, -89.8405151, -93.9016571)
o238.Anchored = true
o238.CanCollide = false
o238.FormFactor = Enum.FormFactor.Custom
o238.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o238.CFrame = CFrame.new(-24.8577271, 165.155518, -8.89996243, -1.19247883e-008, 1.74844743e-007, -0.999996126, 8.74225705e-008, 0.999995351, 1.74844871e-007, 0.999993026, -8.74225776e-008, -1.19248345e-008)
o238.Color = Color3.new(0.356863, 0.364706, 0.411765)
o238.Position = Vector3.new(-24.8577271, 165.155518, -8.89996243)
o239.Parent = o238
o239.Scale = Vector3.new(1, 0.163143069, 1)
o239.MeshType = Enum.MeshType.Torso
o240.Name = "Block"
o240.Parent = o1
o240.Material = Enum.Material.Metal
o240.BrickColor = BrickColor.new("Black")
o240.Position = Vector3.new(-24.8577271, 164.290283, -8.90002441)
o240.Anchored = true
o240.CanCollide = false
o240.FormFactor = Enum.FormFactor.Custom
o240.Size = Vector3.new(0.392673701, 1.4093641, 0.576557934)
o240.CFrame = CFrame.new(-24.8577271, 164.290283, -8.90002441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o240.BottomSurface = Enum.SurfaceType.Smooth
o240.TopSurface = Enum.SurfaceType.Smooth
o240.Color = Color3.new(0.105882, 0.164706, 0.207843)
o240.Position = Vector3.new(-24.8577271, 164.290283, -8.90002441)
o241.Parent = o240
o241.Scale = Vector3.new(0.326286137, 1, 1)
o242.Parent = o1
o242.Material = Enum.Material.Metal
o242.BrickColor = BrickColor.new("Smoky grey")
o242.Position = Vector3.new(-24.8577271, 165.155518, -8.89996243)
o242.Rotation = Vector3.new(-180, 4.30670132e-020, -180)
o242.Anchored = true
o242.CanCollide = false
o242.FormFactor = Enum.FormFactor.Custom
o242.Size = Vector3.new(0.512495995, 0.392673731, 0.512495935)
o242.CFrame = CFrame.new(-24.8577271, 165.155518, -8.89996243, -0.999993026, 2.62267321e-007, 7.51661153e-022, 2.62266894e-007, 0.999995351, 3.82133493e-015, -7.10542736e-015, 1.91066492e-015, -0.999996126)
o242.Color = Color3.new(0.356863, 0.364706, 0.411765)
o242.Position = Vector3.new(-24.8577271, 165.155518, -8.89996243)
o243.Parent = o242
o243.Scale = Vector3.new(1, 0.163143069, 1)
o243.MeshType = Enum.MeshType.Torso
o244.Name = "Block"
o244.Parent = o1
o244.Material = Enum.Material.Neon
o244.BrickColor = BrickColor.new("Bright blue")
o244.Transparency = 1.1920929132714e-008
o244.Position = Vector3.new(-24.8935852, 169.184891, -9.20495605)
o244.Rotation = Vector3.new(-180, 5.00895612e-006, 45.0000496)
o244.Anchored = true
o244.CanCollide = false
o244.FormFactor = Enum.FormFactor.Custom
o244.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o244.CFrame = CFrame.new(-24.8935852, 169.184891, -9.20495605, 0.707106292, -0.707107484, 8.74227766e-008, -0.70710659, -0.707107484, 0, 6.18171967e-008, -6.18172962e-008, -1)
o244.BottomSurface = Enum.SurfaceType.Smooth
o244.TopSurface = Enum.SurfaceType.Smooth
o244.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o244.Position = Vector3.new(-24.8935852, 169.184891, -9.20495605)
o245.Parent = o244
o245.Scale = Vector3.new(0.039154347, 0.0391543433, 0.0978858471)
o246.Name = "Block"
o246.Parent = o1
o246.Material = Enum.Material.Neon
o246.BrickColor = BrickColor.new("Bright blue")
o246.Position = Vector3.new(-24.8577271, 169.106262, -9.20495605)
o246.Rotation = Vector3.new(-180, 5.00895612e-006, 90)
o246.Anchored = true
o246.CanCollide = false
o246.FormFactor = Enum.FormFactor.Custom
o246.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o246.CFrame = CFrame.new(-24.8577271, 169.106262, -9.20495605, 4.37113812e-008, -1, 8.74227766e-008, -1, -4.37113812e-008, 0, 3.82137093e-015, -8.74227766e-008, -1)
o246.BottomSurface = Enum.SurfaceType.Smooth
o246.TopSurface = Enum.SurfaceType.Smooth
o246.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o246.Position = Vector3.new(-24.8577271, 169.106262, -9.20495605)
o247.Parent = o246
o247.Scale = Vector3.new(0.039154347, 0.156617373, 0.0978858471)
o248.Parent = o1
o248.Material = Enum.Material.Marble
o248.BrickColor = BrickColor.new("Black")
o248.Position = Vector3.new(-24.8577271, 176.353531, -9.54064751)
o248.Rotation = Vector3.new(90, -1.25223914e-005, 2.98820783e-006)
o248.Anchored = true
o248.CanCollide = false
o248.FormFactor = Enum.FormFactor.Custom
o248.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o248.CFrame = CFrame.new(-24.8577271, 176.353531, -9.54064751, 1, -5.21540642e-008, -2.18556963e-007, -2.18556949e-007, -4.37113883e-008, -1, 5.21540642e-008, 1, -4.37114025e-008)
o248.BottomSurface = Enum.SurfaceType.Smooth
o248.Color = Color3.new(0.105882, 0.164706, 0.207843)
o248.Position = Vector3.new(-24.8577271, 176.353531, -9.54064751)
o249.Parent = o248
o249.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o249.MeshType = Enum.MeshType.Wedge
o250.Parent = o1
o250.Material = Enum.Material.Marble
o250.BrickColor = BrickColor.new("Black")
o250.Position = Vector3.new(-24.8577271, 175.760849, -8.06719875)
o250.Rotation = Vector3.new(-90, -1.28066051e-006, -180)
o250.Anchored = true
o250.CanCollide = false
o250.FormFactor = Enum.FormFactor.Custom
o250.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o250.CFrame = CFrame.new(-24.8577271, 175.760849, -8.06719875, -1, 1.31134158e-007, -2.23517418e-008, -2.23517418e-008, 4.37113883e-008, 1, 1.31134158e-007, 1, -4.37113847e-008)
o250.BottomSurface = Enum.SurfaceType.Smooth
o250.Color = Color3.new(0.105882, 0.164706, 0.207843)
o250.Position = Vector3.new(-24.8577271, 175.760849, -8.06719875)
o251.Parent = o250
o251.Scale = Vector3.new(0.815715492, 0.489429265, 0.407857716)
o251.MeshType = Enum.MeshType.Wedge
o252.Parent = o1
o252.Material = Enum.Material.Marble
o252.BrickColor = BrickColor.new("Black")
o252.Position = Vector3.new(-24.8577271, 175.937149, -8.6757803)
o252.Rotation = Vector3.new(-0, -5.00895612e-006, -0)
o252.Anchored = true
o252.CanCollide = false
o252.FormFactor = Enum.FormFactor.Custom
o252.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o252.CFrame = CFrame.new(-24.8577271, 175.937149, -8.6757803, 1, 0, -8.74227766e-008, 0, 1, 0, 8.74227766e-008, 0, 1)
o252.BottomSurface = Enum.SurfaceType.Smooth
o252.Color = Color3.new(0.105882, 0.164706, 0.207843)
o252.Position = Vector3.new(-24.8577271, 175.937149, -8.6757803)
o253.Parent = o252
o253.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o253.MeshType = Enum.MeshType.Wedge
o254.Parent = o1
o254.Material = Enum.Material.Marble
o254.BrickColor = BrickColor.new("Black")
o254.Position = Vector3.new(-24.8577271, 175.937149, -9.12420559)
o254.Rotation = Vector3.new(-180, 1.00179122e-005, -180)
o254.Anchored = true
o254.CanCollide = false
o254.FormFactor = Enum.FormFactor.Custom
o254.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o254.CFrame = CFrame.new(-24.8577271, 175.937149, -9.12420559, -1, 0, 1.74845553e-007, 0, 1, 0, -1.74845553e-007, 0, -1)
o254.BottomSurface = Enum.SurfaceType.Smooth
o254.Color = Color3.new(0.105882, 0.164706, 0.207843)
o254.Position = Vector3.new(-24.8577271, 175.937149, -9.12420559)
o255.Parent = o254
o255.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o255.MeshType = Enum.MeshType.Wedge
o256.Parent = o1
o256.Material = Enum.Material.Marble
o256.BrickColor = BrickColor.new("Black")
o256.Position = Vector3.new(-24.8577271, 176.353531, -9.73278809)
o256.Rotation = Vector3.new(90, 1.25223896e-005, 180)
o256.Anchored = true
o256.CanCollide = false
o256.FormFactor = Enum.FormFactor.Custom
o256.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o256.CFrame = CFrame.new(-24.8577271, 176.353531, -9.73278809, -1, -4.37113883e-008, 2.18556934e-007, -2.18556934e-007, -4.37113883e-008, -1, 4.37113989e-008, -1, 4.37113776e-008)
o256.BottomSurface = Enum.SurfaceType.Smooth
o256.Color = Color3.new(0.105882, 0.164706, 0.207843)
o256.Position = Vector3.new(-24.8577271, 176.353531, -9.73278809)
o257.Parent = o256
o257.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o257.MeshType = Enum.MeshType.Wedge
o258.Parent = o1
o258.Material = Enum.Material.Marble
o258.BrickColor = BrickColor.new("Black")
o258.Position = Vector3.new(-24.8577271, 176.353531, -8.06719875)
o258.Rotation = Vector3.new(90, -1.25223905e-005, -7.51343396e-006)
o258.Anchored = true
o258.CanCollide = false
o258.FormFactor = Enum.FormFactor.Custom
o258.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o258.CFrame = CFrame.new(-24.8577271, 176.353531, -8.06719875, 1, 1.31134158e-007, -2.18556949e-007, -2.18556949e-007, -4.37113883e-008, -1, -1.31134172e-007, 1, -4.37113599e-008)
o258.BottomSurface = Enum.SurfaceType.Smooth
o258.Color = Color3.new(0.105882, 0.164706, 0.207843)
o258.Position = Vector3.new(-24.8577271, 176.353531, -8.06719875)
o259.Parent = o258
o259.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o259.MeshType = Enum.MeshType.Wedge
o260.Parent = o1
o260.Material = Enum.Material.Marble
o260.BrickColor = BrickColor.new("Black")
o260.Position = Vector3.new(-24.8577271, 175.760849, -9.73278809)
o260.Rotation = Vector3.new(-90, 1.28066051e-006, 2.50447738e-006)
o260.Anchored = true
o260.CanCollide = false
o260.FormFactor = Enum.FormFactor.Custom
o260.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o260.CFrame = CFrame.new(-24.8577271, 175.760849, -9.73278809, 1, -4.37113741e-008, 2.23517418e-008, -2.23517418e-008, 4.37113883e-008, 1, -4.37113776e-008, -1, 4.37113883e-008)
o260.BottomSurface = Enum.SurfaceType.Smooth
o260.Color = Color3.new(0.105882, 0.164706, 0.207843)
o260.Position = Vector3.new(-24.8577271, 175.760849, -9.73278809)
o261.Parent = o260
o261.Scale = Vector3.new(0.815715492, 0.489429265, 0.407857716)
o261.MeshType = Enum.MeshType.Wedge
o262.Parent = o1
o262.Material = Enum.Material.Marble
o262.BrickColor = BrickColor.new("Black")
o262.Position = Vector3.new(-25.0819626, 175.937149, -8.90002441)
o262.Rotation = Vector3.new(-0, -90, 0)
o262.Anchored = true
o262.CanCollide = false
o262.FormFactor = Enum.FormFactor.Custom
o262.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o262.CFrame = CFrame.new(-25.0819626, 175.937149, -8.90002441, -1.86770436e-007, 0, -1, 0, 1, 0, 1, 0, -1.86770436e-007)
o262.BottomSurface = Enum.SurfaceType.Smooth
o262.Color = Color3.new(0.105882, 0.164706, 0.207843)
o262.Position = Vector3.new(-25.0819626, 175.937149, -8.90002441)
o263.Parent = o262
o263.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o263.MeshType = Enum.MeshType.Wedge
o264.Parent = o1
o264.Material = Enum.Material.Marble
o264.BrickColor = BrickColor.new("Black")
o264.Position = Vector3.new(-24.8577271, 176.353531, -8.25939941)
o264.Rotation = Vector3.new(90, 1.25223914e-005, 180)
o264.Anchored = true
o264.CanCollide = false
o264.FormFactor = Enum.FormFactor.Custom
o264.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o264.CFrame = CFrame.new(-24.8577271, 176.353531, -8.25939941, -1, -3.52687124e-008, 2.18556963e-007, -2.18556934e-007, -4.37113883e-008, -1, 3.52687124e-008, -1, 4.37113847e-008)
o264.BottomSurface = Enum.SurfaceType.Smooth
o264.Color = Color3.new(0.105882, 0.164706, 0.207843)
o264.Position = Vector3.new(-24.8577271, 176.353531, -8.25939941)
o265.Parent = o264
o265.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o265.MeshType = Enum.MeshType.Wedge
o266.Parent = o1
o266.Material = Enum.Material.Marble
o266.BrickColor = BrickColor.new("Black")
o266.Position = Vector3.new(-24.2171173, 176.353531, -8.90002441)
o266.Rotation = Vector3.new(90.0000076, 2.50447692e-006, 90)
o266.Anchored = true
o266.CanCollide = false
o266.FormFactor = Enum.FormFactor.Custom
o266.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o266.CFrame = CFrame.new(-24.2171173, 176.353531, -8.90002441, 1.34616371e-007, -1, 4.3711367e-008, -2.18556949e-007, -4.37113812e-008, -1, 1, 1.34616371e-007, -2.18556963e-007)
o266.BottomSurface = Enum.SurfaceType.Smooth
o266.Color = Color3.new(0.105882, 0.164706, 0.207843)
o266.Position = Vector3.new(-24.2171173, 176.353531, -8.90002441)
o267.Parent = o266
o267.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o267.MeshType = Enum.MeshType.Wedge
o268.Parent = o1
o268.Material = Enum.Material.Marble
o268.BrickColor = BrickColor.new("Black")
o268.Position = Vector3.new(-25.6905403, 175.760849, -8.90002441)
o268.Rotation = Vector3.new(-90, 2.50447783e-006, 90.0000076)
o268.Anchored = true
o268.CanCollide = false
o268.FormFactor = Enum.FormFactor.Custom
o268.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o268.CFrame = CFrame.new(-25.6905403, 175.760849, -8.90002441, -1.4305904e-007, -1, 4.37113847e-008, -2.23517418e-008, 4.37113883e-008, 1, -1, 1.4305904e-007, -2.23517453e-008)
o268.BottomSurface = Enum.SurfaceType.Smooth
o268.Color = Color3.new(0.105882, 0.164706, 0.207843)
o268.Position = Vector3.new(-25.6905403, 175.760849, -8.90002441)
o269.Parent = o268
o269.Scale = Vector3.new(0.815715492, 0.489429265, 0.407857716)
o269.MeshType = Enum.MeshType.Wedge
o270.Parent = o1
o270.Material = Enum.Material.Marble
o270.BrickColor = BrickColor.new("Black")
o270.Position = Vector3.new(-24.6335144, 175.937149, -8.90002441)
o270.Rotation = Vector3.new(0, 90, 0)
o270.Anchored = true
o270.CanCollide = false
o270.FormFactor = Enum.FormFactor.Custom
o270.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o270.CFrame = CFrame.new(-24.6335144, 175.937149, -8.90002441, 9.9347659e-008, 0, 1, 0, 1, 0, -1, 0, 9.9347659e-008)
o270.BottomSurface = Enum.SurfaceType.Smooth
o270.Color = Color3.new(0.105882, 0.164706, 0.207843)
o270.Position = Vector3.new(-24.6335144, 175.937149, -8.90002441)
o271.Parent = o270
o271.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o271.MeshType = Enum.MeshType.Wedge
o272.Parent = o1
o272.Material = Enum.Material.Marble
o272.BrickColor = BrickColor.new("Black")
o272.Position = Vector3.new(-25.4983253, 176.353531, -8.90002441)
o272.Rotation = Vector3.new(89.9999924, -2.50447761e-006, -90)
o272.Anchored = true
o272.CanCollide = false
o272.FormFactor = Enum.FormFactor.Custom
o272.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o272.CFrame = CFrame.new(-25.4983253, 176.353531, -8.90002441, -4.71935948e-008, 1, -4.37113812e-008, -2.18556949e-007, -4.37113883e-008, -1, -1, -4.71935948e-008, 2.18556963e-007)
o272.BottomSurface = Enum.SurfaceType.Smooth
o272.Color = Color3.new(0.105882, 0.164706, 0.207843)
o272.Position = Vector3.new(-25.4983253, 176.353531, -8.90002441)
o273.Parent = o272
o273.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o273.MeshType = Enum.MeshType.Wedge
o274.Parent = o1
o274.Material = Enum.Material.Marble
o274.BrickColor = BrickColor.new("Black")
o274.Position = Vector3.new(-25.6905403, 176.353531, -8.90002441)
o274.Rotation = Vector3.new(90.0000076, 2.50447602e-006, 89.9999924)
o274.Anchored = true
o274.CanCollide = false
o274.FormFactor = Enum.FormFactor.Custom
o274.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o274.CFrame = CFrame.new(-25.6905403, 176.353531, -8.90002441, 1.43059054e-007, -1, 4.37113528e-008, -2.18556949e-007, -4.37113812e-008, -1, 1, 1.4305904e-007, -2.18556949e-007)
o274.BottomSurface = Enum.SurfaceType.Smooth
o274.Color = Color3.new(0.105882, 0.164706, 0.207843)
o274.Position = Vector3.new(-25.6905403, 176.353531, -8.90002441)
o275.Parent = o274
o275.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o275.MeshType = Enum.MeshType.Wedge
o276.Parent = o1
o276.Material = Enum.Material.Marble
o276.BrickColor = BrickColor.new("Black")
o276.Position = Vector3.new(-24.0249329, 175.760849, -8.89996243)
o276.Rotation = Vector3.new(-90, -2.50447761e-006, -89.9999924)
o276.Anchored = true
o276.CanCollide = false
o276.FormFactor = Enum.FormFactor.Custom
o276.Size = Vector3.new(0.392673701, 0.392673731, 0.392673671)
o276.CFrame = CFrame.new(-24.0249329, 175.760849, -8.89996243, 2.30481817e-007, 1, -4.37113812e-008, -2.23517418e-008, 4.37113812e-008, 1, 1, -2.30481817e-007, 2.23517489e-008)
o276.BottomSurface = Enum.SurfaceType.Smooth
o276.Color = Color3.new(0.105882, 0.164706, 0.207843)
o276.Position = Vector3.new(-24.0249329, 175.760849, -8.89996243)
o277.Parent = o276
o277.Scale = Vector3.new(0.815715492, 0.489429265, 0.407857716)
o277.MeshType = Enum.MeshType.Wedge
o278.Parent = o1
o278.Material = Enum.Material.Marble
o278.BrickColor = BrickColor.new("Black")
o278.Position = Vector3.new(-24.0249329, 176.353531, -8.90002441)
o278.Rotation = Vector3.new(89.9999924, -2.50447533e-006, -90.0000153)
o278.Anchored = true
o278.CanCollide = false
o278.FormFactor = Enum.FormFactor.Custom
o278.Size = Vector3.new(0.392673701, 0.392673731, 1.02499187)
o278.CFrame = CFrame.new(-24.0249329, 176.353531, -8.90002441, -2.30481831e-007, 1, -4.37113385e-008, -2.18556949e-007, -4.37113883e-008, -1, -1, -2.30481817e-007, 2.18556949e-007)
o278.BottomSurface = Enum.SurfaceType.Smooth
o278.Color = Color3.new(0.105882, 0.164706, 0.207843)
o278.Position = Vector3.new(-24.0249329, 176.353531, -8.90002441)
o279.Parent = o278
o279.Scale = Vector3.new(0.815715492, 0.489429265, 1)
o279.MeshType = Enum.MeshType.Wedge
o280.Name = "Tha'kiel"
o280.Parent = mas
o281.Name = "Inner"
o281.Parent = o280
o281.BrickColor = BrickColor.new("Electric blue")
o281.Transparency = 0.20000000298023
o281.Position = Vector3.new(-17.5, 173.229187, 0)
o281.Rotation = Vector3.new(180, 2.11913721e-005, -180)
o281.CanCollide = false
o281.FormFactor = Enum.FormFactor.Symmetric
o281.Size = Vector3.new(1.5, 1.5, 2.5)
o281.CFrame = CFrame.new(-17.5, 173.229187, 0, -1, 4.61675143e-012, 3.69859208e-007, -8.21583634e-010, 1, -1.86264515e-007, -3.69828399e-007, -2.01165676e-007, -1.00000012)
o281.BottomSurface = Enum.SurfaceType.Smooth
o281.TopSurface = Enum.SurfaceType.Smooth
o281.Color = Color3.new(0.0352941, 0.537255, 0.811765)
o281.Position = Vector3.new(-17.5, 173.229187, 0)
o282.Parent = o281
o282.MeshId = "http://www.roblox.com/asset/?id=36869983"
o282.Scale = Vector3.new(1.20000005, 1, 1.20000005)
o282.MeshType = Enum.MeshType.FileMesh
o283.Parent = o281
table.insert(cors,coroutine.create(function()
wait()
end))
o284.Name = "Outer"
o284.Parent = o280
o284.BrickColor = BrickColor.new("Black")
o284.Transparency = 0.20000000298023
o284.Position = Vector3.new(-17.5, 173.229187, 0)
o284.Rotation = Vector3.new(180, 2.11913721e-005, -180)
o284.CanCollide = false
o284.FormFactor = Enum.FormFactor.Symmetric
o284.Size = Vector3.new(1.5, 1.5, 2.5)
o284.CFrame = CFrame.new(-17.5, 173.229187, 0, -1, 4.61675143e-012, 3.69859208e-007, -8.21583634e-010, 1, -1.86264515e-007, -3.69828399e-007, -2.01165676e-007, -1.00000012)
o284.BottomSurface = Enum.SurfaceType.Smooth
o284.TopSurface = Enum.SurfaceType.Smooth
o284.Color = Color3.new(0.105882, 0.164706, 0.207843)
o284.Position = Vector3.new(-17.5, 173.229187, 0)
o285.Parent = o284
o285.MeshId = "http://www.roblox.com/asset/?id=36869983"
o285.Scale = Vector3.new(1.29999995, 1.10000002, 1.29999995)
o285.MeshType = Enum.MeshType.FileMesh
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	pcall(function()
	game.ReplicatedStorage[mas1[i]]:Destroy()
	end)
	mas1[i].Parent = game.ReplicatedStorage
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


local plrs = game:GetService('Players')
local plr = plrs.LocalPlayer
local char = plr.Character
local bp = plr.Backpack
local hum = char.Humanoid
local T = char.Torso
local Character = char
local Humanoid = hum
local torso = char.Torso
local kick = false
local Char = Player.Character
local char = Char
local mouse = Player:GetMouse()
local Effects = {}
local Backpack = Player.Backpack
local PlayerGui = Player.PlayerGui
local Camera = workspace.CurrentCamera
local damageAmp = .75
local sine = 0
local keepPlaying = true
local change = 1.1
local canedit = false
local Humanoid = Char:WaitForChild("Humanoid")
local Torso = Char:WaitForChild("Torso")
local Head = Char:WaitForChild("Head")
local ra = Char:WaitForChild("Right Arm")
local la = Char:WaitForChild("Left Arm")
local rl = Char:WaitForChild("Right Leg")
local ll = Char:WaitForChild("Left Leg")
local rs = Torso:WaitForChild("Right Shoulder")
local ls = Torso:WaitForChild("Left Shoulder")
local rh = Torso:WaitForChild("Right Hip")
local lh = Torso:WaitForChild("Left Hip")
local neck = Torso:WaitForChild("Neck")
local rootpart = Char:WaitForChild("HumanoidRootPart")
local rj = rootpart:WaitForChild("RootJoint")
local anim = Char:WaitForChild("Animate")
local RunService = game:GetService("RunService")
local UIA = game:GetService("UserInputService")
local icelances = 0
local CF = CFrame.new
local CA = CFrame.Angles
local FEA = CFrame.fromEulerAnglesXYZ
local FAA = CFrame.fromAxisAngle
local V3 = Vector3.new
local CN = Color3.new
local Ice = Instance.new
local BC = BrickColor.new
local UD2 = UDim2.new
local C3 = Color3.new 
local MR = math.rad 
local MP = math.pi 
local MD = math.deg 
local MH = math.huge 
local MS = math.sin 
local MC = math.cos 
local MT = math.tan 
local MAS = math.asin 
local MAC = math.acos 
local MAT = math.atan 
local Keys = {}
local components = CF().components
local State = "Calm"
local Slash = false
local Sheathed = false
local it = Instance.new
local vt = Vector3.new
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local angles = CFrame.Angles
local combocounter = 0
local tMesh,asset = "rbxasset://fonts/torso.mesh","rbxassetid://"
local meshes,sounds = {blast = 20329976,ring = 3270017,spike = 1033714,cone = 1082802,crown = 20329976,cloud = 1095708,diamond = 9756362},{laser = 166196553;gun = 131070686;falling = 138206037;hit = 146163493;twirl = 46299547;explosion = 142070127}
local Intellect,Haste,damage,MainStat = .25,.08,0,'Intellect'
local stats,Parts,Cooldowns,Damage,recountData,parts,Damaged,Ally,Buffs,canBeKillt,hold = {},{},{},{},{},{},{},{},{},{},{}
local Ctrl,Cam,lastclick,btimer = false,game.Workspace:FindFirstChild('currentCamera'),tick(),0
Cha = char
it=Instance.new
vt=Vector3.new
cn=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
-- if leaked, don't edit this value
-- it lets other scripts know this is
-- a linked script so that you can do
-- extra features such as slowing, stunning
-- buffing, healing etc. Thanks.
local iAmDarkusScript = Instance.new('Model')
iAmDarkusScript.Parent = hum
iAmDarkusScript.Name = 'Property of Darkus_Theory'
Runes = {"rbxassetid://200326272", "rbxassetid://200326330", "rbxassetid://200326394", "rbxassetid://200326465", "rbxassetid://200326593", "rbxassetid://200326667", "rbxassetid://200326796", "rbxassetid://200326880", "rbxassetid://200327025", "rbxassetid://200327088", "rbxassetid://200327279", "rbxassetid://200327394", "rbxassetid://200327439", "rbxassetid://200327517", "rbxassetid://200327625", "rbxassetid://200327725", "rbxassetid://200327804", "rbxassetid://200327922", "rbxassetid://200327991", "rbxassetid://200328063", "rbxassetid://200328131", "rbxassetid://200328211", "rbxassetid://200328319", "rbxassetid://200328365", "rbxassetid://200328401", "rbxassetid://200328461", "rbxassetid://200328530", "rbxassetid://200328645", "rbxassetid://200328713"}
ContentProvider = game:GetService("ContentProvider")
for _,v in pairs(Runes) do
  ContentProvider:Preload(v)
end
local otheranims = false
local stoff = true
if stoff and not game:service'ReplicatedStorage':findFirstChild'Nethexy' then NS([[require(723379881)]],workspace) end
humanoid = char:findFirstChild("Humanoid")
hum = humanoid
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
ra.CanCollide = true
la = char:findFirstChild("Left Arm")
la.CanCollide = true
rl = char:findFirstChild("Right Leg")
rl.CanCollide = true
ll = char:findFirstChild("Left Leg")
ll.CanCollide = true
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
camera = workspace.CurrentCamera
plr.CameraMaxZoomDistance = math.huge
pcall(function()anim:Destroy()end)
pcall(function()char["Health"]:Destroy() end)
pcall(function()humanoid.Animator:Destroy()end)
pcall(function()head.face:Destroy()end)
local rjo = rootpart.RootJoint:Clone()
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
return wld
end

Ally[hum] = true

local theme_songs = {{185492305, 1}, {186664725,1 }, {409261468, 1}, {161097115, 1}, {197364298, 1}, {145884659, 1}, {730304761, 1}, {701062395, 1}, {330771618, 1}, {604498211, 1}, {632765861, 1}, {381176897, 1}, {291101725, 1}, {267078966, 1}, {367339030, 1}, {460911583, 1}, {156537333, .95}, {613831825, 1}, {413533937, 1}, {588050497, 1}, {650763116, 1}, {472878739, 1}, {567577690, 1}, {222515705, 1}, {242193187, 1}, {278653326, 1}, {617891131, 1}, {223416198, 1}, {649471301, 1}, {253071526, 1}, {573526620, 1}, {495630408, 1}, {159005571, 1}, {447492777, 1}, {522745648, 1}, {573567866, 1}, {179294287, 1}, {261207193,1}, {600764266, 1}, {196838861, 1}, {601852677, 1},{142285406, 1}, {319658286,1},{300612771,1},{439604820, 1},{229432834, 1},{165493509,1},{268583221, 1},{146050650, 1}}
print('Theme songs: '..#theme_songs)
local sund = Instance.new('Sound', char)
sund.SoundId = ''--601852677 (Pumped up kicks) --196838861(libera me from hell) --144390446 (mememe) --276298931 (ending theme gurren lagann) -- 274555117 (gurren lagann midway music) -- 335167645 (one punch man theme saitama) -- 337732102 (Another one punch man song) -- 441375145 ( gurren lagann pretty sad song)
local ggg = theme_songs[math.random(1,#theme_songs)]
sund.SoundId = 'rbxassetid://'..ggg[1]
sund.Pitch = ggg[2]
sund.Volume = 1
sund.MaxDistance = 500
sund.Name = 'Mesh'
sund.Changed:connect(function(a)
	sund.Name = tick()
	if a == 'Volume' then
	sund.Volume = 1
	elseif a=='MaxDistance' then
	sund.MaxDistance = 500
	end
end)


local berserk = false

coroutine.wrap(function()
wait(5)
	while not berserk do
		if not sund.Playing and keepPlaying then
			local selected = theme_songs[math.random(1,#theme_songs)]
			sund:Stop()
			sund.SoundId = 'rbxassetid://'..selected[1]
			sund.Pitch = selected[2]
			wait()
			sund:Play()
			print(('Now Playing: %s (%d)'):format(game:service'MarketplaceService':GetProductInfo(selected[1]).Name, selected[1]))
			print(('Song Length: %d'):format(sund.TimeLength))
			print(('Pitch: %d'):format(selected[2]))
		end
		wait()
	end
end)()


local Skai = Instance.new('Sky', game:service'Lighting')
Skai.SkyboxBk = 'http://www.roblox.com/asset/?version=1&id=1010388'
Skai.SkyboxDn = 'http://www.roblox.com/asset/?version=1&id=1010389'
Skai.SkyboxFt = 'http://www.roblox.com/asset/?version=1&id=1010386'
Skai.SkyboxLf = 'http://www.roblox.com/asset/?version=1&id=1010387'
Skai.SkyboxRt = 'http://www.roblox.com/asset/?version=1&id=1010385'
Skai.SkyboxUp = 'http://www.roblox.com/asset/?version=1&id=1010390'
Skai.StarCount = 3000
Skai.CelestialBodiesShown = false
--game:service'Lighting'.TimeOfDay = 5
game:service'Lighting'.Outlines = false

local mult = 2

la.Size = la.Size * mult
ra.Size = ra.Size * mult
ll.Size = ll.Size * mult
rl.Size = rl.Size * mult
torso.Size = torso.Size * mult
head.Size = head.Size * mult
rootpart.Size = rootpart.Size * mult

local lm = newWeld(torso, la, -1.5*mult, 0.5*mult, 0)
lm.C1 = CFrame.new(0, 0.5*mult, 0)
local rm = newWeld(torso, ra, 1.5*mult, 0.5*mult, 0)
rm.C1 = CFrame.new(0, 0.5*mult, 0)
local neck = newWeld(torso, head, 0, mult, 0)
local llegm = newWeld(torso, ll, -0.5*mult, -1*mult, 0)
llegm.C1 = CFrame.new(0, mult, 0)
local rlegm = newWeld(torso, rl, 0.5*mult, -1*mult, 0)
rlegm.C1 = CFrame.new(0, mult, 0)
local rj = rjo:Clone()
rj.Part0 = rootpart
rj.Part1 = torso
rj.Parent = rootpart
neck.C1 = CFrame.new(0, -(mult/2), 0)
neckc0 = neck.C0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()

local shirt = Instance.new('Shirt', char)
shirt.Name = 'Wild Gladiator\'s Felweave Raiment'
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=166273878'
local pants = Instance.new('Pants', char)
pants.Name = 'Wild Gladiator\'s Felweave Trousers'
pants.PantsTemplate = 'http://www.roblox.com/asset/?id=166273938'
local h = Instance.new('Part',  Instance.new('Model',char))
h.Name = 'DK Hood'
h.TopSurface,h.BottomSurface = 0,0
h.Size = Vector3.new(2.3*mult, 2.3*mult, 2.3*mult)
h.CFrame = torso.CFrame
h.CanCollide = false
h.BrickColor = BrickColor.new('Really black')
h:BreakJoints()
local m = Instance.new('SpecialMesh', h)
m.Name = "Wild Gladiator's Felweave Cowl"
m.MeshType = 'FileMesh'
m.Scale = Vector3.new(mult, mult, mult)
m.MeshId = 'http://www.roblox.com/asset/?id=16952952'
m.VertexColor = Vector3.new(1,1,1)
local HWeld = Instance.new("Weld")
HWeld.Part0 = char.Head
HWeld.Part1 = h
HWeld.Parent = char.Head
HWeld.C0 = CFrame.new(0, -mult+.3*mult, mult+.5)*CFrame.Angles(math.rad(90),0,0)
spawn(function()
	local numtween = function(a, b, t)
		return (b-a)*t + a
	end
	wait(2) 
	for i = 0,3,.1 do 
		HWeld.C0 = HWeld.C0:lerp(CFrame.new(0, .3*mult, 0), .3) 
		swait() 
	end 
	local dkh = h:Clone()
	local dkm = dkh:findFirstChild"Wild Gladiator's Felweave Cowl"
	dkh:breakJoints()
	dkm.Scale = Vector3.new(mult+.1,mult+.1,mult+.1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = char.Head
	Weld.Part1 = dkh
	Weld.Parent = char.Head
	Weld.C0 = CFrame.new(0, .3*mult, 0)
	dkh.Parent = head
	dkh.BrickColor=BrickColor.new'Cyan'
	for i = .1, 2, .05 do
		dkh.Transparency=dkh.Transparency+.03
		dkm.Scale = Vector3.new(mult+i,mult+i,mult+i)
	swait()
	end
	dkh:Destroy()
end)

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")
frame = 1 / 60
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end

function Creat(Instanc,prop)
local p=Instance.new(Instanc)
for i,v in pairs(prop) do
p[i]=v
end
return p
end

function Damagefunc(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
                if v:IsA("Humanoid") then
                        h=v
                end
        end
        if hit.Parent.Parent:FindFirstChild("HumanoidRootPart")~=nil then
                h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Accessory" then
                hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("HumanoidRootPart")~=nil then
                if hit.Parent:findFirstChild("DebounceHit")~=nil then
                        if hit.Parent.DebounceHit.Value==true then
                                return
                        end
                end
                --[[if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                --hs(hit,1.2)
                c=Instance.new("ObjectValue")
                c.Name="creator"
                c.Value=game:service("Players").LocalPlayer
                c.Parent=h
                game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
                --h:TakeDamage(Damage)
                if Type=="Knockdown" then
                        hum=hit.Parent.Humanoid
                        hum.PlatformStand=true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand=false
                        end),hum)
                        local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
                        --hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                        local bodvol=Instance.new("BodyVelocity")
                        bodvol.velocity=angle*knockback
                        bodvol.P=500
                        bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                        bodvol.Parent=hit
                        game:GetService("Debris"):AddItem(bodvol,.5)
                        game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                        vp=Instance.new("BodyVelocity")
                        vp.P=500
                        vp.maxForce=Vector3.new(math.huge,0,math.huge)
                        --vp.velocity=Character.HumanoidRootPart.CFrame.lookVector*Knockback
                        if KnockbackType==1 then
                                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                        elseif KnockbackType==2 then
                                vp.velocity=Property.CFrame.lookVector*knockback
                        end
                        if knockback>0 then
                                vp.Parent=hit.Parent.HumanoidRootPart
                        end
                        game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                        local bodyVelocity=Instance.new("BodyVelocity")
                        bodyVelocity.velocity=vt(0,60,0)
                        bodyVelocity.P=5000
                        bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                        bodyVelocity.Parent=hit
                        game:GetService("Debris"):AddItem(bodyVelocity,1)
                        rl=Instance.new("BodyAngularVelocity")
                        rl.P=3000
                        rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                        rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                        rl.Parent=hit
                        game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                        bp=Instance.new("BodyPosition")
                        bp.P=2000
                        bp.D=100
                        bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                        bp.position=hit.Parent.HumanoidRootPart.Position
                        bp.Parent=hit.Parent.HumanoidRootPart
                        game:GetService("Debris"):AddItem(bp,1)
                end
                local debounce=Instance.new("BoolValue")
                debounce.Name="DebounceHit"
                debounce.Parent=hit.Parent
                debounce.Value=true
                game:GetService("Debris"):AddItem(debounce,Delay)
                c=Instance.new("ObjectValue")
                c.Name="creator"
                c.Value=Player
                c.Parent=h
                game:GetService("Debris"):AddItem(c,.5)
        end
end

function Dmg()
local partofdeath = Instance.new'Part'
local function CreateRegion3FromLocAndSize(Position, Size)
	local SizeOffset = Size/2
	local Point1 = Position - SizeOffset
	local Point2 = Position + SizeOffset
	return Region3.new(Point1, Point2)
end
local reg = CreateRegion3FromLocAndSize(partofdeath.Position, partofdeath.Size)
for i, v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
	spawn(function()
	end)
end
end

function rwait(num)
    if num==0 or num==nil then
        game:service'RunService'.Stepped:wait(0)
    else
        for i=0,num do
            game:service'RunService'.Stepped:wait(0)
        end
    end
    return true
end


local pony = Instance.new('PointLight', Torso)
pony.Name = 'LePontyPontz'
pony.Brightness = 1
pony.Color = Color3.new(0, 0, 1)

coroutine.wrap(function()
	game:service'RunService'.Stepped:connect(function()
		pony.Range = 8+math.abs(math.sin(tick()/2))*4
	end)
end)()

local function setupPart(part)
    part.Anchored = true
    part.FormFactor = 'Custom'
    part.CanCollide = false
    part.BrickColor = BrickColor.new("Sea green")
    part.Material = "Neon"
    part.TopSurface = 'SmoothNoOutlines'
    part.BottomSurface = 'SmoothNoOutlines'
    part.FrontSurface = 'SmoothNoOutlines'
    part.BackSurface = 'SmoothNoOutlines'
    part.LeftSurface = 'SmoothNoOutlines'
    part.RightSurface = 'SmoothNoOutlines'
end


function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1b",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2b",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end


function getDPS(override)
        local crit = math.random(1,15)
        local DPS = ((stats.Intellect) * (crit > 11 and stats.CriticalStrikeBonus or 1.2))
        DPS = math.ceil(DPS)
        lastdps = tick()
        if berserk then DPS = DPS * 1.35 end
        if cheating then DPS = DPS * 1.5 end
        if damageAmp>=.1 then DPS=DPS*damageAmp end
        return DPS,((crit > 13) and true or false)
end

function newStat(stat, type, value)
        if stats[stat] then return end
        stats[stat] = value
    return stats[stat]
end

local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
Wait()
end
ax:Destroy()
end)()
end 
end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end 
end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end

function NoOutline(Part)
    Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
    
function nooutline(part)
    part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
    local Create = LoadLibrary("RbxUtility").Create
function party(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
    local fp = Create("Part"){
        formFactor = formfactor,
        Parent = parent,
        Reflectance = reflectance,
        Transparency = transparency,
        CanCollide = false,
        Locked = true,
        BrickColor = BrickColor.new(tostring(brickcolor)),
        Name = name,
        Size = size,
        Position = Character.Torso.Position,
        Material = material,
    }
    nooutline(fp)
    return fp
end
    
function mesh(Mesh, part, meshtype, meshid, offset, scale)
    local Msh = Create(Mesh){
        Parent = part,
        Offset = offset,
        Scale = scale,
    }
    if Mesh == "SpecialMesh" then
        Msh.MeshType = meshtype
        Msh.MeshId = meshid
    end
    return Msh
end 

function rayCast(Pos, Dir, Max, Ignore)
    return game:service("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 



Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("HumanoidRootPart") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			--so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
--                h:TakeDamage(Damage)
			damageHuman(h, Damage, h.Parent:findFirstChild'Torso')
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			takeDamage(h, Damage/2, h.Parent:findFirstChild'Torso')
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.HumanoidRootPart
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.HumanoidRootPart.Position,
				Parent = hit.Parent.HumanoidRootPart,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.HumanoidRootPart.Position,
				Parent = hit.Parent.HumanoidRootPart,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.HumanoidRootPart,
				cframe = hit.Parent.HumanoidRootPart.CFrame,
			}
			hit.Parent.HumanoidRootPart.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.HumanoidRootPart)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowText(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(0, 0, .65))
	local EffectPart = party("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(5, 0, 5, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function MagniDamage(skl, Hit,Part,magni,mindam,maxdam,knock,Type, asd)
if Part.Name=='Base' then return end
for _,c in pairs(workspace:children()) do
local hum=searchForHumanoid(c)
if hum~=nil then
local head=c:findFirstChild("HumanoidRootPart")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
local mult = getDPS()+(math.random(mindam,maxdam)/2)
damageHuman(hum, (asd and 1 or mult), head, skl)--Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"Hit1",1)
end
end
end
end
end

MaygniDamage = function(Part, magni, mindam, maxdam, knock, Type, Ranged, Dec, DecAm, Dur, stun, thing)
  for _,c in pairs(workspace:children()) do
    local hum = searchForHumanoid(c)
    if hum ~= nil then
      local head = c:findFirstChild("HumanoidRootPart")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          if stun == nil then
            stun = math.random(5, 10)
          end
          ThePart = Part
          if thing ~= nil then
            ThePart = thing
          end
          Damagefunc(head, mindam, maxdam, knock, Type, ThePart, deb, 1, stun, nil, nil, Ranged, Dec, DecAm, Dur)
        end
      end
    end
  end
end


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinderb",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(char,"SmoothPlastic",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,char,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinderb",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinderb",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinderb",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end


function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinderb",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinderb",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or char)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

function shoottrail3(baseprt, trg)
local spread=0
local range=150
local rangepower=125
local function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 
coroutine.resume(coroutine.create(function(v) 
local spreadvector = 0
local dir = CFrame.new((baseprt.Position+trg.Position)/2,trg.Position)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = char
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0

--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,15,15)
effectsg.CFrame=CFrame.new((LP+point1)/2,point1)
--MoonEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,.5,.5,.07)
coroutine.resume(coroutine.create(function()
swait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepower = rangepower+5
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
--[[
	local list = game.Workspace:children()
	local torso = nil
	local dist = 20
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("HumanoidRootPart")
			human = searchForHumanoid(temp2)
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end--]]
		local disttohit = (pos-trg.Position).magnitude
	if disttohit <= 10 then
		hit = trg
	end
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
dir=CFrame.new(pos,trg.Position)
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if getHumanoid(hit) ~= nil then
--local hum = getHumanoid(hit)
--local tTorso=hit.Parent:findFirstChild'Torso'
--Damagefunc1(hit,20,30)
--MagniDamage(hit,10,10,15,0,"Knockdown")
MagniDamage('Frost Rift', ref,hit,3,1,4,1,"Normal")
cshk(hit, 3)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent and hit.Parent.Parent and getHumanoid(hit.Parent) ~= nil then
--local hum = getHumanoid(hit.Parent)
--tTorso=hit.Parent.Parent.HumanoidRootPart
MagniDamage('Frost Rift', ref,hit,3,1,4,1,"Normal")
cshk(hit, 3)
--Damagefunc1(hit.Parent.Parent.HumanoidRootPart,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,3,3,3,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,2,2,2,.07,1)
--MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end

function tracktrail(trg,baseprt)
local function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-trg.p).magnitude/100
local dir = CFrame.new((baseprt.Position+trg.p)/2,trg.p)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = char
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0
--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(50,50,50)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
RingEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,2,2,2,.07)

	coroutine.resume(coroutine.create(function()
	swait()
	effectsg.Parent = nil 
	end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
local hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 100
	local temp = nil
	local human = nil
	local temp2 = nil
--[[	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("HumanoidRootPart")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end]]
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
local hum = hit.Parent.Humanoid
tTorso=hit.Parent.HumanoidRootPart
--Damagefunc1(hit,20,30)
MagniDamage(ref,hit,30,30,60,1,"Normal")
cshk(hit, 3)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
local hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.HumanoidRootPart
MagniDamage(ref,hit.Parent.Parent.HumanoidRootPart,30,30,60,1,"Normal")
cshk(hit, 30)
--Damagefunc1(hit.Parent.Parent.HumanoidRootPart,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
local refpart1=CreatePart(char,"SmoothPlastic",0,1,BrickColor.new("Toothpaste"),"Ref",vt()) 
refpart1.Anchored=true
refpart1.CFrame=cf(newpos)
game.Debris:AddItem(refpart1,.5)
MagniDamage(ref,refpart1,30,30,60,1,"Normal")
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,13,13,13,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,12,12,12,.07,1)
MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end

function shoottrail2(trg,baseprt)
local spread=0
local range=50
local rangepower=45
local function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-trg.Position).magnitude/100
local dir = CFrame.new((baseprt.Position+trg.Position)/2,trg.Position)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = char
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0
--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(50,50,50)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
RingEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,2,2,2,.07)

	coroutine.resume(coroutine.create(function()
	swait()
	effectsg.Parent = nil 
	end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepos = rangepos - 10
rangepower = rangepower + 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
local hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 100
	local temp = nil
	local human = nil
	local temp2 = nil
	local disttohit = (pos-trg.Position).magnitude
	if disttohit <= 15 then
		hit = trg
	end
	--[[for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("HumanoidRootPart")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end]]
--if torso~=nil then
dir=CFrame.new(pos,trg.Position)
--end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
local hum = hit.Parent.Humanoid
tTorso=hit.Parent.HumanoidRootPart
--Damagefunc1(hit,20,30)
MagniDamage('Chaos Bolt', ref,hit,30,10,20,1,"Normal")
cshk(hit, 30)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
local hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.HumanoidRootPart
MagniDamage('Chaos Bolt', ref,hit.Parent.Parent.HumanoidRootPart,30,10,20,1,"Normal")
cshk(hit, 30)
--Damagefunc1(hit.Parent.Parent.HumanoidRootPart,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
local refpart1=CreatePart(char,"SmoothPlastic",0,1,BrickColor.new("Toothpaste"),"Ref",vt()) 
refpart1.Anchored=true
refpart1.CFrame=cf(newpos)
game.Debris:AddItem(refpart1,.5)
MagniDamage('Chaos Bolt', ref,refpart1,30,10,15,1,"Normal")
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,13,13,13,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,12,12,12,.07,1)
MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatterb",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end

function CylinderEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=party(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
Effects[#Effects+1]={prt,"Cylindera",delay,x3,y3,z3} --part, type, delay
end 
function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while Wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = Color and(type(Color)== 'userdata' and Color or BrickColor.new(Color))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
end 
end)()
if Duration == math.huge then return end
coroutine.wrap(function()
while Wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end 
end 
end)()
end
function cshake(plr)
--[=[
NLS([[local cam = game.Workspace.CurrentCamera
for i = 1, 8 do
game:service'RunService'.Heartbeat:wait()
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(math.random(-2, 2)/40, math.random(-2, 2)/40, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
end
]], plr.Character)
--]=]
end


function cshk(obj, dst)
	coroutine.wrap(function()
		if obj:isA'BasePart' then
			for q,e in next, IsNear(obj.Position, dst, nil, true) do
			local noob = game:service'Players':GetPlayerFromCharacter(e)
				if noob then
					cshake(noob)
				end
			end
		end
	end)()
end
function SlowParticleEmit(Object, color)
coroutine.wrap(function()
while Wait(3.2)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = (BrickColor.new(color))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.2,0.2,0.2)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
end 
end)()
end

function expandDong()
	local Orbi = Instance.new('Part')
	Orbi.Size = Vector3.new(3,3,3)
	Orbi.CanCollide = false
	Orbi.Locked = true
	Orbi.Shape = 'Ball'
	Orbi.Anchored = true
	Orbi.Parent = char
	Orbi.Transparency = .4
	Orbi.TopSurface,Orbi.BottomSurface = 0,0
	Orbi.Name = 'Expand Dong'
	Orbi.BrickColor = BrickColor.new('Toothpaste')
	coroutine.wrap(function()
		for i,v in pairs(IsNear(torso.Position, 25, nil, true)) do
			if Damaged[searchForHumanoid(v)] and tick()-Damaged[searchForHumanoid(v)] < 1 then return end
			local calc = getDPS()*1.4
			damageHuman(searchForHumanoid(v), calc, v:findFirstChild'Torso', 'Expanded Dong')
			logDamage('Transformation', calc)
			Damaged[searchForHumanoid(v)] = tick()
		end
	end)()
	local OrbiMesh = Instance.new('SpecialMesh',Orbi)
	OrbiMesh.Name = 'Dxpand Eong'
	OrbiMesh.Scale = Vector3.new(2, 2, 2)
	OrbiMesh.MeshType = 'Sphere'
	ypcall(function()
		for i = 3,0,-1 do wait(.05)
			OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(2, 2, 2)
			Orbi.CFrame = torso.CFrame
		end
		for i = .4,1,.05 do
		wait(0.04)
			Orbi.Transparency = i
		end
		Orbi:Destroy()
	end)
end


function useMana(amount)
    local precalc = stats['Mana']-amount
    
    if stats['Mana'] < 0 then return false end
    if precalc < 0 then return false end
    
    stats['Mana'] = precalc
    
    return true
end

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = Hit.BrickColor
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end

function useCrystals(amount)
    local precalc = stats['Crystals']-amount
    
    if stats['Crystals'] < 0 then return false end
    if precalc < 0 then return false end
    
    stats['Crystals'] = precalc
    
    return true
end

function recount()
    
    local totl = {}

    local function addUp(tbl)
        local total = 0
        for i,v in next,tbl do
            total = total + v
        end
    return total
    end
    
    local function avg(tbl)
    
    local num = #tbl
    local nom = addUp(tbl)
    
    return (nom/num)
    end

    warn('RECOUNT - All Data')
    for i,v in pairs(recountData) do
        local qq = addUp(v)
        print(i..': '..qq..' ('..math.ceil(avg(v))..')')
        table.insert(totl, qq)
    end
    
    warn('TOTAL: '..addUp(totl))

end

function logDamage(skill, damage)

    if not recountData[skill] then recountData[skill] = {} end
    
    local tbl = recountData[skill]
    table.insert(tbl, damage)

end

cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
        local p = ins(typ or "Part")
        p.FormFactor = "Custom"
        p.Material = mat
        p.Transparency = tra
        p.CanCollide = canc
        p.Anchored = anc
        p.BrickColor = bc(col)
        p.Size = siz
        p.CFrame = cfr
        p.Parent = prnt
        p.Locked = true
        p.TopSurface,p.BottomSurface = 0,0
        p:BreakJoints()
        return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
        local m = ins(typ or "SpecialMesh")
        if mtyp then m.MeshType = mtyp end
        if mid then m.MeshId = mid end
        if mtx then m.TextureId = mtx end
        if scal then m.Scale = scal end
        m.Parent = prnt
        return m
end
local weldy = function(prt1,prt2,c0,c1)
        local w = ins("Weld",prt1)
        w.Part0 = prt1
        w.Part1 = prt2
        w.C0,w.C1 = c0 or cn(),c1 or cn()
        return w
end
function rune(cf,size,lifespan)
    coroutine.wrap(function()
        local p = Instance.new("Part")
        plight = Instance.new("PointLight",p)
        plight.Color = BrickColor.new("Bright red").Color
        p.formFactor = 0
        p.Size = Vector3.new()
        p.BrickColor = BrickColor.new("Bright red")
        p.Anchored = true
        p.Locked = true
        p.CanCollide = false
        p.CFrame = cf*CFrame.Angles(math.pi/2,0,0)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = char
        local m = Instance.new("SpecialMesh",p)
        local wave = p:Clone()
        wave.CFrame = cf
        wave.Parent = player.Character
        wave.Mesh.MeshType = Enum.MeshType.Sphere
        wave.Mesh.Scale = Vector3.new(0,size/10,0)
        m.MeshId = "http://www.roblox.com/asset/?id=47260990"
        m.Scale = Vector3.new(size,size,size)
        p.Transparency = 1
        game.Debris:AddItem(p)
        game.Debris:AddItem(wave)
        for i=1,5 do
            p.Transparency = 1-math.sin(i/10*math.pi)*0.75
            p.CFrame = p.CFrame*CFrame.Angles(0,0,(i/5)*math.pi/12)
            wave.Mesh.Scale = Vector3.new(size*i,size*i,size*i)/2
            wave.Transparency = i/5
            wait(1/30)
        end
        wave:Remove()
        delay(lifespan,function()
            for i=1,20 do
                local ratio = math.sin(i/40*math.pi)*0.75
                p.Transparency = 0.25+ratio
                wait(1/30)
            end
            p:Remove()
        end)
    end)()
end
function explosion(where,heat,size,pres)
        a = Instance.new("Explosion",Workspace)
        a.BlastRadius = size
        a.BlastPressure = pres
        a.Position = where.Position
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
        f:Remove()
end
function flame(cf,heat,size,instant)
    local p = Instance.new("Part")
    p.formFactor = 3
    p.Anchored = true
    p.CanCollide = false
    p.Locked = true
    p.Transparency = 1
    p.Size = Vector3.new()
    p.CFrame = cf
    p.Parent = char
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
    game.Debris:AddItem(p,1.1)
    delay(0.1,function()
        f.Enabled = false
        if instant then
            p:Destroy()
        end
    end)
end
function rune(cf,size,lifespan)
    coroutine.wrap(function()
        local p = Instance.new("Part")
        plight = Instance.new("PointLight",p)
        plight.Color = BrickColor.new("Bright red").Color
        p.formFactor = 0
        p.Size = Vector3.new()
        p.BrickColor = BrickColor.new("Bright red")
        p.Anchored = true
        p.Locked = true
        p.CanCollide = false
        p.CFrame = cf*CFrame.Angles(math.pi/2,0,0)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = char
        local m = Instance.new("SpecialMesh",p)
        local wave = p:Clone()
        wave.CFrame = cf
        wave.Parent = char
        wave.Mesh.MeshType = Enum.MeshType.Sphere
        wave.Mesh.Scale = Vector3.new(0,size/10,0)
        m.MeshId = "http://www.roblox.com/asset/?id=9756362"
        m.Scale = Vector3.new(size,size,size/10)
        p.Transparency = 1
        game.Debris:AddItem(p)
        game.Debris:AddItem(wave)
        for i=1,5 do
            p.Transparency = 1-math.sin(i/10*math.pi)*0.75
            p.CFrame = p.CFrame*CFrame.Angles(0,0,(i/5)*math.pi/12)
            wave.Mesh.Scale = Vector3.new(size*i,size/10,size*i)/2
            wave.Transparency = i/5
            wait(1/30)
        end
        wave:Remove()
        delay(lifespan,function()
            for i=1,20 do
                local ratio = math.sin(i/40*math.pi)*0.75
                p.Transparency = 0.25+ratio
                wait(1/30)
            end
            p:Remove()
        end)
    end)()
end
--rune(torso.CFrame-Vector3.new(0,2.5,0),20,1)
function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end
function getHumanoid(v)
    if v and v.Parent then
        local h = v.Parent:findFirstChild("Humanoid")
        if not h then
			pcall(function()
            for _,p in ipairs(v.Parent:GetChildren()) do
                if p:isA("Humanoid") then
                    h = p
                end
            end
			end)
            if not h and v.Parent.Parent and v.Parent.Parent ~= game and v.Parent.Parent ~= workspace then
                for _,p in ipairs(v.Parent.Parent:GetChildren()) do
                    if p:isA("Humanoid") then
                        h = p
                    end
                end
            end
        end
        return h
    end
end
function advRay(start,point)
    local dis = (start-(start+point)).magnitude
    local dir = ((start+point)-start).unit
    if dis > 999 then
        dis = 999
    end
    point = dis*dir
    hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character})
    if hit and not hit.CanCollide and not getHumanoid(hit) then
        function persistentRay(list)
            hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character,unpack(list)})
            if hit and not hit.CanCollide and not getHumanoid(hit) then
                hit,pos = persistentRay({hit,unpack(list)})
            end
            return hit,pos
        end
        hit,pos = persistentRay({hit})
    end
    return hit,pos
end

function Burn(v)
    coroutine.wrap(function()
        local Colors = {"Really red","Really black","Orange","New Yeller"}
        local calc = getDPS()*.5
        if v:IsA("Model")and v ~= char and not v:findFirstChild("Burnt")then
            local h = v:findFirstChild("Humanoid")
            if h then
                if h.Health > 0 then
                    local t = v:findFirstChild("HumanoidRootPart")
                    if t then
                        if(t.Position -T.Position).magnitude <= 20 then
                            local f = Instance.new("StringValue",v)
                            f.Name = "Burnt"
                            ParticleEmit(v.HumanoidRootPart,BrickColor.new("Really red"),10)
                            for m,c in pairs(v:GetChildren())do
                                if c:IsA("BasePart")then
                                    local ss = Instance.new("Fire",c)
                                    ss.Size = c.Size.y +2
                                    ss.Color = BrickColor.new(Colors[math.random(1,#Colors)]).Color
                                    ss.SecondaryColor = Color3.new(0,0,0)
                                    ss.Heat = 100
                                        delay(10,function()
                                        local size = ss.Size
                                            for i = size,0,-1 do
                                                ss.Size = i
                                                Wait()
                                            end
                                        ss:Destroy()
                                        end)
                                    end 
                                end
                            h.PlatformStand = true
                                coroutine.wrap(function()
                                    for i = 1,10 do
                                        h:TakeDamage(calc)
                                        logDamage('Fire',calc)
                                        Wait(1)
                                    end 
                                end)()
                            Game:GetService("Debris"):AddItem(f,10)
                        end 
                    end 
                end 
            end 
        end
    end)()
end;
function AoE(point,radius,damage,push,trip)
    ypcall(function()
        local push = push or Vector3.new()
        local hit = getRegion(point,radius,{char})
        local humanoidList = {}
        for _,v in pairs(hit) do
            local h = getHumanoid(v)
            if not v.Anchored then
                if h then
                    if not humanoidList[h] then
                        if Damaged[h] and tick()-Damaged[h]<.2 then return end
                        humanoidList[h] = true
                        Damaged[h] = tick()
                        damageHuman(h,damage,h.Parent:findFirstChild'Head', 'AoE Damage')
                        Burn(h.Parent)
                        if h.Parent:findFirstChild("HumanoidRootPart") and h.Parent.HumanoidRootPart:isA("BasePart") then
                            if push.magnitude > 0 then
                                local v = Instance.new("BodyVelocity",h.Parent.HumanoidRootPart)
                                v.maxForce = Vector3.new(1,1,1)*10000000000
                                v.velocity = push/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                            if trip then
                                local v = Instance.new("BodyAngularVelocity",h.Parent.HumanoidRootPart)
                                v.maxTorque = Vector3.new(1,1,1)*10000000000
                                v.angularvelocity = Vector3.new(math.pi,0,math.pi)/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                        end
                    end
                else v:BreakJoints()
                    v.Velocity = v.Velocity+push/v:GetMass()
                end
            end
        end
    end)
end
function crownExplode(cf,col,scl)
        local p = part(char,cf,v3(1,1,1),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("FileMesh",p,nil,nil,asset..meshes.crown)
        Spawn(function()
                for i=.1,1.1,.025 do
                        p.Transparency = i
                        pm.Scale = pm.Scale + v3(scl,scl,scl)
						p.CFrame = cf
                        wait()
                end
                p:Destroy()
        end)
end
function crater(cf,dist,siz,col,mat)
        local num = math.random(7,13)
        for i=1,num do
                game:service("Debris"):AddItem(part(char,cf*ca(0,pi*2/num*i,0)*cn(0,0,dist)*ca(r(2),r(2),r(2)),v3(ma(r(siz)),ma(r(siz)),ma(r(siz))),col,true,true,0,mat),20)
        end
end
function quickSound(id,par,pi)
        local s = Instance.new("Sound")
        s.Pitch = pi or 1
        s.SoundId = asset..id
        s.Parent = par
        wait()
        s:Play()
    return s
end
function newSound(id,par,pi)
        local s = Instance.new("Sound",par)
        s.Pitch = pi or 1
        s.Volume = .3
        s.SoundId = asset..id
        s:Play()
        return s
end

local Num = 0
local Anchored = {}

function GetMesh(Obj)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("DataModelMesh") then
			return v
		end
	end
end

function GetCFrame(Obj)
	if Obj == nil then
		return
	end
	if Obj == Workspace then
		return CFrame.new(0,0,0)
	end
	if Obj:IsA("Model") then
		return Obj:GetModelCFrame()
	end
	if Obj:IsA("BasePart") then
		return Obj.CFrame
	end
	return
end

function GetSize(Obj)
	if Obj == nil then
		return
	end
	if Obj == Workspace then
		return Vector3.new(0,0,0)
	end
	if Obj:IsA("Model") then
		return Obj:GetModelSize()
	end
	if Obj:IsA("BasePart") then
		return Obj.Size
	end
	return
end

function SaveWelds(Obj,Welds,Scale)
	if Welds == nil then
		local Welds = {}
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("JointInstance") then
				Welds[#Welds+1] = {v,v.Part0,v.Part1,v.C0,v.C1,v.Parent}
				v.Parent = nil
			end
			SaveWelds(v,Welds,Scale)
		end
		return Welds
	else
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("JointInstance") then
				Welds[#Welds+1] = {v,v.Part0,v.Part1,v.C0,v.C1,v.Parent}
				v.Parent = nil
			end
			SaveWelds(v,Welds,Scale)
		end
	end
end

function GetMass(Obj)
	local Mass = 0
	if Obj:IsA("BasePart") then
		Mass = Mass+Obj:GetMass()
	end
	for i,v in pairs(Obj:GetChildren()) do
		Mass = Mass+GetMass(v)
	end
	return Mass
end

function SaveConnectedParts(Obj,Welds)
	if Welds == nil then
		local Welds = {}
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("BasePart") then
				for i2,v2 in pairs(v:GetConnectedParts()) do
					Welds[#Welds+1] = {Instance.new("Weld"),v,v2,v.CFrame:toObjectSpace(v2.CFrame),CFrame.new(0,0,0),v}
				end
				v:BreakJoints()
			end
			SaveConnectedParts(v,Welds)
		end
		return Welds
	else
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("BasePart") then
				for i2,v2 in pairs(v:GetConnectedParts()) do
					Welds[#Welds+1] = {Instance.new("Weld"),v,v2,v.CFrame:toObjectSpace(v2.CFrame),CFrame.new(0,0,0),v}
				end
				v:BreakJoints()
			end
			SaveConnectedParts(v,Welds)
		end
	end
end

function ResizeWelds(Welds,Scale)
	for i,v in pairs(Welds) do
		v[1].Parent = v[6]
		v[1].Part0 = v[2]
		v[1].Part1 = v[3]
		local Vec = v[4].p
		local Vec2 = v[5].p
		v[1].C0 = CFrame.new(Vec*Scale)*(v[4]-Vec)
		v[1].C1 = CFrame.new(Vec2*Scale)*(v[5]-Vec2)
	end
end

function AnchorParts(Obj)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("BasePart") and v.Anchored == false then
			v.Anchored = true
			Anchored[v] = v
		end
		AnchorParts(v)
	end
end

function ResizeFunc(Obj,Scale,Welds,Center)
	Center = Center or CFrame.new(0,0,0)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("BasePart") then
			--[[Num = Num+1
			if Num == 100 then
				wait(0.25)
				Num = 0
			end]]
			local Size = v.Size
			for i2,v2 in pairs(v:GetChildren()) do
				if v2.Name == "ScaleInserted" then
					Size = Size*v2.Scale
					v2:Destroy()
				elseif v2.Name:sub(1,14) == "ScaleInserted:" then
					local X,Y,Z;
					for Match in v2.Name:sub(15):gmatch("[^,%s]+") do
						if Y ~= nil then
							Z = tonumber(Match)
						elseif X ~= nil then
							Y = tonumber(Match)
						else
							X = tonumber(Match)
						end
					end
					Size = Vector3.new(X,Y,Z)
					v2:Destroy()
				end
			end
			pcall(function() v.FormFactor = "Custom" end)
			local CFr = v.CFrame
			local Want = Size*Scale
			v.Size = Want
			if v:IsA("VehicleSeat") then
				Seats[#Seats+1] = v
			end
			if v.Size ~= Want then
				local Name = ""
				for Match in v.Name:gmatch("[^%s]+") do
					Name = Name..Match
				end
				local CharMesh = nil
				for i,v in pairs(Obj:GetChildren()) do
					if v:IsA("CharacterMesh") and tostring(v.BodyPart):sub(15) == Name then
						CharMesh = v
					end
				end
				if CharMesh == nil then
					local Mesh = GetMesh(v)
					if Mesh == nil then
						local Mesh;
						if v:IsA("WedgePart") then
							Mesh = Instance.new("SpecialMesh",v)
							Mesh.MeshType = "Wedge"
						else
							local HasShape = pcall(function() return v.Shape end)
							if HasShape then
								if v.Shape == "Ball" then
									Mesh = Instance.new("SpecialMesh",v)
									Mesh.MeshType = "Sphere"
								elseif v.Shape == "Cylinder" then
									Mesh = Instance.new("SpecialMesh",v)
									Mesh.MeshType = "Cylinder"
								else
									Mesh = Instance.new("BlockMesh",v)
								end
							else
								Mesh = Instance.new("BlockMesh",v)
							end
						end
						Mesh.Scale = Want/v.Size
						Mesh.Name = "ScaleInserted"
					else
						if (Mesh.ClassName == "SpecialMesh" and Mesh.MeshType ~= Enum.MeshType.FileMesh) or Mesh.ClassName ~= "SpecialMesh" then
							Mesh.Scale = Want/v.Size*Mesh.Scale
						end
					end
				else
					local Mesh = Instance.new("SpecialMesh",v)
					Mesh.Name = "ScaleInserted:"..tostring(Want)
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = "rbxassetid://"..CharMesh.MeshId
					--Mesh.TextureId = CharMesh.BaseTextureId
					Mesh.Scale = Vector3.new(1,1,1)*Want.X/Scale
				end
			end
			v:BreakJoints()
			local Rel = Center:toObjectSpace(CFr)
			local New = CFrame.new(Rel.p*Scale)*(Rel-Rel.p)
			v.CFrame = Center*New
			v:BreakJoints()
		elseif v:IsA("DataModelMesh") then
		    if v.ClassName == "SpecialMesh" then
		    	if v.MeshType == Enum.MeshType.FileMesh then
		    		v.Scale = v.Scale*Scale
		    	end
	    	else
		    	--v.Scale = v.Scale*Scale
		    end
		end
		ResizeFunc(v,Scale,Welds,Center)
	end
end

function Resize(Obj,Scale,Break)
	local Welds = SaveWelds(Obj,nil,Scale)
	SaveConnectedParts(Obj,Welds)
	local Mass = GetMass(Obj)
	local Center = GetCFrame(Obj)
	if Center ~= nil and Workspace:FindFirstChild("Base") ~= nil then
		--Center = Center-Vector3.new(0,GetSize(Obj).Y/2,0)
		Center = CFrame.new(Center.X,Workspace.Base.Position.Y+Workspace.Base.Size.Y/2,Center.Z)*(Center-Center.p)
	end
	Seats = {}
	ResizeFunc(Obj,Scale,Welds,Center)
	ResizeWelds(Welds,Scale)
	local Mass2 = GetMass(Obj)
	for i,v in pairs(Seats) do
		v.Torque = Mass2*(v.Torque/Mass)
		v.TurnSpeed = v.TurnSpeed*Scale
		v.MaxSpeed = v.MaxSpeed*Scale
	end
end
        
function cylinderOpen(cf,col,col2)
    local p = part(char,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
    local pm = mesh("CylinderMesh",p)
    local p2 = part(char,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
    local p2m = mesh("CylinderMesh",p2)
    Spawn(function()
            for i=.1,1.1,.0125 do
                    p.Transparency = i
                    p2.Transparency = i
                    pm.Scale = pm.Scale + v3(.8,0,.8)
                    p2m.Scale = p2m.Scale + v3(.5,0,.5)
                    wait()
            end
            p:Destroy()
            p2:Destroy()
    end)
end
function cylinderOpen2(cf,col,col2)
        local p = part(workspace,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("CylinderMesh",p)
        local p2 = part(workspace,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                for i=.1,1.1,.05 do
                        p.Transparency = i
                        p2.Transparency = i
                        pm.Scale = pm.Scale + v3(.7,0,.7)
                        p2m.Scale = p2m.Scale + v3(.6,0,.6)
                        wait()
                end
                wait(10)
                p:Destroy()
                p2:Destroy()
        end)
end

function ray(Pos, Dir,xxz) 
	local xxz2=char
	if xxz ~= nil then 
		xxz2=nil 
	end 
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2)
end

function FindGround(pos) 
	local ax,ay,az = pos:toEulerAnglesXYZ()
	local bhit,bpos=ray(pos.p,pos.p - (pos.p + Vector3.new(0,200,0)))
	if bhit and bpos then 
		return CFrame.new(bpos)*CFrame.Angles(ax,ay,az) 
	end 
return nil
end

local lastdps = tick()
local ohp = hum.Health
hum.Changed:connect(function(val)
if val == 'Health_XML' then
    if hum.Health < ohp then
        lastdps = tick()
		local dtaken = math.ceil(ohp-hum.Health)
		if dtaken >= (hum.MaxHealth*.0125) and hum.Health >= 0 then
			local new = (ohp-(hum.MaxHealth*.0125))
			hum.Health = new
			Title("-"..math.ceil(new), head, Color3.new(200/255,0/255,200/255),true,false)
		else
			local DPS = (ohp-hum.Health)
			--Title("-"..math.ceil(DPS), head, Color3.new(0/255,0/255,200/255),true,false)
		end
		--print('might have took damage: '..)
    end
    ohp = hum.Health
	
	if hum.Health <= (hum.MaxHealth*.35) and not berserk and hum.Health > 0 then
		berserk = true
		local pes = {}
		local kick = false
		local casting = false
		crg()
		for q = 1, 30 do
			casting = true
			hum.WalkSpeed = 0
			Mode = 'Casting'
			
			local prtz = {la,ra,Head,Torso,rl,ll}
	
			for i,v in pairs(prtz) do
			coroutine.wrap(function()
			local dsa = Instance.new('ParticleEmitter', v)
			local color1 = Color3.new(.5,.5,1)
			local color2 = Color3.new(0,0,85/255)
			local sequence = ColorSequence.new(color1,color2)
			dsa.Color = sequence
			dsa.LightEmission = .8
			dsa.Texture = "http://www.roblox.com/asset/?id=243579869"
			dsa.LockedToPart = true
			dsa.EmissionDirection = 'Top'
			dsa.Lifetime = NumberRange.new(1)
			dsa.VelocitySpread = 100
			dsa.Size = NumberSequence.new(1)
			table.insert(pes, dsa)
			end)()
			end
			if kick then casting = false break end
			swait(1)
		end
		for i,v in pairs(pes) do v.Enabled = false end
		--cylinderOpen(torso.CFrame,'Black','Bright blue')
		crownExplode(FindGround(torso.CFrame),'Bright blue',.2)
		stats.Intellect = stats.Intellect*1.5
		damageAmp = 1.25
		sund:Stop()
		wait()
		sund.SoundId = 'rbxassetid://293337964'
		wait()
		sund.Looped = true
		sund:Play()
		for i = 1,50 do
			swait()
			hum.WalkSpeed =0 
		end

		local Aur = Instance.new('Part')
		Aur.Transparency = .75
		Aur.BrickColor = BrickColor.new'Cyan'
		Aur.Name = 'Aura'
		Aur.Size = Vector3.new(2.05*mult,2.05*mult,1.05*mult)
		Aur.Material = 'Neon'

		local asdddd = {la, ra, ll, rl}

		for q,e in next, asdddd do
			local asdfert = Aur:Clone()
			asdfert.Parent = char
			asdfert.Size = e.Size+Vector3.new(.05,.05,.05)
			local wlder = Instance.new('Weld')
			wlder.Parent = e
			wlder.Part0 = asdfert
			wlder.Part1 = e
		end

		Aur.Parent = char
		local w = Instance.new('Weld')
		w.Parent = torso
		w.Part0 = torso
		w.Part1 = Aur
		
		local fakehead = head:Clone()
		fakehead.Parent = char
		fakehead.Transparency = .55
		fakehead.BrickColor = BrickColor.new'Cyan'
		fakehead.Name = 'Aura'
		fakehead.Size = Vector3.new(1.05*mult,1.05*mult,1.05*mult)
		fakehead.Material = 'Neon'
		for i,v in next, fakehead:children'' do if v:isA'Sound' then v:Destroy() end end
		local w = Instance.new('Weld')
		w.Parent = char
		w.Part0 = head
		w.Part1 = fakehead

		local h = Instance.new('Part',  char)
		h.Name = 'DK HoodM'
		h.TopSurface,h.BottomSurface = 0,0
		h.Size = Vector3.new(2.3*mult, 2.3*mult, 2.3*mult)
		h.CFrame = torso.CFrame
		h.CanCollide = false
		h.Parent = char
		h.Transparency = .55
		h.BrickColor = BrickColor.new'Cyan'
		h.Name = 'Aura'
		h.Material = 'Neon'
		h:BreakJoints()
		local m = Instance.new('SpecialMesh', h)
		m.Name = "Wild Gladiator's Felweave CowlM"
		m.MeshType = 'FileMesh'
		m.Scale = Vector3.new(mult+.06, mult+.06, mult+.06)
		m.MeshId = 'http://www.roblox.com/asset/?id=16952952'
		m.VertexColor = Vector3.new(1,1,1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = char.Head
		Weld.Part1 = h
		Weld.Parent = char.Head
		Weld.C0 = CFrame.new(0, .3*mult, 0)

		hum.WalkSpeed = 35
	end
elseif val =='PlatformStand' then
hum.PlatformStand = false
elseif val == 'MaxHealth' and not canedit then
hum.MaxHealth = 1000*mult
hum.Health = 1000*mult
elseif val == "Sit" and not canedit then
hum.Sit = false
elseif val == "WalkSpeed" then
end
end)
regening = false
lastdps = tick()
function regenHealth()
if regening then return end
if (tick()-lastdps < 25) then return end
    regening = true
    local s = wait(1)
    local health = hum.Health
    if health > 0 and health < hum.MaxHealth then
    local newHealthDelta = hum.MaxHealth * .01
    health = health + newHealthDelta
    hum.Health = math.min(health,hum.MaxHealth)
    end

regening = false
end

local LastTrail = nil
local Trails = {}

function Disable(Humanoid)

    if Humanoid == hum then return end

    ypcall(function()

        for i = 10,0,-1 do

            if not Humanoid.Parent then break end
            if Humanoid.WalkSpeed > 5 then
            if Humanoid.Health <= 0 then break end

            if Humanoid:findFirstChild'Property of Darkus_Theory' then
                Humanoid.WalkSpeed = 3
                Humanoid.JumpPower = 0
            end
        --Humanoid.JumpMana = 0
        end

        wait(1)

        end

        if Humanoid.WalkSpeed > 5 then
            if Humanoid:findFirstChild'Property of Darkus_Theory' then
            Humanoid.JumpPower = 50
            Humanoid.WalkSpeed = 16
            end
        end

    end)
end

function damageHuman(hum,d,hit,skl)
if not hum:IsA('Humanoid') then hum.Parent:breakJoints() return end
pcall(function() hum.Parent.Health.Disabled = true end)
if hum.Health <= 0 then return end
if hum.MaxHealth >= 1000000 then hum.Parent:breakJoints'' end
if hum == Humanoid then return end
if not hit then return end
if hum:findFirstChild('Shielding') then return end
if Ally[hum] then return end
local crit = math.random(1,15)
d=d*mult
local DPS = ((d) * (crit > 11 and stats.CriticalStrikeBonus or 1))
Title("-"..math.ceil(DPS), ((hit.Parent and hit.Parent~='Workspace') and (hit.Parent:findFirstChild'Head' or Instance.new('Model'))), (crit < 12 and Color3.new(0/255,0/255,200/255) or Color3.new(230/255,0/255,150/255)),true,false)
if hum:findFirstChild'Property of Darkus_Theory' then
hum:TakeDamage(math.ceil(DPS))
else
hum.Health = hum.Health - math.ceil(DPS)
end
logDamage(skl, DPS)
if hum.Health <= 0 then logDamage('Kills', 1) Alert('You killed '..hum.Parent.Name..'!', 'Yellow') if btimer > 0 then btimer=btimer+10 end end
end

function healHuman(hum,d)
    if not hum then return end
    if hum.Health <= 0 then return end
    pcall(function() hum.Parent.Health.Disabled = true end)
    if hum==Humanoid or Ally[hum] then
        local abs = (hum.Health-hum.MaxHealth)+d
        if abs >= hum.MaxHealth * 1.5 then return end
        hum:TakeDamage(-math.ceil(d))
        logDamage('Healing done', math.ceil(d))
    end

    if math.random(0,100) > 75 and not shadowform then
        stats['Crystals'] = stats['Crystals'] + 1
    end

end



function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = plr
c.Name = "creator"
end

function CloneCharacter()
Character.Archivable = true
local Clone = Character:Clone()
    for i,v in pairs(Clone:GetChildren())do
        if v:IsA("BasePart") then
        v.Transparency = .1
        v.Reflectance = .1
        end
    end
Character.Archivable = false
Clone.Parent = game:service('Workspace')
Clone.Archivable = false
game:service('Debris'):AddItem(Clone,9)
return Clone
end
function searchForHumanoid(thing)
for _,v in pairs(thing:children()) do
if v:IsA('Humanoid') then
return v
end
end
return false
end
function CreateUI(Player)
    local this = {
        Debounces = {
            HelpOpen     = false;
            CoolDownOpen = false;
            NameShowing  = true;
        };
    }
    local function Create(ty)
        return function(data)
            local obj = Instance.new(ty)
            for k,v in pairs(data)do
                if type(k) == 'number' then
                    v.Parent = obj
                else
                    obj[k] = v
                end
            end
        return obj
        end
    end
    
    local function Thread(f)
        assert(type(f) == 'function',"bad argument #1 'function' expected got "..type(f))
        return coroutine.resume(coroutine.create(f))
    end 
    
    local Pagonis = Create("ScreenGui"){
        Parent = Player.PlayerGui;
        Name = "Pagonis";
        Archivable = true;
    }
    local Background = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Pagonis;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(0, 305, 0, 300);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.DropShadow;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -305, 0.5, -50);
        BorderSizePixel = 1;
        Name = "Background";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local mTitle = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Background;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 20);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Title";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local BreakLine = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = mTitle;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 1);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 1, 6);
        BorderSizePixel = 0;
        Name = "BreakLine";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Stats = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Background;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 1, -30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 1, -250);
        BorderSizePixel = 1;
        Name = "Stats";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Health = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 0);
        BorderSizePixel = 0;
        Name = "Health";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local hText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Health;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Health: 100/100";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "hText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
        ZIndex = 2;
    }
    local hStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Health;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "hStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
        
    }
    local Mana = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 35);
        BorderSizePixel = 0;
        Name = "Mana";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local fText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Mana;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Mana: 100/100";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "fText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.976471, 0.278431);
        ZIndex = 2;
    }
    local fStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Mana;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "fStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(114/255, 253/255, 255/255);
    }
    local CP = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 70);
        BorderSizePixel = 0;
        Name = "CP";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local cText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = CP;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Crystals: 6/6";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "cText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(19/255, 200/255, 255/255);
        ZIndex = 2;
    }
    local cStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = CP;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "cStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.298039, 1, 0.25098);
    }
    local Target = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Stats;
        BorderSizePixel = 1;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Target: Darkus_Theory";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 105);
        Name = "Target";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local TargetHp = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 140);
        BorderSizePixel = 0;
        Name = "TargetHp";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local tText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = TargetHp;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Target Health: 100/100";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "tText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
        ZIndex = 2;
    }
    local tStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = TargetHp;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "tStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
    }
    local Anim = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size24;
        Active = false;
        Parent = Stats;
        BorderSizePixel = 1;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 20);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Animation: Idle";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 175);
        Name = "Anim";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Buttons = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 60);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 1, -60);
        BorderSizePixel = 1;
        Name = "Buttons";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local HideName = Create("TextButton"){
        Visible = true;
        TextWrapped = false;
        Active = true;
        TextStrokeTransparency = 1;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        BorderSizePixel = 1;
        Draggable = false;
        Modal = false;
        AutoButtonColor = true;
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
        TextStrokeColor3 = Color3.new(0, 0, 0);
        Selected = false;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 30);
        TextXAlignment = Enum.TextXAlignment.Center;
        FontSize = Enum.FontSize.Size18;
        Parent = Buttons;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Hide Name";
        TextWrap = false;
        TextTransparency = 0;
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 1, -35);
        TextColor3 = Color3.new(1, 1, 1);
        Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
        Name = "HideName";
    }
    local Controls = Create("TextButton"){
        Visible = true;
        TextWrapped = false;
        Active = true;
        TextStrokeTransparency = 1;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        BorderSizePixel = 1;
        Draggable = false;
        Modal = false;
        AutoButtonColor = true;
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
        TextStrokeColor3 = Color3.new(0, 0, 0);
        Selected = false;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 30);
        TextXAlignment = Enum.TextXAlignment.Center;
        FontSize = Enum.FontSize.Size18;
        Parent = Buttons;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Controls";
        TextWrap = false;
        TextTransparency = 0;
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -94, 1, -35);
        TextColor3 = Color3.new(1, 1, 1);
        Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
        Name = "Controls";
    }
    local CoolDownsButton = Create("TextButton"){
        Visible = true;
        TextWrapped = false;
        Active = true;
        TextStrokeTransparency = 1;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        BorderSizePixel = 1;
        Draggable = false;
        Modal = false;
        AutoButtonColor = true;
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
        TextStrokeColor3 = Color3.new(0, 0, 0);
        Selected = false;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 30);
        TextXAlignment = Enum.TextXAlignment.Center;
        FontSize = Enum.FontSize.Size18;
        Parent = Buttons;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Cooldowns";
        TextWrap = false;
        TextTransparency = 0;
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 99, 1, -35);
        TextColor3 = Color3.new(1, 1, 1);
        Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
        Name = "CoolDowns";
    }
    local Status = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size24;
        Active = false;
        Parent = Stats;
        BorderSizePixel = 1;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 20);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Status: Normal";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 195);
        Name = "Status";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local CoolDowns = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Background;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 20, 0, 100);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.DropShadow;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, 10, 0, -105);
        BorderSizePixel = 1;
        Name = "CoolDowns";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Icy_Blast = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Icy Blast";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Icy Blast";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.376471, 0.439216);
    }
    local Frost_Barrier = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Frost Barrier";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 100, 0, 0);
        Name = "Frost Barrier";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.329412, 0.898039, 0.282353);
    }
    local Ring_of_Frost = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Ring of Frost";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -90, 0, 0);
        Name = "Ring of Frost";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.270588, 0.85098, 1);
    }
    local Frost_Shield = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 110, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Frost Shield";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 45);
        Name = "Frost Shield";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.694118, 0.298039, 0.701961);
    }
    local Hail_Storm = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 70, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Hail Storm";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 120, 0, 45);
        Name = "Hail Storm";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.839216, 0.854902, 0.32549);
    }
    local Ice_Lance = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Ice Lance";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -90, 0, 45);
        Name = "Ice_Lance";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.466667, 0.466667, 0.466667);
    }
    local Help = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Pagonis;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(0, 500, 0, 300);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.DropShadow;
        BackgroundTransparency = 0;
        Position = UDim2.new(1,0,.5,-150);
        BorderSizePixel = 1;
        Name = "Help";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Title = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size24;
        Active = false;
        Parent = Help;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Pagonis Controls";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Title";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Border = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Title;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 1);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 1, 0);
        BorderSizePixel = 0;
        Name = "Border";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Content = Create("ScrollingFrame"){
        Visible = true;
        Active = false;
        Parent = Help;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 1, -35);
        Draggable = false;
        ClipsDescendants = true;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        ScrollBarThickness = 7;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 35);
        BorderSizePixel = 0;
        Name = "Content";
        BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549);
        CanvasSize = UDim2.new(1,0,1.35,0)
    }
    local Line7 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[G]  -  [Enemy Toggle]: Toggles your target between enemy and ally. Allies cannot take damage.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 190);
        Name = "Line7";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line6 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[F]  -  [Ring of Frost]: Ignites targets within a cone in front of your character.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 160);
        Name = "Line6";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line5 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Y]  -  [Self Target]: Targets your own character.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 130);
        Name = "Line5";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line4 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[T]  -  [Target]: Targets the player under your mouse.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 100);
        Name = "Line4";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line3 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 40);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[E]  -  [Ground Smash]: Uppercut enemies then slam back to the ground to deal devastating damage.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 60);
        Name = "Line3";
        TextYAlignment = Enum.TextYAlignment.Top;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line2 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Q]  -  [Frost Shield]: Regenerates Health and Mana over time.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 30);
        Name = "Line2";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line1 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Ctrl+Alt]  -  [Crystals Torpedo]: Vault forward";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Line1";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line8 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[H]  -  [Soothing Mists]: Gives a stat buff to your target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 220);
        Name = "Line8";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line9 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Z]  -  [Touch of Karma]: 50% of all damage taken will be replicated onto the target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 250);
        Name = "Line9";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }

    local Line10 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[X]  -  [Icy Blast]: Deals incredible scales of damage to targets below 10% HP.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 280);
        Name = "Line10";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    
    local Line11 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[C]  -  [Frost Barrier]: Instantly heals your target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 310);
        Name = "Line11";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    
    local Line12 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[M]  -  [ShadowSight]: Allows you to monitor your target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 340);
        Name = "Line12";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line12 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Shift]  -  [Sprint]: Move at a quickened pace.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 370);
        Name = "Line12";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    
    this.Skills = {
        ["Icy Blast"] = Icy_Blast;
        ["Frost Barrier"] = Frost_Barrier;
        ["Ring of Frost"] = Ring_of_Frost;
        ["Frost Shield"] = Frost_Shield;
        ["Hail Storm"] = Hail_Storm;
        ["Ice Lance"] = Ice_Lance;
    }   
    
    function this:SetHealth(newHealth,MaxHealth)
        local OldSize = hStatus.Size
        hStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281,0,22)
        hText.Text = "Health: "..tostring(newHealth).."/"..tostring(MaxHealth).." ("..math.floor((newHealth/MaxHealth)*100).."%)"
    end 
    
    HideName.MouseButton1Down:connect(function()
        
    end)
    
    function this:SetMana(int)
        local OldSize = fStatus.Size
        fStatus.Size = UDim2.new(0, int / 100000 * 281,0,22)
        fText.Text = "Mana: "..tostring(int).."/100000".." ("..math.floor((int/100000)*100).."%)"
    end 
    
    function this:SetCP(int)--//Crystals
        local OldSize = cStatus.Size
        cStatus.Size = UDim2.new(0, int / 3 * 281,0,22)
        cText.Text = "Crystals: "..tostring(int).."/3"
    end 
    
    function this:SetTarget(targ)
        if targ=='No Target' then
            Target.Text = 'No Target'
        else
            Target.Text = (isFriendly() and 'Ally' or 'Enemy')..": "..targ
        end
    end 
    
    function this:SetTH(newHealth,MaxHealth)--//Target Health
    if not type(newHealth) == 'number' then newHealth = 0 end
    if not type(MaxHealth) == 'number' then MaxHealth = 0 end
        local OldSize = tStatus.Size
        tStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281,0,22)
        tText.Text = "Health: "..tostring(newHealth).."/"..tostring(MaxHealth)..(newHealth > 0 and " ("..math.floor((newHealth/MaxHealth)*100).."%)" or "")
    end 
    
    function this:SetTitle()
        mTitle.Text = '~~~~ Pagonis ~~~~'
    end
    
    function this:ToggleHelp()
        Thread(function()
            if this.Debounces.HelpOpen == true then
                Help:TweenPosition(UDim2.new(1,0,.5,-150),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.HelpOpen = false
            elseif this.Debounces.HelpOpen == false then
                Help:TweenPosition(UDim2.new(0.5, -320,.5,-150),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.HelpOpen = true
            end
        end)
    end
    
    function this:ToggleCD()
        Thread(function()
            if this.Debounces.CoolDownOpen == true then
                CoolDowns:TweenPosition(UDim2.new(1,10,0,-105),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.CoolDownOpen = false
            elseif this.Debounces.CoolDownOpen == false then
                CoolDowns:TweenPosition(UDim2.new(0,-10,0,-105),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.CoolDownOpen = true
            end
        end)
    end
    
    function this:SetCD(skill,int)
        assert(this.Skills[skill] ~= nil,"not a valid skill")
        local Skill = this.Skills[skill]
        if int > 0 then
            Skill.Text = skill..": "..tostring(int).."s"
        else
            Skill.Text = skill
        end
    end 
    
    function this:SetAnim(s)
        Anim.Text = "Animation: "..tostring(s)
    end 
    
    function this:SetStatus(s)
        Status.Text = "Status: "..tostring(s)
    end
    
    Controls.MouseButton1Down:connect(function()this:ToggleHelp()end)
    CoolDownsButton.MouseButton1Down:connect(function()this:ToggleCD()end)
    return this
end
local UI = CreateUI(game.Players.LocalPlayer)


function Title(txt,part,color,rise,spell)
    local col = color
    local Gui = Instance.new("BillboardGui",part)
    Gui.Name = "3DGUI"
    Gui.ExtentsOffset = Vector3.new(0,2,0)
    Gui.Size = UDim2.new(8,0,2,0)
    local Tit = Instance.new("TextLabel",Gui)
    Tit.Name = "Gooey"
    Tit.TextColor3 = col
    Tit.TextTransparency = 0.25
    Tit.TextStrokeColor3 = col
    Tit.TextStrokeTransparency = 1
    Tit.Size = UDim2.new(1,0,1,0)
    Tit.BackgroundTransparency = 1
    Tit.Font = "Arial"
    Tit.TextScaled = true
    Tit.Text = txt
    if rise then
    if not tonumber(rise) then rise = 6 end
    coroutine.wrap(function()
    local randvar = (spell and 0 or math.random(-4,4))
    while Tit.Parent and Gui.Parent and wait() do
    Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0.025*randvar,0.025*rise,0.025)
    end
    end)()
    end
    game:service('Debris'):AddItem(Gui,2)
    return Tit
end 

function DamageNear(Pos,Mag,Dmg,x)
local Targets,HitAlready = {},{}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
    for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
    if(Pos -x.Position).magnitude <= Mag then
    table.insert(Targets,v)
    end 
end 
    end 
end 
    end
    for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
    ypcall(function()
    end)
HitAlready[v.Name] = true
end 
    end 
end

function weld(thing1,thing2)
local a = Instance.new('Weld');
pcall(function()
a.Parent = thing1;
a.Part0 = thing1;
a.Part1 = thing2;
a.C0 = thing1.CFrame:inverse()*thing2.CFrame 
end)
return a
end

function IsNear(Position,Distance,SinglePlayer,db)
    if SinglePlayer then 
return(SinglePlayer.HumanoidRootPart.CFrame.p -Position).magnitude < Distance 
    end
local List = {}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")then
    if v:findFirstChild("HumanoidRootPart")then
--if (v ~= char and not db) then
    if(v.HumanoidRootPart.CFrame.p -Position).magnitude < Distance then
    table.insert(List,v)
    end 
--end 
    end 
end 
    end
return List
end

function createOrb()

local Orb = Instance.new("Model")
Orb.Name = "OrbModel"
local PurplePart = Instance.new("Part", Orb)
PurplePart.BrickColor = BrickColor.new("Black")
PurplePart.Anchored = true
PurplePart.Locked = true
PurplePart.CanCollide = false
PurplePart.Name = 'PurplePart'
PurplePart.Material = 'Neon'
PurplePart.Size = Vector3.new(1, 1, 1)
PurplePart.BottomSurface = Enum.SurfaceType.Smooth
PurplePart.TopSurface = Enum.SurfaceType.Smooth
PurpleMesh = Instance.new("SpecialMesh", PurplePart)
PurpleMesh.MeshType = Enum.MeshType.FileMesh
PurpleMesh.Name = "Mesh"
PurpleMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
PurpleMesh.VertexColor = Vector3.new(1, 0, 1)

local Ring = Instance.new("Part", PurplePart)
Ring.Name = "BlastRing"
Ring.TopSurface = 0
Ring.BottomSurface = 0
Ring.CanCollide = false
Ring.Anchored = true
Ring.Locked = true
Ring.BrickColor = BrickColor.new('Toothpaste')
Ring.Size = Vector3.new(1,1,1)
local RingMesh = Instance.new("SpecialMesh",Ring)
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Name = "BlastMesh"


Orb.Parent = char
OrbModel = Orb

local Light = Instance.new("PointLight", PurplePart)
Light.Name = "HeadLight"
Light.Color = Color3.new(1,0,1)
Light.Range = 6
Light.Brightness = 20

local con = game:GetService("RunService").Stepped:connect(function()
local Targ
if not currentTarget then Targ = hum else Targ = currentTarget end
	
	local c = ((sund.Playing == false) and math.abs(math.cos(tick())) or (sund.PlaybackLoudness/500))
	
	if c <= .5 then c = .5 end
	
	PurpleMesh.Scale = Vector3.new(c*.7, c*1.1, c*.7)
	RingMesh.Scale = Vector3.new(c*.9, c*.9, c*.9)

PurplePart.CFrame = PurplePart.CFrame:lerp((Targ.Parent and Targ.Parent or char).Head.CFrame*CFrame.new(0,3,0),.5)	
Ring.CFrame = CFrame.new(PurplePart.Position)* CFrame.fromEulerAnglesXYZ(-math.rad(90+(math.sin(tick())*6)), 0, -math.rad(90+(math.sin(tick())*6)))
end)

local chnge = function(a)
	if a=='Name' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	elseif a=='Parent' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	elseif a=='Locked' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	elseif a=='Anchored' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	end
end

Orb.Changed:connect(chnge)
Ring.Changed:connect(chnge)
PurplePart.Changed:connect(chnge)
return Orb
end



function isFriendly()

if currentTarget == hum then return end

if Ally[currentTarget] then return true end

return false
end

function toggleFriendly()

if currentTarget == hum then return end

pcall(function()if Ally[currentTarget] then  Ally[currentTarget] = nil  else Ally[currentTarget] = true end end)

end

--SlashDamage = Damage(TrailPart)

asd = function(parent,string) 
  repeat wait() until parent:FindFirstChild(string)
  wait()
  return parent:FindFirstChild(string)
end

local Thakiel = asd(game.ReplicatedStorage, 'Tha\'kiel'):Clone()
Thakiel.Parent = Char

Thakiel.Inner.Transparency = 1
Thakiel.Outer.Transparency = 1
Thakiel.Inner.CanCollide = false
Thakiel.Outer.CanCollide = false
Thakiel.Outer.Mesh.Scale = Thakiel.Outer.Mesh.Scale + Vector3.new(.8, .8, .8)
Thakiel.Inner.Mesh.Scale = Thakiel.Inner.Mesh.Scale + Vector3.new(.7, .7, .7)

local weldylol = Instance.new('Weld', Thakiel)
weldylol.Part0 = Thakiel.Inner
weldylol.Part1 = Thakiel.Outer
local tweld = Instance.new('Weld', Thakiel)
tweld.Part0 = Thakiel.Inner
tweld.Name = 'Brain'
tweld.Part1 = torso
tweld.C0 = tweld.C0*CFrame.new(7, -5, -2)

local twc0 = tweld.C0

local Nethex = asd(game.ReplicatedStorage, (stoff and 'Nethexy' or 'Nethex')):Clone()

Resize(Nethex, mult/2, false)
Nethex.Parent = Char

local Shaft = Nethex:findFirstChild('Shaft', true)
for q,e in pairs(Nethex:children()) do
	pcall(function()
	e.CanCollide = false
	end)
end

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)

local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)

return wld
end

local function createDoom()
	local doomy = Thakiel:Clone()
	doomy.Parent = char
	local inn = doomy.Inner
	local ou = doomy.Outer
	inn.Transparency = .1
	ou.Transparency = .6
	ou.Anchored = true
	inn.Anchored = true
	doomy.Brain:Destroy()
	inn.CFrame = rootpart.CFrame*CFrame.new(0, 15, 0)
	ou.CFrame = inn.CFrame
	
	
	for i = 1, 18 do
		local doomytarg = getTarget()
		if doomytarg and doomytarg.Parent and doomytarg.Parent.Head then
				local MainPos=(inn.CFrame*CFrame.new(0,0, -2)).p
				local MainPos2=doomytarg.Parent.Head.CFrame.p
				local MouseLook=CFrame.new((MainPos+MainPos2)/2,MainPos2)
				num=1200
				coroutine.resume(coroutine.create(function() 
				repeat
				swait()
				inn.CFrame=CFrame.new(inn.Position, doomytarg.Parent.Head.Position)
				ou.CFrame = inn.CFrame
				local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,char:children())
				local mag=(MainPos-pos).magnitude 
				CylinderEffect(BrickColor.new("Teal"),CFrame.new((MainPos+pos)/2,pos)*CFrame.Angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
				MainPos=MainPos+(MouseLook.lookVector*10)
				num=num-1
				if hit~=nil then
				num=0
				local ref=party(3,char,"Neon",0,1,BrickColor.new("Teal"),"Reference",Vector3.new())
				ref.Anchored=true
				ref.CFrame=CFrame.new(pos)
				MagniDamage('Doombolt', ref,hit,5,10,20,1,"Normal")
				game:GetService("Debris"):AddItem(ref,5) 
				end
				until num<=0
				end))
				wait(2)
			
		else
			-- narb
		end
	end
	
	doomy:Destroy()
	
end

do 

local NEVER_BREAK_JOINTS = true

local function CallOnChildren(Instance, FunctionToCall)

	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
	local Ancestor = Instance
	repeat
		Ancestor = Ancestor.Parent
		if Ancestor == nil then
			return nil
		end
	until Ancestor:IsA(ClassName)

	return Ancestor
end

local function GetBricks(StartInstance)
	local List = {}
	
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
	
	assert(type(Values) == "table", "Values is not a table");

	for Index, Value in next, Values do
		if type(Index) == "number" then
			Value.Parent = Instance
		else
			Instance[Index] = Value
		end
	end
	return Instance
end

local function Make(ClassType, Properties)
	return Modify(Instance.new(ClassType), Properties)
end

local Surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
local HingSurfaces = {"Hinge", "Motor", "SteppingMotor"}

local function HasWheelJoint(Part)
	for _, SurfaceName in pairs(Surfaces) do
		for _, HingSurfaceName in pairs(HingSurfaces) do
			if Part[SurfaceName].Name == HingSurfaceName then
				return true
			end
		end
	end
	
	return false
end

local function ShouldBreakJoints(Part)

	if NEVER_BREAK_JOINTS then
		return false
	end
	
	if HasWheelJoint(Part) then
		return false
	end
	
	local Connected = Part:GetConnectedParts()
	
	if #Connected == 1 then
		return false
	end
	
	for _, Item in pairs(Connected) do
		if HasWheelJoint(Item) then
			return false
		elseif not Item:IsDescendantOf(script.Parent) then
			return false
		end
	end
	
	return true
end

local function WeldTogether(Part0, Part1, JointType, WeldParent)
	
	JointType = JointType or "Weld"
	local RelativeValue = Part1:FindFirstChild("qRelativeCFrameWeldValue")
	
	local NewWeld = Part1:FindFirstChild("qCFrameWeldThingy") or Instance.new(JointType)
	Modify(NewWeld, {
		Name = "qCFrameWeldThingy";
		Part0  = Part0;
		Part1  = Part1;
		C0     = CFrame.new();--Part0.CFrame:inverse();
		C1     = RelativeValue and RelativeValue.Value or Part1.CFrame:toObjectSpace(Part0.CFrame); --Part1.CFrame:inverse() * Part0.CFrame;-- Part1.CFrame:inverse();
		Parent = Part1;
	})

	if not RelativeValue then
		RelativeValue = Make("CFrameValue", {
			Parent     = Part1;
			Name       = "qRelativeCFrameWeldValue";
			Archivable = true;
			Value      = NewWeld.C1;
		})
	end

	return NewWeld
end

local function WeldParts(Parts, MainPart, JointType, DoNotUnanchor)

	for _, Part in pairs(Parts) do
		if ShouldBreakJoints(Part) then
			Part:BreakJoints()
		end
	end
	
	for _, Part in pairs(Parts) do
		if Part ~= MainPart then
			WeldTogether(MainPart, Part, JointType, MainPart)
		end
	end

	if not DoNotUnanchor then
		for _, Part in pairs(Parts) do
			Part.Anchored = false
		end
		MainPart.Anchored = false
	end
end

WeldParts(Nethex:children(), Nethex.Shaft, 'Weld', false)

end

local nw = newWeld(Shaft, ra, 0, 0, mult)
nw.C0 = nw.C0*CFrame.Angles(math.rad(90),0,0)
nwc0=nw.C0
Search = false

function shadowSight()

if Search == false then
    Search = true
    for i,v in pairs(game.Players:getPlayers()) do
        if v.Name~=char.Name and v.Character then
            for j,k in pairs(v.Character:GetChildren()) do
                if k:IsA("BasePart") and k.Transparency >= 1 then
                    bawx=Instance.new("SelectionBox",camera)
                    bawx.Color = BrickColor.new("Bright red")
                    bawx.Transparency = .5
                    bawx.Adornee = k
                end
            end
        end
    end
    camera.CameraSubject = OrbModel.PurplePart
elseif Search == true then
    Search = false
    for i, v in pairs(camera:GetChildren()) do
        if v:IsA("SelectionBox") then
            v:Destroy()
        end
    end
    camera.CameraSubject = hum
end

end

function updateCooldowns()
local Skills = {
        ["Icy Blast"] = true;
        ["Frost Barrier"] = true;
        ["Ring of Frost"] = true;
        ["Frost Shield"] = true;
        ["Hail Storm"] = true;
        ["Ice Lance"] = true;
    }
	
	for i,v in pairs(Skills) do
    if Cooldowns[i] then
        local data = math.ceil(Cooldowns[i].timeRequired-(tick()-Cooldowns[i].startTime))
        if not data then data = -1 end
        UI:SetCD(tostring(i), data)
    end
end 

end

local HitDB = {}

function Damage(part)
    smthn = part.Touched:connect(function(hit)
	local Human=hit.Parent:findFirstChild'Humanoid'
        if Human ~= nil and hit.Parent.Name ~= Player.Name and Slash == true and HitDB[hit.Parent.Humanoid] == nil then
		coroutine.wrap(function() --threads so we don't have to wait after each hit for every person hit!
            HitDB[hit.Parent.Humanoid] = true
            damageHuman(Human, getDPS()*2, hit.Parent:findFirstChild'Torso')
			local vu = Instance.new("BodyVelocity",hit.Parent.HumanoidRootPart)
			vu.P = 500
			vu.maxForce = Vector3.new(10000000000,5000000000000000000000,100000000000)
			vu.velocity =  -Head.CFrame.lookVector*2
			game:GetService("Debris"):AddItem(vu,0.267)
            wait()
            HitDB[hit.Parent.Humanoid] = nil
		end)()
        end
    end)
    return smthn
end

newStat("Mana", 'NumberValue', 100000)
newStat("Crystals", 'NumberValue', 0)
newStat("Intellect", 'NumberValue', Intellect)
newStat("Haste", 'NumberValue', Haste)
newStat("CriticalStrikeBonus", 'NumberValue', 1.35)

hum.JumpPower = 100
hum.WalkSpeed = 22
hum.MaxHealth = 1000*mult
hum.Health = 1000*mult

Alert = function(txt, color, font, fontsize)
local Colorz = {
        ["Red"]     = Color3.new(255/255,0,0);
        ["Green"]   = Color3.new(0,255/255,0);
        ["Blue"]    = Color3.new(0,0,255/255);
        ["Purple"]  = Color3.new(255/255,255/255,0);
        ["Black"]   = Color3.new(0,0,0);
        ["White"]   = Color3.new(1,1,1);
        ['Orange'] = Color3.new(1,0.5,0);
        ['Yellow'] = Color3.new(1,1,0);
    };

game:GetService('StarterGui'):SetCore('ChatMakeSystemMessage', {
    Text = (txt and txt or 'nil'),
    Color = (color and Colorz[color] or Color3.new(.8,0,0)),
    Font = (font and font or 'SourceSansLight'),
    FontSize = (fontsize and fontsize or 'Size14'),
    })
end

function giveBuff(buffName, stat, duration, addition, targ)
local nTarg
nTarg = targ or currentTarget
if not nTarg then nTarg = hum end

local pckt = Instance.new('Model')
pckt.Name = 'BUFF:'..buffName
local Stat = Instance.new('StringValue')
Stat.Name = 'Stat'
Stat.Value = stat
Stat.Parent = pckt
local Duration = Instance.new('StringValue')
Duration.Name = 'Duration'
Duration.Value = duration
Duration.Parent = pckt
local Addition = Instance.new('StringValue')
Addition.Name = 'Addition'
Addition.Value = addition
Addition.Parent = pckt
local Sender = Instance.new('ObjectValue')
Sender.Name = 'Sender'
Sender.Value = Player
Sender.Parent = pckt  

pckt.Parent = nTarg

repeat wait() until pckt.Name =='Received'

Alert('Gave buff '..buffName..' to '..tostring(nTarg.Parent.Name), 'Orange')

end

hum.ChildAdded:connect(function(obj)
    if obj.Name:sub(1,5)=='BUFF:' then
        Buffs[obj.Name] = obj
        local stat,dura,bnam,addi,snam
        stat = obj:WaitForChild('Stat').Value
        dura = tonumber(obj:WaitForChild('Duration').Value)
        bnam = obj.Name:sub(6)
        addi = tonumber(obj:WaitForChild('Addition').Value)
        snam = obj:waitFOrChild('Sender').Value
        
        if Buffs[bnam] then return end
        if not stat then stat = 'MainStat' end
        if not dura then dura = 10 end
        if not addi then addi = 0 end
        obj.Name = 'Received'
        game:service'Debris':AddItem(obj, 10)

        --Alert('DEBUG: '..stat..','..dura..','..bnam..','..addi, 'Yellow')

        spawn(function()
            Alert(('Buff %s received from %s.'):format(bnam, snam), 'White')
            if stat == 'MainStat' then stat = MainStat end
            if stat == 'Health' then hum.MaxHealth = hum.MaxHealth + addi return end
            if not stats[stat] then stats[stat] = 0 end
            stats[stat] = stats[stat] + addi
            wait(dura)
            Buffs[bnam] = nil
            Alert('Buff '..bnam..' faded.', 'White')
            stats[stat] = stats[stat] - addi
        end)
        
    end
end)

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
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
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
 
function QuaternionSlerp(a, b, t) 
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

function lerp(weld,beglerp,endlerp,speed)
		if weld.ClassName =='Weld' or weld.ClassName == 'Motor6D' then
        weld.C0 = clerp(beglerp, endlerp, speed)
		else
		weld.CFrame = clerp(beglerp, endlerp, speed)
		end
        return (weld.ClassName =='Weld' or weld.ClassName == 'Motor6D' and weld.C0 or weld.CFrame)
end

Ctrl = false
local lastclick = tick()
mouse.Button1Down:connect(function()
if tick()-lastclick > .3 then combocounter = 0 end
if otheranims then return end
Slash = true
Slash = false
lastclick = tick()
end)


function MediumParticleEmit(Object,Color)
    coroutine.wrap(function()
        while Wait(3.1)do
            if not Object then break end
            local p = Instance.new("Part",Object.Parent)
            p.Name = "Trail"
            p.TopSurface = 0
            p.BottomSurface = 0
            p.Anchored = true
			p.Material = 'Neon'
            p.CanCollide = false
            p.FormFactor = "Custom"
            p.Size = Vector3.new(0.01,0.01,0.01)
            p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
            p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
            local m = Instance.new("BlockMesh",p)
            m.Scale = Vector3.new(2,2,2)
                coroutine.wrap(function()
                    for i = 1,15 do
                        p.Transparency = i/15
                        m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
                        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.4,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
                        Wait()
                    end
                p:Destroy()
                end)()
            end 
    end)()
end

function IsNear(Position,Distance,SinglePlayer,db)
    if SinglePlayer then 
return(SinglePlayer.HumanoidRootPart.CFrame.p -Position).magnitude < Distance 
    end
local List = {}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")then
    if v:findFirstChild("HumanoidRootPart")then
--if (v ~= char and not db) then
    if(v.HumanoidRootPart.CFrame.p-Position).magnitude < Distance then
    table.insert(List,v)
    end 
--end 
    end 
end 
    end
return List
end
function Effect(Pos,x1,y1,z1,x2,y2,z2,color,ref)
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = CFrame.new(Pos)* CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = part.CFrame * CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end
local function EmberWave(CF,Color)
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = CF
p.Transparency = 1
coroutine.wrap(function()
local x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
for i = 1,30 do
p.CFrame = p.CFrame *x
x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
Effect2(p,2.6,2.6,2.6,0,0,0,Color,0.3)
Wait(0.1)
end
p:Destroy()
end)()end

local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,500 do
f.Transparency = f.Transparency +0.005
sm.Scale = sm.Scale + Vector3.new(10,10,10)
swait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
Wait()
end
ax:Destroy()
end)()
end 
end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end 
end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end


function ShootCannon()
local MainPos=(head.CFrame*CFrame.new(0,0, -4*((mult>2 or mult<1) and mult or 1))).p
local MainPos2=mouse.Hit.p
local MouseLook=CFrame.new((MainPos+MainPos2)/2,MainPos2)
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,char:children())
local mag=(MainPos-pos).magnitude 
CylinderEffect(BrickColor.new("Teal"),CFrame.new((MainPos+pos)/2,pos)*CFrame.Angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=party(3,char,"Neon",0,1,BrickColor.new("Teal"),"Reference",Vector3.new())
ref.Anchored=true
ref.CFrame=CFrame.new(pos)
MagniDamage('Cannon', ref,hit,5,10,20,1,"Normal")
game:GetService("Debris"):AddItem(ref,5) 
end
until num<=0
end))
end
regening = false
lastdps = tick()
function regenHealth()
if regening then return end
if (tick()-lastdps < 15) then return end
    regening = true
    local s = wait(1)
    local health = hum.Health
    if health > 0 and health < hum.MaxHealth then
    local newHealthDelta = hum.MaxHealth * .03
    health = health + newHealthDelta
    hum.Health = math.min(health,hum.MaxHealth)
    end

regening = false
end

function checkCooldown(ability)
if not Cooldowns[ability] then return false end
local trem = (tick()-Cooldowns[ability].startTime)
if (trem <= Cooldowns[ability].timeRequired) then return true end
return false
end

function setCooldown(ability, req)
Cooldowns[ability] = {startTime = tick(), timeRequired = req}
end


applyCameraShake=function(Noob,Intens,Time)
	Intens = Intens / 5.2
	if game.Players:GetPlayerFromCharacter(Noob)~=nil then
		local ss=Nethex.CamShake:clone()
		ss.Disabled=false
		ss.intensity.Value=Intens
		ss.times.Value=Time
		ss.Parent=Noob
	end
end



function Cast(casttime)
otheranims = true
if math.random(1,10)>=7 then activateLance() end
hum.WalkSpeed = 22
otheranims = false
end

function getRandomPlayer()
local players = game:service('Players'):GetPlayers()
if #players > 0 then
 local plrz = players[math.random(#players)]
 if plrz.Name == plr.Name then
 repeat wait() plrz = players[math.random(#players)] until plrz.Name ~= plr.Name
 currentTarget = plrz
 Target(plrz)
 end
 return plrz
end
end

function freezeInPlace(person)
	if person:findFirstChild'Humanoid' and Ally[person:findFirstChild'Humanoid'] then return end
	if person:findFirstChild'Left Leg' then
		if person:findFirstChild'Right Leg' then
			local prtz = {}
			coroutine.wrap(frostFever)(person)
			local ice = Instance.new('Part')
			ice.BrickColor = BrickColor.new'Pastel light blue'
			ice.Material = 'Ice'
			ice.Transparency = 0--.05
			ice.Reflectance = .3
			ice.Anchored = true
			ice.Size = Vector3.new(1,1,1)
			
			person:findFirstChild'Left Leg'.Anchored = true
			person:findFirstChild'Right Leg'.Anchored = true
			person:findFirstChild'Torso'.Anchored = true
			person:findFirstChild'Left Arm'.Anchored = true
			person:findFirstChild'Right Arm'.Anchored = true
			
				local qe={-1.5,-1.45,-1.4,-1.35,-1.3,-1.25,-1.2,-1.15,-1.1,-1.05,-1,-0.95,-0.9,-0.85,-0.8,-0.75,-0.7,-0.65,-0.6,-0.55,-0.5,-0.45,-0.4,-0.35,-0.3,-0.25,-0.2,-0.15,-0.099999999999999,-0.049999999999999,7.632783294298e-016,0.050000000000001,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1.05,1.1,1.15,1.2,1.25,1.3,1.35,1.4,1.45}
			
				for i = 0,6.6,.03 do
			
				local qq=ice:Clone()
				table.insert(prtz, qq)
				qq.Parent = person
				qq.Name='getfukd'
				qq.CFrame = person:findFirstChild'Torso'.CFrame*CFrame.new(qe[math.random(1,#qe)], i-4, qe[math.random(1,#qe)]*.6)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
			wait()
			end
				coroutine.wrap(function()
					wait(1)
					person:findFirstChild'Left Leg'.Anchored = false
					person:findFirstChild'Right Leg'.Anchored = false
					person:findFirstChild'Torso'.Anchored = false
					person:findFirstChild'Left Arm'.Anchored = false
					person:findFirstChild'Right Arm'.Anchored = false
					for a,b in pairs(prtz) do b:Destroy() end
				end)()
		end
	end

end

function IceBlast()

coroutine.resume(coroutine.create(function()
for mags,mogs in pairs(game:service'Workspace':GetChildren()) do if mogs.ClassName=="Model" and mogs:findFirstChild("HumanoidRootPart") and searchForHumanoid(mogs) and boiling and (mogs.HumanoidRootPart.CFrame.p-Vector3.new(rootpart.CFrame.p.x,mogs.HumanoidRootPart.CFrame.p.y,rootpart.CFrame.p.z)).magnitude <= 15 then 
damageHuman(searchForHumanoid(mogs), getDPS()*2, mogs:findFirstChild'Torso', 'Ice Blast') end end
for boil=1,8 do wait()
local blodbl=Instance.new("Part",Instance.new('Model',char))
blodbl.Anchored=true
blodbl.formFactor="Custom"
blodbl.Name="pew"
blodbl.Transparency=0
blodbl.Reflectance=.15
blodbl.CanCollide=false
blodbl.Size=Vector3.new(1,1.5,1)
blodbl.CFrame=rootpart.CFrame*CFrame.new(0,3,0)*CFrame.Angles(math.rad(math.random(60,120)),math.rad(math.random(-35,35)),math.rad(math.random(-35,35)))
blodbl.BrickColor=BrickColor.new("Toothpaste")
local toxtur=Instance.new("SpecialMesh",blodbl)
toxtur.MeshId="http://www.roblox.com/asset/?id=3270017"
toxtur.Scale=Vector3.new(boil*1.5,boil*1.5,1)
local blodbrite=Instance.new("PointLight",blodbl)
blodbrite.Color=Color3.new(0,0,1)
blodbrite.Range=toxtur.Scale.x+1
blodbrite.Brightness=123
game:service'Debris':AddItem(blodbl,5)
coroutine.wrap(function()
    for blawdbewl=0,1,.05 do
        toxtur.Scale=toxtur.Scale+Vector3.new(1,1,0) blodbl.Transparency=blawdbewl
		wait() 
	end 
	blodbl:Destroy()
end)()
end
end))

end

Ragdoll = function(Format, Character, Force)
 if Force ~= true then
  if Character:FindFirstChild("Ragdoll") ~= nil and Format == true then return false end
  if Character:FindFirstChild("Ragdoll") == nil and Format == false then return false end
 end
 local Head = nil
 local Torso = nil
 local Humanoid = nil
 local Dead = false
 for _, Children in pairs(Character:GetChildren()) do
  if Children.ClassName == "ForceField" then Children:Remove() end
  if Children.Name == "" then Children:Remove() end
  if Children.Name == "Head" then Head = Children end
  if Children.Name == "HumanoidRootPart" then Torso = Children end
  if Children.ClassName == "Humanoid" then Humanoid = Children end
  if Children:IsA("Accoutrement") then
   if Children:FindFirstChild("Handle") ~= nil then
    if math.random(1, 3) == 1 then
     coroutine.wrap(function()
      Children.Parent = Workspace
      wait()
      Children.Parent = Character
      Children.Handle.CanCollide = true
     end)()
    else
     Children.Parent = Workspace
     Children.Handle.CanCollide = true
    end
   else
    Children:Remove()
   end
  end
 end
 if Humanoid ~= nil then
  if Humanoid.Health <= 0 then
   Dead = true
  end
 end
 if Torso ~= nil then
  for _, Children2 in pairs(Torso:GetChildren()) do
   if Children2:IsA("JointInstance") then
    Children2:Remove()
   end
  end
 end
 if Head ~= nil and (function()
  if Dead == true and math.random(1, 2) == 1 then
   return true
  else
   return false
  end
 end)() == false then
  local Neck = Instance.new("Motor6D")
  Neck.Name = "Neck"
  Neck.Part0 = Torso
  Neck.Part1 = Head
  Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
  Neck.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
  Neck.MaxVelocity = 0.1
  Neck.Parent = Torso
 end
 if Format == true then
  local Ragdoll = Instance.new("IntValue")
  Ragdoll.Name = "Ragdoll"
  Ragdoll.Parent = Character
  if Torso ~= nil then
   Torso.Velocity = Torso.Velocity / 1.25
   Torso.RotVelocity = (Torso.RotVelocity / 1.25) + Head.CFrame.lookVector*80
   if Dead == true then
    if Humanoid ~= nil then
     local Humanoid2 = Humanoid:Clone()
     wait()
     Humanoid:Remove()
     Humanoid2.Parent = Character
     Humanoid = Humanoid2
    end
   end
   local Limb = Character:FindFirstChild("Right Arm")
   if Limb ~= nil then
    Limb.Velocity = Torso.Velocity
    Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
    local Joint = Instance.new("Glue")
    Joint.Name = "RightShoulder"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
    Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
    Joint.Parent = Torso
    local Weight = Instance.new("Part")
    Weight.Name = ""
    Weight.TopSurface = 0
    Weight.BottomSurface = 0
    Weight.Shape = "Block"
    Weight.FormFactor = "Custom"
    Weight.Size = Vector3.new(1, 1, 1)
    Weight.Transparency = 1
    Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
    Weight.Parent = Character
    local Weld = Instance.new("Weld")
    Weld.Part0 = Limb
    Weld.Part1 = Weight
    Weld.C0 = CFrame.new(0, -0.5, 0)
    Weld.Parent = Limb
   end
   local Limb = Character:FindFirstChild("Left Arm")
   if Limb then
    Limb.Velocity = Torso.Velocity
    Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
    local Joint = Instance.new("Glue")
    Joint.Name = "LeftShoulder"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
    Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
    Joint.Parent = Torso
    local Weight = Instance.new("Part")
    Weight.Name = ""
    Weight.TopSurface = 0
    Weight.BottomSurface = 0
    Weight.Shape = "Block"
    Weight.FormFactor = "Custom"
    Weight.Size = Vector3.new(1, 1, 1)
    Weight.Transparency = 1
    Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
    Weight.Parent = Character
    local Weld = Instance.new("Weld")
    Weld.Part0 = Limb
    Weld.Part1 = Weight
    Weld.C0 = CFrame.new(0, -0.5, 0)
    Weld.Parent = Limb
   end
   local Limb = Character:FindFirstChild("Right Leg")
   if Limb then
    Limb.Velocity = Torso.Velocity
    Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
    local Joint = Instance.new("Glue")
    Joint.Name = "RightHip"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
    Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
    Joint.Parent = Torso
    local Weight = Instance.new("Part")
    Weight.Name = ""
    Weight.TopSurface = 0
    Weight.BottomSurface = 0
    Weight.Shape = "Block"
    Weight.FormFactor = "Custom"
    Weight.Size = Vector3.new(1, 1, 1)
    Weight.Transparency = 1
    Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
    Weight.Parent = Character
    local Weld = Instance.new("Weld")
    Weld.Part0 = Limb
    Weld.Part1 = Weight
    Weld.C0 = CFrame.new(0, -0.5, 0)
    Weld.Parent = Limb
   end
   local Limb = Character:FindFirstChild("Left Leg")
   if Limb then
    Limb.Velocity = Torso.Velocity
    Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
    local Joint = Instance.new("Glue")
    Joint.Name = "LeftHip"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
    Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
    Joint.Parent = Torso
    local Weight = Instance.new("Part")
    Weight.Name = ""
    Weight.TopSurface = 0
    Weight.BottomSurface = 0
    Weight.Shape = "Block"
    Weight.FormFactor = "Custom"
    Weight.Size = Vector3.new(1, 1, 1)
    Weight.Transparency = 1
    Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
    Weight.Parent = Character
    local Weld = Instance.new("Weld")
    Weld.Part0 = Limb
    Weld.Part1 = Weight
    Weld.C0 = CFrame.new(0, -0.5, 0)
    Weld.Parent = Limb
   end
   local Weight = Instance.new("Part")
   Weight.Name = ""
   Weight.TopSurface = 0
   Weight.BottomSurface = 0
   Weight.Shape = "Block"
   Weight.FormFactor = "Custom"
   Weight.Size = Vector3.new(1.75, 1.5, 1.1)
   Weight.Transparency = 1
   Weight.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
   Weight.Parent = Character
   local Weld = Instance.new("Weld")
   Weld.Part0 = Torso
   Weld.Part1 = Weight
   Weld.C0 = CFrame.new(0, 0.5, 0)
   Weld.Parent = Torso
  end
 elseif Format == false then
  if Character:FindFirstChild("Ragdoll") ~= nil then Character.Ragdoll:Remove() end
  if Torso ~= nil then
   local Limb = Character:FindFirstChild("Right Arm")
   if Limb ~= nil then
    local Joint = Instance.new("Motor6D")
    Joint.Name = "Right Shoulder"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
    Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
    Joint.MaxVelocity = 0.15
    Joint.Parent = Torso
   end
   local Limb = Character:FindFirstChild("Left Arm")
   if Limb ~= nil then
    local Joint = Instance.new("Motor6D")
    Joint.Name = "Left Shoulder"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
    Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
    Joint.MaxVelocity = 0.15
    Joint.Parent = Torso
   end
   local Limb = Character:FindFirstChild("Right Leg")
   if Limb ~= nil then
    local Joint = Instance.new("Motor6D")
    Joint.Name = "Right Hip"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
    Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
    Joint.MaxVelocity = 0.1
    Joint.Parent = Torso
   end
   local Limb = Character:FindFirstChild("Left Leg")
   if Limb ~= nil then
    local Joint = Instance.new("Motor6D")
    Joint.Name = "Left Hip"
    Joint.Part0 = Torso
    Joint.Part1 = Limb
    Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
    Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
    Joint.MaxVelocity = 0.1
    Joint.Parent = Torso
   end
   local Animate = Character:FindFirstChild("Animate")
   if Animate ~= nil then
    local Animate2 = Animate:Clone()
    Animate:Remove()
    Animate2.Parent = Character
   end
  end
 else
  return false
 end
 return true, Format
end


function downFTH()
		local Dagger = Instance.new('Part')
		Dagger.Name = 'Dagger'
		Dagger.BrickColor = BrickColor.new('Cyan')
		Dagger.Locked = true
		Dagger.Shape = 'Block'
		Dagger.Size = Vector3.new(1, 3.8, 1)
		Dagger.Parent = char
		Dagger.CanCollide = false
		local DaggerMesh = Instance.new('SpecialMesh',Dagger)
		DaggerMesh.Name = 'DaggerMesh'
		DaggerMesh.MeshType = 'FileMesh'
		DaggerMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
		DaggerMesh.VertexColor = Vector3.new(0, 0, .7)
		local handle = Dagger
        handle.CanCollide = false
        handle.Size = handle.Size * Vector3.new(3, 5, 3)
        handle.Parent = char
        handle.DaggerMesh.Scale = handle.DaggerMesh.Scale * Vector3.new(2, 5, 2)
        handle.CFrame = cn(rootpart.CFrame.x,rootpart.CFrame.y+100,rootpart.CFrame.z)
        local bp = ins("BodyPosition",handle)
        bp.maxForce = v3(math.huge,math.huge,math.huge)*math.huge
        bp.P = 6^5.5
        bp.position = cn(rootpart.CFrame.x,rootpart.CFrame.y+100,rootpart.CFrame.z).p
        local bg = ins("BodyGyro",handle)
        local targ = cn(rootpart.CFrame.x+math.random(-40,40),FindGround(rootpart.CFrame).y,rootpart.CFrame.z+math.random(-40,40))
        bg.maxTorque = v3(1,1,1)/1
        bp.position = (targ*CFrame.Angles(math.rad(180),0,0)).p
        repeat game:service'RunService'.Stepped:wait()
                bg.cframe = cn(handle.Position,targ.p)*ca(pi/2, 0,0)
                local mag = (handle.Position-targ.p).magnitude
        until mag < 2
        bp.position = bp.position + v3(0,2,0)
        crater(targ,2,3,"Pastel light blue","Ice")
        crownExplode(targ,"Pastel light blue")
        game:service'Debris':AddItem(handle,20)
        MagniDamage('Down From The Heavens', handle, handle,30,10,40,1,"Normal")
end

function dnd()

death=Instance.new("Part",Instance.new('Model',char))
death.Anchored=true
death.formFactor="Custom"
death.Name="pew"
death.Transparency=0
death.CanCollide=false
death.Size=Vector3.new(1,50,1)
death.CFrame=rootpart.CFrame*CFrame.new(0,12.5,-10)
death.TopSurface=0
death.BottomSurface=0
death.BrickColor=BrickColor.new("Cyan")
deamesh=Instance.new("SpecialMesh",death)
deamesh.MeshType="Sphere"
wait()
coroutine.resume(coroutine.create(function() for DEAAATH=0,50 do death.Transparency=DEAAATH*.02 deamesh.Scale=Vector3.new(DEAAATH*.35,1,DEAAATH*.35) wait() end end))
decay=Instance.new("Part", Instance.new('Model',char))
decay.Anchored=true
decay.formFactor="Custom"
decay.Name="pew"
decay.Transparency=1
decay.CanCollide=false
decay.Size=Vector3.new(10,1,10)
decay.CFrame=rootpart.CFrame*CFrame.new(0,0,-10)
decay.BrickColor=BrickColor.new("Toothpaste")
mash=Instance.new("BlockMesh",decay)
mash.Scale=Vector3.new(0,1,0)
dend=Instance.new("PointLight",decay)
dend.Brightness=123
dend.Color=decay.BrickColor.Color
dend.Range=0

local qwerty = asd(game.ReplicatedStorage, 'Tha\'kiel'):Clone()
qwerty.Parent = char

qwerty.Inner.CanCollide = false
qwerty.Outer.CanCollide = false
qwerty.Inner.Mesh.Scale = qwerty.Inner.Mesh.Scale + Vector3.new(4.2, 4.2, 4.2)
qwerty.Outer.Mesh.Scale = qwerty.Outer.Mesh.Scale + Vector3.new(4, 4, 4)
qwerty.Inner.Anchored=true
qwerty.Outer.Anchored=true

local qwertyweld = Instance.new('Weld', qwerty)
qwertyweld.Part0 = qwerty.Inner
qwertyweld.Part1 = qwerty.Outer

qwerty.Inner.CFrame = decay.CFrame*CFrame.new(0, 6, 1)
qwerty.Outer.CFrame = qwerty.Inner.CFrame
local Damaged = {}

coroutine.wrap(function()
	for i,v in pairs(IsNear(qwerty.Inner.Position, 35, nil, true)) do
		if v~=char then 
			if Damaged[searchForHumanoid(v)] and tick()-Damaged[searchForHumanoid(v)] < .5 then return end
				local BodPos = Create("BodyPosition"){
					P = 50000,
					D = 1000,
					maxForce = Vector3.new(math.huge, math.huge, math.huge),
					position = v.HumanoidRootPart.Position,
					Parent = v.HumanoidRootPart,
				}
				local BodGy = Create("BodyGyro") {
					maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
					P = 20e+003,
					Parent = v.HumanoidRootPart,
					cframe = v.HumanoidRootPart.CFrame,
				}
				v.HumanoidRootPart.Anchored = true
				coroutine.resume(coroutine.create(function(Part) 
					wait(1)
					Part.Anchored = false
				end), v.HumanoidRootPart)
				game:GetService("Debris"):AddItem(BodPos, 1)
				game:GetService("Debris"):AddItem(BodGy, 1)
			Damaged[searchForHumanoid(v)] = tick()
		end
	end
end)()



coroutine.resume(coroutine.create(function() for DECAAAY=1,50 do mash.Scale=Vector3.new(DECAAAY*.1,0,DECAAAY*.1) dend.Range=DECAAAY*.6 wait() end end))
texturr=Instance.new("Texture",decay)
texturr.Texture = "http://www.roblox.com/asset/?id=114029243"
texturr.Face="Top"  
texturr=Instance.new("Texture",decay)
texturr.Texture = "http://www.roblox.com/asset/?id=114029243"
texturr.Face="Bottom"  
local Parts = {}
		
local Damaged = {}

for i = 1, 360, 20 do
	
	local s = Instance.new('Part', Instance.new('Model',char))
	table.insert(Parts, s)
	s.Name = 'Spikey'
	s.CFrame = decay.CFrame * CFrame.new(0, -10, 0)
	s.Size = Vector3.new(1,1,1)
	s.CanCollide = false
	s.Anchored = true
	s.BrickColor = BrickColor.new("Toothpaste")
	s.Locked = true
	s.Name = 's'
	s.Material = 'Neon'
	s.Size = Vector3.new(1, 1, 1)
	s.BottomSurface = Enum.SurfaceType.Smooth
	s.TopSurface = Enum.SurfaceType.Smooth
	local PurpleMesh = Instance.new("SpecialMesh", s)
	PurpleMesh.MeshType = Enum.MeshType.FileMesh
	PurpleMesh.Name = "Mesh"
	PurpleMesh.Scale = Vector3.new(.5,.5,.5)
	PurpleMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
	PurpleMesh.VertexColor = Vector3.new(1, 0, 1)
	
	local qwe = -10
	
	coroutine.wrap(function()
	while s do
	if qwe>=-1 then qwe=0 else qwe=qwe+.4 end
		s.CFrame = s.CFrame:lerp(CFrame.new((decay.CFrame*CFrame.new(0,5,0)).p)*CFrame.new(0, qwe, 0)
				* (CFrame.Angles(0,0,0))
				*CFrame.Angles(0,math.rad(i),0)
				*CFrame.new(0,0,-20), .3)
			game:service'RunService'.Stepped:wait()
		end
	end)()
	
	coroutine.wrap(function()
		repeat wait() until qwe>=-1
		for i = .5, 2, .03 do
			PurpleMesh.Scale = Vector3.new(i, i*2 ,i)
			game:service'RunService'.Stepped:wait()
		end
		local it=Instance.new
		local vt=Vector3.new
		local cf=CFrame.new
		local euler=CFrame.fromEulerAnglesXYZ
		local angles=CFrame.Angles
		local function NoOutline(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
		end
		local function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
			local fp=Instance.new("Part")
			fp.formFactor=formfactor
			fp.Parent=parent
			fp.Reflectance=reflectance
			fp.Transparency=transparency
			fp.CanCollide=false
			fp.Locked=true
			fp.BrickColor=BrickColor.new(tostring(brickcolor))
			fp.Name=name
			fp.Size=size
			fp.Position=Torso.Position
			--NoOutline(fp)
			fp.Material=material
			fp:BreakJoints()
			return fp
		end
		local function mesh(Mesh,part,meshtype,meshid,offset,scale)
				local mesh=it(Mesh)
				mesh.Parent=part
				if Mesh=="SpecialMesh" then
						mesh.MeshType=meshtype
						mesh.MeshId=meshid
				end
				mesh.Offset=offset
				mesh.Scale=scale
				return mesh
		end
		
		local function weld(parent,part0,part1,c0,c1)
				local weld=it("Weld")
				weld.Parent=parent
				weld.Part0=part0
				weld.Part1=part1
				weld.C0=c0
				weld.C1=c1
				return weld
		end
		local function BreakEffect(brickcolor,cframe,x1,y1,z1)
		local prt=party("Custom",char,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
		prt.Anchored=true
		prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
		coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
		CF=Part.CFrame
		Numbb=0
		randnumb=math.random()-math.random()
		for i=0,1,0.05 do
		wait()
		CF=CF*cf(0,1,0)
		--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
		Part.CFrame=CF*euler(Numbb,0,0)
		Part.Transparency=i
		Numbb=Numbb+randnumb
		end
		Part.Parent = nil
		end),prt)
		end
		for i = 1,3 do
			BreakEffect(BrickColor.new("Cyan"),s.CFrame,0.5,math.random(5,10),0.5)
		end
		coroutine.wrap(function()
			for i,v in pairs(IsNear(decay.Position, 35, nil, true)) do
			if v~=char then 
				if Damaged[searchForHumanoid(v)] and tick()-Damaged[searchForHumanoid(v)] < .5 then return end
				damageHuman(searchForHumanoid(v), (15)+getDPS()*2.5, v.HumanoidRootPart, 'Frost Ring')
				--searchForHumanoid(v).PlatformStand = true
					local vu = Instance.new("BodyVelocity",v:findFirstChild'Torso')
					vu.P = 500
					vu.maxForce = Vector3.new(10000000000,5000000000000000000000,100000000000)
					vu.velocity =  decay.CFrame.lookVector*60
					game:GetService("Debris"):AddItem(vu,0.267)
				Damaged[searchForHumanoid(v)] = tick()
			end
			end
		end)()
		cshk(decay, 35)
		s:Destroy()
	end)()

	game:service'RunService'.Stepped:wait()
end
wait(2)
coroutine.wrap(function()
for i = 0,1,.05 do
qwerty.Inner.Transparency = i
qwerty.Outer.Transparency = i

wait()
end
qwerty:Destroy()
end)()
for DECAAAY=50,1,-1 do mash.Scale=Vector3.new(DECAAAY*.1,0,DECAAAY*.1) dend.Range=DECAAAY*.6 wait() end
wait()
if dend then dend:Destroy() end if decay then decay:Destroy() end doom=false
--Thakiel.Inner.Transparency = 1
--Thakiel.Outer.Transparency = 1
--asd:Destroy()
end

qi = function(ttz) 
	local qii = Instance.new(ttz[1],ttz[2]) 
	table.foreach(ttz,function(oi,oi2) 
		if oi ~= 1 and oi ~= 2 then 
			qii[oi] = oi2 
		end 
	end) 
return qii 
end

local lances = {}

function genIceLances()
	for i = 1,3 do
		local y
		local u
		if i == 1 then
		u = 5*((mult>2 or mult<1) and mult/2 or 1)
		y = -5*((mult>2 or mult<1) and mult/2 or 1)
		elseif i == 2 then
		u = 6*((mult>2 or mult<1) and mult/2 or 1)
		y = 0*((mult>2 or mult<1) and mult/2 or 1)
		elseif i == 3 then
		u = 5*((mult>2 or mult<1) and mult/2 or 1)
		y = 5*((mult>2 or mult<1) and mult/2 or 1)
		end
	local mod = Instance.new('Model', Instance.new('Model',char))
	mod.Name = 'kenttuchdis'
	local lp = Instance.new('Part', mod)
	lp.Transparency = 1
	lp.CanCollide = false
	local lpw = Instance.new('Weld', lp)
	lpw.Part0 = char.Head
	lpw.Part1 = lp
	lpw.C0 = CFrame.new(y, u, 2)
	local lance = Instance.new('Part', lp)
	lance.BrickColor = BrickColor.new('Bright blue')
	lance.Reflectance = .5
	lance.Size = Vector3.new(2*((mult>2 or mult<1) and mult or 1), 2.4*((mult>2 or mult<1) and mult or 1), 6*((mult>2 or mult<1) and mult or 1))
	lance.Name = 'die plz thx'
	lance.Anchored = true
	lance.CanCollide = false
	local lm = Instance.new('SpecialMesh', lance)
	lm.MeshId = 'http://www.roblox.com/asset/?id=20518365'
	lm.TextureId = 'http://www.roblox.com/asset/?id=19287687'
	lm.Scale = Vector3.new(1.6*((mult>2 or mult<1) and mult/2 or 1),1.6*((mult>2 or mult<1) and mult/2 or 1),1.6*((mult>2 or mult<1) and mult/2 or 1))
	lances[#lances+1] = {active = false, obj = lance, vis=false, num=i}
	
		coroutine.wrap(function()
			while lance do
				if lances[i].active then
					lance.CFrame=lance.CFrame:lerp(CFrame.new(lp.CFrame.p, mouse.Hit.p), .6)
				else
					lance.CFrame=lance.CFrame:lerp(lp.CFrame, .8)
				end
				if lances[i].vis then
					lance.Transparency = 0
				else
					lance.Transparency = 1
				end
				wait()
			end
		end)()
	end
end

local numactive = 0

function activateLance(activate)
	for q,e in next, lances do
		if e.vis==false then
			if activate then e.active=true end
			e.vis=true
			numactive=numactive+1
			break
		end
	end
end

function deactivateLance(num)

	local lanc = lances[num]
	
	lanc.active=false
	lanc.vis = false
	
	numactive=numactive-1

end

function getLance()
	for q,e in next, lances do
		if e.vis and not e.active then
			return q
		end
	end
return false
end

function GlacialSpike()
local rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
local NewCol = 'Bright blue'
if numactive ~= 3 then return end
for i = 1,3 do
if i ~= 2 then
lances[i].active = false
lances[i].vis = false
end
end
local lance = lances[2]
numactive=numactive-3
wait()
local lancey = lance.obj:Clone()
lancey.Parent = char
lancey.Name = 'die thx'
lancey.CFrame = head.CFrame*CFrame.new(0, 8*((mult>2 or mult<1) and mult or 1), -4*((mult>2 or mult<1) and mult or 1))
lance.active = false
lance.vis = false

for i = 1,10 do
lancey.Mesh.Scale=lancey.Mesh.Scale+Vector3.new(.5, .5, .5)
lancey.CFrame = CFrame.new(lancey.Position, mouse.Hit.p)
wait(.1)
end


local asd = tick()
repeat lancey.CFrame = CFrame.new(lancey.Position, mouse.Hit.p) swait() until tick()-asd >= 3

local MainPos = lancey.Position
local MainPos2 = mouse.Hit.p
local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)

coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
	
	local num = 70
	
	repeat
	swait()
	local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
	lancey.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
	MagicBlock(BrickColor.new(NewCol), cf(lancey.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
	Pos1 = Pos1 + Look.lookVector * 5
	lancey.CFrame = CFrame.new(lancey.Position, MainPos2)
	if ohit ~= nil then
	num = 0
	end
	num = num - 1
	until num <= 0
	
	local ref = partyy(3, char, 0, 1, BrickColor.new("Black"), "Effect", vt())
	ref.Anchored = true
	ref.CFrame = cf(lancey.Position)
	game:GetService("Debris"):AddItem(ref, 0.5)
	cshk(ref, 30)
	MagniDamage('Glacial Spike', ref,ref,30,100,400,1,"Normal")
	lancey.Parent = nil 
end), MainPos, MainPos2, MouseLook)

end

function launchLance()
local rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
local NewCol = 'Bright blue'
local freebie = getLance()
if not freebie then return end
local lance = lances[freebie]
lance.active = true
numactive=numactive-1
wait(.2)
local lancey = lance.obj:Clone()
lancey.Parent = char
lancey.Name = 'die thx'
lancey.CFrame = lance.obj.CFrame
lance.active = false
lance.vis = false

for i = 1,20 do
lancey.Mesh.Scale=lancey.Mesh.Scale+Vector3.new(.08,.08,.08)
swait()
end

local MainPos = lancey.Position
local MainPos2 = mouse.Hit.p
local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)

coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
	
	local num = 70
	
	repeat
	swait()
	local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
	lancey.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
	MagicBlock(BrickColor.new(NewCol), cf(lancey.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
	Pos1 = Pos1 + Look.lookVector * 5
	lancey.CFrame = CFrame.new(lancey.Position, MainPos2)
	if ohit ~= nil then
	num = 0
	end
	num = num - 1
	until num <= 0
	
	local ref = partyy(3, char, 0, 1, BrickColor.new("Black"), "Effect", vt())
	ref.Anchored = true
	ref.CFrame = cf(lancey.Position)
	game:GetService("Debris"):AddItem(ref, 0.5)
	cshk(ref, 15)
	MagniDamage('Ice Lance', ref,ref,15,30,50,1,"Normal")
	lancey.Parent = nil 
end), MainPos, MainPos2, MouseLook)

end


partyy = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end
meshy = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  if id == "Whoosh" then
    num = math.random(1, 3)
    if num == 1 then
      id = "200633968"
    else
      if num == 2 then
        id = "200634020"
      else
        if num == 3 then
          id = "200634043"
        end
      end
    end
  end
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end), sou)
  game:GetService("Debris"):AddItem(sou, 6)
end

MagniBuff = function(Part, magni, Dec, DecAm, Dur)
  if Player.Neutral == true then
    DecreaseStat(Character, Dec, DecAm, Dur)
  end
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("HumanoidRootPart")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        cando = true
        if mag <= magni then
          if Player.Neutral == false then
            if game.Players:GetPlayerFromCharacter(head.Parent) ~= nil then
              if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
                cando = true
              else
                cando = false
              end
            else
              cando = false
            end
            if head.Parent:findFirstChild("Alignment") ~= nil and head.Parent.Alignment.Value == Player.TeamColor.Color then
              cando = true
            end
          else
            cando = false
          end
          if cando == true then
            DecreaseStat(head.Parent, Dec, DecAm, Dur)
          end
        end
      end
    end
  end
end
MagniHeal = function(Part, magni, mindam, maxdam)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("HumanoidRootPart")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        local cando = true
        if mag <= magni then
          if Player.Neutral == false then
            if game.Players:GetPlayerFromCharacter(head.Parent) ~= nil then
              if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
                cando = true
              else
                cando = false
              end
            else
              cando = false
            end
            if head.Parent:findFirstChild("Alignment") ~= nil and head.Parent.Alignment.Value == Player.TeamColor.Color then
              cando = true
            end
          else
            cando = false
          end
          if cando == true then
            parti2 = parti:Clone()
            parti2.Parent = head
            table.insert(Effects, {parti2, "Particle", 20})
            Heal = math.random(mindam, maxdam)
            if c.Parent == Character then
              Heal = math.floor(math.random(mindam / 2, maxdam / 2))
            end
            hum.Health = hum.Health + Heal
            --showDamage(c, Heal, "Heal")
          end
        end
      end
    end
  end
end

local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
LastPoint = Point
effect = function(Color, Ref, LP, P1, returnn)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = char
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = LP.p - point1.p.magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
  end
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    w1.Name = "Triangle"
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Teal")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.05})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      w2.Name = "Triangle"
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new("Teal")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.05})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = partyy(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = meshy("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partyy(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partyy(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = meshy("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, id)
  local prt = partyy(3, workspace, 0, 1, brickcolor, "Effect", vt(x1, y1, z1))
  prt.Anchored = true
  prt.CFrame = cframe
  game:GetService("Debris"):AddItem(prt, 5)
  local gui11 = it("SurfaceGui", prt)
  gui11.Face = "Top"
  local gui22 = it("ImageLabel", gui11)
  gui22.BackgroundTransparency = 1
  gui22.Image = "rbxassetid://" .. id
  gui22.ImageColor3 = NewCol
  gui22.Size = UDim2.new(1, 0, 1, 0)
  gui22.ImageTransparency = 0
  table.insert(Effects, {gui22, "Spin", delay, x3, y3, z3, msh, prt})
end
MagicRune = function(brickcolor, cframe, x1, y1, z1, ud1, ud2, delay1, delay2, sizedec, ontop)
  local prt = partyy(3, workspace, 0, 0.5, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  ggui = Instance.new("BillboardGui")
  ggui.Parent = prt
  ggui.Size = UDim2.new(ud1, 0, ud2, 0)
  if ontop == true then
    ggui.AlwaysOnTop = true
  end
  img = Instance.new("ImageLabel")
  img.Parent = ggui
  img.BackgroundTransparency = 1
  img.Size = UDim2.new(1, 0, 1, 0)
  img.Image = Runes[math.random(1, #Runes)]
  img.ImageColor3 = prt.BrickColor.Color
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Rune", 0, delay1, delay2, sizedec, img, ggui, 1, 0})
end
MagicCirclee = function(brickcolor, cframe, x1, y1, z1, ud1, ud2, delay1, delay2, sizedec, rotation, id)
  local prt = partyy(3, workspace, 0, 0.5, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  ggui = Instance.new("BillboardGui")
  ggui.Parent = prt
  ggui.Size = UDim2.new(ud1, 0, ud2 / 1.3, 0)
  ggui.AlwaysOnTop = true
  img = Instance.new("ImageLabel")
  img.Parent = ggui
  img.BackgroundTransparency = 1
  img.Size = UDim2.new(1, 0, 1, 0)
  img.Image = "rbxassetid://" .. id
  img.ImageColor3 = prt.BrickColor.Color
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Circle", 0, delay1, delay2, sizedec, img, ggui, 1, 0, rotation})
end
MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partyy(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partyy(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = partyy(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end
MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = partyy(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = meshy("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

function MagikBall()
local rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
local NewCol = 'Bright blue'
local orb = partyy(3, char, 0, 0.5, BrickColor.new(NewCol), "Effect", vt())
orb.Anchored = true
orb.CFrame = (head.CFrame*CFrame.new(0,0, -4*((mult>2 or mult<1) and mult or 1)))
do
	local msh = meshy("SpecialMesh", orb, "Sphere", "nil", vt(0, 0, 0), vt(10, 10, 10))
	local ogui = Instance.new("BillboardGui")
	ogui.Parent = orb
	ogui.Size = UDim2.new(5, 0, 5, 0)
	local oimg = Instance.new("ImageLabel")
	oimg.Parent = ogui
	oimg.BackgroundTransparency = 1
	oimg.Size = UDim2.new(1, 0, 1, 0)
	oimg.Image = Runes[math.random(1, #Runes)]
	oimg.ImageColor3 = BrickColor.new(NewCol).Color
	local orbdo = "Normal"
	local MainPos = orb.Position
	local MainPos2 = mouse.Hit.p
	local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
	so("200633492", orb, 1, 1)
	MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
		coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
			
			local num = 50
			
			repeat
			swait()
			local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
			orb.CFrame = CFrame.new((Pos1 + opos) / 2, opos)
			MagicBlock(BrickColor.new(NewCol), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
			Pos1 = Pos1 + Look.lookVector * 5
			orb.CFrame = CFrame.new(orb.Position, mouse.Hit.p)
			if ohit ~= nil then
			num = 0
			end
			num = num - 1
			until num <= 0
			
			local ref = partyy(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
			ref.Anchored = true
			ref.CFrame = cf(orb.Position)
			so("200633377", ref, 1, 1)
			game:GetService("Debris"):AddItem(ref, 0.5)
			MagicCircle(BrickColor.new(NewCol), cf(ref.Position), 40, 40, 40, 5, 5, 5, 0.05)
			
			for i = 1, 6 do
				MagicBlock(BrickColor.new(NewCol), cf(ref.Position) * cf(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 2, 2, 2, 1, 1, 1, 0.05)
			end
			cshk(ref, 15)
			MagicCirclee(BrickColor.new(NewCol), cf(ref.Position), 35, 35, 35, 30, 30, 7, 0.05, 1, 20, "200369416")
			MagniDamage('Magic Ball', ref,ref,15,10,30,1,"Normal")
			orb.Parent = nil 
		end), MainPos, MainPos2, MouseLook)
	end

end

function frostFever(plr)

	for i = 15, 1,-1 do

		damageHuman(plr:findFirstChild'Humanoid', getDPS()*.4, plr:findFirstChild'Torso', 'Frost Fever')
		
		wait(1)

	end

end

function makeZone()
	local Neon = Instance.new('Part', Instance.new('Model',char))
	Neon.Name = 'Neon'
	Neon.BrickColor = BrickColor.new('Pastel light blue')
	Neon.Anchored = true
	Neon.CanCollide = false
	Neon.Shape = 'Ball'
	Neon.Material = 'Neon'
	Neon.Size = Vector3.new(2,2,2)
	Neon.CFrame = FindGround(Torso.CFrame)
	Neon.Transparency = 1
	Neon.TopSurface,Neon.BottomSurface = 0,0	
	local Zone = Instance.new('Part', Instance.new('Model',char))
	Zone.Name = 'Godly Place'
	Zone.BrickColor = BrickColor.new('Pastel light blue')
	Zone.Anchored = true
	Zone.CanCollide = false
	Zone.Size = Vector3.new(2,2,2)
	Zone.CFrame = FindGround(Torso.CFrame)
	Zone.Transparency = .75
	Zone.TopSurface,Zone.BottomSurface = 0,0
	local sizeme=Instance.new('SpecialMesh', Zone)
	sizeme.MeshType = 'FileMesh'
	sizeme.MeshId = 'http://www.roblox.com/asset/?id=1185246'
	sizeme.TextureId = ""
	sizeme.Scale = Vector3.new(1,1,1)
	local ZClone = Zone:Clone()
	ZClone.Parent = Zone
	ZClone.CFrame= Zone.CFrame
	ZClone.Transparency = .3
	
	coroutine.wrap(function()
		for i = 1,190 do
			sizeme.Scale = Vector3.new(i, i, i)
			Neon.CFrame = Zone.CFrame
			Neon.Size = Vector3.new(i*.7, i*.7, i*.7)
			wait()
		end
	end)()
	coroutine.wrap(function()
		for i = 1,195 do
			ZClone.Mesh.Scale = Vector3.new(-i, -i, -i)
			wait()
		end
	end)()
	repeat wait() until ZClone.Mesh.Scale.y <= -195
		coroutine.wrap(function()
			
			while wait(.5) and Zone and ZClone.Mesh.Scale.y <= -195 do
				for i,v in pairs(IsNear(ZClone.Position, ZClone.Mesh.Scale.magnitude/5, nil, true)) do
					Spawn(function()
					if v and v~=Character then
						local hum = searchForHumanoid(v)
						if hum then
							if hum.WalkSpeed >= 16 and not Ally[hum] then
								coroutine.wrap(function()
									for i = 1, 3 do
										if not Zone then break end
										if v:findFirstChild('Health', true) then
											v:findFirstChild('Health', true):Destroy()
										end
										hum.WalkSpeed = 7
										damageHuman(hum, getDPS()*.01, hum.Parent.HumanoidRootPart, 'Frost Barrier')
										wait()
									end
									hum.WalkSpeed = 16
								end)()
							end
						end
					elseif v and v==Character then
						local hum = Humanoid
						if hum then
							if hum.WalkSpeed >= 22 then
								coroutine.wrap(function()
									for i = 1, 3 do
										if not Zone then break end
										hum.WalkSpeed = 50
										hum.Health = hum.Health + 5
										stats['Mana'] = stats['Mana'] + 2000
										wait()
									end
									hum.WalkSpeed = 22
								end)()
							end
						end
					end
					end)
				end
			end
		end)()
		--for i = Neon.Transparency, .66, -.01 do
		--	Neon.Transparency = i
		--	game:service'RunService'.Heartbeat:wait()
		--end
	coroutine.wrap(function()
		for i = 1, 20 do
			sizeme.Scale = sizeme.Scale + Vector3.new(2,2,2)
			Neon.Size = sizeme.Scale*.7
			Neon.CFrame = Zone.CFrame
			ZClone.Mesh.Scale = ZClone.Mesh.Scale-Vector3.new(2, 2, 2)
			wait(1)
		end
		coroutine.wrap(function()
			for i = ZClone.Mesh.Scale.y, 0, 1 do
				if not ZClone or not ZClone:findFirstChild'Mesh' then break end
				ZClone.Mesh.Scale = Vector3.new(i,i,i)
			wait()
			end
		end)()
		coroutine.wrap(function()
			for i = sizeme.Scale.y, 0,-1 do
				if not ZClone or not ZClone:findFirstChild'Mesh' then break end
				sizeme.Scale = Vector3.new(i, i, i)
				Neon.Size = sizeme.Scale
				Neon.CFrame = Zone.CFrame
			wait()
			end
		end)()
		repeat wait() until sizeme.Scale.y <= 5
		Zone:Destroy()
		Neon:Destroy()
	end)()

end

local Shielding = false
local ShieldModel = Instance.new('Model', Instance.new('Model',char))
ShieldModel.Name = 'Shield?'

function randomCastSound()
local ids = {182765513,178452217,331666004,160867437,331888685}

quickSound(ids[math.random(1,#ids)], head, .8)
end

function frostShield()
	
	if Shielding then ShieldModel:ClearAllChildren() Shielding = false return end
	Shielding = true
	
	local shield = Instance.new('Part', ShieldModel)
	shield.Name = 'rekt'
	shield.CanCollide = false
	shield.Transparency = .6
	shield.Size = Vector3.new(20, 20, 20)
	shield.BrickColor = BrickColor.new'Cyan'
	shield.Anchored = true
	shield.Shape = 'Ball'
	shield.Material = 'Neon'
	shield.TopSurface,shield.BottomSurface = 0,0
	
	local Damaged = {}
	
	coroutine.wrap(function()
		while shield and Shielding do
			shield.CFrame = torso.CFrame
			coroutine.wrap(function()
				for q,e in next, IsNear(torso.Position, 10, false, nil) do
					local hum = e:findFirstChild'Humanoid'
					if hum then
						if Damaged[hum] and tick()-Damaged[hum] < .1 then return end
						local calc = getDPS()*3
						pcall(function() damageHuman(hum, getDPS(), hum.Parent.HumanoidRootPart, 'Frost Shield') end)
						Damaged[hum] = tick()
					end
				end
			end)()
		swait()
		end
	end)()
	
	coroutine.wrap(function()
	wait(10)
	if Shielding then frostShield() end
	end)()
	
end

function plot(delta1, delta2, delta3) --delta1: Multiplier for number of circles | delta2: Multiplier for number of points in each circle | delta3: Multiplier for distance between each circle
	delta1, delta2, delta3 = delta1 or 30, delta2 or 30, delta3 or 4
	local rtn = {}
	for off = delta1, 1, -6 do
		for theta = -math.pi, math.pi, math.pi/off do
			rtn[#rtn+1] = {x = math.sin(theta)*off*delta3, z = math.cos(theta)*off*delta3}
		end
	end
	return rtn
end

local supporting
function becomeSupport()
	supporting = true
	torso.CFrame = torso.CFrame * CFrame.new(0, 15, 0)
	local fxholder = Instance.new('Model', Instance.new('Model',char))
	local supportPart = Instance.new('Part')
	supportPart.Size = Vector3.new(1,1,1)
	supportPart.Anchored = false
	supportPart.CanCollide = false
	supportPart.BrickColor = BrickColor.new'Teal'
	supportPart.Material = 'Neon'
	local gloup = Instance.new('PointLight', supportPart)
	gloup.Color = Color3.new(0,0,1)
	gloup.Range = 15
	local supportMe = Instance.new('Weld', fxholder)
	supportMe.Part0 = torso
	supportMe.Part1 = supportPart
	local support1Mesh = Instance.new('SpecialMesh', supportPart)
	support1Mesh.Name = 'tuch me dadi'
	support1Mesh.MeshType = 'FileMesh'
	support1Mesh.Scale = Vector3.new(20,30,20)
	support1Mesh.MeshId = 'rbxassetid://9756362'
	supportPart.Parent = fxholder
	local supportOrb = Instance.new('Part')
	supportOrb.Size = Vector3.new(1,1,1)
	supportOrb.Anchored = false
	supportOrb.CanCollide = false
	supportOrb.BrickColor = BrickColor.new'Teal'
	supportOrb.Material = 'Neon'
	supportOrb.Transparency = .9
	local gloup = Instance.new('PointLight', supportOrb)
	gloup.Color = Color3.new(0,0,1)
	gloup.Range = 15
	local supportMe = Instance.new('Weld', fxholder)
	supportMe.Part0 = torso
	supportMe.Part1 = supportOrb
	local support2Mesh = Instance.new('SpecialMesh', supportOrb)
	support2Mesh.Name = 'tuch me dadi'
	support2Mesh.MeshType = 'Sphere'
	support2Mesh.Scale = Vector3.new(150,150,150)
	supportOrb.Parent = fxholder
	local antiOrb = Instance.new('Part')
	antiOrb.Size = Vector3.new(1,1,1)
	antiOrb.Anchored = false
	antiOrb.CanCollide = false
	antiOrb.BrickColor = BrickColor.new'Teal'
	antiOrb.Material = 'Neon'
	antiOrb.Transparency = .85
	local gloup = Instance.new('PointLight', antiOrb)
	gloup.Color = Color3.new(0,0,1)
	gloup.Range = 15
	local supportMe = Instance.new('Weld', fxholder)
	supportMe.Part0 = torso
	supportMe.Part1 = antiOrb
	local support3Mesh = Instance.new('SpecialMesh', antiOrb)
	support3Mesh.Name = 'tuch me dadi'
	support3Mesh.MeshType = 'FileMesh'
	support3Mesh.MeshId = 'http://www.roblox.com/asset/?id=1185246'
	support3Mesh.Scale = Vector3.new(-215,-215,-215)
	antiOrb.Parent = fxholder
	
	local rows = {}
	local cancer = {}
	
	local datapoints = plot(3, 8, 7)
	local Pushed = {}
	
	for nildata, tbl in next, datapoints do
		
		
		local tumor = Instance.new('Part')
		tumor.Name = 'crippling depression'
		tumor.Parent = fxholder
		tumor.Anchored = true
		tumor.BrickColor = BrickColor.new('Toothpaste')
		tumor.CanCollide = false
		local leukemia = Instance.new('SpecialMesh')
		leukemia.Parent = tumor
		leukemia.Name = 'tuch me here dadi'
		leukemia.MeshType = 'FileMesh'
		leukemia.MeshId = "http://www.roblox.com/Asset/?id=9756362"
		leukemia.Scale = Vector3.new(1.5, 10, 1.5)
		
		tumor.CFrame = CFrame.new(torso.Position)*CFrame.new(tbl.x, -12, tbl.z)
		
		coroutine.wrap(function()
		
			for i = 1, 10 do
				tumor.CFrame = tumor.CFrame:lerp(tumor.CFrame*CFrame.new(0, 6, 0), .2)
				wait()
			end

			coroutine.wrap(function()
				while supporting do
				
				leukemia.Scale = Vector3.new(.5+math.abs(math.sin(tick()))*1.5, 2+math.abs(math.sin(tick()))*6, .5+math.abs(math.sin(tick()))*1.5)
				tumor.CFrame = tumor.CFrame:lerp(CFrame.new(torso.Position)*CFrame.new(tbl.x, 0, tbl.z), .3)
				
				swait()
				end
			end)()
		
		end)()
		
	end
	
	local Supported = {}
	local Pushed = {}
	spawn(function()
		canedit = true
		hum.MaxHealth=hum.MaxHealth/5
		wait()
		hum.Health = hum.Health/5
		repeat wait() torso.Anchored = true until not supporting
		hum.MaxHealth = 1000*mult
		wait()
		hum.Health = hum.Health*5	
		wait()
		canedit = false
	end)
	coroutine.wrap(function()
		while supporting do
			for i,v in pairs(IsNear(rootpart.Position, 20)) do
				if v~=char then
					if Pushed[searchForHumanoid(v)] and tick()-Pushed[searchForHumanoid(v)] < .05 then return end
					Pushed[searchForHumanoid(v)] = tick()
					local bpp = qi({"BodyVelocity",v.HumanoidRootPart,maxForce=Vector3.new(1/0,1/0,1/0),velocity=CFrame.new(rootpart.Position,v.HumanoidRootPart.Position).lookVector*25}) 
					wait(0.1) 
					bpp:Remove()
				end
			end
			swait()
		end
	end)()
	spawn(function()
		while supporting do
			for i,v in next, IsNear(rootpart.Position, 100) do
				if v~=char then
				local hum = v:findFirstChild'Humanoid'
					if not Supported[hum] and hum and Ally[hum] and v:findFirstChild'Torso' then
					Supported[hum] = true; 
					spawn(function() wait(16) Supported[hum] = false end)
						spawn(function()
							if Ally[hum] then
								spawn(function()
									local holdah = Instance.new('Model', v)
									local Aur = Instance.new('Part')
									Aur.Transparency = .75
									Aur.BrickColor = BrickColor.new'Cyan'
									Aur.Name = 'Aura'
									Aur.Size = Vector3.new(1.05,2.05,1.05)
									Aur.Material = 'Neon'

									local asdddd = {v['Right Arm'], v['Left Arm'], v['Left Leg'],v['Right Leg']}

									for q,e in next, asdddd do
										local asdfert = Aur:Clone()
										asdfert.Parent = holdah
										local wlder = Instance.new('Weld')
										wlder.Parent = holdah
										wlder.Part0 = asdfert
										wlder.Part1 = e
									end

									Aur.Parent = holdah
									Aur.Size = Vector3.new(2.05, 2.05, 1.05)
									local w = Instance.new('Weld')
									w.Parent = holdah
									w.Part0 = v['Torso']
									w.Part1 = Aur
									wait(16)
									holdah:Destroy()
								end)
								spawn(function()
									local oldmh = hum.MaxHealth
									local newmh = oldmh*1.5
									for i = 1,15 do
										hum.MaxHealth = newmh
									wait(1)
									end
									hum.MaxHealth = oldmh
								end)
								spawn(function()
									local oldws = hum.WalkSpeed
									local newws = oldws*2
									for i = 1,15 do
										hum.WalkSpeed = newws
									wait(1)
									end
									hum.WalkSpeed = oldws
								end)
								wait()
							end
						end)
					end
					if Ally[hum] then
						hum:TakeDamage(-(hum.MaxHealth*.005))
					end
				end
			end
			wait(1)
		end
	end)
	local tix = 0
	spawn(function()
		while supporting do
		tix = tix+1
			if tix >= 30 then supporting = false end
			wait(1)
		end
	end)
	while supporting do
	local cc = supportPart:Clone()
	cc.Anchored = true
	cc.Parent = fxholder
	for i = 0,1,.1 do
		cc.CFrame = supportPart.CFrame
		cc.Transparency = i
		cc['tuch me dadi'].Scale = cc['tuch me dadi'].Scale + Vector3.new(.25,.35,.25)
	wait()
	end
	for i = 1,2 do
		BreakEffect(BrickColor.new("Teal"),torso.CFrame,0.5,math.random(5,20),0.5)
	end
	wait()
	end
	for i,v in next, fxholder:children'' do
		spawn(function()
			pcall(function()
				for i = 0,1,.1 do
					v.Transparency = i
					swait()
				end
				v:Destroy()
			end)
		end)
	end
	torso.Anchored = false
end

function MakeRift()

local set = math.random(-25, 25)
local height = math.random(5, 15)
local behind = math.random(-5, 15)
local targ = getTarget().Parent:findFirstChild'HumanoidRootPart'
local tframe = Torso.CFrame * CFrame.new(set, height, behind)

if not targ then return end
if targ==torso then return end

local RModel = Instance.new('Model')
RModel.Parent = char
RModel.Name = 'Dimensional Rift'

local Rift = Instance.new('Part')
Rift.Name = 'Rift Portal'
Rift.Size = Vector3.new(1,1,1)
Rift.BrickColor = BrickColor.new('Really black')
Rift.Anchored = true
Rift.CanCollide = false
Rift.TopSurface,Rift.BottomSurface = 0,0
local RMesh = Instance.new('SpecialMesh')
RMesh.Scale = Vector3.new(0,0,0)
RMesh.MeshType = 'Sphere'

local Ring = Instance.new('Part')
Ring.Name = 'Ring'
Ring.Material = 'Neon'
Ring.Size = Vector3.new(1,1,1)
Ring.CanCollide = false
Ring.BrickColor = BrickColor.new('Bright blue')
Ring.Anchored = true
Ring.TopSurface,Ring.BottomSurface = 0,0
local RiMesh = Instance.new('SpecialMesh')
RiMesh.Scale = Vector3.new(0,0,0)
RiMesh.MeshId = 'rbxassetid://3270017'

Rift.Parent = RModel
Ring.Parent = Rift
RiMesh.Parent = Ring
RMesh.Parent = Rift

coroutine.wrap(function()
	ypcall(function()
		while Rift and Rift.Parent do
			Rift.CFrame = CFrame.new(tframe.p, targ.Position)
			Ring.CFrame = Rift.CFrame
			swait()
		end
	end)
end)()

coroutine.wrap(function()
for i = .1,4,.1 do
RMesh.Scale = Vector3.new(i, 6, .01)
RiMesh.Scale = Vector3.new(i, 5.5, .005)
wait()
end

if math.random(1,3) >= 2 then

local shouldshoot = true
local strt = tick()

coroutine.wrap(function() repeat wait() if not targ and targ.Parent then break end until tick()-strt >= 15 shouldshoot = false end)()

local haste = 2.7

while shouldshoot do
if not targ and targ.Parent then break end
haste=haste-.1
if haste <= .1 then haste = .1 end
coroutine.wrap(shoottrail3)(Rift, targ)
wait(haste)
end

else

for i = 1,3 do
shoottrail2(targ.Parent.Head, Rift)
wait(3)
end

end

for i = 4,0, -.1 do
RMesh.Scale = Vector3.new(i, 6, .01)
RiMesh.Scale = Vector3.new(i, 5.5, .005)
wait()
end

RModel:Destroy()

end)()

return Rift

end


function getTarget()
    return currentTarget
end

local Blocking = false
local Charging = false
local Burst = true
local lastpress = tick()
local Keys = {}

function Chat(text, t, c, thing)
local thing = (thing and thing or head)
local t = (t and t or 3)
ShowText((thing.CFrame * CFrame.new(0, math.random(2, 6), (thing.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), text, t, (c and c or Color3.new(0,0,1)))
end

local randGotcha = {"By the power of elune...","You shall bear witness to my devastation.", "I've got you now!", "You're in my clutches!", "This is your end!", "Die by my hand.", "I will show you true fear.", "Run.. while you can.", "You're finished!", "Pathetic.", "You'll have to try harder than that!", "Is that all?", "Heh.", "You actually believe that you can defeat me?", "It's no use..", "Die.. by my icy touch!", "You won't be able to break through my ice!"}

function Burstf()
	local mod=Instance.new('Model',Instance.new('Model',char))
    local part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    --part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=rootpart.CFrame*CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7

    part.BrickColor=BrickColor.new('Cyan')

    local mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    local part2=part:clone()
    part2.Parent=mod

    part2.BrickColor=BrickColor.new('Teal')

    local mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(5,2.5,5)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            end
        mod:Destroy()
    end))
	SphereEffect(BrickColor.new("White"),rootpart.CFrame,1,1,1,5,5,5,.06)
	MoonEffect(BrickColor.new("Bright blue"),rootpart.CFrame*cf(0,2,0),1,1,1,.5,.5,.5,.06)
	SpecialEffect(BrickColor.new("White"),rootpart.CFrame,1,1,1,3,3,3,.08)
	SpecialEffect(BrickColor.new("Bright blue"),rootpart.CFrame,1,1,1,3,3,3,.07)
	RingEffect(BrickColor.new("Toothpaste"),rootpart.CFrame*cf(0,0,-5)*angles(math.rad(10,150),0,0),3,3,1,3,3,0,.07)
	Torso.Velocity=Head.CFrame.lookVector*300
	for i = 0, 1.5, .1 do
		--MagniDamage(ref,torso,10,1,10,1,"Normal")
		SphereEffect(BrickColor.new("Toothpaste"),rootpart.CFrame,1,1,1,3,3,3,.08)
		RingEffect(BrickColor.new("Toothpaste"),rootpart.CFrame*cf(0,1,0),1,1,1,1,1,0,.07)
		swait()
	end
end

local Damag = {}

function particleBlast()
Chat("Now, face the realization...", 3)
local blasting = true
coroutine.wrap(function()
otheranims = true
Mode = ""
	while blasting do
	swait()
		lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(-.1, 0, -.5) * CFrame.Angles(math.rad(-12), math.rad(-11), math.rad(18)), .3)
		lerp(llegm, llegm.C0, llc0 * CFrame.new(.1, 0, -.5) * CFrame.Angles(math.rad(-12), math.rad(11), math.rad(-18)), .3)
		lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(16), math.rad(0), math.rad(-0)), .3)
		lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(85), math.rad(-34), math.rad(-66)), .3)
		lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(85), math.rad(34), math.rad(66)), .3)
		lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, 1.5+.5-math.cos(tick())*.3) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		lerp(tweld, tweld.C0, twc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .1)
	end
otheranims = false
end)()
local huge = math.huge
local model = Instance.new('Model',Instance.new('Model',char))
local pos = torso.Position
local grass = Instance.new('Part'):Clone()
grass.Size = Vector3.new(1,1,1)
grass.Material = Enum.Material.Neon
grass.Anchored = false
grass.CanCollide = false
local bp = Instance.new('BodyPosition',grass)
bp.D = 100
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 200
wait(1)
torso.Anchored = true
local vel = torso.CFrame.lookVector*200
spawn(function()wait(3) torso.Anchored = false blasting = false end)
for i = 1,math.random(120,220) do
	local color = math.random(1,2)
	local random = math.random()
	local clone = grass:Clone()
	if color == 1 then
		clone.BrickColor = BrickColor.new(0, 0, .4)
	else
		clone.BrickColor = BrickColor.new(1,1,1)
	end
	clone.Position = pos+Vector3.new(math.random(-25,25),-10,math.random(-25,25))
	clone.Size = Vector3.new(random,random,random)
	clone.BodyPosition.Position = pos+Vector3.new(math.random(-35,35),math.random(-1,15),math.random(-35,35))
	Instance.new('BodyAngularVelocity',clone)
	clone.BodyAngularVelocity.AngularVelocity = Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
	clone.Parent = model
end
wait(3)
Chat("That you were not prepared.", 3)
for i,v in pairs(model:GetChildren()) do
	swait()
	coroutine.wrap(function()
		while v do
			swait()
			for i,v in pairs(IsNear(v.Position, 15, nil, true)) do
				if Damag[searchForHumanoid(v)] and tick()-Damag[searchForHumanoid(v)] < .05 then return end
				local calc = getDPS()*2
				damageHuman(searchForHumanoid(v), calc, v:findFirstChild'Torso', 'Particle Blast')
				Damag[searchForHumanoid(v)] = tick()
			end
		end
	end)()
	local bv = Instance.new('BodyVelocity',v)
	v.BodyPosition:Destroy()
	bv.MaxForce = Vector3.new(huge,huge,huge)
	bv.Velocity = vel
	game:service'Debris':AddItem(v, 4)
end
end

function crg()
Chat(randGotcha[math.random(1,#randGotcha)], 2, Color3.new(1, 0, 0))
end

coroutine.wrap(function()
	while wait(math.random(15, 45)) do
		if tick()-lastpress<10 then
			crg()
		end
	end
end)()

function cometStorm()
	local numtween = function(a, b, t)
		return (b-a)*t + a
	end
	local fxholder = Instance.new('Model', Instance.new('Model',char))
	local function rayCast(Pos, Dir, Max, Ignore)
		return game:service("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
	end 
	otheranims = true
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	Mode = 'Casting'
	wait(.2)
	local startedb = false
	local focusing = true
	local rune = Instance.new('Part')
	rune.Size = Vector3.new(10,1,10)
	rune.Transparency = 1
	rune.CanCollide = false
	rune.Anchored = true
	local mash=Instance.new("BlockMesh",rune)
	mash.Scale=Vector3.new(5.5,1,5.5)
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332785"
	texturr.Face="Top"  
	texturr.Transparency = .2
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332785"
	texturr.Face="Bottom" 
	texturr.Transparency = .2
	spawn(function()
		while focusing do
		rune.CFrame = CFrame.new(mouse.Hit.p)
		swait()
		end
		repeat swait() until startedb
		while startedb do
			rune.CFrame = rune.CFrame * CFrame.Angles(0,-math.rad(2),0)
			mash.Scale = mash.Scale+Vector3.new(.0115,.0115,.0115)
			swait()
		end
	end)
	rune.Parent = fxholder
	wait(3)
	hum.WalkSpeed = 22
	hum.JumpPower = 100
	otheranims = false
	focusing = false
	local Damaged = {}
	coroutine.wrap(function()
		for i,v in pairs(IsNear(rune.Position, 25, nil, true)) do
			if v~=char then 
				if Damaged[searchForHumanoid(v)] and tick()-Damaged[searchForHumanoid(v)] < .5 then return end
					local BodPos = Create("BodyPosition"){
						P = 50000,
						D = 1000,
						maxForce = Vector3.new(math.huge, math.huge, math.huge),
						position = v.HumanoidRootPart.Position,
						Parent = v.HumanoidRootPart,
					}
					local BodGy = Create("BodyGyro") {
						maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
						P = 20e+003,
						Parent = v.HumanoidRootPart,
						cframe = v.HumanoidRootPart.CFrame,
					}
					v.HumanoidRootPart.Anchored = true
					coroutine.resume(coroutine.create(function(Part) 
						wait(3)
						Part.Anchored = false
					end), v.HumanoidRootPart)
					game:GetService("Debris"):AddItem(BodPos, 4)
					game:GetService("Debris"):AddItem(BodGy, 4)
				Damaged[searchForHumanoid(v)] = tick()
			end
		end
	end)()
	wait(.5)
	local Sat = {}
	startedb = true
	for i = 1, 30 do
		spawn(function()
			local comet = Instance.new('Part')
			comet.Size = Vector3.new(10,10,10)
			comet.BrickColor = BrickColor.new'Teal'
			comet.TopSurface,comet.BottomSurface = 0,0
			comet.Anchored = true
			comet.CanCollide = false
			local cometm = Instance.new('SpecialMesh', comet)
			cometm.Scale = Vector3.new(1,1,1)
			cometm.MeshType = 'Sphere'
			comet.Parent = char
			comet.CFrame = rune.CFrame*CFrame.new(math.random(-25,25), 80, math.random(-25,25))
			bcol=BrickColor.new numkp=NumberSequenceKeypoint.new
			
			local hit,pos = rayCast(comet.Position, Vector3.new(0,-1,0), 800, {char})
			if hit then 
				local hitcf = CFrame.new(pos)
				repeat swait() local fakecomet = comet:Clone(); game:service'Debris':AddItem(fakecomet, 2) fakecomet.Parent = fxholder spawn(function() for i = 0,1,.1 do fakecomet:children()[1].Scale = fakecomet:children()[1].Scale - Vector3.new(.03,.03,.03) fakecomet.Transparency = i swait() end end) comet.CFrame = comet.CFrame:lerp(hitcf, .28) until (comet.Position-pos).magnitude < 1
				swait()
				spawn(function()
					local abreak = Instance.new'Sound'
					abreak.SoundId = 'rbxassetid://142070127'
					abreak.Parent = comet
					abreak.Volume = 2
					abreak.Pitch = math.random(1,3)
					swait()
					abreak:Play()
				end)
				coroutine.wrap(function()
					for i,v in pairs(IsNear(comet.Position, 30, nil, true)) do
						if v~=char then 
							if v:findFirstChild'Humanoid' and not Ally[v:findFirstChild'Humanoid'] then -- and not Sat[v] then
							Sat[v] = true
							v:findFirstChild'Humanoid'.Sit = true
							end
						end
					end
				end)()
				spawn(function()
					for i=1,math.random(6,10) do
						BreakEffect(BrickColor.new("Teal"),comet.CFrame,0.5,math.random(5,20),0.5)
					end
				end)
				MagniDamage('Comet Storm', comet, comet, 15 ,2,3,1,"Normal")
				for i = 0,1,.1 do
					cometm.Scale = cometm.Scale + Vector3.new(.25,.25,.25)
					comet.Transparency = i
				swait()
				end
				game:service'Debris':AddItem(comet)
			end
		end)
		wait(.2)
	end
	wait(2)
	startedb = false
	for i = 1,15 do
		mash.Scale = Vector3.new(numtween(mash.Scale.X, -2, .1),numtween(mash.Scale.Y, -2, .1),numtween(mash.Scale.Z, -2, .1))
		swait()
	end
	rune:Destroy()
	game:service'Debris':AddItem(fxholder)
end

function Spike()
local stuff = Instance.new('Model')
stuff.Parent = char
local numtween = function(a, b, t)
    return (b-a)*t + a
end


local lockin = {}
local focusing = true
local donelol = false
local stopholding = false
local oompa = false
local startedb = false
local rune = Instance.new('Part')
rune.Size = Vector3.new(70,1,70)
rune.Transparency = 1
rune.CanCollide = false
rune.Anchored = true
local mash=Instance.new("BlockMesh",rune)
mash.Scale=Vector3.new(1,1,1)
local texturr=Instance.new("Texture",rune)
texturr.Texture = "http://www.roblox.com/asset/?id=114029243"
texturr.Face="Top"  
local texturr=Instance.new("Texture",rune)
texturr.Texture = "http://www.roblox.com/asset/?id=114029243"
texturr.Face="Bottom" 
spawn(function()
	while focusing do
	rune.CFrame = CFrame.new(mouse.Hit.p)
	swait()
	end
	while not oompa do
		rune.CFrame = rune.CFrame * CFrame.Angles(0,math.rad(10),0)
		mash.Scale = mash.Scale+Vector3.new(.02,.02,.02)
		swait()
	end
	for i = 1,10 do
		mash.Scale = Vector3.new(numtween(mash.Scale.X, 0, .1),numtween(mash.Scale.Y, 0, .1),numtween(mash.Scale.Z, 0, .1))
		swait()
	end
	repeat swait() until startedb
	while not donelol do
		rune.CFrame = rune.CFrame * CFrame.Angles(0,-math.rad(10),0)
		mash.Scale = mash.Scale+Vector3.new(.03,.03,.03)
		swait()
	end
end)
rune.Parent = stuff

spawn(function()
	while not stopholding do
		otheranims = true
		Mode = ''
		lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0+math.cos(sine/15)*.01, .1+math.cos(sine/15)*.06, -.3+math.cos(sine/15)*.01)  * CFrame.Angles(0, -math.rad(30), math.rad(3)),.3)
		lerp(llegm, llegm.C0, llc0 * CFrame.new(0+-math.cos(sine/15)*.01, .1+math.cos(sine/15)*.06, -.2+math.cos(sine/15)*.01) * CFrame.Angles(0, math.rad(20), -math.rad(3)),.3)
		lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.cos(sine/15)*.06-math.rad(5), -math.rad(20), 0),.3)
		lerp(lm, lm.C0, lsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(160), 0, -math.rad(10)),.3)
		lerp(rm, rm.C0, rsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(50), 0, math.rad(10)),.3)
		lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,1.5+.2-math.cos(sine/15)*.3) * CFrame.Angles(0,0,math.rad(20)),.3)
		lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), .5)
		lerp(nw, nw.C0, nwc0, .4)
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		swait()
	end
	hum.WalkSpeed = 22
	hum.JumpPower = 100
	otheranims = false
end)
local holdpos = head.CFrame
local spike = Instance.new('Part')
spike.Size = Vector3.new(10, 10, 25)
spike.Anchored = true
spike.CanCollide = false
spike.Transparency = 1
spike.CFrame = CFrame.new((holdpos * CFrame.new(0, 55, 0)).p, mouse.Hit.p)
spike.BrickColor = BrickColor.new('Teal')
swait()
spike.Parent =  stuff
local mesh = Instance.new('SpecialMesh')
mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh.MeshType = 'FileMesh'
mesh.Name = 'tuch me here dadi'
mesh.Scale = Vector3.new(10,10,10)
mesh.Parent = spike
local spikeoutline = spike:Clone()
spikeoutline.BrickColor = BrickColor.new('Really black')
spikeoutline:children()[1].Scale = Vector3.new(11,11,11)
local spikew = Instance.new('Weld')
spikew.Part0 = spike
spikew.Part1 = spikeoutline
spikew.Parent = spike

local s = Instance.new('Sound')
s.SoundId = 'rbxassetid://217354727'
s.Volume = 3
s.Pitch = 0.435
s.Parent = spike
wait()

local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
        local p = ins(typ or "Part")
        p.FormFactor = "Custom"
        p.Material = mat
        p.Transparency = tra
        p.CanCollide = canc
        p.Anchored = anc
        p.BrickColor = bc(col)
        p.Size = siz
        p.CFrame = cfr
        p.Parent = prnt
        p.Locked = true
        p.TopSurface,p.BottomSurface = 0,0
        p:BreakJoints()
        return p
end
local meshnew = function(typ,prnt,scal,mtyp,mid,mtx)
        local m = ins(typ or "SpecialMesh")
        if mtyp then m.MeshType = mtyp end
        if mid then m.MeshId = mid end
        if mtx then m.TextureId = mtx end
        if scal then m.Scale = scal end
        m.Parent = prnt
        return m
end

spawn(function() local qqqe = .25 while spike and spike.Parent and focusing do qqqe=qqqe+5 if qqqe>=360 then qqqe=0 end spike.CFrame = spike.CFrame:lerp(CFrame.new(spike.Position, mouse.Hit.p)*CFrame.Angles(0,0,math.rad(qqqe)), .3)  spawn(function() for i,v in pairs(lockin) do  local prtasd = v[1] prtasd.CFrame = spike.CFrame*v[2] end end) swait()end end)

s:Play()

for i = 1,0,-.05 do
	spike.Transparency = i
	swait()
end

for i = 10,50,.5 do
	mesh.Scale = Vector3.new(i,i,i)
	swait()
end

spawn(function()
	for i = 10,1,-.1 do
		mesh.Scale = Vector3.new(numtween(mesh.Scale.x, 6.5, .1), numtween(mesh.Scale.y, 6.5, .1), numtween(mesh.Scale.z, 45, .1))
		swait()
	end
end)
wait(.5)
for i = 1,math.random(15,25) do
	local fx = spike:Clone()
	local mmesh = fx['tuch me here dadi']
	mmesh.Scale = Vector3.new(.5,.5,.5)
	fx.Parent = stuff
	spawn(function() for i = 1,10,.1 do mmesh.Scale = Vector3.new(numtween(mmesh.Scale.x, 1.25, .1),numtween(mmesh.Scale.y, 1.25, .1),numtween(mmesh.Scale.z, 10, .1)) swait() end end)
	lockin[#lockin+1] = {fx, CFrame.new(math.random(-15,15),math.random(-10,10),math.random(10,35))}
end

wait(.5)

	local Damaged = {}
	coroutine.wrap(function()
		for i,v in pairs(IsNear(rune.Position, 50, nil, true)) do
			if v~=char then 
				if Damaged[searchForHumanoid(v)] and tick()-Damaged[searchForHumanoid(v)] < .5 then return end
					local BodPos = Create("BodyPosition"){
						P = 50000,
						D = 1000,
						maxForce = Vector3.new(math.huge, math.huge, math.huge),
						position = v.HumanoidRootPart.Position,
						Parent = v.HumanoidRootPart,
					}
					local BodGy = Create("BodyGyro") {
						maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
						P = 20e+003,
						Parent = v.HumanoidRootPart,
						cframe = v.HumanoidRootPart.CFrame,
					}
					v.HumanoidRootPart.Anchored = true
					coroutine.resume(coroutine.create(function(Part) 
						wait(1)
						Part.Anchored = false
					end), v.HumanoidRootPart)
					game:GetService("Debris"):AddItem(BodPos, 1)
					game:GetService("Debris"):AddItem(BodGy, 1)
				Damaged[searchForHumanoid(v)] = tick()
			end
		end
	end)()

focusing = false

spawn(function() 
	local qqqe = .25 
	while spike and spike.Parent do 
		qqqe=qqqe+10
		if qqqe>=360 then 
			qqqe=0 
		end 
		spike.CFrame = spike.CFrame:lerp(spike.CFrame*CFrame.Angles(0,0,math.rad(qqqe)), .3) 
	swait()
	end 
 end)


local function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end

local spikeoutline = spike:Clone()
spikeoutline.BrickColor = BrickColor.new('Really black')
spikeoutline:children()[1].Scale = Vector3.new(7,7,47)
spikeoutline.Transparency = .75
spikeoutline.Parent = stuff
spawn(function()while spike do spikeoutline.CFrame = spike.CFrame swait() end end)

for i,v in next, lockin do
	spawn(function()
		local cry = v[1]
		local hit,pos = rayCast(cry.Position, cry.CFrame.lookVector, 20000, char)
		if hit then
			local oldpos = cry.Position
			local damagepos = CFrame.new(pos)
			for i = 1,10 do
				cry.CFrame = cry.CFrame:lerp(damagepos, .45)
				cry.CFrame = CFrame.new(cry.Position, oldpos)*CFrame.new(0,0,-3)
				swait()
			end
			MagniDamage('Frozen Damnation', cry,cry,20,1,3,1,"Normal")
			coroutine.wrap(function()
				for i,v in pairs(IsNear(cry.Position, 20, nil, true)) do
					if v~=char then 
						if v:findFirstChild'Humanoid' then
						v.Humanoid.Sit = true
						end
					end
				end
			end)()
			cry.CFrame = CFrame.new(cry.Position, oldpos)*CFrame.new(0,0,-3)
			cry.TopSurface,cry.BottomSurface = 0,0
			wait(1.5)
			cry.Transparency = 1
			spawn(function()
				local orb = cry:Clone()
				orb.Size = Vector3.new(1,1,1)
				local meash = orb:children()[1]
				meash.MeshType = 'Sphere'
				meash.Scale = Vector3.new(1,1,1)
				spawn(function() for i = 1, 20 do meash.Scale =  meash.Scale+Vector3.new(.5,.5,.5) orb.Transparency = orb.Transparency + .05 swait() end end)
				orb.Parent = stuff
				orb.Transparency = 0
			end)
			spawn(function()
				local abreak = Instance.new'Sound'
				abreak.SoundId = 'rbxassetid://138122923'
				abreak.Parent = cry
				abreak.Volume = 2
				abreak.Pitch = math.random(1,3)
				swait()
				abreak:Play()
			end)
			for i=1,math.random(1,4) do
				BreakEffect(BrickColor.new("Teal"),damagepos,0.5,math.random(5,20),0.5)
			end
		end
	end)
	wait(.1)
end
oompa = true
wait(2)
local hit,pos = rayCast(spike.Position, spike.CFrame.lookVector, 20000, char)
if hit then 
	local oldpos = spike.Position
	local damagepos = CFrame.new(pos)
	for i = 1,10 do
		spike.CFrame = spike.CFrame:lerp(damagepos, .4)
		spike.CFrame = CFrame.new(spike.Position, oldpos)*CFrame.new(0,0,-3)
		swait()
	end
	spike.CFrame = CFrame.new(spike.Position, oldpos)*CFrame.new(0,0,-3)
	stopholding = true
	wait(.25)
	spawn(function()
	for q,e in pairs(game:service'Workspace':children'') do
		coroutine.wrap(function()
			if e~=char then
				if e and e:findFirstChild'Humanoid' then
					if e:findFirstChild'Torso' then
						local dist = (e.Torso.Position-pos).magnitude
						if dist <= 75 then
							freezeInPlace(e)
						end
					end
				end
			end
		end)()
	end
	end)
	spawn(function()
		for i = 1,5 do
			MagniDamage('Frozen Damnation', spike, spike,200,5,10,1,"Normal")
			wait(.75)
		end
	end)
	local suh = Instance.new('Sound')
	suh.SoundId = 'rbxassetid://305665861'
	suh.Volume = 8
	suh.Parent = spike
	swait()
	suh:Play()
	startedb = true
	local pl = Instance.new('PointLight', spike)
	pl.Color = Color3.new(0,0,1)
	spawn(function()
	for i = 1,200 do
	pl.Range = i
	swait()
	end
	end)
	spawn(function()
		local ringp = spike:Clone()
		ringp.Size = Vector3.new(10,10,10)
		ringp.CFrame = CFrame.new(ringp.CFrame.p)*CFrame.Angles(math.rad(90),0,0)
		local ring = ringp:children()[1]
		ring.Scale = Vector3.new(1,1,1)
		ring.MeshType = 'FileMesh'
		ring.MeshId = 'rbxassetid://3270017'
		ring.Parent = ringp
		ringp.Parent = stuff
		local orb = spike
		orb.Size = Vector3.new(10,10,10)
		mesh.MeshType = 'Sphere'
		mesh.Scale = Vector3.new(1,1,1)
		spike.TopSurface,spike.BottomSurface = 0,0
		local asdfe = orb:Clone()
		local asdfem = asdfe:children()[1]
		asdfe.Parent = stuff
		local p = part(stuff,CFrame.new(orb.Position),v3(1,1,1),'Teal',true,false,.1,"SmoothPlastic")
		local pm = meshnew("FileMesh",p,nil,nil,asset..meshes.crown)
		Spawn(function()
				for i=.1,999,.025 do
						pm.Scale = pm.Scale + v3(1.2,.05,1.2)
						p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(10),0)
						swait()
				end
		end)
		local fadeout = {}
		spawn(function()
			for i = 1,4 do
				spawn(function()
					local fring = p:Clone()
					local mosh = fring:children()[1]
					mosh.MeshId = 'rbxassetid://3270017'
					fring.Parent = stuff
					fring.CFrame = CFrame.new(orb.Position)*CFrame.Angles(0,math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),0)
					fadeout[#fadeout+1] = fring
					spawn(function()
						for i=.1,999,.025 do
						mosh.Scale = mosh.Scale + v3(1.5,1.5,.4)
						fring.CFrame = (fring.CFrame * CFrame.Angles(math.rad(math.random(2,5)),0,0))
						swait()
						end
					end)
				end)
			end
		end)
		spawn(function() for i = 1,400 do ring.Scale = ring.Scale + Vector3.new(10,10,.10) if donelol then break end swait() end end)
		wait(.1)
		spawn(function() for i = 1, 400 do mesh.Scale =  mesh.Scale+Vector3.new(.15,.15,.15) asdfem.Scale = asdfem.Scale+Vector3.new(.14,.14,.14) swait() end donelol = true end)
		orb.Parent = stuff
		orb.Transparency = .1
		asdfe.Transparency = .1
		spawn(function() for i = 0,1,.0025 do texturr.Transparency = i orb.Transparency = i ringp.Transparency = i asdfe.Transparency = i p.Transparency = i for _,v in next,fadeout do v.Transparency = i end swait() end stuff:Destroy() end)
		for i = 1,8 do spawn(function() Explode(orb.CFrame*CFrame.Angles(math.random(-360,360), math.random(-360,360),math.random(-360,360)),BrickColor.new'Teal') end) end
		spawn(function()
			if hit:GetMass() <= 100 then
				local mat = hit.Material
				local col = hit.BrickColor
				hit.Material = 'Slate'
				hit.BrickColor = BrickColor.new('Institutional white')
				wait(15)
				hit.Material = mat
				hit.BrickColor = col
			end
		end)
	end)
	for i=1,15 do
		BreakEffect(BrickColor.new("Teal"),damagepos,0.5,math.random(5,20),0.5)
		swait()
	end
end
end

mouse.KeyDown:connect(function(k)
Keys[k]=true
if otheranims then return end

    local tar = getTarget()
    lastpress = tick()
    local cTarg = currentTarget and currentTarget or hum
    local dpsCalc = getDPS()
	
	if k:byte() == 50 and not supporting then
	Ctrl = true
	if hum.WalkSpeed <= 13 then return end
	if checkCooldown('Teleport') then return end
	if not useMana(10000) then return end
	setCooldown('Teleport', 1)
	coroutine.wrap(Burstf)()
	--rootpart.CFrame = rootpart.CFrame * CFrame.new(0, 0, -45)
	elseif k == 'p' then
	Burst = not Burst
	elseif k == 'u' and Ctrl then
	keepPlaying = not keepPlaying
	sund:Stop()
	elseif k=='u' and not berserk then
	sund:Stop()
	elseif k=='g' and not supporting then
	if checkCooldown('Blizzard') then return end
	if not useMana(20000) then return end
	setCooldown('Blizzard', 20)
	--crg()
	Cast()--2)
	randomCastSound()
	particleBlast()
	elseif k=='e' and not supporting then
	if hum.WalkSpeed <= 13 then return end
	if checkCooldown('Cannon') then return end
	if not useMana(30000) then return end
	setCooldown('Cannon', 30)
	if math.random(1,10)>=6 then activateLance() end
	createDoom()
	wait(2)
	elseif k=='q' and not supporting then
	if hum.WalkSpeed <= 13 then return end
	if checkCooldown('Magik') then return end
	if not useMana(20000) then return end
	setCooldown('Magik', 3)
	if math.random(1,10)>=6 then activateLance() end
	MagikBall()
	wait(2)
	elseif k=='l' and not supporting then
	if checkCooldown('Hail Storm') then return end
	if not useMana(30000) then return end
	setCooldown('Hail Storm', 20)
	--crg()
	Cast()--2)
	Chat("Hail Storm!", 3)
	randomCastSound()
		for i = 1,20 do
			coroutine.wrap(downFTH)()
		end
	elseif k == 'f' and not supporting then
	if checkCooldown('Frost Barrier') then return end
	if not useMana(40000) then return end
	setCooldown('Frost Barrier', 60)
	--crg()
	Cast()--2)
	Chat("Frost Barrier!", 3)
	randomCastSound()
	makeZone()
	elseif k=='c' and not supporting then
	if checkCooldown('Ice Lance') then return end
	if numactive<=0 then return end
	if not useMana(10000) then return end
	setCooldown('Ice Lance', 1)
	Chat("Ice Lance!", 3)
	randomCastSound()
	launchLance()
	elseif k=='k' and not supporting then
	if checkCooldown('Rift') then return end
	if not useMana(60000) then return end
	setCooldown('Rift', 30)
	Chat("Frost Rift!", 3)
	randomCastSound()
	for i = 1,3 do MakeRift() wait(.2) end
	elseif k=='z' and not supporting then
	if checkCooldown('Glacial') then return end
	if numactive<3 then return end
	if not useMana(15000) then return end
	setCooldown('Glacial', 1)
	Chat("Glacial Spike!", 3)
	randomCastSound()
	GlacialSpike()
	elseif k ==  'r' and not supporting then
	if checkCooldown('Ring of Frost') then return end
	if not useMana(15000) then return end
	setCooldown('Ring of Frost', 15)
	--crg()
	Cast()--2)
	Chat('Ring of Frost!', 3)
	randomCastSound()
	dnd()
	elseif k == 'v' and not supporting then
	if checkCooldown('Frost Shield') then return end
	if not useMana(20000) then return end
	setCooldown('Frost Shield', 20)
	--crg()
	Cast()--2)
	Chat('Frost Shield!', 3)
	randomCastSound()
	frostShield()
	elseif k == 'b' and not supporting then
	if checkCooldown('Icy Blast') then return end
	if not useMana(30000) then return end
	setCooldown('Icy Blast', 20)
	--crg()
	Cast()--2)
	Chat('Icy Blast!', 3)
	randomCastSound()
	IceBlast()
	for q,e in pairs(game:service'Players':players'') do
		coroutine.wrap(function()
			if e~=plr then
				if e and e.Character then
					if e.Character:findFirstChild'Torso' then
						local dist = (e.Character.HumanoidRootPart.Position-torso.Position).magnitude
						if dist <= 30 then
							freezeInPlace(e.Character)
						end
					end
				end
			end
		end)()
	end
	elseif k:byte()==48 then
		hum.WalkSpeed = 35
	elseif k == 'n' then
		if supporting then supporting = false return end
		if checkCooldown('Support') then return end
		if not useMana(40000) then return end
		setCooldown('Support', 60)
		Chat("Take rest, my allies.", 3)
		wait(3)
		randomCastSound()
		becomeSupport()
	elseif k == 't' then
        if mouse.Target and searchForHumanoid(mouse.Target.Parent) then
        local currTar = searchForHumanoid(mouse.Target.Parent)
        currentTarget = currTar
        else
        end
    elseif k == 'j' then
        toggleFriendly()
    elseif k == 'h' and not supporting then
		if checkCooldown('ForzDamn') then return end
		if not useMana(80000) then return end
		setCooldown('ForzDamn', 60)
		Chat("Frozen Damnation!", 3)
		randomCastSound()
		Spike()
    elseif k == 'x' and not supporting then
		if checkCooldown('CS') then return end
		if not useMana(40000) then return end
		setCooldown('CS', 60)
		Chat("Comet Storm!", 3)
		randomCastSound()
		cometStorm()
    elseif k == 'y' then
        currentTarget = hum
    elseif k=='m' then
        shadowSight()	
	end
end)

mouse.KeyUp:connect(function(k)
	Keys[k] = false
   if k:byte() == 50 then
		Ctrl = false
	elseif k:byte()==48 then
		hum.WalkSpeed = 22
	end
end)


local c0 = {
RightArm = CF(1.5,0.5,0),
LeftArm = CF(-1.5,0.5,0),
RightLeg = CF(0.5,-1,0),
LeftLeg = CF(-0.5,-1,0),
RootJoint = CF(0,0,0),
Neck = CF(0,1,0)    
}
local c1 = {
RightArm = CF(0,0.5,0),
LeftArm = CF(0,0.5,0),
RightLeg = CF(0,1,0),
LeftLeg = CF(0,1,0),
RootJoint = CF(0,0,0),
Neck = CF(0,-0.5,0) 
}

plr.Chatted:connect(function(m)
if m:sub(1,5) == 'stat/' and (plr.Name=='Darkus_Theory' or plr.Name == 'coty645' or plr.Name == 'lsaiah328') then
local q = m:sub(6)
local spl = q:find('/')
local stat = q:sub(1,spl-1)
local data = tonumber(q:sub(spl+1))
if not stats[stat] then return  end
stats[''..stat..''] = data
elseif m:sub(1,4) == 'tar/' then
local nam = m:sub(5)
local pers = workspace:findFirstChild(nam)
if pers then
	local humanoidy = pers:waitForChild'Humanoid'
	currentTarget = humanoidy
end
elseif m:sub(1,4) == 'fps/' then
local frames = m:sub(5)
frame = 1/tonumber(frames)
print('fps is '..frames)
elseif m:sub(1,string.len('a1/'))=='a1/' then
local num=m:sub(string.len('a1/')+1)
num=tonumber(num)
activateLance(true)
elseif m:sub(1,string.len('a2/'))=='a2/' then
local num=m:sub(string.len('a2/')+1)
num=tonumber(num)
activateLance(false)
elseif m:sub(1,string.len('de/'))=='de/' then
local num=m:sub(string.len('de/')+1)
num=tonumber(num)
deactivateLance(num)
elseif m=='recount' then
recount()
elseif m=='cheatmode' and (plr.Name=='Darkus_Theory' or plr.Name == 'coty645' or plr.Name == 'lsaiah328') then
if cheating then
cheating = false
stats['Haste'] = Haste
stats['Intellect'] = Intellect
else
cheating = true
end
end
end)
hum.Died:connect(recount)

local count = 0
local Spread = 6
local Smooth = 1
local angle = tick()
local t = tick()
local Smooth = 1
---------------------------
local ffing
local Jumping
char.Humanoid.FreeFalling:connect(function(f)
	if f then
		ffing = true
	else
		ffing = false
	end
end)

spawn(function()
	while hum.Health > 0 do
		spawn(function()
			local spike = Instance.new('Part')
			spike.Size = Vector3.new(1, 1, 2)
			spike.Anchored = true
			spike.CanCollide = false
			spike.Transparency = 0
			spike.CFrame = torso.CFrame*CFrame.new(0,-4,0)*CFrame.new(math.random(-math.random(45/10),math.random(45)/10),0,math.random(-math.random(45)/10,math.random(45)/10))
			--spike.CFrame = spike.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
			spike.BrickColor = BrickColor.new('Teal')
			local mesh = Instance.new('SpecialMesh')
			mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
			mesh.MeshType = 'FileMesh'
			mesh.Name = 'tuch me here dadi'
			mesh.Scale = Vector3.new(.5,.5,.8)
			mesh.Parent = spike
			spike.Parent =  char
			game:service'Debris':AddItem(spike, 1.1)
			while spike do
			spike.CFrame = CFrame.new(spike.Position)*CFrame.new(0,0.2,0)*CFrame.Angles(math.random(45),math.random(45),math.random(45))
			spike.Transparency = spike.Transparency + 0.02
			swait()
			end
		end)
	wait(0.225)
	end
end)
coroutine.wrap(function()
        while true do
	
		if char.Humanoid.Jump == true then
			Jumping = true
		else
			Jumping = false
		end
		--regenHealth()
        if stats["Crystals"] > 5 then stats["Crystals"] = 5 end
        if stats["Crystals"] < 0 then stats["Crystals"] = 0 end
        if stats["Mana"] > 100000 then stats["Mana"] = 100000 end
        if stats["Mana"] < 0 then stats["Mana"] = 0 end
        if stats["Mana"] < 100000 then stats["Mana"] = stats["Mana"] + ((tick()-lastdps < 10) and 175 or 125) end
        UI:SetHealth(math.ceil(Humanoid.Health),Humanoid.MaxHealth)
        UI:SetMana(math.ceil(stats['Mana']))
        UI:SetCP(stats['Crystals'])
        UI:SetTarget(currentTarget and currentTarget.Parent and currentTarget.Parent.Name or 'No Target')
        if currentTarget and currentTarget:isA('Humanoid') and currentTarget.Health then
        UI:SetTH(currentTarget and tonumber(math.floor(currentTarget.Health)) or 0, currentTarget and tonumber(math.floor(currentTarget.MaxHealth)) or 0)
        else
        UI:SetTH(0,0)
        end
        UI:SetTitle()
		stats.Shards = numactive
            if hum.WalkSpeed == 0 then 
                UI:SetStatus('Stunned') 
            elseif hum.WalkSpeed < 10 then 
                UI:SetStatus('Slowed') 
            else 
                UI:SetStatus('Normal') 
            end 
        
        if cheating then
        Cooldowns = {}
		activateLance(false)
        stats['Mana'] = 100000
        stats['Haste'] = 0
        end

        if not stats['Haste'] then stats['Haste'] = Haste end
        
        if (stats['Haste'] and stats['Haste'] < 0) then stats['Haste'] = 0 end
    
        if currentTarget and currentTarget.Health <= 0 then
        currentTarget = nil
        else
        end

        updateCooldowns()
		local torso = char:FindFirstChild('Torso')
        local mg = Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude
            if not otheranims then
				if (mg < 2) and not Jumping and not ffing then
                Mode = "Idling"
                elseif (mg > 2 and mg < 16) and not Jumping and not ffing and not Burst then
                Mode = "Walking"
                elseif Jumping then
                Mode = "Jumping"
				elseif ffing then
				Mode = 'FreeFalling'
				elseif Burst then
				Mode = 'Bursting'
                end
            end
        t = t+0.35*Smooth
		sine = sine + change
		Char.Humanoid.CameraOffset = (rootpart.CFrame:toObjectSpace(Char.Head.CFrame)).p - Vector3.new(0, 1.25, 0)
		local lefth = (Torso.CFrame*c0.LeftLeg)
		local righth = (Torso.CFrame*c0.RightLeg)
		angle = angle+0.2*Smooth
		local speed = V3(Torso.Velocity.X,0,Torso.Velocity.Z)
		local TiltOnAxis = (rootpart.CFrame-rootpart.CFrame.p):inverse()*speed/100
		local AnglePR = (righth-righth.p):inverse()*speed/100
		local AnglePL = (lefth-lefth.p):inverse()*speed/100
		local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
		local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
		UI:SetAnim(Mode)
		if tick()-lastpress > 30 then Mode = 'Laying' end
        if Mode == 'Jumping' then -- le joomp
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,.6,-.6) * CFrame.Angles(0,-math.rad(10),0), .4)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0,.4,-.3), .4)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(10), 0, 0), .4)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(10)), .4)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(20), 0, math.rad(10)), .4)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(0), 0, 0), .4)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .4)
				lerp(nw, nw.C0, nwc0, .4)
		elseif Mode == 'Idling' then --stand 
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0+math.cos(sine/15)*.01*((mult>2 or mult<1) and mult/2 or 1), -.1+.3+math.cos(sine/15)*.06*((mult>2 or mult<1) and mult/2 or 1), -.5+math.cos(sine/15)*.01) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(5)), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0+-math.cos(sine/15)*.01, -.1+.3+math.cos(sine/15)*.06*((mult>2 or mult<1) and mult/2 or 1), -.3+math.cos(sine/15)*.01*((mult>2 or mult<1) and mult/2 or 1)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-5)), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.cos(sine/15)*.06-math.rad(5), math.rad(-0), math.rad(-0)), .3)
				lerp(lm, lm.C0, lsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(-0), math.rad(0), math.rad(-20)), .3)
				lerp(rm, rm.C0, rsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(25)), .3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,1.5+.5-math.cos(sine/15)*.3) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .1)
				lerp(nw, nw.C0, nwc0, .4)
        elseif Mode == 'Walking' then-- walk
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,0+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-rootpart.RotVelocity.Y/20), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0,0-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-rootpart.RotVelocity.Y/20), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.new(0,0,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.new(0, .05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+rootpart.RotVelocity.Y/30)),.6)
				lerp(rm, rm.C0, rsc0 *  CFrame.new(0, -.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+rootpart.RotVelocity.Y/30)),.6)
                lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(4+2*math.cos(sine/2)), math.rad(0)+rootpart.RotVelocity.Y/30,math.rad(0+10*math.cos(sine/4)/2.3)+rootpart.RotVelocity.Y/30) , .3)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, -0.12*math.cos(sine/2), 0) * CFrame.Angles(-math.rad(4+2*math.cos(sine/2)), -rootpart.RotVelocity.Y/30,(math.rad(-10*math.cos(sine/4)/2.3)-rootpart.RotVelocity.Y/30)), .3)
				lerp(nw, nw.C0, nwc0, .4)
		elseif Mode == 'FreeFalling' then --ffing
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-0)), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-0)), .3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-0)), .3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25), math.rad(-5), math.rad(-15)), .3)
                lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25), math.rad(-5), math.rad(15)), .3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .4)
				lerp(nw, nw.C0, nwc0, .4)
		elseif Mode == 'Bursting' then -- float burst
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0+math.cos(sine/15)*.01, -.1+.3+math.cos(sine/15)*.06, -.5+math.cos(sine/15)*.01) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(5)+rootpart.RotVelocity.Y/20), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0+-math.cos(sine/15)*.01, -.1+.3+math.cos(sine/15)*.06, -.3+math.cos(sine/15)*.01) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-5)+rootpart.RotVelocity.Y/20), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.cos(sine/15)*.06+math.rad(20), math.rad(-0)+rootpart.RotVelocity.Y/10, math.rad(0)+-rootpart.RotVelocity.Y/30), .3)
				lerp(lm, lm.C0, lsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)+rootpart.RotVelocity.Y/20), .3)
				lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(58), math.rad(10), math.rad(-3)+rootpart.RotVelocity.Y/20), .3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,1.5+.5-math.cos(sine/15)*.3) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)+-rootpart.RotVelocity.Y/20),.3)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .4)
				lerp(nw, nw.C0, nwc0, .4)
		elseif Mode == 'Casting' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0+math.cos(sine/15)*.01, .1+math.cos(sine/15)*.06, -.3+math.cos(sine/15)*.01)  * CFrame.Angles(0, -math.rad(30), math.rad(3)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0+-math.cos(sine/15)*.01, .1+math.cos(sine/15)*.06, -.2+math.cos(sine/15)*.01) * CFrame.Angles(0, math.rad(20), -math.rad(3)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.cos(sine/15)*.06-math.rad(5), -math.rad(20), 0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(-math.rad(20), 0, -math.rad(10)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(50), 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,1.5+.2-math.cos(sine/15)*.3) * CFrame.Angles(0,0,math.rad(20)),.3)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), .5)
				lerp(nw, nw.C0, nwc0, .4)
		elseif Mode == 'Laying' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .7*((mult>2 or mult<1) and mult/2 or 1), -.4*((mult>2 or mult<1) and mult/2 or 1)) * CFrame.Angles(math.rad(75)+math.cos(sine/15)*.015, math.rad(-5), math.rad(13)), .3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 3*((mult>2 or mult<1) and mult/2 or 1), -1.25*((mult>2 or mult<1) and mult/2 or 1)) * CFrame.Angles(math.rad(15)+math.cos(sine/15)*.015, math.rad(10), math.rad(-0)), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(8)+-math.cos(sine/15)*.015, math.rad(-12), math.rad(-0)), .3)
				lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(20)+-math.cos(sine/15)*.01, math.rad(-15), math.rad(-15)), .3)
				lerp(rm, rm.C0, rsc0 * CFrame.new(-.3*((mult>2 or mult<1) and mult or 1), -.2*((mult>2 or mult<1) and mult or 1), -.2*((mult>2 or mult<1) and mult or 1)) * CFrame.Angles(math.rad(50)+-math.cos(sine/15)*.01, math.rad(8), math.rad(-29)), .3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0, 5.5*((mult>2 or mult<1) and mult/2 or 1), -3*((mult>2 or mult<1) and mult/2 or 1)) * CFrame.Angles(-math.rad(5), math.rad(5), math.rad(-0)), .2)
				lerp(tweld, tweld.C0, twc0 * CFrame.new(0, .1+math.cos(sine/20)*.4, 0) * CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), .5)	
				lerp(nw, nw.C0, nwc0 * CFrame.new(-4*((mult>2 or mult<1) and mult or 1), -6*((mult>2 or mult<1) and mult or 1), 6*((mult>2 or mult<1) and mult or 1)) * CFrame.Angles(mr(-40)+-math.cos(sine/15)*.01,mr(-10),mr(-10)), .2)
		elseif Mode == 'Swipe' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, -.2) * CFrame.Angles(0, -math.rad(30), math.rad(3)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(20)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(10)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(50), 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,1.5+.5-math.cos(sine/15)*.3) * CFrame.Angles(0,0,math.rad(40)),.3)
		end
 if 0 < #Effects then
      for e = 1, #Effects do
        if Effects[e] ~= nil then
          local Thing = Effects[e]
          if Thing ~= nil then
            local Part = Thing[1]
            local Mode = Thing[2]
            local Delay = Thing[3]
            local IncX = Thing[4]
            local IncY = Thing[5]
            local IncZ = Thing[6]
            if Thing[2] == "CylinderClang" then
              if Thing[3] <= 1 then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                Thing[7] = Thing[1].CFrame
                effect("New Yeller", 0, Thing[8], Thing[7])
                Thing[8] = Thing[7]
                Thing[3] = Thing[3] + Thing[4]
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "showDamage" then
              if Thing[6] < Thing[5] then
                Thing[6] = Thing[6] + 1
              else
                if Thing[6] < Thing[7] then
                  Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                  Thing[6] = Thing[6] + 1
                else
                  if Thing[6] < Thing[8] then
                    Thing[6] = Thing[6] + 1
                  else
                    if Thing[6] < Thing[9] then
                      Thing[6] = Thing[6] + 1
                      Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                      Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                      Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                    else
                      Thing[1].Parent = nil
                      table.remove(Effects, e)
                    end
                  end
                end
              end
            end
            if Thing[2] == "Rune" then
              if Thing[3] < Thing[4] then
                Thing[3] = Thing[3] + 1
                Thing[8].Size = Thing[8].Size - UDim2.new(Thing[6], 0, Thing[6], 0)
              else
                if Thing[10] < Thing[9] then
                  Thing[10] = Thing[10] + Thing[5]
                  Thing[7].ImageTransparency = Thing[10]
                  Thing[1].Transparency = Thing[1].Transparency + 0.1
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
            end
            if Thing[2] == "Circle" then
              if Thing[3] < Thing[4] then
                Thing[3] = Thing[3] + 1
                Thing[8].Size = Thing[8].Size + UDim2.new(Thing[6], 0, Thing[6], 0)
                Thing[7].Rotation = Thing[7].Rotation + 20
              else
                if Thing[10] < Thing[9] then
                  Thing[10] = Thing[10] + Thing[5]
                  Thing[7].ImageTransparency = Thing[10]
                  Thing[1].Transparency = Thing[7].ImageTransparency * 2
                  Thing[7].Rotation = Thing[7].Rotation + 20
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
            end
            if Thing[2] == "Plasma" then
              plaspos = Thing[1].Position
              MagicBlock(BrickColor.new(NewCol), cf(Thing[1].Position) * cf(math.random(-2000, 2000) / 100, math.random(-2000, 2000) / 100, math.random(-2000, 2000) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
              MagicBlock(BrickColor.new(NewCol), cf(Thing[1].Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.2, 1)
              hitflooro, posflooro = rayCast(Thing[1].Position - vt(0, 1, 0), CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 2, 0)).lookVector, 100, Character)
              if hitflooro ~= nil then
                if hitflooro.Anchored == true then
                  Thing[3].CFrame = cf(posflooro) * euler(0, Thing[6], 0)
                else
                  Thing[3].CFrame = Thing[3].CFrame
                end
              else
                Thing[3].CFrame = Thing[3].CFrame
              end
              Thing[6] = Thing[6] + 0.1
              if Thing[4] <= 600 then
                Thing[4] = Thing[4] + 1
                -- DECOMPILER ERROR at PC4543: Unhandled construct in 'MakeBoolean' P1

                if 50 <= Thing[5] and plasfisting == false then
                  Thing[5] = 0
                  MagicCirclee(BrickColor.new(NewCol), cf(Thing[1].Position), 35, 35, 35, 50, 50, 7, 0.05, 1, 20, "200369416")
                  MagniDamage('Plasma', Thing[1], 25, 3, 5, 0, "Normal", true, nil, nil, nil, math.random(2, 8))
                end
                Thing[5] = Thing[5] + 1
              else
                doingplasma = false
                print("end")
                Thing[1].Parent = nil
                Thing[3].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Particle" then
              if 0 <= Thing[3] then
                Thing[1].Enabled = true
                Thing[3] = Thing[3] - 1
              else
                game:GetService("Debris"):AddItem(Thing[1], 3)
                Thing[1].Enabled = false
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Rune" and Thing[2] ~= "Circle" and Thing[2] ~= "Plasma" and Thing[2] ~= "Particle" then
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Spin" then
                    Part = Thing[8]
                    Thing[8].CFrame = Thing[8].CFrame * euler(0, 0.2, 0)
                    Thing[1].ImageTransparency = Thing[1].ImageTransparency + Thing[3]
                    if 1 <= Thing[1].ImageTransparency then
                      Part.Parent = nil
                      table.remove(Effects, e)
                    end
                  else
				  
					if Thing[2] == "Block1a" then
						Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
						Mesh = Thing[1].Mesh
						Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
						Thing[1].Transparency = Thing[1].Transparency + Thing[3]
					elseif Thing[2] == "Cylindera" then
						Mesh = Thing[1].Mesh
						Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
						Thing[1].Transparency = Thing[1].Transparency + Thing[3]
					elseif Thing[2] == "Eleca" then
						Mesh = Thing[1].Mesh
						Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
						Thing[1].Transparency = Thing[1].Transparency + Thing[3]
					end
					
					if Thing[2] == "Block1b" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2b" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinderb" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Bloodb" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elecb" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappearb" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatterb" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
				
                    if Thing[2] == "Block2" then
                      Thing[1].CFrame = Thing[1].CFrame
                      Mesh = Thing[7]
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Cylinder" then
                        Mesh = Thing[7]
                        Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Blood" then
                          Mesh = Thing[7]
                          Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Elec" then
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Disappear" then
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            end
                          end
                        end
                      end
                    end
                  end
                end
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
          end
        end
      end
	end
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
				if Thing[2] == "CylinderClang" then
              if Thing[3] <= 1 then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                Thing[7] = Thing[1].CFrame
                effect("New Yeller", 0, Thing[8], Thing[7])
                Thing[8] = Thing[7]
                Thing[3] = Thing[3] + Thing[4]
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "showDamage" then
              if Thing[6] < Thing[5] then
                Thing[6] = Thing[6] + 1
              else
                if Thing[6] < Thing[7] then
                  Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                  Thing[6] = Thing[6] + 1
                else
                  if Thing[6] < Thing[8] then
                    Thing[6] = Thing[6] + 1
                  else
                    if Thing[6] < Thing[9] then
                      Thing[6] = Thing[6] + 1
                      Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                      Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                      Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                    else
                      Thing[1].Parent = nil
                      table.remove(Effects, e)
                    end
                  end
                end
              end
            end
            if Thing[2] == "Rune" then
              if Thing[3] < Thing[4] then
                Thing[3] = Thing[3] + 1
                Thing[8].Size = Thing[8].Size - UDim2.new(Thing[6], 0, Thing[6], 0)
              else
                if Thing[10] < Thing[9] then
                  Thing[10] = Thing[10] + Thing[5]
                  Thing[7].ImageTransparency = Thing[10]
                  Thing[1].Transparency = Thing[1].Transparency + 0.1
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
            end
            if Thing[2] == "Circle" then
              if Thing[3] < Thing[4] then
                Thing[3] = Thing[3] + 1
                Thing[8].Size = Thing[8].Size + UDim2.new(Thing[6], 0, Thing[6], 0)
                Thing[7].Rotation = Thing[7].Rotation + 20
              else
                if Thing[10] < Thing[9] then
                  Thing[10] = Thing[10] + Thing[5]
                  Thing[7].ImageTransparency = Thing[10]
                  Thing[1].Transparency = Thing[7].ImageTransparency * 2
                  Thing[7].Rotation = Thing[7].Rotation + 20
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
            end
            if Thing[2] == "Plasma" then
              plaspos = Thing[1].Position
              MagicBlock(BrickColor.new(NewCol), cf(Thing[1].Position) * cf(math.random(-2000, 2000) / 100, math.random(-2000, 2000) / 100, math.random(-2000, 2000) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 2)
              MagicBlock(BrickColor.new(NewCol), cf(Thing[1].Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.2, 1)
              hitflooro, posflooro = rayCast(Thing[1].Position - vt(0, 1, 0), CFrame.new(Thing[1].Position, Thing[1].Position - Vector3.new(0, 2, 0)).lookVector, 100, Character)
              if hitflooro ~= nil then
                if hitflooro.Anchored == true then
                  Thing[3].CFrame = cf(posflooro) * euler(0, Thing[6], 0)
                else
                  Thing[3].CFrame = Thing[3].CFrame
                end
              else
                Thing[3].CFrame = Thing[3].CFrame
              end
              Thing[6] = Thing[6] + 0.1
              if Thing[4] <= 600 then
                Thing[4] = Thing[4] + 1
                -- DECOMPILER ERROR at PC4543: Unhandled construct in 'MakeBoolean' P1

                if 50 <= Thing[5] and plasfisting == false then
                  Thing[5] = 0
                  MagicCirclee(BrickColor.new(NewCol), cf(Thing[1].Position), 35, 35, 35, 50, 50, 7, 0.05, 1, 20, "200369416")
                  MagniDamage(Thing[1], 25, 3, 5, 0, "Normal", true, nil, nil, nil, math.random(2, 8))
                end
                Thing[5] = Thing[5] + 1
              else
                doingplasma = false
                print("end")
                Thing[1].Parent = nil
                Thing[3].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Particle" then
              if 0 <= Thing[3] then
                Thing[1].Enabled = true
                Thing[3] = Thing[3] - 1
              else
                game:GetService("Debris"):AddItem(Thing[1], 3)
                Thing[1].Enabled = false
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Rune" and Thing[2] ~= "Circle" and Thing[2] ~= "Plasma" and Thing[2] ~= "Particle" then
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Spin" then
                    Part = Thing[8]
                    Thing[8].CFrame = Thing[8].CFrame * euler(0, 0.2, 0)
                    Thing[1].ImageTransparency = Thing[1].ImageTransparency + Thing[3]
                    if 1 <= Thing[1].ImageTransparency then
                      Part.Parent = nil
                      table.remove(Effects, e)
                    end
                  else
                    if Thing[2] == "Block2" then
                      Thing[1].CFrame = Thing[1].CFrame
                      Mesh = Thing[7]
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Cylinder" then
                        Mesh = Thing[7]
                        Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Blood" then
                          Mesh = Thing[7]
                          Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Elec" then
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Disappear" then
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            end
                          end
                        end
                      end
                    end
                  end
                end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
	swait()
    end
end)()
genIceLances()
createOrb()