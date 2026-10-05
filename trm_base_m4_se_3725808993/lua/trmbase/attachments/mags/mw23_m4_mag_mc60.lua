ATTACHMENT.Base = "mw23_m4_mag_60"
ATTACHMENT.Name = "MC-60.Rd"
ATTACHMENT.Category = "mw23_m4_mag"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.ClipSize = 60
    stat.Aim.Time = stat.Aim.Time * 1.05
    stat.Animations.Reload = stat.Animations.Reload_Dmag_1
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_Dmag_1
    stat.IronsightReload = false 

end