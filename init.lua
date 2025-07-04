
dofile_once("mods/homing_propanes/files/utils/utilities.lua")

-- Vanilla propane tank
AddHomingToPropane("data/entities/props/physics_propane_tank.xml")

-- Chemical Curiosities
if ModIsEnabled("Hydroxide") then
  local propanes = {"mods/Hydroxide/files/chemical_curiosities/props/physics_methane_tank.xml",
  "mods/Hydroxide/files/arcane_alchemy/props/physics_bloomium_tank.xml",}

  for i = 1, #propanes do
    AddHomingToPropane(propanes[i])
  end
end

-- Fluid Dynamics
if ModIsEnabled("fluid_dynamics") then
  local propanes = {"mods/fluid_dynamics/files/entities/props/physics_acceleratium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_berserkium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_draft_of_midas_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_flummoxium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_hastium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_invisiblium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_levitatium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_pheromone_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_polymorphine_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_teleportatium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_unstable_teleportatium_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_unstable_polymorphine_tank.xml",
  "mods/fluid_dynamics/files/entities/props/physics_worm_pheromone_tank.xml",}

  for i = 1, #propanes do
    AddHomingToPropane(propanes[i])
  end
end
