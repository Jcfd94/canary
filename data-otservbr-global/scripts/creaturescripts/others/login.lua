local playerLogin = CreatureEvent("PlayerLogin")

function playerLogin.onLogin(player)
	if isPremium(player) then
		player:setStorageValue(Storage.PremiumAccount, 1)
	end

	-- Premium Ends Teleport to Temple, change addon (citizen) houseless
	local defaultTown = "Thais" -- default town where player is teleported if his home town is in premium area
	local freeTowns = { "Ab'Dendriel", "Carlin", "Kazordoon", "Thais", "Venore", "Rookgaard", "Dawnport", "Dawnport Tutorial", "Island of Destiny" } -- towns in free account area
	if isPremium(player) == false and table.contains(freeTowns, player:getTown():getName()) == false then
		local town = player:getTown()
		local sex = player:getSex()
		local home = getHouseByPlayerGUID(getPlayerGUID(player))
		town = table.contains(freeTowns, town:getName()) and town or Town(defaultTown)
		player:teleportTo(town:getTemplePosition())
		player:setTown(town)
		player:sendTextMessage(MESSAGE_FAILURE, "Your premium time has expired.")
		player:setStorageValue(Storage.PremiumAccount, 0)

		if sex == 1 then
			player:setOutfit({ lookType = 128, lookFeet = 114, lookLegs = 134, lookHead = 114, lookAddons = 0 })
		elseif sex == 0 then
			player:setOutfit({ lookType = 136, lookFeet = 114, lookLegs = 134, lookHead = 114, lookAddons = 0 })
		end

		if home ~= nil and not isPremium(player) then
			setHouseOwner(home, 0)
			player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT, "You've lost your house because you are not premium anymore.")
			player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT, "Your items from house are send to your inbox.")
		end
	end
	-- End 'Premium Ends Teleport to Temple'

	-- Open channels
	if table.contains({ TOWNS_LIST.DAWNPORT, TOWNS_LIST.DAWNPORT_TUTORIAL }, player:getTown():getId()) then
		player:openChannel(3) -- World chat
	else
		player:openChannel(3) -- World chat
		player:openChannel(5) -- Advertsing main
	end
	return true
end

playerLogin:register()
