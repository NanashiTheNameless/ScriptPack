
pron={
	258993627; -- naruto spred black haired
	252572140; -- frozen big tit pincher
	219443268; -- skyrim? tits/blonde/partial
	213096286; -- hentai footjob
	191490975; -- ameuture spred full nude
	--172898698; -- beach babe non
	172899393; -- blonde country tatas
	191468569; -- dick tranparency background / stretchable
	191497677; -- country blonde on couch full nude
	173063264; -- uppercunt? lol
	173099598; -- massive chode
	158115660; -- big tits but looks stoned af(or has downs)
	158114531; -- happy fuck on couch -- porn
	158113603; -- booteh, nude, pussy showing
	158109400; -- hot bby, tits out in bed
	238444447; -- hentai 1
	238444475; -- hentai kitty cat facial
	238444606; -- red head kitty jerky tits jayjay rub
	213102605; -- horse handjob lmao
	259585507,
	259784557,
	259879079,
	259879035, -- lol yiff
	259878998, -- yiff
	259878924, -- i think yiff
	259878896,
	259885252,
	259577093,
	259753984,
	259809313,
	259810029,
	259810862,
	269422485;
	269421179;
	269421026;
	269420932;
	269419313;
	269421117;
}

local tv=Instance.new"Part"
tv.Anchored=true
tv.CanCollide=false
tv.Size=Vector3.new(1, 14, 28)
tv.CFrame=CFrame.new(-shared.coollimit/2+1.5, -shared.cooldepth/2, 0)
tv.BrickColor=BrickColor.new("Really black")
local dc={}
function setid(id)
tv:ClearAllChildren()
for i=1, 50 do 
dc[i]=Instance.new"Decal"
dc[i].Parent=tv
dc[i].Face=Enum.NormalId.Right
dc[i].Texture="rbxassetid://"..id
end
end
currentid=pron[math.random(1, #pron)]
tv.Parent=workspace
local con
con=function(prop)
	if prop=="Parent" then
		local clone=tv:Clone()
		clone:ClearAllChildren()
		tv=clone
		setid(currentid)
		clone.Parent=workspace
		clone.Changed:connect(con)
	end
end
tv.Changed:connect(con)
math.randomseed(os.time())
while wait(5) do
	currentid=pron[math.random(1, #pron)]
	setid(currentid)
end