ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "20.Rd"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_m_f.mdl")
ATTACHMENT.Category = "mw23_m4_mag"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.ClipSize = 20
    stat.Aim.Time = stat.Aim.Time * 0.97
    stat.Animations.Reload = stat.Animations.Reload_Smag
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_Smag

    stat.Animations.Inspect = stat.Animations.Inspect_Smag
    stat.Animations.Inspect_Empty = stat.Animations.Inspect_Empty_Smag


end