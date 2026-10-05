ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Tac"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_s_t.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_stock"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 1.05
    stat.Spread.Increase = stat.Spread.Increase * 0.95
end