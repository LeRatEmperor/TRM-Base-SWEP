ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Fast Mag"
ATTACHMENT.Model = Model("models/dqr/bo7/1911/1911_m_f.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "bo7_1911_mag"

function ATTACHMENT:ChangeWeaponStats(stat)

    stat.Animations.Reload = stat.Animations.Reload_Fast
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_Fast
end
