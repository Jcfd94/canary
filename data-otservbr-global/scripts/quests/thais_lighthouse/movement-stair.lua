
local stair = MoveEvent()
stair:type("stepin")

local stairPosition = Position{x = 32225, y = 32282, z = 9}
local below = Position{x = 32225, y = 32283, z = 10}

function stair.onStepIn(creature, item, position, fromPosition)
	-- Create stairs
	if item.uid == 25010 then
		local stairsItem = Tile(stairPosition):getItemById(429)
		if stairsItem then
				stairPosition:relocateTo(below)
					local FD = Tile(stairPosition):getItemByType(ITEM_TYPE_MAGICFIELD)
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
