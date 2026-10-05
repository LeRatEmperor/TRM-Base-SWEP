ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Aromeo-5.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_ds.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

ATTACHMENT.poseParameter= {
    "grip_misc_4"
}

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Aim.Time = stat.Aim.Time * 0.8
end