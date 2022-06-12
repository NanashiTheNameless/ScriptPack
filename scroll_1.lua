Songs = {
Winter_Wrap_Up = {0.067, [[
Three months of winter coolness, and awesome holidays.
We've kept our hoofsies warm at home, time off from work to play.
But the food we've stored is running out, and we can't grow in this cold.
And even though I love my boots, this fashion's getting old.

The time has come to welcome spring, and all things warm and green.
But it's also time to say goodbye, it's winter we must clean.
How can I help, I'm new you see.
What does everypony do?
How do I fit in without magic?
I haven't got a clue!

Winter wrap up, winter wrap up!
Let's finish our holiday cheer!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
'Cause tomorrow spring is here.

Bringing home the southern birds, a pegasus' job begins.
And clearing all the gloomy skies, to let the sun shine in.
We move the clouds, and we melt the white snow!
When the sun comes up, its warmth and beauty will glow!

Winter wrap up, winter wrap up!
Let's finish our holiday cheer!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
'Cause tomorrow spring is here.

Little critters hibernate, under the snow and ice.
We wake up all the sleepyheads, so quietly and nice.
We help them gather up their food, fix their homes below!
We welcome back the southern birds, so their families can grow!

Winter wrap up, winter wrap up!
Let's finish our holiday cheer!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
'Cause tomorrow spring is here.

No easy task to clear the ground, plant our tiny seeds.
With proper care and sunshine, everyone it feeds.
Apples, carrots, celery stalks, colorful flowers too.
We must work so very hard, it's just so much to do!

Winter wrap up, winter wrap up!
Let's finish our holiday cheer!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
'Cause tomorrow spring is here.

Now that I know what they all do, I have to find my place!
And help with all of my heart, tough task ahead I face.
How will I do without my magic, help the earth pony way?
I wanna belong so I must do my best today!
Do my best today!

Winter wrap up, winter wrap up!
Let's finish our holiday cheer!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
Winter wrap up, winter wrap up!
'Cause tomorrow spring is here!
'Cause tomorrow spring is here!
'Cause tomorrow spring is hereeeeeeee!
]]},


Art_of_the_Dress = {0.054, [[
Thread by thread, stitching it together.
Twilight's dress, cutting out a pattern snip by snip.
Making sure the fabric folds nicely.
It's the perfect color and so hip.
Always got to keep in mind my pacing.
Making sure the cloth's correctly facing.
I'm stitching Twilight's dress!
                            
Yard by yard, fussing on the details.
Jewel neckline. Don't you know a stitch in time saves nine?
Make her something perfect to inspire.
Even though she hates formal attire.
Got to mind those intimate details,
Even though she's more concerned with sales.
It's Applejack's new dress!
                               
Dress making's easy.
For Pinkie Pie something pink.
Fluttershy something breezy.
Blend color and form, do you think it looks cheesy?
               
Something brash, perhaps quite fetching.
Hook and eye, couldn't you just simply DIE!
Making sure it fits forelock and crest.
Don't forget the magic in the dress.
Even though it rides high on the flank.
Rainbow won't look like a tank.
I'm stitching Rainbow's dress!
                        
Piece by piece, snip by snip.
Croup, dock, haunch, shoulders, hip.
Thread by thread, primmed and pressed
Yard by yard, never stress
And that's the art of the dress
                       
Now, the stars on my belt need to be technically accurate.
Orion has three stars on his belt, not four
Stitch by stitch, stitching it together
Deadline looms, don't you know the client's always right
Even if my fabric choice was perfect
Gotta get them all done by tonight
Pinkie Pie, the color is too obtrusive
Wait until you see it in the light
I'm sewing them together
                
Don't you think my gown would be more me with some lollipops?
Well, I think...
Balloons?
Well...
Do it!
Hour by hour, one more change
I'm sewing them together, take great pains
         
Fluttershy, you're putting me in a bind
Rainbowdash, what is on your mind
Oh my gosh, there's simply not much time
Don't forget, Applejack's duds must shine
            
Dressmaking's easy
Every customer's call
Brings a whole new revision
Have to pick up the pace, still hold to my vision
                
That constellation is Canis Major, not Minor.
French haute couture, please.
Eeeh...
What if it rains? Galoshes!
More balloons! Oh no, that's too many balloons.
More candy! Oh, less candy.
Oh wait, I know! Streamers!
Streamers?
Whose dress is this?
Streamers it is.
What?
Aren't you going to tell me to change something too?
No, I just want my dress to be cool.
Do you not like the color?
The color's fine, just make it look cooler.
Do you not like the shape?
The shape's fine, just make the whole thing, you know, cooler.
It needs to be about 20% cooler.

All we ever want is indecision
All we really like is what we know
Gotta balance style with adherence
Making sure we make a good appearance
Even if you simply have to fudge it
Make sure that it stays within our budget
Got to overcome intimidation
Remember it's all in the presentation

Piece by piece, snip by snip
Croup, dock, haunch, shoulders, hip
Bolt by bolt, primmed and pressed
Yard by yard, always stressed
And that's the art of the dress!
]]}
}


Hint = Instance.new("Hint", script)
Hint.Name = "Lol."
Hint.Changed:connect(function() Hint.Parent = workspace end)

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

Play(Songs.Winter_Wrap_Up)
