ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Mike4-DM"
ATTACHMENT.ViewModel = "models/dqr/mw2/m4/v_m4_dm.mdl"
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_receiver"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Recoil.Shake = stat.Recoil.Shake * 1.125
    stat.Recoil.Vertical[1] = stat.Recoil.Vertical[1] * 2.2
    stat.Recoil.Vertical[2] = stat.Recoil.Vertical[2] * 1.55
    stat.Recoil.Horizonal[1] = stat.Recoil.Horizonal[1] * 1.25
    stat.Recoil.Horizonal[2] = stat.Recoil.Horizonal[2] * 1.25
    stat.Primary.RPM = stat.Primary.RPM * 0.7
    stat.Spread.Base = stat.Spread.Base * 1.2
    stat.Primary.Damage = stat.Primary.Damage * 1.4
end