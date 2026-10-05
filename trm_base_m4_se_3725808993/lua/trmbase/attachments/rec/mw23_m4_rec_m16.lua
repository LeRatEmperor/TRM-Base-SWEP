ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Mike-16"
ATTACHMENT.ViewModel = "models/dqr/mw2/m4/v_m4_m16.mdl"
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_receiver"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.Damage = stat.Primary.Damage * 1.25
    stat.Primary.RPM = stat.Primary.RPM * 1.1
    stat.Primary.BurstRounds = 3
    stat.Primary.BurstDelay = 0.2
end