---@diagnostic disable: lowercase-global

function damage_received(damage)
  local propane = GetUpdatedEntityID()
  if damage then
    EntityAddComponent2(propane, "LuaComponent", {
      script_source_file = "mods/homing_propanes/files/scripts/homing.lua",
      execute_every_n_frame = 3,
    })
  end
end
