--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/impulse/entities/entities/impulse_vendor/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

ENT.AutomaticFrameAdvance = true
function ENT:Initialize()
	self:DoAnimation(self:GetIdleSequence())
end

function ENT:Think()
	if ((self.nextAnimCheck or 0) < CurTime()) then
		self:DoAnimation(self:GetIdleSequence())
		self.nextAnimCheck = CurTime() + 25
	end

	local vendor = self:GetVendor()

	if vendor != self.curVendor and impulse.Vendor.Data[vendor] then
		self.Vendor = impulse.Vendor.Data[vendor]
		self.HUDName = self.Vendor.Name
		self.HUDDesc = self.Vendor.Desc

		self.curVendor = vendor
	end

	self:SetNextClientThink(CurTime() + 0.25)

	return true
end