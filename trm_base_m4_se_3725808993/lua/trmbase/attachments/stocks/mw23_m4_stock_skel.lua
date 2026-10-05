ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Skel"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_s_skel.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_stock"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 1.15
    stat.Spread.Base = stat.Spread.Base * 1.1
    stat.Spread.Max = stat.Spread.Max * 0.85
end