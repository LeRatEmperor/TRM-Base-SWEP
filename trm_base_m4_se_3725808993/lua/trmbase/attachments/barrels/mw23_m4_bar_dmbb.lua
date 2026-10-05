ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "DBB-10.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_dmbb.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Spread.Increase = stat.Spread.Increase * 0.95
end