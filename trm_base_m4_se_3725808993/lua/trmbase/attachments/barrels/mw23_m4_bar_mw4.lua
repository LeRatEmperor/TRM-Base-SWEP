ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "FSB-13.5"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/mw4_b_d.mdl")
ATTACHMENT.Category = "m4se_barrel"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Vertical[1] = stat.Recoil.Vertical[1] * 0.9
    stat.Recoil.Vertical[2] = stat.Recoil.Vertical[2] * 0.9
    stat.Recoil.Horizonal[1] = stat.Recoil.Horizonal[1] * 0.9
    stat.Recoil.Horizonal[2] = stat.Recoil.Horizonal[2] * 0.9
end