:ls --Cape Gifted by TheRedAngel, Local Script!

wait(2);
local ta1 = 5;
function Cape(player,color)
	color = color or player.Torso.BrickColor; 
	if (player:FindFirstChild("Head") == nil) then return nil; end 
	local m = Instance.new("Model"); 
	m.Name = "Cape_Yshi"; 
	local neckpiece = Instance.new("Part",m);
	neckpiece.formFactor = "Plate";
	neckpiece.Size = Vector3.new(2,.4,1);
	neckpiece.Name = "NeckPiece";
	neckpiece.BrickColor = color;
	neckpiece.CanCollide = false;
	neckpiece.TopSurface = "Smooth";
	neckpiece.BottomSurface = "Smooth";
	local neckweld = Instance.new("Weld",neckpiece);

	neckweld.Part0 = player.Head;
	neckweld.Part1 = neckpiece;
	neckweld.C0 = CFrame.new(0,-.5,0); 
	local seg1 = neckpiece:Clone(); 
	seg1.Size = Vector3.new(3,.4,1);
	seg1.Parent = m;
	seg1.Name = "Segment_1";
	local seg1w = Instance.new("Weld",seg1);
	seg1w.Part0 = neckpiece;
	seg1w.Part1 = seg1;
	seg1w.C0 = CFrame.new(0,0,.45);
	seg1w.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(-80),0,0); 
	local seg2 = seg1:Clone();
	seg2.Parent = m;
	seg2.Name = "Segment_2";
	local seg2w = Instance.new("Weld",seg2);
	seg2w.Part0 = seg1;
	seg2w.Part1 = seg2;
	seg2w.C0 = CFrame.new(0,0,.45);
	seg2w.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(-5),0,0);
	m.Parent = player;
	local seg3 = seg2:Clone();
	seg3.Parent = m;
	seg3.Name = "Segment_3";
	local seg3w = Instance.new("Weld",seg3);
	seg3w.Part0 = seg2;
	seg3w.Part1 = seg3;
	seg3w.C0 = CFrame.new(0,0,.45);
	seg3w.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(-2),0,0);
	local seg4 = seg3:Clone();
	seg4.Name = "Segment_4";
	seg4.Parent = m;
	local seg4w = Instance.new("Weld",seg4);
	seg4w.Part0 = seg3;
	seg4w.Part1 = seg4;
	seg4w.C0 = CFrame.new(0,0,.45);
	seg4w.C1 = CFrame.new(0,0,-.45);
	return m;
end

function Flex(cape,vals)
	for i,v in pairs(vals) do
		if(i ~= 1) then 
			cape:GetChildren()[i].Weld.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(vals[i-1]),0,0);
		end
	end
end
local char = game.Players.LocalPlayer.Character;
local cape = Cape(char);
local lastfrstrad = -60;
for i=0, math.huge do
local frstrad = -60;
ta = ta1 * char.Torso.Velocity.magnitude/16 + 1 * (math.random()+.5);
if(ta>10) then
ta = math.random(90,100)/10;
end
frstrad = frstrad + (char.Torso.Velocity.magnitude) + math.sin(i)*3*ta;
if(frstrad > 65) then
frstrad = 65;
elseif (char.Torso.Velocity.magnitude < 5) then
frstrad = -80;
end
if(char.Humanoid:HasCustomStatus("Flying"))then
frstrad = -80;
ta = 15;
end
frstrad = (frstrad+lastfrstrad)/2;
lastfrstrad = frstrad;
Flex(cape,{frstrad,math.sin(i+20)*-1*ta,math.sin(i+20)*2*ta,math.sin(i+20)*ta,math.sin(i+20)*-1*ta});
wait(.05);
end

print 'Hello world!'
