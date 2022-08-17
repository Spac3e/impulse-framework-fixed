--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/impulse/entities/entities/impulse_vendor/shared.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

ENT.Type = "anim"
ENT.PrintName = "Vendor Base"
ENT.Author = "vin"
ENT.Category = "impulse"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.HUDName = "Unset Vendor"
ENT.HUDDesc = "This vendor has no VendorType set. Use the key/value save system to set 'vendor' to the string ID of the vendor. Then reload me."

function ENT:SetupDataTables()
	self:NetworkVar("String", 0, "Vendor")
	self:NetworkVar("String", 1, "IdleSequence")
end

function ENT:DoAnimation(custom)
	if custom and custom != "" then
		return self:ResetSequence(custom)
	end

	for k,v in ipairs(self:GetSequenceList()) do
		if (v:lower():find("idle") and v != "idlenoise") then
			return self:ResetSequence(k)
		end
	end

	self:ResetSequence(4)
end