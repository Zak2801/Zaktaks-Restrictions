--[[-----------------------------------------------------------------------------
                                By: ZAKTAK
                             	  Config
-------------------------------------------------------------------------------]]

ZaksRestrictions = ZaksRestrictions  or {}

ZaksRestrictions.QMenuModule = true -- Should Q menu restrictions be activated?
ZaksRestrictions.PropSpawnModule = true -- Should console prop spawning restrictions be activated?. Recommended if QMenuModule is set to true.

ZaksRestrictions.Pac3EditorModule = true -- Should PAC3 Editor restrictions be activated?
ZaksRestrictions.Pac3WearModule = true -- Should PAC3 Wearing restrictions be activated?. Recommended if Pac3EditorModule is set to true.
-- ZaksRestrictions.Pac3DelayModule = true -- WIP

ZaksRestrictions.Allowed_Groups = {
	["tmod"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["superadmin"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.PacAllowed = {
	["pacuser"] = true,
	["tmod"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["superadmin"] = true,
--  ["GroupName"] = true,
}