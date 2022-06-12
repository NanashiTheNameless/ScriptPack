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
o2 = Instance.new("Model")
o3 = Instance.new("WedgePart")
o4 = Instance.new("SpecialMesh")
o5 = Instance.new("WedgePart")
o6 = Instance.new("SpecialMesh")
o7 = Instance.new("WedgePart")
o8 = Instance.new("SpecialMesh")
o9 = Instance.new("WedgePart")
o10 = Instance.new("SpecialMesh")
o11 = Instance.new("Part")
o12 = Instance.new("BlockMesh")
o13 = Instance.new("WedgePart")
o14 = Instance.new("SpecialMesh")
o15 = Instance.new("WedgePart")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Model")
o18 = Instance.new("Part")
o19 = Instance.new("BlockMesh")
o20 = Instance.new("Part")
o21 = Instance.new("BlockMesh")
o22 = Instance.new("Part")
o23 = Instance.new("BlockMesh")
o24 = Instance.new("Part")
o25 = Instance.new("BlockMesh")
o26 = Instance.new("Part")
o27 = Instance.new("BlockMesh")
o28 = Instance.new("Part")
o29 = Instance.new("BlockMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("BlockMesh")
o34 = Instance.new("Part")
o35 = Instance.new("BlockMesh")
o36 = Instance.new("Part")
o37 = Instance.new("BlockMesh")
o38 = Instance.new("ParticleEmitter")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("BlockMesh")
o43 = Instance.new("Model")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("SpecialMesh")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Part")
o53 = Instance.new("SpecialMesh")
o54 = Instance.new("Part")
o55 = Instance.new("SpecialMesh")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Model")
o59 = Instance.new("Part")
o60 = Instance.new("BlockMesh")
o61 = Instance.new("Part")
o62 = Instance.new("SpecialMesh")
o63 = Instance.new("Part")
o64 = Instance.new("SpecialMesh")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("BlockMesh")
o69 = Instance.new("Part")
o70 = Instance.new("BlockMesh")
o71 = Instance.new("Model")
o73 = Instance.new("Part")
o74 = Instance.new("BlockMesh")
o75 = Instance.new("Weld")
o77 = Instance.new("Part")
o78 = Instance.new("BlockMesh")
o79 = Instance.new("Weld")
o80 = Instance.new("Part")
o81 = Instance.new("CylinderMesh")
o82 = Instance.new("Motor")
o83 = Instance.new("Motor")
o84 = Instance.new("Weld")
o85 = Instance.new("Model")
o86 = Instance.new("Part")
o87 = Instance.new("BlockMesh")
o88 = Instance.new("Part")
o89 = Instance.new("SpecialMesh")
o90 = Instance.new("Part")
o91 = Instance.new("SpecialMesh")
o92 = Instance.new("Part")
o93 = Instance.new("BlockMesh")
o94 = Instance.new("Part")
o95 = Instance.new("SpecialMesh")
o96 = Instance.new("Part")
o97 = Instance.new("BlockMesh")
o98 = Instance.new("Part")
o99 = Instance.new("BlockMesh")
o100 = Instance.new("Part")
o101 = Instance.new("BlockMesh")
o102 = Instance.new("Part")
o103 = Instance.new("BlockMesh")
o104 = Instance.new("Part")
o105 = Instance.new("SpecialMesh")
o106 = Instance.new("Part")
o107 = Instance.new("SpecialMesh")
o108 = Instance.new("Part")
o109 = Instance.new("SpecialMesh")
o110 = Instance.new("Part")
o111 = Instance.new("SpecialMesh")
o112 = Instance.new("Part")
o113 = Instance.new("SpecialMesh")
o114 = Instance.new("Part")
o115 = Instance.new("BlockMesh")
o116 = Instance.new("Part")
o117 = Instance.new("BlockMesh")
o118 = Instance.new("Part")
o119 = Instance.new("CylinderMesh")
o120 = Instance.new("Part")
o121 = Instance.new("BlockMesh")
o122 = Instance.new("Part")
o123 = Instance.new("BlockMesh")
o124 = Instance.new("ParticleEmitter")
o125 = Instance.new("Part")
o126 = Instance.new("BlockMesh")
o127 = Instance.new("ParticleEmitter")
o128 = Instance.new("Part")
o129 = Instance.new("BlockMesh")
o130 = Instance.new("ParticleEmitter")
o131 = Instance.new("Model")
o132 = Instance.new("Part")
o133 = Instance.new("BlockMesh")
o134 = Instance.new("Part")
o135 = Instance.new("BlockMesh")
o136 = Instance.new("Part")
o137 = Instance.new("BlockMesh")
o138 = Instance.new("Part")
o139 = Instance.new("BlockMesh")
o140 = Instance.new("Part")
o141 = Instance.new("BlockMesh")
o142 = Instance.new("Part")
o143 = Instance.new("BlockMesh")
o144 = Instance.new("Part")
o145 = Instance.new("BlockMesh")
o146 = Instance.new("Part")
o147 = Instance.new("BlockMesh")
o148 = Instance.new("Part")
o149 = Instance.new("BlockMesh")
o150 = Instance.new("Part")
o151 = Instance.new("BlockMesh")
o152 = Instance.new("Part")
o153 = Instance.new("BlockMesh")
o154 = Instance.new("Part")
o155 = Instance.new("SpecialMesh")
o156 = Instance.new("Model")
o157 = Instance.new("Part")
o158 = Instance.new("BlockMesh")
o159 = Instance.new("Part")
o160 = Instance.new("BlockMesh")
o161 = Instance.new("Part")
o162 = Instance.new("SpecialMesh")
o163 = Instance.new("Part")
o164 = Instance.new("SpecialMesh")
o165 = Instance.new("Part")
o166 = Instance.new("SpecialMesh")
o167 = Instance.new("Part")
o168 = Instance.new("SpecialMesh")
o169 = Instance.new("Part")
o170 = Instance.new("SpecialMesh")
o171 = Instance.new("Model")
o172 = Instance.new("Part")
o173 = Instance.new("BlockMesh")
o174 = Instance.new("Part")
o175 = Instance.new("SpecialMesh")
o176 = Instance.new("Part")
o177 = Instance.new("SpecialMesh")
o178 = Instance.new("Part")
o179 = Instance.new("BlockMesh")
o180 = Instance.new("Part")
o181 = Instance.new("BlockMesh")
o182 = Instance.new("Part")
o183 = Instance.new("BlockMesh")
o184 = Instance.new("Model")
o186 = Instance.new("Part")
o187 = Instance.new("BlockMesh")
o188 = Instance.new("Weld")
o190 = Instance.new("Part")
o191 = Instance.new("BlockMesh")
o192 = Instance.new("Weld")
o193 = Instance.new("Part")
o194 = Instance.new("CylinderMesh")
o195 = Instance.new("Motor")
o196 = Instance.new("Motor")
o197 = Instance.new("Weld")
o198 = Instance.new("Model")
o199 = Instance.new("Part")
o200 = Instance.new("BlockMesh")
o201 = Instance.new("Part")
o202 = Instance.new("SpecialMesh")
o203 = Instance.new("Part")
o204 = Instance.new("SpecialMesh")
o205 = Instance.new("Part")
o206 = Instance.new("BlockMesh")
o207 = Instance.new("Part")
o208 = Instance.new("SpecialMesh")
o209 = Instance.new("Part")
o210 = Instance.new("BlockMesh")
o211 = Instance.new("Part")
o212 = Instance.new("BlockMesh")
o213 = Instance.new("Part")
o214 = Instance.new("BlockMesh")
o215 = Instance.new("Part")
o216 = Instance.new("BlockMesh")
o217 = Instance.new("Part")
o218 = Instance.new("BlockMesh")
o219 = Instance.new("Part")
o220 = Instance.new("SpecialMesh")
o221 = Instance.new("Part")
o222 = Instance.new("SpecialMesh")
o223 = Instance.new("Part")
o224 = Instance.new("SpecialMesh")
o225 = Instance.new("Part")
o226 = Instance.new("SpecialMesh")
o227 = Instance.new("Part")
o228 = Instance.new("BlockMesh")
o229 = Instance.new("Part")
o230 = Instance.new("BlockMesh")
o231 = Instance.new("Part")
o232 = Instance.new("CylinderMesh")
o233 = Instance.new("Part")
o234 = Instance.new("BlockMesh")
o235 = Instance.new("ParticleEmitter")
o236 = Instance.new("Part")
o237 = Instance.new("BlockMesh")
o238 = Instance.new("ParticleEmitter")
o239 = Instance.new("Part")
o240 = Instance.new("BlockMesh")
o241 = Instance.new("ParticleEmitter")
o242 = Instance.new("Part")
o243 = Instance.new("BlockMesh")
o244 = Instance.new("ParticleEmitter")
o245 = Instance.new("Folder")
o246 = Instance.new("Folder")
o247 = Instance.new("ObjectValue")
o248 = Instance.new("ObjectValue")
o249 = Instance.new("ObjectValue")
o250 = Instance.new("ObjectValue")
o251 = Instance.new("ObjectValue")
o252 = Instance.new("ObjectValue")
o253 = Instance.new("ObjectValue")
o254 = Instance.new("ObjectValue")
o255 = Instance.new("ObjectValue")
o256 = Instance.new("ObjectValue")
o257 = Instance.new("Folder")
o258 = Instance.new("ObjectValue")
o259 = Instance.new("ObjectValue")
o260 = Instance.new("ObjectValue")
o261 = Instance.new("ObjectValue")
o262 = Instance.new("ObjectValue")
o263 = Instance.new("ObjectValue")
o264 = Instance.new("ObjectValue")
o265 = Instance.new("ObjectValue")
o266 = Instance.new("ObjectValue")
o267 = Instance.new("ObjectValue")
o268 = Instance.new("ObjectValue")
o269 = Instance.new("Script")
o270 = Instance.new("Model")
o271 = Instance.new("Part")
o272 = Instance.new("Part")
o273 = Instance.new("Part")
o274 = Instance.new("Part")
o275 = Instance.new("SpecialMesh")
o276 = Instance.new("ObjectValue")
o277 = Instance.new("Part")
o278 = Instance.new("Part")
o279 = Instance.new("Motor6D")
o280 = Instance.new("BodyGyro")
o281 = Instance.new("Part")
o282 = Instance.new("Motor6D")
o283 = Instance.new("BodyGyro")
o284 = Instance.new("Part")
o285 = Instance.new("Motor6D")
o286 = Instance.new("Motor6D")
o287 = Instance.new("Motor6D")
o288 = Instance.new("Motor6D")
o289 = Instance.new("Motor6D")
o290 = Instance.new("Attachment")
o291 = Instance.new("Attachment")
o292 = Instance.new("Attachment")
o293 = Instance.new("Attachment")
o294 = Instance.new("Attachment")
o295 = Instance.new("Attachment")
o296 = Instance.new("Attachment")
o297 = Instance.new("Attachment")
o298 = Instance.new("ObjectValue")
o299 = Instance.new("Model")
o300 = Instance.new("Part")
o301 = Instance.new("BlockMesh")
o302 = Instance.new("Model")
o303 = Instance.new("Part")
o304 = Instance.new("Part")
o305 = Instance.new("Part")
o306 = Instance.new("Part")
o307 = Instance.new("Model")
o308 = Instance.new("Part")
o309 = Instance.new("CylinderMesh")
o310 = Instance.new("Part")
o311 = Instance.new("CylinderMesh")
o312 = Instance.new("Part")
o313 = Instance.new("CylinderMesh")
o314 = Instance.new("Part")
o315 = Instance.new("CylinderMesh")
o316 = Instance.new("Part")
o317 = Instance.new("Part")
o318 = Instance.new("Part")
o319 = Instance.new("Part")
o320 = Instance.new("Part")
o321 = Instance.new("Part")
o322 = Instance.new("Part")
o323 = Instance.new("Part")
o324 = Instance.new("Part")
o325 = Instance.new("Part")
o326 = Instance.new("Part")
o327 = Instance.new("Part")
o328 = Instance.new("Part")
o329 = Instance.new("Part")
o330 = Instance.new("Part")
o331 = Instance.new("Part")
o332 = Instance.new("Part")
o333 = Instance.new("Part")
o334 = Instance.new("Part")
o335 = Instance.new("CylinderMesh")
o336 = Instance.new("Part")
o337 = Instance.new("BlockMesh")
o338 = Instance.new("Part")
o339 = Instance.new("SpecialMesh")
o340 = Instance.new("Part")
o341 = Instance.new("Part")
o342 = Instance.new("Part")
o343 = Instance.new("Part")
o344 = Instance.new("Part")
o345 = Instance.new("Part")
o346 = Instance.new("Part")
o347 = Instance.new("Part")
o348 = Instance.new("Part")
o349 = Instance.new("Part")
o350 = Instance.new("Part")
o351 = Instance.new("Part")
o352 = Instance.new("Part")
o353 = Instance.new("Part")
o354 = Instance.new("Part")
o355 = Instance.new("Part")
o356 = Instance.new("Part")
o357 = Instance.new("Part")
o358 = Instance.new("Part")
o359 = Instance.new("Part")
o360 = Instance.new("Part")
o361 = Instance.new("Part")
o362 = Instance.new("Part")
o363 = Instance.new("Part")
o364 = Instance.new("Part")
o365 = Instance.new("Part")
o366 = Instance.new("Part")
o367 = Instance.new("Part")
o368 = Instance.new("Part")
o369 = Instance.new("Part")
o370 = Instance.new("Part")
o371 = Instance.new("Part")
o372 = Instance.new("Part")
o373 = Instance.new("Part")
o374 = Instance.new("Part")
o375 = Instance.new("Part")
o376 = Instance.new("Part")
o377 = Instance.new("Part")
o378 = Instance.new("Part")
o379 = Instance.new("Part")
o380 = Instance.new("Part")
o381 = Instance.new("Part")
o382 = Instance.new("Part")
o383 = Instance.new("Part")
o384 = Instance.new("Part")
o385 = Instance.new("Part")
o386 = Instance.new("Part")
o387 = Instance.new("Part")
o388 = Instance.new("Part")
o389 = Instance.new("Part")
o390 = Instance.new("Part")
o391 = Instance.new("Part")
o392 = Instance.new("Part")
o393 = Instance.new("Part")
o394 = Instance.new("Model")
o395 = Instance.new("Part")
o396 = Instance.new("Part")
o397 = Instance.new("Part")
o398 = Instance.new("Part")
o399 = Instance.new("Model")
o400 = Instance.new("Part")
o401 = Instance.new("BlockMesh")
o402 = Instance.new("Model")
o403 = Instance.new("Part")
o404 = Instance.new("SpecialMesh")
o405 = Instance.new("ParticleEmitter")
o406 = Instance.new("Part")
o407 = Instance.new("SpecialMesh")
o408 = Instance.new("ParticleEmitter")
o409 = Instance.new("Part")
o410 = Instance.new("SpecialMesh")
o411 = Instance.new("Script")
o412 = Instance.new("ScreenGui")
o413 = Instance.new("Frame")
o414 = Instance.new("Frame")
o415 = Instance.new("Frame")
o416 = Instance.new("TextLabel")
o417 = Instance.new("Frame")
o418 = Instance.new("TextLabel")
o419 = Instance.new("Frame")
o420 = Instance.new("Frame")
o421 = Instance.new("Frame")
o422 = Instance.new("TextLabel")
o423 = Instance.new("Frame")
o424 = Instance.new("TextLabel")
o425 = Instance.new("TextLabel")
o426 = Instance.new("Frame")
o427 = Instance.new("Frame")
o428 = Instance.new("Frame")
o429 = Instance.new("TextLabel")
o430 = Instance.new("TextButton")
o431 = Instance.new("Frame")
o432 = Instance.new("Frame")
o433 = Instance.new("Frame")
o434 = Instance.new("TextLabel")
o435 = Instance.new("ScreenGui")
o436 = Instance.new("ScrollingFrame")
o437 = Instance.new("TextLabel")
o438 = Instance.new("TextLabel")
o439 = Instance.new("TextLabel")
o440 = Instance.new("TextLabel")
o441 = Instance.new("TextLabel")
o442 = Instance.new("TextLabel")
o443 = Instance.new("TextLabel")
o444 = Instance.new("TextLabel")
o445 = Instance.new("TextLabel")
o446 = Instance.new("TextLabel")
o447 = Instance.new("TextLabel")
o448 = Instance.new("TextLabel")
o1.Name = "M.S.D"
o1.Parent = mas
o2.Name = "ShoulderB"
o2.Parent = o1
o3.Name = "Part"
o3.Parent = o2
o3.Material = Enum.Material.Granite
o3.BrickColor = BrickColor.new("Really black")
o3.Position = Vector3.new(-1.39982605, 1.72391605, -7.95987177)
o3.Rotation = Vector3.new(0, -90, 0)
o3.CanCollide = false
o3.Size = Vector3.new(1, 0.200000003, 0.600000024)
o3.CFrame = CFrame.new(-1.39982605, 1.72391605, -7.95987177, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o3.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o3.Position = Vector3.new(-1.39982605, 1.72391605, -7.95987177)
o3.Orientation = Vector3.new(0, -90, 0)
o3.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o4.Parent = o3
o4.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o4.MeshType = Enum.MeshType.Wedge
o4.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o5.Name = "Part"
o5.Parent = o2
o5.Material = Enum.Material.Granite
o5.BrickColor = BrickColor.new("Really black")
o5.Position = Vector3.new(-1.39982605, 2.02391696, -7.95987177)
o5.Rotation = Vector3.new(180, -90, 0)
o5.CanCollide = false
o5.Size = Vector3.new(1, 0.400000006, 0.600000024)
o5.CFrame = CFrame.new(-1.39982605, 2.02391696, -7.95987177, -4.37113883e-08, 0, -1, -8.74227766e-08, -1, 3.82137093e-15, -1, 8.74227766e-08, 4.37113883e-08)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Position = Vector3.new(-1.39982605, 2.02391696, -7.95987177)
o5.Orientation = Vector3.new(0, -90, -180)
o5.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o6.Parent = o5
o6.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o6.MeshType = Enum.MeshType.Wedge
o6.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o7.Name = "Part"
o7.Parent = o2
o7.Material = Enum.Material.Granite
o7.BrickColor = BrickColor.new("Really black")
o7.Position = Vector3.new(0.000182999996, 2.02391696, -7.95987177)
o7.Rotation = Vector3.new(-180, 90, 0)
o7.CanCollide = false
o7.Size = Vector3.new(1, 0.400000006, 0.600000024)
o7.CFrame = CFrame.new(0.000182999996, 2.02391696, -7.95987177, -4.37113883e-08, 0, 1, -8.74227766e-08, -1, -3.82137093e-15, 1, -8.74227766e-08, 4.37113883e-08)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Position = Vector3.new(0.000182999996, 2.02391696, -7.95987177)
o7.Orientation = Vector3.new(0, 90, -180)
o7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o8.Parent = o7
o8.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o8.MeshType = Enum.MeshType.Wedge
o8.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o9.Name = "Part"
o9.Parent = o2
o9.Material = Enum.Material.Granite
o9.BrickColor = BrickColor.new("Really black")
o9.Position = Vector3.new(0.000182999996, 1.72391605, -7.95987177)
o9.Rotation = Vector3.new(0, 90, 0)
o9.CanCollide = false
o9.Size = Vector3.new(1, 0.200000003, 0.600000024)
o9.CFrame = CFrame.new(0.000182999996, 1.72391605, -7.95987177, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o9.Position = Vector3.new(0.000182999996, 1.72391605, -7.95987177)
o9.Orientation = Vector3.new(0, 90, 0)
o9.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Parent = o9
o10.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o10.MeshType = Enum.MeshType.Wedge
o10.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o11.Name = "Center"
o11.Parent = o2
o11.Material = Enum.Material.SmoothPlastic
o11.BrickColor = BrickColor.new("Really black")
o11.Transparency = 1
o11.Position = Vector3.new(-0.699814022, 1.22391605, -7.95987177)
o11.CanCollide = false
o11.Size = Vector3.new(2, 2, 1)
o11.CFrame = CFrame.new(-0.699814022, 1.22391605, -7.95987177, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Position = Vector3.new(-0.699814022, 1.22391605, -7.95987177)
o11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o12.Parent = o11
o12.Scale = Vector3.new(0, 0, 0)
o12.Scale = Vector3.new(0, 0, 0)
o13.Name = "Part"
o13.Parent = o2
o13.Material = Enum.Material.Granite
o13.BrickColor = BrickColor.new("Really black")
o13.Position = Vector3.new(0.000182999996, 1.52391696, -7.95987177)
o13.Rotation = Vector3.new(180, -90, 0)
o13.CanCollide = false
o13.Size = Vector3.new(1, 0.200000003, 0.600000024)
o13.CFrame = CFrame.new(0.000182999996, 1.52391696, -7.95987177, -4.37113883e-08, 0, -1, -8.74227766e-08, -1, 3.82137093e-15, -1, 8.74227766e-08, 4.37113883e-08)
o13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Position = Vector3.new(0.000182999996, 1.52391696, -7.95987177)
o13.Orientation = Vector3.new(0, -90, -180)
o13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o14.Parent = o13
o14.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o14.MeshType = Enum.MeshType.Wedge
o14.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o15.Name = "Part"
o15.Parent = o2
o15.Material = Enum.Material.Granite
o15.BrickColor = BrickColor.new("Really black")
o15.Position = Vector3.new(-1.39982605, 1.52391696, -7.95987177)
o15.Rotation = Vector3.new(-180, 90, 0)
o15.CanCollide = false
o15.Size = Vector3.new(1, 0.200000003, 0.600000024)
o15.CFrame = CFrame.new(-1.39982605, 1.52391696, -7.95987177, -4.37113883e-08, 0, 1, -8.74227766e-08, -1, -3.82137093e-15, 1, -8.74227766e-08, 4.37113883e-08)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Position = Vector3.new(-1.39982605, 1.52391696, -7.95987177)
o15.Orientation = Vector3.new(0, 90, -180)
o15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Parent = o15
o16.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o16.MeshType = Enum.MeshType.Wedge
o16.Scale = Vector3.new(1.12, 1.17999995, 1.00999999)
o17.Name = "RightArm"
o17.Parent = o1
o18.Parent = o17
o18.Material = Enum.Material.SmoothPlastic
o18.BrickColor = BrickColor.new("Fossil")
o18.Reflectance = 0.30000001192093
o18.Position = Vector3.new(0.500205994, 1.52391505, -8.26003265)
o18.CanCollide = false
o18.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o18.CFrame = CFrame.new(0.500205994, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.623529, 0.631373, 0.67451)
o18.Position = Vector3.new(0.500205994, 1.52391505, -8.26003265)
o18.Color = Color3.new(0.623529, 0.631373, 0.67451)
o19.Parent = o18
o19.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o19.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o20.Name = "C"
o20.Parent = o17
o20.Material = Enum.Material.Neon
o20.BrickColor = BrickColor.new("Dark indigo")
o20.Position = Vector3.new(0.500205994, 1.52391505, -8.26003265)
o20.CanCollide = false
o20.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o20.CFrame = CFrame.new(0.500205994, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o20.Position = Vector3.new(0.500205994, 1.52391505, -8.26003265)
o20.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o21.Parent = o20
o21.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o21.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o22.Name = "C"
o22.Parent = o17
o22.Material = Enum.Material.Neon
o22.BrickColor = BrickColor.new("Dark indigo")
o22.Position = Vector3.new(1.10020399, 1.52391505, -8.26003265)
o22.CanCollide = false
o22.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o22.CFrame = CFrame.new(1.10020399, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o22.Position = Vector3.new(1.10020399, 1.52391505, -8.26003265)
o22.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o23.Parent = o22
o23.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o23.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o24.Parent = o17
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Fossil")
o24.Reflectance = 0.30000001192093
o24.Position = Vector3.new(1.10020399, 1.52391505, -8.26003265)
o24.CanCollide = false
o24.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o24.CFrame = CFrame.new(1.10020399, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.623529, 0.631373, 0.67451)
o24.Position = Vector3.new(1.10020399, 1.52391505, -8.26003265)
o24.Color = Color3.new(0.623529, 0.631373, 0.67451)
o25.Parent = o24
o25.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o25.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o26.Parent = o17
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Fossil")
o26.Reflectance = 0.30000001192093
o26.Position = Vector3.new(1.10020399, 1.52391505, -7.66003323)
o26.CanCollide = false
o26.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o26.CFrame = CFrame.new(1.10020399, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.623529, 0.631373, 0.67451)
o26.Position = Vector3.new(1.10020399, 1.52391505, -7.66003323)
o26.Color = Color3.new(0.623529, 0.631373, 0.67451)
o27.Parent = o26
o27.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o27.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o28.Parent = o17
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Fossil")
o28.Reflectance = 0.30000001192093
o28.Position = Vector3.new(0.500205994, 1.52391505, -7.66003323)
o28.CanCollide = false
o28.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o28.CFrame = CFrame.new(0.500205994, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.623529, 0.631373, 0.67451)
o28.Position = Vector3.new(0.500205994, 1.52391505, -7.66003323)
o28.Color = Color3.new(0.623529, 0.631373, 0.67451)
o29.Parent = o28
o29.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o29.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o30.Name = "C"
o30.Parent = o17
o30.Material = Enum.Material.Neon
o30.BrickColor = BrickColor.new("Dark indigo")
o30.Position = Vector3.new(1.10020399, 1.52391505, -7.66003323)
o30.CanCollide = false
o30.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o30.CFrame = CFrame.new(1.10020399, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o30.Position = Vector3.new(1.10020399, 1.52391505, -7.66003323)
o30.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o31.Parent = o30
o31.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o31.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o32.Parent = o17
o32.Material = Enum.Material.Granite
o32.BrickColor = BrickColor.new("Black")
o32.Position = Vector3.new(0.800208986, 1.52391505, -7.96003723)
o32.CanCollide = false
o32.Size = Vector3.new(1, 0.599999905, 1)
o32.CFrame = CFrame.new(0.800208986, 1.52391505, -7.96003723, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.105882, 0.164706, 0.207843)
o32.Position = Vector3.new(0.800208986, 1.52391505, -7.96003723)
o32.Color = Color3.new(0.105882, 0.164706, 0.207843)
o33.Parent = o32
o33.Scale = Vector3.new(1.14999998, 0.5, 1.14999998)
o33.Scale = Vector3.new(1.14999998, 0.5, 1.14999998)
o34.Parent = o17
o34.Material = Enum.Material.Granite
o34.BrickColor = BrickColor.new("Really black")
o34.Position = Vector3.new(0.800208986, 1.823915, -7.9600358)
o34.CanCollide = false
o34.Size = Vector3.new(1, 0.799999952, 1)
o34.CFrame = CFrame.new(0.800208986, 1.823915, -7.9600358, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o34.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o34.Position = Vector3.new(0.800208986, 1.823915, -7.9600358)
o34.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o35.Parent = o34
o35.Scale = Vector3.new(1.13999999, 1.10000002, 1.13999999)
o35.Scale = Vector3.new(1.13999999, 1.10000002, 1.13999999)
o36.Name = "ArmParticles"
o36.Parent = o17
o36.Material = Enum.Material.SmoothPlastic
o36.BrickColor = BrickColor.new("Really black")
o36.Transparency = 1
o36.Position = Vector3.new(0.800208986, 1.62391603, -7.96003723)
o36.CanCollide = false
o36.Size = Vector3.new(1, 0.399999976, 1)
o36.CFrame = CFrame.new(0.800208986, 1.62391603, -7.96003723, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o36.Position = Vector3.new(0.800208986, 1.62391603, -7.96003723)
o36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o37.Parent = o36
o37.Scale = Vector3.new(0, 0, 0)
o37.Scale = Vector3.new(0, 0, 0)
o38.Name = "P"
o38.Parent = o36
o38.Transparency = NumberSequence.new(0.40000000596046,0.40000000596046)
o38.Rotation = NumberRange.new(90,180)
o38.Size = NumberSequence.new(0.23999999463558,0.23999999463558,0.5625)
o38.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o38.Enabled = false
o38.LightEmission = 1
o38.Texture = "rbxasset://textures/particles/smoke_main.dds"
o38.Lifetime = NumberRange.new(1,1)
o38.Rate = 800
o38.RotSpeed = NumberRange.new(180,270)
o38.Speed = NumberRange.new(1.2999999523163,1.2999999523163)
o38.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o39.Name = "C"
o39.Parent = o17
o39.Material = Enum.Material.Neon
o39.BrickColor = BrickColor.new("Dark indigo")
o39.Position = Vector3.new(0.500205994, 1.52391505, -7.66003323)
o39.CanCollide = false
o39.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o39.CFrame = CFrame.new(0.500205994, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o39.Position = Vector3.new(0.500205994, 1.52391505, -7.66003323)
o39.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o40.Parent = o39
o40.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o40.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o41.Name = "CentersMain"
o41.Parent = o17
o41.Material = Enum.Material.Metal
o41.BrickColor = BrickColor.new("Really black")
o41.Position = Vector3.new(0.800208986, 1.62391603, -7.96003914)
o41.Rotation = Vector3.new(0, 90, 0)
o41.CanCollide = false
o41.Size = Vector3.new(1, 0.400000006, 1)
o41.CFrame = CFrame.new(0.800208986, 1.62391603, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o41.Position = Vector3.new(0.800208986, 1.62391603, -7.96003914)
o41.Orientation = Vector3.new(0, 90, 0)
o41.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o42.Parent = o41
o42.Scale = Vector3.new(1.10000002, 1.10000002, 1.08000004)
o42.Scale = Vector3.new(1.10000002, 1.10000002, 1.08000004)
o43.Name = "P3"
o43.Parent = o17
o44.Name = "Center"
o44.Parent = o43
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Really black")
o44.Reflectance = 0.15000000596046
o44.Position = Vector3.new(0.800208986, 0.423916012, -7.96003914)
o44.Rotation = Vector3.new(0, 90, 0)
o44.CanCollide = false
o44.Size = Vector3.new(1, 0.400000006, 1)
o44.CFrame = CFrame.new(0.800208986, 0.423916012, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o44.Position = Vector3.new(0.800208986, 0.423916012, -7.96003914)
o44.Orientation = Vector3.new(0, 90, 0)
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o45.Parent = o44
o45.Scale = Vector3.new(1.05799997, 1.10000002, 1.05799997)
o45.Scale = Vector3.new(1.05799997, 1.10000002, 1.05799997)
o46.Parent = o43
o46.Material = Enum.Material.SmoothPlastic
o46.BrickColor = BrickColor.new("Black")
o46.Reflectance = 0.20000000298023
o46.Position = Vector3.new(0.800208986, 0.223915994, -7.96003914)
o46.Rotation = Vector3.new(0, 90, 0)
o46.CanCollide = false
o46.Size = Vector3.new(1, 0.400000006, 1)
o46.CFrame = CFrame.new(0.800208986, 0.223915994, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o46.Position = Vector3.new(0.800208986, 0.223915994, -7.96003914)
o46.Orientation = Vector3.new(0, 90, 0)
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o47.Parent = o46
o47.Scale = Vector3.new(1.06500006, 0.150000006, 1.06500006)
o47.Scale = Vector3.new(1.06500006, 0.150000006, 1.06500006)
o48.Name = "C"
o48.Parent = o43
o48.Material = Enum.Material.Granite
o48.BrickColor = BrickColor.new("Dark indigo")
o48.Position = Vector3.new(1.30001795, 0.523914993, -7.9600358)
o48.Rotation = Vector3.new(180, -90, 0)
o48.CanCollide = false
o48.Size = Vector3.new(1, 0.200000003, 0.400000006)
o48.CFrame = CFrame.new(1.30001795, 0.523914993, -7.9600358, -4.37113883e-08, 0, -1, -8.74227766e-08, -1, 3.82137093e-15, -1, 8.74227766e-08, 4.37113883e-08)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o48.Position = Vector3.new(1.30001795, 0.523914993, -7.9600358)
o48.Orientation = Vector3.new(0, -90, -180)
o48.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o49.Parent = o48
o49.Scale = Vector3.new(0.899999976, 1.20000005, 0.155000001)
o49.MeshType = Enum.MeshType.Torso
o49.Scale = Vector3.new(0.899999976, 1.20000005, 0.155000001)
o50.Name = "C"
o50.Parent = o43
o50.Material = Enum.Material.Neon
o50.BrickColor = BrickColor.new("Dark indigo")
o50.Position = Vector3.new(1.30001795, 0.523914993, -7.9600358)
o50.Rotation = Vector3.new(180, -90, 0)
o50.CanCollide = false
o50.Size = Vector3.new(1, 0.200000003, 0.400000006)
o50.CFrame = CFrame.new(1.30001795, 0.523914993, -7.9600358, -4.37113883e-08, 0, -1, -8.74227766e-08, -1, 3.82137093e-15, -1, 8.74227766e-08, 4.37113883e-08)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o50.Position = Vector3.new(1.30001795, 0.523914993, -7.9600358)
o50.Orientation = Vector3.new(0, -90, -180)
o50.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o51.Parent = o50
o51.Scale = Vector3.new(0.949999988, 1.39999998, 0.150000006)
o51.MeshType = Enum.MeshType.Torso
o51.Scale = Vector3.new(0.949999988, 1.39999998, 0.150000006)
o52.Name = "C2"
o52.Parent = o43
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Alder")
o52.Reflectance = 0.10000000149012
o52.Position = Vector3.new(1.30000305, 0.523914993, -7.66003323)
o52.Rotation = Vector3.new(180, 0, 180)
o52.CanCollide = false
o52.Elasticity = 0
o52.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o52.CFrame = CFrame.new(1.30000305, 0.523914993, -7.66003323, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o52.Color = Color3.new(0.705882, 0.501961, 1)
o52.Position = Vector3.new(1.30000305, 0.523914993, -7.66003323)
o52.Orientation = Vector3.new(0, 180, 0)
o52.Color = Color3.new(0.705882, 0.501961, 1)
o53.Parent = o52
o53.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o53.Offset = Vector3.new(-0.00999999978, 0, 0)
o53.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o53.MeshType = Enum.MeshType.FileMesh
o53.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o54.Name = "C2"
o54.Parent = o43
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Alder")
o54.Reflectance = 0.10000000149012
o54.Position = Vector3.new(1.30000305, 0.523914993, -8.26003265)
o54.Rotation = Vector3.new(180, 0, 180)
o54.CanCollide = false
o54.Elasticity = 0
o54.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o54.CFrame = CFrame.new(1.30000305, 0.523914993, -8.26003265, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o54.Color = Color3.new(0.705882, 0.501961, 1)
o54.Position = Vector3.new(1.30000305, 0.523914993, -8.26003265)
o54.Orientation = Vector3.new(0, 180, 0)
o54.Color = Color3.new(0.705882, 0.501961, 1)
o55.Parent = o54
o55.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o55.Offset = Vector3.new(-0.00999999978, 0, 0)
o55.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o55.MeshType = Enum.MeshType.FileMesh
o55.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o56.Name = "C2"
o56.Parent = o43
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Alder")
o56.Reflectance = 0.10000000149012
o56.Position = Vector3.new(1.30000305, 0.523914993, -7.9600358)
o56.Rotation = Vector3.new(180, 0, 180)
o56.CanCollide = false
o56.Elasticity = 0
o56.Size = Vector3.new(0.400000006, 0.200000003, 0.600000024)
o56.CFrame = CFrame.new(1.30000305, 0.523914993, -7.9600358, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o56.Color = Color3.new(0.705882, 0.501961, 1)
o56.Position = Vector3.new(1.30000305, 0.523914993, -7.9600358)
o56.Orientation = Vector3.new(0, 180, 0)
o56.Color = Color3.new(0.705882, 0.501961, 1)
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o57.Offset = Vector3.new(-0.00999999978, 0, 0)
o57.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o57.MeshType = Enum.MeshType.FileMesh
o57.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o58.Name = "P2"
o58.Parent = o17
o59.Name = "Center"
o59.Parent = o58
o59.Material = Enum.Material.SmoothPlastic
o59.BrickColor = BrickColor.new("Really black")
o59.Reflectance = 0.15000000596046
o59.Position = Vector3.new(0.800208986, 0.823916018, -7.96003914)
o59.Rotation = Vector3.new(0, 90, 0)
o59.CanCollide = false
o59.Size = Vector3.new(1, 0.400000006, 1)
o59.CFrame = CFrame.new(0.800208986, 0.823916018, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Position = Vector3.new(0.800208986, 0.823916018, -7.96003914)
o59.Orientation = Vector3.new(0, 90, 0)
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o60.Parent = o59
o60.Scale = Vector3.new(1.08000004, 1.10000002, 1.08000004)
o60.Scale = Vector3.new(1.08000004, 1.10000002, 1.08000004)
o61.Name = "C"
o61.Parent = o58
o61.Material = Enum.Material.Granite
o61.BrickColor = BrickColor.new("Dark indigo")
o61.Position = Vector3.new(1.30001795, 0.823913991, -7.9600358)
o61.Rotation = Vector3.new(0, -90, 0)
o61.CanCollide = false
o61.Size = Vector3.new(1, 0.400000036, 0.400000006)
o61.CFrame = CFrame.new(1.30001795, 0.823913991, -7.9600358, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o61.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o61.Position = Vector3.new(1.30001795, 0.823913991, -7.9600358)
o61.Orientation = Vector3.new(0, -90, 0)
o61.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o62.Parent = o61
o62.Scale = Vector3.new(0.899999976, 1.10000002, 0.254999995)
o62.MeshType = Enum.MeshType.Torso
o62.Scale = Vector3.new(0.899999976, 1.10000002, 0.254999995)
o63.Name = "C"
o63.Parent = o58
o63.Material = Enum.Material.Neon
o63.BrickColor = BrickColor.new("Dark indigo")
o63.Position = Vector3.new(1.30001795, 0.823913991, -7.9600358)
o63.Rotation = Vector3.new(0, -90, 0)
o63.CanCollide = false
o63.Size = Vector3.new(1, 0.400000036, 0.400000006)
o63.CFrame = CFrame.new(1.30001795, 0.823913991, -7.9600358, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o63.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o63.Position = Vector3.new(1.30001795, 0.823913991, -7.9600358)
o63.Orientation = Vector3.new(0, -90, 0)
o63.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o64.Parent = o63
o64.Scale = Vector3.new(0.949999988, 1.09000003, 0.25)
o64.MeshType = Enum.MeshType.Torso
o64.Scale = Vector3.new(0.949999988, 1.09000003, 0.25)
o65.Name = "C2"
o65.Parent = o58
o65.Material = Enum.Material.SmoothPlastic
o65.BrickColor = BrickColor.new("Alder")
o65.Position = Vector3.new(1.30020905, 0.823526978, -8.21007061)
o65.Rotation = Vector3.new(15, -90, 0)
o65.CanCollide = false
o65.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o65.CFrame = CFrame.new(1.30020905, 0.823526978, -8.21007061, -4.37113883e-08, 0, -1, -0.25879389, 0.965932548, 1.131224e-08, 0.965932548, 0.25879389, -4.22222541e-08)
o65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Color = Color3.new(0.705882, 0.501961, 1)
o65.Position = Vector3.new(1.30020905, 0.823526978, -8.21007061)
o65.Orientation = Vector3.new(0, -90, -15)
o65.Color = Color3.new(0.705882, 0.501961, 1)
o66.Parent = o65
o66.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o66.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o67.Name = "C2"
o67.Parent = o58
o67.Material = Enum.Material.SmoothPlastic
o67.BrickColor = BrickColor.new("Alder")
o67.Position = Vector3.new(1.30001104, 0.823913991, -7.9600358)
o67.Rotation = Vector3.new(0, -90, 0)
o67.CanCollide = false
o67.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o67.CFrame = CFrame.new(1.30001104, 0.823913991, -7.9600358, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o67.Color = Color3.new(0.705882, 0.501961, 1)
o67.Position = Vector3.new(1.30001104, 0.823913991, -7.9600358)
o67.Orientation = Vector3.new(0, -90, 0)
o67.Color = Color3.new(0.705882, 0.501961, 1)
o68.Parent = o67
o68.Scale = Vector3.new(0.100000001, 1, 0.280000001)
o68.Scale = Vector3.new(0.100000001, 1, 0.280000001)
o69.Name = "C2"
o69.Parent = o58
o69.Material = Enum.Material.SmoothPlastic
o69.BrickColor = BrickColor.new("Alder")
o69.Position = Vector3.new(1.30020905, 0.823526978, -7.71007204)
o69.Rotation = Vector3.new(-15, -90, 0)
o69.CanCollide = false
o69.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o69.CFrame = CFrame.new(1.30020905, 0.823526978, -7.71007204, -4.37113883e-08, 0, -1, 0.25879389, 0.965932548, -1.131224e-08, 0.965932548, -0.25879389, -4.22222541e-08)
o69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Color = Color3.new(0.705882, 0.501961, 1)
o69.Position = Vector3.new(1.30020905, 0.823526978, -7.71007204)
o69.Orientation = Vector3.new(0, -90, 15)
o69.Color = Color3.new(0.705882, 0.501961, 1)
o70.Parent = o69
o70.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o70.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o71.Name = "Seal"
o71.Parent = o17
o73.Name = "Mot1"
o73.Parent = o71
o73.Material = Enum.Material.SmoothPlastic
o73.BrickColor = BrickColor.new("Really black")
o73.Transparency = 1
o73.Position = Vector3.new(1.35020447, 1.923913, -7.96003532)
o73.Rotation = Vector3.new(0, 0, 90)
o73.CanCollide = false
o73.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o73.CFrame = CFrame.new(1.35020447, 1.923913, -7.96003532, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1)
o73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o73.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o73.Position = Vector3.new(1.35020447, 1.923913, -7.96003532)
o73.Orientation = Vector3.new(0, 0, 90)
o73.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o74.Parent = o73
o74.Scale = Vector3.new(0, 0, 0)
o74.Scale = Vector3.new(0, 0, 0)
o75.Parent = o73
o75.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o75.C1 = CFrame.new(0.0557327271, 0, -0.0865020752, -1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, 1, -8.74227766e-08, 0, -8.74227766e-08, -1)
o75.Part0 = o73
o77.Name = "Mot2"
o77.Parent = o71
o77.Material = Enum.Material.SmoothPlastic
o77.BrickColor = BrickColor.new("Really black")
o77.Transparency = 1
o77.Position = Vector3.new(1.35020447, 1.923913, -7.96003532)
o77.Rotation = Vector3.new(0, 0, 90)
o77.CanCollide = false
o77.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o77.CFrame = CFrame.new(1.35020447, 1.923913, -7.96003532, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1)
o77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o77.Position = Vector3.new(1.35020447, 1.923913, -7.96003532)
o77.Orientation = Vector3.new(0, 0, 90)
o77.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o78.Parent = o77
o78.Scale = Vector3.new(0, 0, 0)
o78.Scale = Vector3.new(0, 0, 0)
o79.Parent = o77
o79.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o79.C1 = CFrame.new(0.0557327271, 0, 0.0865001678, -1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, 1, -8.74227766e-08, 0, -8.74227766e-08, -1)
o79.Part0 = o77
o80.Name = "Main"
o80.Parent = o71
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Fossil")
o80.Reflectance = 0.30000001192093
o80.Position = Vector3.new(1.35020447, 1.923913, -7.96003532)
o80.Rotation = Vector3.new(0, 0, 90)
o80.CanCollide = false
o80.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o80.CFrame = CFrame.new(1.35020447, 1.923913, -7.96003532, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.623529, 0.631373, 0.67451)
o80.Position = Vector3.new(1.35020447, 1.923913, -7.96003532)
o80.Orientation = Vector3.new(0, 0, 90)
o80.Color = Color3.new(0.623529, 0.631373, 0.67451)
o81.Parent = o80
o81.Scale = Vector3.new(1.79999995, 0.150000006, 1.79999995)
o81.Scale = Vector3.new(1.79999995, 0.150000006, 1.79999995)
o82.Parent = o80
o82.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o82.C1 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o82.Part0 = o80
o82.Part1 = o73
o83.Parent = o80
o83.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o83.C1 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o83.Part0 = o80
o83.Part1 = o77
o84.Parent = o80
o84.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1)
o84.C1 = CFrame.new(0.549995422, 0.699996948, 1.90734863e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o84.Part0 = o80
o84.Part1 = o102
o85.Name = "P1"
o85.Parent = o17
o86.Name = "Center"
o86.Parent = o85
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Really black")
o86.Reflectance = 0.15000000596046
o86.Position = Vector3.new(0.800208986, 1.22391605, -7.96003914)
o86.Rotation = Vector3.new(0, 90, 0)
o86.CanCollide = false
o86.Size = Vector3.new(1, 0.400000006, 1)
o86.CFrame = CFrame.new(0.800208986, 1.22391605, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o86.Position = Vector3.new(0.800208986, 1.22391605, -7.96003914)
o86.Orientation = Vector3.new(0, 90, 0)
o86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o87.Parent = o86
o87.Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002)
o87.Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002)
o88.Name = "C"
o88.Parent = o85
o88.Material = Enum.Material.Granite
o88.BrickColor = BrickColor.new("Dark indigo")
o88.Position = Vector3.new(1.30001795, 1.22391295, -7.9600358)
o88.Rotation = Vector3.new(0, -90, 0)
o88.CanCollide = false
o88.Size = Vector3.new(1, 0.400000036, 0.400000006)
o88.CFrame = CFrame.new(1.30001795, 1.22391295, -7.9600358, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o88.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o88.Position = Vector3.new(1.30001795, 1.22391295, -7.9600358)
o88.Orientation = Vector3.new(0, -90, 0)
o88.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o89.Parent = o88
o89.Scale = Vector3.new(0.850000024, 1.10000002, 0.319999993)
o89.MeshType = Enum.MeshType.Torso
o89.Scale = Vector3.new(0.850000024, 1.10000002, 0.319999993)
o90.Name = "C"
o90.Parent = o85
o90.Material = Enum.Material.Neon
o90.BrickColor = BrickColor.new("Dark indigo")
o90.Position = Vector3.new(1.30001795, 1.22391295, -7.9600358)
o90.Rotation = Vector3.new(0, -90, 0)
o90.CanCollide = false
o90.Size = Vector3.new(1, 0.400000036, 0.400000006)
o90.CFrame = CFrame.new(1.30001795, 1.22391295, -7.9600358, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o90.Position = Vector3.new(1.30001795, 1.22391295, -7.9600358)
o90.Orientation = Vector3.new(0, -90, 0)
o90.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o91.Parent = o90
o91.Scale = Vector3.new(0.899999976, 1.09000003, 0.310000002)
o91.MeshType = Enum.MeshType.Torso
o91.Scale = Vector3.new(0.899999976, 1.09000003, 0.310000002)
o92.Name = "C2"
o92.Parent = o85
o92.Material = Enum.Material.SmoothPlastic
o92.BrickColor = BrickColor.new("Alder")
o92.Position = Vector3.new(1.30001104, 1.12391603, -7.86003113)
o92.Rotation = Vector3.new(45, -90, 0)
o92.CanCollide = false
o92.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o92.CFrame = CFrame.new(1.30001104, 1.12391603, -7.86003113, -4.37113883e-08, 0, -1, -0.7071262, 0.707087338, 3.09094688e-08, 0.707087338, 0.7071262, -3.09077706e-08)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.705882, 0.501961, 1)
o92.Position = Vector3.new(1.30001104, 1.12391603, -7.86003113)
o92.Orientation = Vector3.new(0, -90, -45)
o92.Color = Color3.new(0.705882, 0.501961, 1)
o93.Parent = o92
o93.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o93.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o94.Name = "C2"
o94.Parent = o85
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Alder")
o94.Position = Vector3.new(1.30001104, 1.22391295, -7.9600358)
o94.Rotation = Vector3.new(0, -90, 0)
o94.CanCollide = false
o94.Size = Vector3.new(0.600000024, 0.400000006, 0.400000006)
o94.CFrame = CFrame.new(1.30001104, 1.22391295, -7.9600358, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.705882, 0.501961, 1)
o94.Position = Vector3.new(1.30001104, 1.22391295, -7.9600358)
o94.Orientation = Vector3.new(0, -90, 0)
o94.Color = Color3.new(0.705882, 0.501961, 1)
o95.Parent = o94
o95.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o95.Offset = Vector3.new(0, 0, -0.0649999976)
o95.Scale = Vector3.new(0.150000006, 0.150000006, 0)
o95.MeshType = Enum.MeshType.FileMesh
o95.Scale = Vector3.new(0.150000006, 0.150000006, 0)
o96.Name = "C2"
o96.Parent = o85
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Alder")
o96.Position = Vector3.new(1.30001104, 1.32391405, -8.06003189)
o96.Rotation = Vector3.new(45, -90, 0)
o96.CanCollide = false
o96.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o96.CFrame = CFrame.new(1.30001104, 1.32391405, -8.06003189, -4.37113883e-08, 0, -1, -0.7071262, 0.707087338, 3.09094688e-08, 0.707087338, 0.7071262, -3.09077706e-08)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.705882, 0.501961, 1)
o96.Position = Vector3.new(1.30001104, 1.32391405, -8.06003189)
o96.Orientation = Vector3.new(0, -90, -45)
o96.Color = Color3.new(0.705882, 0.501961, 1)
o97.Parent = o96
o97.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o97.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o98.Name = "C2"
o98.Parent = o85
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Alder")
o98.Position = Vector3.new(1.30001104, 1.12391603, -8.06003189)
o98.Rotation = Vector3.new(-45, -90, 0)
o98.CanCollide = false
o98.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o98.CFrame = CFrame.new(1.30001104, 1.12391603, -8.06003189, -4.37113883e-08, 0, -1, 0.7071262, 0.707087338, -3.09094688e-08, 0.707087338, -0.7071262, -3.09077706e-08)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.705882, 0.501961, 1)
o98.Position = Vector3.new(1.30001104, 1.12391603, -8.06003189)
o98.Orientation = Vector3.new(0, -90, 45)
o98.Color = Color3.new(0.705882, 0.501961, 1)
o99.Parent = o98
o99.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o99.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o100.Name = "C2"
o100.Parent = o85
o100.Material = Enum.Material.SmoothPlastic
o100.BrickColor = BrickColor.new("Alder")
o100.Position = Vector3.new(1.30001104, 1.32391405, -7.86003113)
o100.Rotation = Vector3.new(-45, -90, 0)
o100.CanCollide = false
o100.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o100.CFrame = CFrame.new(1.30001104, 1.32391405, -7.86003113, -4.37113883e-08, 0, -1, 0.7071262, 0.707087338, -3.09094688e-08, 0.707087338, -0.7071262, -3.09077706e-08)
o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.705882, 0.501961, 1)
o100.Position = Vector3.new(1.30001104, 1.32391405, -7.86003113)
o100.Orientation = Vector3.new(0, -90, 45)
o100.Color = Color3.new(0.705882, 0.501961, 1)
o101.Parent = o100
o101.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o101.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o102.Name = "Arm"
o102.Parent = o17
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Really black")
o102.Transparency = 1
o102.Position = Vector3.new(0.800208986, 1.22391605, -7.96003723)
o102.CanCollide = false
o102.Size = Vector3.new(1, 2, 1)
o102.CFrame = CFrame.new(0.800208986, 1.22391605, -7.96003723, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o102.Position = Vector3.new(0.800208986, 1.22391605, -7.96003723)
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o103.Parent = o102
o103.Scale = Vector3.new(0, 0, 0)
o103.Scale = Vector3.new(0, 0, 0)
o104.Name = "C"
o104.Parent = o17
o104.Material = Enum.Material.Neon
o104.BrickColor = BrickColor.new("Dark indigo")
o104.Reflectance = 0.30000001192093
o104.Position = Vector3.new(1.35021198, 1.923913, -7.96003723)
o104.Rotation = Vector3.new(180, 0, 180)
o104.CanCollide = false
o104.Size = Vector3.new(0.400000006, 0.200000003, 0.600000024)
o104.CFrame = CFrame.new(1.35021198, 1.923913, -7.96003723, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o104.Position = Vector3.new(1.35021198, 1.923913, -7.96003723)
o104.Orientation = Vector3.new(0, 180, 0)
o104.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o105.Parent = o104
o105.Scale = Vector3.new(0.5, 1.5, 0.5)
o105.MeshType = Enum.MeshType.Sphere
o105.Scale = Vector3.new(0.5, 1.5, 0.5)
o106.Name = "C"
o106.Parent = o17
o106.Material = Enum.Material.Neon
o106.BrickColor = BrickColor.new("Dark indigo")
o106.Position = Vector3.new(0.824981987, 2.22352505, -8.09999943)
o106.Rotation = Vector3.new(180, -45, -90)
o106.CanCollide = false
o106.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o106.CFrame = CFrame.new(0.824981987, 2.22352505, -8.09999943, 2.75087041e-06, 0.707129121, -0.707084477, 1, -3.9520105e-06, -6.18191933e-08, -2.83811937e-06, -0.707084477, -0.707129121)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o106.Position = Vector3.new(0.824981987, 2.22352505, -8.09999943)
o106.Orientation = Vector3.new(0, -135, 90)
o106.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o107.Parent = o106
o107.Offset = Vector3.new(0.100000001, -0.125, 0)
o107.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o107.MeshType = Enum.MeshType.Sphere
o107.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o108.Name = "C"
o108.Parent = o17
o108.Material = Enum.Material.Neon
o108.BrickColor = BrickColor.new("Dark indigo")
o108.Position = Vector3.new(0.824981987, 2.22352505, -8.09999943)
o108.Rotation = Vector3.new(0, -45, 90)
o108.CanCollide = false
o108.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o108.CFrame = CFrame.new(0.824981987, 2.22352505, -8.09999943, 4.93610605e-05, -0.707047522, -0.707166016, 1, 3.49048387e-05, 3.49022412e-05, 5.96992322e-09, -0.707166016, 0.707047522)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o108.Position = Vector3.new(0.824981987, 2.22352505, -8.09999943)
o108.Orientation = Vector3.new(0, -45, 90)
o108.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o109.Parent = o108
o109.Offset = Vector3.new(0.100000001, -0.125, 0)
o109.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o109.MeshType = Enum.MeshType.Sphere
o109.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o110.Name = "C"
o110.Parent = o17
o110.Material = Enum.Material.Neon
o110.BrickColor = BrickColor.new("Dark indigo")
o110.Position = Vector3.new(0.824768007, 2.224015, -7.95814991)
o110.Rotation = Vector3.new(-90, -90, 0)
o110.CanCollide = false
o110.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o110.CFrame = CFrame.new(0.824768007, 2.224015, -7.95814991, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15)
o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o110.Position = Vector3.new(0.824768007, 2.224015, -7.95814991)
o110.Orientation = Vector3.new(0, -90, 90)
o110.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o111.Parent = o110
o111.Offset = Vector3.new(0.100000001, -0.0500000007, 0)
o111.Scale = Vector3.new(0.0299999993, 0.300000012, 0.0299999993)
o111.MeshType = Enum.MeshType.Sphere
o111.Scale = Vector3.new(0.0299999993, 0.300000012, 0.0299999993)
o112.Name = "C"
o112.Parent = o17
o112.Material = Enum.Material.Neon
o112.BrickColor = BrickColor.new("Dark indigo")
o112.Position = Vector3.new(0.824768007, 2.224015, -8.05815601)
o112.Rotation = Vector3.new(90, 90, 0)
o112.CanCollide = false
o112.Size = Vector3.new(0.400000006, 0.400000006, 0.200000003)
o112.CFrame = CFrame.new(0.824768007, 2.224015, -8.05815601, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o112.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o112.Position = Vector3.new(0.824768007, 2.224015, -8.05815601)
o112.Orientation = Vector3.new(0, 90, 90)
o112.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o113.Parent = o112
o113.Offset = Vector3.new(0.100000001, 0, 0)
o113.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
o113.MeshType = Enum.MeshType.Sphere
o113.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
o114.Parent = o17
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Fossil")
o114.Position = Vector3.new(0.824752986, 2.224015, -7.95814991)
o114.Rotation = Vector3.new(90, 90, 0)
o114.CanCollide = false
o114.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o114.CFrame = CFrame.new(0.824752986, 2.224015, -7.95814991, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.623529, 0.631373, 0.67451)
o114.Position = Vector3.new(0.824752986, 2.224015, -7.95814991)
o114.Orientation = Vector3.new(0, 90, 90)
o114.Color = Color3.new(0.623529, 0.631373, 0.67451)
o115.Parent = o114
o115.Scale = Vector3.new(0.330000013, 0.870000005, 0.670000017)
o115.Scale = Vector3.new(0.330000013, 0.870000005, 0.670000017)
o116.Name = "C"
o116.Parent = o17
o116.Material = Enum.Material.Neon
o116.BrickColor = BrickColor.new("Dark indigo")
o116.Position = Vector3.new(0.824768007, 2.224015, -7.95814991)
o116.Rotation = Vector3.new(90, 90, 0)
o116.CanCollide = false
o116.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o116.CFrame = CFrame.new(0.824768007, 2.224015, -7.95814991, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o116.Position = Vector3.new(0.824768007, 2.224015, -7.95814991)
o116.Orientation = Vector3.new(0, 90, 90)
o116.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o117.Parent = o116
o117.Scale = Vector3.new(0.340000004, 0.829999983, 0.629999995)
o117.Scale = Vector3.new(0.340000004, 0.829999983, 0.629999995)
o118.Name = "C"
o118.Parent = o17
o118.Material = Enum.Material.Neon
o118.BrickColor = BrickColor.new("Dark indigo")
o118.Reflectance = 0.30000001192093
o118.Position = Vector3.new(1.35020399, 1.923913, -7.9600358)
o118.Rotation = Vector3.new(0, 0, 90)
o118.CanCollide = false
o118.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o118.CFrame = CFrame.new(1.35020399, 1.923913, -7.9600358, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1)
o118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o118.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o118.Position = Vector3.new(1.35020399, 1.923913, -7.9600358)
o118.Orientation = Vector3.new(0, 0, 90)
o118.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o119.Parent = o118
o119.Scale = Vector3.new(1.89999998, 0.140000001, 1.89999998)
o119.Scale = Vector3.new(1.89999998, 0.140000001, 1.89999998)
o120.Parent = o17
o120.Material = Enum.Material.Granite
o120.BrickColor = BrickColor.new("Really black")
o120.Position = Vector3.new(0.824768007, 2.224015, -7.95814991)
o120.Rotation = Vector3.new(90, 90, 0)
o120.CanCollide = false
o120.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o120.CFrame = CFrame.new(0.824768007, 2.224015, -7.95814991, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o120.Position = Vector3.new(0.824768007, 2.224015, -7.95814991)
o120.Orientation = Vector3.new(0, 90, 90)
o120.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o121.Parent = o120
o121.Scale = Vector3.new(0.5, 0.800000012, 0.600000024)
o121.Scale = Vector3.new(0.5, 0.800000012, 0.600000024)
o122.Name = "Claw1"
o122.Parent = o17
o122.Material = Enum.Material.SmoothPlastic
o122.BrickColor = BrickColor.new("Really black")
o122.Transparency = 1
o122.Position = Vector3.new(1.20020294, 0.123916, -7.56003618)
o122.Rotation = Vector3.new(-5, 0, 10)
o122.CanCollide = false
o122.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o122.CFrame = CFrame.new(1.20020294, 0.123916, -7.56003618, 0.984815001, -0.173606902, -6.17513433e-06, 0.17294623, 0.981064081, 0.0871934593, -0.0151313283, -0.0858704895, 0.996191382)
o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o122.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o122.Position = Vector3.new(1.20020294, 0.123916, -7.56003618)
o122.Orientation = Vector3.new(-5, 0, 10)
o122.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o123.Parent = o122
o123.Scale = Vector3.new(0, 0, 0)
o123.Scale = Vector3.new(0, 0, 0)
o124.Name = "P"
o124.Parent = o122
o124.Transparency = NumberSequence.new(0.40000000596046,1)
o124.Rotation = NumberRange.new(90,180)
o124.Size = NumberSequence.new(0.10000000149012,0.10000000149012)
o124.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o124.Enabled = false
o124.LightEmission = 1
o124.Texture = "rbxasset://textures/particles/smoke_main.dds"
o124.Acceleration = Vector3.new(-5, 0, 0)
o124.Lifetime = NumberRange.new(0.5,0.5)
o124.Rate = 800
o124.RotSpeed = NumberRange.new(180,270)
o124.Speed = NumberRange.new(2.4000000953674,2.4000000953674)
o124.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o125.Name = "Claw3"
o125.Parent = o17
o125.Material = Enum.Material.SmoothPlastic
o125.BrickColor = BrickColor.new("Really black")
o125.Transparency = 1
o125.Position = Vector3.new(1.20020294, 0.123916, -8.3600359)
o125.Rotation = Vector3.new(5, 0, 10)
o125.CanCollide = false
o125.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o125.CFrame = CFrame.new(1.20020294, 0.123916, -8.3600359, 0.984814584, -0.173609346, -5.99911436e-05, 0.17294383, 0.981069446, -0.0871381611, 0.0151868546, 0.0858045518, 0.99619621)
o125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o125.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o125.Position = Vector3.new(1.20020294, 0.123916, -8.3600359)
o125.Orientation = Vector3.new(5, 0, 10)
o125.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o126.Parent = o125
o126.Scale = Vector3.new(0, 0, 0)
o126.Scale = Vector3.new(0, 0, 0)
o127.Name = "P"
o127.Parent = o125
o127.Transparency = NumberSequence.new(0.40000000596046,1)
o127.Rotation = NumberRange.new(90,180)
o127.Size = NumberSequence.new(0.10000000149012,0.10000000149012)
o127.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o127.Enabled = false
o127.LightEmission = 1
o127.Texture = "rbxasset://textures/particles/smoke_main.dds"
o127.Acceleration = Vector3.new(-5, 0, 0)
o127.Lifetime = NumberRange.new(0.5,0.5)
o127.Rate = 800
o127.RotSpeed = NumberRange.new(180,270)
o127.Speed = NumberRange.new(2.4000000953674,2.4000000953674)
o127.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o128.Name = "Claw2"
o128.Parent = o17
o128.Material = Enum.Material.SmoothPlastic
o128.BrickColor = BrickColor.new("Really black")
o128.Transparency = 1
o128.Position = Vector3.new(1.20020294, 0.123916, -7.96003723)
o128.Rotation = Vector3.new(0, 0, 10)
o128.CanCollide = false
o128.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o128.CFrame = CFrame.new(1.20020294, 0.123916, -7.96003723, 0.984812081, -0.173623711, -3.30605944e-05, 0.173623711, 0.984812081, 2.77417312e-05, 2.77418512e-05, -3.30604962e-05, 1)
o128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o128.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o128.Position = Vector3.new(1.20020294, 0.123916, -7.96003723)
o128.Orientation = Vector3.new(0, 0, 10)
o128.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o129.Parent = o128
o129.Scale = Vector3.new(0, 0, 0)
o129.Scale = Vector3.new(0, 0, 0)
o130.Name = "P"
o130.Parent = o128
o130.Transparency = NumberSequence.new(0.40000000596046,1)
o130.Rotation = NumberRange.new(90,180)
o130.Size = NumberSequence.new(0.10000000149012,0.10000000149012)
o130.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o130.Enabled = false
o130.LightEmission = 1
o130.Texture = "rbxasset://textures/particles/smoke_main.dds"
o130.Acceleration = Vector3.new(-5, 0, 0)
o130.Lifetime = NumberRange.new(0.5,0.5)
o130.Rate = 800
o130.RotSpeed = NumberRange.new(180,270)
o130.Speed = NumberRange.new(2.4000000953674,2.4000000953674)
o130.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o131.Name = "LeftArm"
o131.Parent = o1
o132.Parent = o131
o132.Material = Enum.Material.SmoothPlastic
o132.BrickColor = BrickColor.new("Fossil")
o132.Reflectance = 0.30000001192093
o132.Position = Vector3.new(-2.49980211, 1.52391505, -8.26003265)
o132.CanCollide = false
o132.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o132.CFrame = CFrame.new(-2.49980211, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.623529, 0.631373, 0.67451)
o132.Position = Vector3.new(-2.49980211, 1.52391505, -8.26003265)
o132.Color = Color3.new(0.623529, 0.631373, 0.67451)
o133.Parent = o132
o133.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o133.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o134.Name = "C"
o134.Parent = o131
o134.Material = Enum.Material.Neon
o134.BrickColor = BrickColor.new("Dark indigo")
o134.Position = Vector3.new(-2.49980211, 1.52391505, -8.26003265)
o134.CanCollide = false
o134.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o134.CFrame = CFrame.new(-2.49980211, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o134.Position = Vector3.new(-2.49980211, 1.52391505, -8.26003265)
o134.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o135.Parent = o134
o135.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o135.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o136.Name = "C"
o136.Parent = o131
o136.Material = Enum.Material.Neon
o136.BrickColor = BrickColor.new("Dark indigo")
o136.Position = Vector3.new(-1.89980304, 1.52391505, -8.26003265)
o136.CanCollide = false
o136.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o136.CFrame = CFrame.new(-1.89980304, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o136.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o136.Position = Vector3.new(-1.89980304, 1.52391505, -8.26003265)
o136.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o137.Parent = o136
o137.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o137.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o138.Parent = o131
o138.Material = Enum.Material.SmoothPlastic
o138.BrickColor = BrickColor.new("Fossil")
o138.Reflectance = 0.30000001192093
o138.Position = Vector3.new(-1.89980304, 1.52391505, -8.26003265)
o138.CanCollide = false
o138.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o138.CFrame = CFrame.new(-1.89980304, 1.52391505, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.623529, 0.631373, 0.67451)
o138.Position = Vector3.new(-1.89980304, 1.52391505, -8.26003265)
o138.Color = Color3.new(0.623529, 0.631373, 0.67451)
o139.Parent = o138
o139.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o139.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o140.Parent = o131
o140.Material = Enum.Material.SmoothPlastic
o140.BrickColor = BrickColor.new("Fossil")
o140.Reflectance = 0.30000001192093
o140.Position = Vector3.new(-1.89980304, 1.52391505, -7.66003323)
o140.CanCollide = false
o140.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o140.CFrame = CFrame.new(-1.89980304, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o140.Color = Color3.new(0.623529, 0.631373, 0.67451)
o140.Position = Vector3.new(-1.89980304, 1.52391505, -7.66003323)
o140.Color = Color3.new(0.623529, 0.631373, 0.67451)
o141.Parent = o140
o141.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o141.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o142.Parent = o131
o142.Material = Enum.Material.SmoothPlastic
o142.BrickColor = BrickColor.new("Fossil")
o142.Reflectance = 0.30000001192093
o142.Position = Vector3.new(-2.49980211, 1.52391505, -7.66003323)
o142.CanCollide = false
o142.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o142.CFrame = CFrame.new(-2.49980211, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o142.Color = Color3.new(0.623529, 0.631373, 0.67451)
o142.Position = Vector3.new(-2.49980211, 1.52391505, -7.66003323)
o142.Color = Color3.new(0.623529, 0.631373, 0.67451)
o143.Parent = o142
o143.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o143.Scale = Vector3.new(1.38, 0.219999999, 1.38)
o144.Name = "C"
o144.Parent = o131
o144.Material = Enum.Material.Neon
o144.BrickColor = BrickColor.new("Dark indigo")
o144.Position = Vector3.new(-1.89980304, 1.52391505, -7.66003323)
o144.CanCollide = false
o144.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o144.CFrame = CFrame.new(-1.89980304, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o144.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o144.Position = Vector3.new(-1.89980304, 1.52391505, -7.66003323)
o144.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o145.Parent = o144
o145.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o145.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o146.Parent = o131
o146.Material = Enum.Material.Granite
o146.BrickColor = BrickColor.new("Black")
o146.Position = Vector3.new(-2.19979811, 1.52391505, -7.9600358)
o146.CanCollide = false
o146.Size = Vector3.new(1, 0.599999905, 1)
o146.CFrame = CFrame.new(-2.19979811, 1.52391505, -7.9600358, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.105882, 0.164706, 0.207843)
o146.Position = Vector3.new(-2.19979811, 1.52391505, -7.9600358)
o146.Color = Color3.new(0.105882, 0.164706, 0.207843)
o147.Parent = o146
o147.Scale = Vector3.new(1.14999998, 0.5, 1.14999998)
o147.Scale = Vector3.new(1.14999998, 0.5, 1.14999998)
o148.Parent = o131
o148.Material = Enum.Material.Granite
o148.BrickColor = BrickColor.new("Really black")
o148.Position = Vector3.new(-2.19979811, 1.823915, -7.9600358)
o148.CanCollide = false
o148.Size = Vector3.new(1, 0.799999952, 1)
o148.CFrame = CFrame.new(-2.19979811, 1.823915, -7.9600358, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o148.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o148.Position = Vector3.new(-2.19979811, 1.823915, -7.9600358)
o148.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o149.Parent = o148
o149.Scale = Vector3.new(1.13999999, 1.10000002, 1.13999999)
o149.Scale = Vector3.new(1.13999999, 1.10000002, 1.13999999)
o150.Name = "CentersMain"
o150.Parent = o131
o150.Material = Enum.Material.Metal
o150.BrickColor = BrickColor.new("Really black")
o150.Position = Vector3.new(-2.19979811, 1.62391603, -7.96003723)
o150.Rotation = Vector3.new(0, 90, 0)
o150.CanCollide = false
o150.Size = Vector3.new(1, 0.400000006, 1)
o150.CFrame = CFrame.new(-2.19979811, 1.62391603, -7.96003723, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o150.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o150.Position = Vector3.new(-2.19979811, 1.62391603, -7.96003723)
o150.Orientation = Vector3.new(0, 90, 0)
o150.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o151.Parent = o150
o151.Scale = Vector3.new(1.10000002, 1.10000002, 1.08000004)
o151.Scale = Vector3.new(1.10000002, 1.10000002, 1.08000004)
o152.Name = "C"
o152.Parent = o131
o152.Material = Enum.Material.Neon
o152.BrickColor = BrickColor.new("Dark indigo")
o152.Position = Vector3.new(-2.49980211, 1.52391505, -7.66003323)
o152.CanCollide = false
o152.Size = Vector3.new(0.399999976, 0.599999905, 0.399999976)
o152.CFrame = CFrame.new(-2.49980211, 1.52391505, -7.66003323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o152.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o152.Position = Vector3.new(-2.49980211, 1.52391505, -7.66003323)
o152.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o153.Parent = o152
o153.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o153.Scale = Vector3.new(1.39999998, 0.150000006, 1.39999998)
o154.Name = "C"
o154.Parent = o131
o154.Material = Enum.Material.Neon
o154.BrickColor = BrickColor.new("Dark indigo")
o154.Reflectance = 0.30000001192093
o154.Position = Vector3.new(-2.74980211, 1.923913, -7.96003389)
o154.CanCollide = false
o154.Size = Vector3.new(0.400000006, 0.200000003, 0.600000024)
o154.CFrame = CFrame.new(-2.74980211, 1.923913, -7.96003389, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o154.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o154.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o154.Position = Vector3.new(-2.74980211, 1.923913, -7.96003389)
o154.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o155.Parent = o154
o155.Scale = Vector3.new(0.5, 1.5, 0.5)
o155.MeshType = Enum.MeshType.Sphere
o155.Scale = Vector3.new(0.5, 1.5, 0.5)
o156.Name = "P3"
o156.Parent = o131
o157.Name = "Center"
o157.Parent = o156
o157.Material = Enum.Material.SmoothPlastic
o157.BrickColor = BrickColor.new("Really black")
o157.Reflectance = 0.15000000596046
o157.Position = Vector3.new(-2.19979811, 0.423916012, -7.96003914)
o157.Rotation = Vector3.new(0, 90, 0)
o157.CanCollide = false
o157.Size = Vector3.new(1, 0.400000006, 1)
o157.CFrame = CFrame.new(-2.19979811, 0.423916012, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o157.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o157.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o157.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o157.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o157.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o157.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o157.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o157.Position = Vector3.new(-2.19979811, 0.423916012, -7.96003914)
o157.Orientation = Vector3.new(0, 90, 0)
o157.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o158.Parent = o157
o158.Scale = Vector3.new(1.05799997, 1.10000002, 1.05799997)
o158.Scale = Vector3.new(1.05799997, 1.10000002, 1.05799997)
o159.Parent = o156
o159.Material = Enum.Material.SmoothPlastic
o159.BrickColor = BrickColor.new("Black")
o159.Reflectance = 0.20000000298023
o159.Position = Vector3.new(-2.19979811, 0.223915994, -7.96003914)
o159.Rotation = Vector3.new(0, 90, 0)
o159.CanCollide = false
o159.Size = Vector3.new(1, 0.400000006, 1)
o159.CFrame = CFrame.new(-2.19979811, 0.223915994, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o159.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o159.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o159.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o159.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o159.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o159.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o159.Color = Color3.new(0.105882, 0.164706, 0.207843)
o159.Position = Vector3.new(-2.19979811, 0.223915994, -7.96003914)
o159.Orientation = Vector3.new(0, 90, 0)
o159.Color = Color3.new(0.105882, 0.164706, 0.207843)
o160.Parent = o159
o160.Scale = Vector3.new(1.06500006, 0.150000006, 1.06500006)
o160.Scale = Vector3.new(1.06500006, 0.150000006, 1.06500006)
o161.Name = "C"
o161.Parent = o156
o161.Material = Enum.Material.Granite
o161.BrickColor = BrickColor.new("Dark indigo")
o161.Position = Vector3.new(-2.69979095, 0.523914993, -7.9600358)
o161.Rotation = Vector3.new(-180, 90, 0)
o161.CanCollide = false
o161.Size = Vector3.new(1, 0.200000003, 0.400000006)
o161.CFrame = CFrame.new(-2.69979095, 0.523914993, -7.9600358, -4.37113883e-08, 0, 1, -8.74227766e-08, -1, -3.82137093e-15, 1, -8.74227766e-08, 4.37113883e-08)
o161.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o161.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o161.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o161.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o161.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o161.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o161.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o161.Position = Vector3.new(-2.69979095, 0.523914993, -7.9600358)
o161.Orientation = Vector3.new(0, 90, -180)
o161.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o162.Parent = o161
o162.Scale = Vector3.new(0.899999976, 1.20000005, 0.155000001)
o162.MeshType = Enum.MeshType.Torso
o162.Scale = Vector3.new(0.899999976, 1.20000005, 0.155000001)
o163.Name = "C"
o163.Parent = o156
o163.Material = Enum.Material.Neon
o163.BrickColor = BrickColor.new("Dark indigo")
o163.Position = Vector3.new(-2.69979095, 0.523914993, -7.9600358)
o163.Rotation = Vector3.new(-180, 90, 0)
o163.CanCollide = false
o163.Size = Vector3.new(1, 0.200000003, 0.400000006)
o163.CFrame = CFrame.new(-2.69979095, 0.523914993, -7.9600358, -4.37113883e-08, 0, 1, -8.74227766e-08, -1, -3.82137093e-15, 1, -8.74227766e-08, 4.37113883e-08)
o163.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o163.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o163.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o163.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o163.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o163.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o163.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o163.Position = Vector3.new(-2.69979095, 0.523914993, -7.9600358)
o163.Orientation = Vector3.new(0, 90, -180)
o163.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o164.Parent = o163
o164.Scale = Vector3.new(0.949999988, 1.39999998, 0.150000006)
o164.MeshType = Enum.MeshType.Torso
o164.Scale = Vector3.new(0.949999988, 1.39999998, 0.150000006)
o165.Name = "C2"
o165.Parent = o156
o165.Material = Enum.Material.SmoothPlastic
o165.BrickColor = BrickColor.new("Alder")
o165.Reflectance = 0.10000000149012
o165.Position = Vector3.new(-2.69977593, 0.523914993, -8.26003265)
o165.CanCollide = false
o165.Elasticity = 0
o165.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o165.CFrame = CFrame.new(-2.69977593, 0.523914993, -8.26003265, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o165.Color = Color3.new(0.705882, 0.501961, 1)
o165.Position = Vector3.new(-2.69977593, 0.523914993, -8.26003265)
o165.Color = Color3.new(0.705882, 0.501961, 1)
o166.Parent = o165
o166.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o166.Offset = Vector3.new(-0.00999999978, 0, 0)
o166.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o166.MeshType = Enum.MeshType.FileMesh
o166.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o167.Name = "C2"
o167.Parent = o156
o167.Material = Enum.Material.SmoothPlastic
o167.BrickColor = BrickColor.new("Alder")
o167.Reflectance = 0.10000000149012
o167.Position = Vector3.new(-2.69977593, 0.523914993, -7.66003513)
o167.CanCollide = false
o167.Elasticity = 0
o167.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o167.CFrame = CFrame.new(-2.69977593, 0.523914993, -7.66003513, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o167.Color = Color3.new(0.705882, 0.501961, 1)
o167.Position = Vector3.new(-2.69977593, 0.523914993, -7.66003513)
o167.Color = Color3.new(0.705882, 0.501961, 1)
o168.Parent = o167
o168.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o168.Offset = Vector3.new(-0.00999999978, 0, 0)
o168.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o168.MeshType = Enum.MeshType.FileMesh
o168.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o169.Name = "C2"
o169.Parent = o156
o169.Material = Enum.Material.SmoothPlastic
o169.BrickColor = BrickColor.new("Alder")
o169.Reflectance = 0.10000000149012
o169.Position = Vector3.new(-2.69977593, 0.523914993, -7.9600358)
o169.CanCollide = false
o169.Elasticity = 0
o169.Size = Vector3.new(0.400000006, 0.200000003, 0.600000024)
o169.CFrame = CFrame.new(-2.69977593, 0.523914993, -7.9600358, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o169.Color = Color3.new(0.705882, 0.501961, 1)
o169.Position = Vector3.new(-2.69977593, 0.523914993, -7.9600358)
o169.Color = Color3.new(0.705882, 0.501961, 1)
o170.Parent = o169
o170.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o170.Offset = Vector3.new(-0.00999999978, 0, 0)
o170.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o170.MeshType = Enum.MeshType.FileMesh
o170.Scale = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
o171.Name = "P2"
o171.Parent = o131
o172.Name = "Center"
o172.Parent = o171
o172.Material = Enum.Material.SmoothPlastic
o172.BrickColor = BrickColor.new("Really black")
o172.Reflectance = 0.15000000596046
o172.Position = Vector3.new(-2.19979811, 0.823916018, -7.96003914)
o172.Rotation = Vector3.new(0, 90, 0)
o172.CanCollide = false
o172.Size = Vector3.new(1, 0.400000006, 1)
o172.CFrame = CFrame.new(-2.19979811, 0.823916018, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o172.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o172.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o172.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o172.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o172.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o172.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o172.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o172.Position = Vector3.new(-2.19979811, 0.823916018, -7.96003914)
o172.Orientation = Vector3.new(0, 90, 0)
o172.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o173.Parent = o172
o173.Scale = Vector3.new(1.08000004, 1.10000002, 1.08000004)
o173.Scale = Vector3.new(1.08000004, 1.10000002, 1.08000004)
o174.Name = "C"
o174.Parent = o171
o174.Material = Enum.Material.Granite
o174.BrickColor = BrickColor.new("Dark indigo")
o174.Position = Vector3.new(-2.69979095, 0.823916018, -7.9600358)
o174.Rotation = Vector3.new(0, 90, 0)
o174.CanCollide = false
o174.Size = Vector3.new(1, 0.400000036, 0.400000006)
o174.CFrame = CFrame.new(-2.69979095, 0.823916018, -7.9600358, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o174.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o174.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o174.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o174.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o174.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o174.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o174.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o174.Position = Vector3.new(-2.69979095, 0.823916018, -7.9600358)
o174.Orientation = Vector3.new(0, 90, 0)
o174.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o175.Parent = o174
o175.Scale = Vector3.new(0.899999976, 1.10000002, 0.254999995)
o175.MeshType = Enum.MeshType.Torso
o175.Scale = Vector3.new(0.899999976, 1.10000002, 0.254999995)
o176.Name = "C"
o176.Parent = o171
o176.Material = Enum.Material.Neon
o176.BrickColor = BrickColor.new("Dark indigo")
o176.Position = Vector3.new(-2.69979095, 0.823916018, -7.9600358)
o176.Rotation = Vector3.new(0, 90, 0)
o176.CanCollide = false
o176.Size = Vector3.new(1, 0.400000036, 0.400000006)
o176.CFrame = CFrame.new(-2.69979095, 0.823916018, -7.9600358, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o176.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o176.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o176.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o176.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o176.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o176.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o176.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o176.Position = Vector3.new(-2.69979095, 0.823916018, -7.9600358)
o176.Orientation = Vector3.new(0, 90, 0)
o176.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o177.Parent = o176
o177.Scale = Vector3.new(0.949999988, 1.09000003, 0.25)
o177.MeshType = Enum.MeshType.Torso
o177.Scale = Vector3.new(0.949999988, 1.09000003, 0.25)
o178.Name = "C2"
o178.Parent = o171
o178.Material = Enum.Material.SmoothPlastic
o178.BrickColor = BrickColor.new("Alder")
o178.Position = Vector3.new(-2.69998193, 0.823526978, -7.70999718)
o178.Rotation = Vector3.new(-15, 90, 0)
o178.CanCollide = false
o178.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o178.CFrame = CFrame.new(-2.69998193, 0.823526978, -7.70999718, -4.37113883e-08, 0, 1, -0.258839279, 0.965920389, -1.13142242e-08, -0.965920389, -0.258839279, -4.22217212e-08)
o178.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o178.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o178.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o178.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o178.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o178.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o178.Color = Color3.new(0.705882, 0.501961, 1)
o178.Position = Vector3.new(-2.69998193, 0.823526978, -7.70999718)
o178.Orientation = Vector3.new(0, 90, -15)
o178.Color = Color3.new(0.705882, 0.501961, 1)
o179.Parent = o178
o179.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o179.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o180.Name = "C2"
o180.Parent = o171
o180.Material = Enum.Material.SmoothPlastic
o180.BrickColor = BrickColor.new("Alder")
o180.Position = Vector3.new(-2.69978309, 0.823916018, -7.96003914)
o180.Rotation = Vector3.new(0, 90, 0)
o180.CanCollide = false
o180.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o180.CFrame = CFrame.new(-2.69978309, 0.823916018, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o180.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o180.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o180.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o180.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o180.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o180.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o180.Color = Color3.new(0.705882, 0.501961, 1)
o180.Position = Vector3.new(-2.69978309, 0.823916018, -7.96003914)
o180.Orientation = Vector3.new(0, 90, 0)
o180.Color = Color3.new(0.705882, 0.501961, 1)
o181.Parent = o180
o181.Scale = Vector3.new(0.100000001, 1, 0.280000001)
o181.Scale = Vector3.new(0.100000001, 1, 0.280000001)
o182.Name = "C2"
o182.Parent = o171
o182.Material = Enum.Material.SmoothPlastic
o182.BrickColor = BrickColor.new("Alder")
o182.Position = Vector3.new(-2.69998193, 0.823526978, -8.20999718)
o182.Rotation = Vector3.new(15, 90, 0)
o182.CanCollide = false
o182.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o182.CFrame = CFrame.new(-2.69998193, 0.823526978, -8.20999718, -4.37113883e-08, 0, 1, 0.258756638, 0.965942562, 1.1310612e-08, -0.965942562, 0.258756638, -4.22226911e-08)
o182.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o182.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o182.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o182.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o182.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o182.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o182.Color = Color3.new(0.705882, 0.501961, 1)
o182.Position = Vector3.new(-2.69998193, 0.823526978, -8.20999718)
o182.Orientation = Vector3.new(0, 90, 15)
o182.Color = Color3.new(0.705882, 0.501961, 1)
o183.Parent = o182
o183.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o183.Scale = Vector3.new(0.100000001, 0.600000024, 0.280000001)
o184.Name = "Seal"
o184.Parent = o131
o186.Name = "Mot1"
o186.Parent = o184
o186.Material = Enum.Material.SmoothPlastic
o186.BrickColor = BrickColor.new("Really black")
o186.Transparency = 1
o186.Position = Vector3.new(-2.74979353, 1.923913, -7.96003389)
o186.Rotation = Vector3.new(180, 0, -90)
o186.CanCollide = false
o186.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o186.CFrame = CFrame.new(-2.74979353, 1.923913, -7.96003389, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, -8.74227766e-08, -8.74227766e-08, -3.82137093e-15, -1)
o186.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o186.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o186.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o186.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o186.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o186.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o186.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o186.Position = Vector3.new(-2.74979353, 1.923913, -7.96003389)
o186.Orientation = Vector3.new(0, 180, 90)
o186.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o187.Parent = o186
o187.Scale = Vector3.new(0, 0, 0)
o187.Scale = Vector3.new(0, 0, 0)
o188.Parent = o186
o188.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o188.C1 = CFrame.new(0.0557327271, 0, -0.0865001678, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o188.Part0 = o186
o190.Name = "Mot2"
o190.Parent = o184
o190.Material = Enum.Material.SmoothPlastic
o190.BrickColor = BrickColor.new("Really black")
o190.Transparency = 1
o190.Position = Vector3.new(-2.74979353, 1.923913, -7.96003389)
o190.Rotation = Vector3.new(180, 0, -90)
o190.CanCollide = false
o190.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o190.CFrame = CFrame.new(-2.74979353, 1.923913, -7.96003389, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, -8.74227766e-08, -8.74227766e-08, -3.82137093e-15, -1)
o190.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o190.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o190.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o190.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o190.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o190.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o190.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o190.Position = Vector3.new(-2.74979353, 1.923913, -7.96003389)
o190.Orientation = Vector3.new(0, 180, 90)
o190.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o191.Parent = o190
o191.Scale = Vector3.new(0, 0, 0)
o191.Scale = Vector3.new(0, 0, 0)
o192.Parent = o190
o192.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o192.C1 = CFrame.new(0.0557327271, 0, 0.0864982605, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o192.Part0 = o190
o193.Name = "Main"
o193.Parent = o184
o193.Material = Enum.Material.SmoothPlastic
o193.BrickColor = BrickColor.new("Fossil")
o193.Reflectance = 0.30000001192093
o193.Position = Vector3.new(-2.74979353, 1.923913, -7.96003389)
o193.Rotation = Vector3.new(180, 0, -90)
o193.CanCollide = false
o193.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o193.CFrame = CFrame.new(-2.74979353, 1.923913, -7.96003389, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, -8.74227766e-08, -8.74227766e-08, -3.82137093e-15, -1)
o193.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o193.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o193.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o193.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o193.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o193.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o193.Color = Color3.new(0.623529, 0.631373, 0.67451)
o193.Position = Vector3.new(-2.74979353, 1.923913, -7.96003389)
o193.Orientation = Vector3.new(0, 180, 90)
o193.Color = Color3.new(0.623529, 0.631373, 0.67451)
o194.Parent = o193
o194.Scale = Vector3.new(1.79999995, 0.150000006, 1.79999995)
o194.Scale = Vector3.new(1.79999995, 0.150000006, 1.79999995)
o195.Parent = o193
o195.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o195.C1 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o195.Part0 = o193
o195.Part1 = o186
o196.Parent = o193
o196.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o196.C1 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o196.Part0 = o193
o196.Part1 = o190
o197.Parent = o193
o197.C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 1, -8.74227766e-08, 1, 4.37113883e-08, -3.82137093e-15, 0, -8.74227766e-08, -1)
o197.C1 = CFrame.new(-0.549995422, 0.699996948, 1.90734863e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o197.Part0 = o193
o197.Part1 = o215
o198.Name = "P1"
o198.Parent = o131
o199.Name = "Center"
o199.Parent = o198
o199.Material = Enum.Material.SmoothPlastic
o199.BrickColor = BrickColor.new("Really black")
o199.Reflectance = 0.15000000596046
o199.Position = Vector3.new(-2.19979811, 1.22391605, -7.96003914)
o199.Rotation = Vector3.new(0, 90, 0)
o199.CanCollide = false
o199.Size = Vector3.new(1, 0.400000006, 1)
o199.CFrame = CFrame.new(-2.19979811, 1.22391605, -7.96003914, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o199.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o199.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o199.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o199.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o199.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o199.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o199.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o199.Position = Vector3.new(-2.19979811, 1.22391605, -7.96003914)
o199.Orientation = Vector3.new(0, 90, 0)
o199.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o200.Parent = o199
o200.Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002)
o200.Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002)
o201.Name = "C"
o201.Parent = o198
o201.Material = Enum.Material.Granite
o201.BrickColor = BrickColor.new("Dark indigo")
o201.Position = Vector3.new(-2.69979095, 1.22391605, -7.9600358)
o201.Rotation = Vector3.new(0, 90, 0)
o201.CanCollide = false
o201.Size = Vector3.new(1, 0.400000036, 0.400000006)
o201.CFrame = CFrame.new(-2.69979095, 1.22391605, -7.9600358, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o201.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o201.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o201.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o201.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o201.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o201.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o201.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o201.Position = Vector3.new(-2.69979095, 1.22391605, -7.9600358)
o201.Orientation = Vector3.new(0, 90, 0)
o201.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o202.Parent = o201
o202.Scale = Vector3.new(0.850000024, 1.10000002, 0.319999993)
o202.MeshType = Enum.MeshType.Torso
o202.Scale = Vector3.new(0.850000024, 1.10000002, 0.319999993)
o203.Name = "C"
o203.Parent = o198
o203.Material = Enum.Material.Neon
o203.BrickColor = BrickColor.new("Dark indigo")
o203.Position = Vector3.new(-2.69979095, 1.22391605, -7.9600358)
o203.Rotation = Vector3.new(0, 90, 0)
o203.CanCollide = false
o203.Size = Vector3.new(1, 0.400000036, 0.400000006)
o203.CFrame = CFrame.new(-2.69979095, 1.22391605, -7.9600358, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
o203.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o203.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o203.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o203.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o203.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o203.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o203.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o203.Position = Vector3.new(-2.69979095, 1.22391605, -7.9600358)
o203.Orientation = Vector3.new(0, 90, 0)
o203.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o204.Parent = o203
o204.Scale = Vector3.new(0.899999976, 1.09000003, 0.310000002)
o204.MeshType = Enum.MeshType.Torso
o204.Scale = Vector3.new(0.899999976, 1.09000003, 0.310000002)
o205.Name = "C2"
o205.Parent = o198
o205.Material = Enum.Material.SmoothPlastic
o205.BrickColor = BrickColor.new("Alder")
o205.Position = Vector3.new(-2.69978309, 1.12391603, -8.06003857)
o205.Rotation = Vector3.new(-45, 90, 0)
o205.CanCollide = false
o205.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o205.CFrame = CFrame.new(-2.69978309, 1.12391603, -8.06003857, -4.37113883e-08, 0, 1, -0.707166076, 0.707047522, -3.09112096e-08, -0.707047522, -0.707166076, -3.09060297e-08)
o205.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o205.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o205.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o205.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o205.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o205.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o205.Color = Color3.new(0.705882, 0.501961, 1)
o205.Position = Vector3.new(-2.69978309, 1.12391603, -8.06003857)
o205.Orientation = Vector3.new(0, 90, -45)
o205.Color = Color3.new(0.705882, 0.501961, 1)
o206.Parent = o205
o206.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o206.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o207.Name = "C2"
o207.Parent = o198
o207.Material = Enum.Material.SmoothPlastic
o207.BrickColor = BrickColor.new("Alder")
o207.Position = Vector3.new(-2.69978309, 1.22391605, -7.96003914)
o207.Rotation = Vector3.new(0, 90, 0)
o207.CanCollide = false
o207.Size = Vector3.new(0.600000024, 0.400000006, 0.400000006)
o207.CFrame = CFrame.new(-2.69978309, 1.22391605, -7.96003914, -4.37113883e-08, 0, 1, -4.3159529e-05, 1, -1.88656295e-12, -1, -4.3159529e-05, -4.37113883e-08)
o207.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o207.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o207.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o207.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o207.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o207.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o207.Color = Color3.new(0.705882, 0.501961, 1)
o207.Position = Vector3.new(-2.69978309, 1.22391605, -7.96003914)
o207.Orientation = Vector3.new(0, 90, 0)
o207.Color = Color3.new(0.705882, 0.501961, 1)
o208.Parent = o207
o208.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o208.Offset = Vector3.new(0, 0, -0.0649999976)
o208.Scale = Vector3.new(0.150000006, 0.150000006, 0)
o208.MeshType = Enum.MeshType.FileMesh
o208.Scale = Vector3.new(0.150000006, 0.150000006, 0)
o209.Name = "C2"
o209.Parent = o198
o209.Material = Enum.Material.SmoothPlastic
o209.BrickColor = BrickColor.new("Alder")
o209.Position = Vector3.new(-2.69978309, 1.32391596, -7.8600378)
o209.Rotation = Vector3.new(-45, 90, 0)
o209.CanCollide = false
o209.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o209.CFrame = CFrame.new(-2.69978309, 1.32391596, -7.8600378, -4.37113883e-08, 0, 1, -0.707166076, 0.707047522, -3.09112096e-08, -0.707047522, -0.707166076, -3.09060297e-08)
o209.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o209.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o209.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o209.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o209.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o209.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o209.Color = Color3.new(0.705882, 0.501961, 1)
o209.Position = Vector3.new(-2.69978309, 1.32391596, -7.8600378)
o209.Orientation = Vector3.new(0, 90, -45)
o209.Color = Color3.new(0.705882, 0.501961, 1)
o210.Parent = o209
o210.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o210.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o211.Name = "C2"
o211.Parent = o198
o211.Material = Enum.Material.SmoothPlastic
o211.BrickColor = BrickColor.new("Alder")
o211.Position = Vector3.new(-2.69978309, 1.12391603, -7.8600378)
o211.Rotation = Vector3.new(45, 90, 0)
o211.CanCollide = false
o211.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o211.CFrame = CFrame.new(-2.69978309, 1.12391603, -7.8600378, -4.37113883e-08, 0, 1, 0.70710969, 0.707103848, 3.09087476e-08, -0.707103848, 0.70710969, -3.09084918e-08)
o211.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o211.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o211.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o211.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o211.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o211.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o211.Color = Color3.new(0.705882, 0.501961, 1)
o211.Position = Vector3.new(-2.69978309, 1.12391603, -7.8600378)
o211.Orientation = Vector3.new(0, 90, 45)
o211.Color = Color3.new(0.705882, 0.501961, 1)
o212.Parent = o211
o212.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o212.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o213.Name = "C2"
o213.Parent = o198
o213.Material = Enum.Material.SmoothPlastic
o213.BrickColor = BrickColor.new("Alder")
o213.Position = Vector3.new(-2.69978309, 1.32391596, -8.06003857)
o213.Rotation = Vector3.new(45, 90, 0)
o213.CanCollide = false
o213.Size = Vector3.new(0.400000006, 0.200000003, 0.400000006)
o213.CFrame = CFrame.new(-2.69978309, 1.32391596, -8.06003857, -4.37113883e-08, 0, 1, 0.70710969, 0.707103848, 3.09087476e-08, -0.707103848, 0.70710969, -3.09084918e-08)
o213.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o213.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o213.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o213.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o213.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o213.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o213.Color = Color3.new(0.705882, 0.501961, 1)
o213.Position = Vector3.new(-2.69978309, 1.32391596, -8.06003857)
o213.Orientation = Vector3.new(0, 90, 45)
o213.Color = Color3.new(0.705882, 0.501961, 1)
o214.Parent = o213
o214.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o214.Scale = Vector3.new(0.0500000007, 0.800000012, 0.340000004)
o215.Name = "Arm"
o215.Parent = o131
o215.Material = Enum.Material.SmoothPlastic
o215.BrickColor = BrickColor.new("Really black")
o215.Transparency = 1
o215.Position = Vector3.new(-2.19979811, 1.22391605, -7.9600358)
o215.CanCollide = false
o215.Size = Vector3.new(1, 2, 1)
o215.CFrame = CFrame.new(-2.19979811, 1.22391605, -7.9600358, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o215.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o215.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o215.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o215.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o215.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o215.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o215.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o215.Position = Vector3.new(-2.19979811, 1.22391605, -7.9600358)
o215.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o216.Parent = o215
o216.Scale = Vector3.new(0, 0, 0)
o216.Scale = Vector3.new(0, 0, 0)
o217.Parent = o131
o217.Material = Enum.Material.Granite
o217.BrickColor = BrickColor.new("Really black")
o217.Position = Vector3.new(-2.17523193, 2.224015, -7.95814991)
o217.Rotation = Vector3.new(90, 90, 0)
o217.CanCollide = false
o217.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o217.CFrame = CFrame.new(-2.17523193, 2.224015, -7.95814991, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o217.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o217.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o217.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o217.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o217.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o217.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o217.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o217.Position = Vector3.new(-2.17523193, 2.224015, -7.95814991)
o217.Orientation = Vector3.new(0, 90, 90)
o217.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o218.Parent = o217
o218.Scale = Vector3.new(0.5, 0.800000012, 0.600000024)
o218.Scale = Vector3.new(0.5, 0.800000012, 0.600000024)
o219.Name = "C"
o219.Parent = o131
o219.Material = Enum.Material.Neon
o219.BrickColor = BrickColor.new("Dark indigo")
o219.Position = Vector3.new(-2.17501807, 2.22352505, -8.09999657)
o219.Rotation = Vector3.new(180, -45, -90)
o219.CanCollide = false
o219.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o219.CFrame = CFrame.new(-2.17501807, 2.22352505, -8.09999657, 2.75087041e-06, 0.707129121, -0.707084477, 1, -3.9520105e-06, -6.18191933e-08, -2.83811937e-06, -0.707084477, -0.707129121)
o219.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o219.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o219.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o219.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o219.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o219.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o219.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o219.Position = Vector3.new(-2.17501807, 2.22352505, -8.09999657)
o219.Orientation = Vector3.new(0, -135, 90)
o219.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o220.Parent = o219
o220.Offset = Vector3.new(0.100000001, -0.125, 0)
o220.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o220.MeshType = Enum.MeshType.Sphere
o220.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o221.Name = "C"
o221.Parent = o131
o221.Material = Enum.Material.Neon
o221.BrickColor = BrickColor.new("Dark indigo")
o221.Position = Vector3.new(-2.17501807, 2.22352505, -8.09999657)
o221.Rotation = Vector3.new(0, -45, 90)
o221.CanCollide = false
o221.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o221.CFrame = CFrame.new(-2.17501807, 2.22352505, -8.09999657, 4.93610605e-05, -0.707047522, -0.707166016, 1, 3.49048387e-05, 3.49022412e-05, 5.96992322e-09, -0.707166016, 0.707047522)
o221.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o221.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o221.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o221.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o221.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o221.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o221.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o221.Position = Vector3.new(-2.17501807, 2.22352505, -8.09999657)
o221.Orientation = Vector3.new(0, -45, 90)
o221.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o222.Parent = o221
o222.Offset = Vector3.new(0.100000001, -0.125, 0)
o222.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o222.MeshType = Enum.MeshType.Sphere
o222.Scale = Vector3.new(0.0299999993, 0.200000003, 0.0299999993)
o223.Name = "C"
o223.Parent = o131
o223.Material = Enum.Material.Neon
o223.BrickColor = BrickColor.new("Dark indigo")
o223.Position = Vector3.new(-2.17523193, 2.224015, -7.95814991)
o223.Rotation = Vector3.new(-90, -90, 0)
o223.CanCollide = false
o223.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o223.CFrame = CFrame.new(-2.17523193, 2.224015, -7.95814991, -4.37113883e-08, 0, -1, 1, -4.37113883e-08, -4.37113883e-08, -4.37113883e-08, -1, 1.91068547e-15)
o223.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o223.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o223.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o223.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o223.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o223.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o223.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o223.Position = Vector3.new(-2.17523193, 2.224015, -7.95814991)
o223.Orientation = Vector3.new(0, -90, 90)
o223.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o224.Parent = o223
o224.Offset = Vector3.new(0.100000001, -0.0500000007, 0)
o224.Scale = Vector3.new(0.0299999993, 0.300000012, 0.0299999993)
o224.MeshType = Enum.MeshType.Sphere
o224.Scale = Vector3.new(0.0299999993, 0.300000012, 0.0299999993)
o225.Name = "C"
o225.Parent = o131
o225.Material = Enum.Material.Neon
o225.BrickColor = BrickColor.new("Dark indigo")
o225.Position = Vector3.new(-2.17523193, 2.224015, -8.05815315)
o225.Rotation = Vector3.new(90, 90, 0)
o225.CanCollide = false
o225.Size = Vector3.new(0.400000006, 0.400000006, 0.200000003)
o225.CFrame = CFrame.new(-2.17523193, 2.224015, -8.05815315, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o225.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o225.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o225.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o225.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o225.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o225.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o225.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o225.Position = Vector3.new(-2.17523193, 2.224015, -8.05815315)
o225.Orientation = Vector3.new(0, 90, 90)
o225.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o226.Parent = o225
o226.Offset = Vector3.new(0.100000001, 0, 0)
o226.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
o226.MeshType = Enum.MeshType.Sphere
o226.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
o227.Parent = o131
o227.Material = Enum.Material.SmoothPlastic
o227.BrickColor = BrickColor.new("Fossil")
o227.Position = Vector3.new(-2.17524695, 2.224015, -7.95814991)
o227.Rotation = Vector3.new(90, 90, 0)
o227.CanCollide = false
o227.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o227.CFrame = CFrame.new(-2.17524695, 2.224015, -7.95814991, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o227.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o227.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o227.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o227.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o227.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o227.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o227.Color = Color3.new(0.623529, 0.631373, 0.67451)
o227.Position = Vector3.new(-2.17524695, 2.224015, -7.95814991)
o227.Orientation = Vector3.new(0, 90, 90)
o227.Color = Color3.new(0.623529, 0.631373, 0.67451)
o228.Parent = o227
o228.Scale = Vector3.new(0.330000013, 0.870000005, 0.670000017)
o228.Scale = Vector3.new(0.330000013, 0.870000005, 0.670000017)
o229.Name = "C"
o229.Parent = o131
o229.Material = Enum.Material.Neon
o229.BrickColor = BrickColor.new("Dark indigo")
o229.Position = Vector3.new(-2.17523193, 2.224015, -7.95814991)
o229.Rotation = Vector3.new(90, 90, 0)
o229.CanCollide = false
o229.Size = Vector3.new(0.400000006, 0.599999964, 0.600000024)
o229.CFrame = CFrame.new(-2.17523193, 2.224015, -7.95814991, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
o229.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o229.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o229.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o229.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o229.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o229.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o229.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o229.Position = Vector3.new(-2.17523193, 2.224015, -7.95814991)
o229.Orientation = Vector3.new(0, 90, 90)
o229.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o230.Parent = o229
o230.Scale = Vector3.new(0.340000004, 0.829999983, 0.629999995)
o230.Scale = Vector3.new(0.340000004, 0.829999983, 0.629999995)
o231.Name = "C"
o231.Parent = o131
o231.Material = Enum.Material.Neon
o231.BrickColor = BrickColor.new("Dark indigo")
o231.Reflectance = 0.30000001192093
o231.Position = Vector3.new(-2.74979401, 1.923913, -7.96003389)
o231.Rotation = Vector3.new(180, 0, -90)
o231.CanCollide = false
o231.Size = Vector3.new(0.200000003, 0.400000095, 0.600000024)
o231.CFrame = CFrame.new(-2.74979401, 1.923913, -7.96003389, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, -8.74227766e-08, -8.74227766e-08, -3.82137093e-15, -1)
o231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o231.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o231.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o231.Position = Vector3.new(-2.74979401, 1.923913, -7.96003389)
o231.Orientation = Vector3.new(0, 180, 90)
o231.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o232.Parent = o231
o232.Scale = Vector3.new(1.89999998, 0.140000001, 1.89999998)
o232.Scale = Vector3.new(1.89999998, 0.140000001, 1.89999998)
o233.Name = "Claw1"
o233.Parent = o131
o233.Material = Enum.Material.SmoothPlastic
o233.BrickColor = BrickColor.new("Really black")
o233.Transparency = 1
o233.Position = Vector3.new(-2.5839839, 0.148146003, -8.36002064)
o233.Rotation = Vector3.new(-175, 0, -170)
o233.CanCollide = false
o233.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o233.CFrame = CFrame.new(-2.5839839, 0.148146003, -8.36002064, -0.984806418, 0.173655808, 9.3464414e-06, 0.17299518, 0.981055319, 0.0871962532, 0.0151329665, 0.085873045, -0.996191144)
o233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o233.Position = Vector3.new(-2.5839839, 0.148146003, -8.36002064)
o233.Orientation = Vector3.new(-5, 180, 10)
o233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o234.Parent = o233
o234.Scale = Vector3.new(0, 0, 0)
o234.Scale = Vector3.new(0, 0, 0)
o235.Name = "P"
o235.Parent = o233
o235.Transparency = NumberSequence.new(0.40000000596046,1)
o235.Rotation = NumberRange.new(90,180)
o235.Size = NumberSequence.new(0.10000000149012,0.10000000149012)
o235.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o235.Enabled = false
o235.LightEmission = 1
o235.Texture = "rbxasset://textures/particles/smoke_main.dds"
o235.Acceleration = Vector3.new(-5, 0, 0)
o235.Lifetime = NumberRange.new(0.5,0.5)
o235.Rate = 800
o235.RotSpeed = NumberRange.new(180,270)
o235.Speed = NumberRange.new(2.4000000953674,2.4000000953674)
o235.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o236.Name = "Claw2"
o236.Parent = o131
o236.Material = Enum.Material.SmoothPlastic
o236.BrickColor = BrickColor.new("Really black")
o236.Transparency = 1
o236.Position = Vector3.new(-2.5839839, 0.148146003, -7.96002197)
o236.Rotation = Vector3.new(-180, 0, -170)
o236.CanCollide = false
o236.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o236.CFrame = CFrame.new(-2.5839839, 0.148146003, -7.96002197, -0.9848032, 0.173674121, 3.30597031e-05, 0.173674121, 0.9848032, 2.78075513e-05, -2.77278505e-05, 3.31265801e-05, -1)
o236.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o236.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o236.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o236.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o236.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o236.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o236.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o236.Position = Vector3.new(-2.5839839, 0.148146003, -7.96002197)
o236.Orientation = Vector3.new(0, 180, 10)
o236.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o237.Parent = o236
o237.Scale = Vector3.new(0, 0, 0)
o237.Scale = Vector3.new(0, 0, 0)
o238.Name = "P"
o238.Parent = o236
o238.Transparency = NumberSequence.new(0.40000000596046,1)
o238.Rotation = NumberRange.new(90,180)
o238.Size = NumberSequence.new(0.10000000149012,0.10000000149012)
o238.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o238.Enabled = false
o238.LightEmission = 1
o238.Texture = "rbxasset://textures/particles/smoke_main.dds"
o238.Acceleration = Vector3.new(-5, 0, 0)
o238.Lifetime = NumberRange.new(0.5,0.5)
o238.Rate = 800
o238.RotSpeed = NumberRange.new(180,270)
o238.Speed = NumberRange.new(2.4000000953674,2.4000000953674)
o238.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o239.Name = "Claw3"
o239.Parent = o131
o239.Material = Enum.Material.SmoothPlastic
o239.BrickColor = BrickColor.new("Really black")
o239.Transparency = 1
o239.Position = Vector3.new(-2.5839839, 0.148146003, -7.56002188)
o239.Rotation = Vector3.new(175, 0, -170)
o239.CanCollide = false
o239.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o239.CFrame = CFrame.new(-2.5839839, 0.148146003, -7.56002188, -0.984805882, 0.173658863, 5.68539399e-05, 0.172993392, 0.981060505, -0.0871409103, -0.0151885683, -0.0858070478, -0.996195972)
o239.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o239.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o239.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o239.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o239.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o239.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o239.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o239.Position = Vector3.new(-2.5839839, 0.148146003, -7.56002188)
o239.Orientation = Vector3.new(5, 180, 10)
o239.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o240.Parent = o239
o240.Scale = Vector3.new(0, 0, 0)
o240.Scale = Vector3.new(0, 0, 0)
o241.Name = "P"
o241.Parent = o239
o241.Transparency = NumberSequence.new(0.40000000596046,1)
o241.Rotation = NumberRange.new(90,180)
o241.Size = NumberSequence.new(0.10000000149012,0.10000000149012)
o241.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o241.Enabled = false
o241.LightEmission = 1
o241.Texture = "rbxasset://textures/particles/smoke_main.dds"
o241.Acceleration = Vector3.new(-5, 0, 0)
o241.Lifetime = NumberRange.new(0.5,0.5)
o241.Rate = 800
o241.RotSpeed = NumberRange.new(180,270)
o241.Speed = NumberRange.new(2.4000000953674,2.4000000953674)
o241.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o242.Name = "ArmParticles"
o242.Parent = o131
o242.Material = Enum.Material.SmoothPlastic
o242.BrickColor = BrickColor.new("Really black")
o242.Transparency = 1
o242.Position = Vector3.new(-2.18398309, 1.648139, -7.96002197)
o242.Rotation = Vector3.new(180, 0, 180)
o242.CanCollide = false
o242.Size = Vector3.new(1, 0.399999976, 1)
o242.CFrame = CFrame.new(-2.18398309, 1.648139, -7.96002197, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o242.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o242.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o242.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o242.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o242.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o242.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o242.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o242.Position = Vector3.new(-2.18398309, 1.648139, -7.96002197)
o242.Orientation = Vector3.new(0, 180, 0)
o242.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o243.Parent = o242
o243.Scale = Vector3.new(0, 0, 0)
o243.Scale = Vector3.new(0, 0, 0)
o244.Name = "P"
o244.Parent = o242
o244.Transparency = NumberSequence.new(0.40000000596046,0.40000000596046)
o244.Rotation = NumberRange.new(90,180)
o244.Size = NumberSequence.new(0.23999999463558,0.23999999463558,0.5625)
o244.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o244.Enabled = false
o244.LightEmission = 1
o244.Texture = "rbxasset://textures/particles/smoke_main.dds"
o244.Lifetime = NumberRange.new(1,1)
o244.Rate = 800
o244.RotSpeed = NumberRange.new(180,270)
o244.Speed = NumberRange.new(1.2999999523163,1.2999999523163)
o244.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 1))
o245.Name = "ObjectValues"
o245.Parent = o1
o246.Name = "Right"
o246.Parent = o245
o247.Name = "CM1"
o247.Parent = o246
o247.Value = o84
o248.Name = "CM2"
o248.Parent = o246
o248.Value = o75
o249.Name = "CM3"
o249.Parent = o246
o249.Value = o79
o250.Name = "Particles"
o250.Parent = o246
o250.Value = o38
o251.Name = "LM1"
o251.Parent = o246
o251.Value = o82
o252.Name = "LM2"
o252.Parent = o246
o252.Value = o83
o253.Name = "Arm"
o253.Parent = o246
o253.Value = o102
o254.Name = "CP1"
o254.Parent = o246
o254.Value = o124
o255.Name = "CP2"
o255.Parent = o246
o255.Value = o130
o256.Name = "CP3"
o256.Parent = o246
o256.Value = o127
o257.Name = "Left"
o257.Parent = o245
o258.Name = "CM1"
o258.Parent = o257
o258.Value = o197
o259.Name = "CM2"
o259.Parent = o257
o259.Value = o188
o260.Name = "CM3"
o260.Parent = o257
o260.Value = o192
o261.Name = "Particles"
o261.Parent = o257
o261.Value = o244
o262.Name = "LM1"
o262.Parent = o257
o262.Value = o195
o263.Name = "LM2"
o263.Parent = o257
o263.Value = o196
o264.Name = "Arm"
o264.Parent = o257
o264.Value = o215
o265.Name = "CP1"
o265.Parent = o257
o265.Value = o235
o266.Name = "CP2"
o266.Parent = o257
o266.Value = o238
o267.Name = "CP3"
o267.Parent = o257
o267.Value = o241
o268.Name = "TorPart"
o268.Parent = o245
o268.Value = o11
o269.Name = "Welder"
o269.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

Weld = function(X, Y, Z)
  local CJ = CFrame.new(X.Position)
  local C0 = X.CFrame:inverse() * CJ
  local C1 = Y.CFrame:inverse() * CJ
  if Z then
    C0 = CFrame.new()
  end
  local W = Create("Weld")({Name = "Weld", Parent = X, Part0 = X, Part1 = Y, C0 = C0, C1 = C1})
  return W
end

local WeldObjects = function(parent, h)
 for _,obj in pairs(parent:GetChildren()) do
    if obj:IsA("BasePart") or obj:IsA("UnionOperation") and (obj.Name ~= "Mo") then
	Weld(obj, h)
	obj.Anchored = false
	end
 end
end

WeldObjects(script.Parent.LeftArm, script.Parent.LeftArm.Arm)
WeldObjects(script.Parent.LeftArm.P1, script.Parent.LeftArm.Arm)
WeldObjects(script.Parent.LeftArm.P2, script.Parent.LeftArm.Arm)
WeldObjects(script.Parent.LeftArm.P3, script.Parent.LeftArm.Arm)
WeldObjects(script.Parent.RightArm, script.Parent.RightArm.Arm)
WeldObjects(script.Parent.RightArm.P1, script.Parent.RightArm.Arm)
WeldObjects(script.Parent.RightArm.P2, script.Parent.RightArm.Arm)
WeldObjects(script.Parent.RightArm.P3, script.Parent.RightArm.Arm)
wait()
script:Destroy()
end,o269)
end))
o270.Name = "Soul"
o270.Parent = mas
o271.Name = "LLeg"
o271.Parent = o270
o271.Material = Enum.Material.SmoothPlastic
o271.BrickColor = BrickColor.new("Really black")
o271.Transparency = 1
o271.Position = Vector3.new(-6.80005598, 3.40684128, -5.80001402)
o271.CanCollide = false
o271.Locked = true
o271.Size = Vector3.new(1.60000014, 3.19999981, 1.60000014)
o271.CFrame = CFrame.new(-6.80005598, 3.40684128, -5.80001402, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o271.BottomSurface = Enum.SurfaceType.Smooth
o271.TopSurface = Enum.SurfaceType.Smooth
o271.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o271.Position = Vector3.new(-6.80005598, 3.40684128, -5.80001402)
o271.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o272.Name = "LArm"
o272.Parent = o270
o272.Material = Enum.Material.SmoothPlastic
o272.BrickColor = BrickColor.new("Really black")
o272.Transparency = 0.60000002384186
o272.Position = Vector3.new(-7.79999495, 5.4068718, -5.80010557)
o272.CanCollide = false
o272.Locked = true
o272.Size = Vector3.new(1.60000014, 3.19999981, 1.60000014)
o272.CFrame = CFrame.new(-7.79999495, 5.4068718, -5.80010557, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o272.BottomSurface = Enum.SurfaceType.Smooth
o272.TopSurface = Enum.SurfaceType.Smooth
o272.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o272.Position = Vector3.new(-7.79999495, 5.4068718, -5.80010557)
o272.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o273.Name = "RArm"
o273.Parent = o270
o273.Material = Enum.Material.SmoothPlastic
o273.BrickColor = BrickColor.new("Really black")
o273.Transparency = 0.60000002384186
o273.Position = Vector3.new(-4.79999495, 5.40678024, -5.80001402)
o273.CanCollide = false
o273.Locked = true
o273.Size = Vector3.new(1.60000014, 3.19999981, 1.60000014)
o273.CFrame = CFrame.new(-4.79999495, 5.40678024, -5.80001402, 1, 3.05171125e-05, -3.05161775e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171161e-05, -3.05161811e-05, 1)
o273.BottomSurface = Enum.SurfaceType.Smooth
o273.TopSurface = Enum.SurfaceType.Smooth
o273.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o273.Position = Vector3.new(-4.79999495, 5.40678024, -5.80001402)
o273.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o274.Name = "Head"
o274.Parent = o270
o274.Material = Enum.Material.SmoothPlastic
o274.BrickColor = BrickColor.new("Really black")
o274.Transparency = 0.60000002384186
o274.Position = Vector3.new(-6.29994917, 6.90682602, -5.80010557)
o274.CanCollide = false
o274.Locked = true
o274.Size = Vector3.new(3.20000029, 1.5999999, 1.60000014)
o274.CFrame = CFrame.new(-6.29994917, 6.90682602, -5.80010557, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o274.BottomSurface = Enum.SurfaceType.Smooth
o274.TopSurface = Enum.SurfaceType.Smooth
o274.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o274.Position = Vector3.new(-6.29994917, 6.90682602, -5.80010557)
o274.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o275.Parent = o274
o275.Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005)
o275.Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005)
o276.Name = "EP1"
o276.Parent = o270
o276.Value = o405
o277.Name = "RLeg"
o277.Parent = o270
o277.Material = Enum.Material.SmoothPlastic
o277.BrickColor = BrickColor.new("Really black")
o277.Transparency = 1
o277.Position = Vector3.new(-5.80005598, 3.40681076, -5.7999835)
o277.CanCollide = false
o277.Locked = true
o277.Size = Vector3.new(1.60000014, 3.19999981, 1.60000014)
o277.CFrame = CFrame.new(-5.80005598, 3.40681076, -5.7999835, 1, 3.05171125e-05, -3.05161775e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171161e-05, -3.05161811e-05, 1)
o277.BottomSurface = Enum.SurfaceType.Smooth
o277.TopSurface = Enum.SurfaceType.Smooth
o277.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o277.Position = Vector3.new(-5.80005598, 3.40681076, -5.7999835)
o277.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o278.Name = "Root2"
o278.Parent = o270
o278.Material = Enum.Material.SmoothPlastic
o278.BrickColor = BrickColor.new("Really black")
o278.Transparency = 1
o278.Position = Vector3.new(-6.29999495, 5.40682602, -5.8000598)
o278.CanCollide = false
o278.Locked = true
o278.Size = Vector3.new(3.20000029, 3.19999981, 1.60000014)
o278.CFrame = CFrame.new(-6.29999495, 5.40682602, -5.8000598, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o278.BottomSurface = Enum.SurfaceType.Smooth
o278.TopSurface = Enum.SurfaceType.Smooth
o278.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o278.Position = Vector3.new(-6.29999495, 5.40682602, -5.8000598)
o278.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o279.Name = "Second Root"
o279.Parent = o278
o279.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o279.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o279.Part0 = o278
o279.Part1 = o281
o280.Parent = o278
o280.maxTorque = Vector3.new(1, 0, 1)
o280.MaxTorque = Vector3.new(1, 0, 1)
o281.Name = "Root"
o281.Parent = o270
o281.Material = Enum.Material.SmoothPlastic
o281.BrickColor = BrickColor.new("Really black")
o281.Transparency = 1
o281.Position = Vector3.new(-6.29999495, 5.40682602, -5.8000598)
o281.CanCollide = false
o281.Locked = true
o281.Size = Vector3.new(3.20000029, 3.19999981, 1.60000014)
o281.CFrame = CFrame.new(-6.29999495, 5.40682602, -5.8000598, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o281.BottomSurface = Enum.SurfaceType.Smooth
o281.TopSurface = Enum.SurfaceType.Smooth
o281.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o281.Position = Vector3.new(-6.29999495, 5.40682602, -5.8000598)
o281.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o282.Name = "Root Hip"
o282.Parent = o281
o282.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o282.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o282.Part0 = o281
o282.Part1 = o284
o283.Parent = o281
o283.CFrame = CFrame.new(0, 9.70000076, 10.9999981, 1, 0, -0, -0, 0.89442724, 0.447213709, 0, -0.447213709, 0.89442724)
o283.maxTorque = Vector3.new(0, 1, 0)
o283.P = 30000
o283.MaxTorque = Vector3.new(0, 1, 0)
o284.Name = "Torso"
o284.Parent = o270
o284.Material = Enum.Material.SmoothPlastic
o284.BrickColor = BrickColor.new("Really black")
o284.Transparency = 0.60000002384186
o284.Position = Vector3.new(-6.29999495, 5.40682602, -5.8000598)
o284.CanCollide = false
o284.Locked = true
o284.Size = Vector3.new(3.20000029, 3.19999981, 1.60000014)
o284.CFrame = CFrame.new(-6.29999495, 5.40682602, -5.8000598, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o284.BottomSurface = Enum.SurfaceType.Smooth
o284.TopSurface = Enum.SurfaceType.Smooth
o284.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o284.Position = Vector3.new(-6.29999495, 5.40682602, -5.8000598)
o284.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o285.Name = "Left Hip"
o285.Parent = o284
o285.C0 = CFrame.new(-1, -1, 0, -3.26636873e-05, 4.31581502e-05, -1, 9.29513355e-10, 1, 4.31581502e-05, 1, 4.80190998e-10, -3.26636873e-05)
o285.C1 = CFrame.new(-0.5, 1, 0, -3.26636873e-05, 4.31581502e-05, -1, 9.29513355e-10, 1, 4.31581502e-05, 1, 4.80190998e-10, -3.26636873e-05)
o285.Part0 = o284
o285.Part1 = o271
o285.MaxVelocity = 0.10000000149012
o286.Name = "Left Shoulder"
o286.Parent = o284
o286.C0 = CFrame.new(-1, 0.5, 0, -3.26636873e-05, 4.31581502e-05, -1, 9.29513355e-10, 1, 4.31581502e-05, 1, 4.80190998e-10, -3.26636873e-05)
o286.C1 = CFrame.new(0.5, 0.5, 0, -3.26636873e-05, 4.31581502e-05, -1, 9.29513355e-10, 1, 4.31581502e-05, 1, 4.80190998e-10, -3.26636873e-05)
o286.Part0 = o284
o286.Part1 = o272
o286.MaxVelocity = 0.10000000149012
o287.Name = "Neck"
o287.Parent = o284
o287.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o287.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o287.Part0 = o284
o287.Part1 = o274
o287.MaxVelocity = 0.10000000149012
o288.Name = "Right Hip"
o288.Parent = o284
o288.C0 = CFrame.new(1, -1, 0, 5.34682295e-05, 1.23517841e-13, 1, -4.3159529e-05, 1, 2.30754016e-09, -1, -4.3159529e-05, 5.34682331e-05)
o288.C1 = CFrame.new(0.5, 1, 0, 5.34682295e-05, 1.23517841e-13, 1, -4.3159529e-05, 1, 2.30754016e-09, -1, -4.3159529e-05, 5.34682331e-05)
o288.Part0 = o284
o288.Part1 = o277
o288.MaxVelocity = 0.10000000149012
o289.Name = "Right Shoulder"
o289.Parent = o284
o289.C0 = CFrame.new(1, 0.5, 0, 5.34682295e-05, 1.23517841e-13, 1, -4.3159529e-05, 1, 2.30754016e-09, -1, -4.3159529e-05, 5.34682331e-05)
o289.C1 = CFrame.new(-0.5, 0.5, 0, 5.34682295e-05, 1.23517841e-13, 1, -4.3159529e-05, 1, 2.30754016e-09, -1, -4.3159529e-05, 5.34682331e-05)
o289.Part0 = o284
o289.Part1 = o273
o289.MaxVelocity = 0.10000000149012
o290.Name = "BodyBackAttachment"
o290.Parent = o284
o290.Position = Vector3.new(0, 0, 0.5)
o290.CFrame = CFrame.new(0, 0, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o290.Position = Vector3.new(0, 0, 0.5)
o291.Name = "BodyFrontAttachment"
o291.Parent = o284
o291.Position = Vector3.new(0, 0, -0.5)
o291.CFrame = CFrame.new(0, 0, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o291.Position = Vector3.new(0, 0, -0.5)
o292.Name = "LeftCollarAttachment"
o292.Parent = o284
o292.Position = Vector3.new(-1, 1, 0)
o292.CFrame = CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o292.Position = Vector3.new(-1, 1, 0)
o293.Name = "NeckAttachment"
o293.Parent = o284
o293.Position = Vector3.new(0, 1, 0)
o293.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o293.Position = Vector3.new(0, 1, 0)
o294.Name = "RightCollarAttachment"
o294.Parent = o284
o294.Position = Vector3.new(1, 1, 0)
o294.CFrame = CFrame.new(1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o294.Position = Vector3.new(1, 1, 0)
o295.Name = "WaistBackAttachment"
o295.Parent = o284
o295.Position = Vector3.new(0, -1, 0.5)
o295.CFrame = CFrame.new(0, -1, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o295.Position = Vector3.new(0, -1, 0.5)
o296.Name = "WaistCenterAttachment"
o296.Parent = o284
o296.Position = Vector3.new(0, -1, 0)
o296.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o296.Position = Vector3.new(0, -1, 0)
o297.Name = "WaistFrontAttachment"
o297.Parent = o284
o297.Position = Vector3.new(0, -1, -0.5)
o297.CFrame = CFrame.new(0, -1, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o297.Position = Vector3.new(0, -1, -0.5)
o298.Name = "EP2"
o298.Parent = o270
o298.Value = o408
o299.Name = "RAModel"
o299.Parent = o270
o300.Parent = o299
o300.Material = Enum.Material.SmoothPlastic
o300.BrickColor = BrickColor.new("Really black")
o300.Transparency = 0.60000002384186
o300.Position = Vector3.new(-3.89998603, 5.00683212, -5.8000598)
o300.Rotation = Vector3.new(180, 0, 180)
o300.CanCollide = false
o300.Locked = true
o300.Size = Vector3.new(1.5999999, 1.60000002, 1.5999999)
o300.CFrame = CFrame.new(-3.89998603, 5.00683212, -5.8000598, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o300.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o300.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o300.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o300.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o300.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o300.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o300.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o300.Position = Vector3.new(-3.89998603, 5.00683212, -5.8000598)
o300.Orientation = Vector3.new(0, 180, 0)
o300.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o301.Parent = o300
o301.Scale = Vector3.new(1.03999996, 1, 1.03999996)
o301.Scale = Vector3.new(1.03999996, 1, 1.03999996)
o302.Name = "RLModel"
o302.Parent = o270
o303.Name = "FadePart"
o303.Parent = o302
o303.Material = Enum.Material.SmoothPlastic
o303.BrickColor = BrickColor.new("Really black")
o303.Transparency = 0.80000001192093
o303.Position = Vector3.new(-5.49999189, 1.60681999, -5.80001783)
o303.CanCollide = false
o303.Locked = true
o303.Size = Vector3.new(1.60000181, 0.400003791, 1.60000181)
o303.CFrame = CFrame.new(-5.49999189, 1.60681999, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o303.BottomSurface = Enum.SurfaceType.Smooth
o303.TopSurface = Enum.SurfaceType.Smooth
o303.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o303.Position = Vector3.new(-5.49999189, 1.60681999, -5.80001783)
o303.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o304.Name = "FadePart"
o304.Parent = o302
o304.Material = Enum.Material.SmoothPlastic
o304.BrickColor = BrickColor.new("Really black")
o304.Transparency = 0.69999998807907
o304.Position = Vector3.new(-5.49999189, 2.00681996, -5.80001783)
o304.CanCollide = false
o304.Locked = true
o304.Size = Vector3.new(1.60000181, 0.400003791, 1.60000181)
o304.CFrame = CFrame.new(-5.49999189, 2.00681996, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o304.BottomSurface = Enum.SurfaceType.Smooth
o304.TopSurface = Enum.SurfaceType.Smooth
o304.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o304.Position = Vector3.new(-5.49999189, 2.00681996, -5.80001783)
o304.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o305.Name = "FadePart"
o305.Parent = o302
o305.Material = Enum.Material.SmoothPlastic
o305.BrickColor = BrickColor.new("Really black")
o305.Transparency = 0.89999997615814
o305.Position = Vector3.new(-5.49999189, 1.20682204, -5.80001783)
o305.CanCollide = false
o305.Locked = true
o305.Size = Vector3.new(1.60000181, 0.400003791, 1.60000181)
o305.CFrame = CFrame.new(-5.49999189, 1.20682204, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o305.BottomSurface = Enum.SurfaceType.Smooth
o305.TopSurface = Enum.SurfaceType.Smooth
o305.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o305.Position = Vector3.new(-5.49999189, 1.20682204, -5.80001783)
o305.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o306.Name = "FadePart"
o306.Parent = o302
o306.Material = Enum.Material.SmoothPlastic
o306.BrickColor = BrickColor.new("Really black")
o306.Transparency = 0.60000002384186
o306.Position = Vector3.new(-5.49999189, 3.00681591, -5.80001783)
o306.CanCollide = false
o306.Locked = true
o306.Size = Vector3.new(1.60000181, 1.60000384, 1.60000181)
o306.CFrame = CFrame.new(-5.49999189, 3.00681591, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o306.BottomSurface = Enum.SurfaceType.Smooth
o306.TopSurface = Enum.SurfaceType.Smooth
o306.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o306.Position = Vector3.new(-5.49999189, 3.00681591, -5.80001783)
o306.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o307.Name = "TModel"
o307.Parent = o270
o308.Name = "C"
o308.Parent = o307
o308.Material = Enum.Material.Neon
o308.BrickColor = BrickColor.new("Dark indigo")
o308.Transparency = 0.60000002384186
o308.Position = Vector3.new(-7.55570984, 4.05794621, -4.83246994)
o308.Rotation = Vector3.new(-90, 20, 180)
o308.CanCollide = false
o308.Locked = true
o308.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o308.CFrame = CFrame.new(-7.55570984, 4.05794621, -4.83246994, -0.939697027, -1.08958693e-05, 0.342007995, 0.342007995, -2.93692774e-05, 0.939697027, -1.94288987e-07, 1, 3.13246965e-05)
o308.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o308.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o308.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o308.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o308.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o308.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o308.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o308.Position = Vector3.new(-7.55570984, 4.05794621, -4.83246994)
o308.Orientation = Vector3.new(-70, 89.9899979, 90)
o308.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o309.Parent = o308
o309.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o309.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o310.Name = "C"
o310.Parent = o307
o310.Material = Enum.Material.Neon
o310.BrickColor = BrickColor.new("Dark indigo")
o310.Transparency = 0.60000002384186
o310.Position = Vector3.new(-5.04428101, 4.05794621, -6.76755905)
o310.Rotation = Vector3.new(-90, -19.9899998, -180)
o310.CanCollide = false
o310.Locked = true
o310.Size = Vector3.new(0.200000003, 0.400000036, 0.400000006)
o310.CFrame = CFrame.new(-5.04428101, 4.05794621, -6.76755905, -0.939724326, 5.96713562e-06, -0.341933101, -0.341933101, -1.62624947e-05, 0.939724326, 4.67771315e-08, 1, 1.73226217e-05)
o310.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o310.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o310.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o310.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o310.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o310.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o310.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o310.Position = Vector3.new(-5.04428101, 4.05794621, -6.76755905)
o310.Orientation = Vector3.new(-70.0100021, -90, -90)
o310.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o311.Parent = o310
o311.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o311.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o312.Name = "C"
o312.Parent = o307
o312.Material = Enum.Material.Neon
o312.BrickColor = BrickColor.new("Dark indigo")
o312.Transparency = 0.60000002384186
o312.Position = Vector3.new(-5.04428101, 4.03841019, -4.83247185)
o312.Rotation = Vector3.new(90, -20, 180)
o312.CanCollide = false
o312.Locked = true
o312.Size = Vector3.new(0.200000003, 0.400000036, 0.400000006)
o312.CFrame = CFrame.new(-5.04428101, 4.03841019, -4.83247185, -0.939703166, -4.45023434e-05, -0.341991216, 0.341991216, -2.04767748e-05, -0.939703166, 3.48161157e-05, -1, 3.44615e-05)
o312.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o312.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o312.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o312.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o312.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o312.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o312.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o312.Position = Vector3.new(-5.04428101, 4.03841019, -4.83247185)
o312.Orientation = Vector3.new(70, -89.9899979, 90)
o312.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o313.Parent = o312
o313.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o313.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o314.Name = "C"
o314.Parent = o307
o314.Material = Enum.Material.Neon
o314.BrickColor = BrickColor.new("Dark indigo")
o314.Transparency = 0.60000002384186
o314.Position = Vector3.new(-7.55570984, 4.03841019, -6.76756096)
o314.Rotation = Vector3.new(90, 20, 180)
o314.CanCollide = false
o314.Locked = true
o314.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
o314.CFrame = CFrame.new(-7.55570984, 4.03841019, -6.76756096, -0.939703166, -4.02455335e-05, 0.341991216, -0.341991216, -3.5345478e-05, -0.939703166, 4.99066955e-05, -1, 1.94506374e-05)
o314.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o314.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o314.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o314.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o314.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o314.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o314.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o314.Position = Vector3.new(-7.55570984, 4.03841019, -6.76756096)
o314.Orientation = Vector3.new(70, 90, -90.0100021)
o314.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o315.Parent = o314
o315.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o315.Scale = Vector3.new(0.5, 0.959999979, 0.5)
o316.Parent = o307
o316.BrickColor = BrickColor.new("Really black")
o316.Transparency = 0.60000002384186
o316.Position = Vector3.new(-7.46743679, 0.818297982, -6.99744797)
o316.Rotation = Vector3.new(-90.4899979, 28.7299995, 7.09000015)
o316.CanCollide = false
o316.Locked = true
o316.FormFactor = Enum.FormFactor.Custom
o316.Size = Vector3.new(0.332247972, 0.200000003, 1.59999967)
o316.CFrame = CFrame.new(-7.46743679, 0.818297982, -6.99744797, 0.870202601, -0.108282916, 0.480647713, -0.478014737, 0.0508050025, 0.876881301, -0.119370572, -0.992821038, -0.00755018182)
o316.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o316.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o316.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o316.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o316.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o316.Position = Vector3.new(-7.46743679, 0.818297982, -6.99744797)
o316.Orientation = Vector3.new(-61.2700005, 90.9000015, -83.9300003)
o316.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o317.Parent = o307
o317.BrickColor = BrickColor.new("Really black")
o317.Transparency = 0.60000002384186
o317.Position = Vector3.new(-8.28013229, 1.26976299, -6.30052805)
o317.Rotation = Vector3.new(-90.4899979, 28.7299995, 67.0899963)
o317.CanCollide = false
o317.Locked = true
o317.FormFactor = Enum.FormFactor.Custom
o317.Size = Vector3.new(0.332280308, 0.200000003, 1.5999999)
o317.CFrame = CFrame.new(-8.28013229, 1.26976299, -6.30052805, 0.341331333, -0.807756603, 0.480647713, -0.195012093, 0.439374, 0.876881301, -0.919490755, -0.393039167, -0.00755018182)
o317.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o317.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o317.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o317.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o317.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o317.Position = Vector3.new(-8.28013229, 1.26976299, -6.30052805)
o317.Orientation = Vector3.new(-61.2700005, 90.9000015, -23.9300003)
o317.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o318.Parent = o307
o318.BrickColor = BrickColor.new("Really black")
o318.Transparency = 0.60000002384186
o318.Position = Vector3.new(-8.15433121, 1.21073997, -5.14702177)
o318.Rotation = Vector3.new(-90.4899979, 28.7299995, -52.9099998)
o318.CanCollide = false
o318.Locked = true
o318.FormFactor = Enum.FormFactor.Custom
o318.Size = Vector3.new(0.332279205, 0.200000003, 1.59999895)
o318.CFrame = CFrame.new(-8.15433121, 1.21073997, -5.14702177, 0.528843343, 0.699501634, 0.480647713, -0.282987028, -0.388584048, 0.876881301, 0.800151885, -0.599749923, -0.00755018182)
o318.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o318.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o318.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o318.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o318.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o318.Position = Vector3.new(-8.15433121, 1.21073997, -5.14702177)
o318.Orientation = Vector3.new(-61.2700005, 90.9000015, -143.940002)
o318.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o319.Parent = o307
o319.BrickColor = BrickColor.new("Really black")
o319.Transparency = 0.60000002384186
o319.Position = Vector3.new(-8.35268784, 1.31466401, -5.70523119)
o319.Rotation = Vector3.new(-90.4899979, 28.7299995, 97.0899963)
o319.CanCollide = false
o319.Locked = true
o319.FormFactor = Enum.FormFactor.Custom
o319.Size = Vector3.new(0.33226791, 0.200000003, 1.59999967)
o319.CFrame = CFrame.new(-8.35268784, 1.31466401, -5.70523119, -0.10826125, -0.870205343, 0.480647713, 0.0507931001, 0.478016019, 0.876881301, -0.992824078, 0.119345851, -0.00755018182)
o319.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o319.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o319.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o319.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o319.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o319.Position = Vector3.new(-8.35268784, 1.31466401, -5.70523119)
o319.Orientation = Vector3.new(-61.2700005, 90.9000015, 6.07000017)
o319.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o320.Parent = o307
o320.BrickColor = BrickColor.new("Really black")
o320.Transparency = 0.60000002384186
o320.Position = Vector3.new(-7.72471619, 0.959968984, -6.92228603)
o320.Rotation = Vector3.new(-90.4899979, 28.7299995, 22.0900002)
o320.CanCollide = false
o320.Locked = true
o320.FormFactor = Enum.FormFactor.Custom
o320.Size = Vector3.new(0.332273632, 0.200000003, 1.59999943)
o320.CFrame = CFrame.new(-7.72471619, 0.959968984, -6.92228603, 0.812546074, -0.329767466, 0.480647713, -0.448588252, 0.172765121, 0.876881301, -0.372206092, -0.928119361, -0.00755018182)
o320.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o320.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o320.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o320.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o320.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o320.Position = Vector3.new(-7.72471619, 0.959968984, -6.92228603)
o320.Orientation = Vector3.new(-61.2700005, 90.9000015, -68.9400024)
o320.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o321.Parent = o307
o321.BrickColor = BrickColor.new("Really black")
o321.Transparency = 0.60000002384186
o321.Position = Vector3.new(-7.95618391, 1.08812201, -6.77343607)
o321.Rotation = Vector3.new(-90.4899979, 28.7299995, 37.0999985)
o321.CanCollide = false
o321.Locked = true
o321.FormFactor = Enum.FormFactor.Custom
o321.Size = Vector3.new(0.332268059, 0.200000003, 1.59999943)
o321.CFrame = CFrame.new(-7.95618391, 1.08812201, -6.77343607, 0.699450195, -0.528911352, 0.480647713, -0.38855651, 0.283024818, 0.876881301, -0.599827707, -0.800093591, -0.00755018182)
o321.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o321.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o321.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o321.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o321.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o321.Position = Vector3.new(-7.95618391, 1.08812201, -6.77343607)
o321.Orientation = Vector3.new(-61.2700005, 90.9000015, -53.9300003)
o321.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o322.Parent = o307
o322.BrickColor = BrickColor.new("Really black")
o322.Transparency = 0.60000002384186
o322.Position = Vector3.new(-4.4069438, 1.21073997, -6.50499487)
o322.Rotation = Vector3.new(-89.5100021, -28.7299995, 127.089996)
o322.CanCollide = false
o322.Locked = true
o322.FormFactor = Enum.FormFactor.Custom
o322.Size = Vector3.new(0.332279205, 0.200000003, 1.59999895)
o322.CFrame = CFrame.new(-4.4069438, 1.21073997, -6.50499487, -0.528843284, -0.699501634, -0.480647653, -0.282986939, -0.388584018, 0.876881301, -0.800151944, 0.599749804, 0.00755020976)
o322.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o322.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o322.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o322.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o322.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o322.Position = Vector3.new(-4.4069438, 1.21073997, -6.50499487)
o322.Orientation = Vector3.new(-61.2700005, -89.0999985, -143.940002)
o322.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o323.Parent = o307
o323.BrickColor = BrickColor.new("Really black")
o323.Transparency = 0.60000002384186
o323.Position = Vector3.new(-5.07949781, 2.84599805, -6.95828581)
o323.Rotation = Vector3.new(-89.5100021, -28.7299995, 172.089996)
o323.CanCollide = false
o323.Locked = true
o323.FormFactor = Enum.FormFactor.Custom
o323.Size = Vector3.new(0.33227101, 0.200000003, 1.59999919)
o323.CFrame = CFrame.new(-5.07949781, 2.84599805, -6.95828581, -0.868574619, -0.120647907, -0.480647653, -0.474874616, -0.0746543109, 0.876881301, -0.141676322, 0.989884257, 0.00755020976)
o323.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o323.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o323.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o323.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o323.Position = Vector3.new(-5.07949781, 2.84599805, -6.95828581)
o323.Orientation = Vector3.new(-61.2700005, -89.0999985, -98.9300003)
o323.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o324.Parent = o307
o324.BrickColor = BrickColor.new("Really black")
o324.Transparency = 0.60000002384186
o324.Position = Vector3.new(-4.41582489, 1.19368804, -5.09042788)
o324.Rotation = Vector3.new(-89.5100021, -28.7299995, -127.910004)
o324.CanCollide = false
o324.Locked = true
o324.FormFactor = Enum.FormFactor.Custom
o324.Size = Vector3.new(0.332247972, 0.200000003, 1.60000014)
o324.CFrame = CFrame.new(-4.41582489, 1.19368804, -5.09042788, -0.53880173, 0.691860139, -0.480647653, -0.302106202, 0.37391308, 0.876881301, 0.786399662, 0.617671847, 0.00755020976)
o324.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o324.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o324.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o324.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o324.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o324.Position = Vector3.new(-4.41582489, 1.19368804, -5.09042788)
o324.Orientation = Vector3.new(-61.2700005, -89.0999985, -38.9399986)
o324.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o325.Parent = o307
o325.BrickColor = BrickColor.new("Really black")
o325.Transparency = 0.60000002384186
o325.Position = Vector3.new(-4.60509491, 1.08812201, -4.87858391)
o325.Rotation = Vector3.new(-89.5100021, -28.7299995, -142.899994)
o325.CanCollide = false
o325.Locked = true
o325.FormFactor = Enum.FormFactor.Custom
o325.Size = Vector3.new(0.332268059, 0.200000003, 1.59999943)
o325.CFrame = CFrame.new(-4.60509491, 1.08812201, -4.87858391, -0.699450195, 0.528911352, -0.480647653, -0.38855648, 0.283024758, 0.876881301, 0.599827707, 0.800093591, 0.00755020976)
o325.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o325.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o325.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o325.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o325.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o325.Position = Vector3.new(-4.60509491, 1.08812201, -4.87858391)
o325.Orientation = Vector3.new(-61.2700005, -89.0999985, -53.9300003)
o325.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o326.Parent = o307
o326.BrickColor = BrickColor.new("Really black")
o326.Transparency = 0.60000002384186
o326.Position = Vector3.new(-8.3507843, 1.311005, -6.0085578)
o326.Rotation = Vector3.new(-90.4899979, 28.7299995, 82.0899963)
o326.CanCollide = false
o326.Locked = true
o326.FormFactor = Enum.FormFactor.Custom
o326.Size = Vector3.new(0.33225891, 0.200000003, 1.59999967)
o326.CFrame = CFrame.new(-8.3507843, 1.311005, -6.0085578, 0.120672278, -0.868571222, 0.480647713, -0.0746676177, 0.474872589, 0.876881301, -0.989880264, -0.141704082, -0.00755018182)
o326.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o326.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o326.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o326.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o326.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o326.Position = Vector3.new(-8.3507843, 1.311005, -6.0085578)
o326.Orientation = Vector3.new(-61.2700005, 90.9000015, -8.93999958)
o326.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o327.Parent = o307
o327.BrickColor = BrickColor.new("Really black")
o327.Transparency = 0.60000002384186
o327.Position = Vector3.new(-7.73820877, 0.985849023, -4.77554083)
o327.Rotation = Vector3.new(-90.4899979, 28.7299995, -22.9099998)
o327.CanCollide = false
o327.Locked = true
o327.FormFactor = Enum.FormFactor.Custom
o327.Size = Vector3.new(0.33225891, 0.200000003, 1.5999999)
o327.CFrame = CFrame.new(-7.73820877, 0.985849023, -4.77554083, 0.807753742, 0.341338038, 0.480647713, -0.439372361, -0.195015743, 0.876881301, 0.393046796, -0.919487417, -0.00755018182)
o327.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o327.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o327.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o327.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o327.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o327.Position = Vector3.new(-7.73820877, 0.985849023, -4.77554083)
o327.Orientation = Vector3.new(-61.2700005, 90.9000015, -113.93)
o327.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o328.Parent = o307
o328.BrickColor = BrickColor.new("Really black")
o328.Transparency = 0.60000002384186
o328.Position = Vector3.new(-7.48177719, 0.845996976, -4.69373322)
o328.Rotation = Vector3.new(-90.4899979, 28.7299995, -7.90999985)
o328.CanCollide = false
o328.Locked = true
o328.FormFactor = Enum.FormFactor.Custom
o328.Size = Vector3.new(0.33227101, 0.200000003, 1.59999919)
o328.CFrame = CFrame.new(-7.48177719, 0.845996976, -4.69373322, 0.868574619, 0.120647907, 0.480647713, -0.474874675, -0.0746542886, 0.876881301, 0.141676307, -0.989884257, -0.00755018182)
o328.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o328.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o328.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o328.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o328.Position = Vector3.new(-7.48177719, 0.845996976, -4.69373322)
o328.Orientation = Vector3.new(-61.2700005, 90.9000015, -98.9300003)
o328.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o329.Parent = o307
o329.BrickColor = BrickColor.new("Really black")
o329.Transparency = 0.60000002384186
o329.Position = Vector3.new(-7.96760511, 1.11025703, -4.93014288)
o329.Rotation = Vector3.new(-90.4899979, 28.7299995, -37.9099998)
o329.CanCollide = false
o329.Locked = true
o329.FormFactor = Enum.FormFactor.Custom
o329.Size = Vector3.new(0.33226791, 0.200000003, 1.5999999)
o329.CFrame = CFrame.new(-7.96760511, 1.11025703, -4.93014288, 0.69187367, 0.538784385, 0.480647713, -0.373920739, -0.302096844, 0.876881301, 0.617652059, -0.786415219, -0.00755018182)
o329.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o329.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o329.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o329.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o329.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o329.Position = Vector3.new(-7.96760511, 1.11025703, -4.93014288)
o329.Orientation = Vector3.new(-61.2700005, 90.9000015, -128.940002)
o329.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o330.Parent = o307
o330.BrickColor = BrickColor.new("Really black")
o330.Transparency = 0.60000002384186
o330.Position = Vector3.new(-8.28568172, 1.28046203, -5.41140604)
o330.Rotation = Vector3.new(-90.4899979, 28.7299995, 112.089996)
o330.CanCollide = false
o330.Locked = true
o330.FormFactor = Enum.FormFactor.Custom
o330.Size = Vector3.new(0.332265079, 0.200000003, 1.59999919)
o330.CFrame = CFrame.new(-8.28568172, 1.28046203, -5.41140604, -0.329783589, -0.812539577, 0.480647713, 0.172774017, 0.448584825, 0.876881301, -0.92811203, 0.37222448, -0.00755018182)
o330.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o330.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o330.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o330.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o330.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o330.Position = Vector3.new(-8.28568172, 1.28046203, -5.41140604)
o330.Orientation = Vector3.new(-61.2700005, 90.9000015, 21.0599995)
o330.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o331.Parent = o307
o331.BrickColor = BrickColor.new("Really black")
o331.Transparency = 0.60000002384186
o331.Position = Vector3.new(-4.836555, 0.959969997, -4.72973299)
o331.Rotation = Vector3.new(-89.5100021, -28.7299995, -157.910004)
o331.CanCollide = false
o331.Locked = true
o331.FormFactor = Enum.FormFactor.Custom
o331.Size = Vector3.new(0.332273632, 0.200000003, 1.59999943)
o331.CFrame = CFrame.new(-4.836555, 0.959969997, -4.72973299, -0.812546074, 0.329767466, -0.480647653, -0.448588192, 0.172765076, 0.876881301, 0.372206062, 0.928119421, 0.00755020976)
o331.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o331.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o331.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o331.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o331.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o331.Position = Vector3.new(-4.836555, 0.959969997, -4.72973299)
o331.Orientation = Vector3.new(-61.2700005, -89.0999985, -68.9400024)
o331.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o332.Parent = o307
o332.BrickColor = BrickColor.new("Really black")
o332.Transparency = 0.60000002384186
o332.Position = Vector3.new(-8.14544678, 1.19368804, -6.56159115)
o332.Rotation = Vector3.new(-90.4899979, 28.7299995, 52.0900002)
o332.CanCollide = false
o332.Locked = true
o332.FormFactor = Enum.FormFactor.Custom
o332.Size = Vector3.new(0.332247972, 0.200000003, 1.60000014)
o332.CFrame = CFrame.new(-8.14544678, 1.19368804, -6.56159115, 0.53880173, -0.691860199, 0.480647713, -0.302106202, 0.373913169, 0.876881301, -0.786399722, -0.617671788, -0.00755018182)
o332.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o332.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o332.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o332.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o332.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o332.Position = Vector3.new(-8.14544678, 1.19368804, -6.56159115)
o332.Orientation = Vector3.new(-61.2700005, 90.9000015, -38.9399986)
o332.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o333.Parent = o307
o333.BrickColor = BrickColor.new("Really black")
o333.Transparency = 0.60000002384186
o333.Position = Vector3.new(-4.59366608, 1.11025703, -6.72187519)
o333.Rotation = Vector3.new(-89.5100021, -28.7299995, 142.089996)
o333.CanCollide = false
o333.Locked = true
o333.FormFactor = Enum.FormFactor.Custom
o333.Size = Vector3.new(0.33226791, 0.200000003, 1.5999999)
o333.CFrame = CFrame.new(-4.59366608, 1.11025703, -6.72187519, -0.69187367, -0.538784444, -0.480647653, -0.373920679, -0.302096874, 0.876881301, -0.617652178, 0.78641516, 0.00755020976)
o333.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o333.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o333.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o333.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o333.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o333.Position = Vector3.new(-4.59366608, 1.11025703, -6.72187519)
o333.Orientation = Vector3.new(-61.2700005, -89.0999985, -128.940002)
o333.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o334.Parent = o307
o334.Material = Enum.Material.SmoothPlastic
o334.BrickColor = BrickColor.new("Really black")
o334.Transparency = 0.60000002384186
o334.Position = Vector3.new(-6.29999495, 4.006814, -6.60001802)
o334.Rotation = Vector3.new(-90, 0, 180)
o334.CanCollide = false
o334.Locked = true
o334.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
o334.CFrame = CFrame.new(-6.29999495, 4.006814, -6.60001802, -1, -8.74227766e-08, 0, -3.82137093e-15, 4.37113883e-08, 1, -8.74227766e-08, 1, -4.37113883e-08)
o334.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o334.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o334.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o334.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o334.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o334.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o334.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o334.Position = Vector3.new(-6.29999495, 4.006814, -6.60001802)
o334.Orientation = Vector3.new(-90, 180, 0)
o334.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o335.Parent = o334
o335.Offset = Vector3.new(0, -0.0500000007, 0)
o335.Scale = Vector3.new(1.39999998, 0.0799999982, 1.39999998)
o335.Scale = Vector3.new(1.39999998, 0.0799999982, 1.39999998)
o336.Parent = o307
o336.Material = Enum.Material.SmoothPlastic
o336.BrickColor = BrickColor.new("Really black")
o336.Transparency = 0.60000002384186
o336.Position = Vector3.new(-6.29999495, 4.006814, -5.80001783)
o336.Rotation = Vector3.new(180, 0, 180)
o336.CanCollide = false
o336.Locked = true
o336.Size = Vector3.new(3.20000005, 0.400000006, 1.5999999)
o336.CFrame = CFrame.new(-6.29999495, 4.006814, -5.80001783, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o336.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o336.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o336.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o336.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o336.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o336.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o336.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o336.Position = Vector3.new(-6.29999495, 4.006814, -5.80001783)
o336.Orientation = Vector3.new(0, 180, 0)
o336.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o337.Parent = o336
o337.Scale = Vector3.new(1.04999995, 1, 1.04999995)
o337.Scale = Vector3.new(1.04999995, 1, 1.04999995)
o338.Parent = o307
o338.Material = Enum.Material.SmoothPlastic
o338.BrickColor = BrickColor.new("Really black")
o338.Transparency = 0.60000002384186
o338.Position = Vector3.new(-6.29999495, 7.30680418, -5.60001993)
o338.CanCollide = false
o338.Size = Vector3.new(0.800000012, 0.599999964, 0.800000072)
o338.CFrame = CFrame.new(-6.29999495, 7.30680418, -5.60001993, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o338.BottomSurface = Enum.SurfaceType.Smooth
o338.TopSurface = Enum.SurfaceType.Smooth
o338.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o338.Position = Vector3.new(-6.29999495, 7.30680418, -5.60001993)
o338.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o339.Parent = o338
o339.MeshId = "http://www.roblox.com/asset/?id=340617875     "
o339.Scale = Vector3.new(5.4000001, 5.4000001, 5.4000001)
o339.MeshType = Enum.MeshType.FileMesh
o339.Scale = Vector3.new(5.4000001, 5.4000001, 5.4000001)
o340.Parent = o307
o340.BrickColor = BrickColor.new("Really black")
o340.Transparency = 0.60000002384186
o340.Position = Vector3.new(-7.48177719, 2.84599805, -4.69373322)
o340.Rotation = Vector3.new(-90.4899979, 28.7299995, -7.90999985)
o340.CanCollide = false
o340.Locked = true
o340.FormFactor = Enum.FormFactor.Custom
o340.Size = Vector3.new(0.33227101, 0.200000003, 1.59999919)
o340.CFrame = CFrame.new(-7.48177719, 2.84599805, -4.69373322, 0.868574619, 0.120647907, 0.480647713, -0.474874675, -0.0746542886, 0.876881301, 0.141676307, -0.989884257, -0.00755018182)
o340.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o340.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o340.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o340.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o340.Position = Vector3.new(-7.48177719, 2.84599805, -4.69373322)
o340.Orientation = Vector3.new(-61.2700005, 90.9000015, -98.9300003)
o340.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o341.Parent = o307
o341.BrickColor = BrickColor.new("Really black")
o341.Transparency = 0.60000002384186
o341.Position = Vector3.new(-7.95618391, 3.08812189, -6.77343607)
o341.Rotation = Vector3.new(-90.4899979, 28.7299995, 37.0999985)
o341.CanCollide = false
o341.Locked = true
o341.FormFactor = Enum.FormFactor.Custom
o341.Size = Vector3.new(0.332268059, 0.200000003, 1.59999943)
o341.CFrame = CFrame.new(-7.95618391, 3.08812189, -6.77343607, 0.699450195, -0.528911352, 0.480647713, -0.38855651, 0.283024818, 0.876881301, -0.599827707, -0.800093591, -0.00755018182)
o341.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o341.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o341.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o341.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o341.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o341.Position = Vector3.new(-7.95618391, 3.08812189, -6.77343607)
o341.Orientation = Vector3.new(-61.2700005, 90.9000015, -53.9300003)
o341.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o342.Parent = o307
o342.BrickColor = BrickColor.new("Really black")
o342.Transparency = 0.60000002384186
o342.Position = Vector3.new(-8.15433121, 2.21074009, -5.14702177)
o342.Rotation = Vector3.new(-90.4899979, 28.7299995, -52.9099998)
o342.CanCollide = false
o342.Locked = true
o342.FormFactor = Enum.FormFactor.Custom
o342.Size = Vector3.new(0.332279205, 0.200000003, 1.59999895)
o342.CFrame = CFrame.new(-8.15433121, 2.21074009, -5.14702177, 0.528843343, 0.699501634, 0.480647713, -0.282987028, -0.388584048, 0.876881301, 0.800151885, -0.599749923, -0.00755018182)
o342.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o342.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o342.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o342.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o342.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o342.Position = Vector3.new(-8.15433121, 2.21074009, -5.14702177)
o342.Orientation = Vector3.new(-61.2700005, 90.9000015, -143.940002)
o342.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o343.Parent = o307
o343.BrickColor = BrickColor.new("Really black")
o343.Transparency = 0.60000002384186
o343.Position = Vector3.new(-8.35268784, 2.31466389, -5.70523119)
o343.Rotation = Vector3.new(-90.4899979, 28.7299995, 97.0899963)
o343.CanCollide = false
o343.Locked = true
o343.FormFactor = Enum.FormFactor.Custom
o343.Size = Vector3.new(0.33226791, 0.200000003, 1.59999967)
o343.CFrame = CFrame.new(-8.35268784, 2.31466389, -5.70523119, -0.10826125, -0.870205343, 0.480647713, 0.0507931001, 0.478016019, 0.876881301, -0.992824078, 0.119345851, -0.00755018182)
o343.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o343.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o343.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o343.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o343.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o343.Position = Vector3.new(-8.35268784, 2.31466389, -5.70523119)
o343.Orientation = Vector3.new(-61.2700005, 90.9000015, 6.07000017)
o343.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o344.Parent = o307
o344.BrickColor = BrickColor.new("Really black")
o344.Transparency = 0.60000002384186
o344.Position = Vector3.new(-8.28568172, 3.28046298, -5.41140604)
o344.Rotation = Vector3.new(-90.4899979, 28.7299995, 112.089996)
o344.CanCollide = false
o344.Locked = true
o344.FormFactor = Enum.FormFactor.Custom
o344.Size = Vector3.new(0.332265079, 0.200000003, 1.59999919)
o344.CFrame = CFrame.new(-8.28568172, 3.28046298, -5.41140604, -0.329783589, -0.812539577, 0.480647713, 0.172774017, 0.448584825, 0.876881301, -0.92811203, 0.37222448, -0.00755018182)
o344.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o344.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o344.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o344.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o344.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o344.Position = Vector3.new(-8.28568172, 3.28046298, -5.41140604)
o344.Orientation = Vector3.new(-61.2700005, 90.9000015, 21.0599995)
o344.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o345.Parent = o307
o345.BrickColor = BrickColor.new("Really black")
o345.Transparency = 0.60000002384186
o345.Position = Vector3.new(-7.72471619, 1.95997, -6.92228603)
o345.Rotation = Vector3.new(-90.4899979, 28.7299995, 22.0900002)
o345.CanCollide = false
o345.Locked = true
o345.FormFactor = Enum.FormFactor.Custom
o345.Size = Vector3.new(0.332273632, 0.200000003, 1.59999943)
o345.CFrame = CFrame.new(-7.72471619, 1.95997, -6.92228603, 0.812546074, -0.329767466, 0.480647713, -0.448588252, 0.172765121, 0.876881301, -0.372206092, -0.928119361, -0.00755018182)
o345.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o345.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o345.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o345.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o345.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o345.Position = Vector3.new(-7.72471619, 1.95997, -6.92228603)
o345.Orientation = Vector3.new(-61.2700005, 90.9000015, -68.9400024)
o345.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o346.Parent = o307
o346.BrickColor = BrickColor.new("Really black")
o346.Transparency = 0.60000002384186
o346.Position = Vector3.new(-8.14544678, 2.19368696, -6.56159115)
o346.Rotation = Vector3.new(-90.4899979, 28.7299995, 52.0900002)
o346.CanCollide = false
o346.Locked = true
o346.FormFactor = Enum.FormFactor.Custom
o346.Size = Vector3.new(0.332247972, 0.200000003, 1.60000014)
o346.CFrame = CFrame.new(-8.14544678, 2.19368696, -6.56159115, 0.53880173, -0.691860199, 0.480647713, -0.302106202, 0.373913169, 0.876881301, -0.786399722, -0.617671788, -0.00755018182)
o346.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o346.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o346.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o346.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o346.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o346.Position = Vector3.new(-8.14544678, 2.19368696, -6.56159115)
o346.Orientation = Vector3.new(-61.2700005, 90.9000015, -38.9399986)
o346.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o347.Parent = o307
o347.BrickColor = BrickColor.new("Really black")
o347.Transparency = 0.60000002384186
o347.Position = Vector3.new(-7.95618391, 2.08812189, -6.77343607)
o347.Rotation = Vector3.new(-90.4899979, 28.7299995, 37.0999985)
o347.CanCollide = false
o347.Locked = true
o347.FormFactor = Enum.FormFactor.Custom
o347.Size = Vector3.new(0.332268059, 0.200000003, 1.59999943)
o347.CFrame = CFrame.new(-7.95618391, 2.08812189, -6.77343607, 0.699450195, -0.528911352, 0.480647713, -0.38855651, 0.283024818, 0.876881301, -0.599827707, -0.800093591, -0.00755018182)
o347.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o347.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o347.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o347.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o347.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o347.Position = Vector3.new(-7.95618391, 2.08812189, -6.77343607)
o347.Orientation = Vector3.new(-61.2700005, 90.9000015, -53.9300003)
o347.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o348.Parent = o307
o348.BrickColor = BrickColor.new("Really black")
o348.Transparency = 0.60000002384186
o348.Position = Vector3.new(-7.96760511, 2.11025691, -4.93014288)
o348.Rotation = Vector3.new(-90.4899979, 28.7299995, -37.9099998)
o348.CanCollide = false
o348.Locked = true
o348.FormFactor = Enum.FormFactor.Custom
o348.Size = Vector3.new(0.33226791, 0.200000003, 1.5999999)
o348.CFrame = CFrame.new(-7.96760511, 2.11025691, -4.93014288, 0.69187367, 0.538784385, 0.480647713, -0.373920739, -0.302096844, 0.876881301, 0.617652059, -0.786415219, -0.00755018182)
o348.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o348.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o348.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o348.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o348.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o348.Position = Vector3.new(-7.96760511, 2.11025691, -4.93014288)
o348.Orientation = Vector3.new(-61.2700005, 90.9000015, -128.940002)
o348.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o349.Parent = o307
o349.BrickColor = BrickColor.new("Really black")
o349.Transparency = 0.60000002384186
o349.Position = Vector3.new(-8.35268784, 3.31466389, -5.70523119)
o349.Rotation = Vector3.new(-90.4899979, 28.7299995, 97.0899963)
o349.CanCollide = false
o349.Locked = true
o349.FormFactor = Enum.FormFactor.Custom
o349.Size = Vector3.new(0.33226791, 0.200000003, 1.59999967)
o349.CFrame = CFrame.new(-8.35268784, 3.31466389, -5.70523119, -0.10826125, -0.870205343, 0.480647713, 0.0507931001, 0.478016019, 0.876881301, -0.992824078, 0.119345851, -0.00755018182)
o349.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o349.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o349.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o349.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o349.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o349.Position = Vector3.new(-8.35268784, 3.31466389, -5.70523119)
o349.Orientation = Vector3.new(-61.2700005, 90.9000015, 6.07000017)
o349.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o350.Parent = o307
o350.BrickColor = BrickColor.new("Really black")
o350.Transparency = 0.60000002384186
o350.Position = Vector3.new(-7.73820877, 2.9858489, -4.77554083)
o350.Rotation = Vector3.new(-90.4899979, 28.7299995, -22.9099998)
o350.CanCollide = false
o350.Locked = true
o350.FormFactor = Enum.FormFactor.Custom
o350.Size = Vector3.new(0.33225891, 0.200000003, 1.5999999)
o350.CFrame = CFrame.new(-7.73820877, 2.9858489, -4.77554083, 0.807753742, 0.341338038, 0.480647713, -0.439372361, -0.195015743, 0.876881301, 0.393046796, -0.919487417, -0.00755018182)
o350.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o350.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o350.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o350.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o350.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o350.Position = Vector3.new(-7.73820877, 2.9858489, -4.77554083)
o350.Orientation = Vector3.new(-61.2700005, 90.9000015, -113.93)
o350.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o351.Parent = o307
o351.BrickColor = BrickColor.new("Really black")
o351.Transparency = 0.60000002384186
o351.Position = Vector3.new(-7.46743679, 2.81829691, -6.99744797)
o351.Rotation = Vector3.new(-90.4899979, 28.7299995, 7.09000015)
o351.CanCollide = false
o351.Locked = true
o351.FormFactor = Enum.FormFactor.Custom
o351.Size = Vector3.new(0.332247972, 0.200000003, 1.59999967)
o351.CFrame = CFrame.new(-7.46743679, 2.81829691, -6.99744797, 0.870202601, -0.108282916, 0.480647713, -0.478014737, 0.0508050025, 0.876881301, -0.119370572, -0.992821038, -0.00755018182)
o351.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o351.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o351.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o351.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o351.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o351.Position = Vector3.new(-7.46743679, 2.81829691, -6.99744797)
o351.Orientation = Vector3.new(-61.2700005, 90.9000015, -83.9300003)
o351.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o352.Parent = o307
o352.BrickColor = BrickColor.new("Really black")
o352.Transparency = 0.60000002384186
o352.Position = Vector3.new(-7.72471619, 2.95996809, -6.92228603)
o352.Rotation = Vector3.new(-90.4899979, 28.7299995, 22.0900002)
o352.CanCollide = false
o352.Locked = true
o352.FormFactor = Enum.FormFactor.Custom
o352.Size = Vector3.new(0.332273632, 0.200000003, 1.59999943)
o352.CFrame = CFrame.new(-7.72471619, 2.95996809, -6.92228603, 0.812546074, -0.329767466, 0.480647713, -0.448588252, 0.172765121, 0.876881301, -0.372206092, -0.928119361, -0.00755018182)
o352.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o352.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o352.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o352.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o352.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o352.Position = Vector3.new(-7.72471619, 2.95996809, -6.92228603)
o352.Orientation = Vector3.new(-61.2700005, 90.9000015, -68.9400024)
o352.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o353.Parent = o307
o353.BrickColor = BrickColor.new("Really black")
o353.Transparency = 0.60000002384186
o353.Position = Vector3.new(-7.96760511, 3.11025691, -4.93014288)
o353.Rotation = Vector3.new(-90.4899979, 28.7299995, -37.9099998)
o353.CanCollide = false
o353.Locked = true
o353.FormFactor = Enum.FormFactor.Custom
o353.Size = Vector3.new(0.33226791, 0.200000003, 1.5999999)
o353.CFrame = CFrame.new(-7.96760511, 3.11025691, -4.93014288, 0.69187367, 0.538784385, 0.480647713, -0.373920739, -0.302096844, 0.876881301, 0.617652059, -0.786415219, -0.00755018182)
o353.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o353.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o353.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o353.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o353.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o353.Position = Vector3.new(-7.96760511, 3.11025691, -4.93014288)
o353.Orientation = Vector3.new(-61.2700005, 90.9000015, -128.940002)
o353.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o354.Parent = o307
o354.BrickColor = BrickColor.new("Really black")
o354.Transparency = 0.60000002384186
o354.Position = Vector3.new(-8.28568172, 2.28046107, -5.41140604)
o354.Rotation = Vector3.new(-90.4899979, 28.7299995, 112.089996)
o354.CanCollide = false
o354.Locked = true
o354.FormFactor = Enum.FormFactor.Custom
o354.Size = Vector3.new(0.332265079, 0.200000003, 1.59999919)
o354.CFrame = CFrame.new(-8.28568172, 2.28046107, -5.41140604, -0.329783589, -0.812539577, 0.480647713, 0.172774017, 0.448584825, 0.876881301, -0.92811203, 0.37222448, -0.00755018182)
o354.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o354.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o354.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o354.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o354.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o354.Position = Vector3.new(-8.28568172, 2.28046107, -5.41140604)
o354.Orientation = Vector3.new(-61.2700005, 90.9000015, 21.0599995)
o354.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o355.Parent = o307
o355.BrickColor = BrickColor.new("Really black")
o355.Transparency = 0.60000002384186
o355.Position = Vector3.new(-7.48177719, 1.84599602, -4.69373322)
o355.Rotation = Vector3.new(-90.4899979, 28.7299995, -7.90999985)
o355.CanCollide = false
o355.Locked = true
o355.FormFactor = Enum.FormFactor.Custom
o355.Size = Vector3.new(0.33227101, 0.200000003, 1.59999919)
o355.CFrame = CFrame.new(-7.48177719, 1.84599602, -4.69373322, 0.868574619, 0.120647907, 0.480647713, -0.474874675, -0.0746542886, 0.876881301, 0.141676307, -0.989884257, -0.00755018182)
o355.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o355.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o355.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o355.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o355.Position = Vector3.new(-7.48177719, 1.84599602, -4.69373322)
o355.Orientation = Vector3.new(-61.2700005, 90.9000015, -98.9300003)
o355.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o356.Parent = o307
o356.BrickColor = BrickColor.new("Really black")
o356.Transparency = 0.60000002384186
o356.Position = Vector3.new(-7.73820877, 1.98584902, -4.77554083)
o356.Rotation = Vector3.new(-90.4899979, 28.7299995, -22.9099998)
o356.CanCollide = false
o356.Locked = true
o356.FormFactor = Enum.FormFactor.Custom
o356.Size = Vector3.new(0.33225891, 0.200000003, 1.5999999)
o356.CFrame = CFrame.new(-7.73820877, 1.98584902, -4.77554083, 0.807753742, 0.341338038, 0.480647713, -0.439372361, -0.195015743, 0.876881301, 0.393046796, -0.919487417, -0.00755018182)
o356.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o356.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o356.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o356.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o356.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o356.Position = Vector3.new(-7.73820877, 1.98584902, -4.77554083)
o356.Orientation = Vector3.new(-61.2700005, 90.9000015, -113.93)
o356.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o357.Parent = o307
o357.BrickColor = BrickColor.new("Really black")
o357.Transparency = 0.60000002384186
o357.Position = Vector3.new(-7.46743679, 1.81829703, -6.99744797)
o357.Rotation = Vector3.new(-90.4899979, 28.7299995, 7.09000015)
o357.CanCollide = false
o357.Locked = true
o357.FormFactor = Enum.FormFactor.Custom
o357.Size = Vector3.new(0.332247972, 0.200000003, 1.59999967)
o357.CFrame = CFrame.new(-7.46743679, 1.81829703, -6.99744797, 0.870202601, -0.108282916, 0.480647713, -0.478014737, 0.0508050025, 0.876881301, -0.119370572, -0.992821038, -0.00755018182)
o357.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o357.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o357.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o357.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o357.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o357.Position = Vector3.new(-7.46743679, 1.81829703, -6.99744797)
o357.Orientation = Vector3.new(-61.2700005, 90.9000015, -83.9300003)
o357.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o358.Parent = o307
o358.BrickColor = BrickColor.new("Really black")
o358.Transparency = 0.60000002384186
o358.Position = Vector3.new(-8.28013229, 2.26976299, -6.30052805)
o358.Rotation = Vector3.new(-90.4899979, 28.7299995, 67.0899963)
o358.CanCollide = false
o358.Locked = true
o358.FormFactor = Enum.FormFactor.Custom
o358.Size = Vector3.new(0.332280308, 0.200000003, 1.5999999)
o358.CFrame = CFrame.new(-8.28013229, 2.26976299, -6.30052805, 0.341331333, -0.807756603, 0.480647713, -0.195012093, 0.439374, 0.876881301, -0.919490755, -0.393039167, -0.00755018182)
o358.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o358.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o358.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o358.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o358.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o358.Position = Vector3.new(-8.28013229, 2.26976299, -6.30052805)
o358.Orientation = Vector3.new(-61.2700005, 90.9000015, -23.9300003)
o358.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o359.Parent = o307
o359.BrickColor = BrickColor.new("Really black")
o359.Transparency = 0.60000002384186
o359.Position = Vector3.new(-8.3507843, 2.31100607, -6.0085578)
o359.Rotation = Vector3.new(-90.4899979, 28.7299995, 82.0899963)
o359.CanCollide = false
o359.Locked = true
o359.FormFactor = Enum.FormFactor.Custom
o359.Size = Vector3.new(0.33225891, 0.200000003, 1.59999967)
o359.CFrame = CFrame.new(-8.3507843, 2.31100607, -6.0085578, 0.120672278, -0.868571222, 0.480647713, -0.0746676177, 0.474872589, 0.876881301, -0.989880264, -0.141704082, -0.00755018182)
o359.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o359.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o359.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o359.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o359.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o359.Position = Vector3.new(-8.3507843, 2.31100607, -6.0085578)
o359.Orientation = Vector3.new(-61.2700005, 90.9000015, -8.93999958)
o359.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o360.Parent = o307
o360.BrickColor = BrickColor.new("Really black")
o360.Transparency = 0.60000002384186
o360.Position = Vector3.new(-8.15433121, 3.21074009, -5.14702177)
o360.Rotation = Vector3.new(-90.4899979, 28.7299995, -52.9099998)
o360.CanCollide = false
o360.Locked = true
o360.FormFactor = Enum.FormFactor.Custom
o360.Size = Vector3.new(0.332279205, 0.200000003, 1.59999895)
o360.CFrame = CFrame.new(-8.15433121, 3.21074009, -5.14702177, 0.528843343, 0.699501634, 0.480647713, -0.282987028, -0.388584048, 0.876881301, 0.800151885, -0.599749923, -0.00755018182)
o360.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o360.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o360.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o360.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o360.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o360.Position = Vector3.new(-8.15433121, 3.21074009, -5.14702177)
o360.Orientation = Vector3.new(-61.2700005, 90.9000015, -143.940002)
o360.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o361.Parent = o307
o361.BrickColor = BrickColor.new("Really black")
o361.Transparency = 0.60000002384186
o361.Position = Vector3.new(-8.14544678, 3.19368696, -6.56159115)
o361.Rotation = Vector3.new(-90.4899979, 28.7299995, 52.0900002)
o361.CanCollide = false
o361.Locked = true
o361.FormFactor = Enum.FormFactor.Custom
o361.Size = Vector3.new(0.332247972, 0.200000003, 1.60000014)
o361.CFrame = CFrame.new(-8.14544678, 3.19368696, -6.56159115, 0.53880173, -0.691860199, 0.480647713, -0.302106202, 0.373913169, 0.876881301, -0.786399722, -0.617671788, -0.00755018182)
o361.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o361.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o361.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o361.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o361.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o361.Position = Vector3.new(-8.14544678, 3.19368696, -6.56159115)
o361.Orientation = Vector3.new(-61.2700005, 90.9000015, -38.9399986)
o361.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o362.Parent = o307
o362.BrickColor = BrickColor.new("Really black")
o362.Transparency = 0.60000002384186
o362.Position = Vector3.new(-8.3507843, 3.31100607, -6.0085578)
o362.Rotation = Vector3.new(-90.4899979, 28.7299995, 82.0899963)
o362.CanCollide = false
o362.Locked = true
o362.FormFactor = Enum.FormFactor.Custom
o362.Size = Vector3.new(0.33225891, 0.200000003, 1.59999967)
o362.CFrame = CFrame.new(-8.3507843, 3.31100607, -6.0085578, 0.120672278, -0.868571222, 0.480647713, -0.0746676177, 0.474872589, 0.876881301, -0.989880264, -0.141704082, -0.00755018182)
o362.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o362.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o362.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o362.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o362.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o362.Position = Vector3.new(-8.3507843, 3.31100607, -6.0085578)
o362.Orientation = Vector3.new(-61.2700005, 90.9000015, -8.93999958)
o362.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o363.Parent = o307
o363.BrickColor = BrickColor.new("Really black")
o363.Transparency = 0.60000002384186
o363.Position = Vector3.new(-8.28013229, 3.26976299, -6.30052805)
o363.Rotation = Vector3.new(-90.4899979, 28.7299995, 67.0899963)
o363.CanCollide = false
o363.Locked = true
o363.FormFactor = Enum.FormFactor.Custom
o363.Size = Vector3.new(0.332280308, 0.200000003, 1.5999999)
o363.CFrame = CFrame.new(-8.28013229, 3.26976299, -6.30052805, 0.341331333, -0.807756603, 0.480647713, -0.195012093, 0.439374, 0.876881301, -0.919490755, -0.393039167, -0.00755018182)
o363.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o363.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o363.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o363.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o363.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o363.Position = Vector3.new(-8.28013229, 3.26976299, -6.30052805)
o363.Orientation = Vector3.new(-61.2700005, 90.9000015, -23.9300003)
o363.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o364.Parent = o307
o364.BrickColor = BrickColor.new("Really black")
o364.Transparency = 0.60000002384186
o364.Position = Vector3.new(-4.28114319, 3.26976299, -5.35149002)
o364.Rotation = Vector3.new(-89.5100021, -28.7299995, -112.910004)
o364.CanCollide = false
o364.Locked = true
o364.FormFactor = Enum.FormFactor.Custom
o364.Size = Vector3.new(0.332280308, 0.200000003, 1.5999999)
o364.CFrame = CFrame.new(-4.28114319, 3.26976299, -5.35149002, -0.341331303, 0.807756603, -0.480647653, -0.195012093, 0.43937394, 0.876881301, 0.919490755, 0.393039137, 0.00755020976)
o364.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o364.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o364.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o364.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o364.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o364.Position = Vector3.new(-4.28114319, 3.26976299, -5.35149002)
o364.Orientation = Vector3.new(-61.2700005, -89.0999985, -23.9300003)
o364.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o365.Parent = o307
o365.BrickColor = BrickColor.new("Really black")
o365.Transparency = 0.60000002384186
o365.Position = Vector3.new(-4.210495, 3.31100392, -5.64346313)
o365.Rotation = Vector3.new(-89.5100021, -28.7299995, -97.9100037)
o365.CanCollide = false
o365.Locked = true
o365.FormFactor = Enum.FormFactor.Custom
o365.Size = Vector3.new(0.33225891, 0.200000003, 1.59999967)
o365.CFrame = CFrame.new(-4.210495, 3.31100392, -5.64346313, -0.120672256, 0.868571222, -0.480647653, -0.0746676177, 0.47487253, 0.876881301, 0.989880264, 0.141704068, 0.00755020976)
o365.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o365.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o365.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o365.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o365.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o365.Position = Vector3.new(-4.210495, 3.31100392, -5.64346313)
o365.Orientation = Vector3.new(-61.2700005, -89.0999985, -8.93999958)
o365.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o366.Parent = o307
o366.BrickColor = BrickColor.new("Really black")
o366.Transparency = 0.60000002384186
o366.Position = Vector3.new(-4.28114319, 2.26976299, -5.35149193)
o366.Rotation = Vector3.new(-89.5100021, -28.7299995, -112.910004)
o366.CanCollide = false
o366.Locked = true
o366.FormFactor = Enum.FormFactor.Custom
o366.Size = Vector3.new(0.332280308, 0.200000003, 1.5999999)
o366.CFrame = CFrame.new(-4.28114319, 2.26976299, -5.35149193, -0.341331303, 0.807756603, -0.480647653, -0.195012093, 0.43937394, 0.876881301, 0.919490755, 0.393039137, 0.00755020976)
o366.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o366.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o366.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o366.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o366.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o366.Position = Vector3.new(-4.28114319, 2.26976299, -5.35149193)
o366.Orientation = Vector3.new(-61.2700005, -89.0999985, -23.9300003)
o366.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o367.Parent = o307
o367.BrickColor = BrickColor.new("Really black")
o367.Transparency = 0.60000002384186
o367.Position = Vector3.new(-4.210495, 2.31100607, -5.64346123)
o367.Rotation = Vector3.new(-89.5100021, -28.7299995, -97.9100037)
o367.CanCollide = false
o367.Locked = true
o367.FormFactor = Enum.FormFactor.Custom
o367.Size = Vector3.new(0.33225891, 0.200000003, 1.59999967)
o367.CFrame = CFrame.new(-4.210495, 2.31100607, -5.64346123, -0.120672256, 0.868571222, -0.480647653, -0.0746676177, 0.47487253, 0.876881301, 0.989880264, 0.141704068, 0.00755020976)
o367.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o367.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o367.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o367.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o367.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o367.Position = Vector3.new(-4.210495, 2.31100607, -5.64346123)
o367.Orientation = Vector3.new(-61.2700005, -89.0999985, -8.93999958)
o367.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o368.Parent = o307
o368.BrickColor = BrickColor.new("Really black")
o368.Transparency = 0.60000002384186
o368.Position = Vector3.new(-4.60509491, 2.08812189, -4.87858582)
o368.Rotation = Vector3.new(-89.5100021, -28.7299995, -142.899994)
o368.CanCollide = false
o368.Locked = true
o368.FormFactor = Enum.FormFactor.Custom
o368.Size = Vector3.new(0.332268059, 0.200000003, 1.59999943)
o368.CFrame = CFrame.new(-4.60509491, 2.08812189, -4.87858582, -0.699450195, 0.528911352, -0.480647653, -0.38855648, 0.283024758, 0.876881301, 0.599827707, 0.800093591, 0.00755020976)
o368.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o368.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o368.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o368.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o368.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o368.Position = Vector3.new(-4.60509491, 2.08812189, -4.87858582)
o368.Orientation = Vector3.new(-61.2700005, -89.0999985, -53.9300003)
o368.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o369.Parent = o307
o369.BrickColor = BrickColor.new("Really black")
o369.Transparency = 0.60000002384186
o369.Position = Vector3.new(-5.07949781, 1.84599602, -6.95828581)
o369.Rotation = Vector3.new(-89.5100021, -28.7299995, 172.089996)
o369.CanCollide = false
o369.Locked = true
o369.FormFactor = Enum.FormFactor.Custom
o369.Size = Vector3.new(0.33227101, 0.200000003, 1.59999919)
o369.CFrame = CFrame.new(-5.07949781, 1.84599602, -6.95828581, -0.868574619, -0.120647907, -0.480647653, -0.474874616, -0.0746543109, 0.876881301, -0.141676322, 0.989884257, 0.00755020976)
o369.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o369.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o369.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o369.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o369.Position = Vector3.new(-5.07949781, 1.84599602, -6.95828581)
o369.Orientation = Vector3.new(-61.2700005, -89.0999985, -98.9300003)
o369.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o370.Parent = o307
o370.BrickColor = BrickColor.new("Really black")
o370.Transparency = 0.60000002384186
o370.Position = Vector3.new(-4.82306623, 2.9858489, -6.87647676)
o370.Rotation = Vector3.new(-89.5100021, -28.7299995, 157.089996)
o370.CanCollide = false
o370.Locked = true
o370.FormFactor = Enum.FormFactor.Custom
o370.Size = Vector3.new(0.33225891, 0.200000003, 1.5999999)
o370.CFrame = CFrame.new(-4.82306623, 2.9858489, -6.87647676, -0.807753742, -0.341338038, -0.480647653, -0.439372301, -0.195015758, 0.876881301, -0.393046826, 0.919487417, 0.00755020976)
o370.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o370.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o370.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o370.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o370.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o370.Position = Vector3.new(-4.82306623, 2.9858489, -6.87647676)
o370.Orientation = Vector3.new(-61.2700005, -89.0999985, -113.93)
o370.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o371.Parent = o307
o371.BrickColor = BrickColor.new("Really black")
o371.Transparency = 0.60000002384186
o371.Position = Vector3.new(-4.41582489, 3.19368696, -5.09042788)
o371.Rotation = Vector3.new(-89.5100021, -28.7299995, -127.910004)
o371.CanCollide = false
o371.Locked = true
o371.FormFactor = Enum.FormFactor.Custom
o371.Size = Vector3.new(0.332247972, 0.200000003, 1.60000014)
o371.CFrame = CFrame.new(-4.41582489, 3.19368696, -5.09042788, -0.53880173, 0.691860139, -0.480647653, -0.302106202, 0.37391308, 0.876881301, 0.786399662, 0.617671847, 0.00755020976)
o371.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o371.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o371.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o371.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o371.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o371.Position = Vector3.new(-4.41582489, 3.19368696, -5.09042788)
o371.Orientation = Vector3.new(-61.2700005, -89.0999985, -38.9399986)
o371.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o372.Parent = o307
o372.BrickColor = BrickColor.new("Really black")
o372.Transparency = 0.60000002384186
o372.Position = Vector3.new(-4.82306623, 1.98584902, -6.87647676)
o372.Rotation = Vector3.new(-89.5100021, -28.7299995, 157.089996)
o372.CanCollide = false
o372.Locked = true
o372.FormFactor = Enum.FormFactor.Custom
o372.Size = Vector3.new(0.33225891, 0.200000003, 1.5999999)
o372.CFrame = CFrame.new(-4.82306623, 1.98584902, -6.87647676, -0.807753742, -0.341338038, -0.480647653, -0.439372301, -0.195015758, 0.876881301, -0.393046826, 0.919487417, 0.00755020976)
o372.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o372.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o372.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o372.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o372.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o372.Position = Vector3.new(-4.82306623, 1.98584902, -6.87647676)
o372.Orientation = Vector3.new(-61.2700005, -89.0999985, -113.93)
o372.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o373.Parent = o307
o373.BrickColor = BrickColor.new("Really black")
o373.Transparency = 0.60000002384186
o373.Position = Vector3.new(-4.59367323, 3.11025906, -6.72187424)
o373.Rotation = Vector3.new(-89.5100021, -28.7299995, 142.089996)
o373.CanCollide = false
o373.Locked = true
o373.FormFactor = Enum.FormFactor.Custom
o373.Size = Vector3.new(0.33226791, 0.200000003, 1.5999999)
o373.CFrame = CFrame.new(-4.59367323, 3.11025906, -6.72187424, -0.69187367, -0.538784444, -0.480647653, -0.373920679, -0.302096874, 0.876881301, -0.617652178, 0.78641516, 0.00755020976)
o373.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o373.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o373.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o373.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o373.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o373.Position = Vector3.new(-4.59367323, 3.11025906, -6.72187424)
o373.Orientation = Vector3.new(-61.2700005, -89.0999985, -128.940002)
o373.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o374.Parent = o307
o374.BrickColor = BrickColor.new("Really black")
o374.Transparency = 0.60000002384186
o374.Position = Vector3.new(-4.4069438, 3.210742, -6.50499487)
o374.Rotation = Vector3.new(-89.5100021, -28.7299995, 127.089996)
o374.CanCollide = false
o374.Locked = true
o374.FormFactor = Enum.FormFactor.Custom
o374.Size = Vector3.new(0.332279205, 0.200000003, 1.59999895)
o374.CFrame = CFrame.new(-4.4069438, 3.210742, -6.50499487, -0.528843284, -0.699501634, -0.480647653, -0.282986939, -0.388584018, 0.876881301, -0.800151944, 0.599749804, 0.00755020976)
o374.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o374.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o374.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o374.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o374.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o374.Position = Vector3.new(-4.4069438, 3.210742, -6.50499487)
o374.Orientation = Vector3.new(-61.2700005, -89.0999985, -143.940002)
o374.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o375.Parent = o307
o375.BrickColor = BrickColor.new("Really black")
o375.Transparency = 0.60000002384186
o375.Position = Vector3.new(-4.59366608, 2.11025691, -6.72187519)
o375.Rotation = Vector3.new(-89.5100021, -28.7299995, 142.089996)
o375.CanCollide = false
o375.Locked = true
o375.FormFactor = Enum.FormFactor.Custom
o375.Size = Vector3.new(0.33226791, 0.200000003, 1.5999999)
o375.CFrame = CFrame.new(-4.59366608, 2.11025691, -6.72187519, -0.69187367, -0.538784444, -0.480647653, -0.373920679, -0.302096874, 0.876881301, -0.617652178, 0.78641516, 0.00755020976)
o375.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o375.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o375.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o375.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o375.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o375.Position = Vector3.new(-4.59366608, 2.11025691, -6.72187519)
o375.Orientation = Vector3.new(-61.2700005, -89.0999985, -128.940002)
o375.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o376.Parent = o307
o376.BrickColor = BrickColor.new("Really black")
o376.Transparency = 0.60000002384186
o376.Position = Vector3.new(-5.09384108, 2.81829691, -4.65457201)
o376.Rotation = Vector3.new(-89.5100021, -28.7299995, -172.910004)
o376.CanCollide = false
o376.Locked = true
o376.FormFactor = Enum.FormFactor.Custom
o376.Size = Vector3.new(0.332247972, 0.200000003, 1.59999967)
o376.CFrame = CFrame.new(-5.09384108, 2.81829691, -4.65457201, -0.870202601, 0.108282924, -0.480647653, -0.478014678, 0.0508049652, 0.876881301, 0.119370565, 0.992821038, 0.00755020976)
o376.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o376.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o376.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o376.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o376.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o376.Position = Vector3.new(-5.09384108, 2.81829691, -4.65457201)
o376.Orientation = Vector3.new(-61.2700005, -89.0999985, -83.9300003)
o376.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o377.Parent = o307
o377.BrickColor = BrickColor.new("Really black")
o377.Transparency = 0.60000002384186
o377.Position = Vector3.new(-4.83656311, 2.95996809, -4.72973299)
o377.Rotation = Vector3.new(-89.5100021, -28.7299995, -157.910004)
o377.CanCollide = false
o377.Locked = true
o377.FormFactor = Enum.FormFactor.Custom
o377.Size = Vector3.new(0.332273632, 0.200000003, 1.59999943)
o377.CFrame = CFrame.new(-4.83656311, 2.95996809, -4.72973299, -0.812546074, 0.329767466, -0.480647653, -0.448588192, 0.172765076, 0.876881301, 0.372206062, 0.928119421, 0.00755020976)
o377.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o377.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o377.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o377.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o377.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o377.Position = Vector3.new(-4.83656311, 2.95996809, -4.72973299)
o377.Orientation = Vector3.new(-61.2700005, -89.0999985, -68.9400024)
o377.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o378.Parent = o307
o378.BrickColor = BrickColor.new("Really black")
o378.Transparency = 0.60000002384186
o378.Position = Vector3.new(-4.20858717, 3.31466603, -5.94679117)
o378.Rotation = Vector3.new(-89.5100021, -28.7299995, -82.9100037)
o378.CanCollide = false
o378.Locked = true
o378.FormFactor = Enum.FormFactor.Custom
o378.Size = Vector3.new(0.33226791, 0.200000003, 1.59999967)
o378.CFrame = CFrame.new(-4.20858717, 3.31466603, -5.94679117, 0.108261272, 0.870205343, -0.480647653, 0.0507930741, 0.478015959, 0.876881301, 0.992824078, -0.119345866, 0.00755020976)
o378.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o378.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o378.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o378.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o378.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o378.Position = Vector3.new(-4.20858717, 3.31466603, -5.94679117)
o378.Orientation = Vector3.new(-61.2700005, -89.0999985, 6.07000017)
o378.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o379.Parent = o307
o379.BrickColor = BrickColor.new("Really black")
o379.Transparency = 0.60000002384186
o379.Position = Vector3.new(-4.27559614, 2.28046107, -6.24061394)
o379.Rotation = Vector3.new(-89.5100021, -28.7299995, -67.9100037)
o379.CanCollide = false
o379.Locked = true
o379.FormFactor = Enum.FormFactor.Custom
o379.Size = Vector3.new(0.332265079, 0.200000003, 1.59999919)
o379.CFrame = CFrame.new(-4.27559614, 2.28046107, -6.24061394, 0.329783589, 0.812539577, -0.480647653, 0.172773987, 0.448584795, 0.876881301, 0.92811203, -0.37222448, 0.00755020976)
o379.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o379.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o379.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o379.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o379.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o379.Position = Vector3.new(-4.27559614, 2.28046107, -6.24061394)
o379.Orientation = Vector3.new(-61.2700005, -89.0999985, 21.0599995)
o379.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o380.Parent = o307
o380.BrickColor = BrickColor.new("Really black")
o380.Transparency = 0.60000002384186
o380.Position = Vector3.new(-5.09384108, 1.81829596, -4.6545701)
o380.Rotation = Vector3.new(-89.5100021, -28.7299995, -172.910004)
o380.CanCollide = false
o380.Locked = true
o380.FormFactor = Enum.FormFactor.Custom
o380.Size = Vector3.new(0.332247972, 0.200000003, 1.59999967)
o380.CFrame = CFrame.new(-5.09384108, 1.81829596, -4.6545701, -0.870202601, 0.108282924, -0.480647653, -0.478014678, 0.0508049652, 0.876881301, 0.119370565, 0.992821038, 0.00755020976)
o380.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o380.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o380.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o380.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o380.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o380.Position = Vector3.new(-5.09384108, 1.81829596, -4.6545701)
o380.Orientation = Vector3.new(-61.2700005, -89.0999985, -83.9300003)
o380.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o381.Parent = o307
o381.BrickColor = BrickColor.new("Really black")
o381.Transparency = 0.60000002384186
o381.Position = Vector3.new(-4.41582489, 2.19368696, -5.09042788)
o381.Rotation = Vector3.new(-89.5100021, -28.7299995, -127.910004)
o381.CanCollide = false
o381.Locked = true
o381.FormFactor = Enum.FormFactor.Custom
o381.Size = Vector3.new(0.332247972, 0.200000003, 1.60000014)
o381.CFrame = CFrame.new(-4.41582489, 2.19368696, -5.09042788, -0.53880173, 0.691860139, -0.480647653, -0.302106202, 0.37391308, 0.876881301, 0.786399662, 0.617671847, 0.00755020976)
o381.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o381.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o381.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o381.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o381.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o381.Position = Vector3.new(-4.41582489, 2.19368696, -5.09042788)
o381.Orientation = Vector3.new(-61.2700005, -89.0999985, -38.9399986)
o381.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o382.Parent = o307
o382.BrickColor = BrickColor.new("Really black")
o382.Transparency = 0.60000002384186
o382.Position = Vector3.new(-4.27559614, 3.28046298, -6.24061203)
o382.Rotation = Vector3.new(-89.5100021, -28.7299995, -67.9100037)
o382.CanCollide = false
o382.Locked = true
o382.FormFactor = Enum.FormFactor.Custom
o382.Size = Vector3.new(0.332265079, 0.200000003, 1.59999919)
o382.CFrame = CFrame.new(-4.27559614, 3.28046298, -6.24061203, 0.329783589, 0.812539577, -0.480647653, 0.172773987, 0.448584795, 0.876881301, 0.92811203, -0.37222448, 0.00755020976)
o382.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o382.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o382.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o382.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o382.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o382.Position = Vector3.new(-4.27559614, 3.28046298, -6.24061203)
o382.Orientation = Vector3.new(-61.2700005, -89.0999985, 21.0599995)
o382.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o383.Parent = o307
o383.BrickColor = BrickColor.new("Really black")
o383.Transparency = 0.60000002384186
o383.Position = Vector3.new(-4.836555, 1.95997202, -4.72973299)
o383.Rotation = Vector3.new(-89.5100021, -28.7299995, -157.910004)
o383.CanCollide = false
o383.Locked = true
o383.FormFactor = Enum.FormFactor.Custom
o383.Size = Vector3.new(0.332273632, 0.200000003, 1.59999943)
o383.CFrame = CFrame.new(-4.836555, 1.95997202, -4.72973299, -0.812546074, 0.329767466, -0.480647653, -0.448588192, 0.172765076, 0.876881301, 0.372206062, 0.928119421, 0.00755020976)
o383.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o383.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o383.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o383.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o383.Position = Vector3.new(-4.836555, 1.95997202, -4.72973299)
o383.Orientation = Vector3.new(-61.2700005, -89.0999985, -68.9400024)
o383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o384.Parent = o307
o384.BrickColor = BrickColor.new("Really black")
o384.Transparency = 0.60000002384186
o384.Position = Vector3.new(-4.20858717, 2.31466389, -5.94679117)
o384.Rotation = Vector3.new(-89.5100021, -28.7299995, -82.9100037)
o384.CanCollide = false
o384.Locked = true
o384.FormFactor = Enum.FormFactor.Custom
o384.Size = Vector3.new(0.33226791, 0.200000003, 1.59999967)
o384.CFrame = CFrame.new(-4.20858717, 2.31466389, -5.94679117, 0.108261272, 0.870205343, -0.480647653, 0.0507930741, 0.478015959, 0.876881301, 0.992824078, -0.119345866, 0.00755020976)
o384.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o384.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o384.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o384.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o384.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o384.Position = Vector3.new(-4.20858717, 2.31466389, -5.94679117)
o384.Orientation = Vector3.new(-61.2700005, -89.0999985, 6.07000017)
o384.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o385.Parent = o307
o385.BrickColor = BrickColor.new("Really black")
o385.Transparency = 0.60000002384186
o385.Position = Vector3.new(-4.60509491, 3.08812094, -4.87858391)
o385.Rotation = Vector3.new(-89.5100021, -28.7299995, -142.899994)
o385.CanCollide = false
o385.Locked = true
o385.FormFactor = Enum.FormFactor.Custom
o385.Size = Vector3.new(0.332268059, 0.200000003, 1.59999943)
o385.CFrame = CFrame.new(-4.60509491, 3.08812094, -4.87858391, -0.699450195, 0.528911352, -0.480647653, -0.38855648, 0.283024758, 0.876881301, 0.599827707, 0.800093591, 0.00755020976)
o385.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o385.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o385.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o385.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o385.Position = Vector3.new(-4.60509491, 3.08812094, -4.87858391)
o385.Orientation = Vector3.new(-61.2700005, -89.0999985, -53.9300003)
o385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o386.Parent = o307
o386.BrickColor = BrickColor.new("Really black")
o386.Transparency = 0.60000002384186
o386.Position = Vector3.new(-4.4069438, 2.210742, -6.50499487)
o386.Rotation = Vector3.new(-89.5100021, -28.7299995, 127.089996)
o386.CanCollide = false
o386.Locked = true
o386.FormFactor = Enum.FormFactor.Custom
o386.Size = Vector3.new(0.332279205, 0.200000003, 1.59999895)
o386.CFrame = CFrame.new(-4.4069438, 2.210742, -6.50499487, -0.528843284, -0.699501634, -0.480647653, -0.282986939, -0.388584018, 0.876881301, -0.800151944, 0.599749804, 0.00755020976)
o386.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o386.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o386.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o386.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o386.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o386.Position = Vector3.new(-4.4069438, 2.210742, -6.50499487)
o386.Orientation = Vector3.new(-61.2700005, -89.0999985, -143.940002)
o386.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o387.Parent = o307
o387.BrickColor = BrickColor.new("Really black")
o387.Transparency = 0.60000002384186
o387.Position = Vector3.new(-4.27559614, 1.28046203, -6.24061203)
o387.Rotation = Vector3.new(-89.5100021, -28.7299995, -67.9100037)
o387.CanCollide = false
o387.Locked = true
o387.FormFactor = Enum.FormFactor.Custom
o387.Size = Vector3.new(0.332265079, 0.200000003, 1.59999919)
o387.CFrame = CFrame.new(-4.27559614, 1.28046203, -6.24061203, 0.329783589, 0.812539577, -0.480647653, 0.172773987, 0.448584795, 0.876881301, 0.92811203, -0.37222448, 0.00755020976)
o387.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o387.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o387.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o387.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o387.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o387.Position = Vector3.new(-4.27559614, 1.28046203, -6.24061203)
o387.Orientation = Vector3.new(-61.2700005, -89.0999985, 21.0599995)
o387.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o388.Parent = o307
o388.BrickColor = BrickColor.new("Really black")
o388.Transparency = 0.60000002384186
o388.Position = Vector3.new(-5.09384108, 0.818297029, -4.6545701)
o388.Rotation = Vector3.new(-89.5100021, -28.7299995, -172.910004)
o388.CanCollide = false
o388.Locked = true
o388.FormFactor = Enum.FormFactor.Custom
o388.Size = Vector3.new(0.332247972, 0.200000003, 1.59999967)
o388.CFrame = CFrame.new(-5.09384108, 0.818297029, -4.6545701, -0.870202601, 0.108282924, -0.480647653, -0.478014678, 0.0508049652, 0.876881301, 0.119370565, 0.992821038, 0.00755020976)
o388.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o388.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o388.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o388.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o388.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o388.Position = Vector3.new(-5.09384108, 0.818297029, -4.6545701)
o388.Orientation = Vector3.new(-61.2700005, -89.0999985, -83.9300003)
o388.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o389.Parent = o307
o389.BrickColor = BrickColor.new("Really black")
o389.Transparency = 0.60000002384186
o389.Position = Vector3.new(-4.28114319, 1.26976395, -5.35149002)
o389.Rotation = Vector3.new(-89.5100021, -28.7299995, -112.910004)
o389.CanCollide = false
o389.Locked = true
o389.FormFactor = Enum.FormFactor.Custom
o389.Size = Vector3.new(0.332280308, 0.200000003, 1.5999999)
o389.CFrame = CFrame.new(-4.28114319, 1.26976395, -5.35149002, -0.341331303, 0.807756603, -0.480647653, -0.195012093, 0.43937394, 0.876881301, 0.919490755, 0.393039137, 0.00755020976)
o389.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o389.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o389.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o389.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o389.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o389.Position = Vector3.new(-4.28114319, 1.26976395, -5.35149002)
o389.Orientation = Vector3.new(-61.2700005, -89.0999985, -23.9300003)
o389.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o390.Parent = o307
o390.BrickColor = BrickColor.new("Really black")
o390.Transparency = 0.60000002384186
o390.Position = Vector3.new(-4.20858717, 1.31466603, -5.94679117)
o390.Rotation = Vector3.new(-89.5100021, -28.7299995, -82.9100037)
o390.CanCollide = false
o390.Locked = true
o390.FormFactor = Enum.FormFactor.Custom
o390.Size = Vector3.new(0.33226791, 0.200000003, 1.59999967)
o390.CFrame = CFrame.new(-4.20858717, 1.31466603, -5.94679117, 0.108261272, 0.870205343, -0.480647653, 0.0507930741, 0.478015959, 0.876881301, 0.992824078, -0.119345866, 0.00755020976)
o390.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o390.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o390.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o390.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o390.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o390.Position = Vector3.new(-4.20858717, 1.31466603, -5.94679117)
o390.Orientation = Vector3.new(-61.2700005, -89.0999985, 6.07000017)
o390.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o391.Parent = o307
o391.BrickColor = BrickColor.new("Really black")
o391.Transparency = 0.60000002384186
o391.Position = Vector3.new(-4.82306623, 0.985849023, -6.87647676)
o391.Rotation = Vector3.new(-89.5100021, -28.7299995, 157.089996)
o391.CanCollide = false
o391.Locked = true
o391.FormFactor = Enum.FormFactor.Custom
o391.Size = Vector3.new(0.33225891, 0.200000003, 1.5999999)
o391.CFrame = CFrame.new(-4.82306623, 0.985849023, -6.87647676, -0.807753742, -0.341338038, -0.480647653, -0.439372301, -0.195015758, 0.876881301, -0.393046826, 0.919487417, 0.00755020976)
o391.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o391.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o391.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o391.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o391.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o391.Position = Vector3.new(-4.82306623, 0.985849023, -6.87647676)
o391.Orientation = Vector3.new(-61.2700005, -89.0999985, -113.93)
o391.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o392.Parent = o307
o392.BrickColor = BrickColor.new("Really black")
o392.Transparency = 0.60000002384186
o392.Position = Vector3.new(-5.07949781, 0.845996976, -6.95828581)
o392.Rotation = Vector3.new(-89.5100021, -28.7299995, 172.089996)
o392.CanCollide = false
o392.Locked = true
o392.FormFactor = Enum.FormFactor.Custom
o392.Size = Vector3.new(0.33227101, 0.200000003, 1.59999919)
o392.CFrame = CFrame.new(-5.07949781, 0.845996976, -6.95828581, -0.868574619, -0.120647907, -0.480647653, -0.474874616, -0.0746543109, 0.876881301, -0.141676322, 0.989884257, 0.00755020976)
o392.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o392.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o392.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o392.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o392.Position = Vector3.new(-5.07949781, 0.845996976, -6.95828581)
o392.Orientation = Vector3.new(-61.2700005, -89.0999985, -98.9300003)
o392.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o393.Parent = o307
o393.BrickColor = BrickColor.new("Really black")
o393.Transparency = 0.60000002384186
o393.Position = Vector3.new(-4.210495, 1.31100404, -5.64346123)
o393.Rotation = Vector3.new(-89.5100021, -28.7299995, -97.9100037)
o393.CanCollide = false
o393.Locked = true
o393.FormFactor = Enum.FormFactor.Custom
o393.Size = Vector3.new(0.33225891, 0.200000003, 1.59999967)
o393.CFrame = CFrame.new(-4.210495, 1.31100404, -5.64346123, -0.120672256, 0.868571222, -0.480647653, -0.0746676177, 0.47487253, 0.876881301, 0.989880264, 0.141704068, 0.00755020976)
o393.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o393.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o393.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o393.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o393.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o393.Position = Vector3.new(-4.210495, 1.31100404, -5.64346123)
o393.Orientation = Vector3.new(-61.2700005, -89.0999985, -8.93999958)
o393.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o394.Name = "LLModel"
o394.Parent = o270
o395.Name = "FadePart"
o395.Parent = o394
o395.Material = Enum.Material.SmoothPlastic
o395.BrickColor = BrickColor.new("Really black")
o395.Transparency = 0.89999997615814
o395.Position = Vector3.new(-7.10000181, 1.20682204, -5.80001783)
o395.CanCollide = false
o395.Locked = true
o395.Size = Vector3.new(1.60000181, 0.400003791, 1.60000181)
o395.CFrame = CFrame.new(-7.10000181, 1.20682204, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o395.BottomSurface = Enum.SurfaceType.Smooth
o395.TopSurface = Enum.SurfaceType.Smooth
o395.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o395.Position = Vector3.new(-7.10000181, 1.20682204, -5.80001783)
o395.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o396.Name = "FadePart"
o396.Parent = o394
o396.Material = Enum.Material.SmoothPlastic
o396.BrickColor = BrickColor.new("Really black")
o396.Transparency = 0.80000001192093
o396.Position = Vector3.new(-7.10000181, 1.60681999, -5.80001783)
o396.CanCollide = false
o396.Locked = true
o396.Size = Vector3.new(1.60000181, 0.400003791, 1.60000181)
o396.CFrame = CFrame.new(-7.10000181, 1.60681999, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o396.BottomSurface = Enum.SurfaceType.Smooth
o396.TopSurface = Enum.SurfaceType.Smooth
o396.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o396.Position = Vector3.new(-7.10000181, 1.60681999, -5.80001783)
o396.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o397.Name = "FadePart"
o397.Parent = o394
o397.Material = Enum.Material.SmoothPlastic
o397.BrickColor = BrickColor.new("Really black")
o397.Transparency = 0.69999998807907
o397.Position = Vector3.new(-7.10000181, 2.00681996, -5.80001783)
o397.CanCollide = false
o397.Locked = true
o397.Size = Vector3.new(1.60000181, 0.400003791, 1.60000181)
o397.CFrame = CFrame.new(-7.10000181, 2.00681996, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o397.BottomSurface = Enum.SurfaceType.Smooth
o397.TopSurface = Enum.SurfaceType.Smooth
o397.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o397.Position = Vector3.new(-7.10000181, 2.00681996, -5.80001783)
o397.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o398.Name = "FadePart"
o398.Parent = o394
o398.Material = Enum.Material.SmoothPlastic
o398.BrickColor = BrickColor.new("Really black")
o398.Transparency = 0.60000002384186
o398.Position = Vector3.new(-7.10000181, 3.00681591, -5.80001783)
o398.CanCollide = false
o398.Locked = true
o398.Size = Vector3.new(1.60000181, 1.60000384, 1.60000181)
o398.CFrame = CFrame.new(-7.10000181, 3.00681591, -5.80001783, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o398.BottomSurface = Enum.SurfaceType.Smooth
o398.TopSurface = Enum.SurfaceType.Smooth
o398.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o398.Position = Vector3.new(-7.10000181, 3.00681591, -5.80001783)
o398.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o399.Name = "LAModel"
o399.Parent = o270
o400.Parent = o399
o400.Material = Enum.Material.SmoothPlastic
o400.BrickColor = BrickColor.new("Really black")
o400.Transparency = 0.60000002384186
o400.Position = Vector3.new(-8.69998837, 5.00683212, -5.8000598)
o400.Rotation = Vector3.new(180, 0, 180)
o400.CanCollide = false
o400.Locked = true
o400.Size = Vector3.new(1.5999999, 1.60000002, 1.5999999)
o400.CFrame = CFrame.new(-8.69998837, 5.00683212, -5.8000598, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
o400.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o400.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o400.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o400.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o400.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o400.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o400.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o400.Position = Vector3.new(-8.69998837, 5.00683212, -5.8000598)
o400.Orientation = Vector3.new(0, 180, 0)
o400.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o401.Parent = o400
o401.Scale = Vector3.new(1.03999996, 1, 1.03999996)
o401.Scale = Vector3.new(1.03999996, 1, 1.03999996)
o402.Name = "HModel"
o402.Parent = o270
o403.Name = "C"
o403.Parent = o402
o403.Material = Enum.Material.Neon
o403.BrickColor = BrickColor.new("Dark indigo")
o403.Transparency = 0.60000002384186
o403.Position = Vector3.new(-5.89998579, 8.00679398, -6.40002108)
o403.Rotation = Vector3.new(0, 90, 0)
o403.CanCollide = false
o403.Locked = true
o403.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
o403.CFrame = CFrame.new(-5.89998579, 8.00679398, -6.40002108, -4.37113883e-08, 0, 1, -4.3159529e-05, 1, -1.88656295e-12, -1, -4.3159529e-05, -4.37113883e-08)
o403.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o403.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o403.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o403.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o403.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o403.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o403.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o403.Position = Vector3.new(-5.89998579, 8.00679398, -6.40002108)
o403.Orientation = Vector3.new(0, 90, 0)
o403.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o404.Parent = o403
o404.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
o404.MeshType = Enum.MeshType.Sphere
o404.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
o405.Name = "P"
o405.Parent = o403
o405.Transparency = NumberSequence.new(0.75,1)
o405.Size = NumberSequence.new(0.25,0)
o405.Color = ColorSequence.new(Color3.new(0.239216, 0.0823529, 0.521569),Color3.new(0.239216, 0.0823529, 0.521569))
o405.LightEmission = 0.5
o405.Texture = "rbxassetid://37332909"
o405.Acceleration = Vector3.new(0, 1, -1)
o405.Lifetime = NumberRange.new(2,2)
o405.Rate = 1000
o405.Speed = NumberRange.new(1,1)
o405.Color = ColorSequence.new(Color3.new(0.239216, 0.0823529, 0.521569),Color3.new(0.239216, 0.0823529, 0.521569))
o406.Name = "C"
o406.Parent = o402
o406.Material = Enum.Material.Neon
o406.BrickColor = BrickColor.new("Dark indigo")
o406.Transparency = 0.60000002384186
o406.Position = Vector3.new(-6.69998884, 8.00679398, -6.40002108)
o406.Rotation = Vector3.new(0, 90, 0)
o406.CanCollide = false
o406.Locked = true
o406.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
o406.CFrame = CFrame.new(-6.69998884, 8.00679398, -6.40002108, -4.37113883e-08, 0, 1, -4.3159529e-05, 1, -1.88656295e-12, -1, -4.3159529e-05, -4.37113883e-08)
o406.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o406.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o406.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o406.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o406.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o406.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o406.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o406.Position = Vector3.new(-6.69998884, 8.00679398, -6.40002108)
o406.Orientation = Vector3.new(0, 90, 0)
o406.Color = Color3.new(0.239216, 0.0823529, 0.521569)
o407.Parent = o406
o407.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
o407.MeshType = Enum.MeshType.Sphere
o407.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
o408.Name = "P"
o408.Parent = o406
o408.Transparency = NumberSequence.new(0.75,1)
o408.Size = NumberSequence.new(0.25,0)
o408.Color = ColorSequence.new(Color3.new(0.239216, 0.0823529, 0.521569),Color3.new(0.239216, 0.0823529, 0.521569))
o408.LightEmission = 0.5
o408.Texture = "rbxassetid://37332909"
o408.Acceleration = Vector3.new(0, 1, -1)
o408.Lifetime = NumberRange.new(2,2)
o408.Rate = 1000
o408.Speed = NumberRange.new(1,1)
o408.Color = ColorSequence.new(Color3.new(0.239216, 0.0823529, 0.521569),Color3.new(0.239216, 0.0823529, 0.521569))
o409.Parent = o402
o409.Material = Enum.Material.SmoothPlastic
o409.BrickColor = BrickColor.new("Really black")
o409.Transparency = 0.60000002384186
o409.Position = Vector3.new(-6.30001783, 8.20679569, -5.40002108)
o409.CanCollide = false
o409.Locked = true
o409.Size = Vector3.new(3.19999981, 2.40000033, 2.00000024)
o409.CFrame = CFrame.new(-6.30001783, 8.20679569, -5.40002108, 1, 3.05171125e-05, -3.05161811e-05, -3.05161811e-05, 1, 3.05171125e-05, 3.05171125e-05, -3.05161811e-05, 1)
o409.BottomSurface = Enum.SurfaceType.Smooth
o409.TopSurface = Enum.SurfaceType.Smooth
o409.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o409.Position = Vector3.new(-6.30001783, 8.20679569, -5.40002108)
o409.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o410.Parent = o409
o410.MeshId = "http://www.roblox.com/asset/?id=89619684"
o410.Scale = Vector3.new(1.70000005, 1.64999998, 1.64999998)
o410.MeshType = Enum.MeshType.FileMesh
o410.Scale = Vector3.new(1.70000005, 1.64999998, 1.64999998)
o411.Name = "Welder"
o411.Parent = o270
o411.Disabled = true
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

Weld = function(X, Y, Z)
  local CJ = CFrame.new(X.Position)
  local C0 = X.CFrame:inverse() * CJ
  local C1 = Y.CFrame:inverse() * CJ
  if Z then
    C0 = CFrame.new()
  end
  local W = Create("Weld")({Name = "Weld", Parent = X, Part0 = X, Part1 = Y, C0 = C0, C1 = C1})
  return W
end

local WeldObjects = function(parent, h)
 for _,obj in pairs(parent:GetChildren()) do
    if obj.ClassName=="Part" then
	Weld(obj, h)
	obj.Anchored = false
	end
 end
end

WeldObjects(script.Parent.HModel, script.Parent.Head)
WeldObjects(script.Parent.LAModel, script.Parent.LArm)
WeldObjects(script.Parent.LLModel, script.Parent.LLeg)
WeldObjects(script.Parent.RAModel, script.Parent.RArm)
WeldObjects(script.Parent.RLModel, script.Parent.RLeg)
WeldObjects(script.Parent.TModel, script.Parent.Torso)
wait()
script:Destroy()
end,o411)
end))
o412.Name = "UI"
o412.Parent = mas
o413.Name = "BarBody"
o413.Parent = o412
o413.Position = UDim2.new(0,0,0.80000001192093,0)
o413.Size = UDim2.new(0.30000001192093,0,0.079999998211861,0)
o413.Style = Enum.FrameStyle.RobloxRound
o413.Position = UDim2.new(0,0,0.80000001192093,0)
o413.BackgroundColor3 = Color3.new(1, 1, 1)
o414.Name = "BarBack"
o414.Parent = o413
o414.Rotation = 180
o414.Size = UDim2.new(1,0,1,0)
o414.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
o414.BackgroundTransparency = 0.5
o414.BorderColor3 = Color3.new(0, 0, 0)
o414.BorderSizePixel = 0
o415.Name = "Bar"
o415.Parent = o414
o415.Size = UDim2.new(1,0,1,0)
o415.BackgroundColor3 = Color3.new(0.239216, 0.0823529, 0.521569)
o415.BackgroundTransparency = 0.5
o415.BorderColor3 = Color3.new(0, 0, 0)
o415.BorderSizePixel = 0
o416.Name = "Label"
o416.Parent = o414
o416.Rotation = 180
o416.Size = UDim2.new(1,0,1,0)
o416.Text = "Corruption(1000)"
o416.BackgroundColor3 = Color3.new(1, 1, 1)
o416.BackgroundTransparency = 1
o416.ZIndex = 2
o416.Font = Enum.Font.SourceSansBold
o416.FontSize = Enum.FontSize.Size14
o416.TextColor3 = Color3.new(0.694118, 0.694118, 0.694118)
o416.TextScaled = true
o416.TextTransparency = 0.60000002384186
o416.TextWrapped = true
o416.TextXAlignment = Enum.TextXAlignment.Left
o417.Name = "Seal"
o417.Parent = o412
o417.Position = UDim2.new(0.10000000149012,0,0.75,0)
o417.Size = UDim2.new(0.20000000298023,0,0.050000000745058,0)
o417.Style = Enum.FrameStyle.RobloxRound
o417.Position = UDim2.new(0.10000000149012,0,0.75,0)
o417.BackgroundColor3 = Color3.new(1, 1, 1)
o418.Name = "CurrentSeal"
o418.Parent = o417
o418.Position = UDim2.new(0,0,-0.5,0)
o418.Size = UDim2.new(0.10000000149012,0,2,0)
o418.Text = "1"
o418.Position = UDim2.new(0,0,-0.5,0)
o418.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
o418.BackgroundTransparency = 0.80000001192093
o418.BorderSizePixel = 0
o418.ZIndex = 2
o418.Font = Enum.Font.SourceSans
o418.FontSize = Enum.FontSize.Size14
o418.TextColor3 = Color3.new(1, 0.666667, 0)
o418.TextScaled = true
o418.TextWrapped = true
o419.Name = "Back"
o419.Parent = o418
o419.Position = UDim2.new(0.10000000149012,0,0.10000000149012,0)
o419.Size = UDim2.new(0.80000001192093,0,0.80000001192093,0)
o419.Style = Enum.FrameStyle.DropShadow
o419.Position = UDim2.new(0.10000000149012,0,0.10000000149012,0)
o419.Visible = false
o419.BackgroundColor3 = Color3.new(1, 1, 1)
o420.Name = "BarBack"
o420.Parent = o417
o420.Position = UDim2.new(0.15000000596046,0,0,0)
o420.Rotation = 180
o420.Size = UDim2.new(0.85000002384186,0,1,0)
o420.Position = UDim2.new(0.15000000596046,0,0,0)
o420.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
o420.BackgroundTransparency = 0.5
o420.BorderColor3 = Color3.new(0, 0, 0)
o420.BorderSizePixel = 0
o421.Name = "Bar"
o421.Parent = o420
o421.Size = UDim2.new(0.012500000186265,0,1,0)
o421.BackgroundColor3 = Color3.new(0.705882, 0.501961, 1)
o421.BackgroundTransparency = 0.5
o421.BorderColor3 = Color3.new(0, 0, 0)
o421.BorderSizePixel = 0
o422.Name = "Label"
o422.Parent = o420
o422.Rotation = 180
o422.Size = UDim2.new(1,0,1,0)
o422.Text = "Seal Pressure"
o422.BackgroundColor3 = Color3.new(1, 1, 1)
o422.BackgroundTransparency = 1
o422.ZIndex = 2
o422.Font = Enum.Font.SourceSansBold
o422.FontSize = Enum.FontSize.Size14
o422.TextColor3 = Color3.new(0.694118, 0.694118, 0.694118)
o422.TextScaled = true
o422.TextTransparency = 0.60000002384186
o422.TextWrapped = true
o422.TextXAlignment = Enum.TextXAlignment.Left
o423.Name = "HC"
o423.Parent = o412
o423.Position = UDim2.new(1,0,0.34999999403954,0)
o423.Size = UDim2.new(0.090000003576279,0,0.15000000596046,0)
o423.Position = UDim2.new(1,0,0.34999999403954,0)
o423.BackgroundColor3 = Color3.new(1, 1, 1)
o423.BackgroundTransparency = 1
o423.BorderSizePixel = 0
o424.Name = "Hits"
o424.Parent = o423
o424.Size = UDim2.new(1,0,0.5,0)
o424.Text = "2"
o424.BackgroundColor3 = Color3.new(1, 1, 1)
o424.BackgroundTransparency = 1
o424.Font = Enum.Font.Fantasy
o424.FontSize = Enum.FontSize.Size14
o424.TextColor3 = Color3.new(0.384314, 0.145098, 0.819608)
o424.TextScaled = true
o424.TextStrokeTransparency = 0
o424.TextWrapped = true
o425.Name = "TDmg"
o425.Parent = o423
o425.Position = UDim2.new(0,0,0.5,0)
o425.Size = UDim2.new(1,0,0.25,0)
o425.Text = "0"
o425.Position = UDim2.new(0,0,0.5,0)
o425.BackgroundColor3 = Color3.new(1, 1, 1)
o425.BackgroundTransparency = 1
o425.Font = Enum.Font.Fantasy
o425.FontSize = Enum.FontSize.Size14
o425.TextColor3 = Color3.new(0.384314, 0.145098, 0.819608)
o425.TextScaled = true
o425.TextStrokeTransparency = 0
o425.TextWrapped = true
o426.Name = "B"
o426.Parent = o423
o426.Position = UDim2.new(0.20000000298023,0,0.85000002384186,0)
o426.Rotation = 180
o426.Size = UDim2.new(0.60000002384186,0,0.15000000596046,0)
o426.Position = UDim2.new(0.20000000298023,0,0.85000002384186,0)
o426.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
o426.BackgroundTransparency = 0.60000002384186
o426.BorderSizePixel = 0
o427.Name = "Bar"
o427.Parent = o426
o427.Size = UDim2.new(1,0,1,0)
o427.BackgroundColor3 = Color3.new(0.384314, 0.145098, 0.819608)
o427.BackgroundTransparency = 0.40000000596046
o427.BorderSizePixel = 0
o428.Name = "KeysPressed"
o428.Parent = o412
o428.Position = UDim2.new(-0.30000001192093,0,0.68999999761581,0)
o428.Size = UDim2.new(0.30000001192093,0,0.03999999910593,0)
o428.Position = UDim2.new(-0.30000001192093,0,0.68999999761581,0)
o428.BackgroundColor3 = Color3.new(1, 1, 1)
o428.BackgroundTransparency = 1
o429.Name = "Template"
o429.Parent = o428
o429.Size = UDim2.new(0.125,0,1,0)
o429.Text = ">"
o429.BackgroundColor3 = Color3.new(1, 1, 1)
o429.BackgroundTransparency = 1
o429.Font = Enum.Font.SourceSans
o429.FontSize = Enum.FontSize.Size14
o429.TextColor3 = Color3.new(1, 1, 1)
o429.TextScaled = true
o429.TextStrokeTransparency = 0
o429.TextWrapped = true
o430.Name = "B"
o430.Parent = o428
o430.Position = UDim2.new(1,0,-0,0)
o430.Size = UDim2.new(0.15000000596046,0,1,0)
o430.Text = "Display Inputs"
o430.Position = UDim2.new(1,0,-0,0)
o430.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
o430.BackgroundTransparency = 0.80000001192093
o430.BorderColor3 = Color3.new(0, 0, 0)
o430.Font = Enum.Font.SourceSans
o430.FontSize = Enum.FontSize.Size14
o430.TextColor3 = Color3.new(1, 1, 1)
o430.TextScaled = true
o430.TextWrapped = true
o431.Name = "BBarBody"
o431.Parent = o412
o431.Position = UDim2.new(0.15999999642372,0,0.87999999523163,0)
o431.Size = UDim2.new(0.14000000059605,0,0.050000000745058,0)
o431.Style = Enum.FrameStyle.RobloxRound
o431.Position = UDim2.new(0.15999999642372,0,0.87999999523163,0)
o431.BackgroundColor3 = Color3.new(1, 1, 1)
o432.Name = "BarBack"
o432.Parent = o431
o432.Rotation = 180
o432.Size = UDim2.new(1,0,1,0)
o432.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
o432.BackgroundTransparency = 0.5
o432.BorderColor3 = Color3.new(0, 0, 0)
o432.BorderSizePixel = 0
o433.Name = "Bar"
o433.Parent = o432
o433.Size = UDim2.new(1,0,1,0)
o433.BackgroundColor3 = Color3.new(0.384314, 0.145098, 0.819608)
o433.BackgroundTransparency = 0.5
o433.BorderColor3 = Color3.new(0, 0, 0)
o433.BorderSizePixel = 0
o434.Name = "Label"
o434.Parent = o432
o434.Rotation = 180
o434.Size = UDim2.new(1,0,1,0)
o434.Text = "Barrier"
o434.BackgroundColor3 = Color3.new(1, 1, 1)
o434.BackgroundTransparency = 1
o434.ZIndex = 2
o434.Font = Enum.Font.SourceSansBold
o434.FontSize = Enum.FontSize.Size14
o434.TextColor3 = Color3.new(0.694118, 0.694118, 0.694118)
o434.TextScaled = true
o434.TextTransparency = 0.60000002384186
o434.TextWrapped = true
o434.TextXAlignment = Enum.TextXAlignment.Left
o435.Name = "movelist"
o435.Parent = mas
o436.Name = "M"
o436.Parent = o435
o436.Position = UDim2.new(0.83999997377396,0,0.60000002384186,0)
o436.Size = UDim2.new(0.15999999642372,0,0.40000000596046,0)
o436.Position = UDim2.new(0.83999997377396,0,0.60000002384186,0)
o436.CanvasSize = UDim2.new(0,0,3,0)
o436.BackgroundColor3 = Color3.new(0, 0, 0)
o436.BackgroundTransparency = 0.60000002384186
o436.BorderSizePixel = 0
o436.ScrollBarThickness = 14
o437.Name = "ML"
o437.Parent = o436
o437.Position = UDim2.new(0,0,0.029999999329448,0)
o437.Size = UDim2.new(0.89999997615814,0,0.029999999329448,0)
o437.Text = "DASQ - Summon Nemesis/Unsummon Nemesis(Need more than 200 Corruption to summon)"
o437.Position = UDim2.new(0,0,0.029999999329448,0)
o437.BackgroundColor3 = Color3.new(1, 1, 1)
o437.BackgroundTransparency = 1
o437.Font = Enum.Font.Fantasy
o437.FontSize = Enum.FontSize.Size14
o437.TextColor3 = Color3.new(1, 1, 1)
o437.TextScaled = true
o437.TextStrokeTransparency = 0
o437.TextWrapped = true
o437.TextXAlignment = Enum.TextXAlignment.Left
o438.Name = "ML2"
o438.Parent = o436
o438.Position = UDim2.new(0,0,0.059999998658895,0)
o438.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o438.Text = "AADQ - Tyrant Uppercut(Costs 150 Corruption)"
o438.Position = UDim2.new(0,0,0.059999998658895,0)
o438.BackgroundColor3 = Color3.new(1, 1, 1)
o438.BackgroundTransparency = 1
o438.Font = Enum.Font.Fantasy
o438.FontSize = Enum.FontSize.Size14
o438.TextColor3 = Color3.new(1, 1, 1)
o438.TextScaled = true
o438.TextStrokeTransparency = 0
o438.TextWrapped = true
o438.TextXAlignment = Enum.TextXAlignment.Left
o439.Name = "ML5"
o439.Parent = o436
o439.Position = UDim2.new(0,0,0.10000000149012,0)
o439.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o439.Text = "ASASQ - Nemesis Barrage (Costs 150 Corruption)"
o439.Position = UDim2.new(0,0,0.10000000149012,0)
o439.BackgroundColor3 = Color3.new(1, 1, 1)
o439.BackgroundTransparency = 1
o439.Font = Enum.Font.Fantasy
o439.FontSize = Enum.FontSize.Size14
o439.TextColor3 = Color3.new(1, 1, 1)
o439.TextScaled = true
o439.TextStrokeTransparency = 0
o439.TextWrapped = true
o439.TextXAlignment = Enum.TextXAlignment.Left
o440.Name = "ML4"
o440.Parent = o436
o440.Position = UDim2.new(0,0,0.079999998211861,0)
o440.Size = UDim2.new(0.89999997615814,0,0.019999999552965,0)
o440.Text = "|> ASDASDWWQ - Unbounded Wrath (During Terror Assault | Costs 200 Corruption | Hold Q)"
o440.Position = UDim2.new(0,0,0.079999998211861,0)
o440.BackgroundColor3 = Color3.new(1, 1, 1)
o440.BackgroundTransparency = 1
o440.Font = Enum.Font.Fantasy
o440.FontSize = Enum.FontSize.Size14
o440.TextColor3 = Color3.new(1, 1, 1)
o440.TextScaled = true
o440.TextStrokeTransparency = 0
o440.TextWrapped = true
o440.TextXAlignment = Enum.TextXAlignment.Left
o441.Name = "ML3"
o441.Parent = o436
o441.Position = UDim2.new(0,0,0.070000000298023,0)
o441.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o441.Text = "ASASE - Terror Assault"
o441.Position = UDim2.new(0,0,0.070000000298023,0)
o441.BackgroundColor3 = Color3.new(1, 1, 1)
o441.BackgroundTransparency = 1
o441.Font = Enum.Font.Fantasy
o441.FontSize = Enum.FontSize.Size14
o441.TextColor3 = Color3.new(1, 1, 1)
o441.TextScaled = true
o441.TextStrokeTransparency = 0
o441.TextWrapped = true
o441.TextXAlignment = Enum.TextXAlignment.Left
o442.Name = "ML6"
o442.Parent = o436
o442.Position = UDim2.new(0,0,0.10999999940395,0)
o442.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o442.Text = "SAX - Siege Revolver"
o442.Position = UDim2.new(0,0,0.10999999940395,0)
o442.BackgroundColor3 = Color3.new(1, 1, 1)
o442.BackgroundTransparency = 1
o442.Font = Enum.Font.Fantasy
o442.FontSize = Enum.FontSize.Size14
o442.TextColor3 = Color3.new(1, 1, 1)
o442.TextScaled = true
o442.TextStrokeTransparency = 0
o442.TextWrapped = true
o442.TextXAlignment = Enum.TextXAlignment.Left
o443.Name = "E"
o443.Parent = o436
o443.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o443.Text = "F - Equip/ Unequip"
o443.BackgroundColor3 = Color3.new(1, 1, 1)
o443.BackgroundTransparency = 1
o443.Font = Enum.Font.Fantasy
o443.FontSize = Enum.FontSize.Size14
o443.TextColor3 = Color3.new(1, 1, 1)
o443.TextScaled = true
o443.TextStrokeTransparency = 0
o443.TextWrapped = true
o443.TextXAlignment = Enum.TextXAlignment.Left
o444.Name = "C"
o444.Parent = o436
o444.Position = UDim2.new(0,0,0.0099999997764826,0)
o444.Size = UDim2.new(0.89999997615814,0,0.019999999552965,0)
o444.Text = "CTRL (Button, not keystroke) - 2D Mode (Lock On by putting mouse near player/humanoid)"
o444.Position = UDim2.new(0,0,0.0099999997764826,0)
o444.BackgroundColor3 = Color3.new(1, 1, 1)
o444.BackgroundTransparency = 1
o444.Font = Enum.Font.Fantasy
o444.FontSize = Enum.FontSize.Size14
o444.TextColor3 = Color3.new(1, 1, 1)
o444.TextScaled = true
o444.TextStrokeTransparency = 0
o444.TextWrapped = true
o444.TextXAlignment = Enum.TextXAlignment.Left
o445.Name = "ML7"
o445.Parent = o436
o445.Position = UDim2.new(0,0,0.11999999731779,0)
o445.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o445.Text = "ASDE - Dreaded Fang (Delayable)"
o445.Position = UDim2.new(0,0,0.11999999731779,0)
o445.BackgroundColor3 = Color3.new(1, 1, 1)
o445.BackgroundTransparency = 1
o445.Font = Enum.Font.Fantasy
o445.FontSize = Enum.FontSize.Size14
o445.TextColor3 = Color3.new(1, 1, 1)
o445.TextScaled = true
o445.TextStrokeTransparency = 0
o445.TextWrapped = true
o445.TextXAlignment = Enum.TextXAlignment.Left
o446.Name = "ML8"
o446.Parent = o436
o446.Position = UDim2.new(0,0,0.12999999523163,0)
o446.Size = UDim2.new(0.89999997615814,0,0.019999999552965,0)
o446.Text = "ASDQ - Lucifer Crusher (Costs 80 Corruption | Delayable)"
o446.Position = UDim2.new(0,0,0.12999999523163,0)
o446.BackgroundColor3 = Color3.new(1, 1, 1)
o446.BackgroundTransparency = 1
o446.Font = Enum.Font.Fantasy
o446.FontSize = Enum.FontSize.Size14
o446.TextColor3 = Color3.new(1, 1, 1)
o446.TextScaled = true
o446.TextStrokeTransparency = 0
o446.TextWrapped = true
o446.TextXAlignment = Enum.TextXAlignment.Left
o447.Name = "ML9"
o447.Parent = o436
o447.Position = UDim2.new(0,0,0.15000000596046,0)
o447.Size = UDim2.new(0.89999997615814,0,0.0099999997764826,0)
o447.Text = "DDC - Riser (Must be grounded)"
o447.Position = UDim2.new(0,0,0.15000000596046,0)
o447.BackgroundColor3 = Color3.new(1, 1, 1)
o447.BackgroundTransparency = 1
o447.Font = Enum.Font.Fantasy
o447.FontSize = Enum.FontSize.Size14
o447.TextColor3 = Color3.new(1, 1, 1)
o447.TextScaled = true
o447.TextStrokeTransparency = 0
o447.TextWrapped = true
o447.TextXAlignment = Enum.TextXAlignment.Left
o448.Name = "ML10"
o448.Parent = o436
o448.Position = UDim2.new(0,0,0.15999999642372,0)
o448.Size = UDim2.new(0.89999997615814,0,0.019999999552965,0)
o448.Text = "ADADQ - Release Seals (Costs 100 Corruption | Seal level must be greater than 1)"
o448.Position = UDim2.new(0,0,0.15999999642372,0)
o448.BackgroundColor3 = Color3.new(1, 1, 1)
o448.BackgroundTransparency = 1
o448.Font = Enum.Font.Fantasy
o448.FontSize = Enum.FontSize.Size14
o448.TextColor3 = Color3.new(1, 1, 1)
o448.TextScaled = true
o448.TextStrokeTransparency = 0
o448.TextWrapped = true
o448.TextXAlignment = Enum.TextXAlignment.Left
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = script
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Mouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Controller = Player.PlayerScripts:WaitForChild("ControlScript")
local Head = Character:WaitForChild("Head")
local Torso = Character:WaitForChild("Torso")
local RightArm = Character:WaitForChild("Right Arm")
local LeftArm = Character:WaitForChild("Left Arm")
local RightLeg = Character:WaitForChild("Right Leg")
local LeftLeg = Character:WaitForChild("Left Leg")
local RootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local Neck = Torso:WaitForChild("Neck")
local RightShoulder = Torso:WaitForChild("Right Shoulder")
local LeftShoulder = Torso:WaitForChild("Left Shoulder")
local LeftHip = Torso:WaitForChild("Left Hip")
local RightHip = Torso:WaitForChild("Right Hip")
local RootJoint = RootPart:WaitForChild("RootJoint")
local NLSC0 = LeftShoulder.C0
local NLSC1 = LeftShoulder.C1
local NRSC0 = RightShoulder.C0
local NRSC1 = RightShoulder.C1
local NLHC0 = LeftHip.C0
local NLHC1 = LeftHip.C1
local NRHC0 = RightHip.C0
local NRHC1 = RightHip.C1
local NNC0 = Neck.C0
local NNC1 = Neck.C1
local NRJC0 = RootJoint.C0
local NRJC1 = RootJoint.C1
local animate = Character:WaitForChild("Animate")
local sound = Character:WaitForChild("Sound")
local lsound = sound:WaitForChild("LocalSound")
local chatServ = game:GetService("Chat")
local runServ = game:GetService("RunService")
local debServ = game:GetService("Debris")
local radian = math.rad
local huge = math.huge
local random = math.random
local cosine = math.cos
local Vec3 = Vector3.new
local cFrame = CFrame.new
local Euler = CFrame.fromEulerAnglesXYZ
local BrickCol = BrickColor.new
local Col3 = Color3.new
local Inst = Instance.new
local UD2 = UDim2.new
local F1, F2, F3 = Inst("Folder", Character), Inst("Folder"), Inst("Folder")
F1.Name = "Storage Folder"
F2.Parent = F1
F2.Name = "Parts"
F3.Parent = F1
F3.Name = "Effects"
local Drag_To_Part = Inst("Part", F2)
Drag_To_Part.Transparency = 1
Drag_To_Part.Name = "Drag-to-part"
Drag_To_Part.Size = Vector3.new(0.2, 0.2, 0.2)
Drag_To_Part.Anchored = false
Drag_To_Part.CanCollide = false
Drag_To_Part.Locked = true
local DTPWeld = Inst("Weld", Drag_To_Part)
DTPWeld.Part0 = RootPart
DTPWeld.Part1 = Drag_To_Part
local InputCommand = ""
local Animation = "Idle"
local Speed = {10, 0}
local DragTable = {}
local InputFrameTable = {}
local Booleans = {
  Equipped = false,
  Attacking = false,
  SoulOut = false,
  SoulFollow = true,
  SoulAttacking = false,
  SoulAnimOverride = false,
  Successful_KeyStroke = false,
  KeyStroke_CoolDown = false,
  AnimOverride = false,
  JumpAnim = false,
  DisableJump = false,
  AntiTrip = false,
  Invincible = false,
  CorRegen = true,
  EndAllDrags = false,
  Forward = false,
  Backward = false,
  Crouching = false,
  CamFollow = true,
  BarrierGuard = false,
  CanGuard = true,
  SealReleased = false,
  SPDecay = true,
  GyroUse = true,
  Dashing = false,
  CanDash = true,
  ComboPause = false
}
local Numbers = {
  Buff = 1,
  LastHealth = Humanoid.Health,
  rBuff = 0
}
local CoolDowns = {
  TerrorAssault = {0, 15},
  NemesisBarrage = {0, 18},
  SiegeRevolver = {1.6, 1.6},
  DreadedFang = {0, 5},
  LuciferCrusher = {0, 7},
  Riser = {0, 4},
  BarrierRegen = {3, 3},
  NightStalk = {0, 4}
}
local BufferLimiters = {
  TyrantUppercut = {0, 2},
  NemesisBarrage = {0, 1},
  SiegeRevolver = {0, 1},
  SummonNemesis = {0, 1},
  DreadedFang = {0, 1},
  LuciferCrusher = {0, 1},
  Riser = {0, 1},
  SealRelease = {0, 1},
  TerrorAssault = {0, 1},
  NightStalk = {0, 1},
  Weak = {0, 6},
  Medium = {0, 4},
  Strong = {0, 3},
  Drive = {0, 2},
  SDrive = {0, 2}
}
local HitDebounces = {}
local HitCount = {
  false,
  0,
  0,
  {7, 7}
}
local Sounds = {
  Sharp = {
    Small = 153092296,
    MedL = 153092292,
    MedH = 153092285,
    Large = 153092274
  },
  Blunt = {
    Small = 153092249,
    Med = 153092238,
    LargeF = 153092227,
    LargeA = 153092217,
    Large = 153092213
  },
  Body = {
    Blood = 206082273,
    Grab = 240429615,
    KnuckleCrack = 240428955,
    GenHit1 = 169380525,
    GenHit2 = 169380528,
    GenHit3 = 169380538
  }
}
local TwoD = false
local CamInterrupt = false
local TargetInfo = {nil, nil}
local Colors = {
  "Dark indigo",
  "Royal purple",
  "Alder",
  "Bright violet"
}
local sine = 0
local change = 1
local c1, c2
local UI = script:WaitForChild("UI")
UI.Parent = Player.PlayerGui
local CBar = UI:WaitForChild("BarBody"):WaitForChild("BarBack"):WaitForChild("Bar")
local BBarMain = UI:WaitForChild("BBarBody")
local BBar = BBarMain:WaitForChild("BarBack"):WaitForChild("Bar")
local CLabel = UI:WaitForChild("BarBody"):WaitForChild("BarBack"):WaitForChild("Label")
local SBar = UI:WaitForChild("Seal"):WaitForChild("BarBack"):WaitForChild("Bar")
local CSeal = UI:WaitForChild("Seal"):WaitForChild("CurrentSeal")
local KP = UI:WaitForChild("KeysPressed")
local KPTemplate = KP:WaitForChild("Template")
local KPButton = KP:WaitForChild("B")
local movelist = script:WaitForChild("movelist")
movelist.Parent = Player.PlayerGui
local KPBO = false
KPButton.MouseButton1Click:connect(function()
  if not KPBO then
    KPBO = true
    KP:TweenPosition(UD2(0, 0, 0.69, 0), _, "Linear", 0.2, true)
    KPButton.Text = "Hide Inputs"
  elseif KPBO then
    KPBO = false
    KP:TweenPosition(UD2(-0.3, 0, 0.69, 0), _, "Linear", 0.2, true)
    KPButton.Text = "Display Inputs"
  end
end)
local HC = UI:WaitForChild("HC")
local HCB = HC:WaitForChild("B")
local HCBB = HCB:WaitForChild("Bar")
local HCH = HC:WaitForChild("Hits")
local HCTD = HC:WaitForChild("TDmg")
local Corruption = Inst("DoubleConstrainedValue")
Corruption.MaxValue = 100
Corruption.MinValue = 0
Corruption.Value = 0
local Barrier = Inst("DoubleConstrainedValue")
Barrier.MaxValue = 200
Barrier.MinValue = 0
Barrier.Value = Barrier.MaxValue
local SealInfo = {
  1,
  80,
  0.3
}
local SealPressure = Inst("DoubleConstrainedValue")
SealPressure.MaxValue = SealInfo[2]
SealPressure.MinValue = -0.01
SealPressure.Value = 1
local msd = script:WaitForChild("M.S.D")
local soul = script:WaitForChild("Soul")
local MOV = msd:WaitForChild("ObjectValues")
--local MW = msd:WaitForChild("Welder")
local SW = soul:WaitForChild("Welder")
--MW.Disabled = false
SW.Disabled = false
repeat
	--repeat
		wait()
--	until not MW.Parent
until not SW.Parent
local MSD = {
  Left = {
    Arm = MOV:WaitForChild("Left"):WaitForChild("Arm").Value,
    CM1 = MOV:WaitForChild("Left"):WaitForChild("CM1").Value,
    CM2 = MOV:WaitForChild("Left"):WaitForChild("CM2").Value,
    CM3 = MOV:WaitForChild("Left"):WaitForChild("CM3").Value,
    LM1 = MOV:WaitForChild("Left"):WaitForChild("LM1").Value,
    LM2 = MOV:WaitForChild("Left"):WaitForChild("LM2").Value,
    Particles = MOV:WaitForChild("Left"):WaitForChild("Particles").Value,
    CP1 = MOV:WaitForChild("Left"):WaitForChild("CP1").Value,
    CP2 = MOV:WaitForChild("Left"):WaitForChild("CP2").Value,
    CP3 = MOV:WaitForChild("Left"):WaitForChild("CP3").Value
  },
  Right = {
    Arm = MOV:WaitForChild("Right"):WaitForChild("Arm").Value,
    CM1 = MOV:WaitForChild("Right"):WaitForChild("CM1").Value,
    CM2 = MOV:WaitForChild("Right"):WaitForChild("CM2").Value,
    CM3 = MOV:WaitForChild("Right"):WaitForChild("CM3").Value,
    LM1 = MOV:WaitForChild("Right"):WaitForChild("LM1").Value,
    LM2 = MOV:WaitForChild("Right"):WaitForChild("LM2").Value,
    Particles = MOV:WaitForChild("Right"):WaitForChild("Particles").Value,
    CP1 = MOV:WaitForChild("Right"):WaitForChild("CP1").Value,
    CP2 = MOV:WaitForChild("Right"):WaitForChild("CP2").Value,
    CP3 = MOV:WaitForChild("Right"):WaitForChild("CP3").Value
  },
  Torso = MOV:WaitForChild("TorPart").Value,
  ColParts = {}
}
debServ:AddItem(MOV, 0)
local Soul = {
  Head = soul:WaitForChild("Head"),
  Torso = soul:WaitForChild("Torso"),
  Root = soul:WaitForChild("Root"),
  Root2 = soul:WaitForChild("Root2"),
  LArm = soul:WaitForChild("LArm"),
  RArm = soul:WaitForChild("RArm"),
  RLeg = soul:WaitForChild("RLeg"),
  LLeg = soul:WaitForChild("LLeg"),
  Neck = soul:WaitForChild("Torso"):WaitForChild("Neck"),
  LHip = soul:WaitForChild("Torso"):WaitForChild("Left Hip"),
  RHip = soul:WaitForChild("Torso"):WaitForChild("Right Hip"),
  LShoulder = soul:WaitForChild("Torso"):WaitForChild("Left Shoulder"),
  RShoulder = soul:WaitForChild("Torso"):WaitForChild("Right Shoulder"),
  RootHip = soul:WaitForChild("Root"):WaitForChild("Root Hip"),
  EP1 = soul:WaitForChild("EP1").Value,
  EP2 = soul:WaitForChild("EP2").Value,
  NNC0 = soul:WaitForChild("Torso"):WaitForChild("Neck").C0,
  NNC1 = soul:WaitForChild("Torso"):WaitForChild("Neck").C1
}
local ArmWeld1 = Inst("Weld")
ArmWeld1.Part0 = RightArm
ArmWeld1.Part1 = MSD.Right.Arm
ArmWeld1.Parent = RightArm
local ArmWeld2 = Inst("Weld")
ArmWeld2.Part0 = LeftArm
ArmWeld2.Part1 = MSD.Left.Arm
ArmWeld2.Parent = LeftArm
local TorWeld = Inst("Weld")
TorWeld.Part0 = Torso
TorWeld.Part1 = MSD.Torso
TorWeld.Parent = Torso
msd.Parent = F2
Soul.Root.CFrame = RootPart.CFrame * cFrame(0, 2.5, 5)
Soul.Torso.Name = "Tor"
Soul.Head.Name = "Hed"
local SoulPos = Inst("BodyPosition")
SoulPos.MaxForce = Vec3(huge, huge, huge)
SoulPos.Position = (RootPart.CFrame * cFrame(0, 2.5, 4)).p
SoulPos.P = 60000
local SoulGyr = Inst("BodyGyro")
SoulGyr.MaxTorque = Vec3(0, huge, 0)
SoulGyr.Parent = Soul.Root
SoulGyr.CFrame = cFrame(Soul.Root.Position, RootPart.Position)
SoulGyr.P = 30000
local SoulGyr2 = Inst("BodyGyro")
SoulGyr2.MaxTorque = Vec3(huge, 0, huge)
SoulGyr2.Parent = Soul.Root2
RightArm.Transparency = 1
LeftArm.Transparency = 1
local smol = Inst("BlockMesh", RightArm)
smol.Scale = Vec3(0, 0, 0)
local smol = Inst("BlockMesh", LeftArm)
smol.Scale = Vec3(0, 0, 0)
for _, p in pairs(msd:GetChildren()) do
  if p:IsA("BasePart") then
    if p.Name == "C" then
      table.insert(MSD.ColParts, {p, 0})
    elseif p.Name == "C2" then
      table.insert(MSD.ColParts, {p, 1})
    end
  end
end
local tshirt = Character:FindFirstChild("Shirt Graphic")
if tshirt and tshirt.Graphic == "http://www.roblox.com/asset/?id=369310923" then
  Colors[1] = "Crimson"
  Colors[2] = "Really red"
  Colors[3] = "Persimmon"
  Colors[4] = "Cocoa"
  Corruption.Value = 50
  SealInfo[1] = 2
  SealPressure.MaxValue = SealInfo[2] * SealInfo[1]
  for _, p in pairs(msd:GetChildren()) do
    if p:IsA("BasePart") then
      if p.Name == "C" then
        p.BrickColor = BrickCol("Crimson")
      elseif p.Name == "C2" then
        p.BrickColor = BrickCol("Persimmon")
      end
      p.Name = "Lmao"
    end
  end
  for _, p in pairs(soul:GetChildren()) do
    if p:IsA("BasePart") and p.Name == "C" then
      p.BrickColor = BrickCol("Crimson")
      p.Name = "Part"
    end
  end
end
MSD.Right.Particles.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Left.Particles.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Right.CP1.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Left.CP1.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Right.CP2.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Left.CP2.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Right.CP3.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
MSD.Left.CP3.Color = ColorSequence.new(BrickCol(Colors[1]).Color)
Soul.EP1.Color = ColorSequence.new(BrickCol(Colors[2]).Color)
Soul.EP2.Color = ColorSequence.new(BrickCol(Colors[2]).Color)
Humanoid.JumpPower = 85
Humanoid.WalkSpeed = Speed[1] + Speed[2]
CBar.BackgroundColor3 = BrickCol(Colors[1]).Color
SBar.BackgroundColor3 = BrickCol(Colors[3]).Color
HCBB.BackgroundColor3 = BrickCol(Colors[2]).Color
BBar.BackgroundColor3 = BrickCol(Colors[2]).Color
HCH.TextColor3 = BrickCol(Colors[2]).Color
HCTD.TextColor3 = BrickCol(Colors[2]).Color
CBar:TweenSize(UD2(Corruption.Value / Corruption.MaxValue, 0, 1, 0), _, "Linear", 0.3, true)
SBar:TweenSize(UD2(SealPressure.Value / SealPressure.MaxValue, 0, 1, 0), _, "Linear", 0.3, true)
local FakeRoot = Inst("Part", F2)
FakeRoot.Name = "FakeRoot"
FakeRoot.Anchored = false
FakeRoot.CanCollide = false
FakeRoot.Locked = true
FakeRoot.Transparency = 1
FakeRoot.Size = Vec3(2, 2, 1)
local FRM = Inst("BlockMesh", FakeRoot)
FRM.Scale = Vec3(0, 0, 0)
local FRW = Inst("Weld", FakeRoot)
FRW.Part0 = RootPart
FRW.Part1 = FakeRoot
local Balancer = Inst("BodyGyro", FakeRoot)
Balancer.MaxTorque = Vec3(0, 0, 0)
Balancer.P = 60000
local Directer = Inst("BodyGyro", RootPart)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1
if runServ:IsStudio() then
  Drag_To_Part.Transparency = 1
  local DTPM = Inst("BlockMesh", Drag_To_Part)
  DTPM.Scale = Vec3(6, 6, 6)
end
local ArtificialHB = Inst("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
local frame = 0.016666666666666666
local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
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
function CameraManager()
  if TwoD and not CamInterrupt then
    if Humanoid.Health > 0 then
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Scriptable"
      Humanoid.AutoRotate = false
      if Booleans.GyroUse then
        Directer.MaxTorque = Vec3(0, huge, 0)
      else
        Directer.MaxTorque = Vec3(0, 0, 0)
      end
      if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
        if Booleans.CamFollow then
          CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
          Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
        else
          CPart.Position = RootPart.Position
        end
      else
        local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
        CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
      end
      Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, radian(90), 0), 0.2)
    else
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Custom"
      Controller.Disabled = false
    end
  end
end
function MakeText(text, font, duration, tcr, tcg, tcb, scr, scg, scb, cframe)
  local tpart = Inst("Part")
  tpart.Parent = F2
  tpart.Transparency = 1
  tpart.Name = "WYYYYYYYYYYRRRRRR"
  tpart.Anchored = true
  tpart.CanCollide = false
  tpart.Locked = true
  tpart.Size = Vec3(0.2, 0.2, 0.2)
  tpart.CFrame = cframe * cFrame(math.random(-2, 2), 0, math.random(-2, 2))
  local bill = Inst("BillboardGui")
  bill.Parent = tpart
  bill.AlwaysOnTop = true
  bill.Name = "MUDAMUDAMUDAMUDAMUDA"
  bill.Size = UD2(6, 0, 2, 0)
  bill.StudsOffset = Vec3(0, 1, 0)
  local counter = 0
  local textl = Inst("TextLabel")
  textl.Parent = bill
  textl.Name = "ZA WALRUDO"
  textl.BackgroundTransparency = 1
  textl.Size = UD2(1, 0, 1, 0)
  textl.Font = font
  textl.Text = text
  textl.TextColor3 = Col3(tcr / 255, tcg / 255, tcb / 255)
  textl.TextScaled = true
  textl.TextStrokeColor3 = Col3(scr / 255, scg / 255, scb / 255)
  textl.TextStrokeTransparency = 0
  coroutine.resume(coroutine.create(function()
    while textl.TextTransparency < 1 do
      swait()
      if bill.StudsOffset.Y >= 5 then
        if counter >= duration then
          textl.TextTransparency = textl.TextTransparency + 0.15
          textl.TextStrokeTransparency = textl.TextStrokeTransparency + 0.15
        else
          counter = counter + 0.1
        end
      else
        bill.StudsOffset = Vec3(0, bill.StudsOffset.Y + 0.15, 0)
      end
    end
    debServ:AddItem(bill, 0)
    debServ:AddItem(textl, 0)
    debServ:AddItem(tpart, 0)
  end))
end
function lerp(object, newCFrame, alpha)
  return object:lerp(newCFrame, alpha)
end
function FindHum(parent)
  local hm
  for _, HM in pairs(parent:GetChildren()) do
    if HM:IsA("Humanoid") then
      hm = HM
    end
  end
  return hm
end
function Sound(parent, ID, Volume, Pitch, Looped)
  local sound = Inst("Sound", parent)
  sound.SoundId = "http://roblox.com/asset/?id=" .. ID
  sound.Volume = Volume
  sound.Pitch = Pitch
  sound.Looped = Looped
  sound:Play()
  return sound
end
function CreatePart(className, parent, Brickcolor, Material, Transparency, Reflectance, Name, Size, Position, Rotation, MeshClass, MeshScale, MeshId, MeshType)
  local Part = Inst(className, parent)
  Part.BrickColor = BrickCol(Brickcolor)
  Part.Transparency = Transparency
  Part.Reflectance = Reflectance
  Part.Material = Material
  Part.Name = Name
  Part.Anchored = true
  Part.CanCollide = false
  Part.Locked = true
  Part.Size = Size
  Part.Position = Position
  Part.Rotation = Rotation
  Part.TopSurface = "SmoothNoOutlines"
  Part.BottomSurface = "SmoothNoOutlines"
  Part.FrontSurface = "SmoothNoOutlines"
  Part.BackSurface = "SmoothNoOutlines"
  Part.RightSurface = "SmoothNoOutlines"
  Part.LeftSurface = "SmoothNoOutlines"
  local Mesh = Inst(MeshClass, Part)
  Mesh.Scale = MeshScale
  if MeshClass == "SpecialMesh" then
    Mesh.MeshId = MeshId
    Mesh.MeshType = MeshType
  end
  return Part, Mesh
end
function Supressor(hit, hasDur, dur, pose, hasGy, GyX, GyY, GyZ)
  local humanoid = FindHum(hit.Parent)
  if humanoid then
    humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
  end
  local model = Inst("Model", hit.Parent)
  local FPR = CreatePart("Part", model, "White", "Plastic", 1, 1, "HumanoidRootPart", Vec3(2, 2, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  local FPT = CreatePart("Part", model, "White", "Plastic", 1, 1, "Torso", Vec3(2, 2, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  FPT.Anchored = false
  local rJ = Inst("Weld", FPR)
  rJ.Part0 = FPR
  rJ.Part1 = FPT
  rJ.C0 = cFrame(0, -1, 0)
  rJ.C1 = cFrame(0, -1, 0)
  local FPH = CreatePart("Part", model, "White", "Plastic", 1, 1, "Head", Vec3(2, 1, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  local nk = Inst("Weld", FPT)
  nk.Part0 = FPT
  nk.Part1 = FPH
  nk.C0 = cFrame(0, 1.5, 0)
  FPH.Anchored = false
  local FPLL = CreatePart("Part", model, "White", "Plastic", 1, 1, "Left Leg", Vec3(1, 2, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  local lH = Inst("Weld", FPT)
  lH.Part0 = FPT
  lH.Part1 = FPLL
  lH.C0 = cFrame(-1.5, -1, 0)
  lH.C1 = cFrame(-1, 1, 0)
  FPLL.Anchored = false
  local FPRL = CreatePart("Part", model, "White", "Plastic", 1, 1, "Right Leg", Vec3(1, 2, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  local rH = Inst("Weld", FPT)
  rH.Part0 = FPT
  rH.Part1 = FPRL
  rH.C0 = cFrame(1.5, -1, 0)
  rH.C1 = cFrame(1, 1, 0)
  FPRL.Anchored = false
  local FPLA = CreatePart("Part", model, "White", "Plastic", 1, 1, "Left Arm", Vec3(1, 2, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  local lA = Inst("Weld", FPT)
  lA.Part0 = FPT
  lA.Part1 = FPLA
  lA.C0 = cFrame(-1.5, 0.5, 0)
  lA.C1 = cFrame(0, 0.5, 0)
  FPLA.Anchored = false
  local FPRA = CreatePart("Part", model, "White", "Plastic", 1, 1, "Right Arm", Vec3(1, 2, 1), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
  local rA = Inst("Weld", FPT)
  rA.Part0 = FPT
  rA.Part1 = FPRA
  rA.C0 = cFrame(1.5, 0.5, 0)
  rA.C1 = cFrame(0, 0.5, 0)
  FPRA.Anchored = false
  FPR.Anchored = false
  local parts = {}
  local joints = {}
  if hasGy then
    local fall = Inst("BodyGyro", FPR)
    fall.MaxTorque = Vec3(huge, 0, huge)
    fall.CFrame = cFrame(0, 0, 0) * Euler(radian(GyX), radian(GyY), radian(GyZ))
    fall.P = 40000
  end
  for _, p in pairs(model:GetChildren()) do
    if p.Name == hit.Name then
      p.CFrame = hit.CFrame
    end
    table.insert(parts, p)
  end
  for _, p in pairs(hit.Parent:GetChildren()) do
    for _, i in pairs(parts) do
      if p.Name == i.Name then
        local joint = Inst("Weld", i)
        joint.Part0 = i
        joint.Part1 = p
        table.insert(joints, joint)
      end
    end
  end
  if pose == "Hit" then
    nk.C0 = cFrame(0, 1.5, 0) * Euler(radian(-25), radian(0), radian(0))
    nk.C1 = cFrame(0, 0, 0) * Euler(radian(0), radian(0), radian(0))
    rJ.C0 = cFrame(0, -1, 0) * Euler(radian(-30), radian(0), radian(0))
    rJ.C1 = cFrame(0, -1, 0) * Euler(radian(0), radian(0), radian(0))
    lA.C0 = cFrame(-1.5, 0.5, 0) * Euler(radian(110), radian(0), radian(-12))
    lA.C1 = cFrame(0, 0.5, 0) * Euler(radian(0), radian(0), radian(0))
    rA.C0 = cFrame(1.5, 0.5, 0) * Euler(radian(110), radian(0), radian(12))
    rA.C1 = cFrame(0, 0.5, 0) * Euler(radian(0), radian(0), radian(0))
    lH.C0 = cFrame(-1.5, -1, 0) * Euler(radian(60), radian(0), radian(-12))
    lH.C1 = cFrame(-1, 1, 0) * Euler(radian(0), radian(0), radian(0))
    rH.C0 = cFrame(1.5, -1, 0) * Euler(radian(60), radian(0), radian(12))
    rH.C1 = cFrame(1, 1, 0) * Euler(radian(0), radian(0), radian(0))
  elseif pose == "" then
    nk.C0 = cFrame(0, 1.5, 0) * Euler(radian(0), radian(0), radian(0))
    nk.C1 = cFrame(0, 0, 0) * Euler(radian(0), radian(0), radian(0))
    rJ.C0 = cFrame(0, -1, 0) * Euler(radian(0), radian(0), radian(0))
    rJ.C1 = cFrame(0, -1, 0) * Euler(radian(0), radian(0), radian(0))
    lA.C0 = cFrame(-1.5, 0.5, 0) * Euler(radian(0), radian(0), radian(0))
    lA.C1 = cFrame(0, 0.5, 0) * Euler(radian(0), radian(0), radian(0))
    rA.C0 = cFrame(1.5, 0.5, 0) * Euler(radian(0), radian(0), radian(0))
    rA.C1 = cFrame(0, 0.5, 0) * Euler(radian(0), radian(0), radian(0))
    lH.C0 = cFrame(-1.5, -1, 0) * Euler(radian(0), radian(0), radian(0))
    lH.C1 = cFrame(-1, 1, 0) * Euler(radian(0), radian(0), radian(0))
    rH.C0 = cFrame(1.5, -1, 0) * Euler(radian(0), radian(0), radian(0))
    rH.C1 = cFrame(1, 1, 0) * Euler(radian(0), radian(0), radian(0))
  end
  if hasDur then
    debServ:AddItem(model, dur)
    for o, i in pairs(joints) do
      table.remove(joints, o)
      debServ:AddItem(i, dur)
    end
  else
    coroutine.resume(coroutine.create(function()
      repeat
        swait()
      until model.Parent == nil
      for o, i in pairs(joints) do
        table.remove(joints, o)
        debServ:AddItem(i, dur)
      end
    end))
  end
  debServ:AddItem(model, 30)
  return model
end
function DamageFunction(IsSoul, Hit, IsRan, MinD, MaxD, HKB, KnockB, LF, LFD, DamType, HitE, Property, Duration, HDrag, DragDuration, SoEff, SoID, SoPit, SoVol)
  coroutine.resume(coroutine.create(function()
    local humanoid = FindHum(Hit.Parent)
    if humanoid and humanoid ~= Humanoid then
      local IsSafe = true
      for _, p in pairs(HitDebounces) do
        if IsSoul then
          if p[1] == true and p[2] == humanoid and p[3] == true then
            IsSafe = false
          end
        elseif not IsSoul and p[1] == false and p[2] == humanoid and p[3] == true then
          IsSafe = false
        end
      end
      if IsSafe then
        if HitE == "None" then
        elseif HitE == "Sphere" then
          MagicSphere(Colors[1], "Neon", Hit.CFrame, Hit.Size.Magnitude, Hit.Size.Magnitude, Hit.Size.Magnitude, Hit.Size.Magnitude * 1.1, Hit.Size.Magnitude * 1.1, Hit.Size.Magnitude * 1.1, 0.1)
        elseif HitE == "Blood" then
          for i = 0, random(6, 10) do
            MagicSphere4(Colors[1], "Neon", Hit.CFrame * Euler(radian(random(-360, 360)), radian(random(-360, 360)), radian(random(-360, 360))), 1, 20, 1, 0.1, 0, 0.4, 0)
          end
        elseif HitE == "L-Blood" then
          for i = 0, random(6, 10) do
            MagicSphere4(Colors[1], "Neon", Hit.CFrame * Euler(radian(random(-360, 360)), radian(random(-360, 360)), radian(random(-360, 360))), 1, 40, 1, 0.1, 0, 0.4, 0)
          end
        elseif HitE == "B-Blood" then
          MagicSphere(Colors[1], "Neon", Hit.CFrame, 2, 2, 2, 4, 4, 4, 0.1)
          for i = 0, random(6, 10) do
            MagicSphere4(Colors[1], "Neon", Hit.CFrame * Euler(radian(random(-360, 360)), radian(random(-360, 360)), radian(random(-360, 360))), 1, 20, 1, 0.1, 0, 0.4, 0)
          end
        end
        do
          local enemy
          for i, p in pairs(HitDebounces) do
            if p[2] == humanoid and p[1] == IsSoul then
              enemy = p
              enemy[3] = true
              table.insert(enemy, i)
              break
            end
          end
          if enemy == nil then
            table.insert(HitDebounces, {
              IsSoul,
              humanoid,
              true,
              DamType,
              #HitDebounces + 1
            })
            enemy = HitDebounces[#HitDebounces]
          end
          local lastState = enemy[4]
          coroutine.resume(coroutine.create(function()
            wait(Duration)
            enemy[3] = false
          end))
          local Damage = 1
          if IsRan then
            Damage = random(MinD, MaxD)
          else
            Damage = MaxD
          end
          Damage = Damage * Numbers.Buff
          coroutine.resume(coroutine.create(function()
            if not HitCount[1] then
              HitCount[2] = HitCount[2] + 1
              HitCount[3] = HitCount[3] + Damage
              if 2 <= HitCount[2] then
                HitCount[1] = true
                HC:TweenPosition(UD2(0.91, 0, 0.35, 0), _, "Linear", 0.01, true)
                local timer = HitCount[4]
                while timer[1] > 0 do
                  swait(0.01 / frame)
                  if not Booleans.ComboPause then
                    timer[1] = timer[1] - 0.1
                  end
                  HCBB.Size = UD2(timer[1] / timer[2], 0, 1, 0)
                  HCBB.Position = UD2((-timer[2] + timer[1]) * -1 / timer[2] / 2, 0, 0, 0)
                  HCH.Text = HitCount[2]
                  HCTD.Text = HitCount[3]
                end
                HC:TweenPosition(UD2(1, 0, 0.35, 0), _, "Linear", 0.3, true)
                HitCount[1] = false
                timer[1] = timer[2]
                HitCount[2] = 0
                HitCount[3] = 0
              end
            else
              HitCount[2] = HitCount[2] + 1
              HitCount[3] = HitCount[3] + Damage
              local timer = HitCount[4]
              timer[1] = timer[2]
            end
          end))
          local chipDamage = false
          if Damage < 1 then
            chipDamage = true
          end
          if chipDamage then
            if Damage >= humanoid.Health then
            else
              humanoid.Health = humanoid.Health - Damage
            end
          else
            if 0 >= humanoid.Health - Damage and 0 < humanoid.Health and not Booleans.SealReleased then
              coroutine.resume(coroutine.create(function()
                for i = 0, 26 do
                  runServ.Stepped:wait()
                  SealPressure.Value = SealPressure.Value + 5
                end
              end))
              local ls = Player:FindFirstChild("leaderstats")
              if ls then
                local spr = ls:FindFirstChild("Spree")
                if spr then
                  spr.Value = spr.Value + 1
                end
              end
            elseif 0 >= humanoid.Health - Damage and 0 < humanoid.Health and Booleans.SealReleased then
              Humanoid.Health = Humanoid.Health + 15
              MakeText("+15", "Garamond", 0.2, 0, 0, 0, 0, 255, 0, RootPart.CFrame)
              local ls = Player:FindFirstChild("leaderstats")
              if ls then
                local spr = ls:FindFirstChild("Spree")
                if spr then
                  spr.Value = spr.Value + 1
                end
              end
            end
            humanoid.Health = humanoid.Health - Damage
          end
          if string.sub(DamType, 1, 11) == "CancelPrev-" then
            for i, p in pairs(HitDebounces) do
              if p[2] == humanoid and p[1] == IsSoul then
                p[3] = false
                p[4] = "Cancel"
              end
            end
            DamType = string.sub(DamType, 12)
          end
          if Damage ~= 0 then
            if Damage >= humanoid.MaxHealth / 5 then
              MakeText("-" .. Damage .. "", "SciFi", 0.3, 170, 0, 0, 255, 85, 0, Hit.CFrame)
            else
              local mtc = BrickCol(Colors[3]).Color
              MakeText("-" .. Damage .. "", "Garamond", 0.3, mtc.r * 255, mtc.g * 255, mtc.b * 255, 0, 0, 0, Hit.CFrame)
            end
          end
          if LF and not Booleans.SealReleased and not IsSoul then
            if LFD <= 0 then
              LFD = 1
            end
            Humanoid.Health = Humanoid.Health + Damage / LFD
            MakeText("+" .. Damage / LFD, "Garamond", 0.2, 0, 0, 0, 0, 255, 0, RootPart.CFrame)
          elseif not LF and Booleans.SealReleased and not IsSoul then
            local heal = Damage / (20 / SealInfo[1])
            Humanoid.Health = Humanoid.Health + heal
            MakeText("+" .. heal, "Garamond", 0.2, 0, 0, 0, 0, 255, 0, RootPart.CFrame)
          elseif LF and Booleans.SealReleased and not IsSoul then
            if LFD <= 0 then
              LFD = 1
            end
            local heal = Damage / (LFD / (1 + SealInfo[1] / 10))
            Humanoid.Health = Humanoid.Health + heal
            MakeText("+" .. heal, "Garamond", 0.2, 0, 0, 0, 0, 255, 0, RootPart.CFrame)
          end
          if IsSoul then
            Corruption.Value = Corruption.Value + 0.25
          end
          if not Booleans.SealReleased then
            SealPressure.Value = SealPressure.Value + (1.5 + SealInfo[1] / 2)
          end
          if SoEff then
            local HitSound = Sound(Hit, SoID, SoVol, SoPit, false)
            debServ:AddItem(HitSound, 6)
          end
          if HKB then
            if Property.Name ~= "Point" then
              local KBCF = cFrame(Hit.Position, Property.Position)
              Hit.Velocity = KBCF.lookVector * -KnockB
            else
              Hit.Velocity = Property.CFrame.lookVector * KnockB
            end
          end
          local d
          if HDrag then
            humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
            local bDragged = false
            local H
            for _, h in pairs(DragTable) do
              if h[2] == humanoid then
                bDragged = true
                H = h
              end
            end
            if not bDragged then
              d = Inst("NumberValue", humanoid)
              d.Name = "Duration"
              d.Value = DragDuration[1]
              table.insert(DragTable, {
                Hit,
                humanoid,
                DragDuration[2],
                d
              })
            else
              H[4].Value = DragDuration[1]
            end
          end
          if DamType == "Normal" then
            coroutine.resume(coroutine.create(function()
              repeat
                runServ.Stepped:wait()
              until not enemy[3]
              if enemy[4] == lastState or enemy[4] == "Cancel" then
                table.remove(HitDebounces, enemy[5])
              end
            end))
          elseif DamType == "Stun" then
            if HDrag == true and d ~= nil then
              repeat
                runServ.Stepped:wait()
              until d.Parent == nil
            end
            do
              local pos = Inst("BodyPosition", Hit)
              pos.MaxForce = Vec3(huge, huge, huge)
              pos.Position = Hit.Position
              local gy = Inst("BodyGyro", Hit)
              gy.MaxTorque = Vec3(100, 100, 100)
              gy.CFrame = Hit.CFrame
              debServ:AddItem(pos, Duration * 10)
              debServ:AddItem(gy, Duration * 10)
              coroutine.resume(coroutine.create(function()
                local pro = {
                  Property.Name,
                  Property.CFrame,
                  Property.Position
                }
                repeat
                  runServ.Stepped:wait()
                until pos.Parent == nil or enemy[4] == "Cancel"
                if pro[1] ~= "Point" then
                  local KBCF = cFrame(Hit.Position, pro[3])
                  Hit.Velocity = KBCF.lookVector * -KnockB
                else
                  Hit.Velocity = pro[2].lookVector * KnockB
                end
                if enemy[4] == "Cancel" or enemy[4] == lastState then
                  debServ:AddItem(pos, 0)
                  debServ:AddItem(gy, 0)
                  table.remove(HitDebounces, enemy[5])
                end
              end))
            end
          elseif DamType == "Knockdown" then
            humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
            coroutine.resume(coroutine.create(function()
              repeat
                runServ.Stepped:wait()
              until not enemy[3]
              if enemy[4] == lastState or enemy[4] == "Cancel" then
                table.remove(HitDebounces, enemy[5])
              end
            end))
          elseif DamType == "Knockdown2" then
            if HDrag == true and d ~= nil then
              repeat
                runServ.Stepped:wait()
              until d.Parent == nil
            end
            humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
            do
              local model = Supressor(Hit, false, 0, "None", true, -90, 0, 0)
              if Property.Name ~= "Point" then
                local KBCF = cFrame(Hit.Position, Property.Position)
                Hit.Velocity = KBCF.lookVector * -KnockB[1] + Vec3(0, KnockB[2], 0)
              else
                Hit.Velocity = Property.CFrame.lookVector * KnockB[1] + Vec3(0, KnockB[2], 0)
              end
              coroutine.resume(coroutine.create(function()
                local ti = 0
                repeat
                  ti = ti + 0.1
                  swait(0.3 / frame)
                  humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
                until ti >= Duration * 3 or enemy[4] == "Cancel"
                debServ:AddItem(model, 0)
                if enemy[3] == lastState or enemy[4] == "Cancel" then
                  table.remove(HitDebounces, enemy[5])
                end
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
              end))
            end
          elseif DamType == "SkyRocket" then
            if HDrag == true and d ~= nil then
              repeat
                runServ.Stepped:wait()
              until d.Parent == nil
            end
            humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
            if Property.Name ~= "Point" then
              local KBCF = cFrame(Hit.Position, Property.Position)
              Hit.Velocity = KBCF.lookVector * -KnockB[1] + Vec3(0, KnockB[2], 0)
            else
              Hit.Velocity = Property.CFrame.lookVector * KnockB[1] + Vec3(0, KnockB[2], 0)
            end
            coroutine.resume(coroutine.create(function()
              repeat
                runServ.Stepped:wait()
              until not enemy[3]
              if enemy[4] == lastState or enemy[4] == "Cancel" then
                table.remove(HitDebounces, enemy[5])
              end
            end))
          end
        end
      end
    end
  end))
end
function FindNearestHumanoidPart(Position, range)
  local Dis = range
  local Par, Noid
  for _, c in pairs(workspace:GetChildren()) do
    local hum = FindHum(c)
    if hum and hum ~= Humanoid then
      for _, p in pairs(hum.Parent:GetChildren()) do
        if p:IsA("BasePart") then
          local mag = (p.Position - Position).magnitude - p.Size.Magnitude / 2
          if Dis > mag then
            Par = p
            Dis = mag
            Noid = hum
          end
        end
      end
    end
  end
  return Par, Noid
end
function FindNearestHumanoidPartWithIgnoreList(Position, range, IgnoreList)
  local Dis = range
  local Par, Noid
  local function CheckIfListed(h)
    local safe = true
    for _, p in pairs(IgnoreList) do
      if p == h then
        safe = false
      end
    end
    return safe
  end
  for _, c in pairs(workspace:GetChildren()) do
    local hum = FindHum(c)
    if hum and hum ~= Humanoid then
      local safe = CheckIfListed(hum)
      if safe then
        for _, p in pairs(hum.Parent:GetChildren()) do
          if p:IsA("BasePart") then
            local mag = (p.Position - Position).magnitude - p.Size.Magnitude / 2
            if Dis > mag then
              Par = p
              Dis = mag
              Noid = hum
            end
          end
        end
      end
    end
  end
  return Par, Noid
end
function FindAllNearestHumanoids(Position, Range)
  local NearestHumanoids = {}
  local function CheckIfListed(h)
    local listed = false
    for i, hu in pairs(NearestHumanoids) do
      if hu[1] == h then
        listed = true
      end
    end
    return listed
  end
  for _, c in pairs(workspace:GetChildren()) do
    local hum = FindHum(c)
    local listed = CheckIfListed(hum)
    if hum and hum ~= Humanoid and not listed then
      local Dis = Range
      local Par
      for _, p in pairs(hum.Parent:GetChildren()) do
        if p:IsA("BasePart") then
          local mag = (p.Position - Position).magnitude - p.Size.Magnitude / 2
          if Dis > mag then
            Par = p
            Dis = mag
          end
        end
      end
      if Par then
        table.insert(NearestHumanoids, {hum, Par})
      end
    end
  end
  return NearestHumanoids
end
function FindAllNearestHumanoidsWithIgnoreList(Position, Range, IgnoreList)
  local NearestHumanoids = {}
  local function CheckIfListedInNH(h)
    local listed = false
    for i, hu in pairs(NearestHumanoids) do
      if hu[1] == h then
        listed = true
      end
    end
    return listed
  end
  for _, c in pairs(workspace:GetChildren()) do
    local hum = FindHum(c)
    local function CheckIfListed(h)
      local safe = true
      for _, p in pairs(IgnoreList) do
        if p == h then
          safe = false
        end
      end
      return safe
    end
    local safe = CheckIfListed(hum)
    local listed = CheckIfListedInNH(hum)
    if hum and hum ~= Humanoid and safe and not listed then
      local Dis = Range
      local Par
      for _, p in pairs(hum.Parent:GetChildren()) do
        if p:IsA("BasePart") then
          local mag = (p.Position - Position).magnitude - p.Size.Magnitude / 2
          if Dis > mag then
            Par = p
            Dis = mag
          end
        end
      end
      if Par then
        table.insert(NearestHumanoids, {hum, Par})
      end
    end
  end
  return NearestHumanoids
end
function MagniDamage(Part, Range, IsSoul, IsRan, MinD, MaxD, HKB, KnockB, LF, LFD, DamType, HitE, Duration, HDrag, DragDuration, SoEff, SoID, SoPit, SoVol)
  for _, c in pairs(workspace:GetChildren()) do
    local hum = FindHum(c)
    if hum and hum ~= Humanoid then
      local Dis = Range
      local Par
      for _, p in pairs(hum.Parent:GetChildren()) do
        if p:IsA("BasePart") then
          local mag = (p.Position - Part.Position).magnitude - p.Size.Magnitude / 2
          if Dis > mag then
            Par = p
            Dis = mag
          end
        end
      end
      if Par then
        DamageFunction(IsSoul, Par, IsRan, MinD, MaxD, HKB, KnockB, LF, LFD, DamType, HitE, Part, Duration, HDrag, DragDuration, SoEff, SoID, SoPit, SoVol)
      end
    end
  end
end
function Bringer()
  for i, d in pairs(DragTable) do
    if d[1] and d[2] and d[1]:IsA("BasePart") then
      d[2]:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
      d[2]:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
      d[2]:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
      local Dur = d[4]
      if not Dur then
        Dur = Inst("NumberValue", d[2])
        Dur.Name = "Duration"
        Dur.Value = 1.5
        table.insert(d, Dur)
      end
      if Dur.Value > 0 and not Booleans.EndAllDrags then
        Dur.Value = Dur.Value - 0.1
        d[1].CFrame = Drag_To_Part.CFrame * Euler(radian(random(-30, 30)), radian(random(-30, 30)), radian(random(-30, 30)))
      else
        d[2]:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
        d[2]:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
        d[2]:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
        d[1].CFrame = cFrame(d[1].Position) * cFrame(0, d[3], 0)
        do
          local t = 0.12
          coroutine.resume(coroutine.create(function()
            local FP = CreatePart("Part", F2, "White", "Plastic", 1, 1, "stop", d[1].Size, d[1].Position, d[1].Rotation, "BlockMesh", Vec3(0, 0, 0), _, _)
            FP.CFrame = d[1].CFrame
            local stay = Inst("Weld", FP)
            stay.Part0 = d[1]
            stay.Part1 = FP
            local slow = Inst("BodyVelocity", d[1])
            slow.MaxForce = Vec3(huge, huge, huge)
            slow.Velocity = Vec3(0, 0, 0)
            local wow = Inst("BodyPosition", d[1])
            wow.MaxForce = Vec3(huge, huge, huge)
            wow.Position = d[1].Position
            debServ:AddItem(wow, t)
            debServ:AddItem(slow, t)
            debServ:AddItem(FP, t)
            debServ:AddItem(stay, t)
            local noid = d[2]
            repeat
              swait()
            until FP.Parent == nil
            swait(t / frame)
            noid:ChangeState(Enum.HumanoidStateType.GettingUp)
          end))
          debServ:AddItem(Dur, 0.12)
          table.remove(DragTable, i)
        end
      end
    end
  end
end
function MagicBlock(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicB", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = cframe * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlock2(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicB", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlock3(brickCol, material, cframe, sx, sy, sz, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicB", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlock4(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicB", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    local cf = cframe
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      cf = cf * cFrame(xInc, yInc, zInc)
      part.CFrame = cf * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlock5(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicB", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * cFrame(xInc, yInc, zInc)
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlock6(brickCol, material, cframe, sx, sy, sz, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicB", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * cFrame(xInc, yInc, zInc)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicCylinder(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicC", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "CylinderMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicCylinder2(brickCol, material, cframe, sx, sy, sz, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicC", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "CylinderMesh", Vec3(sx, sy, sz), _, _)
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicWave(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicW", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=20329976", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicWave2(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicW", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=20329976", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * CFrame.Angles(0, radian(10), 0)
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlast(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicBL", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=1323306", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicBlast2(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagiBL", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=1323306", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * CFrame.Angles(0, radian(10), 0)
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicSphere(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicS", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "", "Sphere")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicSphere2(brickCol, material, cframe, sx, sy, sz, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicS", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "", "Sphere")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicSphere3(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicS", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "", "Sphere")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * cFrame(xInc, yInc, zInc)
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicSphere4(brickCol, material, cframe, sx, sy, sz, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicS", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "", "Sphere")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * cFrame(xInc, yInc, zInc)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicPettles(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicP", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "", "Sphere")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    local cf = cframe
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      cf = cf * cFrame(xInc, yInc, zInc)
      part.CFrame = cf * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicPettles2(brickCol, material, cframe, sx, sy, sz, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicP", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "", "Sphere")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    local cf = cframe
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      cf = cf * cFrame(xInc, yInc, zInc)
      part.CFrame = cf * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicRing(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicR", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = cframe * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicRing2(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicR", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicRing3(brickCol, material, cframe, sx, sy, sz, Delay)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicR", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicRing4(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicR", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    local cf = cframe
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      cf = cf * cFrame(xInc, yInc, zInc)
      part.CFrame = cf * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicRing5(brickCol, material, cframe, sx, sy, sz, a1, a2, a3, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicR", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * cFrame(xInc, yInc, zInc)
      mesh.Scale = mesh.Scale + Vec3(a1, a2, a3)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function MagicRing6(brickCol, material, cframe, sx, sy, sz, Delay, xInc, yInc, zInc)
  local part, mesh = CreatePart("Part", F3, brickCol, material, 0, 0, "MagicR", Vec3(0.2, 0.2, 0.2), Vec3(0, 0, 0), Vec3(0, 0, 0), "SpecialMesh", Vec3(sx, sy, sz), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
  part.CFrame = cframe
  coroutine.resume(coroutine.create(function()
    debServ:AddItem(part, 30)
    debServ:AddItem(mesh, 30)
    while part.Transparency < 1 do
      runServ.Stepped:wait()
      part.CFrame = part.CFrame * cFrame(xInc, yInc, zInc)
      part.Transparency = part.Transparency + Delay
    end
    debServ:AddItem(part, 0)
    debServ:AddItem(mesh, 0)
  end))
end
function StopRBLXAnims()
  animate.Disabled = true
  for _, s in pairs(Head:GetChildren()) do
    if s:IsA("Sound") then
      s.Volume = 0
    end
  end
  for _, anim in pairs(Humanoid:GetPlayingAnimationTracks()) do
    anim:Stop()
    anim:Destroy()
  end
  LeftShoulder.DesiredAngle = 0
  LeftShoulder.MaxVelocity = 5
  RightShoulder.DesiredAngle = 0
  RightShoulder.MaxVelocity = 5
  LeftHip.DesiredAngle = 0
  LeftHip.MaxVelocity = 5
  RightHip.DesiredAngle = 0
  RightHip.MaxVelocity = 5
  Neck.DesiredAngle = 0
  Neck.MaxVelocity = 5
  RootJoint.DesiredAngle = 0
  RootJoint.MaxVelocity = 5
  coroutine.resume(coroutine.create(function()
    wait(0.2)
    LeftShoulder.MaxVelocity = 0
    RightShoulder.MaxVelocity = 0
    LeftHip.MaxVelocity = 0
    RightHip.MaxVelocity = 0
    Neck.MaxVelocity = 0
    RootJoint.MaxVelocity = 0
  end))
  for i = 0, 0.2, 0.1 do
    swait()
    local AnimSpeed = 1.1
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(-90), 0, 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(-90), 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(0, radian(90), 0), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(90), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(0, radian(-90), 0), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-90), 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0) * Euler(0, radian(90), 0), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(90), 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1, 0) * Euler(0, radian(-90), 0), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(-90), 0), AnimSpeed)
  end
end
function ReturnToNormalJoints()
  for i = 0, 2, 0.1 do
    swait()
    local AnimSpeed = 0.5
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(-90), 0, 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(-90), 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(0, radian(90), 0), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(90), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(0, radian(-90), 0), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-90), 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0) * Euler(0, radian(90), 0), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(90), 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1, 0) * Euler(0, radian(-90), 0), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(-90), 0), AnimSpeed)
  end
  animate.Disabled = false
  for _, s in pairs(Head:GetChildren()) do
    if s:IsA("Sound") then
      s.Volume = 0.65
    end
  end
end
function Bufferer(moveName, decayTime)
  local Move = BufferLimiters[moveName]
  if Booleans.Attacking and Move ~= nil then
    if Move[1] < Move[2] then
      Move[1] = Move[1] + 1
      Booleans.Successful_KeyStroke = true
      local timer = decayTime
      repeat
        swait(0.01 / frame)
        timer = timer - 0.05
      until not Booleans.Attacking or timer <= 0
      Move[1] = Move[1] - 1
      return true
    else
      return false
    end
  else
    return false
  end
end
function SoulBufferer(moveName, decayTime)
  local Move = BufferLimiters[moveName]
  if Booleans.SoulAttacking and Move ~= nil then
    if Move[1] < Move[2] then
      Move[1] = Move[1] + 1
      Booleans.Successful_KeyStroke = true
      local timer = decayTime
      repeat
        swait(0.01 / frame)
        timer = timer - 0.05
      until not Booleans.SoulAttacking or timer <= 0
      Move[1] = Move[1] - 1
      return true
    else
      return false
    end
  else
    return false
  end
end
function StopAllDrags()
  coroutine.resume(coroutine.create(function()
    Booleans.EndAllDrags = true
    wait(0.02)
    Booleans.EndAllDrags = false
  end))
end
local function CFrameFromTopBack(at, top, back)
  local right = top:Cross(back)
  return cFrame(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function Triangle(a, b, c, tcol, tmat, thiccness)
  local NoOutline = function(Part)
    Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
  end
  local edg1 = (c - a):Dot((b - a).unit)
  local edg2 = (a - b):Dot((c - b).unit)
  local edg3 = (b - c):Dot((a - c).unit)
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a, b = a, b
  elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
    a, b, c = b, c, a
  elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
    a, b, c = c, a, b
  else
    return
  end
  local len1 = (c - a):Dot((b - a).unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + (b - a).unit * len1 - c).magnitude
  local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
  local list = {}
  if len1 > 0.01 then
    do
      local w1 = Inst("WedgePart", F3)
      w1.Material = tmat
      w1.BrickColor = BrickCol(tcol)
      w1.Transparency = 0
      w1.Reflectance = 0
      w1.CanCollide = false
      NoOutline(w1)
      local sz = Vec3(0.2, width, len1)
      w1.Size = sz
      local sp = Inst("SpecialMesh", w1)
      sp.MeshType = "Wedge"
      sp.Scale = Vec3(thiccness, 1, 1) * sz / w1.Size
      w1:BreakJoints()
      w1.Anchored = true
      w1.Transparency = 0.7
      debServ:AddItem(w1, 25)
      coroutine.resume(coroutine.create(function()
        for t = 0.7, 1.045, 0.045 do
          runServ.Stepped:wait()
          w1.Transparency = t
        end
        debServ:AddItem(w1, 0)
      end))
      w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
      table.insert(list, w1)
    end
  end
  if len2 > 0.01 then
    do
      local w2 = Inst("WedgePart", F3)
      w2.Material = tmat
      w2.BrickColor = BrickCol(tcol)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vec3(0.2, width, len2)
      w2.Size = sz
      local sp = Inst("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vec3(thiccness, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Transparency = 0.7
      debServ:AddItem(w2, 25)
      coroutine.resume(coroutine.create(function()
        for t = 0.7, 1.045, 0.045 do
          runServ.Stepped:wait()
          w2.Transparency = t
        end
        debServ:AddItem(w2, 0)
      end))
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
  end
  return unpack(list)
end
function SummonNemesis()
  if not Booleans.SoulOut then
    Booleans.SoulOut = true
    Booleans.SoulAttacking = true
    Soul.Root.Anchored = false
    Soul.Root.CFrame = RootPart.CFrame * cFrame(0, 2.5, 5)
    soul.Parent = F2
    SoulPos.Position = (RootPart.CFrame * cFrame(0, 2.5, 5)).p
    SoulPos.P = 9000000
    SoulPos.Parent = Soul.Root
    local bb = Sound(Soul.Root, 233091183, 1, 1.5, false)
    debServ:AddItem(bb, 3)
    MagicSphere(Colors[1], "Neon", RootPart.CFrame * cFrame(0, 2.5, 5), 50, 50, 50, 5, 5, 5, 0.04)
    for i = 0, 3 do
      swait()
      MagicRing(Colors[3], "Neon", RootPart.CFrame * cFrame(0, 2.5, 5), 6, 6, 0, 5, 5, 0, 0.04)
    end
    coroutine.resume(coroutine.create(function()
      swait(0.2 / frame)
      SoulPos.P = 60000
    end))
    for i = 0, 2.5, 0.1 do
      swait()
      local AnimSpeed = 0.3
      Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-30), 0, 0), AnimSpeed)
      Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -1.6 - 0.1 * cosine(sine / 10), 0) * Euler(radian(30), 0, 0), AnimSpeed)
      Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, 0) * Euler(radian(-55), 0, radian(25)), AnimSpeed)
      Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, 0) * Euler(radian(-55), 0, radian(-25)), AnimSpeed)
      Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.6, 0) * Euler(radian(-40), 0, radian(15)), AnimSpeed)
      Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1.6, 0) * Euler(radian(-40), 0, radian(-15)), AnimSpeed)
      Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Booleans.SoulAttacking = false
  elseif Booleans.SoulOut then
    local bb = Sound(RootPart, 233091183, 1, 2.5, false)
    debServ:AddItem(bb, 3)
    MagicSphere(Colors[1], "Neon", Soul.Root.CFrame, 60, 60, 60, -4, -4, -4, 0.04)
    for i = 0, 3 do
      swait()
      MagicRing(Colors[3], "Neon", Soul.Root.CFrame, 30, 30, 0.01, -2, -2, -0.01, 0.04)
    end
    Booleans.SoulOut = false
    soul.Parent = nil
    Soul.Root.Anchored = true
    SoulPos.Parent = nil
  end
end
function TyrantUppercut()
  Corruption.Value = Corruption.Value - 15
  Booleans.Attacking = true
  Booleans.DisableJump = true
  Booleans.AntiTrip = true
  Booleans.CamFollow = false
  Humanoid.WalkSpeed = 0
  local pos = Inst("BodyPosition", RootPart)
  pos.Position = RootPart.Position
  pos.MaxForce = Vec3(huge, huge, huge)
  coroutine.resume(coroutine.create(function()
    for i = 0, 0.5, 0.1 do
      swait(0.05 / frame)
      MagicWave2("Really black", "Plastic", RootPart.CFrame * cFrame(0, -2.8, 0), 5, 0.5, 5, 0, 0, 0, 0.1)
    end
  end))
  Booleans.Invincible = true
  for i = 0, 25 do
    swait()
    local AnimSpeed = 0.3
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), radian(-8), radian(55)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.25, 0) * Euler(radian(5), radian(-60), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(50), 0, radian(55)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-65), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(80), radian(-10), radian(-80)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.6, 0.05) * Euler(radian(-6), radian(-25), radian(-5)), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(radian(-50), 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.85, 0.1) * Euler(0, radian(30), radian(0)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(-50), 0, 0), AnimSpeed)
  end
  Booleans.Invincible = false
  debServ:AddItem(pos, 0)
  local vel = Inst("BodyVelocity", RootPart)
  vel.MaxForce = Vec3(huge, huge, huge)
  vel.Velocity = RootPart.CFrame.lookVector * 80 + Vec3(0, 50, 0)
  DTPWeld.Part0 = RootPart
  DTPWeld.C0 = cFrame(0.25, 3, -5)
  DTPWeld.C1 = cFrame()
  local bb = Sound(RightArm, 231917970, 0.5, 2.5, false)
  debServ:AddItem(bb, 3)
  local bb2 = Sound(RightArm, 240517975, 0.4, 2.4, false)
  debServ:AddItem(bb2, 3)
  local bb3 = Sound(RightArm, 183763512, 1, 1.5, false)
  debServ:AddItem(bb3, 3)
  for i = 3, 0, -0.1 do
    swait()
    MagicRing2(Colors[3], "Neon", RightArm.CFrame * Euler(radian(90), 0, 0), 10, 10, 0, 2, 2, 0, 0.3)
    MagicBlock(Colors[1], "Neon", RightArm.CFrame * cFrame(random(-3, 3), 0, random(-3, 3)) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, 2, 2, 2, 0.06)
    MagicBlock(Colors[2], "Neon", RightArm.CFrame * cFrame(random(-3, 3), 0, random(-3, 3)) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, 2, 2, 2, 0.06)
    MagicBlock(Colors[4], "Neon", RightArm.CFrame * cFrame(random(-3, 3), 0, random(-3, 3)) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, 2, 2, 2, 0.06)
    MagicBlock("Really black", "Neon", RightArm.CFrame * cFrame(random(-3, 3), 0, random(-3, 3)) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 15, 15, 15, 2, 2, 2, 0.06)
    MagniDamage(RightArm, 14 + Numbers.rBuff * 2, false, false, 0, 1, false, {60, 70}, true, 4, "SkyRocket", "None", 0, true, {0.15, 5}, true, Sounds.Blunt.LargeA, 1, 0.2)
    vel.Velocity = RootPart.CFrame.lookVector * (26.666666666666668 * i) + Vec3(0, 50, 0)
    local AnimSpeed = 0.1
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-20), 0, radian(-55)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(-1, -1.25, 0) * Euler(radian(15), radian(60), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.55, 0.6, -0.4) * Euler(radian(170), 0, radian(20)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(30), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.65, 0.2) * Euler(radian(-5), radian(20), radian(-40)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.5, -0.25) * Euler(radian(-30), 0, radian(-6)), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(20), 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.7, -0.2) * Euler(radian(-10), 0, radian(-16)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
  end
  StopAllDrags()
  swait(0.3 / frame)
  DTPWeld.Part0 = RootPart
  DTPWeld.C0 = cFrame()
  DTPWeld.C1 = cFrame()
  debServ:AddItem(vel, 0)
  Booleans.AntiTrip = false
  Booleans.Attacking = false
  Booleans.DisableJump = false
  Booleans.CamFollow = true
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
end
function TerrorAssault()
  CoolDowns.TerrorAssault[1] = 0
  Booleans.Attacking = true
  Humanoid.WalkSpeed = 0
  Booleans.DisableJump = true
  local p = 1
  local InfiAssualt, QHold = false, false
  local function Punch(length, AnimSpeed, duration, Type)
    if p == 1 then
      for i = 0, length, 0.1 do
        swait()
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-25), 0, 0), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, radian(-50)), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.3, 0) * Euler(0, radian(-40), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, radian(0)), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0.06) * Euler(radian(145), 0, radian(65)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.55, 0.2) * Euler(radian(145), 0, radian(-35)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.7, 0.2) * Euler(0, radian(-30), 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, -0.1) * Euler(radian(55), radian(40), 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(2.5), 0, 0), AnimSpeed)
      end
      RootPart.Velocity = RootPart.CFrame.lookVector * 10
      local swing = Sound(RightArm, 169445073, 0.5, 1.5, false)
      debServ:AddItem(swing, 3)
      for i = 0, length, 0.1 do
        swait()
        if InfiAssualt then
          MagniDamage(RightArm, 0.75 + Numbers.rBuff / 4, false, false, 0, 0.5, true, 11, false, 0, Type, "Sphere", duration, false, 0, true, Sounds.Blunt.Med, 1, 0.2)
          MagicBlock(Colors[1], "Neon", RightArm.CFrame * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 7, 7, 7, -0.8, -0.8, -0.8, 0.06)
          MagicBlock("Really black", "Neon", RightArm.CFrame * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 5, 5, 5, 0.8, 0.8, 0.8, 0.06)
        else
          MagniDamage(RightArm, 0.75 + Numbers.rBuff / 4, false, false, 0, 1, true, 11, false, 0, Type, "Sphere", duration, false, 0, true, Sounds.Blunt.Med, 1, 0.2)
        end
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-25), 0, 0), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, radian(50)), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.3, 0) * Euler(0, radian(40), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, radian(0)), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 1.2, -0.5) * Euler(radian(145), 0, radian(-5)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-22), 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.06) * Euler(radian(125), 0, radian(15)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(25), 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.8, -0.1) * Euler(radian(55), radian(-40), 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(radian(-2.5), 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.7, 0.2) * Euler(radian(10), radian(30), 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      end
      p = 2
    elseif p == 2 then
      for i = 0, length, 0.1 do
        swait()
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-25), 0, 0), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, radian(50)), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.3, 0) * Euler(0, radian(40), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, radian(0)), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.55, 0.2) * Euler(radian(145), 0, radian(35)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.06) * Euler(radian(145), 0, radian(-65)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.8, -0.1) * Euler(radian(55), radian(-40), 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(radian(-2.5), 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.7, 0.2) * Euler(0, radian(30), 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      end
      RootPart.Velocity = RootPart.CFrame.lookVector * 10
      local swing = Sound(LeftArm, 169445073, 0.5, 1.2, false)
      debServ:AddItem(swing, 3)
      for i = 0, length, 0.1 do
        swait()
        if InfiAssualt then
          MagniDamage(LeftArm, 0.75 + Numbers.rBuff / 4, false, false, 0, 0.5, true, 11, false, 0, Type, "Sphere", duration, false, 0, true, Sounds.Blunt.Med, 1, 0.2)
          MagicBlock(Colors[1], "Neon", LeftArm.CFrame * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 7, 7, 7, -0.8, -0.8, -0.8, 0.06)
          MagicBlock("Really black", "Neon", LeftArm.CFrame * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 5, 5, 5, 0.8, 0.8, 0.8, 0.06)
        else
          MagniDamage(LeftArm, 0.75 + Numbers.rBuff / 4, false, false, 0, 1, true, 11, false, 0, Type, "Sphere", duration, false, 0, true, Sounds.Blunt.Med, 1, 0.2)
        end
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-25), 0, 0), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, radian(-50)), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.3, 0) * Euler(0, radian(-40), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, radian(0)), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0.06) * Euler(radian(145), 0, radian(-15)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-25), 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 1.2, -0.5) * Euler(radian(125), 0, radian(5)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(22), 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.7, 0.2) * Euler(radian(10), radian(-30), 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, -0.1) * Euler(radian(55), radian(40), 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(2.5), 0, 0), AnimSpeed)
      end
      p = 1
    end
  end
  Punch(1.5, 0.3, 0.25, "Stun")
  coroutine.resume(coroutine.create(function()
    local timer = {0, 8}
    local down
    repeat
      runServ.Stepped:wait()
      timer[1] = timer[1] + 0.05
      if InputCommand == "42642688D" and Corruption.Value >= 20 then
        Booleans.Successful_KeyStroke = true
        InfiAssualt = true
        QHold = true
        down = Mouse.KeyUp:connect(function(k)
          if k == "q" then
            QHold = false
          end
        end)
        repeat
          swait()
        until not QHold
        down:disconnect()
      end
    until timer[1] >= timer[2] or InfiAssualt
  end))
  Punch(1.5, 0.3, 0.25, "Stun")
  for i = 0, 26 do
    swait()
    if InfiAssualt then
      break
    end
    Punch(0.2, 0.9, 0.1, "Stun")
  end
  if InfiAssualt then
    Booleans.CorRegen = false
    Corruption.Value = Corruption.Value - 20
    repeat
      swait()
      CoolDowns.TerrorAssault[1] = 0
      if 0 < Corruption.Value then
        Corruption.Value = Corruption.Value - 0.2
      else
        Humanoid.Health = Humanoid.Health - 0.5
      end
      Punch(0.2, 0.9, 0.06, "Stun")
    until not QHold or Humanoid.Health <= 10
    Booleans.CorRegen = true
    CoolDowns.TerrorAssault[1] = -CoolDowns.TerrorAssault[2]
  else
    local vel = Inst("BodyVelocity", RootPart)
    vel.MaxForce = Vec3(huge, huge, huge)
    vel.Velocity = RootPart.CFrame.lookVector * 10 + Vec3(0, 35, 0)
    debServ:AddItem(vel, 0.1)
    local swing = Sound(LeftArm, 169445046, 0.5, 0.9, false)
    debServ:AddItem(swing, 3)
    for i = 0, 3, 0.1 do
      swait()
      if i < 1 then
        MagniDamage(RightArm, 3, false, false, 0, 4, true, 50, false, 0, "Normal", "Sphere", 2, false, 0, true, Sounds.Blunt.LargeF, 0.8, 0.2)
      end
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-20), 0, radian(-55)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(-1, -1.25, 0) * Euler(radian(15), radian(60), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.55, 0.6, -0.4) * Euler(radian(170), 0, radian(20)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(30), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.65, 0.2) * Euler(radian(-5), radian(20), radian(-40)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.5, -0.25) * Euler(radian(-30), 0, radian(-6)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(20), 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.7, -0.2) * Euler(radian(-10), 0, radian(-16)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    CoolDowns.TerrorAssault[1] = 0
  end
  Booleans.DisableJump = false
  Booleans.Attacking = false
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
end
function NemesisBarrage()
  Booleans.SoulFollow = false
  Booleans.SoulAttacking = true
  local tar
  if TargetInfo[1] ~= nil then
    if (TargetInfo[1].Position - RootPart.Position).Magnitude <= 60 then
      tar = TargetInfo[1]
      coroutine.resume(coroutine.create(function()
        SoulGyr.MaxTorque = Vec3(huge, huge, huge)
        SoulGyr2.MaxTorque = Vec3(0, 0, 0)
        repeat
          swait()
          SoulPos.Position = (tar.CFrame * cFrame(0, 2.5, -5)).p
          SoulGyr.CFrame = cFrame(Soul.Root.Position, (tar.CFrame * cFrame(0, 2.5, 10)).p)
        until not Booleans.SoulAttacking
        SoulGyr.MaxTorque = Vec3(0, huge, 0)
        SoulGyr2.MaxTorque = Vec3(huge, 0, huge)
      end))
    else
      SoulPos.Position = (RootPart.CFrame * cFrame(0, 2.5, -7)).p
      SoulGyr.CFrame = cFrame(Soul.Root.Position, (RootPart.CFrame * cFrame(0, 2.5, -7)).p)
    end
  else
    SoulPos.Position = (RootPart.CFrame * cFrame(0, 2.5, -7)).p
    SoulGyr.CFrame = cFrame(Soul.Root.Position, (RootPart.CFrame * cFrame(0, 2.5, -7)).p)
  end
  Corruption.Value = Corruption.Value - 15
  for i = 0, 2.5, 0.1 do
    swait()
    local AnimSpeed = 0.3
    Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-10), 0, 0), AnimSpeed)
    Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -1.6 - 0.1 * cosine(sine / 10), 0) * Euler(radian(-20), 0, 0), AnimSpeed)
    Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(0, 0, 0), AnimSpeed)
    Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, 0) * Euler(radian(-35), 0, radian(15)), AnimSpeed)
    Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
    Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, 0) * Euler(radian(-35), 0, radian(-15)), AnimSpeed)
    Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
    Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.6, 0) * Euler(radian(-20), 0, radian(10)), AnimSpeed)
    Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
    Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1.6, 0) * Euler(radian(-20), 0, radian(-10)), AnimSpeed)
    Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
  end
  local p = 1
  local function Punch(length, AnimSpeed, duration, Type)
    local ang = random(-1, 1) * 45
    if p == 1 then
      for i = 0, length, 0.1 do
        swait()
        Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-15), 0, radian(30)), AnimSpeed)
        Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -2.6, 0) * Euler(0, radian(-40), 0), AnimSpeed)
        Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(radian(40), 0, 0), AnimSpeed)
        Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, 1.2) * Euler(radian(90), 0, radian(65)), AnimSpeed)
        Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, -1) * Euler(radian(80), 0, radian(-40)), AnimSpeed)
        Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.3, 0.3) * Euler(radian(-40), 0, 0), AnimSpeed)
        Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, radian(30), 0), AnimSpeed)
        Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1, -0.6) * Euler(radian(-20), 0, 0), AnimSpeed)
        Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, radian(-30), 0), AnimSpeed)
      end
      local swing = Sound(Soul.RArm, 169445073, 0.5, 1.4, false)
      debServ:AddItem(swing, 3)
      for i = 0, length, 0.1 do
        swait()
        MagniDamage(Soul.RArm, 2, true, false, 0, 1.5, false, 0, false, 0, Type, "B-Blood", duration, false, 0, true, Sounds.Sharp.Large, 1, 0.2)
        Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-15), 0, radian(-30)), AnimSpeed)
        Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -2.6, 0) * Euler(0, radian(40), 0), AnimSpeed)
        Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(radian(40), 0, 0), AnimSpeed)
        Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.2, 0.8, -1.4) * Euler(radian(90 + ang), 0, radian(-25)), AnimSpeed)
        Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, -1) * Euler(radian(80), 0, radian(55)), AnimSpeed)
        Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1, -0.6) * Euler(radian(-20), 0, 0), AnimSpeed)
        Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, radian(30), 0), AnimSpeed)
        Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1.3, 0.3) * Euler(radian(-40), 0, 0), AnimSpeed)
        Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, radian(-30), 0), AnimSpeed)
      end
      p = 2
    elseif p == 2 then
      for i = 0, length, 0.1 do
        swait()
        Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-15), 0, radian(-30)), AnimSpeed)
        Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -2.6, 0) * Euler(0, radian(40), 0), AnimSpeed)
        Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(radian(40), 0, 0), AnimSpeed)
        Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, -1) * Euler(radian(80), 0, radian(40)), AnimSpeed)
        Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, 1.2) * Euler(radian(90), 0, radian(-65)), AnimSpeed)
        Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1, -0.6) * Euler(radian(-20), 0, 0), AnimSpeed)
        Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, radian(30), 0), AnimSpeed)
        Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1.3, 0.3) * Euler(radian(-40), 0, 0), AnimSpeed)
        Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, radian(-30), 0), AnimSpeed)
      end
      local swing = Sound(Soul.RArm, 169445073, 0.5, 1.2, false)
      debServ:AddItem(swing, 3)
      for i = 0, length, 0.1 do
        swait()
        MagniDamage(Soul.RArm, 2, true, false, 0, 1.5, false, 0, false, 0, Type, "B-Blood", duration, false, 0, true, Sounds.Sharp.Large, 1, 0.2)
        Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-15), 0, radian(30)), AnimSpeed)
        Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -2.6, 0) * Euler(0, radian(-40), 0), AnimSpeed)
        Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(radian(40), 0, 0), AnimSpeed)
        Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, -1) * Euler(radian(80), 0, radian(-55)), AnimSpeed)
        Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.2, 0.8, -1.4) * Euler(radian(90 + ang), 0, radian(25)), AnimSpeed)
        Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
        Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.3, 0.3) * Euler(radian(-40), 0, 0), AnimSpeed)
        Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, radian(30), 0), AnimSpeed)
        Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1, -0.6) * Euler(radian(-20), 0, 0), AnimSpeed)
        Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, radian(-30), 0), AnimSpeed)
      end
      p = 1
    end
  end
  Punch(1, 0.4, 0.3, "Stun")
  Punch(1, 0.4, 0.3, "Stun")
  for i = 0, 24 do
    Punch(0.2, 0.9, 0.1, "Normal")
  end
  Booleans.SoulFollow = true
  Booleans.SoulAttacking = false
  CoolDowns.NemesisBarrage[1] = 0
end
function SiegeRevolver()
  CoolDowns.SiegeRevolver[1] = 0
  Booleans.Attacking = true
  Booleans.DisableJump = true
  Humanoid.WalkSpeed = 0
  Humanoid.AutoRotate = false
  Booleans.CamFollow = false
  Booleans.AntiTrip = true
  local pos = Inst("BodyPosition", RootPart)
  pos.Position = RootPart.Position
  pos.MaxForce = Vec3(huge, huge, huge)
  for i = 0, 0.8, 0.1 do
    swait()
    local AnimSpeed = 0.5
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, radian(45)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(5), radian(-40), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.6, 0) * Euler(radian(-10), 0, radian(45)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(90), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.5, -0.5) * Euler(radian(90), 0, radian(-40)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.3, 0.1) * Euler(radian(-6), radian(-30), radian(30)), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, 0.3) * Euler(0, radian(32), radian(-5)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(5), 0, 0), AnimSpeed)
  end
  DTPWeld.Part0 = RootPart
  DTPWeld.C0 = cFrame(0, -2, -6)
  DTPWeld.C1 = cFrame()
  debServ:AddItem(pos, 0)
  local height, speed = 50, 60
  local vel = Inst("BodyVelocity", RootPart)
  vel.MaxForce = Vec3(huge, huge, huge)
  vel.Velocity = RootPart.CFrame.lookVector * speed + Vec3(0, height, 0)
  local noScope = 0
  local pitch = 0.6
  local swing = Sound(RightLeg, 234365549, 0.5, pitch, false)
  local s = 1
  debServ:AddItem(swing, 3)
  repeat
    swait()
    if noScope >= 360 * s then
      local swing = Sound(RightLeg, 234365549, 0.5, pitch + 0.2 * s, false)
      debServ:AddItem(swing, 3)
      s = s + 1
    end
    vel.Velocity = RootPart.CFrame.lookVector * speed + Vec3(0, height, 0)
    height = height - 2.5
    MagniDamage(RightLeg, 7, false, false, 0, 2, false, {20, 10}, false, 0, "Knockdown2", "Sphere", 0.15, true, {2, 4}, true, Sounds.Blunt.Small, 0.8, 0.2)
    MagicBlock(Colors[1], "Neon", RightLeg.CFrame * cFrame(0, -4, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, 0, 0, 0, 0.04)
    MagicBlock("Really black", "Neon", RightLeg.CFrame * cFrame(0, -3, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 7, 7, 7, 0, 0, 0, 0.04)
    local AnimSpeed = 0.6
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(30), 0, radian(-25)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(40), radian(30 + noScope), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.1, 0.5, -0.6) * Euler(radian(90), 0, radian(-65)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.4, 0.5, 0.1) * Euler(radian(70), 0, radian(-80)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(0.5, -0.6, -0.4) * Euler(radian(50), radian(-20), radian(30)), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(0, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, -0.4) * Euler(0, radian(22), radian(-12)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(80), 0, 0), AnimSpeed)
    noScope = noScope + 30
  until noScope >= 1080
  StopAllDrags()
  Humanoid.AutoRotate = true
  debServ:AddItem(vel, 0)
  DTPWeld.Part0 = RootPart
  DTPWeld.C0 = cFrame()
  DTPWeld.C1 = cFrame()
  Booleans.Attacking = false
  Booleans.DisableJump = false
  Booleans.CamFollow = true
  Booleans.AntiTrip = false
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
  CoolDowns.SiegeRevolver[1] = 0
end
function DreadedFang(buffered)
  Booleans.Attacking = true
  Booleans.DisableJump = true
  Humanoid.WalkSpeed = 0
  CoolDowns.DreadedFang[1] = 0
  local EHold = true
  local timer = {1, 3}
  local down = Mouse.KeyUp:connect(function(k)
    if k == "e" then
      EHold = false
    end
  end)
  for i = 0, 0.8, 0.1 do
    swait()
    local AnimSpeed = 0.4
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), radian(-8), radian(55)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.25, 0) * Euler(radian(5), radian(-60), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(30), 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(30), 0, radian(55)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-65), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(80), radian(-10), radian(-80)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.6, 0.05) * Euler(radian(-6), radian(-25), radian(-5)), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(radian(-30), 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.85, 0.1) * Euler(0, radian(30), radian(0)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(-30), 0, 0), AnimSpeed)
  end
  if EHold and not buffered then
    Booleans.CorRegen = false
    repeat
      swait(0.01 / frame)
      MagicBlock(Colors[1], "Neon", RightArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 6, 6, 6, 0, 0, 0, 0.3)
      MagicRing(Colors[3], "Neon", RightArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 0.1, 1, 1, 0.1, 0.3)
      CoolDowns.DreadedFang[1] = 0
      timer[1] = timer[1] + 0.01
      Corruption.Value = Corruption.Value - 0.02
    until not EHold or timer[1] >= timer[2] or 0 >= Corruption.Value
    Booleans.CorRegen = true
  end
  down:disconnect()
  local swing = Sound(RightArm, 234365549, 0.5, 0.7, false)
  debServ:AddItem(swing, 3)
  local bb2 = Sound(RightArm, 240517975, 0.4, 1.4, false)
  debServ:AddItem(bb2, 3)
  local bb3 = Sound(RightArm, 183763512, 1, 0.8, false)
  debServ:AddItem(bb3, 3)
  RootPart.Velocity = RootPart.CFrame.lookVector * 50
  for i = 0, 0.8, 0.1 do
    swait()
    MagicRing2(Colors[3], "Neon", RightArm.CFrame * Euler(radian(90), 0, 0), 5, 5, 0, 0.5, 0.5, 0, 0.2)
    MagicBlock(Colors[1], "Neon", RightArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, -0.2, -0.2, -0.2, 0.05)
    MagicBlock("Really black", "Neon", RightArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 2, 0.2, 0.2, 0.2, 0.05)
    MagniDamage(RightArm, 4 + Numbers.rBuff / 2, false, false, 0, 12 * math.floor(timer[1]), false, {40, 50}, false, 0, "SkyRocket", "B-Blood", 0.2, false, 0, true, Sounds.Blunt.Large, 0.8, 0.2)
    local AnimSpeed = 0.4
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-20), 0, radian(-55)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(-1, -1.25, 0) * Euler(radian(5), radian(60), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.55, 0.6, -0.4) * Euler(radian(140), 0, radian(60)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(30), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.65, 0.2) * Euler(radian(-5), radian(20), radian(-40)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.8, 0.4) * Euler(radian(-16), radian(-40), 0), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.4, -0.3, 0.2) * Euler(radian(-8), radian(30), radian(-25)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
  end
  MagicRing2(Colors[3], "Neon", RightArm.CFrame * Euler(radian(90), 0, 0), 10, 10, 0, 2, 2, 0, 0.06)
  swait(0.2 / frame)
  Booleans.Attacking = false
  Booleans.DisableJump = false
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
  CoolDowns.DreadedFang[1] = 0
end
function LuciferCrusher(buffered)
  Booleans.Attacking = true
  Booleans.DisableJump = true
  Humanoid.WalkSpeed = 0
  Corruption.Value = Corruption.Value - 8
  CoolDowns.LuciferCrusher[1] = 0
  local QHold = true
  local timer = {1, 2}
  local down = Mouse.KeyUp:connect(function(k)
    if k == "q" then
      QHold = false
    end
  end)
  for i = 0, 1, 0.1 do
    swait()
    local AnimSpeed = 0.4
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(22), 0, 0), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(16), 0, 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0.1) * Euler(radian(-26), 0, radian(16)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(22), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.1) * Euler(radian(-26), 0, radian(-16)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-22), 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0) * Euler(radian(-16), 0, 0), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(8), 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.3, -0.7) * Euler(radian(-40), 0, radian(-5)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(-6), 0), AnimSpeed)
  end
  if QHold and not buffered then
    Booleans.CorRegen = false
    repeat
      swait(0.01 / frame)
      MagicBlock(Colors[4], "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 6, 6, 6, 0, 0, 0, 0.3)
      MagicRing(Colors[1], "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 0.1, 1, 1, 0.1, 0.3)
      CoolDowns.LuciferCrusher[1] = 0
      timer[1] = timer[1] + 0.02
      Corruption.Value = Corruption.Value - 0.02
    until not QHold or timer[1] >= timer[2] or 0 >= Corruption.Value
    Booleans.CorRegen = true
  end
  down:disconnect()
  local swing = Sound(RightArm, 234365549, 0.5, 0.7, false)
  debServ:AddItem(swing, 3)
  local bb2 = Sound(RightArm, 233856115, 0.4, 1.6, false)
  debServ:AddItem(bb2, 3)
  local bb3 = Sound(RightArm, 183763512, 1, 0.6, false)
  debServ:AddItem(bb3, 3)
  local Vel = Inst("BodyVelocity", RootPart)
  Vel.MaxForce = Vec3(huge, huge, huge)
  local speed = 50
  Vel.Velocity = RootPart.CFrame.lookVector * 50
  local noScope = 0
  Booleans.AntiTrip = true
  DTPWeld.Part0 = RootPart
  DTPWeld.C0 = cFrame(0, 0, -6)
  DTPWeld.C1 = cFrame()
  for i = 0, 1, 0.1 do
    swait()
    if noScope < 270 then
      noScope = noScope + 30
    end
    MagicBlock(Colors[4], "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, -0.2, -0.2, -0.2, 0.05)
    MagicBlock(Colors[1], "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 2, 0.2, 0.2, 0.2, 0.05)
    MagicRing2(Colors[4], "Neon", LeftLeg.CFrame * cFrame(0, 0, 0) * Euler(radian(90), 0, 0), 3, 3, 0, -0.2, -0.2, 0, 0.05)
    Vel.Velocity = RootPart.CFrame.lookVector * 50
    CoolDowns.LuciferCrusher[1] = 0
    MagniDamage(LeftLeg, 4, false, false, 0, 1, false, 0, false, 0, "Normal", "None", 0.1, true, {3, 0}, true, Sounds.Sharp.Small, 0.7, 0.2)
    local AnimSpeed = 0.5
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(22), 0, radian(40)), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(0, radian(noScope), 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(-5), 0, radian(40)), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0.1) * Euler(radian(-6), 0, radian(56)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(22), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.1) * Euler(radian(-56), 0, radian(-12)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-42), 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.3, -0.3, -0.5) * Euler(radian(-16), 0, radian(40)), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.2, 0.2, -0.3) * Euler(radian(-5), 0, radian(-60)), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(-2), 0), AnimSpeed)
  end
  debServ:AddItem(Vel, 0)
  StopAllDrags()
  MagicRing2(Colors[4], "Neon", LeftLeg.CFrame * cFrame(0, -2, 0) * Euler(radian(90), 0, 0), 2, 2, 0, 1, 1, 0, 0.07)
  MagicRing2(Colors[4], "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(radian(90), 0, 0), 4, 4, 0, 1, 1, 0, 0.07)
  MagicRing2(Colors[4], "Neon", LeftLeg.CFrame * cFrame(0, 0, 0) * Euler(radian(90), 0, 0), 6, 6, 0, 1, 1, 0, 0.07)
  swait(0.05 / frame)
  MagniDamage(LeftLeg, 10, false, false, 0, 12 * math.floor(timer[1]), false, {50, 20}, false, 0, "CancelPrev-SkyRocket", "B-Blood", 0.2, false, 0, true, Sounds.Blunt.LargeA, 1.2, 0.2)
  swait(0.25 / frame)
  DTPWeld.Part0 = RootPart
  DTPWeld.C0 = cFrame()
  DTPWeld.C1 = cFrame()
  Booleans.AntiTrip = false
  Booleans.Attacking = false
  Booleans.DisableJump = false
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
  CoolDowns.LuciferCrusher[1] = 0
end
function Riser()
  Booleans.Attacking = true
  Booleans.DisableJump = true
  Humanoid.WalkSpeed = 0
  CoolDowns.Riser[1] = 0
  for i = 0, 1.5, 0.1 do
    swait()
    local AnimSpeed = 0.4
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, 0), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -2.4, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.4, 0.5, -0.3) * Euler(radian(75), 0, radian(-20)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.4, 0.5, -0.3) * Euler(radian(75), 0, radian(20)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0.2) * Euler(radian(-25), radian(-2), 0), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.2, -0.3) * Euler(radian(-15), radian(2), 0), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
  end
  local ro = RootPart.CFrame
  local function SlabRise(h)
    coroutine.resume(coroutine.create(function()
      local col, mat = "Black", "Plastic"
      local part = workspace:FindPartOnRay(Ray.new((RootPart.CFrame * cFrame(0, 0, -1 - 4 * h)).p, (RootPart.CFrame * cFrame(0, 0, -1 - 4 * h) * Euler(radian(-90), 0, 0)).lookVector.Unit * 5), Character, true, true)
      if part then
        col = part.BrickColor.Name
        mat = part.Material.Name
      end
      local slab = CreatePart("Part", F3, col, mat, 0, 0, "Slab", Vec3(8, 10, 4), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
      slab.CFrame = ro * cFrame(0, -13, -5.5 - 6 * h)
      local rumble = Sound(slab, 588707205, 0.5, 1.2, false)
      debServ:AddItem(rumble, 2)
      local rumble = Sound(slab, 178430593, 0.5, 2.5, false)
      debServ:AddItem(rumble, 2)
      local s = slab.CFrame
      slab.CanCollide = true
      local function MakeRocks()
        for i = -4, 4, 1.5 do
          do
            local rock = CreatePart("Part", F3, col, mat, 0, 0, "Rock", Vec3(1.6, 1.6, 1.6), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
            rock.CFrame = s * cFrame(i, 10, 2) * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
            coroutine.resume(coroutine.create(function()
              swait(0.5 / frame)
              for t = 0, 1, 0.1 do
                swait()
                rock.Transparency = t
              end
              debServ:AddItem(rock, 0)
            end))
            local rock = CreatePart("Part", F3, col, mat, 0, 0, "Rock", Vec3(1.6, 1.6, 1.6), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
            rock.CFrame = s * cFrame(i, 10, -2) * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
            coroutine.resume(coroutine.create(function()
              swait(0.5 / frame)
              for t = 0, 1, 0.1 do
                swait()
                rock.Transparency = t
              end
              debServ:AddItem(rock, 0)
            end))
          end
        end
        for i = -2, 2, 2 do
          do
            local rock = CreatePart("Part", F3, col, mat, 0, 0, "Rock", Vec3(1.6, 1.6, 1.6), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
            rock.CFrame = s * cFrame(4, 10, i) * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
            coroutine.resume(coroutine.create(function()
              swait(0.5 / frame)
              for t = 0, 1, 0.1 do
                swait()
                rock.Transparency = t
              end
              debServ:AddItem(rock, 0)
            end))
            local rock = CreatePart("Part", F3, col, mat, 0, 0, "Rock", Vec3(1.6, 1.6, 1.6), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
            rock.CFrame = s * cFrame(-4, 10, i) * Euler(random(-50, 50), random(-50, 50), random(-50, 50))
            coroutine.resume(coroutine.create(function()
              swait(0.5 / frame)
              for t = 0, 1, 0.1 do
                swait()
                rock.Transparency = t
              end
              debServ:AddItem(rock, 0)
            end))
          end
        end
      end
      for i = 0, 3, 0.1 do
        swait()
        if i == 0.5 then
          MakeRocks()
        end
        MagniDamage(slab, 6, false, false, 0, 10, false, {0, 85}, false, 0, "SkyRocket", "B-Blood", 0.6, false, 0, true, Sounds.Blunt.LargeF, 1.2, 0.2)
        slab.CFrame = lerp(slab.CFrame, s * cFrame(0, 15, 0), 0.1)
      end
      for i = 0, 1, 0.1 do
        swait()
        slab.Transparency = i
      end
      debServ:AddItem(slab, 0)
    end))
  end
  coroutine.resume(coroutine.create(function()
    swait(0.03 / frame)
    for i = 0, 2 do
      SlabRise(i)
      swait(0.1 / frame)
    end
  end))
  local swing = Sound(RootPart, 234365549, 0.5, 0.9, false)
  debServ:AddItem(swing, 3)
  for i = 0, 1, 0.1 do
    swait()
    local AnimSpeed = 0.3
    MagicBlock(Colors[1], "Neon", RightArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, -0.2, -0.2, -0.2, 0.05)
    MagicBlock(Colors[3], "Neon", RightArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 2, 0.2, 0.2, 0.2, 0.05)
    MagicBlock(Colors[1], "Neon", LeftArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 8, 8, 8, -0.2, -0.2, -0.2, 0.05)
    MagicBlock(Colors[3], "Neon", LeftArm.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 2, 0.2, 0.2, 0.2, 0.05)
    Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(22), 0, 0), AnimSpeed)
    Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
    RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(16), 0, 0), AnimSpeed)
    RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
    RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-160), 0, radian(-6)), AnimSpeed)
    RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(22), 0), AnimSpeed)
    LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-160), 0, radian(6)), AnimSpeed)
    LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-22), 0), AnimSpeed)
    RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0) * Euler(radian(-16), 0, 0), AnimSpeed)
    RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(8), 0), AnimSpeed)
    LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1, 0) * Euler(radian(-16), 0, 0), AnimSpeed)
    LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(-8), 0), AnimSpeed)
  end
  swait(0.3 / frame)
  Booleans.Attacking = false
  Booleans.DisableJump = false
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
  CoolDowns.Riser[1] = 0
end
function SealRelease()
  Booleans.Attacking = true
  Humanoid.WalkSpeed = 0
  Booleans.DisableJump = true
  Booleans.Invincible = true
  Booleans.CorRegen = false
  Corruption.Value = Corruption.Value - 10
  local level = SealInfo[1]
  Booleans.SealReleased = true
  Booleans.SPDecay = false
  local stop = false
  coroutine.resume(coroutine.create(function()
    repeat
      swait()
      change = 0.5
      local AnimSpeed = 0.4
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-5), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.1 - 0.06 * cosine(sine / 10), 0) * Euler(radian(10), 0, 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(10), 0, radian(90)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(100), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(10), 0, radian(-90)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-100), 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.9 + 0.06 * cosine(sine / 10), -0.1) * Euler(radian(-10), radian(-10), radian(5)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.9 + 0.06 * cosine(sine / 10), -0.1) * Euler(radian(-10), radian(10), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    until stop
  end))
  swait(0.5 / frame)
  chatServ:Chat(Head, "Level " .. level .. " Seal, release!", 2)
  local g = 0
  local g2 = 0
  local g3 = 0
  local g4 = 0
  local inte = 15 * level
  swait(1 / frame)
  coroutine.resume(coroutine.create(function()
    repeat
      swait()
      local intensity = inte / 6
      local rotM = 0.01
      Humanoid.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
      Camera.CFrame = Camera.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
      g = g + 1
      g2 = g2 + 1
      g3 = g3 + 1
      g4 = g4 + 1
      if g >= 6 then
        g = 0
        MagicRing5(Colors[2], "Neon", LeftArm.CFrame * cFrame(0, 0.9, 0) * Euler(radian(-90), 0, 0), 2.5, 2.5, 0.2, 0.2, 0.2, 0, 0.2, 0, 0, -0.5)
        MagicRing5(Colors[2], "Neon", RightArm.CFrame * cFrame(0, 0.9, 0) * Euler(radian(-90), 0, 0), 2.5, 2.5, 0.2, 0.2, 0.2, 0, 0.2, 0, 0, -0.5)
        local sEffect = Sound(RootPart, 200633780, 0.5, 0.9, false)
        debServ:AddItem(sEffect, 3)
      end
      if g2 >= 80 / level then
        MagicWave2(Colors[1], "Neon", RootPart.CFrame * cFrame(0, -2.8, 0), 1.5, 1, 1.5, 0.5, 0.04 * (level / 2), 0.5, 0.03)
        g2 = 0
        local sEffect = Sound(RootPart, 231917833, 0.7, 1.2, false)
        debServ:AddItem(sEffect, 3)
      end
      if level >= 7 and g3 >= 12 then
        MagicRing2(Colors[3], "Neon", RootPart.CFrame * cFrame(0, -2.4, 0) * Euler(radian(-90), 0, 0), 6, 6, 0.1, 1.5, 1.5, 0, 0.1)
        g3 = 0
        local sEffect = Sound(RootPart, 191395725, 0.7, 1.2, false)
        debServ:AddItem(sEffect, 3)
      end
      if g4 >= 10 / level then
        g4 = 0
        local cframe = cFrame(random(-10, 10), -5, random(-10, 10))
        MagicSphere4(Colors[1], "SmoothPlastic", RootPart.CFrame * cframe, 4.5, 4.5, 4.5, 0.05, 0, 0.5, 0)
        MagicSphere4("Really black", "Neon", RootPart.CFrame * cframe, 3.5, 3.5, 3.5, 0.03, 0, 0.5, 0)
      end
    until stop
  end))
  for i = 0, 50, 0.1 do
    swait()
    --[[MSD.Left.LM1.MaxVelocity = radian(0.15)
    MSD.Left.LM1.DesiredAngle = radian(55)
    MSD.Left.LM2.MaxVelocity = radian(0.15)
    MSD.Left.LM2.DesiredAngle = radian(-55)
    MSD.Right.LM1.MaxVelocity = radian(0.15)
    MSD.Right.LM1.DesiredAngle = radian(55)
    MSD.Right.LM2.MaxVelocity = radian(0.15)
    MSD.Right.LM2.DesiredAngle = radian(-55)]]
  end
  MSD.Left.Particles.Enabled = true
  MSD.Right.Particles.Enabled = true
  MSD.Left.CP1.Enabled = true
  MSD.Right.CP1.Enabled = true
  MSD.Left.CP2.Enabled = true
  MSD.Right.CP2.Enabled = true
  MSD.Left.CP3.Enabled = true
  MSD.Right.CP3.Enabled = true
  for i = 0, 25, 0.1 do
    swait()
    local s = 0.02
    --[[MSD.Left.CM1.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, 0, 0), s)
    MSD.Left.CM2.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, 0, 0), s)
    MSD.Left.CM3.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, 0, 0), s)
    MSD.Right.CM1.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, 0, 0), s)
    MSD.Right.CM2.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, 0, 0), s)
    MSD.Right.CM3.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, 0, 0), s)]]
  end
  stop = true
  Humanoid.CameraOffset = Vec3(0, 0, 0)
  Booleans.Attacking = false
  Humanoid.WalkSpeed = Speed[1] + Speed[2]
  Booleans.DisableJump = false
  Booleans.Invincible = false
  Booleans.CorRegen = true
  Booleans.SPDecay = true
  Numbers.rBuff = 1
  repeat
    swait()
    Numbers.Buff = 1 + SealInfo[1] / 10
  until SealInfo[1] == 1 and SealPressure.Value <= 1
  Numbers.Buff = 1
  Booleans.SealReleased = false
 --[[ MSD.Left.LM1.MaxVelocity = radian(2)
  MSD.Left.LM1.DesiredAngle = radian(0)
  MSD.Left.LM2.MaxVelocity = radian(2)
  MSD.Left.LM2.DesiredAngle = radian(0)
  MSD.Right.LM1.MaxVelocity = radian(2)
  MSD.Right.LM1.DesiredAngle = radian(0)
  MSD.Right.LM2.MaxVelocity = radian(2)
  MSD.Right.LM2.DesiredAngle = radian(0)]]
  for i = 0, 1, 0.1 do
    swait()
    local s = 0.3
    --[[MSD.Left.CM1.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, -0.4, 0), s)
    MSD.Left.CM2.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, -0.4, 0), s)
    MSD.Left.CM3.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, -0.4, 0), s)
    MSD.Right.CM1.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, -0.4, 0), s)
    MSD.Right.CM2.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, -0.4, 0), s)
    MSD.Right.CM3.C0 = lerp(MSD.Left.CM1.C0, cFrame(0, -0.4, 0), s)]]
  end
  MSD.Left.Particles.Enabled = false
  MSD.Right.Particles.Enabled = false
  MSD.Left.CP1.Enabled = false
  MSD.Right.CP1.Enabled = false
  MSD.Left.CP2.Enabled = false
  MSD.Right.CP2.Enabled = false
  MSD.Left.CP3.Enabled = false
  MSD.Right.CP3.Enabled = false
  Numbers.rBuff = 0
end
function NWeak()
  Booleans.Attacking = true
  Booleans.DisableJump = true
  if Animation == "Walk" or Animation == "Idle" then
    Humanoid.WalkSpeed = 0
    for i = 0, 0.6, 0.1 do
      swait()
      local AnimSpeed = 0.5
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, radian(45)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(5), radian(-60), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-10), 0, radian(85)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(90), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.2) * Euler(radian(-10), radian(45), radian(-16)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.6, 0.05) * Euler(radian(-6), radian(-15), radian(10)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, 0.3) * Euler(0, radian(30), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    local swing = Sound(RightArm, 169445073, 0.5, 2.1, false)
    debServ:AddItem(swing, 3)
    for i = 0, 0.7, 0.1 do
      swait()
      MagniDamage(RightArm, 1 + Numbers.rBuff / 2, false, false, 0, 1, true, 20, false, 0, "Normal", "Sphere", 0.2, false, 0, true, 511340819, 0.8, 0.2)
      local AnimSpeed = 0.5
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, radian(-45)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(0, radian(40), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.1, 0.5, -0.8) * Euler(radian(90), 0, radian(-60)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.2) * Euler(radian(-60), radian(25), radian(-46)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.9, -0.04) * Euler(radian(5), radian(-35), radian(4)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.6, -0.05) * Euler(radian(-5), radian(10), radian(-15)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Humanoid.WalkSpeed = Speed[1] + Speed[2]
  elseif Animation == "Fall" or Animation == "Jump" then
  elseif Animation == "Crouch" then
  end
  Booleans.Attacking = false
  Booleans.DisableJump = false
end
function NMedium()
  Booleans.Attacking = true
  Booleans.DisableJump = true
  if Animation == "Walk" or Animation == "Idle" then
    Humanoid.WalkSpeed = 0
    for i = 0, 0.8, 0.1 do
      swait()
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, radian(65)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(5), radian(-70), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.6, 0.2) * Euler(radian(-10), radian(-45), radian(45)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.5, -0.5) * Euler(radian(30), radian(-20), radian(-40)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.3, 0.1) * Euler(radian(-6), radian(-30), radian(30)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, 0.3) * Euler(0, radian(32), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(5), 0, 0), AnimSpeed)
    end
    RootPart.Velocity = RootPart.CFrame.lookVector * 15
    local swing = Sound(RightLeg, 169445073, 0.5, 1.5, false)
    debServ:AddItem(swing, 3)
    for i = 0, 0.8, 0.1 do
      swait()
      local AnimSpeed = 0.3
      MagniDamage(RightLeg, 1, false, false, 0, 3, false, 0, false, 0, "Normal", "Sphere", 0.12, false, 0, true, Sounds.Blunt.Small, 1.2, 0.2)
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, radian(-45)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -0.7, 0) * Euler(radian(60), radian(60), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.6, 0.2) * Euler(radian(-40), radian(-45), radian(45)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-30), radian(20), radian(-50)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.3, -0.3, -0.2) * Euler(0, radian(10), radian(50)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(radian(-20), 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1, -0.1, 0.3) * Euler(0, radian(32), radian(-60)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(5), 0, 0), AnimSpeed)
    end
    local swing = Sound(RightLeg, 169445073, 0.5, 1.2, false)
    debServ:AddItem(swing, 3)
    for i = 0, 0.6, 0.1 do
      swait()
      local AnimSpeed = 0.4
      MagniDamage(RightLeg, 1.25, false, false, 0, 2, true, 20, false, 0, "Normal", "Sphere", 0.15, false, 0, true, Sounds.Blunt.Small, 1, 0.2)
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(30), 0, radian(-25)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(50), radian(180), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(50), radian(-15), radian(25)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(50), radian(10), radian(-25)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, -0.1) * Euler(radian(50), radian(-12), radian(5)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1, -0.1) * Euler(radian(50), radian(12), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Humanoid.WalkSpeed = Speed[1] + Speed[2]
  elseif Animation == "Fall" or Animation == "Jump" then
    local noScope = 0
    local pitch = 0.6
    local swing = Sound(RightLeg, 234365549, 0.5, pitch, false)
    local s = 1
    debServ:AddItem(swing, 3)
    repeat
      swait()
      MagniDamage(RightLeg, 1, false, false, 0, 4, false, 20, false, 0, "Normal", "Sphere", 0.15, false, 0, true, Sounds.Blunt.Small, 0.8, 0.2)
      local AnimSpeed = 0.6
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(30), 0, radian(-25)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(40), radian(30 + noScope), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.1, 0.5, -0.6) * Euler(radian(90), 0, radian(-65)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.4, 0.5, 0.1) * Euler(radian(70), 0, radian(-80)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(0.5, -0.6, -0.4) * Euler(radian(50), radian(-20), radian(30)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(0, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, -0.4) * Euler(0, radian(22), radian(-12)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(radian(80), 0, 0), AnimSpeed)
      noScope = noScope + 25
    until noScope >= 360
  elseif Animation == "Crouch" then
  end
  Booleans.Attacking = false
  Booleans.DisableJump = false
end
function NStrong()
  Booleans.Attacking = true
  Booleans.DisableJump = true
  if Animation == "Walk" or Animation == "Idle" then
    Humanoid.WalkSpeed = 0
    for i = 0, 0.9, 0.1 do
      swait()
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(5), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, radian(40)), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.3, 0) * Euler(0, radian(40), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(-5), 0, radian(0)), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.55, -0.1) * Euler(radian(118), 0, radian(45)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(20), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.5, -0.06) * Euler(radian(85), 0, radian(15)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.3, -0.8, 0.3) * Euler(radian(10), radian(-40), radian(10)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.4, -0.5, 0.2) * Euler(radian(-20), radian(40), radian(-10)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    RootPart.Velocity = RootPart.CFrame.lookVector * 20
    local swing = Sound(LeftArm, 169445073, 0.5, 1.2, false)
    debServ:AddItem(swing, 3)
    for i = 0, 1.3, 0.1 do
      swait()
      local AnimSpeed = 0.3
      MagniDamage(LeftArm, 1.5 + Numbers.rBuff / 2, false, false, 0, 8, true, 42, false, 0, "Normal", "Sphere", 0.4, false, 0, true, Sounds.Sharp.Small, 1, 0.2)
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(5), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, radian(-50)), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.3, 0) * Euler(0, radian(-60), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(-5), 0, radian(0)), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.55, -0.1) * Euler(radian(-38), 0, radian(25)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(20), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.6, 0.5, -0.06) * Euler(radian(115), 0, radian(-60)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.5, 0.2) * Euler(radian(-22), radian(-30), radian(10)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.3, -0.6, 0.3) * Euler(radian(-5), radian(40), radian(-10)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Humanoid.WalkSpeed = Speed[1] + Speed[2]
  elseif Animation == "Fall" or Animation == "Jump" then
  elseif Animation == "Crouch" then
  end
  Booleans.Attacking = false
  Booleans.DisableJump = false
end
function NDrive()
  Booleans.Attacking = true
  Booleans.DisableJump = true
  if Animation == "Walk" or Animation == "Idle" then
    Humanoid.WalkSpeed = 0
    local swing = Sound(LeftLeg, 169445073, 0.5, 1.5, false)
    debServ:AddItem(swing, 3)
    Booleans.Invincible = true
    RootPart.Velocity = RootPart.CFrame.lookVector * 20
    for i = 0, 2, 0.1 do
      swait()
      local AnimSpeed = 0.25
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(30), 0, 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-40), radian(-20), radian(15)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-40), radian(20), radian(-15)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0) * Euler(radian(-30), 0, 0), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.6, -0.4) * Euler(radian(100), 0, 0), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Booleans.Invincible = false
    RootPart.Velocity = RootPart.CFrame.lookVector * 30
    local swing = Sound(LeftLeg, 169445073, 0.5, 1.2, false)
    debServ:AddItem(swing, 3)
    for i = 0, 1, 0.1 do
      swait()
      local AnimSpeed = 0.4
      MagicBlock(Colors[1], "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 6, 6, 6, -0.2, -0.2, -0.2, 0.05)
      MagicBlock("Really black", "Neon", LeftLeg.CFrame * cFrame(0, -1, 0) * Euler(random(-50, 50), random(-50, 50), random(-50, 50)), 2, 2, 2, 0.2, 0.2, 0.2, 0.05)
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.6, 0) * Euler(radian(-10), 0, 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-45), radian(-20), radian(25)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-45), radian(20), radian(-25)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.5, -0.1) * Euler(radian(-10), radian(-12), 0), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.75, -0.45) * Euler(radian(20), 0, 0), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    local col, mat = "Black", "Plastic"
    local part = workspace:FindPartOnRay(Ray.new((RootPart.CFrame * cFrame(0, -1, 0)).p, (RootPart.CFrame * cFrame(0, -1, 0) * Euler(radian(-90), 0, 0)).lookVector.Unit * 5), Character, true, true)
    if part then
      col = part.BrickColor.Name
      mat = part.Material.Name
    end
    MagicWave(col, mat, cFrame((LeftLeg.CFrame * cFrame(0, -0.6, 0)).p), 1.5, 1, 1.5, 0.6, 0.2, 0.6, 0.1)
    for i = 0, 6 do
      do
        local rock = CreatePart("Part", F3, col, mat, 0, 0, "Rock", Vec3(2, 1, 2), Vec3(0, 0, 0), Vec3(0, 0, 0), "BlockMesh", Vec3(1, 1, 1), _, _)
        rock.CFrame = cFrame((LeftLeg.CFrame * cFrame(0, -1.5, 0)).p) * cFrame(0, -5, 0)
        local r = cFrame((LeftLeg.CFrame * cFrame(0, -1.1, 0)).p) * Euler(0, radian(i * 60), 0) * cFrame(0, 0, 1) * Euler(radian(-30), 0, 0)
        coroutine.resume(coroutine.create(function()
          for u = 0, 4, 0.1 do
            swait()
            rock.CFrame = lerp(rock.CFrame, r, 0.6)
          end
          for t = 0, 1, 0.1 do
            swait()
            rock.Transparency = t
          end
          debServ:AddItem(rock, 0)
        end))
      end
    end
    local boom = Sound(LeftLeg, 231917806, 0.5, 1.2, false)
    debServ:AddItem(boom, 3)
    MagniDamage(LeftLeg, 5, false, false, 0, 8, false, {40, 20}, false, 0, "Knockdown2", "Sphere", 0.1, false, 0, true, Sounds.Sharp.MedH, 1, 0.2)
    swait(0.2 / frame)
    Humanoid.WalkSpeed = Speed[1] + Speed[2]
  elseif Animation == "Fall" or Animation == "Jump" then
  elseif Animation == "Crouch" then
  end
  Booleans.Attacking = false
  Booleans.DisableJump = false
end
function FDash()
  if Animation == "Idle" or Animation == "Walk" then
    Booleans.AnimOverride = true
    local pos = Inst("BodyPosition")
    pos.Position = RootPart.Position
    pos.MaxForce = Vec3(0, huge, 0)
    pos.Parent = RootPart
    Booleans.Invincible = true
    Booleans.Dashing = true
    Booleans.CanDash = false
    local g = 0
    MagicRing2(Colors[3], "Neon", RootPart.CFrame, 1, 1, 0.1, 1, 1, 0, 0.05)
    local dashs = Sound(RootPart, 241816017, 0.4, 1.6, false)
    debServ:AddItem(dashs, 3)
    for i = 0, 1.5, 0.1 do
      if Booleans.Attacking then
        break
      end
      swait()
      if Booleans.Attacking then
        break
      end
      if i >= 0.75 then
        Booleans.Invincible = false
      end
      FakeRoot.CFrame = lerp(FakeRoot.CFrame, FakeRoot.CFrame * cFrame(0, 0, -3), 0.3)
      g = g + 1
      if g >= 4 then
        for _, p in pairs(Character:GetChildren()) do
          if p ~= RootPart and p:IsA("BasePart") then
            MagicBlock3(Colors[1], "Neon", p:GetRenderCFrame(), p.Size.X / 0.205, p.Size.Y / 0.205, p.Size.Z / 0.205, 0.05)
          end
        end
        g = 0
      end
      local AnimSpeed = 0.6
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-15), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.1, 0) * Euler(radian(-30), 0, 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-50), 0, radian(10)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(20), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-50), 0, radian(-10)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-20), 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.2, -0.5) * Euler(radian(-15), radian(-10), radian(5)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.6, -0.1) * Euler(radian(-28), radian(10), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Booleans.Dashing = false
    Booleans.Invincible = false
    debServ:AddItem(pos, 0)
    Booleans.AnimOverride = false
    for i = 0, 3, 0.1 do
      Booleans.CanDash = false
      swait()
      Booleans.CanDash = false
    end
    Booleans.CanDash = true
  elseif Animation == "Fall" or Animation == "Jump" then
    Booleans.AnimOverride = true
    local pos = Inst("BodyPosition")
    pos.Position = RootPart.Position
    pos.MaxForce = Vec3(0, huge, 0)
    pos.Parent = RootPart
    Booleans.Invincible = true
    Booleans.Dashing = true
    Booleans.CanDash = false
    local g = 0
    MagicRing2(Colors[3], "Neon", RootPart.CFrame, 1, 1, 0.1, 1, 1, 0, 0.05)
    local dashs = Sound(RootPart, 241816017, 0.4, 1.6, false)
    debServ:AddItem(dashs, 3)
    for i = 0, 1.5, 0.1 do
      if Booleans.Attacking then
        break
      end
      swait()
      if Booleans.Attacking then
        break
      end
      if i >= 0.75 then
        Booleans.Invincible = false
      end
      FakeRoot.CFrame = lerp(FakeRoot.CFrame, FakeRoot.CFrame * cFrame(0, 0, -3), 0.3)
      g = g + 1
      if g >= 4 then
        for _, p in pairs(Character:GetChildren()) do
          if p ~= RootPart and p:IsA("BasePart") then
            MagicBlock3(Colors[1], "Neon", p:GetRenderCFrame(), p.Size.X / 0.205, p.Size.Y / 0.205, p.Size.Z / 0.205, 0.08)
          end
        end
        g = 0
      end
      local AnimSpeed = 0.6
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-45), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.1, 0) * Euler(radian(-70), 0, 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-30), 0, radian(10)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(30), 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-30), 0, radian(-10)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-30), 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.3, -0.5) * Euler(radian(-5), radian(-10), radian(5)), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.7, -0.1) * Euler(radian(-18), radian(10), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Booleans.Dashing = false
    Booleans.Invincible = false
    debServ:AddItem(pos, 0)
    Booleans.AnimOverride = false
  end
end
function BDash()
  if Animation == "Idle" or Animation == "Walk" then
    Booleans.AnimOverride = true
    local pos = Inst("BodyPosition")
    pos.Position = RootPart.Position
    pos.MaxForce = Vec3(0, huge, 0)
    pos.Parent = RootPart
    Booleans.Invincible = true
    Booleans.Dashing = true
    Booleans.CanDash = false
    local jump = Sound(RootPart, 158149887, 0.3, 1.1, false)
    debServ:AddItem(jump, 3)
    for i = 1.5, 0, -0.1 do
      if Booleans.Attacking then
        break
      end
      swait()
      if Booleans.Attacking then
        break
      end
      if i <= 0.25 then
        Booleans.Invincible = false
      end
      FakeRoot.CFrame = lerp(FakeRoot.CFrame, FakeRoot.CFrame * cFrame(0, i / 1.5, 1.5), 0.3)
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(35), radian(-4), radian(45)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(25), radian(-60), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.6, 0.2) * Euler(radian(-40), radian(-35), radian(25)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.2) * Euler(radian(-40), radian(45), radian(-16)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.6, 0.07) * Euler(radian(52), radian(-5), 0), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, 0.3) * Euler(radian(26), radian(40), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Booleans.Dashing = false
    Booleans.Invincible = false
    debServ:AddItem(pos, 0)
    Booleans.AnimOverride = false
    for i = 0, 3, 0.1 do
      Booleans.CanDash = false
      swait()
      Booleans.CanDash = false
    end
    Booleans.CanDash = true
  elseif Animation == "Fall" or Animation == "Jump" then
    Booleans.AnimOverride = true
    local pos = Inst("BodyPosition")
    pos.Position = RootPart.Position
    pos.MaxForce = Vec3(0, huge, 0)
    pos.Parent = RootPart
    Booleans.Invincible = true
    Booleans.Dashing = true
    Booleans.CanDash = false
    local g = 0
    MagicRing2(Colors[3], "Neon", RootPart.CFrame, 1, 1, 0.1, 1, 1, 0, 0.05)
    local dashs = Sound(RootPart, 241816017, 0.4, 1.2, false)
    debServ:AddItem(dashs, 3)
    for i = 1.5, 0, -0.1 do
      if Booleans.Attacking then
        break
      end
      swait()
      if Booleans.Attacking then
        break
      end
      if i <= 0.25 then
        Booleans.Invincible = false
      end
      g = g + 1
      if g >= 4 then
        for _, p in pairs(Character:GetChildren()) do
          if p ~= RootPart and p:IsA("BasePart") then
            MagicBlock3(Colors[1], "Neon", p:GetRenderCFrame(), p.Size.X / 0.205, p.Size.Y / 0.205, p.Size.Z / 0.205, 0.08)
          end
        end
        g = 0
      end
      FakeRoot.CFrame = lerp(FakeRoot.CFrame, FakeRoot.CFrame * cFrame(0, 0, 1.5), 0.3)
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(35), radian(-4), radian(45)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2, 0) * Euler(radian(25), radian(-60), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.6, 0.2) * Euler(radian(-40), radian(-35), radian(25)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.2) * Euler(radian(-40), radian(45), radian(-16)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.6, 0.07) * Euler(radian(52), radian(-5), 0), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, 0.3) * Euler(radian(26), radian(40), radian(-5)), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    end
    Booleans.Dashing = false
    Booleans.Invincible = false
    debServ:AddItem(pos, 0)
    Booleans.AnimOverride = false
  end
end
function KeyStrokesAttacks()
  if InputCommand == "642D" then
    if Corruption.Value >= 20 then
      SoulBufferer("SummonNemesis", 8)
      Booleans.Successful_KeyStroke = true
      SummonNemesis()
    elseif Booleans.SoulOut and not Booleans.SoulAttacking then
      Booleans.Successful_KeyStroke = true
      SummonNemesis()
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "446D" then
    if Corruption.Value >= 15 and not Booleans.BarrierGuard then
      local buffed = Bufferer("TyrantUppercut", 4)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        TyrantUppercut()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "4242C" then
    if CoolDowns.TerrorAssault[1] >= CoolDowns.TerrorAssault[2] and not Booleans.BarrierGuard then
      local buffed = Bufferer("TerrorAssault", 3)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        TerrorAssault()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "4242D" then
    if Corruption.Value >= 15 and not Booleans.BarrierGuard and CoolDowns.NemesisBarrage[1] >= CoolDowns.NemesisBarrage[2] then
      local buffed = SoulBufferer("NemesisBarrage", 6)
      if not Booleans.SoulAttacking then
        if not Booleans.SoulOut then
          if Corruption.Value >= 21 then
            Booleans.Successful_KeyStroke = true
            Corruption.Value = Corruption.Value - 6
            SummonNemesis()
          else
            return
          end
        end
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        NemesisBarrage()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "24A" then
    if CoolDowns.SiegeRevolver[1] >= CoolDowns.SiegeRevolver[2] and not Booleans.BarrierGuard then
      local buffed = Bufferer("SiegeRevolver", 3)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        SiegeRevolver()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "426C" then
    if CoolDowns.DreadedFang[1] >= CoolDowns.DreadedFang[2] and not Booleans.BarrierGuard then
      local buffed = Bufferer("DreadedFang", 4)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        DreadedFang(buffed)
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "426D" then
    if CoolDowns.LuciferCrusher[1] >= CoolDowns.LuciferCrusher[2] and not Booleans.BarrierGuard and Corruption.Value >= 8 then
      local buffed = Bufferer("LuciferCrusher", 6)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        LuciferCrusher(buffed)
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "66B" then
    if CoolDowns.Riser[1] >= CoolDowns.Riser[2] and not Booleans.BarrierGuard and Animation ~= "Fall" and Animation ~= "Jump" then
      local buffed = Bufferer("Riser", 5)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        Riser()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "4646D" then
    if Corruption.Value >= 10 and not Booleans.BarrierGuard and 1 < SealInfo[1] and not Booleans.SealReleased then
      local buffed = Bufferer("SealRelease", 4)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        SealRelease()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "426B" then
    if CoolDowns.NightStalk[1] >= CoolDowns.NightStalk[2] and not Booleans.BarrierGuard then
      local buffed = Bufferer("NightStalk", 8)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        NightStalk()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "A" then
    if not Booleans.BarrierGuard then
      local buffed = Bufferer("Weak", 2)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        NWeak()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "B" then
    if not Booleans.BarrierGuard then
      local buffed = Bufferer("Medium", 2)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        NMedium()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "C" then
    if not Booleans.BarrierGuard then
      local buffed = Bufferer("Strong", 2)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
        NStrong()
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      Booleans.KeyStroke_CoolDown = true
    end
  elseif InputCommand == "D" then
    if not Booleans.SoulOut then
      if not Booleans.BarrierGuard then
        local buffed = Bufferer("Drive", 2)
        if not Booleans.Attacking then
          if not buffed then
            Booleans.Successful_KeyStroke = true
          end
          NDrive()
        else
          Booleans.KeyStroke_CoolDown = true
        end
      else
        Booleans.KeyStroke_CoolDown = true
      end
    else
      local buffed = SoulBufferer("SDrive", 2)
      if not Booleans.Attacking then
        if not buffed then
          Booleans.Successful_KeyStroke = true
        end
      else
        Booleans.KeyStroke_CoolDown = true
      end
    end
  end
end
local Input_Time = 0.8
local Input_MaxTime = 0.8
local Input_Addition = 0.2
local Input_Lose = 0.1
local Max_Input = 12
local Running_Timer = false
function Input_Timer()
  if not Running_Timer then
    Running_Timer = true
    repeat
      wait()
      Input_Time = Input_Time - Input_Lose
    until Input_Time <= 0 or Booleans.Successful_KeyStroke or string.len(InputCommand) == Max_Input or Booleans.KeyStroke_CoolDown or string.sub(InputCommand, string.len(InputCommand)) == "A" or string.sub(InputCommand, string.len(InputCommand)) == "B" or string.sub(InputCommand, string.len(InputCommand)) == "C" or string.sub(InputCommand, string.len(InputCommand)) == "D"
    local function TweenTransCol(p, newCol, i)
      p.TextColor3 = newCol
      p:TweenPosition(UD2(0.075 * i, 0, -3, 0), _, "Linear", 0.5, true)
      debServ:AddItem(p, 1)
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.04 do
          swait()
          p.TextTransparency = i
          p.TextStrokeTransparency = i
        end
      end))
    end
    if Input_Time <= 0.1 and not Booleans.Successful_KeyStroke then
      for i, p in pairs(InputFrameTable) do
        if p:IsA("TextLabel") then
          TweenTransCol(p, Col3(0.6666666666666666, 0, 0), i)
        end
      end
    end
    if string.len(InputCommand) == Max_Input or string.sub(InputCommand, string.len(InputCommand)) == "A" or string.sub(InputCommand, string.len(InputCommand)) == "B" or string.sub(InputCommand, string.len(InputCommand)) == "C" or string.sub(InputCommand, string.len(InputCommand)) == "D" then
      wait()
      if not Booleans.Successful_KeyStroke then
        for i, p in pairs(InputFrameTable) do
          if p:IsA("TextLabel") then
            TweenTransCol(p, Col3(0.6666666666666666, 0, 0), i)
          end
        end
      end
    end
    if Booleans.Successful_KeyStroke then
      for i, p in pairs(InputFrameTable) do
        if p:IsA("TextLabel") then
          TweenTransCol(p, Col3(0, 1, 0), i)
        end
      end
    end
    if Booleans.KeyStroke_CoolDown then
      for i, p in pairs(InputFrameTable) do
        if p:IsA("TextLabel") then
          TweenTransCol(p, Col3(1, 0.6666666666666666, 0), i)
        end
      end
    end
    InputFrameTable = {}
    InputCommand = ""
    Input_Time = Input_MaxTime
    Booleans.Successful_KeyStroke = false
    Booleans.KeyStroke_CoolDown = false
    Running_Timer = false
  end
end
Mouse.KeyDown:connect(function(key)
  if Booleans.Equipped and string.len(InputCommand) ~= Max_Input and (key == "w" or key == "a" or key == "s" or key == "d" or key == "q" or key == "e" or key == "c" or key == "x") then
    if key == "w" then
      InputCommand = InputCommand .. "8"
    elseif key == "s" then
      InputCommand = InputCommand .. "2"
    elseif key == "a" then
      InputCommand = InputCommand .. "4"
    elseif key == "d" then
      InputCommand = InputCommand .. "6"
    elseif key == "x" then
      InputCommand = InputCommand .. "A"
    elseif key == "c" then
      InputCommand = InputCommand .. "B"
    elseif key == "e" then
      InputCommand = InputCommand .. "C"
    elseif key == "q" then
      InputCommand = InputCommand .. "D"
    end
    local newKP = KPTemplate:Clone()
    newKP.Parent = KP
    newKP.Text = string.upper(key)
    if Input_Time < Input_MaxTime then
      Input_Time = Input_Time + Input_Addition
    end
    table.insert(InputFrameTable, newKP)
    for i, p in pairs(InputFrameTable) do
      if p == newKP then
        newKP:TweenPosition(UD2(0.075 * i, 0, 0, 0), _, "Linear", 0.08, true)
      end
    end
    coroutine.resume(coroutine.create(function()
      KeyStrokesAttacks()
    end))
    Input_Timer()
  end
end)
Mouse.KeyDown:connect(function(key)
  if key == "f" and not Booleans.Equipped then
    StopRBLXAnims()
    Booleans.Equipped = true
  elseif key == "f" and Booleans.Equipped and not Booleans.Attacking then
    Booleans.Attacking = true
    ReturnToNormalJoints()
    Booleans.Attacking = false
    Booleans.Equipped = false
  end
  if key == "2" and Booleans.Equipped and not TwoD and not Booleans.Attacking then
    TwoD = true
    local P, H = FindNearestHumanoidPart(Mouse.Hit.p, 25)
    if P and H then
      TargetInfo[2] = H
      if P.Name == "HumanoidRootPart" then
        TargetInfo[1] = P
      else
        local r = P.Parent:FindFirstChild("HumanoidRootPart")
        if r then
          TargetInfo[1] = r
        else
          TargetInfo[1] = P
        end
      end
      CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
      Directer.CFrame = cFrame(RootPart.Position, TargetInfo[1].Position)
      Directer.MaxTorque = Vec3(0, huge, 0)
    else
      local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
      CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
      Directer.CFrame = RootPart.CFrame
      Directer.MaxTorque = Vec3(0, huge, 0)
    end
    Controller.Disabled = true
    Humanoid:Move(Vec3(0, 0, 0), false)
  elseif key == "2" and Booleans.Equipped and TwoD and not Booleans.Attacking then
    TwoD = false
    Humanoid.AutoRotate = true
    TargetInfo[1] = nil
    TargetInfo[2] = nil
    Camera.CameraSubject = Humanoid
    Camera.CameraType = "Custom"
    Directer.MaxTorque = Vec3(0, 0, 0)
    Controller.Disabled = false
    Humanoid:Move(Vec3(0, 0, 0), false)
  end
  if key == "d" and TwoD then
    do
      local holding = true
      local hold = Mouse.KeyUp:connect(function(k)
        if k == "d" then
          holding = false
        end
      end)
      Booleans.Backward = false
      repeat
        swait()
        Booleans.Forward = true
        if not Booleans.Crouching then
          Humanoid:Move(Vec3(1, 0, 0), true)
        end
      until not holding or not Booleans.Forward or not TwoD
      hold:disconnect()
      Humanoid:Move(Vec3(0, 0, 0), true)
      Booleans.Forward = false
    end
  end
  if key == "a" and TwoD then
    do
      local holding = true
      local hold = Mouse.KeyUp:connect(function(k)
        if k == "a" then
          holding = false
        end
      end)
      Booleans.Forward = false
      if Booleans.Crouching and not Booleans.Attacking then
        Booleans.CorRegen = false
      end
      repeat
        swait()
        Booleans.Backward = true
        if not Booleans.Crouching then
          Humanoid:Move(Vec3(-1, 0, 0), true)
        end
      until not holding or not Booleans.Backward or not TwoD
      if Booleans.Crouching then
        Booleans.CorRegen = true
      end
      hold:disconnect()
      Humanoid:Move(Vec3(0, 0, 0), true)
      Booleans.Backward = false
    end
  end
  if key == "s" and TwoD and Booleans.Equipped then
    Booleans.Crouching = true
    local hold = Mouse.KeyUp:connect(function(k)
      if k == "s" then
        Booleans.Crouching = false
      end
    end)
    local LAnim = Animation
    local g = 0
    local lastH = Humanoid.Health
    if Booleans.Backward and not Booleans.Attacking then
      Booleans.CorRegen = false
    end
    repeat
      swait()
      if Animation ~= "Crouch" then
        LAnim = Animation
      end
      Booleans.DisableJump = true
      Humanoid:Move(Vec3(0, 0, 0), true)
      if Booleans.Backward and 0 < Barrier.Value and Booleans.CanGuard then
        Booleans.BarrierGuard = true
        CoolDowns.BarrierRegen[1] = 0
        if lastH > Humanoid.Health then
          local n = lastH - Humanoid.Health
          Barrier.Value = Barrier.Value - n
          Humanoid.Health = lastH
          local gah = Sound(LeftArm, 206083252, 0.5, 0.8, false)
          debServ:AddItem(gah, 3)
          MagicRing2("Really black", "Neon", RootPart.CFrame * cFrame(0, -1, -3.1), 2, 2, 0, 1, 1, 0.3, 0.07)
        else
          Humanoid.Health = lastH
        end
      else
        Booleans.BarrierGuard = false
      end
      if Booleans.BarrierGuard then
        g = g + 2
        if g >= 24 then
          g = 0
          MagicRing2(Colors[1], "Neon", RootPart.CFrame * cFrame(0, -1, -3.1), 2, 2, 0, 1, 1, 0, 0.12)
          MagicSphere(Colors[1], "Neon", RootPart.CFrame * cFrame(0, -1, -3.1) * Euler(radian(90), 0, 0), 5, 0.1, 5, 2, 0, 2, 0.12)
        end
        Booleans.AnimOverride = true
        local AnimSpeed = 0.6
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-20 - 2 * cosine(sine / 10)), 0, radian(50)), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(-1, -2.1 - 0.04 * cosine(sine / 10), 0) * Euler(0, radian(-50), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, 0), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, -0.5 + 0.04 * cosine(sine / 10)) * Euler(radian(56), 0, radian(15)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(0), 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.2, 1.2, -0.6) * Euler(radian(200), 0, radian(20)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-40), 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.2 + 0.04 * cosine(sine / 10), -0.2 + 0.04 * cosine(sine / 10)) * Euler(radian(-5), radian(-20), 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 0.6, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1.1 + 0.04 * cosine(sine / 10), -0.3 + 0.04 * cosine(sine / 10)) * Euler(radian(-35), 0, 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      end
      if not Booleans.Attacking and not Booleans.BarrierGuard and Animation ~= "Fall" and Animation ~= "Jump" then
        Animation = "Crouch"
        Booleans.AnimOverride = true
        change = 0.4
        local AnimSpeed = 0.4
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-20 - 2 * cosine(sine / 10)), 0, radian(50)), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(-1, -2.1 - 0.04 * cosine(sine / 10), 0) * Euler(0, radian(-50), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(radian(50), 0, 0), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, -0.5 + 0.04 * cosine(sine / 10)) * Euler(radian(56), 0, radian(15)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(0), 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0 + 0.04 * cosine(sine / 10)) * Euler(radian(50), 0, radian(-10)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.9, 0) * Euler(0, radian(-30), 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.2 + 0.04 * cosine(sine / 10), -0.2 + 0.04 * cosine(sine / 10)) * Euler(radian(-5), radian(-20), 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 0.6, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1.1 + 0.04 * cosine(sine / 10), -0.3 + 0.04 * cosine(sine / 10)) * Euler(radian(-35), 0, 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      elseif not Booleans.BarrierGuard then
        Booleans.AnimOverride = false
      end
    until not Booleans.Crouching or not TwoD or Booleans.Attacking
    hold:disconnect()
    if not Booleans.CorRegen and not Booleans.Attacking then
      Booleans.CorRegen = true
    end
    Animation = LAnim
    Booleans.BarrierGuard = false
    Booleans.AnimOverride = false
    Booleans.DisableJump = false
    Booleans.Crouching = false
  end
  if key == " " and TwoD then
    Humanoid.Jump = true
  end
  if Booleans.Equipped and not Booleans.Attacking and TwoD and not Booleans.BarrierGuard and not Booleans.Dashing and Booleans.CanDash then
    if key == "d" then
      swait(0.01 / frame)
      do
        local double = false
        local k = Mouse.KeyDown:connect(function(key2)
          if key2 == "d" then
            double = true
          end
        end)
        local t = 0
        repeat
          swait(0.01 / frame)
          t = t + 0.01
        until t >= 0.1 or double
        if double then
          Barrier.Value = Barrier.Value - 5
          FDash()
        end
      end
    elseif key == "a" then
      swait(0.01 / frame)
      do
        local double = false
        local k = Mouse.KeyDown:connect(function(key2)
          if key2 == "a" then
            double = true
          end
        end)
        local t = 0
        repeat
          swait(0.01 / frame)
          t = t + 0.01
        until t >= 0.1 or double
        if double then
          Barrier.Value = Barrier.Value - 5
          BDash()
        end
      end
    end
  end
end)
local fStep = Sound(RootPart, 304562332, 0, 1, true)
fStep.SoundId = ""
fStep.Playing = false
Humanoid.Changed:connect(function()
  if Humanoid.Jump and Booleans.DisableJump then
    Humanoid.Jump = false
  end
end)
Humanoid.Running:connect(function(speed)
  if speed > 1 then
    if Animation ~= "Walk" then
      Animation = "Walk"
      Booleans.CanDash = true
    end
  elseif speed < 1 or speed == 0 then
    Animation = "Idle"
    Booleans.CanDash = true
  end
end)
Humanoid.FreeFalling:connect(function()
  if Animation ~= "Fall" then
    Animation = "Fall"
  end
end)
Humanoid.Jumping:connect(function()
  Animation = "Jump"
  if Booleans.Equipped and not Booleans.JumpAnim and not Booleans.DisableJump and not Booleans.AnimOverride then
    Booleans.JumpAnim = true
    for i = 0, 2, 0.1 do
      swait()
      if not Booleans.Attacking then
        fStep.Playing = false
        fStep.Volume = 0
        Animation = "Jump"
        change = 0.5
        local AnimSpeed = 0.3
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(-25), 0, 0), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(-20), 0, 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(-30), 0, radian(8)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0) * Euler(radian(-30), 0, radian(-8)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.4, -0.6) * Euler(radian(-40), 0, 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(0), 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8, -0.1) * Euler(radian(-20), 0, 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(0), 0), AnimSpeed)
      end
    end
    Animation = "Fall"
    Booleans.JumpAnim = false
  end
end)
local ptusn = false
Corruption.Changed:connect(function()
  CBar:TweenSize(UD2(Corruption.Value / Corruption.MaxValue, 0, 1, 0), _, "Linear", 0.3, true)
  if Booleans.SoulOut and Corruption.Value < 10 and not ptusn then
    if Booleans.SoulAttacking then
      ptusn = true
      repeat
        swait()
      until not Booleans.SoulAttacking
      ptusn = false
    end
    SummonNemesis()
  end
end)
Barrier.Changed:connect(function()
  BBar:TweenSize(UD2(Barrier.Value / Barrier.MaxValue, 0, 1, 0), _, "Linear", 0.3, true)
  if Barrier.Value <= 0 then
    Booleans.CanGuard = false
    BBar.BackgroundColor3 = Col3(0.3137254901960784, 0.3137254901960784, 0.3137254901960784)
  end
  if not Booleans.CanGuard and Barrier.Value == Barrier.MaxValue then
    Booleans.CanGuard = true
    BBar.BackgroundColor3 = BrickCol(Colors[2]).Color
  end
end)
SealPressure.Changed:connect(function()
  SBar:TweenSize(UD2(SealPressure.Value / SealPressure.MaxValue, 0, 1, 0), _, "Linear", 0.3, true)
  if SealPressure.Value >= SealPressure.MaxValue and SealInfo[1] < 10 then
    SealInfo[1] = SealInfo[1] + 1
    SealPressure.MaxValue = SealInfo[2] * SealInfo[1]
    SealPressure.Value = 0
  elseif SealPressure.Value < 0 and 1 < SealInfo[1] then
    SealInfo[1] = SealInfo[1] - 1
    SealPressure.MaxValue = SealInfo[2] * SealInfo[1]
    SealPressure.Value = SealPressure.MaxValue - 1
  end
end)
runServ.RenderStepped:connect(function()
  if Humanoid.Health > 0 then
    coroutine.resume(coroutine.create(function()
      Bringer()
    end))
  end
  coroutine.resume(coroutine.create(function()
    CameraManager()
  end))
  if Booleans.AntiTrip then
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    Balancer.MaxTorque = Vec3(huge, 0, huge)
  else
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    Balancer.MaxTorque = Vec3(0, 0, 0)
  end
  if not Booleans.Invincible then
    Numbers.LastHealth = Humanoid.Health
  else
    Humanoid.Health = Numbers.LastHealth
  end
end)
coroutine.resume(coroutine.create(function()
  while true do
    swait(0.4 / frame)
    if not Booleans.SoulOut and Booleans.CorRegen then
      Corruption.Value = Corruption.Value + 1
    end
    if SealInfo[1] >= 3 and not Booleans.SealReleased and Booleans.SPDecay then
      SealPressure.Value = SealPressure.Value - SealInfo[3] * (SealInfo[1] + 4)
    elseif Booleans.SealReleased and Booleans.SPDecay and SealInfo[1] > 0 then
      SealPressure.Value = SealPressure.Value - SealPressure.MaxValue / 75
    end
    if not Booleans.BarrierGuard and CoolDowns.BarrierRegen[1] >= CoolDowns.BarrierRegen[2] and Booleans.CanGuard then
      Barrier.Value = Barrier.Value + Barrier.MaxValue / 150
    elseif not Booleans.BarrierGuard and CoolDowns.BarrierRegen[1] >= CoolDowns.BarrierRegen[2] and not Booleans.CanGuard then
      Barrier.Value = Barrier.Value + Barrier.MaxValue / 175
    end
  end
end))
while true do
  swait(0.01 / frame)
  for i, t in pairs(CoolDowns) do
    if t[1] < t[2] then
      t[1] = t[1] + 0.02
    end
  end
  sine = sine + change
  CSeal.Text = SealInfo[1]
  CLabel.Text = "Corruption(" .. math.floor(Corruption.Value * 10) .. ")"
  if Booleans.SoulOut and Booleans.SoulFollow then
    SoulPos.Position = (RootPart.CFrame * cFrame(0, 2.5, 5)).p
    SoulGyr.CFrame = cFrame(Soul.Root.Position, (RootPart.CFrame * cFrame(0, 2.5, 2)).p)
  end
  if Booleans.SoulOut and not Booleans.SoulAnimOverride and not Booleans.SoulAttacking then
    if Animation == "Idle" or Animation == "Crouch" then
      local AnimSpeed = 0.3
      Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(20 - 1.5 * cosine(sine / 10)), 0, radian(50)), AnimSpeed)
      Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -1.6 - 0.1 * cosine(sine / 10), 0) * Euler(0, radian(-50), 0), AnimSpeed)
      Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, 0) * Euler(radian(-10), radian(-50 - 2 * cosine(sine / 10)), radian(30 + 2 * cosine(sine / 10))), AnimSpeed)
      Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, 0) * Euler(radian(-10), radian(10 + 2 * cosine(sine / 10)), radian(-10 - 2 * cosine(sine / 10))), AnimSpeed)
      Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.6, 0) * Euler(radian(-5 - 2 * cosine(sine / 10)), radian(-15), 0), AnimSpeed)
      Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -0.9, -0.7) * Euler(radian(-15 - 2 * cosine(sine / 10)), radian(10), 0), AnimSpeed)
      Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
    elseif Animation == "Walk" or Animation == "Jump" then
      local AnimSpeed = 0.3
      Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(-10), 0, 0), AnimSpeed)
      Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -1.6 - 0.1 * cosine(sine / 10), 0) * Euler(radian(-20), 0, 0), AnimSpeed)
      Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, 0) * Euler(radian(-35), 0, radian(15)), AnimSpeed)
      Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, 0) * Euler(radian(-35), 0, radian(-15)), AnimSpeed)
      Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.6, 0) * Euler(radian(-20), 0, radian(10)), AnimSpeed)
      Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1.6, 0) * Euler(radian(-20), 0, radian(-10)), AnimSpeed)
      Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
    elseif Animation == "Fall" then
      local AnimSpeed = 0.3
      Soul.Neck.C0 = lerp(Soul.Neck.C0, Soul.NNC0 * cFrame(0, 0, 0) * Euler(radian(30), 0, 0), AnimSpeed)
      Soul.Neck.C1 = lerp(Soul.Neck.C1, Soul.NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RootHip.C0 = lerp(Soul.RootHip.C0, cFrame(0, -1.6, 0) * Euler(radian(20), 0, 0), AnimSpeed)
      Soul.RootHip.C1 = lerp(Soul.RootHip.C1, cFrame(0, -1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RShoulder.C0 = lerp(Soul.RShoulder.C0, cFrame(2.4, 0.8, 0) * Euler(radian(15), 0, radian(65)), AnimSpeed)
      Soul.RShoulder.C1 = lerp(Soul.RShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LShoulder.C0 = lerp(Soul.LShoulder.C0, cFrame(-2.4, 0.8, 0) * Euler(radian(15), 0, radian(-65)), AnimSpeed)
      Soul.LShoulder.C1 = lerp(Soul.LShoulder.C1, cFrame(0, 0.8, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.RHip.C0 = lerp(Soul.RHip.C0, cFrame(2.4, -1.6, 0) * Euler(radian(-30), 0, radian(5)), AnimSpeed)
      Soul.RHip.C1 = lerp(Soul.RHip.C1, cFrame(1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
      Soul.LHip.C0 = lerp(Soul.LHip.C0, cFrame(-2.4, -1.6, 0) * Euler(radian(-30), 0, radian(-5)), AnimSpeed)
      Soul.LHip.C1 = lerp(Soul.LHip.C1, cFrame(-1.6, 1.6, 0) * Euler(0, 0, 0), AnimSpeed)
    end
  end
  if Booleans.Equipped and not Booleans.AnimOverride and not Booleans.Attacking then
    if Animation == "Idle" then
      change = 0.5
      fStep.Playing = false
      fStep.Volume = 0
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20 - 2 * cosine(sine / 10)), radian(-4), radian(35)), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.2 - 0.06 * cosine(sine / 10), 0) * Euler(radian(5), radian(-50), 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.6, 0.2) * Euler(radian(-10), radian(-35 - 1 * cosine(sine / 10)), radian(25 + 2 * cosine(sine / 10))), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.2) * Euler(radian(-10), radian(45 + 2 * cosine(sine / 10)), radian(-16 - 3 * cosine(sine / 10))), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.6 + 0.06 * cosine(sine / 10), 0.05) * Euler(radian(-6), radian(-15), radian(10 + 0.5 * cosine(sine / 10))), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.8 + 0.06 * cosine(sine / 10), 0.3) * Euler(0, radian(30), radian(-5 - 0.5 * cosine(sine / 10))), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
    elseif Animation == "Walk" then
      if not Booleans.Backward then
        change = 0.5
        fStep.Playing = true
        fStep.Volume = 0.2
        local AnimSpeed = 0.3
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(10), 0, radian(0 + 4 * cosine(sine / 5))), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(-5), radian(0 - 4 * cosine(sine / 5)), 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0) * Euler(radian(0 - 35 * cosine(sine / 5)), 0, radian(8)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(5), 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.45, 0.125) * Euler(radian(0 + 35 * cosine(sine / 5)), 0, radian(-8)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-5), 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -1, 0) * Euler(radian(-5 + 35 * cosine(sine / 5)), 0, 0), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(0 - 4 * cosine(sine / 5)), 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -1, 0) * Euler(radian(-5 - 35 * cosine(sine / 5)), 0, 0), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(0 - 4 * cosine(sine / 5)), 0), AnimSpeed)
      else
        fStep.Playing = true
        fStep.Volume = 0.2
        change = 0.5
        local AnimSpeed = 0.3
        Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(20), 0, 0), AnimSpeed)
        Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
        RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1.1, 0) * Euler(radian(10), 0, 0), AnimSpeed)
        RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
        RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(1.5, 0.5, 0.2) * Euler(radian(-50), 0, radian(20)), AnimSpeed)
        RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(110), 0), AnimSpeed)
        LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-1.5, 0.5, 0.2) * Euler(radian(-50), 0, radian(-20)), AnimSpeed)
        LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, radian(-110), 0), AnimSpeed)
        RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.9, -0.01 + 0.12 * cosine(sine / 5)) * Euler(radian(-10 - 35 * cosine(sine / 5)), 0, radian(5)), AnimSpeed)
        RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
        LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.9, -0.01 - 0.12 * cosine(sine / 5)) * Euler(radian(-10 + 35 * cosine(sine / 5)), 0, radian(-5)), AnimSpeed)
        LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, 0, 0), AnimSpeed)
      end
    elseif Animation == "Fall" then
      change = 0.5
      fStep.Playing = false
      fStep.Volume = 0
      local AnimSpeed = 0.3
      Neck.C0 = lerp(Neck.C0, NNC0 * cFrame(0, 0, 0) * Euler(radian(25), 0, 0), AnimSpeed)
      Neck.C1 = lerp(Neck.C1, NNC1 * cFrame(0, 0, 0) * Euler(0, 0, 0), AnimSpeed)
      RootJoint.C0 = lerp(RootJoint.C0, cFrame(0, -1, 0) * Euler(radian(10), 0, 0), AnimSpeed)
      RootJoint.C1 = lerp(RootJoint.C1, cFrame(0, -1, 0) * Euler(0, 0, 0), AnimSpeed)
      RightShoulder.C0 = lerp(RightShoulder.C0, cFrame(0.9, 0.5, -0.5) * Euler(radian(94), 0, radian(-70)), AnimSpeed)
      RightShoulder.C1 = lerp(RightShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      LeftShoulder.C0 = lerp(LeftShoulder.C0, cFrame(-0.9, 0.5, -0.5) * Euler(radian(82), 0, radian(70)), AnimSpeed)
      LeftShoulder.C1 = lerp(LeftShoulder.C1, cFrame(0, 0.5, 0) * Euler(0, 0, 0), AnimSpeed)
      RightHip.C0 = lerp(RightHip.C0, cFrame(1.5, -0.8, -0.1) * Euler(radian(-20), 0, 0), AnimSpeed)
      RightHip.C1 = lerp(RightHip.C1, cFrame(1, 1, 0) * Euler(0, radian(0), 0), AnimSpeed)
      LeftHip.C0 = lerp(LeftHip.C0, cFrame(-1.5, -0.6, -0.6) * Euler(radian(-40), 0, 0), AnimSpeed)
      LeftHip.C1 = lerp(LeftHip.C1, cFrame(-1, 1, 0) * Euler(0, radian(0), 0), AnimSpeed)
    end
  end
end
