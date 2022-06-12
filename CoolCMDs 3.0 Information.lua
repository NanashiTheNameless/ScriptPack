(Note from Feb 12, 2012: This file is somewhere around two years old.)
 ~ CoolCMDs ~ 
Dynamic, modular chat-triggered commands base. 
Script written by DarkShadow6. 

 ~ Disclaimer ~
Version 3.0 is a PRIVATE BETA to an exclusive group of people, which means if you have this version and you aren't authorized, you probably stole it from ROBLOX's allocated RAM or something similar.
Please note that if I find that you have this, unauthorized, I will hound you like a dog on raw beef and report you to the ROBLOX administrators. (Note from Feb. 12, 2012: I later changed this to shrugging my shoulders, accompanied by a simple "eh")
Did you get this off of a forum post? If so, please report said person to me.

 ~ History of CoolCMDs ~
Version 1 was created somewhere in early 2007, after I had seen my friend BloodyFlame make some for fun.
Back in those days, people weren't removing players left and right, everything was for fun.
Everyone on "Script Builders" were friendly, eager to collaborate together with other scripters, wanting to create and learn Lua. And they weren't total idiots, either.
Anyway, CoolCMDs started to evolve after the remover newbies started falling from the cube-map sky.
Version 2 popped up quite unexpected. I just sat down one day, and said to myself, "I am going to make some commands."
All I wanted to do was script with my friends, but then "pris" were created and more remover newbs showed up.
So, I scripted.
I added a ban list, "antiban", lots of commands both for leisure and power, and finally had at least a miniscule amount of control over the other people stupid enough to mess with me with other random forum commands, forum eyeballs, forum watches, etc.
Version 2 had lots of the commands you see here, except shoved into one big "onChatted" function. Version 2.8, I thought, would be the last version. I lost count of the revisions. It was so broken, messy, and VERY buggy, I could barely stand it.
Now, version 3.0! 3 features dynamic, modular commands. You can just load the command by a function, nothing else is required.
No more tough, confusing scripting to get it to work, just add your function to the end and watch it go.
Version 3 also features "modules", pieces of Lua put into a function. Modules can be loaded and unloaded with a single function, this means the modules can be contolled, so if a module gets out of hand you can easily disable it.
Dynamic groups can be added, also. You can set specific players to a group, giving them access to commands depending on that group's control level.

 ~ More about groups and control ~
Every group and command has a control level attached to it.
When attempting to use a command, it checks your group's control level.
If the control level of your group is higher (or equal to) the control level of the command, then you are permitted to use it.
Simple as that.

 ~ Tips ~
o. Add your name and requested group to the AutoAdmin module (if present).
o. Change the "CoolCMDs.Data.SplitCharacter" variable to whatever you like.
   What it does:
	The "CoolCMDs.Data.SplitCharacter" varible will separate the first command from the rest.
	Lets say it's "/":
		The Command/Argument 1/Argument 2
o. When running the script, rermember to wait wait for the modules to load (if any are present).
o. Upon startup, type in "help" (a default command; if (Changed Feb. 12, 2012 from "it") it isn't there, blame your source) to view a list of commands, modules and groups.

 ~ Adding users to the Auto-Admin module (if present) ~
1. Find the line "CoolCMDs.Functions.CreateModule("Auto-Admin", function()" with a text finder program (ctrl+f in most Windows applications).
2. In the table added below that line, "Self.Players", you can add player's usernames and requested groups.
   Format example:
      Self.Players = {
         "DarkShadow6, superadmin",
         "AnotherGuy, admin",
         "Noob, pguest"
      }

 ~ Porting ~
This command script is quite agile; the only functions that need to be tweaked in order for this script to work with other applications are:
	Pre-checks
		They are ROBLOX-only. Just delete them (same goes for the final end at the very last of the script.).
	CoolCMDs.Functions.CreatePlayerTable
		For a way to catch a player's chat message.
	CoolCMDs.Functions.CreateMessage
		Because this creates Messages and Hints, unique to ROBLOX. Make sure it works, it is used a lot in the source.
	CoolCMDs.Functions.CreateScript
		Uses ROBLOX-only stuff. Just delete it.
	Initialization
		Replace the initialization start time with some type of timestamp in milliseconds.
	CoolCMDs.Functions.LoadModule
		Replace "Workspace.DistributedGameTime" with what I suggested above.
	The final initialization
		Because this looks for the global variables, game, Players, etc. to connect players to the CreatePlayerTable function.
	_G-related objects
		they use ROBLOX-specific objects.
	Note this script was created in the mindset of an object-based system.