ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Tac"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_p_stac.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_pistolgrip"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Spread.Base = stat.Spread.Base * 0.97
end