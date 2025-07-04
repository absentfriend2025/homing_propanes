local nxml = dofile_once("mods/homing_propanes/files/lib/nxml.lua")

---@param file_path string
function AddHomingToPropane(file_path)
  local content = ModTextFileGetContent(file_path)
  local xml = nxml.parse(content)

  for _, child in ipairs(xml.children) do
    if child.name == "LuaComponent" and child.attr.script_damage_received == "mods/homing_propanes/files/scripts/damage_received.lua" then
      return -- do nothing if it already has damage received script
    end
  end

  local lc = nxml.new_element("LuaComponent", {
    script_damage_received = "mods/homing_propanes/files/scripts/damage_received.lua",
    remove_after_executed = "1"
  })
  xml:add_child(lc)

  ModTextFileSetContent(file_path, tostring(xml))
end