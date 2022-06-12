--script/ -- mediafire
script:ClearAllChildren()
 
loadstring(_G["RM"..'Lib'])()
 
 
as={}
as.cone='1033714'
as.ring="3270017"
as.Chakram='47260990'
as.ring2='18430887'
as.blast='20329976'
as.missile='10207677'
as.fire='2693346'
as.boom='3264793'
as.slash='10209645'
as.abscond='2767090'
as.firelaser='13775494'
as.diamond='9756362'
as.metal='rbxasset://sounds\\unsheath.wav'
as.hit='10209583'
as.kick='46153268'
as.cast='2101137'
as.guigradient ='48965808'
as.guigradient2='53084230'
as.redgradient='108536582'
as.yellowgradient='108536588'
 
 
for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end
 
 
 
local parsa=workspace
 
 
lol=script --qi{"Model",parsa,n="RMShip"}
script.Name='RMShip'
 
 
cc="Brown"
cc2='Pastel brown'
cc3='Dark green'
 
BasePos=cn(-10,2000,0) --*ca(0,45,0)
CAPCF=BasePos*cn(0,5,220)
 
for ii,vv in pairs(parsa:children()) do 
if vv.Name=="RMShip" and vv~=lol then 
for i,v in pairs(vv:children()) do 
v:Remove()
if i%100==0 then wait() end 
end
end
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
qi{"WedgePart",lol,sc=v3(tic,sc/2+1.5,sc/4),bn=bn(cc),cf=midcf*cn(0,sc/2-sc/8,(sc/4+sc/8)*x)*ca(180,x==-1 and 0 or 180,0),an=true,mat="Wood"} 
end
qi{"Part",lol,sc=v3(tic-0.05,2,sc),bn=bn(cc),tra=0,cf=midcf*cn(0,hi/2+sc/4-0.25,0),an=true,mat="Wood"} 
end --
--
end -- 
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
stair1=function(ofs,h,yy,tt)
qi{"SpecialMesh",qi{"Part",lol,sc=v3(2.2,h,2.2),an=true,cf=ofs*cn(0,h/2,0),mat="Wood",bn='Black'}}
local ts=0
for y=0,yy,yy/tt do
qi{"Part",lol,sc=v3(8,1,2),an=true,cf=ofs*cn(0,ts/tt*(h-2)+1.5,0)*ca(0,y,0)*cn(4.5,0,0),mat="Wood",bn=cc3}
qi{"Part",lol,sc=v3(1,5,3),an=true,cf=ofs*cn(0,ts/tt*(h-2)+3.5,0)*ca(0,y,0)*cn(9,0,0),mat="Wood",bn=cc}
ts=ts+1
end
end
stair2=function(ofs,h,yy,tt,th,le,zz)
local ts=0
for y=0,yy,yy/tt do
qi{"Part",lol,sc=v3(le or 8,1,zz or 2),an=true,cf=ofs*cn(0,ts/tt*(h-2)+1.5,0)*ca(0,y,0)*cn((le+th)/2,0,0),mat="Wood",bn=cc3}
qi{"Part",lol,sc=v3(1,5,3),an=true,cf=ofs*cn(0,ts/tt*(h-2)+3.5,0)*ca(0,y,0)*cn(th/2+0.5+le,0,0),mat="Wood",bn=cc}
ts=ts+1
end
end
 
 
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
 
 
MakeWing=function(ofs,len,wide,times)
local s=0
local wing={}
for i=0,wide,wide/times do 
s=s+1
local adj=s*len/5
local lenn=adj+len
local v=qi{"Part",lol,sc=v3(3,lenn,3),cf=ofs*ca(i,0,0)*cn(0,lenn/2,0),an=true,bn=cc3,mat='Wood'}
wing[#wing+1]=v
end
for i=1,#wing-1 do
local y1,y2=wing[i].Size.y/2,wing[i+1].Size.y/2 
local zz=(wing[i].CFrame*cn(0,y1,4).p-wing[i+1].CFrame*cn(0,y2,-4).p).magnitude
qi{"WedgePart",lol,sc=v3(0.5,y1*2-4,zz),cf=wing[i].CFrame*cn(0,-2,1+zz/2)*ca(180,0,0),an=true,bn='White'}
end
for i=1,#wing do 
qi{'SpecialMesh',qi{"Part",lol,sc=v3(2,5,2),cf=wing[i].CFrame*cn(0,wing[i].Size.y/2,0)*ca(30,0,0)*cn(0,2.5,0),an=true,bn=cc3,mat='Wood'},MeshId=as.cone,Scale=v3(1.5,8,1.5)}
wing[i].CFrame=wing[i].CFrame*ca(0,45,0)
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
qi{"WedgePart",lol,sc=v3(tic,sc/2+1.5,sc/4),bn=bn(cc),cf=midcf*cn(0,sc/2-sc/8,(sc/4+sc/8)*x)*ca(180,x==-1 and 0 or 180,0),an=true,mat="Wood"} 
end
qi{"Part",lol,sc=v3(tic-0.05,2,sc),bn=bn(cc),cf=midcf*cn(0,hi/2+sc/4-0.25,0),an=true,mat="Wood"} 
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
 
 
 
 
 
 
 
for x=-1,1,2 do 
qi{"Part",lol,sc=v3(4,30,12),bn=cc,cf=CAPCF*cn(52*x,15.5,-95+6),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(4,30,10),bn=cc,cf=CAPCF*cn(52*x,15.5,94+6)*ca(0,180,180),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(4,30,16),bn=cc,cf=CAPCF*cn(32*x,15.5,-95+8)*ca(0,180,180),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(16,42,0.5),bn=cc,cf=CAPCF*cn(42*x,15.5,-102)*ca(45,0,0),an=true,mat="Wood"}
for z=1,3 do 
local zs=41.5
local v1=95+(zs/2)
local cur=qi{"Part",lol,sc=v3(4,30,zs),bn=cc,cf=CAPCF*cn(52*x,15.5,v1-(zs*z)-(18*(z-1))),an=true,mat="Wood"}
local cur=qi{"Part",lol,sc=v3(4,2,18),bn=cc,cf=cur.CFrame*cn(0,-14,-zs/2-9),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,1,18),bn=cc,cf=cur.CFrame*cn(0,-1+30-0.5,0),an=true,mat="Wood"}
addwindow2(cur.CFrame*cn(0,1,0),18,18)
end
end
---- -95
qi{"WedgePart",lol,sc=v3(60,2,8),bn=cc2,cf=CAPCF*cn(0,31.5,-95+4)*ca(0,180,0),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(2,4,3),bn=cc2,cf=CAPCF*cn(0,34.5,-95+-30.5+1.5)*ca(0,180,0),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(2,4,3),bn=cc2,cf=CAPCF*cn(0,34.5,-95+-30.5-1.5)*ca(0,0,180),an=true,mat="Wood"}
for x=-1,1,2 do
qi{"WedgePart",lol,sc=v3(2,30,30),bn=cc2,cf=CAPCF*cn(15*x,31.5,-95-15)*ca(0,0,-90*x),an=true,mat="Wood"}
addsupport(CAPCF*cn(15*x,32.5,-95-15)*ca(0,-45*x,0),math.sqrt(30^2+30^2),-15)
qi{"WedgePart",lol,sc=v3(2,6,4),bn=cc2,cf=CAPCF*cn(30.5*x,33.5,-95)*ca(0,-135*x,0)*cn(0,0,-1.5),an=true,mat="Wood"}
end
 
------floor2 uptostair 54+51+15 = 120 /// SECOND FLOOR's floor
CY=30
stair1(CAPCF*cn(-4,0.5,68-35+5),30,360,20)
qi{"WedgePart",lol,sc=v3(1,6,6),bn=cc,cf=CAPCF*cn(2,30,44)*ca(0,0,90),an=true,mat="Wood"} 
qi{"Part",lol,sc=v3(108,1,21),bn=cc,cf=CAPCF*cn(0,CY+0.21,68-25.5+15),an=true,mat="Wood"} 
qi{"Part",lol,sc=v3(108,1,65),bn=cc,cf=CAPCF*cn(0,CY,68-51-30+17.5),an=true,mat="Wood"} 
qi{"Part",lol,sc=v3(100,1,50),bn=cc2,cf=CAPCF*cn(0,CY,68-51-70),an=true,mat="Wood"}
for x=-1,1,2 do
qi{"WedgePart",lol,sc=v3(1,54,54),bn=cc,cf=CAPCF*cn(27*x,CY+0.21,95)*ca(0,180,-90*x),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(49,1,10),bn=cc,cf=CAPCF*cn(29.5*x,CY,68-51-7+32),an=true,mat="Wood"}
--qi{"Part",lol,sc=v3(2,29,4),bn=cc,cf=CAPCF*cn(6*x,15,4),an=true,mat="Wood"}
--qi{"WedgePart",lol,sc=v3(2,29,30),bn=cc,cf=CAPCF*cn(6*x,15,21)*ca(0,180,0),an=true,mat="Wood"}
for z=0,1,1 do
local CCF=CAPCF*cn(52*x,CY,95+27+(58*-z))
qi{"Part",lol,sc=v3(4,30,40),bn=cc,cf=CCF*cn(0,15.5,-20),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,2,18),bn=cc,cf=CCF*cn(0,29.5,-49),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,1,18),bn=cc,cf=CCF*cn(0,1,-49),an=true,mat="Wood"}
addwindow2(CCF*cn(0,1.5,-49),18,18)
end
qi{"Part",lol,sc=v3(4,30,34),bn=cc,cf=CAPCF*cn(52*x,CY+15.5,95+27-150+17),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(4,30,10),bn=cc,cf=CAPCF*cn(52*x,CY+15.5,95+27+5)*ca(0,180,180),an=true,mat="Wood"}
---end wall
qi{"Part",lol,sc=v3(4,30,14),bn=cc,cf=CAPCF*cn(27*x,CY+15.5,95)*ca(0,45*x,0)*cn(2*x,0,0),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,30,14),bn=cc,cf=CAPCF*cn(27*x,CY+15.5,95)*ca(0,45*x,0)*cn(2*x,0,-38+7),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,30,8),bn=cc,cf=CAPCF*cn(27*x,CY+15.5,95)*ca(0,45*x,0)*cn(2*x,0,7+18+4),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(3.9,1,13+38),bn=cc,cf=CAPCF*cn(27*x,CY+1,95)*ca(0,45*x,0)*cn(2*x,0,0),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(3.9,2,13+38),bn=cc,cf=CAPCF*cn(27*x,CY+29.5,95)*ca(0,45*x,0)*cn(2*x,0,0),an=true,mat="Wood"}
for xx=-1,1,2 do
addwindow2(CAPCF*cn(27*x,CY+1.5,95)*ca(0,45*x,0)*cn(2*x,0,(14+18)/2*xx),18,18)
end
for xx=1,2 do
local xxt={{4,52},{2,29}}
qi{"WedgePart",lol,sc=v3(xxt[xx][1],15,15),bn=cc,cf=CAPCF*cn(xxt[xx][2]*x,CY+15.5+7.5,-35.5)*ca(0,0,0),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(xxt[xx][1],15,15),bn=cc,cf=CAPCF*cn(xxt[xx][2]*x,CY+15.5-7.5,-35.5)*ca(0,0,180),an=true,mat="Wood"}
end
addsupport(CAPCF*cn(54*x,CY+0.5,-62)*ca(0,90*x,0),68,-10)
local yy=math.sqrt(15^2+15^2)
local yy2=math.sqrt(30^2+30^2)
for i=-1,1,2 do
qi{"Part",lol,sc=v3(20,yy,0.2),bn='Institutional white',cf=CAPCF*cn(40*x,CY+15.5-7.5*i,-35.5)*ca(-45*i,0,0),an=true,mat="Wood",tra=0.6}
end
addsupport(CAPCF*cn(40*x,CY+30.5,-28),26,-20)
for xx=-1,1,2 do
qi{"Part",lol,sc=v3(2,4,4),bn=cc,cf=CAPCF*cn((40+(xx*13))*x,CY+32.5,-28)*ca(45,0,0),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(2,30,30),bn=cc,cf=CAPCF*cn((21*x)+(6*xx),CY+15.5,-28-15-4),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(2,30,4),bn=cc,cf=CAPCF*cn((21*x)+(6*xx),CY+15.5,-28-2),an=true,mat="Wood"}
end
qi{"Part",lol,sc=v3(10,yy2,1),cf=CAPCF*cn(21*x,CY+15.5,-28-15-1.5)*ca(45,0,0),an=true,tra=1} -- stair helper
for y=2,30,2 do 
qi{"Part",lol,sc=v3(10,y,2),bn=cc3,cf=CAPCF*cn(21*x,CY+0.5+y/2,-59+y),an=true,mat='Wood'}
end
qi{"Part",lol,sc=v3(2,4,4),bn=cc,cf=CAPCF*cn(14.5*x,CY+32.5,-28)*ca(45,0,0),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(2,4,4),bn=cc,cf=CAPCF*cn(14*x,CY+32.5,-28-59)*ca(0,45*x,0)*ca(45,0,0),an=true,mat="Wood"}
addsupport(CAPCF*cn(14*x,CY+30.5,-28-(59/2))*ca(0,-90*x,0),58,-20)
 
end -- end of capn room 1st+2nd floor ----------------------------------------------------------------------------------------------------
local vy=0
for x=1,14 do 
qi{"WedgePart",lol,sc=v3(2,30-vy,60),bn=cc,cf=CAPCF*cn(-15+x*2,CY+((30+vy)/2)+0.4,-58)*ca(180,180,0),an=true,mat='Wood'}
if x<7 then vy=vy+3.5 elseif x>7 then vy=vy-3.5 end
end
qi{"Part",lol,sc=v3(6,30,6),bn=cc,cf=CAPCF*cn(0,CY+15.5,95-28),an=true,mat="Wood"}
---SECOND FLOOR's ROOF
DY=CY+30.03
qi{"Part",lol,sc=v3(100,1,60),bn=cc2,cf=CAPCF*cn(0,DY,-23+15-2.5+12.5),an=true,mat="Wood"} -- THIS EDIT THIS FLOOR OMG
qi{"Part",lol,sc=v3(24,0.1,58),bn=cc2,cf=CAPCF*cn(0,DY+0.4,-57),an=true,mat="Wood"} 
addsupport(CAPCF*cn(0,CY+30.5,-28-59),26,-20)
-------------------WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWTHERD FLER
for x=-1,1,2 do 
qi{"WedgePart",lol,sc=v3(1,54,54),bn=cc,cf=CAPCF*cn(27*x,DY,125)*ca(0,180,-90*x),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(4,30,12),bn=cc,cf=CAPCF*cn(52*x,DY+15.5,125+27+6)*ca(0,180,180),an=true,mat="Wood"}
---end wall
qi{"Part",lol,sc=v3(4,30,14),bn=cc,cf=CAPCF*cn(27*x,DY+15.5,125)*ca(0,45*x,0)*cn(2*x,0,0),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,30,14),bn=cc,cf=CAPCF*cn(27*x,DY+15.5,125)*ca(0,45*x,0)*cn(2*x,0,-38+7),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,30,8),bn=cc,cf=CAPCF*cn(27*x,DY+15.5,125)*ca(0,45*x,0)*cn(2*x,0,7+18+4),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(3.9,1,13+38),bn=cc,cf=CAPCF*cn(27*x,DY+1,125)*ca(0,45*x,0)*cn(2*x,0,0),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(3.9,2,13+38),bn=cc,cf=CAPCF*cn(27*x,DY+29.5,125)*ca(0,45*x,0)*cn(2*x,0,0),an=true,mat="Wood"}
for xx=-1,1,2 do
addwindow2(CAPCF*cn(27*x,DY+1.5,125)*ca(0,45*x,0)*cn(2*x,0,(14+18)/2*xx),18,18)
end
qi{"Part",lol,sc=v3(6,30,6),bn=cc,cf=CAPCF*cn(0,DY+15.5,125-28),an=true,mat="Wood"}
for z=0,1,1 do
local CCF=CAPCF*cn(52*x,DY,125+27+(58*-z))
qi{"Part",lol,sc=v3(4,30,40),bn=cc,cf=CCF*cn(0,15.5,-20),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,2,18),bn=cc,cf=CCF*cn(0,29.5,-49),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(4,1,18),bn=cc,cf=CCF*cn(0,1,-49),an=true,mat="Wood"}
addwindow2(CCF*cn(0,1.5,-49),18,18)
end
-- crapside wall stuffff
qi{"Part",lol,sc=v3(14,30,4),bn=cc,cf=CAPCF*cn(47*x,DY+15.5,34),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(19,30,4),bn=cc,cf=CAPCF*cn(16.5*x,DY+15.5,34),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(4,30,30),bn=cc,cf=CAPCF*cn(52*x,DY+15.5,17),an=true,mat="Wood"}
addsupport(CAPCF*cn(53.5*x,DY+0.5,-8+12.5-15)*ca(0,-90*x,0),35,10)
----floooor
qi{"Part",lol,sc=v3(45,1,10),bn=cc,cf=CAPCF*cn(27.5*x,DY,57),an=true,mat="Wood"}
---- DOOOOOORZZZZZZZ GREEN ONEZ
for X=-1,1,2 do 
qi{"Part",lol,sc=v3(2,10,4),cf=CAPCF*cn(33*x+(6*X),DY+5.5,34),an=true,mat="Wood",bn=cc3}
qi{"WedgePart",lol,sc=v3(3.9,6.1,7.1),cf=CAPCF*cn(33*x+(3.5*X),DY+15.5,34)*ca(0,90*X,180),an=true,mat="Wood",bn=cc}
end
for i=0,180,18 do 
local adj=i%36==0 and 0.6 or 0.2
qi{"Part",lol,sc=v3(2,2.2,4+adj),cf=CAPCF*cn(33*x,DY+11.5,34)*ca(0,0,i)*cn(6,0,0),an=true,mat="Wood",bn=cc3}
end
qi{"Part",lol,sc=v3(14,12,4),cf=CAPCF*cn(33*x,DY+30.5-6,34),an=true,mat="Wood",bn=cc}
--- grand staircase designs
qi{"WedgePart",lol,sc=v3(1.5,8,6),bn=cc,cf=CAPCF*cn(21*x,DY+4,-2),an=true,mat="Wood"}
qi{"Part",lol,sc=v3(7,4,1.5),bn=cc,cf=CAPCF*cn(14.5*x,DY+32.5,32.9),an=true,mat="Wood"}
qi{"WedgePart",lol,sc=v3(1.5,3,7),bn=cc,cf=CAPCF*cn(14.5*x,DY+36,32.9)*ca(0,-90*x,0),an=true,mat="Wood"}
 
 
end -- end of x-1,1
--GRAND STAIRCASE DOOR BEHIND LOL
--qi{"Part",lol,sc=v3(45,1,10),bn=cc,cf=CAPCF*cn(0,DY,57),an=true,mat="Wood"}
for X=-1,1,2 do 
qi{"Part",lol,sc=v3(2,10,4),cf=CAPCF*cn(0+(6*X),DY+5.5,34),an=true,mat="Wood",bn=cc3}
qi{"WedgePart",lol,sc=v3(3.9,6.1,7.1),cf=CAPCF*cn(0+(3.5*X),DY+15.5,34)*ca(0,90*X,180),an=true,mat="Wood",bn=cc}
end
for i=0,180,18 do 
local adj=i%36==0 and 0.6 or 0.2
qi{"Part",lol,sc=v3(2,2.2,4+adj),cf=CAPCF*cn(0,DY+11.5,34)*ca(0,0,i)*cn(6,0,0),an=true,mat="Wood",bn=cc3}
end
qi{"Part",lol,sc=v3(14,12,4),cf=CAPCF*cn(0,DY+30.5-6,34),an=true,mat="Wood",bn=cc}
--- end of epic
EY=DY+30.01
qi{"Part",lol,sc=v3(108,1,36),bn=cc,cf=CAPCF*cn(0,DY,125-47-15.5+20-2.5),an=true,mat="Wood"} -- long 3rd floor floor
--2nd floor stair
stair1(CAPCF*cn(-4,30.5,53),30,360,20)
qi{"WedgePart",lol,sc=v3(1,6,6),bn=cc,cf=CAPCF*cn(2.5,60,59)*ca(0,0,90),an=true,mat="Wood"} 
---2nd FLR ROOF / 3rd FLRS----WWWWWWWW
qi{"Part",lol,sc=v3(100,1,20),bn=cc,cf=CAPCF*cn(0,DY,42),an=true,mat="Wood"}
for i=1,30 do -- staircase
local XS=20+(i/1.5)
local v=qi{"Part",lol,sc=v3(XS,1,2),cf=CAPCF*cn(0,DY+31-i,32-i),an=true,mat="Wood",bn=cc3}
for x=-1,1,2 do
local y=30-i+8
qi{"Part",lol,sc=v3(1.5,y,3),cf=CAPCF*cn((XS+1)*x/2,DY+y/2,32-i)*ca(0,-20*x,0),an=true,mat="Wood",bn=cc}
end
end
 
 
---THIRD FLOOR ROOF (4th floors)
for x=-1,1,2 do 
local i=0
for y=0,180,180/20 do 
i=i+1
qi{"Part",lol,sc=v3(30,1,6),cf=CAPCF*cn(51*x,i/200+EY,35)*ca(0,y,0)*cn(15+3,0,0),an=true,mat="Wood",bn=cc2}
if y~=(x==1 and 180 or 0) then
qi{"Part",lol,sc=v3(1,5,6),cf=CAPCF*cn(51*x,i/200+EY+2,35)*ca(0,y,0)*cn(30+3+0.5,0,0),an=true,mat="Wood",bn=cc}
end
end ----
qi{'CylinderMesh',qi{"Part",lol,sc=v3(3,70,3),cf=CAPCF*cn(51*x,EY+35,35),an=true,mat="Wood",bn=cc},Scale=v3(2,1,2)}
qi{'CylinderMesh',qi{"Part",lol,sc=v3(9,3,9),cf=CAPCF*cn(51*x,EY+1.5,35),an=true,mat="Wood",bn=cc2}}
stair2(CAPCF*cn(51*x,EY,35),50,360,30,5.5,5,3)
qi{'SpecialMesh',qi{"Part",lol,sc=v3(6,6,6),cf=CAPCF*cn(51*x,EY+70,35),an=true,mat="Wood",bn=cc},MeshType='Sphere',Scale=v3(1,1,1)}
local yy=360/20
local i=0
for y=yy,360-(yy*6),yy do 
i=i+1
local v=qi{"Part",lol,sc=v3(5,1,2.5),cf=CAPCF*cn(51*x,i/200+EY+50,35)*ca(0,y,0)*cn(2.5+3,0,0),an=true,mat="Wood",bn=cc2}
qi{"Part",lol,sc=v3(1,4,2.9),cf=CAPCF*cn(51*x,i/200+EY+51.5,35)*ca(0,y,0)*cn(5.5+3,0,0),an=true,mat="Wood",bn=cc}
if y==360-(yy*6) then
qi{"Part",lol,sc=v3(7,4,1),cf=v.CFrame*cn(0,1.5,-3.5/2),an=true,mat="Wood",bn=cc}
end
end
qi{"WedgePart",lol,sc=v3(1,30,126),cf=CAPCF*cn(69*x,EY,101)*ca(0,180,90*x),an=true,mat="Wood",bn=cc2}
addsupport(CAPCF*cn(69*x,EY+0.5,101)*ca(0,-x*math.deg(math.atan2(30,126))+90,0),129.52,0)
qi{"WedgePart",lol,sc=v3(1,54,54),cf=CAPCF*cn(27*x,EY+0.05,137)*ca(0,180,-90*x),an=true,mat="Wood",bn=cc2}
addsupport(CAPCF*cn(27*x,EY+0.5,137)*ca(0,-45*x,0),76.36,0)
 
 
end -- endddd
qi{"Part",lol,sc=v3(108.1,1.05,74.1),cf=CAPCF*cn(0,EY+0.02,73),an=true,mat="Wood",bn=cc2}
 
 
 
----BALOOOOOOOOOON OMG SO HARD SO GOOD so sfot
FRONT=BasePos*cn(0,5,-190)
balloon=BasePos*cn(0,250,0)
--qi{"Part",lol,sc=v3(100,1,180),cf=FRONT*cn(0,21,0),an=true,tra=0.1} unicorn boat - xsoul
local v=qi{"Part",lol,sc=v3(8,100,8),cf=FRONT*cn(0,10,-90)*ca(-80,0,0)*cn(0,50,0),an=true,bn=cc,tra=1}
qi{'SpecialMesh',qi{"Part",lol,sc=v3(4,100,4),cf=v.CFrame*cn(0,-6,0),an=true,bn=cc},Scale=v3(4,150,8),MeshId=as.cone}
---balooon cylinder
for z=0,360,360/40 do 
qi{"Part",lol,sc=v3(16,2,300),cf=balloon*ca(0,0,z)*cn(0,100,0),an=true,bn=cc4}
end
for z=0,180,360/25 do 
qi{"Part",lol,sc=v3(2,2,310),cf=balloon*ca(0,0,z-90)*cn(0,102,0),an=true,bn=cc}
end
local des={}
for i=-150,150,50 do 
for z=0,180,360/20 do 
local v=qi{"Part",lol,sc=v3(34,2,2),cf=balloon*cn(0,0,i+4)*ca(0,0,z-90)*cn(0,102,0),an=true,bn=cc}
local vf=v.CFrame
if z==0 or z==180 then
local x=z==0 and 1 or -1
local adj=11-(11*(math.abs(i)/150))
local st=qi{"Part",lol,sc=v3(10,12,10),cf=BasePos*cn((55+adj)*x,-5,i/1.7)*ca(0,0,-45*x),an=true,bn=cc}
qi{'CylinderMesh',st}
local p1,p2=st.CFrame*cn(0,st.Size.y/2-2,0).p,v.CFrame*cn(x*17,0,0).p
local len=(p1 - p2).magnitude
local v=qi{"Part",lol,sc=v3(2,len,2),cf=cn(p1,p2)*ca(-90,0,0)*cn(0,len/2,0),an=true,bn=cc}
des[x]=des[x] or {} 
des[x][#des[x]+1]=v 
end
end
end
---designs
for x=-1,1,2 do 
for i=1,6 do 
for y=120,-90,-30 do 
local p1,p2=des[x][i].CFrame*cn(0,y,0).p ,des[x][i+1].CFrame*cn(0,y,0).p 
local len=(p1-p2).magnitude
local v=qi{"Part",lol,sc=v3(1.9,len,1.9),cf=cn(p1,p2)*ca(-90,0,0)*cn(0,len/2,0),an=true,bn=cc}
end
end
end
--for y=0,360,360/20 do -- thank doge
for iang = 0, 1 do 
for i = 0, 10 do 
for j = 0, 20 do 
-- i rotate them by Z / the whole diameter is 200 in size
local extrasize = math.sin(math.pi/20*j) * 28.5 
--qi{"Part",lol,sc=v3(32,2,10+extrasize),cf=balloon*cn(0,0,-105)*ca(0,0,y)*cn(0,100,0),an=true,bn=cc4}
qi{"Part",lol,sc=v3(16,2,4+extrasize),cf=balloon*ca(0,180*iang,0)*cn(0,0,-150)*ca(0,math.deg(-math.pi/10*i),math.deg(math.pi/20*j))*cn(0,100,0),an=true,bn=cc4}
end
end 
end 
 
 
for x=-1,1,2 do 
MakeWing(FRONT*cn(35*x,-20,40)*ca(0,30*x,-60*x),80,70,6)
MakeWing(FRONT*cn(55*x,-25,250)*ca(0,10*x,-60*x),120,80,8)
end
MakeWing(CAPCF*cn(0,90,110)*ca(0,0,0),80,90,8)
 
 
 
 
print(#lol:children().. " parts!")
 