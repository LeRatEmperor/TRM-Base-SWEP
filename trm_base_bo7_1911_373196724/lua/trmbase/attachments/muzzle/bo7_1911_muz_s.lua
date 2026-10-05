ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Muzzle-S"
ATTACHMENT.Model = Model("models/dqr/bo7/1911/1911_muz_s.mdl")
ATTACHMENT.Pos =Vector(5.4,0,0)
ATTACHMENT.Angles = Angle(90, 0, 0)
ATTACHMENT.Category = "bo7_1911_muzzle"
-- Suppressor: 消音 + 微调
function ATTACHMENT:ChangeWeaponStats(weapon)
    weapon.Slienced = true
    weapon.Primary.RPM = weapon.Primary.RPM * 0.95
    weapon.Aim.Spread = weapon.Aim.Spread * 0.9
end