

script:ClearAllChildren()
 
loadstring(_G.RMLib)()
 
as={}
as.ring="3270017"
 
for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end
 
local parsa=workspace.Base
 
 
lol=qi{"Model",parsa,n="RMShip"}
 
cc="Brown"
 
BasePos=cn(50,67,50)
 
 
 
 
sx=60
sz=180
sk = 10
local rang=45
 
 
 
TCFS={}
for side=-1,1,2 do 
for rot=sk,180,sk do 
i = mrad(rot)
TCF=BasePos*cn(-side*math.sin(i)*sx,0,math.cos(i)*sz) --*ca2(0,i,0)
local ii = i-mrad(sk)
TCF2=BasePos*cn(-side*math.sin(ii)*sx,0,math.cos(ii)*sz) 
local mag = (TCF.p-TCF2.p).magnitude
TCF3=cn(TCF.p,TCF2.p)*cn(0,0,-mag/2)*cn(side*-rang,0,0)
TCFS[side*rot]={TCF3,mag}
end
end
 
outline = function(cf,vx,vz,ti,co)
local ti = ti or 1.2
for z=-1,1,2 do 
for x=-1,1,2 do 
qi{'SpecialMesh',qi{"Part",lol,sc=v3(ti,ti,ti),an=true,cf=cf*cn(x*vx/2,0,z*vz/2)*ca(0,0,90),bn=bn(co or 'Dark green')},MeshType="Sphere"}
end
qi{'CylinderMesh',qi{"Part",lol,sc=v3(ti,vz,ti),an=true,cf=cf*cn(z*vx/2,0,0)*ca(90,0,0),bn=bn(co or 'Dark green')}}
qi{'CylinderMesh',qi{"Part",lol,sc=v3(ti,vx,ti),an=true,cf=cf*cn(0,0,z*vz/2)*ca(0,0,90),bn=bn(co or 'Dark green')}}
end
end
 
stairs = function(cf,hig,wid,steplen,adj)
local steplen=steplen or 1
local adj=adj or 1.5
local y=adj
local z=0
local bs,be
repeat
local pa=qi{"Part",lol,sc=v3(wid,0.3,steplen),an=true,cf=cf*cn(0,y,z)*ca(-4,0,0),bn=bn(cc),mat="Wood"}
bs = bs or pa
be = pa 
y=y+adj
z=z+steplen
until y>=hig
local mag = (bs.Position-be.Position).magnitude+1
for x=-1,1,2 do 
local pa=qi{"Part",lol,sc=v3(0.5,2,mag),an=true,cf=cf*cn(0,y,z),bn=bn(cc),mat="Wood"}
pa.CFrame=cn(bs.Position,be.Position)*cn((wid/2+0.25)*x,0.25,-mag/2)
for z=-pa.Size.z/2+1,pa.Size.z/2-1,4 do 
qi{"Part",lol,sc=v3(0.5,3,0.5),an=true,bn=bn(cc),mat="Wood"}.CFrame=pa.CFrame*cn(0,1,z)*ca(0,0,-10*x)*cn(0,1.5,0)
end
qi{"Part",lol,sc=v3(0.75,0.75,mag+2),an=true,bn=bn(cc),mat="Wood"}.CFrame=pa.CFrame*cn(0,1,0)*ca(0,0,-10*x)*cn(0,3,0)*ca(0,0,45)
end
end
 
sxx=12.5
addsupport=function(cf,len,xx,sep)
local sep=sep or 8
local cyl=qi{"Part",lol,sc=v3(1,len,1),an=true,bn=bn(cc),cf=cf*ca(0,0,90)} qi{'CylinderMesh',cyl}
for x=-len/2+2,len/2-2,sep do 
local cyl=qi{"Part",lol,sc=v3(0.75,3,0.75),an=true,bn=bn(cc),cf=cf*ca(xx,0,0)*cn(x,1.5,0)*ca(0,45,0),mat="Wood"}
qi{'CylinderMesh',cyl}
end
local cyl=qi{"Part",lol,sc=v3(0.75,len,0.75),an=true,bn=bn(cc),cf=cf*ca(xx,0,0)*cn(0,3,0)*ca(0,0,90)*ca(0,45,0),mat="Wood"}
qi{'CylinderMesh',cyl}
end
 
addsupport2=function(cf,len,en)
qi{"Part",lol,sc=v3(3,len,1),an=true,bn=bn(cc),cf=cf*cn(0,1.5,0)*ca(0,0,90)}
qi{'CylinderMesh',qi{"Part",lol,sc=v3(1,len,1),an=true,bn=bn(cc),cf=cf*cn(0,3,0)*ca(0,0,90)}}
for x=-1,1,2 do 
qi{'CylinderMesh',qi{"Part",(en==0 or en==x) and lol or nil,sc=v3(1,3,1),an=true,bn=bn(cc),cf=cf*cn(x*len/2,1.5,0)}}
qi{'SpecialMesh',qi{"Part",(en==0 or en==x) and lol or nil,sc=v3(1,1,1),an=true,bn=bn(cc),cf=cf*cn(x*len/2,3,0)},MeshType="Sphere"}
end
end
 
----starts here
for side=-1,1,2 do 
for rot=sk,180,sk do 
i = mrad(rot)
local TCF,mag=TCFS[side*rot][1],TCFS[side*rot][2]
local rot2 = rot+sk
if rot2>180 then rot2=170 end 
local TCF2,mag2=TCFS[side*rot2][1],TCFS[side*rot2][2]
---
for x=0,90,100/7 do 
local THECF=TCF*ca(0,0,-side*x)*cn(side*rang,0,0)
local cur=qi{"Part",lol,sc=v3(6,12,mag+2),an=true,cf=THECF,bn=bn(cc),mat="Wood"}
if x==0 and rot<90+50 and rot>90-30 then
addsupport(cur.CFrame*cn(2.5*side,6,0)*ca(0,90,0),cur.Size.z,side*sxx)
end
if side==1 and (100/7*2==x or 100/7*0==x) then
if 100/7*0==x then THECF=THECF*cn(0,cur.Size.y/2-0.6,0) end 
local wid=BasePos:toObjectSpace(THECF)
local wid1=BasePos:toObjectSpace(THECF*cn(0,0,-cur.Size.z/2))
local wid2=BasePos:toObjectSpace(THECF*cn(0,0,cur.Size.z/2))
local mab = math.abs
local zs = mab(mab(wid2.z)-mab(wid1.z))
if rot==80 then
for x=-1,1,2 do 
qi{"Part",lol,sc=v3(mab(wid.x)-12,1,zs-1),an=true,cf=BasePos*cn(x*(wid.x+22),wid.y,wid.z),bn=bn(cc),mat="Wood"}
end
outline(BasePos*cn(0,wid.y,wid.z),100/7*0==x and 25 or 21,zs-3,2)
else
qi{"Part",lol,sc=v3(mab(wid.x*2),1,zs),an=true,cf=BasePos*cn(0,wid.y,wid.z),bn=bn(cc),mat="Wood"}
end
end
end
end
end
for z=-1,1,2 do 
for x=-1,1,2 do 
local cur=qi{"WedgePart",lol,sc=v3(6,sx/4,sz/2),an=true,cf=BasePos*cn(sx/4.2/2*-x,-45.3,z*-sz/2.4)*ca(z==-1 and 180 or 0,0,x*90),bn=bn(cc),mat="Wood"}
end
end
outline(BasePos*cn(0,-45,0),24+1,60+1,6)
stairs(BasePos*cn(0,-44,61)*ca(0,180,0),24,10,2)
stairs(BasePos*cn(0,-22,72)*ca(0,180,0),29,10,3,2)
 
addwindow = function(cf,tic,sc)
local sc=sc or 1
local tic=tic or 4
local v1=qi{"Part",lol,sc=v3(1,1,1)*sc,an=true,can=false,bn=bn(cc),cf=cf*cn(-tic/4*2.3,0,0)*ca(0,90,0),mat="Wood"} qi{"SpecialMesh",v1,mid=as.ring,sca=v3(10,10,12)*sc}
local v1=qi{"Part",lol,sc=v3(1,1,1)*sc,an=true,can=false,bn=bn(cc),cf=cf*cn(tic/4*2.3,0,0)*ca(0,90,0),mat="Wood"} qi{"SpecialMesh",v1,mid=as.ring,sca=v3(10,10,12)*sc}
local v1=qi{"Part",lol,sc=v3(0.2,8,8)*sc,an=true,bn=bn'Institutional white',cf=cf,tra=0.5} 
local v1=qi{"Part",lol,sc=v3(1,1,1)*sc,an=true,can=false,bn=bn'Dark green',cf=cf*ca(0,90,0)} qi{"SpecialMesh",v1,mid=as.ring,sca=v3(8,8,tic*7.75)*sc}
end
 
addwindow2 = function(cf,sc,hi,tic,cus)
local tic=tic or 4
local hi=(hi or 10)-2
 
qi{"Part",lol,sc=v3(tic+0.1,2,sc),bn=bn'Black',cf=cf*cn(0,1,0),an=true,mat="Wood"} 
for i=0,180,180/10 do 
local v=qi{"Part",lol,sc=v3(tic+0.1,sc/6,2),bn=bn'Black',cf=cf*cn(0,2+hi,0)*ca(-i,0,0)*cn(0,0,sc/2-1),an=true,mat="Wood"} 
if i==0 or i==180 then 
if i==180 then v.CFrame=v.CFrame*ca(180,0,0) end 
local vcf=v.CFrame
local vsy=v.Size.y/2
v.Size=v3(v.Size.x,vsy+hi,v.Size.z)
v.CFrame=vcf*cn(0,(-hi/2)+(vsy/2),0)
end
end
local midcf=cf*cn(0,2+(hi/2)+(sc/4)-0.5,0)
qi{"Part",lol,sc=v3(tic/2.4,hi+(sc/2)-1,sc-3),bn=bn'Institutional white',tra=0.5,cf=midcf,an=true} 
qi{"Part",lol,sc=v3(tic/2+0.1,1.5,sc-3),bn=bn'Black',cf=midcf,an=true,mat="Wood"} 
qi{"Part",lol,sc=v3(tic/2+0.2,hi+(sc/2)-1,1.5),bn=bn'Black',cf=midcf*cn(0,-0.5,0),an=true,mat="Wood"} 
 
 
if not cus then
for x=-1,1,2 do 
qi{"WedgePart",lol,sc=v3(tic,sc/2,sc/4),bn=bn(cc),cf=midcf*cn(0,sc/2-sc/8,(sc/4+sc/8)*x)*ca(180,x==-1 and 0 or 180,0),an=true,mat="Wood"} 
end
qi{"Part",lol,sc=v3(tic,2,sc),bn=bn(cc),tra=0.5,cf=midcf*cn(0,hi/2+sc/4-0.25,0),an=true,mat="Wood"} 
end --
--
end -- 
 
local fronty=5.7
local pp={}
for x=-36,36,4 do 
local scl=100-math.abs(x*2)
local laa=10+math.floor(32-math.abs(x))
local adj=5+math.abs(x)
local v=qi{"WedgePart",lol,formFactor="Custom",sc=v3(4,laa,scl),an=true,cf=BasePos*cn(x,fronty+(-laa/2),-sz+0.2-(scl/2)+adj)*ca(0,0,180),bn=bn(cc),mat="Wood"}
if x==0 then pp[0]=v end
if x==-36 then pp[-1]=v end
if x==36 then pp[1]=v end
end
for x=-1,1,2 do 
local p1=pp[x].CFrame*cn(0,-pp[x].Size.y/2,-pp[x].Size.z/2).p
local p2=pp[0].CFrame*cn(0,-pp[0].Size.y/2,-pp[0].Size.z/2).p
local mag=(p1-p2).magnitude
local v=qi{"Part",lol,sc=v3(4,3,mag+1),an=true,bn=bn(cc),mat="Wood"}
v.CFrame=cn(p1,p2)*cn(0,1.5,-mag/2+0.4-0.5)
local vs=v.Size.z
for w=-vs/2,vs/2,vs/2 do 
local adj=10
addwindow(v.CFrame*cn(0,1.5+4,w/1.5+adj),4)
end
qi{"Part",lol,sc=v3(3.9,8.3,25.25),an=true,bn=bn(cc),mat="Wood",cf=v.CFrame*cn(0,1.5+4,-vs/2+12.625)}
qi{"Part",lol,sc=v3(3.9,8.3,30.5),an=true,bn=bn(cc),mat="Wood",cf=v.CFrame*cn(0,1.5+4,-vs/2+25+8+15.25)}
qi{"Part",lol,sc=v3(3.9,8.3,30.5),an=true,bn=bn(cc),mat="Wood",cf=v.CFrame*cn(0,1.5+4,-vs/2+25+16+15.25+30.5)}
qi{"Part",lol,sc=v3(3.9,8.3,5.25),an=true,bn=bn(cc),mat="Wood",cf=v.CFrame*cn(0,1.5+4,vs/2-2.625)}
--
qi{"Part",lol,sc=v3(4,9,mag+1),an=true,bn=bn(cc),mat="Wood",cf=v.CFrame*cn(0,1.5+8+4.5,0)}
addsupport(v.CFrame*cn(1.5*x,-1.5+20,0)*ca(0,90,0),mag+1,x*sxx)
--
local scf
local tp=pp[x]
local adj=6
local v2=qi{"Part",lol,sc=v3(4,20,tp.Size.z-adj),an=true,bn=bn(cc),mat="Wood",cf=tp.CFrame*ca(180,0,0)*cn(0,10+tp.Size.y/2,adj/2)}
addsupport(v2.CFrame*cn(-1.5*x,10,0)*ca(0,90,0),v2.Size.z,-x*sxx)
--22
qi{"Part",lol,sc=v3(31,1,tp.Size.z-adj),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*cn(x*(31/2+1),9.4,0)}
qi{"Part",lol,sc=v3(8.4,1,7.4),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*cn(x*36,9.4,7.5*x)}
local scfp=qi{"Part",lol,sc=v3(5,1,40),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*cn(x*4.5,9.4,-31)}
local scf=scfp.CFrame
if x==1 then addwindow(v2.CFrame*cn(x*36,9.4,0)*ca(0,0,90),1) end
--
local v2=qi{"Part",lol,sc=v3(4,20,20+1.5),an=true,bn=bn(cc),mat="Wood",cf=v2.CFrame*cn(0,0,-v2.Size.z/2)*ca(0,x*22,0)*cn(0,0,-10)}
addsupport(v2.CFrame*cn(-1.5*x,10,-0.4)*ca(0,90,0),v2.Size.z-1.5,-x*sxx)
qi{"WedgePart",lol,sc=v3(1,19,8),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*ca(0,-x*22,0)*cn(x*1.8,9.4,0)*ca(90,x*90,0)}
--
local v2=qi{"Part",lol,sc=v3(4,20,14+1.5),an=true,bn=bn(cc),mat="Wood",cf=v2.CFrame*cn(0,0,-v2.Size.z/2)*ca(0,x*-8,0)*cn(0,0,-7)}
addsupport(v2.CFrame*cn(-1.5*x,10,0)*ca(0,90,0),v2.Size.z,-x*sxx)
qi{"WedgePart",lol,sc=v3(1,15.5,4),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*ca(0,-x*14,0)*cn(x*2,9.4,0)*ca(90,x*90,0)}
qi{"Part",lol,sc=v3(7.7,1,15.7),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*ca(0,-x*14,0)*cn(x*7.75,9.4,0)}
--
local v2=qi{"Part",lol,sc=v3(4,20,5+1.5),an=true,bn=bn(cc),mat="Wood",cf=v2.CFrame*cn(0,0,-v2.Size.z/2)*ca(0,x*-14,0)*cn(0,0,-2.5)}
addsupport(v2.CFrame*cn(-1.5*x,10,0)*ca(0,90,0),v2.Size.z-0.5,-x*sxx)
qi{"Part",lol,sc=v3(12,1,6.5),an=true,bn=bn'Pastel brown',mat="Wood",cf=v2.CFrame*cn(x*(1.5+(12/2)),9.4,-1)}
--
local v2=qi{"Part",lol,sc=v3(4,25.5,4),an=true,bn=bn(cc),cf=v2.CFrame*cn(0,0,-v2.Size.z/2)*cn(0,2,0),mat="Wood"} qi{'SpecialMesh',v2}
local v2f=qi{"Part",lol,sc=v3(4,4,4),an=true,bn=bn(cc),cf=v2.CFrame*cn(0,12,0),mat="Wood"} qi{'SpecialMesh',v2f,MeshType="Sphere"}
--
local v2=qi{"Part",lol,sc=v3(4,20,4),an=true,bn=bn(cc),mat="Wood",cf=v2.CFrame*cn(x*v2.Size.z/2,-2,0)*cn(0,0,0)}
for i=0,180,180/8 do 
local v2f=qi{"Part",lol,sc=v3(1,2,4.5),an=true,bn=bn'Dark green',cf=v2.CFrame*cn(x*7,0,0)*ca(0,0,i)*cn(4.5,0,0),mat="Wood"} 
if i==0 or i==180 then
local olcf=v2f.CFrame olcf=olcf*cn(0,i==180 and 5 or -5,0)
v2f.Size=v2f.Size+v3(0,10,0)
v2f.CFrame=olcf
end
end
qi{"Part",lol,sc=v3(8,0.2,4.5),an=true,bn=bn'Dark green',cf=v2.CFrame*cn(x*7,-9.8,0),mat="Wood"} 
--
for xx=-1,1,2 do 
qi{"WedgePart",lol,formFactor="Custom",sc=v3(4,3,4),an=true,bn=bn(cc),cf=v2.CFrame*cn((x*7)+(xx*3.5),2.25,0)*ca(0,xx*90,0)*ca(-90,0,0),mat="Wood"} 
end
local v2f=qi{"Part",lol,sc=v3(10,5.75,4),an=true,bn=bn(cc),cf=v2.CFrame*cn(x*7,7.125,0),mat="Wood"} 
local v2=qi{"Part",lol,sc=v3(21.5,20,4),an=true,bn=bn(cc),mat="Wood",cf=v2.CFrame*cn(x*(12+(21.5/2)),0,0)}
addsupport2(v2.CFrame*cn(x*-7.25,10,-1.5),35,x)
 
--floor
qi{"WedgePart",lol,sc=v3(1,102,35),an=true,bn=bn'Pastel brown',mat="Wood",cf=BasePos*cn(x*17.5,fronty+19.4,-217.5)*ca(-90,-x*90,0)}
 
 
--stairmodel
local sy=-20+1+2
for i=0,90,90/12 do 
qi{"Part",lol,sc=v3(16,1,2),an=true,bn=bn'Pastel brown',mat="Wood",cf=scf*cn(3.5*x,0,-20+3.5)*ca(0,(x==-1 and 180 or 270)+i,0)*cn(8,0,0)*ca(1,0,0)}
 
qi{"Part",lol,sc=v3(12,5,3.5),an=true,bn=bn'Dark green',mat="Wood",cf=scf*cn(3.5*x,sy,-20+3.5)*ca(0,x*-i,0)*cn(x*(16+6),0,0)*ca(1,0,0)}
local ads=qi{"Part",lol,sc=v3(2,20,2.25),an=true,bn=bn(cc),mat="Wood",cf=scf*cn(3.5*x,-10+0.6,-20+3.5)*ca(0,x*-i,0)*cn(x*15.1,0,0)*ca(1,0,0)}
addsupport2(ads.CFrame*cn(x*0.5,ads.Size.y/2-0.1,i==0 and -1.75 or 0)*ca(0,90,0),(i==0 and 3.5 or 0)+ads.Size.z,i==90 and -1 or nil)
if i==90 then qi{'SpecialMesh',qi{"Part",lol,sc=v3(2,20.5,2),an=true,bn=bn(cc),mat="Wood",cf=ads.CFrame*cn(0,-0.5,2.25/2)}} end
if i~=0 then local ads=qi{"Part",lol,sc=v3(2,math.abs(sy)+3.5,3.75),an=true,bn=bn(cc),mat="Wood",cf=scf*cn(3.5*x,sy/2+0.6-1.75,-20+4)*ca(0,x*-i,0)*cn(x*28,0,0)*ca(1,0,0)} 
addsupport2(ads.CFrame*cn(x*-0.5,ads.Size.y/2-0.1,0)*ca(0,90,0),ads.Size.z,i==90 and -1 or nil) end
 
 
sy=sy+1.25
end
qi{"Part",lol,sc=v3(1.3,1,1.3),an=true,bn=bn'Pastel brown',mat="Wood",cf=scf*cn(3*x,0,-20+3)}
-----
qi{"WedgePart",lol,sc=v3(1,6,13),an=true,bn=bn'Pastel brown',mat="Wood",cf=scf*cn(x*28.5,0,-4)*ca(0,0,90*x)}
qi{"WedgePart",lol,sc=v3(1,12,10),an=true,bn=bn'Pastel brown',mat="Wood",cf=scf*cn(x*19.5,0,6.25)*ca(0,0,90*x)}
 
 
 
end -- x -1,1
for yy=4,1,-1 do 
qi{"Part",lol,sc=v3(16+(yy*2),yy,3),an=true,bn=bn'Dark green',mat="Wood",cf=BasePos*cn(0,6+(yy/2),-93-(yy*3))}
end
qi{"Part",lol,sc=v3(58,1,9),an=true,bn=bn'Pastel brown',mat="Wood",cf=BasePos*cn(0,25.1,-140.5)}
qi{"Part",lol,sc=v3(13,1,10),an=true,bn=bn'Pastel brown',mat="Wood",cf=BasePos*cn(0,25.1,-131.5)}
qi{"WedgePart",lol,sc=v3(3.5,18,15),an=true,bn=bn(cc),mat="Wood",cf=BasePos*cn(0,15,-283)*ca(180,180,0)}
qi{"WedgePart",lol,sc=v3(3.5,8,15),an=true,bn=bn(cc),mat="Wood",cf=BasePos*cn(0,28,-283)}
qi{'SpecialMesh',qi{"Part",lol,sc=v3(2,21,2),an=true,bn=bn(cc),mat="Wood",cf=BasePos*cn(0,19.4,-110.6)}}
qi{'SpecialMesh',qi{"Part",lol,sc=v3(2,2,2),an=true,bn=bn(cc),mat="Wood",cf=BasePos*cn(0,19+(21/2),-110.6)},MeshType="Sphere"}
 
 
-- end side
local fronty=5.7
local pp={}
for x=-52,52,4 do 
local scl=90+math.abs(x*2.5)
local laa=10+math.floor(50-math.abs(x))
local adj=5+math.abs(x)
local zz=240-(scl/6)
local v=qi{"WedgePart",lol,formFactor="Custom",sc=v3(4,laa,scl),an=true,cf=BasePos*cn(x,fronty+(-laa/2),zz)*ca(0,0,180)*ca(0,180,0),bn=bn(cc),mat="Wood"}
if x==0 then pp[0]=v end
if x==-52 then pp[-1]=v end
if x==52 then pp[1]=v end
end
 
local backbase=BasePos*cn(0,fronty,230)
for x=-1,1,2 do 
local p1=pp[x].CFrame*cn(0,-pp[x].Size.y/2,-pp[x].Size.z/2).p
local p2=pp[0].CFrame*cn(0,-pp[0].Size.y/2,-pp[0].Size.z/2).p
local mag=(p1-p2).magnitude
local vcf=cn(p1,p2)*cn(0,0,-mag/2+1)
local v=qi{"Part",lol,sc=v3(4,2,mag+1),an=true,bn=bn(cc),mat="Wood"}
v.CFrame=vcf*cn(0,1,0)
local v2=v:Clone() v2.Parent=lol v2.CFrame=v.CFrame*cn(0,1.5+1.5+18+7,0)
local vs=mag+1
for w=-vs/2,vs/2,vs do 
addwindow2(vcf*cn(0,2,math.floor(w/2.3)),18,18)
end
qi{"Part",lol,sc=v3(4,26,11),an=true,bn=bn(cc),cf=vcf*cn(0,2+(13),-0.5),mat="Wood"}
qi{"Part",lol,sc=v3(4,26,11),an=true,bn=bn(cc),cf=vcf*cn(0,2+(13),28.5),mat="Wood"}
qi{"Part",lol,sc=v3(4,26,10),an=true,bn=bn(cc),cf=vcf*cn(0,2+(13),-29),mat="Wood"}
local zz=-135
qi{"WedgePart",lol,sc=v3(4,30,30),an=true,bn=bn(cc),cf=backbase*cn(52*x,15,zz+(15)),mat="Wood"}
addsupport(backbase*cn(53.5*x,15,zz+15)*ca(0,90,0)*ca(0,0,-45),42,x*sxx,sep)
local cur=qi{"WedgePart",lol,sc=v3(4,30,30),an=true,bn=bn(cc),cf=backbase*cn(32*x,15,zz+(15)),mat="Wood"}
for y=1.5,30,1.5 do 
qi{"Part",lol,sc=v3(16,1.5,2),an=true,bn=bn'Dark green',cf=backbase*cn(42*x,y-0.75,zz+(y)+0.95),mat="Wood"}
end
---
qi{'CylinderMesh',qi{"Part",lol,sc=v3(6,2,6),an=true,bn=bn(cc),cf=backbase*cn(54*x,2,zz-2)*ca(0,-10*x,0)*ca(0,0,90),mat="Wood"}}
qi{'CylinderMesh',qi{"Part",lol,sc=v3(6,2,6),an=true,bn=bn(cc),cf=backbase*cn(54*x,32,zz+30)*ca(0,0,90),mat="Wood"}}
for i=1,3 do 
cur=qi{"WedgePart",nil,sc=v3(12.5,30,26),an=true,cf=cur.CFrame*cn((cur.Size.x/2+(i==1 and -4 or 0))*-x,0,i==1 and 2 or 0)*ca(0,(i==1 and -25 or 10)*x,0)*cn(4*-x,0,0)}
local p1=cur.CFrame*cn(0,13,-15)
local p2=cur.CFrame*cn(0,-13,15)
local mag=(p1.p-p2.p).magnitude
local pa=qi{"Part",lol,sc=v3(12.5,mag,0.2),an=true,bn=bn'Institutional white',cf=cn(p1.p,p2.p)*cn(0,0,-mag/2),tra=0.5}
for z=-1,1,2 do 
local pa2=qi{"Part",lol,sc=v3(2,z==1 and 10 or 12.8,2),an=true,bn=bn'Dark green',cf=pa.CFrame*cn(z==1 and (i-2)*1.25*x or -0.1*x,(mag/2-0.5)*z,0)*ca(0,0,90)}
qi{'CylinderMesh',pa2}
if i==3 then
qi{'SpecialMesh',qi{"Part",lol,sc=v3(2,2,2),an=true,bn=bn'Dark green',cf=pa2.CFrame*cn(0,pa2.Size.y/2*-x,0)},MeshType="Sphere"}
 
end
end
--
end
 
end -- x
qi{'SpecialMesh',qi{"Part",lol,sc=v3(4,31,4),cf=backbase*cn(0,14.5,39.7),an=true,bn=bn(cc),mat="Wood"}}
qi{"Part",lol,sc=v3(100,1,20),cf=backbase*cn(0,29.4,-95),an=true,bn=bn'Pastel brown',mat="Wood"}
 
 
 
 
Interact = {}
Interact.Hatch={}
Interact.Hatch.CF = BasePos*cn(0,-45.3,-30)
Interact.Hatch.Part = qi{"Part",lol,sc=v3(22,1,60),an=true,bn=bn(cc),mat="Wood"}
Interact.Hatch.Angle=function(s,ang) Interact.Hatch.Part.CFrame=Interact.Hatch.CF*ca(ang or 0,0,0)*cn(0,0,30) end
Interact.Hatch:Angle(20)
 
 
 
print(#lol:children().. " parts!")
for ii,vv in pairs(parsa:children()) do 
if vv.Name=="RMShip" and vv~=lol then 
for i,v in pairs(vv:children()) do 
v:Remove()
if i%40==0 then wait() end 
end
end
end
