--[[ FREE SCRIPT HERE FREE SCRIPT HERE
FREE SCRIPT HERE FREE SCRIPT HERE
FREE SCRIPT HERE FREE SCRIPT HERE
]]

Songs = {
Winter_Wrap_Up = {0.067, [[
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic

come lets worship him
and worship him 
kiss his feet, mend his robes
feed his cats, and kill his ponys

Soul is really epic
 yes really epic
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic

Everyday he is here
trying to help us 
he will be a great king
so now everyone 

Soul is really epic
 yes really epic
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic
Soul is really epic
 yes really epic

song brought to you by: acb227 :P
]]},


Art_of_the_Dress = {0.054, [[
Soul is werid
really really weird
he is a great friend
aswell as a great scripter
so peice by peice we will worship him
yah yah yah yah

Soul is werid
really really weird
he is a great friend
aswell as a great scripter
so peice by peice we will worship him
yah yah yah yah

Soul is werid
really really weird
he is a great friend
aswell as a great scripter
so peice by peice we will worship him
yah yah yah yah

song brought to you by: acb227 :P
]]}
}


Hint = Instance.new("Hint", workspace.acb227)
Hint.Name = "Lol."

Show = 90

function Play(Song)
local Text = Song[2]:gsub(string.char(10), " ")
local tiem = 0

for i = 0, #Text+Show, 1 do
    local a = i-Show
    if a < 1 then a = 1 end
    Hint.Text = Text:sub(a, i)
    tiem = tiem + wait(Song[1])
end
Hint.Text = tiem
end

Play(Songs.Art_of_the_Dress) --lego


