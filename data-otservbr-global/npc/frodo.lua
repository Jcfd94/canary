local internalNpcName = "Frodo"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 58,
	lookBody = 68,
	lookLegs = 109,
	lookFeet = 115,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Come into my tavern and share some stories!" },
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

-- Basic
keywordHandler:addKeyword({ "hut" }, StdModule.say, { npcHandler = npcHandler, text = "I hope you like it. Would you like some {food}?" })
keywordHandler:addKeyword({ "job" }, StdModule.say, { npcHandler = npcHandler, text = "I am the owner of this saloon. I call it Frodo's Hut. I am also {selling} food." })
keywordHandler:addAliasKeyword({ "saloon" })
keywordHandler:addKeyword({ "food" }, StdModule.say, { npcHandler = npcHandler, text = "I can offer you bread, cheese, ham, or meat. If you'd like to see my offers, ask me for a trade." })
keywordHandler:addKeyword({ "news" }, StdModule.say, { npcHandler = npcHandler, text = "Some travelers from Edron told about a great treasure guarded by cruel demons in the dungeons there." })
keywordHandler:addKeyword({ "king" }, StdModule.say, { npcHandler = npcHandler, text = "Oh, our beloved king! Thanks to him, alcohol is so cheap." })
keywordHandler:addAliasKeyword({ "tibianus" })
keywordHandler:addKeyword({ "general" }, StdModule.say, { npcHandler = npcHandler, text = "Harkath Bloodblade is the royal general." })
keywordHandler:addKeyword({ "army" }, StdModule.say, { npcHandler = npcHandler, text = "Hehe. Great customers." })
keywordHandler:addKeyword({ "name" }, StdModule.say, { npcHandler = npcHandler, text = "Just call me Frodo." })
keywordHandler:addKeyword({ "time" }, StdModule.say, { npcHandler = npcHandler, text = "It is exactly |TIME|." })
keywordHandler:addKeyword({ "dungeons" }, StdModule.say, { npcHandler = npcHandler, text = "Ah yes, the graveyard dungeon. All I know is this riddle: His Grave to the south, the tree above, his soul in the shade. No idea what that means, though!" })
keywordHandler:addAliasKeyword({ "graveyard" })
keywordHandler:addKeyword({ "riddle" }, StdModule.say, { npcHandler = npcHandler, text = " I heard it when I was a child." })
keywordHandler:addKeyword({ "one eyed stranger" }, StdModule.say, { npcHandler = npcHandler, text = "Yes, I remember him. His name was Berfasmur." })
keywordHandler:addKeyword({ "berfasmur" }, StdModule.say, { npcHandler = npcHandler, text = "Sorry, he spoke only very little. I know nothing more about him." })
keywordHandler:addKeyword({ "tibia" }, StdModule.say, { npcHandler = npcHandler, text = "Come on! You know that our world is called Tibia." })
keywordHandler:addKeyword({ "excalibug" }, StdModule.say, { npcHandler = npcHandler, text = "Nothing more than a tale for warriors." })
keywordHandler:addKeyword({ "ferumbras" }, StdModule.say, { npcHandler = npcHandler, text = "Uhm, do not mention him. It may scare customers away." })
keywordHandler:addKeyword({ "cropwell" }, StdModule.say, { npcHandler = npcHandler, text = "No idea who that is, but maybe you'll find something in the Royal Archives..." })
keywordHandler:addKeyword({ "royal archives" }, StdModule.say, { npcHandler = npcHandler, text = "Oh, the Royal Archives are in Rain Castle!" })
keywordHandler:addKeyword({ "rain castle" }, StdModule.say, { npcHandler = npcHandler, text = "The king's residence has been renovated lately." })
keywordHandler:addKeyword({ "carlin" }, StdModule.say, { npcHandler = npcHandler, text = "Many travellers tell funny stories about all the emancipated women in this northern town." })
keywordHandler:addKeyword({ "thais" }, StdModule.say, { npcHandler = npcHandler, text = "Here in Thais is the center of Tibia." })
keywordHandler:addKeyword({ "donald" }, StdModule.say, { npcHandler = npcHandler, text = "He is a little shy. In his youth he dreamed to become a druid." })
keywordHandler:addKeyword({ "baxter" }, StdModule.say, { npcHandler = npcHandler, text = "He's able to drink a bottle or two." })
keywordHandler:addKeyword({ "bozo" }, StdModule.say, { npcHandler = npcHandler, text = "I am trying to hire him for an evening or two." })
keywordHandler:addKeyword({ "eclesius" }, StdModule.say, { npcHandler = npcHandler, text = "Oh, that old guy! He's a good customer, that's for sure." })
keywordHandler:addKeyword({ "elane" }, StdModule.say, { npcHandler = npcHandler, text = "Can you believe that she actually told her guildfellows that alcohol is a bad thing?" })
keywordHandler:addKeyword({ "galuna" }, StdModule.say, { npcHandler = npcHandler, text = "She makes excellent arrows and bows." })
keywordHandler:addKeyword({ "gorn" }, StdModule.say, { npcHandler = npcHandler, text = "Many of his customers visit my Hut, too." })
keywordHandler:addKeyword({ "gregor" }, StdModule.say, { npcHandler = npcHandler, text = "The knights have sometimes parties here after some arena fights." })
keywordHandler:addKeyword({ "harkath bloodblade" }, StdModule.say, { npcHandler = npcHandler, text = "Too disciplined to enjoy life." })
keywordHandler:addKeyword({ "hugo" }, StdModule.say, { npcHandler = npcHandler, text = "I think some time ago a stranger from Fibula with that name stayed here for some nights." })
keywordHandler:addKeyword({ "lugri" }, StdModule.say, { npcHandler = npcHandler, text = "I overheard some conversations about his evilness. That's enough to hope, that I never ever meet him." })
keywordHandler:addKeyword({ "lungelen" }, StdModule.say, { npcHandler = npcHandler, text = "A sorceress, you can find her in their guild sitting befor a book - always!" })
keywordHandler:addKeyword({ "lynda" }, StdModule.say, { npcHandler = npcHandler, text = "Just between you and me: What a babe!" })
keywordHandler:addKeyword({ "marvik" }, StdModule.say, { npcHandler = npcHandler, text = "Marvik seldom leaves his guildhall at all." })
keywordHandler:addKeyword({ "mcronald" }, StdModule.say, { npcHandler = npcHandler, text = "The McRonalds are a nice couple. Donald is a dear friend of mine." })
keywordHandler:addAliasKeyword({ "sherry" })
keywordHandler:addKeyword({ "muriel" }, StdModule.say, { npcHandler = npcHandler, text = "Muriel has never visited this place." })
keywordHandler:addKeyword({ "oswald" }, StdModule.say, { npcHandler = npcHandler, text = "I hate him. Each of his visits here ends with a bar brawl." })
keywordHandler:addKeyword({ "quentin" }, StdModule.say, { npcHandler = npcHandler, text = "He hardly visits my humble tavern." })
keywordHandler:addKeyword({ "samuel" }, StdModule.say, { npcHandler = npcHandler, text = "A loud neighbour, I get a lot of complaints about him." })
keywordHandler:addKeyword({ "todd" }, StdModule.say, { npcHandler = npcHandler, text = "That fellow is filthy rich. He rented a room upstairs for months in advance and always orders the best beer and wine i serve." })
keywordHandler:addKeyword({ "xodet" }, StdModule.say, { npcHandler = npcHandler, text = "I don't know where he gets these fluids. If I could sell them here, the hut would be crowded." })

npcHandler:setMessage(MESSAGE_GREET, "Welcome to Frodo's Hut. You heard about the {news}?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Please come back from time to time.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Please come back from time to time.")

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "bread", clientId = 3600, buy = 4 },
	{ itemName = "cheese", clientId = 3607, buy = 6 },
	{ itemName = "ham", clientId = 3582, buy = 8 },
	{ itemName = "meat", clientId = 3577, buy = 5 },
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_LOOK, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
