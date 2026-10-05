ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "DM-10.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_b_dmd.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 1.05
    stat.Recoil.Horizonal[1] = stat.Recoil.Horizonal[1] * 0.88
    stat.Recoil.Horizonal[2] = stat.Recoil.Horizonal[2] * 0.88
    stat.Spread.Base = stat.Spread.Base * 0.88
end