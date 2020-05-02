--[[-----------------------------------------------------------------------------
                                By: ZAKTAK
                             Do Not Edit Below
-------------------------------------------------------------------------------]]
if SERVER then
	include("autorun/sh_zkrconfig.lua")
end

ZaksRestrictions = ZaksRestrictions  or {}

local delay = 0




hook.Add("PlayerSpawnProp", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "You're not allowed to spawn props." )
		return false
	end
end)




hook.Add("PrePACConfigApply", "ZK_Restrict_PAC_Apply", function(ply) -- PAC3 Wear
	if (ZaksRestrictions.Pac3WearModule == false) then return end
	local Groups = ZaksRestrictions.PacAllowed[ply:GetUserGroup()]
	if not Groups then
		return false,"You're not allowed to use PAC3."
	end
end)




print("")
print("//////////////////////////////////")
print("   Zaktak Restrictions Running!")
print("//////////////////////////////////")
print("")