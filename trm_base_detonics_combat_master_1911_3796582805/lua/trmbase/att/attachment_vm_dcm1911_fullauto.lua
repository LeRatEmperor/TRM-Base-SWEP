ATTACHMENT.Base = "att_base"


ATTACHMENT.Name = "Full Auto"
ATTACHMENT.Icon = Material("entities/fullauto.png")
ATTACHMENT.Category = "attach_vm_dcm1911_misc"

function ATTACHMENT:Stats(weapon)
    weapon.Primary.Automatic = true
end
