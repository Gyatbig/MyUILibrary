-- Rayfield UI: Seed Notifier by Tier
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
	Name = "Seed Stock Notifier",
	LoadingTitle = "Grow a Garden Notifier",
	LoadingSubtitle = "Rarity-based alert system",
	ConfigurationSaving = {
		Enabled = false
	},
	Discord = {
		Enabled = false
	},
	KeySystem = false
})

local Tab = Window:CreateTab("Notifier", 4483362458)

-- Toggle + Dropdown values
local NotifyEnabled = true
local SelectedTier = "Common"

-- Dropdown: Tier Selector
Tab:CreateDropdown({
	Name = "Seed Tier",
	Options = {"Common", "Uncommon", "Rare", "Legendary", "Mythical", "Divine", "Prismatic"},
	CurrentOption = "Common",
	Callback = function(option)
		SelectedTier = option
	end
})

-- Toggle: Notification enable
Tab:CreateToggle({
	Name = "Enable Notifications",
	CurrentValue = true,
	Callback = function(value)
		NotifyEnabled = value
	end
})

-- Seed tier mapping (from your screenshot)
local SeedTiers = {
	Common = {"Carrot", "Strawberry"},
	Uncommon = {"Blueberry", "Orange Tulip"},
	Rare = {"Tomato", "Corn", "Daffodil"},
	Legendary = {"Watermelon", "Pumpkin", "Apple", "Bamboo"},
	Mythical = {"Coconut", "Cactus", "Dragon Fruit", "Mango"},
	Divine = {"Grape", "Mushroom", "Pepper", "Cacao"},
	Prismatic = {"Beanstalk", "Ember Lily", "Sugar Apple", "Burning Bud", "Giant Pinecone"}
}

-- Convert tier list to lookup
local function toLookup(list)
	local t = {}
	for _, v in ipairs(list) do t[v] = true end
	return t
end

-- Stock memory
local lastStock = {}

-- Connection to stock updates
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local DataStream = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("DataStream")

DataStream.OnClientEvent:Connect(function(eventType, profile, data)
	if eventType ~= "UpdateData" then return end
	if not profile:find(Player.Name) then return end
	if not NotifyEnabled then return end

	local seedFilter = toLookup(SeedTiers[SelectedTier] or {})

	for _, packet in pairs(data) do
		local name, content = packet[1], packet[2]

		if name == "ROOT/SeedStock/Stocks" and typeof(content) == "table" then
			for seed, info in pairs(content) do
				if seedFilter[seed] and typeof(info) == "table" and typeof(info.Stock) == "number" then
					if lastStock[seed] ~= info.Stock then
						lastStock[seed] = info.Stock
						Rayfield:Notify({
							Title = SelectedTier .. " Seed Stock!",
							Content = seed .. " is now x" .. info.Stock,
							Duration = 5
						})
					end
				end
			end
		end
	end
end)

-- Startup confirmation
Rayfield:Notify({
	Title = "Notifier Loaded",
	Content = "Watching tier: Common",
	Duration = 5
})
