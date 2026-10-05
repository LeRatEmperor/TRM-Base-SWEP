ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "10.rd"
ATTACHMENT.Model = Model("models/dqr/bo7/1911/1911_m_e1.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "bo7_1911_mag"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.ClipSize = 10

    stat.Animations.Reload = stat.Animations.Reload_Xmag
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_Xmag
end
