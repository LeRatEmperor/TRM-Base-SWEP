ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "9mm 30.Rd"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_m_9mm.mdl")
ATTACHMENT.Category = "mw23_m4_mag"
ATTACHMENT.Bonemerge = true
ATTACHMENT.BodyGroup = {
    ["tag_9mm"] = 1,
}

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.Sound = Sound("mw2_m4_9mm_fire")
    stat.Animations.Reload = stat.Animations.Reload_9mm
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_9mm
    stat.Animations.Inspect = stat.Animations.Inspect_Mw19
	stat.Animations.Inspect_Empty = stat.Animations.Inspect_Mw19
    stat.Primary.Ammo = "pistol"
    stat.Effects.Shell.effect = "ShellEject"
    stat.Primary.Damage = stat.Primary.Damage * 1.3
    stat.Primary.RPM = stat.Primary.RPM * 0.8
    stat.Spread.Base = stat.Spread.Base * 0.8
end