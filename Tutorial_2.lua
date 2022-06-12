--[[
	
	RAINDROP DEFAULT SCRIPTS
	
	NAME		    ::	AUTHOR	::	DATE
	Tutorial	::	brack4712	::	10/29/16
	
	INSTRUCTIONS
	[*] Read all the comments
	
	ENJOY!
	
--]]

--- INTRODUCTION ---
--[[
	
	WELCOME TO RAINDROP!
	
	THIS SCRIPT WILL WALK YOU THROUGH HOW TO MAKE A SIMPLE KILL SCRIPT, SO WE CAN GET YOU WORKING ON MAKING
	COOLER, BETTER SCRIPTS TO CONTRIBUTE TO THE COMMUNITY!
	
	THERE ARE A FEW WAYS WE CAN DO THIS, STARTING WITH THE MOST SIMPLE WAY, AND EVENTUALLY GETTING SLIGHTLY MORE
	COMPLEX. I DO GO OVER SOME WAYS TO KILL PEOPLE IN THIS TUTORIAL, BUT THERE ARE STILL MANY OTHER WAYS!
	
	LET'S BEGIN!
	
--]]

--  game.Players.LocalPlayer -- This only works on LocalScripts, and it will find your name, which is "LocalPlayer"
--  game.Players.NAMEHERE -- This is will get the player that is called "NAMEHERE"
--	game.Players["NAME_HERE"] -- This is the ideal way to find a target player. If a player has numbers in their name, it is possible that the type above will not work!


-- TO MAKE OUR FIRST KILL SCRIPT, WE WILL SIMPLY FIND A PLAYER IN THE WORKSPACE, AND KILL THEM!

game.Players["brack4712"].Character.Humanoid.Health = 0

-- The script above will find "brack4712" in game.Players. It will then proceed to find the character for "brack4712" in the workspace, then take the humanoid, and change the health to 0. Simple, Right?


-- If we want to kill everyone in the game, We must use GetChildren() and a for loop!

local children = game.Players:GetChildren() -- This gets all of the people (children) from Players (parent)

for i,v in pairs(children) do -- For each thing in "children" do this! "children" is what we identified as "local children" above, all the players!
	wait(0) -- It's always good to add a wait, even if it is 0 seconds.
	v.Character.Humanoid.Health = 0 -- Find the character of each player, then each player's humanoid, and set the health to 0.
end


--[[
	
	THERE YOU HAVE IT! Soon you will be a LUA master, ready to make any script you please!
	
	Remember, developing complicated scripts can be difficult, and you are bound to run into some issues when starting out
	or even after doing it for a long time.
	
	Follow these steps if you run into any issues for the best results:
	1. Find the cause of the issue! Open the developer Console using F9 or chatting /console, and look for any errors!
	2. Reference the ROBLOX Wiki for great tutorials on just about any question you may have! (wiki.roblox.com)
	3. If you still can figure out how to get your script to work, ask someone! 2 minds are always better than 1
	
	Good luck, and I hope you make some great scripts in the future!
	
--]]