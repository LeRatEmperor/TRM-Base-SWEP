ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Skel"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_p_skel.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_pistolgrip"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Aim.Time = stat.Aim.Time * 0.97
end