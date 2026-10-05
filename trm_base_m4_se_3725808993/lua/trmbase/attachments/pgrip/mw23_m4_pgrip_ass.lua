ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Pass"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_p_ass.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_pistolgrip"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Vertical[1] = stat.Recoil.Vertical[1] * 0.98
    stat.Recoil.Vertical[2] = stat.Recoil.Vertical[2] * 0.98
    stat.Recoil.Horizonal[1] = stat.Recoil.Horizonal[1] * 0.98
    stat.Recoil.Horizonal[2] = stat.Recoil.Horizonal[2] * 0.98
    stat.Spread.Increase = stat.Spread.Increase * 1.02
end