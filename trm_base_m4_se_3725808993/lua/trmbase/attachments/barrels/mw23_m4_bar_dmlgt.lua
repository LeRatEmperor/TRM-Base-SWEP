ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "DLGT-10.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_dmlgt.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Spread.Max = stat.Spread.Max * 0.9
end