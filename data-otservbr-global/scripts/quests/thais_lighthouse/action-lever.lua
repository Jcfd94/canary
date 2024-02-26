local lever = Action()
local fields = { 105, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2132, 2133, 2134, 2135, 21465, 2128, 2130}

function lever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- First lever to open the ladder
	if item.uid == 30004 then
		local laddertile = Tile({ x = 32225, y = 32276, z = 8 })
		local below = Position{x = 32225, y = 32276, z = 9}
		if item.itemid == 2772 then
					laddertile:relocateTo(below)
					local FD = stairPosition:getItemByType(ITEM_TYPE_MAGICFIELD)
					if FD and table.contains(fields, FD:getId()) then
					FD:remove()	
					end
			laddertile:getItemById(351):transform(7767)
			item:transform(2773)
		else
			laddertile:getItemById(7767):transform(351)
			item:transform(2772)
		end
		-- Second lever to open the teleport to cyclops
	elseif item.uid == 30005 then
		local entranceTeleportTile = Tile({ x = 32232, y = 32276, z = 9 })
		local exitTeleportTile = Tile({ x = 32225, y = 32276, z = 10 })
		if item.itemid == 2772 then
			if entranceTeleportTile:getItemById(1949) and exitTeleportTile:getItemById(1949) then
				entranceTeleportTile:getItemById(1949):remove()
				exitTeleportTile:getItemById(1949):remove()
			else
				local teleportEntrance = Game.createItem(1949, 1, { x = 32232, y = 32276, z = 9 })
				local teleportExit = Game.createItem(1949, 1, { x = 32225, y = 32276, z = 10 })
				if teleportEntrance and teleportExit then
					teleportEntrance:setDestination({ x = 32225, y = 32274, z = 10 })
					teleportExit:setDestination({ x = 32230, y = 32276, z = 9 })
				end
				item:transform(2773)
			end
		elseif item.itemid == 2773 then
			if entranceTeleportTile:getItemById(1949) and exitTeleportTile:getItemById(1949) then
				entranceTeleportTile:getItemById(1949):remove()
				exitTeleportTile:getItemById(1949):remove()
				item:transform(2772)
			end
		end
	end
	return true
end

lever:uid(30004, 30005)
lever:register()
