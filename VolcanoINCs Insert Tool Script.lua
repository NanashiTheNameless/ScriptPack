--[[WRITTEN BY VOLCANOINC
TAKING CREDIT FOR THIS WORK WILL RESULT IN SEVERE PUNISHMENT]]

allowedBypassers = {
	"VolcanoINC",
	"SirLollington",
	"viv5",
	"omniblast",
	"bloxboy007",
	"Necatican",
	"Darknesspaladin",
	"sircfenner",
	"Emalliug",
	"digger183",
	"commanderm",
	"samy22",
	"rikunisminion",
	"dartvader6"
}

sets = {}
models = {}
gui = script.Parent.GUI
url = game:GetService("ContentProvider").BaseUrl

filter_on = true

script.Parent.User.Value = game.Players.LocalPlayer

player = nil

url_str = [[Base URL:
 ]] .. url
enter_btn = [[ 
 ]]

current_model = nil
current_clone = nil
cf1 = CFrame.new(0,0,0)
cf2 = CFrame.Angles(0,0,0)
current_x = 0
des_x = 0
set_id = 1
connected_1 = false
connected_2 = false
connected_3 = false
connected_4 = false
connected_5 = false
connected_6 = false
local_v = {}

dragParts = {}
dragPart1 = nil
height = 5
cframe = CFrame.Angles(0,0,0)

selected = false

function findPlayer(crit)
	crit = crit:lower()
	local a = game.Players:children()
	lociN´t = 0
	for b = 1, #a do
		local str = a[b].iN´t:lower()
		if (string.sub(str,1,crit:len()) == crit and a[b]:IsA("Player")) then
			return a[b]
		end
	end
	return nil
end

dangerous = {
	"eyeball",
	"eye ball",
	"admin",
	"omega",
	"power",
	"orb",
	"pandora",
	"nuke",
	"cleaner",
	"r.o.b",
	"insert",
	"nedm",
	"zombie",
	"drone",
	"placesmacker",
	"antiban",
	"anti ban",
	"ragdoll",
	"rag doll",
	"starterpack",
	"starter pack",
	"backpack",
	"back pack",
	"sword script",
	"subspace",
	"sub space",
	"red matter",
	"bomb",
	"jetpack",
	"jet pack",
	"infinity",
	"freeze",
	"hack",
	"virus",
	"hole",
	"pokeball"
}

function updateSets(user)
	local mode = nil
	local categories = {}
	if (tonumber(user) == user) then mode = "id" end
	if (mode == nil) then
		categories = Game:GetService("InsertService"):GetUserCategories(user.userId)
	elseif (mode == "id") then
		local a = tonumber(user)
		if (a == nil) then
			a = game.Players.LocalPlayer.userId
		end
		categories = Game:GetService("InsertService"):GetUserCategories(a)
	end
	for ndx,catinfo in ipairs(categories) do 
		local allow = true
		for k,v in pairs(catinfo) do
			local b = 0
			for b = 1, #sets do
				if (sets[b][1] == "Name" and sets[b][2] == catinfo.Name) then -- If the set is already in the list
					allow = false -- Don't allow the set to be added to the list
				end
			end
		end
		if (allow) then
			table.insert(sets,catinfo)
		end
	end
end

function getModels(set)
	local tab = Game:GetService("InsertService"):GetCollection(set.CategoryId)
	for ndx2,assetinfo in ipairs(tab) do
		local allow = true
		for k,v in pairs(assetinfo) do
			local b = 0
			for b = 1, #models do
				if (models[b][1] == "AssetId" and models[b][2] == assetinfo.AssetId) then -- If the model is already in the list
					allow = false -- Don't allow the model to be added to the list
				end
			end
		end
		if (allow) then
			table.insert(models,assetinfo)
		end
	end
end

function searchModels(set,crit)
	crit = crit:lower()
	local tab = Game:GetService("InsertService"):GetCollection(set.CategoryId)
	for ndx2,assetinfo in ipairs(tab) do
		local allow = false
		if (string.find(assetinfo.Name:lower(),crit)) then allow = true end -- Temporarily set allow to true if the model name contains the search term
		for k,v in pairs(assetinfo) do
			local b = 0
			for b = 1, #models do
				if (models[b][1] == "AssetId" and models[b][2] == assetinfo.AssetId) then -- If the model is already in the list
					allow = false -- Don't allow the model to be added to the list
				end
				--x,y = string.find("omgrofllol","rofl") print(x) print(y) if (x) then print(true) end
			end
		end
		if (allow) then
			table.insert(models,assetinfo)
		end
	end
end

function clearLists()
	local a = gui.Main.Models:children()
	local b = 0
	for b = 1, #a do
		if (a[b].Name ~= "Template") then
			a[b]:remove()
		end
	end
	des_x = 0

	local a = gui.Main.Sets:children()
	local b = 0
	for b = 1, #a do
		if (a[b].Name ~= "Template") then
			a[b]:remove()
		end
	end
	gui.Main.Sets.Position = UDim2.new(0, 0, 0, 0)
end