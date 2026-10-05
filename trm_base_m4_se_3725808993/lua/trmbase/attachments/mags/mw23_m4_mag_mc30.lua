ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "MC-30.Rd"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/mike4_mag_mc.mdl")
ATTACHMENT.Category = "mw23_m4_mag"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Animations.Reload = stat.Animations.Reload_1
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_1
    stat.IronsightReload = false 
end