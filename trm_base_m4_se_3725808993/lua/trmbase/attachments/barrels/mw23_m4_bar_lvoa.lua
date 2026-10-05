ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Lvoa-14.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_lv.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 0.96
    stat.Recoil.AdsMultiplier = stat.Recoil.AdsMultiplier * 0.96
end