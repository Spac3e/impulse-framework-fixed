--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/vanilla-hl2rp/schema/vendors/sh_dev.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local VENDOR = {}

VENDOR.UniqueID = "dev"
VENDOR.Name = "Development Assistant"
VENDOR.Desc = ""

VENDOR.Model = "models/Humans/Group02/Female_04.mdl"
VENDOR.Skin = 0
VENDOR.Gender = "female"
VENDOR.Talk = true

VENDOR.Sell = {
	["util_spices"] = {
		Cost = 0,
	},
    ["util_yeast"] = {
    	Cost = 0,
    },
    ["food_watersparkling"] = {
    	Cost = 0,
    }
}


function VENDOR:CanUse(ply)
    return ply:IsSuperAdmin()
end

impulse.RegisterVendor(VENDOR)