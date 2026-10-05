ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "L-14.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_l.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 0.95
    stat.Spread.Base = stat.Spread.Base * 0.8
    stat.Aim.Spread = stat.Aim.Spread * 0.8
end