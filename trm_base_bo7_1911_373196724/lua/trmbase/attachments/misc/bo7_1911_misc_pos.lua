ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Pos"
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "bo7_1911_misc"

function ATTACHMENT:ChangeWeaponStats(weapon)
    if weapon.VMOffset and weapon.VMOffset.Idle then
        weapon.VMOffset.Idle.Pos = weapon.VMOffset.Idle.Pos + Vector(3, 0, 1)
    end
end