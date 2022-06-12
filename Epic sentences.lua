subs = {"chair", "bed", "thing", "table", "car", "human", "woman", "man", "dog", "cat", "Josh", "acb", "ScriptzMania", "XLua", "linerider64", "Fenrier", "street", "seat"}
verbs = {"kills", "sits", "be", "does", "fishs", "eats", "digs", "sleeps", "runs", "swims", "walks", "jumps", "dies", "lives"}
adjs = {"ugly", "nice", "beautiful", "weird", "cool", "epic", "hard", "soft", "fail", "awesome", "fuzzy", "funny"}
ont = {"on top of a", "behind a", "on front of a", "next to a"}

str = ""
for i=1, 2 do
	str = str..subs[math.random(1,#subs)].." "
	str = str..verbs[math.random(1,#verbs)].." "
	str = str.."a "..adjs[math.random(1,#adjs)].." "
	str = str..subs[math.random(1,#subs)].." "
	str = str..ont[math.random(1,#ont)].." "
	str = str..subs[math.random(1,#subs)]..".   "
end

local msg = Instance.new("Message",workspace)
msg.Text = str
wait(10)
msg:remove()
