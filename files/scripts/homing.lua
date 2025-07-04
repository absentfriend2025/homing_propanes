local explode_near_player = ModSettingGet("homing_propanes.explode_near_player")

local propane = GetUpdatedEntityID()
local x, y = EntityGetTransform(propane)

-- TY @Lamia @ Noita Discord server for helping me figure out multiplayer compat with Entangled Worlds
local search_tag = ModIsEnabled("quant.ew") and "ew_peer" or "player_unit"
local target = EntityGetClosestWithTag(x, y, search_tag)
local target_x, target_y = EntityGetTransform(target)

local dx = target_x - x
local dy = target_y - y
local dist = math.sqrt(dx * dx + dy * dy)
if dist > 0 then
  dx = dx / dist
  dy = dy / dist
end

local force = 50
if dist > 300 then
  force = 200
elseif dist > 175 then
  force = 150
elseif dist > 100 then
  force = 100
elseif dist > 75 then
  force = 50
end

if explode_near_player and dist <= 25 then
  EntityInflictDamage(propane, 4, "DAMAGE_PROJECTILE", "damage", "NONE", 0, 0) -- cant just entitykill the propane sadly :(
end

PhysicsApplyForce(propane, dx * force, dy * force)
