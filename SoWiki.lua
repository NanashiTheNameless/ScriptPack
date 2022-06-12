--[[SoWiki, made by xSoulStealerx.]]------------------------------------------------------------------------------------------------

Contributors = {"xSoulStealerx", "Scriptax", "awxsd561", "niels22"}

Avatar = "http://www.roblox.com/thumbs/avatar.ashx?x=150&y=200&format=png&username="
Asset = "http://www.roblox.com/asset/?id="
ScriptDec = Asset..(52661476)
TrollDec = Asset..(29658197)

Sites = {



{"xSoulStealerx", [[xSoulStealerx is a pretty awesome scripter, great animator and CFramer. He is also a brony and the creator of SoWiki.
He joined in 07 May 2008 according to forum.]], Avatar.."xSoulStealerx", "", "xSoulStealerx"},
{"linerider64", [[linerider64 is a good animator, cframer and scripter. He makes pretty cool places and likes to play Patapon. He is also filipino.]], "", ""},
{"XLua", "Script stealer, known as Dr4gOnh4cker2 and Dr4gOnh4cker2z.", Avatar.."XLua", "", "xSoulStealerx"},
{"Fenrier", "A good friend. Filipino, great animator, scripter and CFramer. Fenrier is a brony, likes Patapon and other cool stuff.", Avatar.."Fenrier", "", "xSoulStealerx"},
{"ROBLOX", "This is an account that Roblox game owns, makes almost everything in catalog. Can't get contact very often and looks like a Guest.", Avatar.."ROBLOX", Avatar.."ROBLOX", "xSoulStealerx"},
{"Guests", "Guests are unregistered users. Most of guests are very annoying and stupid.", Avatar.."ROBLOX", Avatar.."ROBLOX", "xSoulStealerx"},
{"Functions", [[Functions are something that is used in mosts scripts. Ex. function lol() print("lol") end
lol is the function name, and you can run it by lol(). It prints 'lol'. You can used them attached to events, Ex. Part.Touched:connect(lol).]], "", "", "xSoulStealerx"},
{"SoWiki",[[SoWiki is an information database made by xSoulStealerx. It updates as soon as xSoulStealerx is going to open notepad and add information.
SoWiki is a GUI-Based Wikipedia of ROBLOX, Users and scripting.]], ScriptDec, "", "xSoulStealerx"},
{"Variables",[[You can use variables to store data, Ex;  variable = 1
Now this variable called 'variable' holds number 1. Lets try it in print!
print(variable)
Outputs 1. You can store other data in also, including strings, functions, objects and tables.]], ScriptDec, "", "xSoulStealerx"},
{"Loops Part 1",[[There are a few different loops in scripting. 'while' loop, 'for' loop and 'repeat' loop.
The while loop keeps looping until condition is false. Ex;  while true do
As true can not be false, it keeps looping forever. Continues in part 2.]], ScriptDec, "", "xSoulStealerx"},
{"Loops Part 2",[[Also, you can't only use it just for booleans. You can use it for nil too. Ex;  var = ":3" while var do end
As you noticed, loops need end. Loops can't be broken unless there is going to be a false condition, or you use 'break'. Continues in part 3.]], ScriptDec, "", "xSoulStealerx"},
{"Loops Part 3",[[Ex;
a = 1 while true do a = a + 1 if a >= 10 then break end end
That will break the loop. Literally, repeat loop repeats until condition. Ex;
repeat wait() print("lol") until true
It prints 'lol' once, cause it stops until true. Continues on part 4.]], ScriptDec, "", "xSoulStealerx"},
{"Loops Part 4",[[Now we're gonna learn 'for' loop. Alright. Ex;
for INDEX, 0, 10, 2 do
print(INDEX)
end
That '0' is the starting position, '10' is ending position and '2' is how much it goes forward each time. So, INDEX holds the value where it is going.]], ScriptDec, "", "xSoulStealerx"},
{"If statement part 1",[['if' statement's function runs, if condition is true. Ex;
if true then
print("Its true")
end
Of course it prints 'Its true'. More examples:
if 1 > 2 then if 9001 == 9000 then if 1 ~= "lol" then
You can use 'else' in statement too. Continues in part 2.]], ScriptDec, "", "xSoulStealerx"},
{"If statement part 2",[['else' is used if condition is not true. Ex;
if false then
else
print("K")
end
It prints 'K'. Now theres 'elseif'. It's almost same as 'if'. Ex;
if 2 > 3 then print(":O") elseif 2 > 1 then print(":D") end
elseif has to be in an if statement.]], ScriptDec, "", "xSoulStealerx"},
{"Part",[[Part is a physics object that you can collide with. 
Main properties are Size, Position, BrickColor, Anchored, CanCollide, Transparency and Reflectance.]], "", "", "xSoulStealerx"},
{"Players",[[Players is an object that holds every player who joins. It is parented in game and is a service. Players has a property called MaxPlayers, so you can set maximum amount of players in server.]], "", "", "xSoulStealerx"},
{"Tables Part One",[[Tables are extremely useful. They're a way to organize all your information. i.e., local tab = {"T1", "T2"}. To index something in a table, you would use: 
tab[Index]. 
print(tab[1]) "T1"
print(tab[2]) "T2"
You can store anything in table, even tables.]], ScriptDec, "", "Scriptax"},
{"Tables Part Two",[[Inserting to table goes like: 
table.insert(TabName, Add)
i.e., local tab = {"I like"} table.insert(tab, " apples")
>>print(tab[1]..tab[2])
"I like apples"
You can also insert data into a specific index.
table.insert(tab, index, data)
]], ScriptDec, "", "Scriptax"},
{"Tables Part Three",[[You can also remove from tables. To do that, you would use:
table.remove(TableName, Index)
table.remove requires the index, not name. i.e.,
local tab = {"I like ", "cats"}
table.remove(tab, 2)
If we were to print its contents...
"I like ".
]], ScriptDec, "", "Scriptax"},
{"Tables Part Four",[[table.concat concatenates a table into one string. It also has a seperator argument. table.concat(Table, Seperator)
i.e.,
local tab = {"Scriptax", "is", "awesome"}
>>print(table.concat(tab, " ")
Output will say: "Scriptax is awesome".]], ScriptDec, "", "Scriptax"},
{"Tables Part 2.5",[[I added 2.5 just to show you other ways to add to a table.
local tab = {}
tab[1] = "ghj" or
tab["AFunction"] = function(Arg1, arg2) return "Scriptax Is Awesome" end or
tab.thing = false print(tab.thing)=false
So yah. Tables.]], ScriptDec, "", "Scriptax"},
{"Scriptax", [[My my, you've stumbled across the article of Scriptax. I have nothing else to say.
Scriptax is a contributor of SoWiki.]], Avatar.."Scriptax", Asset..(52306378), "Scriptax"},
{"Telamon", [[A ROBLOX admin, he's been working in ROBLOX since the beginning. He's also is the "Proud" owner of SFOTH, a famous place, and his real name is John Shedletsky.]], Avatar.."Telamon", "", "Scriptax"}, 
{"builderman", [[He is another ROBLOX admin. He is extremely helpful, and can provide you with important info on ROBLOX, but don't send him profane-spam. He banned me for that.]], Avatar.."builderman", "", "Scriptax"},
{"Sharp1331", [[One of Scriptax's noobs. He is very good at being a troll :D.]], Avatar.."Sharp1331", TrollDec, "Scriptax"},
{"oxcool1", [[A good scripter and arabian. His script builder is almost perfect. SoWiki was made in his script builder.]], Avatar.."oxcool1", "", "xSoulStealerx"},
{"TheNewScripter", [[A very good scripter. Has a ScriptBuilder, too. He's helped and banned many noobs, but he no longer logs onto ROBLOX...]], Avatar.."TheNewScripter", "", "Scriptax"},
{"tick()", [[A function that returns the time since Midnight of January 1st, 1970. May have different results if used in a Local Script.]], ScriptDec, "", "Scriptax"},
{"time()", [[A function that returns how long the server has been up in seconds.]], ScriptDec, "", "Scriptax"},
{"crash__()", [[A locked function. Basicly, it crashes the game.]], ScriptDec, "", "Scriptax"},
{"string.find Part One", [[Finds a specific string in another string. string.find(String, ThingToFind)
returns start and end of first match, otherwise returns nil. 
>>print(string.find("catcatcat", "cat"))
1 3]], ScriptDec, "", "Scriptax"},
{"string.find Part Two", [[You can also use the "Magic Characters" to find parts of a string. i.e.,
>>print(string.find("catcatcat", "%a+"))
1 9
That searched for all alphanumeric characters.]], ScriptDec, "", "Scriptax"},
{"string.gsub", [[Replaces a segment in a string with a different string. i.e.,
>>print(string.gsub("builderman is not a noob", "is not", "is"))
"builderman is a noob"
This also can use "Magic Characters"]], ScriptDec, "", "Scriptax"},
{"PlayerAdded", [[An event that fires when a player joins the game.
game.Players.PlayerAdded:connect(function(Player)
print(Player.Name)
end)
This will print a player's name when they enter the game.]], ScriptDec, "", "Scriptax"},
{"string.len", [[Returns length of a string.
>>string.len("abcdefg")
7
Same thing as #"abcdefg"]], ScriptDec, "", "Scriptax"},
{"string.lower", [[Returns the a string, but all uperpcase letters are lowercase.
>>string.lower("LolWUT")
"lolwut"]], ScriptDec, "", "Scriptax"},
{"string.upper", [[Returns a string, but all lowercase letters are uppercase.
>>string.upper("bump")
"BUMP"]], ScriptDec, "", "Scriptax"},
{"string.rep", [[Replicates a string x amount of times. i.e.,
>>string.rep("Boo", 3)
"BooBooBoo"]], ScriptDec, "", "Scriptax"},
{"math.abs", [[Returns the absolute value of a number.
>>math.abs(-355)
355
>>math.abs(355)
355]], ScriptDec, "", "Scriptax"},
{"math.huge", [[Biggest number you can get.
>>math.huge
1.#INF
]], ScriptDec, "", "Scriptax"},
{"math.pi", [[Returns pi.
>>math.pi
3.1415926535898]], ScriptDec, "", "Scriptax"},
{"math.rad", [[Converts degrees to radians.
>>math.rad(90)
about 1.57, basicly half of pi.]], ScriptDec, "", "Scriptax"},
{"Notepad++",[[Notepad++ is a very advanced modified notepad, where are many tools and languages. SoWiki was made with Notepad++.]], ScriptDec, "", "xSoulStealerx"},
{"Roblox Studio",[[Roblox Studio is a place-creating software with built-in browser. This has an useful command bar and you can search through explorer.]], "", "", "xSoulStealerx"},
{"TheGamer101",[[TheGamer101 has a famous place called Sword Fighting Tournament. TheGamer is famous only because of his poorly scripted game.]], Avatar.."TheGamer101", "", "xSoulStealerx"},
{"Coroutine",[[Coroutine is used in scripts. When using it and if theres a wait function call inside, anything outside coroutine will run normally in realtime, but inside coroutine, it waits. kthxbai.]], ScriptDec, "", "xSoulStealerx"},
{"brandonhare",[[A very AWESOME scripter. brandonhare made RIDI with good songs and very complex scripts. Respect!]], Avatar.."brandonhare", "", "xSoulStealerx"},
{"Vector3",[[Vector3 is a value type of x, y and z. i.e.
Vector3.new(x number, y number, z number)
Vector3's are used for part positions, velocitys and many other things.
You can access Vector3's specific value by this way:
v = Vector3.new(-10, 0, 40)
x = v.X]], ScriptDec, "", "xSoulStealerx"},
{"Color3",[[Color3 is constructed with r, g, b, which means red, green, blue. i.e.
local color = Color3.new(1, 1, 0)
1 means full in Color3.new, which is 255. This 'color' variable is yellow, and you can use Color3 in smoke, guis, fire and many other things.]], "", "", "xSoulStealerx"},
{"Boolean",[[Boolean is a value between false and true. That's all I have to say.]], "", "", "xSoulStealerx"},
{"Private server",[[Private server is often used in script builders, and most people don't like it. Unless they use it. Private server means other people than allowed can't enter the game.]], Asset..(9992903), "", "xSoulStealerx"},
{"math.sqrt",[[Returns to the square root of x. i.e.
> print(math.sqrt(9))
3]], ScriptDec, "", "xSoulStealerx"},
{"string.sub",[[Returns a string of String between Start and End. i.e.
> print(string.sub("This is a string", 1, 7))
"This is"]], ScriptDec, "", "xSoulStealerx"},
{"matthewhwang",[[matthewhwang likes Naruto and other anime + manga sht. He also made the annoying GUI sword script which alot of noobs use to annoy people. Lets give a thanks to matthewhwang for all these noobs and annoying scripts, but he's a good scripter anyways.]], Avatar.."matthewhwang", "", "xSoulStealerx"},
{"Insert tool",[[Most noobs use insert tools in script builders to insert stupid nairod orbs and nukes. Why don't they go to Insert Wars?]], Asset..(51887666), "", "xSoulStealerx"},
{"nairod's orb",[[The most annoying orb ever made. Noobs insert it, use it, ban, kick and loopkill with it. I mean c'mon!!]], Asset..(41692146), "", "xSoulStealerx"},
{"Script Builder - Share your scripts!",[[This is a forum thread, where every noob post stolen and already forumed scripts. Nubs visit that thread often, take scripts, go to a script builder and claim them as their own.]], ScriptDec, "", "xSoulStealerx"},
{"JetPack Script", [[A forum script, used by noobs to do a variety of things, like kill, kick, and annoy you. Avoid.]], ScriptDec, "", "Scriptax"},
{"Forum Scripts", [[Scripts that have been put on the forum. In most cases, one player stole the script from another, and posted it there. Using Forum Scripts can irritate people. Avoid use.]], ScriptDec, "", "Scriptax"},
{"DarkShadow6", [[An extremely good scripter, and maker of CoolCMDs. He likes to dress up as a traffic cone, though.]], Avatar.."DarkShadow6", "", "Scriptax"},
{"Builders Club", [[Builders club is a 'club' which costs you real money. It gives you up to 10 places, 15 robux a day and stuff.]], "", "", "xSoulStealerx"},
{"CoolCMDs", [[A long script created, created by user DarkShadow6. Sadly, it was put on the forums. It's most used at Anaminus's sbs. Avoid.]], ScriptDec, "", "Scriptax"},
{"math.sin", [[Returns the sine value of a given number. i.e.,
>>math.sin(math.rad(90))
1]], "", "", "xSoulStealerx"},
{"Lua", [[A scripting language that ROBLOX has implemented in their games. It is not an acronym. It is used to make most games, and was used to create SoWiki.]], ScriptDec, ScriptDec, "Scriptax"},
{"awxsd561", [[awxsd561 is a basic advanced scripter. He usually makes hoppers and guis. He owns a company called Awx. Inc.
awxsd561 is a contributor of SoWiki.]], Avatar.."awxsd561", "ImgRight", "awxsd561"},
{"oysi93", [[oysi93 is the owner of the ever popular group, Ro-Scripters. He is very good at raycasting, rendering, commands and much more.]], Avatar.."oysi93", "ImgRight", "awxsd561"},
{"math.random", [[Chooses a random number between two points that you specify. Ex.
print(math.random(1,5)).
That would print a random number between 1 and 5.]], ScriptDec, "ImgRight", "awxsd561"},
{"Advanced functions", [[Advanced functions are functions which have variables(see variables section) in the function. Ex.
function message(msg)
	Instance.new("Message",workspace).Text = msg
end
message("hi")
That would cause the Message to say hi.]], ScriptDec, "ImgRight", "awxsd561"},
{"Games", [[Games are places created by Robloxian users for the enjoyment of others. Every visit you get on a game earns you 1 ticket.]], "ImgLeft", "ImgRight", "awxsd561"},
{"Tickets",[[A currency of roblox, called 'tix'. You get 1 ticket each time someone visits your place and 10 tix everyday as login award. Most of items in catalog made by ROBLOX are sold for robux and you can't buy tickets.]], "", "", "xSoulStealerx"},
{"Robux",[[A currency of roblox, called 'rs' or 'R$'. Robux is usually worth 10 times more than tickets. You gain robux each day only if you have bought Builders Club. Robux is used to buy almost everything in roblox and you can buy it for real money.]], "", "", "xSoulStealerx"},
{"Raycasting",[[Raycasting is casting a line and checking if it intersects any object. Roblox added it's own raycast method called:
workspace:findPartOnRay()]], "", "", "xSoulStealerx"},
{"Chatted",[[Chatted is an event for players. It is fired when player talks and it returns to message, recipient and speaker. It is used to make commands.]], "", "", "xSoulStealerx"},
{"CFrame",[[CFrame is used to set a brick's angle and position. CFrame can make a part be inside of another. CFrame is set by CFrame.new(0, 0, 0) and angle is set by CFrame.Angles(math.pi, math.rad(90), 0).]], "", "", "xSoulStealerx"},
{"IntValue",[[A value object that holds an integer value. Integer value does not have any decimals and is always rounded to nearest.]], "", "", "xSoulStealerx"},
{"NumberValue",[[A value object that holds any number.]], "", "", "xSoulStealerx"},
{"ObjectValue",[[A value object that holds an object, such as game.Players, workspace or workspace.Model.Part.]], "", "", "xSoulStealerx"},
{"Weld",[[Weld has two CFrame properties, C0 and C1. Weld is used to stick two bricks together, even if they aren't connected. Part0 property is where to attach, Part1 property is attached part.]], "", "", "xSoulStealerx"},
{"Motor6D",[[Motor6D is same as weld, but it has DesiredAngle and MaxVelocity property, which make parts move smoothly. Motor6D is also used to make character animations.]], "", "", "xSoulStealerx"},
{"Lighting",[[Lighting is a service to set brightness, ambient and shadows.]], "", "", "xSoulStealerx"},
{"Workspace",[[Workspace is the only place where parts are seen, and where are parented most of objects.]], "", "", "xSoulStealerx"},
{"RobloxMasterDX",[[RobloxMasterDX is a funny :D D: guy. He likes My Little Pony and derping, and is a filipino.]], Avatar.."RobloxMasterDX", "", "xSoulStealerx"},
{"niels22", [[Average scripter, likes building and scripting. Lives in Denmark, and is very much like :D also likes MLP and the inventor of Blocklate (99% bricks 1% chocolate!)]], Avatar.."niels22", Asset.."50660649", "niels22"},
{"Decal", [[A texture used for many things. Such as mouse icons, text on bricks or pictures at walls and buttons eg. Many of those is uploaded by players.]], TrollDec, "ImageRight", "niels22"},
{"pcall", [[Pcall is a function that ignores glitches. It stops the function if there's an error. Ex.
pcall(function() pppprint("lol") end) will just do nothing because there are errors. However, it breaks if you have a wait inside your pcall. pcall will always returns to a bool, and if it's true, it has no errors and opposite.]], ScriptDec, "ImageRight", "niels22"},
{"Output", [[Output; the scripters' best friend. It automatically posts all errors in running scripts, results and info. Scripting would be very hard if you couldn't find the errors, it could take hours to fix a script!]], "ImageLeft", "ImageRight", "niels22"},
{"Wedge part", [[Look up part for more info. Wedge parts is almost the same as a part, it's just shaped as a ramp and have no other properties]], Asset.."38076210", "ImageRight", "niels22"},
{"math.asin", [[Returns the arc sine of x (in radius). Exp:
print(math.asin(1))
That will result in 1.57
]], "ImgLeft", "ImgRight", "awxsd561"},
{"math.ceil", [[Returns the smallest number larger then or equal to x. Essentially, rounds a number to the next highest value.Exp:
print(math.ceil(4.2))
That will result in 5
]], "ImgLeft", "ImgRight", "awxsd561"},
{"math.deg", [[Returns the angle x(in radius) in degrees. Exp:
print(math.deg (1.5707963267948966192313216916398))
That will result in 90
]], "ImgLeft", "ImgRight", "awxsd561"},
{"Bodyposition", [[A force that try pull it's parent(if it is a part) to a target. Target is a Vector3 value. Properties are P(Power) D(Dampening) maxForce(Vector3) and position(Vector3) ]], "ImageLeft", "ImageRight", "niels22"},
{"Sound", [[A sound! What else? Set a valid SoundId and put sound:play() to hear your sound! Properties: Volume(Number) Pitch(Number) SoundId(String)]], Asset.."47619018", "ImageRight", "niels22"},
{"News", [[The digital newspaper at Roblox. Roblox admins use it to write updates, host contest, run surveys with more. The most often posting is Brighteyes, ReeseMCBlox and Sorcus]], Asset.. "53086248", "ImageRight", "niels22"},
{"Spam",  [[Spam is a annoying thing that only noobs do. It involves clogging up the chatbox and posting something a million times in the comments.Exp:
awxsd561:Hi,xSoul
xSoul:Hi,awxsd561
Noob:ffffff
Noob:fffffff
Noob:fffffff
Noob:fffffffffff
xSoul:ban/Noob
]], Asset.. "50854922", "ImageRight","awxsd561"},
{"acb227",[[I am an awesome scripter, not better then xSoulStealerx, and also a contributor of SoWiki.  But Im great at welds, ok at hopperbins.  And that is basically it.]], Avatar.."acb227", "Image 2", "acb227"},
{"Tool",[[A tool is used somewhat in the sameway as a hopperbin, but alot easier to use.  To insert a Tool, you have to do: Instance.new("Tool").
To use a tool such as a sword, you would need to make sure that the part you hang onto is labeled as "Handle".  In order to get other parts than just a handle, you would need to weld them to the handle.  Tools opperate while you click with your mouse, aswell as keys.
   ]], "Image 1", "Image 2", "acb227"},
{"ForceField",[[ForceFields are shields that protect you from guns, explosions, aswell as anything that does the TakeDamage function.
If they do a direct health drain, then the ForceField will not protect you.  You can aquire a ForceField by: Spawning on a spawn that has ForceFields enabled, using scripts to put one on you, or using tools.  If you wish to make a ForceField, you would need to do Instance.new("ForceField").]], "Image 1", "Image 2", "acb227"},
{"Build Mode",[[Build Mode is similar to building in Edit mode except, you are a player using tools like in edit, and you can use tools that you would use if you play in a game. To insert stuff you will have to go to the Veiw tab and click Insert and choose what you want to insert. Just have fun building anything you can think of.]], "Image 1", "Image 2", "acb227"},
--{"Blank",[[]], "", "", "xSoulStealerx"},



}

function Find(txt)
	local found = {}
	if #txt >= 1 then
		for _, v in pairs(Sites) do
			if txt:lower() == v[1]:lower():sub(1,#txt) then
				table.insert(found, v)
			end
		end
	end
	if #found < 1 then found = nil end
	return found
end

UD = UDim2.new
C3 = Color3.new

function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)
	obj.Size = size
	obj.Position = position
	obj.BackgroundColor3 = bgcolor
	obj.BorderColor3 = bordercolor
	obj.BackgroundTransparency = transparency
	if text then
		obj.Text = text
	end
	if textcolor then
		obj.TextColor3 = textcolor
	end
	if auto then
		obj.AutoButtonColor = auto
	end
	obj.Parent = parent
end

function Add(Title, Information, Img1, Img2, Creator)
	local tab = {Title, Information, Img1, Img2, Creator.Name}
	table.insert(Sites, tab)
	return tab
end

function FindAny(str, what, which)
	local where = 0
	local a, b = nil, nil
	for i=1,#str do
		if str:sub(i,i + #what - 1) == what then
			where = where + 1
			if where == which then
				a, b = i, i+ #what-1
				break
			end
		end
	end
	return a, b
end

function GiveWiki(Player)
	Player.Chatted:connect(function(msg)
		if msg:lower():sub(1,4) == "add/" then
			local a = FindAny(msg, "/", 2)
			pcall(function()
				Add(msg:sub(5, a-1), msg:sub(a+1, #msg), "", "", Player)
			end)
		end
	end)
	local PlrGui = Player:findFirstChild("PlayerGui")
	if PlrGui == nil then repeat wait() PlrGui = Player:findFirstChild("PlayerGui") until PlrGui ~= nil end
	for _,v in pairs(PlrGui:children()) do if v.Name == "SoWiki" then v:remove() end end
	local Hidden = true
	local Props = nil
	local ShowNew = 12
	local function RemoveProps()
		if Props then
			for _,v in pairs(Props) do
				v:remove()
			end
			Props = nil
		end
	end
	function onDown(g)
		g.MouseButton1Down:connect(function()
			RemoveProps()
		end)
	end
	local SiteAtm = Sites[8]
	local Sc = Instance.new("ScreenGui")
	Sc.Name = "SoWiki"
	local Name = Instance.new("TextButton")
	EditGui(Name, Sc, UD(0, 170, 0, 25), UD(1, -170, 0.94, -25), C3(0.9, 0.9, 1), C3(), 0.1, "SoWiki", C3(), false)
	Name.Font = "ArialBold"
	Name.FontSize = Enum.FontSize.Size24
	onDown(Name, false)
	local SiteGui = Instance.new("ImageButton")
	EditGui(SiteGui, Name, UD(0, 350, 0, 300), UD(0, 0, 1, 0), C3(0.9, 0.9, 0.95), C3(), 0.1, nil, nil, false)
	onDown(SiteGui)
	SiteGui.AutoButtonColor = false
	local Search = Instance.new("TextBox")
	EditGui(Search, Name, UD(0, 180, 1, 0), UD(1, 0, 0, 0), C3(0.8, 0.8, 0.9), C3(), 0.1, "Search", C3())
	Search.Font = "Arial"
	Search.FontSize = Enum.FontSize.Size14
	Search.TextXAlignment = "Left"
	local Title = Instance.new("TextLabel")
	EditGui(Title, SiteGui, UD(1, 0, 0, 25), UD(0, 0, 0, 0), C3(), C3(), 1, "", C3())
	Title.Font = "ArialBold"
	Title.FontSize = Enum.FontSize.Size18
	local Information = Instance.new("TextLabel")
	EditGui(Information, SiteGui, UD(1, -20, 1, -110), UD(0, 10, 0, 30), C3(), C3(), 1, "", C3())
	Information.Font = "Arial"
	Information.FontSize = Enum.FontSize.Size14
	Information.TextWrap = true
	Information.TextYAlignment = "Top"
	Information.TextXAlignment = "Left"
	local Glass = Instance.new("ImageButton")
	EditGui(Glass, Search, UD(0, 25, 1, 0), UD(1, -25, 0, 0), C3(), C3(), 1)
	Glass.AutoButtonColor = false
	Glass.Image = "http://www.roblox.com/asset/?id=52605819"
	local Image1 = Instance.new("ImageLabel")
	EditGui(Image1, SiteGui, UD(0, 150, 0, 110), UD(0, 20, 1, -125), C3(0.9, 0.9, 0.95), C3(), 0.6)
	Image1.Image = ""
	local Image2 = Instance.new("ImageLabel")
	EditGui(Image2, SiteGui, UD(0, 150, 0, 110), UD(0, 180, 1, -125), C3(0.9, 0.9, 0.95), C3(), 0.6)
	Image2.Image = ""
	local AdderText = Instance.new("TextLabel")
	EditGui(AdderText, SiteGui, UD(0, 0, 0, 15), UD(0, 0, 1, -15), C3(), C3(), 1, "", C3())
	AdderText.Font = "Arial"
	AdderText.FontSize = Enum.FontSize.Size12
	AdderText.TextXAlignment = "Left"
	local AdderImage = Instance.new("ImageButton")
	EditGui(AdderImage, SiteGui, UD(0, 40, 0, 50), UD(0, -40, 1, -50), C3(0.9, 0.9, 0.95), C3(), 0.2)
	AdderImage.Image = ""
	AdderImage.AutoButtonColor = false
	local Articles = Instance.new("TextLabel")
	EditGui(Articles, SiteGui, UD(0.5, 0, 0, 20), UD(0.25, -40, 1, 0), C3(0.9, 0.9, 0.95), C3(), 0.1, "Articles: "..#Sites, C3())
	Articles.Font = "Arial"
	Articles.FontSize = Enum.FontSize.Size14
	local WhatsNew = Instance.new("TextButton")
	EditGui(WhatsNew, Name, UD(0, 150, 0, 25), UD(0, -150, 0, 0), C3(0.9, 0.9, 0.95), C3(), 0.1, "What's new", C3())
	WhatsNew.Font = "ArialBold"
	WhatsNew.FontSize = Enum.FontSize.Size18
	WhatsNew.AutoButtonColor = false
	onDown(WhatsNew)
	local WhatsFrame = Instance.new("ImageButton")
	EditGui(WhatsFrame, WhatsNew, UD(1, 0, 0, 20*ShowNew+5), UD(0, 0, 1, 0), C3(0.9, 0.9, 0.95), C3(), 0.2)
	WhatsFrame.AutoButtonColor = false
	onDown(WhatsFrame)
	local function OpenSite(Site)
		Title.Text = tostring(Site[1])
		Information.Text = tostring(Site[2])
		Image1.Image = tostring(Site[3])
		Image2.Image = tostring(Site[4])
		local Name = Site[5]
		if Name == nil then Name = "xSoulStealerx" end
		AdderText.Text = "Added by: "..tostring(Name)
		AdderImage.Image = tostring(Avatar..Name)
		SiteAtm = Site
	end
	local Random = Instance.new("TextButton")
	EditGui(Random, Search, UD(0.5, 0, 0, 15), UD(0.25, 0, 0, -15), C3(0.8, 0.8, 0.9), C3(), 0.1, "Random", C3())
	Random.Font = "ArialBold"
	Random.FontSize = Enum.FontSize.Size12
	Random.MouseButton1Down:connect(function()
		OpenSite(Sites[math.random(1,#Sites)])
	end)
	for i = #Sites, #Sites-(ShowNew-1), -1 do
		local a = (i-(#Sites-ShowNew))
		local but = Instance.new("TextButton")
		EditGui(but, WhatsFrame, UD(1, -10, 0, 20), UD(0, 5, 0, (20*ShowNew)+(-a*20)), C3(0.75, 0.75, 0.85), C3(), 0.1, Sites[i][1], C3())
		but.TextWrap = true
		but.BorderSizePixel = 0
		but.MouseButton1Down:connect(function()
			RemoveProps()
			OpenSite(Sites[i])
		end)
	end
	OpenSite(SiteAtm)
	Name.MouseButton1Down:connect(function()
		if Hidden then
			Name:TweenPosition(UD(1, -375, 0.94, -350), nil, nil, 0.4)
		else
			Name:TweenPosition(UD(1, -170, 0.94, -25), nil, nil, 0.8)
		end
		Hidden = not Hidden
	end)
	AdderImage.MouseButton1Click:connect(function()
		local found = Find(SiteAtm[5])
		if found then
			OpenSite(found[1])
		end
	end)
	local function ShowFound(found)
		local lol = {}
		for i, v in pairs(found) do
			local g = Instance.new("TextButton")
			EditGui(g, Search, UD(1, 0, 0, 20), UD(0, 0, 0, 5+i*20), C3(0.75, 0.75, 0.85), C3(), 0.1, v[1], C3(), false)
			g.TextWrap = true
			table.insert(lol, g)
			g.MouseButton1Down:connect(function()
				RemoveProps()
				OpenSite(v)
			end)
		end
		Props = lol
	end
	Search.Changed:connect(function(p)
		if p == "Text" then
			RemoveProps()
			local found = Find(Search.Text)
			if found then
				ShowFound(found)
			end
		end
	end)
	Glass.MouseButton1Click:connect(function()
		RemoveProps()
		local found = Find(Search.Text)
		if found then
			ShowFound(found)
		end
	end)
	Sc.Parent = PlrGui
end

for i,v in pairs(game.Players:GetPlayers()) do
	GiveWiki(v)
end
