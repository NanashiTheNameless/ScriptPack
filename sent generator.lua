function rand() 
nums = {"Once", "Twice", "Thrice"} 
sbjs = {"builderman", "Telamon", "Anaminus", "Clone512", "xLEGOx", "reesemcblox", "Google", "Bob371", "A stick"} 
action = {"kill", "shoot", "blox", "attack", "massacre", "nuke", "eat"} 
past_tense = {"killed", "shot", "bloxxed", "attacked", "massacred", "nuked", "ate", "raped", "licked"} 
actions = {"kills", "floodchecks", "fortifies", "shoots", "bloxxes", "attacks", "massacres", "nukes", "pours", "eats", "finds", "makes", "chases", "stalks", "smells", "sniffs", "throws"} 
ind = {"on a computer", "in a cup", "on pluto", "in space", "at the beach", "on mars", "with a club", "next to a monkey", "with a bat", "on a plate", "with a speaker", "next to a chair", "with an alien", "in a pit", "underground", "underwater", "on a pickle", "on a knife", "next to a truck", "in a grain tower", "at the gym", "on the moon"} 
objs = {"gasoline", "bones", "skunks", "money", "monkeys", "wood", "fish", "water", "apples", "bannanas", "chickens", "astroids", "meteorites", "cakes", "pickles", "soap", "USB Plugs", "TNT", "nitroglycerin", "peripherals"} 
advbs = {"greedily", "evily", "stupidly", "haughtily", "piteously", "annoyingly", "tauntingly", "happily", "angrily", "painfully", "masterfully", "pitifully", "doubtfully", "quickly", "slowly", "awkwardly", "skillfully", "unskillfully", "unhappily", "stealthfully", "sneakily", "undoubtedly", "confidentially", "unconfidentially", "accidentally", "crossly", "gladly", "nearly", "reluctantly", "sternly", "gracefully", "greedily", "nerviously", "inquisitively", "suspiciously"} 
advs = {"blue", "smelly", "rabid", "ugly", "filthy", "red", "yellow", "green", "orange", "angry", "brown", "shiny", "dull", "hairy", "smooth", "dead"} 

a = "acb227" 
b = "shot" 

while true do 

s = math.random(1, 7) 
if s == 1 then 
b = action[1] 
end 
if s == 2 then 
b = action[2] 
end 
if s == 3 then 
b = action[3] 
end 
if s == 4 then 
b = action[4] 
end 
if s == 5 then 
b = action[5] 
end 
if s == 6 then 
b = action[6] 
end 
if s == 7 then 
b = action[7] 
end 

s = math.random(1, 9) 
if s == 1 then 
a = sbjs[1] 
end 
if s == 2 then 
a = sbjs[2] 
end 
if s == 3 then 
a = sbjs[3] 
end 
if s == 4 then 
a = sbjs[4] 
end 
if s == 5 then 
a = sbjs[5] 
end 
if s == 6 then 
a = sbjs[6] 
end 
if s == 7 then 
a = sbjs[7] 
end 
if s == 8 then 
a = sbjs[8] 
end 
if s == 9 then 
a = sbjs[9] 
end 

hint = Instance.new("Hint") 
hint.Parent = workspace 
hint.Text = a.. "" ..b.. ""
wait(3) 
hint:remove() 
end 