-- Implement custom logic functions here

-- Custom logic: DistDoubleJump
function DistDoubleJump()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('long_jump') > 0 or Tracker:ProviderCountForCode('dive') > 0 or Tracker:ProviderCountForCode('kick') > 0
end

-- Custom logic: DistDoubleJumpKick
function DistDoubleJumpKick()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('long_jump') > 0 or (Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 and (Tracker:ProviderCountForCode('dive') > 0 or Tracker:ProviderCountForCode('kick') > 0))
end

-- Custom logic: DistKick
function DistKick()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('long_jump') > 0 or Tracker:ProviderCountForCode('dive') > 0 or Tracker:ProviderCountForCode('kick') > 0
end

-- Custom logic: DistLedgeGrab
function DistLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('long_jump') > 0 or Tracker:ProviderCountForCode('dive') > 0 or Tracker:ProviderCountForCode('kick') > 0 or Tracker:ProviderCountForCode('ledge_grab') > 0
end

-- Custom logic: DistLongJump
function DistLongJump()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('long_jump') > 0
end

-- Custom logic: DistLongJumpLedgeGrab
function DistLongJumpLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or (Tracker:ProviderCountForCode('long_jump') > 0 and (Tracker:ProviderCountForCode('ledge_grab') > 0 or Tracker:ProviderCountForCode('wall_kick') > 0))
end

-- Custom logic: DistLongJumpWallKickLedgeGrab
function DistLongJumpWallKickLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or (Tracker:ProviderCountForCode('long_jump') > 0 and Tracker:ProviderCountForCode('ledge_grab') > 0 and Tracker:ProviderCountForCode('wall_kick') > 0)
end

-- Custom logic: DistWallKickLedgeGrab
function DistWallKickLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('long_jump') > 0 or Tracker:ProviderCountForCode('dive') > 0 or Tracker:ProviderCountForCode('kick') > 0 or (Tracker:ProviderCountForCode('ledge_grab') > 0 and Tracker:ProviderCountForCode('wall_kick') > 0)
end

-- Custom logic: GroundBox
function GroundBox()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('progressive_grab') >= 1 or Tracker:ProviderCountForCode('kick') > 0 or Tracker:ProviderCountForCode('ground_pound') > 0
end

-- Custom logic: HeightBackflip
function HeightBackflip()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('side_flip') > 0 or Tracker:ProviderCountForCode('backflip') > 0 or Tracker:ProviderCountForCode('wall_kick') > 0 or (Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 and (Tracker:ProviderCountForCode('kick') > 0 or Tracker:ProviderCountForCode('ledge_grab') > 0))
end

-- Custom logic: HeightDoubleJump
function HeightDoubleJump()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('side_flip') > 0 or Tracker:ProviderCountForCode('backflip') > 0 or Tracker:ProviderCountForCode('wall_kick') > 0
end

-- Custom logic: HeightDoubleJumpLedgeGrab
function HeightDoubleJumpLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or ((Tracker:ProviderCountForCode('side_jump') > 0 or Tracker:ProviderCountForCode('progressive_triple_jump') >= 1) and Tracker:ProviderCountForCode('ledge_grab') > 0) or Tracker:ProviderCountForCode('wall_kick') > 0
end

-- Custom logic: HeightDoubleJumpKick
function HeightDoubleJumpKick()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or ((Tracker:ProviderCountForCode('side_jump') > 0 or Tracker:ProviderCountForCode('progressive_triple_jump') >= 1) and Tracker:ProviderCountForCode('ledge_grab') > 0) or Tracker:ProviderCountForCode('wall_kick') > 0 or (Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 and Tracker:ProviderCountForCode('kick') > 0)
end

-- Custom logic: HeightDoubleJumpWallKick
function HeightDoubleJumpWallKick()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('wall_kick') > 0 and (Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('ledge_grab') > 0 or Tracker:ProviderCountForCode('side_flip'))
end

-- Custom logic: HeightKick
function HeightKick()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('side_flip') > 0 or Tracker:ProviderCountForCode('backflip') > 0 or Tracker:ProviderCountForCode('wall_kick') > 0 or Tracker:ProviderCountForCode('ledge_grab') > 0 or Tracker:ProviderCountForCode('kick') > 0
end

-- Custom logic: HeightLedgeGrab
function HeightLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 or Tracker:ProviderCountForCode('side_flip') > 0 or Tracker:ProviderCountForCode('backflip') > 0 or Tracker:ProviderCountForCode('wall_kick') > 0 or Tracker:ProviderCountForCode('ledge_grab') > 0
end

-- Custom logic: HeightSideFlip
function HeightSideFlip()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('side_flip') > 0 or Tracker:ProviderCountForCode('wall_kick') > 0 or (Tracker:ProviderCountForCode('progressive_triple_jump') >= 1 and (Tracker:ProviderCountForCode('kick') > 0 or Tracker:ProviderCountForCode('ledge_grab') > 0))
end

-- Custom logic: HeightSideFlipLedgeGrab
function HeightSideFlipLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or (Tracker:ProviderCountForCode('side_flip') > 0 and Tracker:ProviderCountForCode('ledge_grab') > 0) or (Tracker:ProviderCountForCode('wall_kick') > 0 and (Tracker:ProviderCountForCode('ledge_grab') > 0 or Tracker:ProviderCountForCode('side_flip') > 0))
end

-- Custom logic: HeightWallKick
function HeightWallKick()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('progressive_triple_jump') >= 2 or Tracker:ProviderCountForCode('wall_kick') > 0 or (Tracker:ProviderCountForCode('side_flip') > 0 and Tracker:ProviderCountForCode('ledge_grab') > 0)
end

-- Custom logic: HeightWallKickLedgeGrab
function HeightWallKickLedgeGrab()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('wall_kick') > 0 and (Tracker:ProviderCountForCode('ledge_grab') > 0 or Tracker:ProviderCountForCode('side_flip'))
end

function HasEternalFortRedStars()
	-- Implement your logic here. Parameters are strings and numbered from left to right.
	return Tracker:ProviderCountForCode('red_star') >= Tracker:ProviderCountForCode('eternal_fort_red_stars')
end

