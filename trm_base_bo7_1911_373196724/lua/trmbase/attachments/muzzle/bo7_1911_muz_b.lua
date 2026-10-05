ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Muzzle-B"
ATTACHMENT.Model = Model("models/dqr/bo7/1911/1911_muz_b.mdl")
--ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "bo7_1911_muzzle"
ATTACHMENT.Pos = Vector(1.4, 0, 0)
ATTACHMENT.Angles = Angle(90, 0, 0)

-- Auto fire muzzle: 全自动 + 高 RPM + 伤害惩罚
function ATTACHMENT:ChangeWeaponStats(weapon)
    weapon.Primary.Automatic = true
    weapon.Primary.RPM = 888
    weapon.Aim.Spread = weapon.Aim.Spread * 1.2
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.1
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.1
    weapon.Primary.Damage = weapon.Primary.Damage * 0.8
end
