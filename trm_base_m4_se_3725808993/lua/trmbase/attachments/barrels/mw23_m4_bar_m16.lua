ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "M16-DEF"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_m16.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 0.94
    stat.Spread.Base = stat.Spread.Base * 0.65
end