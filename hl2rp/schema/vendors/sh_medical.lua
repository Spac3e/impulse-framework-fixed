--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/vanilla-hl2rp/schema/vendors/sh_medical.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local VENDOR = {}

VENDOR.UniqueID = "medical"
VENDOR.Name = "CWU Medical Supplier"
VENDOR.Desc = "Can sell medical supplies to the CWU."

VENDOR.Model = "models/player/impulse_zelpa/male_08.mdl"
VENDOR.Skin = 14
VENDOR.Bodygroups = "091"
VENDOR.Gender = "male" -- male, female, cp
VENDOR.Talk = true

VENDOR.Sell = {
	["item_healthkit"] = {
		Cost = 40,
		Max = 3,
		Restricted = true
	},
	["item_splint"] = {
		Cost = 10,
		BuyMax = 4,
		TempCooldown = 600
	},
	["item_cleaver"] = {
		Cost = 50,
		Max = 1,
		Restricted = true
	},
	["cos_surgerymask"] = {
		Max = 1,
		Restricted = true
	},
	["event_pills"] = {
		Restricted = false,
		Cost = 100,
		TempCooldown = 60
	}
}

VENDOR.Buy = {
	["util_humantissues"] = {
		Cost = 5
	}
}

function VENDOR:CanUse(ply)
	return ply:Team() == TEAM_CWU and ply:GetTeamClass() == CLASS_MEDIC
end

impulse.RegisterVendor(VENDOR)
