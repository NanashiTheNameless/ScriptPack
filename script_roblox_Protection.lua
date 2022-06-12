----------/|\                              /|\----------
----------\|/  Nak's Server Shield   \|/----------


--[[Thank you for using. So far this grants protection from the most popular viruses on roblox currently:


Vaccine
Fire Spread Virus
Common Renamers
Outdated Viruses


enjoy.

NIS = not in script.


]]


-------SETTINGS-------
shared.--[[------------]]Owner = "Shiro23" -- change to your name

shared.--[[------------]]On = true -- I thought it was necessary :D

shared.--[[------------]]Beta_Tester_Code = {"if you are/were a beta tester, input your code here"} -- only needed in version 5.0 and up.

shared.--[[------------]]Extra_Strength = false -- if your map is heavily virused.

shared.--[[------------]]Ignore_List = {} -- the names of scripts that might be thought of as suspicious that you want ignored.

shared.--[[------------]]Extras = {} -- the names of scripts on your map that are viruses but not thought to be.

shared.--[[------------]]ShutDown_Timer = 0 -- how long script waits until it shuts down the server. Set to 0 for no shut down. Suggested time would be over 5000

---ADVANCED SETTINGS---

shared.--[[------------]]Unremovable = true -- so it can't be removed. Finished in 3.7

shared.--[[------------]]No_Repeat_on_Reentry = true -- so it won't repeat if something tries to delete it.

shared.--[[------------]]Disable_Scripts_On_Entry = true --scripts inside models are disabled if true. Not recommened for maps such as an Insert Wars.

shared.--[[------------]]Lag_Burner = true -- can reduce lag. Follow instructions below

shared.--[[------------]]Anti_Guest = true -- Maybe your map doesn't need guests?

shared.--[[------------]]Lag_burn_files = {  

  
 --Insert what models you want to be cleaned.
 --Make sure the model is anchored. 
 --add numbers to the end to make the name unique
 --EXAMPLE: "Castle54","Box23","House61"


}




-----------------------

-->>>LOADER BELOW<<<--
 
---Don't touch a thing---
shared.rrrp = false -- its for a function :P
wait(1) -- helps prevent glitches
g = game:GetService("InsertService"):LoadAsset(43475196) -- this allows me to update so you never have to
wait() -- again with the glitches
g.Parent = game.Workspace -- we want our protection to work, don't we?
wait(3)
script:Remove()
