ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Trigger-F"
ATTACHMENT.Model = Model("models/dqr/bo7/1911/1911_t_f.mdl")
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "bo7_1911_tr"

function ATTACHMENT:ChangeWeaponStats(wep)
    wep.Primary.RPM = wep.Primary.RPM * 1.55
end