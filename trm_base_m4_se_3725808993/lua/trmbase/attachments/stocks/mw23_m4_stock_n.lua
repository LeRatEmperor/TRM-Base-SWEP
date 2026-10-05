ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "No Stock"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_s_n.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_stock"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 1.12
    stat.Aim.Time = stat.Aim.Time * 0.88
end