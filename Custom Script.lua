--[[Made by xXSoldGoldXx]]

player=game.Players.LocalPlayer
function clear()
local lolz=player.Character:GetChildren()
for a=1,#lolz do
if lolz[a].ClassName=="Shirt" or lolz[a].ClassName=="Pants" or lolz[a].ClassName=="Hat" or lolz[a].ClassName=="CharacterMesh" then
lolz[a]:Destroy()
end end
local lolface=player.Character.Head:GetChildren()
for b=1,#lolface do
if lolface[b].ClassName=="Decal" then
lolface[b]:Destroy()
end end
end


function outfit(shirtid,pantsid,faceid,hatid,hat2id,hat3id)
local newshirt=Instance.new("Shirt",player.Character)
newshirt.Name="Shirt"
newshirt.ShirtTemplate=shirtid

local newpants=Instance.new("Pants",player.Character)
newpants.Name="Pants"
newpants.PantsTemplate=pantsid

local newface=Instance.new("Decal",player.Character.Head)
newface.Name="face"
newface.Texture=faceid

local newhat2=game:service("InsertService"):LoadAsset(hatid) 
local newhat2stuff=newhat2:GetChildren()
for h2=1,#newhat2stuff do
if newhat2stuff[h2].ClassName=="Hat" then
newhat2stuff[h2].Parent=player.Character
end
end
local newhat2=game:service("InsertService"):LoadAsset(hat2id) 
local newhat2stuff=newhat2:GetChildren()
for h2=1,#newhat2stuff do
if newhat2stuff[h2].ClassName=="Hat" then
newhat2stuff[h2].Parent=player.Character
end
end
local newhat2=game:service("InsertService"):LoadAsset(hat3id) 
local newhat2stuff=newhat2:GetChildren()
for h2=1,#newhat2stuff do
if newhat2stuff[h2].ClassName=="Hat" then
newhat2stuff[h2].Parent=player.Character
end
end
end
Stylish1="http://www.roblox.com/asset/?id=33209766"
Stylish="http://www.roblox.com/asset/?id=33210029"
face="http://www.roblox.com/asset/?id=51704315"
cfedora=1029025
chair=20980138
cglasses=11748356

valktop="http://www.roblox.com/asset/?id=28360921"
valkbottom="http://www.roblox.com/asset/?id=28360928"
face="http://www.roblox.com/asset/?id=24669310"
valk=124730194
jj=1073690
shades=11748356

red="http://www.roblox.com/asset/?id=99220679"
red2="http://www.roblox.com/asset/?id=99220743"
face="http://www.roblox.com/asset/?id=51704315"
red4=1029025
red5=11748356
red6=42211680
red7=1125510

sinistertop="http://www.roblox.com/asset/?id=73117260"
sinisterpant="http://www.roblox.com/asset/?id=33210029"
face="http://www.roblox.com/asset/?id=24669310"
fedora=60115635
hair=20980138
glasses=11748356


infernustop="http://www.roblox.com/asset/?id=49432722"
infernuspants="http://www.roblox.com/asset/?id=49434107"
face="http://www.roblox.com/asset/?id=51704315"
infernus=31101391
bling=33171947

icetop="http://www.roblox.com/asset/?id=48607775"
icepants="http://www.roblox.com/asset/?id=94437456"
icedominus=48545806


messortop="http://www.roblox.com/asset/?id=64975142"
messorpants="http://www.roblox.com/asset/?id=65321787"
messor=64444871

wtop="http://www.roblox.com/asset/?id=37877513"
wpants="http://www.roblox.com/asset/?id=38067023"
wdominus=21070012

vtop="http://www.roblox.com/asset/?id=96115022"
vpants="http://www.roblox.com/asset/?id=96120620"
vdominus=96103379

bluetop="http://www.roblox.com/asset/?id=68552465"
bluepants="http://www.roblox.com/asset/?id=68552544"
bluesteel=98346834



function chat(msg,speaker)

if msg=="infernus" then
clear()
outfit(infernustop,infernuspants,face,infernus,bling)
end

if msg=="white dominus" then
clear()
outfit(wtop,wpants,face,wdominus,bling)
end

if msg=="ice dominus" then
clear()
outfit(icetop,icepants,face,icedominus,bling)
end

if msg=="messor" then
clear()
outfit(messortop,messorpants,face,messor,bling)
end

if msg=="classic" then
clear()
outfit(Stylish1,Stylish,face,cfedora,chair,cglasses)
end

if msg=="vesp" then
clear()
outfit(vtop,vpants,face,vdominus,bling)
end

if msg=="valk" then
clear()
outfit(valktop,valkbottom,face,valk,jj,shades)
end

if msg=="bluesteel" then
clear()
outfit(bluetop,bluepants,face,bluesteel,bling)
end

if msg=="sinister" then
clear()
outfit(sinistertop,sinisterpant,face,fedora,hair,glasses)
end

if msg=="red suit" then
clear()
outfit(red,red2,face,red4,red5,red6,lol)
end

end
player.Chatted:connect(chat)