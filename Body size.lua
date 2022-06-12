local motor = "Motor6D"
 
function getAll(...)
               local args = {...}
               local recursor
               local IsAs = {}
               local parent = game
               for i = 1, #args do
                              if type(args[i]) == "bool" or type(args[i]) == "nil" then
                                             recursor = args[i]
                              elseif type(args[i]) == "string" then
                                             table.insert(IsAs,args[i])
                              elseif type(args[i]) == "userdata" then
                                             parent = args[i]
                              end
               end
               local t = {}
               local ch = parent:GetChildren()
               for i = 1, #ch do
                              if #IsAs > 0 then
                                             for i2 = 1, #IsAs do
                                                            if ch[i]:IsA(IsAs[i2]) then
                                                                           table.insert(t,ch[i])
                                                                           break
                                                            end
                                             end
                              else
                                             table.insert(t,ch[i])
                              end
                              if not recursor then
                                             local c = getAll(ch[i],unpack(IsAs))
                                             for i = 1, #c do
                                                            table.insert(t,c[i])
                                             end
                              end
               end
               return t
end
 
function size(char,scale)
               local tor = char:FindFirstChild("Torso")
               local ra = char:FindFirstChild("Right Arm")
               local la = char:FindFirstChild("Left Arm")
               local rl = char:FindFirstChild("Right Leg")
               local ll = char:FindFirstChild("Left Leg")
               local h = char:FindFirstChild("Head")
               if ra then
                              ra.formFactor = 3
                              ra.Size = Vector3.new(1*scale,2*scale,1*scale)
               end
               if la then
                              la.formFactor = 3
                              la.Size = Vector3.new(1*scale,2*scale,1*scale)
               end
               if rl then
                              rl.formFactor = 3
                              rl.Size = Vector3.new(1*scale,2*scale,1*scale)
               end
               if ll then
                              ll.formFactor = 3
                              ll.Size = Vector3.new(1*scale,2*scale,1*scale)
               end
               if tor then
                              tor.formFactor = 3
                              tor.Size = Vector3.new(2*scale,2*scale,1*scale)
               end
               if h then
                              h.formFactor = 3
                              h.Size = Vector3.new(2*scale,1*scale,1*scale)
               end
               local rs = Instance.new(motor)
               rs.Name = "Right Shoulder"
               rs.MaxVelocity = 0.1
               rs.Part0 = tor
               rs.Part1 = ra
               rs.C0 = CFrame.new(1*scale, 0.5*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
               rs.C1 = CFrame.new(-0.5*scale, 0.5*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
               rs.Parent = tor
               local ls = Instance.new(motor)
               ls.Name = "Left Shoulder"
               ls.MaxVelocity = 0.1
               ls.Part0 = tor
               ls.Part1 = la
               ls.C0 = CFrame.new(-1*scale, 0.5*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
               ls.C1 = CFrame.new(0.5*scale, 0.5*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
               ls.Parent = tor
               local rh = Instance.new(motor)
               rh.Name = "Right Hip"
               rh.MaxVelocity = 0.1
               rh.Part0 = tor
               rh.Part1 = rl
               rh.C0 = CFrame.new(1*scale, -1*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
               rh.C1 = CFrame.new(0.5*scale, 1*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
               rh.Parent = tor
               local lh = Instance.new(motor)
               lh.Name = "Left Hip"
               lh.MaxVelocity = 0.1
               lh.Part0 = tor
               lh.Part1 = ll
               lh.C0 = CFrame.new(-1*scale, -1*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
               lh.C1 = CFrame.new(-0.5*scale, 1*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
               lh.Parent = tor
               local n = Instance.new(motor)
               n.Name = "Neck"
               n.MaxVelocity = 0.1
               n.Part0 = tor
               n.Part1 = h
               n.C0 = CFrame.new(0, 1*scale, 0, -1*scale, -0, -0, 0, 0, 1, 0, 1, 0)
               n.C1 = CFrame.new(0, -0.5*scale, 0, -1*scale, -0, -0, 0, 0, 1, 0, 1, 0)
               n.Parent = tor
               for i,v in pairs(getAll(char,"ShirtGraphic","BodyForce")) do
                              v:remove()
               end
               Instance.new("BlockMesh",ra)
               Instance.new("BlockMesh",la)
               Instance.new("BlockMesh",rl)
               Instance.new("BlockMesh",ll)
               Instance.new("BlockMesh",tor)
               for i,v in pairs(getAll(char,"SpecialMesh")) do
                              if v.Name == "BodyMesh" then
                                             local old = v.Parent
                                             v.Parent = nil
                                             v.Scale = Vector3.new(1,1,1)*scale
                                             v.Parent = old
                              end
               end
               for i,v in pairs(getAll(char,"CharacterMesh")) do
                              if v.Name:lower():find("left leg") then
                                             local m = Instance.new("SpecialMesh",ll)
                                             m.Name = "BodyMesh"
                                             m.Scale = Vector3.new(scale,scale,scale)
                                             m.MeshId = "http://www.roblox.com/asset/?id="..v.MeshId
                                             m.TextureId = "http://www.roblox.com/asset/?id="..v.OverlayTextureId
                              end
                              if v.Name:lower():find("right leg") then
                                             local m = Instance.new("SpecialMesh",rl)
                                             m.Name = "BodyMesh"
                                             m.Scale = Vector3.new(scale,scale,scale)
                                             m.MeshId = "http://www.roblox.com/asset/?id="..v.MeshId
                                             m.TextureId = "http://www.roblox.com/asset/?id="..v.OverlayTextureId
                              end
                              if v.Name:lower():find("left arm") then
                                             local m = Instance.new("SpecialMesh",la)
                                             m.Name = "BodyMesh"
                                             m.Scale = Vector3.new(scale,scale,scale)
                                             m.MeshId = "http://www.roblox.com/asset/?id="..v.MeshId
                                             m.TextureId = "http://www.roblox.com/asset/?id="..v.OverlayTextureId
                              end
                              if v.Name:lower():find("right arm") then
                                             local m = Instance.new("SpecialMesh",ra)
                                             m.Name = "BodyMesh"
                                             m.Scale = Vector3.new(scale,scale,scale)
                                             m.MeshId = "http://www.roblox.com/asset/?id="..v.MeshId
                                             m.TextureId = "http://www.roblox.com/asset/?id="..v.OverlayTextureId
                              end
                              if v.Name:lower():find("torso") then
                                             local m = Instance.new("SpecialMesh",tor)
                                             m.Name = "BodyMesh"
                                             m.Scale = Vector3.new(scale,scale,scale)
                                             m.MeshId = "http://www.roblox.com/asset/?id="..v.MeshId
                                             m.TextureId = "http://www.roblox.com/asset/?id="..v.OverlayTextureId
                              end
                              v:remove()
               end
               for i,v in pairs(getAll(char,"Hat")) do
               local h = v:FindFirstChild("Handle")
                              if h then
                                             local k = h:FindFirstChild("OriginSize")
                                             if not k then
                                                            k = Instance.new("Vector3Value")
                                                            k.Name = "OriginSize"
                                                            k.Value = h.Size
                                                            k.Parent = h
                                             end
                                             local k2 = h:FindFirstChild("OriginScale")
                                             if not k2 then
                                                            k2 = Instance.new("Vector3Value")
                                                            k2.Name = "OriginScale"
                                                            k2.Value = h.Mesh.Scale
                                                            k2.Parent = h
                                             end
                                             h.formFactor = 3
                                             h.Size = k.Value*scale
                                             h.Mesh.Scale = k2.Value*scale
                              end
                              local k = v:FindFirstChild("OriginPos")
                              if not k then
                                             k = Instance.new("Vector3Value")
                                             k.Name = "OriginPos"
                                             k.Value = v.AttachmentPos
                                             k.Parent = v
                              end
                              v.AttachmentPos = k.Value*scale+Vector3.new(0,(1-scale)/2,0)
                              v.Parent = nil
                              v.Parent = char
               end
               local hum = char:FindFirstChild("Humanoid")
               if hum then
                              hum.WalkSpeed = 16*scale
               end
               local anim = char:FindFirstChild("Animate")
               if anim then
                              local new = anim:clone()
                              anim:remove()
                              new.Parent = char
               end
end
 
size(workspace["ic3w0lf589"],6) --name and number go here