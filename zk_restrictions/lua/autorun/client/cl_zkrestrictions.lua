--[[-----------------------------------------------------------------------------
                                By: ZAKTAK
                             Do Not Edit Below
-------------------------------------------------------------------------------]]

if CLIENT then
	include("autorun/sh_zkrconfig.lua")
end

ZaksRestrictions = ZaksRestrictions  or {}


hook.Add("SpawnMenuOpen", "ZK_Q_Menu_For_Allowed_Hook", function(ply) -- Q Menu Opening
	local ply = LocalPlayer()
	if (ZaksRestrictions.QMenuModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		chat.AddText( Color( 225, 0, 0 ), "You're not allowed to use Q menu.")
		return false
	end
end)


hook.Add("PrePACEditorOpen", "ZK_Restrict_PAC", function(ply) -- PAC3 Editor Opening
	local ply = LocalPlayer()
	if (ZaksRestrictions.Pac3EditorModule == false) then return end
	local Groups = ZaksRestrictions.PacAllowed[ply:GetUserGroup()]
	if not Groups then
		chat.AddText( Color( 225, 0, 0 ), "You're not allowed to use PAC3.")
		return false
	end
end)