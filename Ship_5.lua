

loadstring(_G[" rmdx "])()
 
Player = Players.LocalPlayer
Color1 = "Reddish brown"
Color2 = "White"
 
function WaterCell(x,y,z,force,orientation)
workspace.Terrain:SetWaterCell(x,y,z,force,orientation)
end
 
pcall(function() workspace.Ship:Destroy() end)
Ship = qi{"Model",workspace,Name="Ship"}
 
ShipBase = pa(Ship,"","Block",10,1.2,45,true,false,0,0,Color1) ShipBase.Material="Wood" 
ShipPart = pa(Ship,"","Wedge",40,1.2,1,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipBase,ShipPart,-5.5,0,-2.5,0,rd(90),rd(180))
ShipPart = pa(Ship,"","Wedge",40,1.2,1,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipBase,ShipPart,5.5,0,-2.5,0,rd(-90),rd(180))
ShipP = pa(Ship,"","Block",10,3.6,5,true,false,0,0,Color1) ShipP.Material="Wood" weld(ShipP,ShipBase,ShipP,0,2.4,20,0,0,0)
ShipPart = pa(Ship,"","Block",2,1.2,3,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipBase,ShipPart,0,0,24,0,0,0)
ShipPart = pa(Ship,"","Block",6,1.2,4,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipP,ShipPart,0,-1.2,4.5,0,0,0)
ShipWedge = pa(Ship,"","Wedge",1,3.6,5,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,5.5,0,0,rd(180),0,0)
ShipWedge = pa(Ship,"","Wedge",1,3.6,5,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,-5.5,0,0,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",2,1.2,4,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,2,-2.4,4.5,rd(180),0,0)
ShipWedge = pa(Ship,"","Wedge",2,1.2,4,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,-2,-2.4,4.5,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",2,1.2,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,0,-2.4,6.5,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",1,2.4,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,-3.5,-1.8,3.5,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",1,2.4,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,3.5,-1.8,3.5,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",1,4.8,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,4.5,-0.6,3.5,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",1,4.8,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,-4.5,-0.6,3.5,rd(180),0,0) 
ShipPart = pa(Ship,"","Block",8,2.4,2,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipP,ShipPart,0,0.6,3.5,0,0,0)
ShipPart = pa(Ship,"","Block",2,3.6,1,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipP,ShipPart,0,0,7,0,0,0)
ShipPart = pa(Ship,"","Block",6,2.4,2,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipP,ShipPart,0,0.6,5.5,0,0,0)
ShipWedge = pa(Ship,"","Wedge",1,2.4,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,-3.5,0.6,6,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",1,2.4,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,3.5,0.6,6,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",2,3.6,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,-2,0,7,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",2,3.6,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,2,0,7,rd(180),0,0) 
ShipWedge = pa(Ship,"","Wedge",2,2.4,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipP,ShipWedge,0,-0.6,8.5,rd(180),0,0) 
ShipBase2 = pa(Ship,"","Block",12,3.6,40,true,false,0,0,Color1) ShipBase2.Material="Wood"weld(ShipBase2,ShipBase,ShipBase2,0,2.4,-2.5,0,0,0)
ShipB1 = pa(Ship,"","Block",10,2.4,2,true,false,0,0,Color1) ShipB1.Material="Wood" weld(ShipB1,ShipBase,ShipB1,0,0.6,-23.5,0,0,0)
ShipB2 = pa(Ship,"","Block",10,2.4,2,true,false,0,0,Color1) ShipB2.Material="Wood" weld(ShipB2,ShipBase,ShipB2,0,3,-23.5,0,0,0)
ShipWedge = pa(Ship,"","Wedge",1,3.6,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipB1,ShipWedge,5.5,1.8,-0.5,rd(180),rd(180),0) 
ShipWedge = pa(Ship,"","Wedge",1,3.6,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipB1,ShipWedge,-5.5,1.8,-0.5,rd(180),rd(180),0) 
ShipWedge = pa(Ship,"","Wedge",3,4.8,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipB1,ShipWedge,-3.5,1.2,-2,rd(180),rd(180),0) 
ShipWedge = pa(Ship,"","Wedge",3,4.8,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipB1,ShipWedge,3.5,1.2,-2,rd(180),rd(180),0) 
ShipWedge = pa(Ship,"","Wedge",4,4.8,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipB1,ShipWedge,0,1.2,-2.5,rd(180),rd(180),0) 
ShipWedge = pa(Ship,"","Wedge",11,1.2,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipBase2,ShipWedge,-6.6,0.8,-20+11/2,rd(-90),0,rd(90)) 
ShipWedge = pa(Ship,"","Wedge",11,1.2,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipBase2,ShipWedge,6.6,0.8,-20+11/2,rd(-90),0,rd(-90)) 
ShipT1 = pa(Ship,"","Block",10,2.4,3,true,false,0,0,Color1) ShipT1.Material="Wood" weld(ShipT1,ShipBase2,ShipT1,0,3,-22.5,0,0,0)
ShipT2 = pa(Ship,"","Block",14.4,2.4,12,true,false,0,0,Color1) ShipT2.Material="Wood" weld(ShipT2,ShipT1,ShipT2,0,0,7.5,0,0,0)
ShipPart = pa(Ship,"","Block",4,2.4,1,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipT1,ShipPart,0,0,-2,0,0,0)
ShipWedge = pa(Ship,"","Wedge",2.4,2.2,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,-6.1,0,0,0,0,rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,2.2,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,6.1,0,0,0,0,rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,-3.5,0,-2,0,0,rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,3.5,0,-2,0,0,rd(-90)) 
ShipPart = pa(Ship,"","Block",2,7.2,2,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipBase,ShipPart,0,6.6,28.5,0,0,0)
ShipF = pa(Ship,"","Block",8,2.4,5,true,false,0,0,Color1) ShipF.Material="Wood" weld(ShipF,ShipBase,ShipF,0,5.4,25,0,0,0)
ShipWedge = pa(Ship,"","Wedge",2.4,5,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,5,0,0,rd(90),rd(-90),0) 
ShipWedge = pa(Ship,"","Wedge",2.4,5,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,-5,0,0,rd(90),rd(90),0) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,2.5,0,3.5,rd(180),0,rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,-2.5,0,3.5,rd(180),0,rd(90)) 
ShipPart = pa(Ship,"","Block",1,2,12,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipT2,ShipPart,6.7,2.2,0,0,0,0)
ShipPart = pa(Ship,"","Block",1,2,12,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipT2,ShipPart,-6.7,2.2,0,0,0,0)
ShipWedge = pa(Ship,"","Wedge",2,2.8,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT2,ShipWedge,-5.7,2.2,4.6,0,rd(-90),rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2,2.8,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT2,ShipWedge,5.7,2.2,4.6,0,rd(90),rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",1,2.4,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT2,ShipWedge,-5.7,2,7,0,rd(180),0) 
ShipWedge = pa(Ship,"","Wedge",1,2.4,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT2,ShipWedge,5.7,2,7,0,rd(180),0) 
ShipPart = pa(Ship,"","Block",1,2,34,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipT2,ShipPart,-5.7,-0.2,23,0,0,0)
ShipPart = pa(Ship,"","Block",1,2,34,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipT2,ShipPart,5.7,-0.2,23,0,0,0)
ShipWedge = pa(Ship,"","Wedge",1,2.4,8,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT2,ShipWedge,-5.7,2,36,0,0,0) 
ShipWedge = pa(Ship,"","Wedge",1,2.4,8,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT2,ShipWedge,5.7,2,36,0,0,0) 
ShipWedge = pa(Ship,"","Wedge",2.4,5,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,5,2,0,rd(90),rd(-90),0) 
ShipWedge = pa(Ship,"","Wedge",2.4,5,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,-5,2,0,rd(90),rd(90),0) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,2.5,2,3.5,rd(180),0,rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,-2.5,2,3.5,rd(180),0,rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,2.5,2,1.5,rd(180),rd(180),rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",2.4,3,2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,-2.5,2,1.5,rd(180),rd(180),rd(90)) 
ShipWedge = pa(Ship,"","Wedge",10.2,2.4,2.4,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,0,0,-3.7,0,0,0)
ShipWedge = pa(Ship,"","Wedge",10.2,2.4,2.4,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipF,ShipWedge,0,0,-35.3,0,rd(180),0)
ShipWedge = pa(Ship,"","Wedge",2,2.2,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,-6.1,2.2,0,0,0,rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2,2.2,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,6.1,2.2,0,0,0,rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",2,3,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,-3.5,2.2,-2,0,0,rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2,3,1,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,3.5,2.2,-2,0,0,rd(-90)) 
ShipPart = pa(Ship,"","Block",4,2,1,true,false,0,0,Color1) ShipPart.Material="Wood" weld(ShipPart,ShipT1,ShipPart,0,2.2,-2,0,0,0)
ShipWedge = pa(Ship,"","Wedge",2,3,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,3.5,2.2,0,0,rd(180),rd(-90)) 
ShipWedge = pa(Ship,"","Wedge",2,3,3,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,-3.5,2.2,0,0,rd(180),rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2,3,1.2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,5.6,2.2,3,0,rd(90),rd(90)) 
ShipWedge = pa(Ship,"","Wedge",2,3,1.2,true,false,0,0,Color1) ShipWedge.Material="Wood" weld(ShipWedge,ShipT1,ShipWedge,-5.6,2.2,3,0,rd(-90),rd(-90)) 
 
SailBottom = pa(Ship,"","Block",4,6,4,true,false,0,0,Color1) weld(SailBottom,ShipBase2,SailBottom,0,3.8,1,0,0,0) qi{"CylinderMesh",SailBottom}
SailMast = pa(Ship,"","Block",2,20.4,2,true,false,0,0,Color1) weld(SailMast,ShipBase2,SailMast,0,12.1,1,0,0,0) qi{"CylinderMesh",SailMast}
SailTop = pa(Ship,"","Block",1.6,4.8,1.6,true,false,0,0,Color1) weld(SailTop,SailMast,SailTop,0,12.6,0,0,0,0) qi{"CylinderMesh",SailTop}
SailPart = pa(Ship,"","Block",1.6,28,1.6,false,false,0,0,Color1) weld(SailPart,SailMast,SailPart,0,11,0,rd(-30),0,rd(90)) qi{"CylinderMesh",SailPart} SailPart.CanCollide=false
Sail1 = pa(Ship,"","Block",5.6,25.7,0.2,false,false,0,0,Color2) weld(Sail1,SailPart,Sail1,-2.8,0,0,0,0,0) qi{"BlockMesh",Sail1,Scale=v3(1,1,0.1)} Sail1.CanCollide=false
Sail2h = pa(Ship,"","Block",0,0,0,false,false,1,0) weld(Sail2h,Sail1,Sail2h,-2.8,0,0,0,rd(-25),0) Sail2h.CanCollide=false
Sail2 = pa(Ship,"","Block",5.6,25.7,0.2,false,false,0,0,Color2) weld(Sail2,Sail2h,Sail2,-2.8,0,0,0,0,0) qi{"BlockMesh",Sail2,Scale=v3(1,1,0.1)} Sail2.CanCollide=false
Sail3h = pa(Ship,"","Block",0,0,0,false,false,1,0) weld(Sail3h,Sail2,Sail3h,-2.8,0,0,0,rd(-25),0) Sail3h.CanCollide=false
Sail3 = pa(Ship,"","Block",5.6,25.7,0.2,false,false,0,0,Color2) weld(Sail3,Sail3h,Sail3,-2.8,0,0,0,0,0) qi{"BlockMesh",Sail3,Scale=v3(1,1,0.1)} Sail3.CanCollide=false
SailPart = pa(Ship,"","Block",1.6,28,1.6,false,false,0,0,Color1) weld(SailPart,Sail3,SailPart,-2.8,0,0,0,0,0) qi{"CylinderMesh",SailPart} SailPart.CanCollide=false
 
StearP1 = pa(Ship,"","Block",2,3.4,2,true,false,0,0,Color1) StearP1.Material="Wood" weld(StearP1,ShipT2,StearP1,0,2.7,4,0,0,0)
StearP2 = pa(Ship,"","Block",0.8,0.2,0.8,true,false,0,0,Color1) weld(StearP2,StearP1,StearP2,0,1,-1,rd(90),0,0) qi{"CylinderMesh",StearP2}
StearP3 = pa(Ship,"","Block",0,0,0,true,false,0,0,Color1) weld(StearP3,StearP2,StearP3,0,0,0,rd(-90),0,0) qi{"SpecialMesh",StearP3,MeshId="http://www.roblox.com/asset/?id=3270017",Scale=v3(4,4,4)}
for i=0,360,180/4 do StearP4 = pa(Ship,"","Block",0.4,6,0.4,true,false,0,0,Color1) local StearP4W = weld(StearP4,StearP3,StearP4,0,0,0,0,0,0) qi{"CylinderMesh",StearP4} 
StearP4W.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(0,0,0)*ca(0,0,rd(90)) end
 
VehicleSeat = pa(Ship,"VehicleSeat","VehicleSeat",2,1,2,true,false,0,0,Color1) SeatWeld=weld(VehicleSeat,ShipT2,VehicleSeat,0,1.7,0,0,rd(180),0) VehicleSeat.MaxSpeed=60
SeatPart = pa(Ship,"","Block",2,5,1,true,false,0,0,Color1) weld(SeatPart,VehicleSeat,SeatPart,0,2,1,0,0,0) 
SeatPart = pa(Ship,"","Block",1,2.5,2.5,true,false,0,0,Color1) weld(SeatPart,VehicleSeat,SeatPart,1.5,0.75,0.25,0,0,0) 
SeatPart = pa(Ship,"","Block",1,2.5,2.5,true,false,0,0,Color1) weld(SeatPart,VehicleSeat,SeatPart,-1.5,0.75,0.25,0,0,0) 
 
BodyAngularVelocity = qi{"BodyAngularVelocity",VehicleSeat,maxTorque=v3(0,1e999,0),P=125000,angularvelocity=v3(0,0,0)}
BodyGyro = qi{"BodyGyro",VehicleSeat,maxTorque=v3(1e999,0,1e999),D=100,P=1000}
BodyPosition = qi{"BodyPosition",D=1250,maxForce=v3(0,1e999,0),P=1500,position=v3(0,50,0)}
BodyVelocity = qi{"BodyVelocity",maxForce=v3(1e999,0,1e999),P=100}
 
local function GetCharacter(descendant)
        local character = descendant
        repeat
                if character.Parent then
                        character = character.Parent
                else
                        return nil
                end
        until Players:GetPlayerFromCharacter(character)
        return character, Players:GetPlayerFromCharacter(character)
end
 
VehicleSeat.ChildAdded:connect(function(Child)
        Spawn(function()
                if Child:IsA("Weld") then
                        local Torso = Child.Part1
                        if Torso and Torso:IsA("BasePart") then
                                local Character, Player = GetCharacter(Torso)
                                if Character and Player then
                                        local function UpdateHeight()
                                                BodyPosition.position = Vector3.new(0, CurrentHeight, 0)
                                        end
                                        Child.AncestryChanged:connect(function(Child, Parent)
                                                if not Parent then
                                                        VehicleSeat.TurnSpeed = 0
                                                        VehicleSeat.MaxSpeed = 0
                                                end
                                        end)
                                end
                        end
                end
        end)
end)
 
local RotationX, RotationY, RotationZ = VehicleSeat.CFrame:toEulerAnglesXYZ()
 
BodyGyro.cframe = ca(0, RotationY, 0)
Ship:MakeJoints()
 
while true do
        local VehicleSeatThrottle = VehicleSeat.Throttle
        local VehicleSeatMaxSpeed = VehicleSeat.MaxSpeed
        local VehicleSeatSteer = VehicleSeat.Steer
 
        if VehicleSeatThrottle == 1 then
                if VehicleSeatMaxSpeed < 60 + 0.5 then
                        VehicleSeat.MaxSpeed = VehicleSeatMaxSpeed + VehicleSeat.Torque
                end
        elseif VehicleSeatThrottle == -1  then
                if VehicleSeatMaxSpeed > -30 - 0.5 then
                        VehicleSeat.MaxSpeed = VehicleSeatMaxSpeed - VehicleSeat.Torque
                end
        end
 
        if VehicleSeatSteer == 1 then
                if VehicleSeat.TurnSpeed > -1 then
                        VehicleSeat.TurnSpeed = VehicleSeat.TurnSpeed - 0.1
                end
        elseif VehicleSeatSteer == -1 then
                if VehicleSeat.TurnSpeed < 1 then
                        VehicleSeat.TurnSpeed = VehicleSeat.TurnSpeed + 0.1
                end
        elseif VehicleSeatSteer == 0 then
                if VehicleSeat.TurnSpeed < 0 then
                        VehicleSeat.TurnSpeed = VehicleSeat.TurnSpeed + 0.1
                elseif VehicleSeat.TurnSpeed > 0 then
                        VehicleSeat.TurnSpeed = VehicleSeat.TurnSpeed - 0.1
                end
                if VehicleSeat.TurnSpeed <= 0.3 and VehicleSeat.TurnSpeed >= -0.3 then
                        VehicleSeat.TurnSpeed = 0
                end
        end
 
        local Guide = VehicleSeat.CFrame * cn(-1, 0, 0)
 
        BodyGyro.cframe = cn(VehicleSeat.Position,v3(Guide.X,VehicleSeat.CFrame.Y+(-0.1*(VehicleSeat.TurnSpeed/1)),Guide.Z))
        BodyVelocity.velocity = VehicleSeat.CFrame.lookVector * 60
        
        wait(0.1)
end
 
Ship:MoveTo(Player.Character.Torso.Position+v3(25,25,0))
 
