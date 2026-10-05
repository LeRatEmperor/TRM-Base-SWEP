ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "M16"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_s_m16.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_stock"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 0.85
end