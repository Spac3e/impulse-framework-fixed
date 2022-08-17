--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/impulse/gamemode/libs/sh_iml.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local config = {
	trues = {
		["yes"] = true,
		["1"] = true,
		["true"] = true,
		["on"] = true
	},
	falses = {
		["no"] = true,
		["0"] = true,
		["false"] = true,
		["off"] = true
	},
	comments = {
		["#"] = true
	},
	strings = {
		[""] = true
	}
}

function IMLRead(data)
	local lines = string.Split(data, "\n")

	for v,k in pairs(lines) do
		local sub = string.Split(k, " ")

		if not sub[1] or not sub[2] then
			continue
		end
		
		return
	end
end