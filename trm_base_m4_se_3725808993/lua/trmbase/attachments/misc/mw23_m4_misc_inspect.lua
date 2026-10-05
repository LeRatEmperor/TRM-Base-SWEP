ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "MW19 Inspect"
ATTACHMENT.Bonemerge = true
ATTACHMENT.Category = "mw23_m4_misc"

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Animations.Inspect = stat.Animations.Inspect_Mw19
    stat.Animations.Inspect_Empty = stat.Animations.Inspect_Mw19
end