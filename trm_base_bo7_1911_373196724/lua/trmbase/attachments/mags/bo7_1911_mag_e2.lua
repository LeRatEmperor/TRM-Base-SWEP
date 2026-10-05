ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "15.rd"
ATTACHMENT.Model = Model("models/dqr/bo7/1911/1911_m_e2.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "bo7_1911_mag"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.ClipSize = 15

    stat.Animations.Reload = stat.Animations.Reload_XmagLrg
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_XmagLrg
end
