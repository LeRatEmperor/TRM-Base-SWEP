ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Aromeo-Muz.3"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_dl.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Spread.Base = stat.Spread.Base * 0.7
    stat.Spread.Max = stat.Spread.Max * 0.7
end