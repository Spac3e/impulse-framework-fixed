--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/vanilla-hl2rp/schema/vendors/sh_rebelreq.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local VENDOR = {}

VENDOR.UniqueID = "rebelreq"
VENDOR.Name = "Rebel Requisitions"
VENDOR.Desc = "Buy starter items for rebelling here! Only players with less than 1500XP can use this."

VENDOR.Model = "models/player/impulse_zelpa/male_07.mdl"
VENDOR.Skin = 14
VENDOR.Bodygroups = "063210"
VENDOR.Gender = "male" -- male, female, cp
VENDOR.Talk = true

VENDOR.Sell = {
	["wep_axe"] = {
		Cost = 100
	},
	["wep_pistol"] = {
		Cost = 200,
		BuyMax = 1,
		TempCooldown = 1800	
	},
	["wep_improvsmg"] = {
		Cost = 500,
		BuyMax = 1,
		TempCooldown = 3600	
	}
}

function VENDOR:CanUse(ply)
	if ply:IsCP() then
		return false
	end
	if ply:GetXP() >= 1500 then
		return false
	end
end

impulse.RegisterVendor(VENDOR)