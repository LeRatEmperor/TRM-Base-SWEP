ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "60.rd"
ATTACHMENT.Model = Model("models/dqr/mw2/m4/m4_m_xx.mdl")
ATTACHMENT.Category = "mw23_m4_mag"
ATTACHMENT.Bonemerge = true

function ATTACHMENT:ChangeWeaponStats(stat)
    stat.Primary.ClipSize = 60
    stat.Aim.Time = stat.Aim.Time * 1.2
    stat.Animations.Reload = stat.Animations.Reload_Dmag
    stat.Animations.Reload_Empty = stat.Animations.Reload_Empty_Dmag
    stat.Animations.Inspect = stat.Animations.Inspect_Dmag
    stat.Animations.Inspect_Empty = stat.Animations.Inspect_Empty_Dmag	
end

-- ATTACHMENT.BulletList = {
--     [1] = {"j_bullet_01"},
--     [2] = {"j_bullet_02"},
--     [3] = {"j_bullet_03"},
--     [4] = {"j_bullet_04"},
--     [5] = {"j_bullet_05"},
--     [6] = {"j_bullet_06"},
--     [7] = {"j_bullet_07"},
--     [8] = {"j_bullet_08"},
--     [9] = {"j_bullet_09"},
--     [10] = {"j_bullet_10"},
--     [11] = {"j_bullet_11"},
--     [12] = {"j_bullet_12"},
--     [13] = {"j_bullet_13"},
--     [14] = {"j_bullet_14"},
--     [15] = {"j_bullet_15"},
--     [16] = {"j_bullet_16"},
--     [17] = {"j_bullet_17"},
--     [18] = {"j_bullet_18"},
--     [19] = {"j_bullet_19"},
--     [20] = {"j_bullet_20"},
--     [21] = {"j_bullet_21"},
--     [22] = {"j_bullet_22"},
--     [23] = {"j_bullet_23"},
-- 	[24] = {"j_bullet_24"}
-- }