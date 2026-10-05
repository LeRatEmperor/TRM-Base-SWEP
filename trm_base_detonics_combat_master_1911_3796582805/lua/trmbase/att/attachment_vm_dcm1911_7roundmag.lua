ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "7 Round Mag"
ATTACHMENT.Icon = Material("entities/7roundsmag.png")
ATTACHMENT.Category = "attach_vm_dcm1911_mag"

function ATTACHMENT:Stats(weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast
end
