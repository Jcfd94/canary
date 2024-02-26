local stair = MoveEvent()
stair:type("stepin")

local fields = { 105, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2132, 2133, 2134, 2135, 21465, 2128, 2130}
local stairPosition = Position{x = 32225, y = 32282, z = 9}
local below = Position{x = 32225, y = 32283, z = 10}

function stair.onStepIn(creature, item, position, fromPosition)
	-- Create stairs
	if item.uid == 25010 then
		local stairsItem = Tile(stairPosition):getItemById(429)
		if stairsItem then
				stairPosition:relocateTo(below)
					local FD = stairPosition:getItemByType(ITEM_TYPE_MAGICFIELD)
					if FD and table.contains(fields, FD:getId()) then
					FD:remove()	
					end
			stairsItem:transform(7767)
		end
		item:transform(430)
	end
	return true
end

stair:uid(25010)
stair:register()

stair = MoveEvent()
stair:type("stepout")

function stair.onStepOut(creature, item, position, fromPosition)
	local stairsItem = Tile(stairPosition):getItemById(7767)
	if stairsItem then
		stairsItem:transform(429)
	end

	item:transform(431)
	return true
end

stair:uid(25010)
stair:register()
