SWEP.Base = "trm_gun_base"

SWEP.Category = "TriggerBase Weapon"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "1911"
SWEP.Author = "TriggerMiku and dqr"
SWEP.Purpose = ""


SWEP.ViewModel = "models/dqr/bo7/1911/v_1911.mdl"
SWEP.UseHands = true
SWEP.ViewModelFOV = 70
SWEP.WorldModel = "models/dqr/bo7/1911/w_1911.mdl"
SWEP.BodyGroups = {
    ["tag_sight"] = 0,
    ["tag_laser_hide"] = 1
}

SWEP.BobScale = 0
SWEP.SwayScale = 0
SWEP.IconHeightRadio = 1.5
SWEP.Slot = 1


SWEP.m_WeaponDeploySpeed = 1
SWEP.Primary.ClipSize = 8
SWEP.Primary.Chamber = 1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.SpecialAmmo = -1
SWEP.Primary.RPM = 555
SWEP.Primary.Automatic = false


SWEP.Primary.Damage = 50
-- SWEP.Primary.Range = 5000
SWEP.Primary.Force = 1


SWEP.Primary.Sound = Sound("1911_fire")
SWEP.Primary.SliencedSound = Sound("1911_fire_s")
SWEP.Primary.Slienced = false


SWEP.Primary.NumBullets = 1

SWEP.Primary.FireMode = "FullAuto"
SWEP.Primary.BrustNum = 3
SWEP.Primary.BrustDelay = 0.25
SWEP.Primary.BrustMode = "Single"     -- Single / Auto
SWEP.Primary.BrustModeOnce = "Single" -- Single / Full

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Ammo = -1



SWEP.VMOffset = {

    Idle = {
        Pos = Vector(0, 0, 0.0),
        Ang = Angle(-0, 0, -0)
    },
    Sprint = {
        Pos = Vector(-0, -0, -0),
        Ang = Angle(-0, 0, -0)
    },
    Crouch = {
        Pos = Vector(-1, -0, -3),
        Ang = Angle(0, 0, -15)
    }
}

SWEP.Effects = {
    Muzzle = {
        effect = "MuzzleFlash",
        attachment = "muzzle",
    },
    Shell = {
        attachment = "shell_eject",   -- Attachment 名称
        effect = "ShellEject",
        Pos = Vector(0, 0, 0),        -- 位置微调
        Ang = Angle(20, 0, 0),        -- 角度微调
        Magnitude = 30,               -- 弹出力度
        Primary = true,
        Scale = 0.15,
    } -- 是否在开火时弹壳

}
SWEP.HoldType = "pistol"



SWEP.WorldModelOffsets = {
    Bone = "tag_pistol_offset",
    Angles = Angle(180, 90, 0),
    Pos = Vector(4, 9, -4)
}



SWEP.Sight = {
    Align = "Optic",  --Model Attachment
    Angles = Angle(0, 90, 90),
    Pos = Vector(-0, 2, 0.05),
    PoseParameter = { "aim_offset" }
}
SWEP.ReloadType = "Magzine"

SWEP.IronsightReload = true

SWEP.Melee = {
    Enabled = true,
    Damage = 50,
    Range = 50,  --hu
    Radius = 100,
    Force = 100,
    Sound = Sound("weapons/iceaxe/iceaxe_swing1.wav")
}

SWEP.Aim = {
    Spread = 0.005,
    SpreadFollowPrimary = false,
    Scale = 1.2,
    Time = 0.25,
}

SWEP.Spread = {
    Base = 0.012,
    Vertical = 1.0,
    Horizontal = 1.0,
    Max = 0.15,
    Increase = 0.012,
    Recover = 0.1,
    Delay = 0.0,


}


SWEP.Recoil = {
    Vertical = { 2, 2 },
    Horizonal = { -0.2, 0.2 },
    AdsMultiplier = 0.4,
    KickDown = 0.8,
    Shake = 0.3,
    Factor = 0.7 ,
    Recover = 0.03 ,

    -- Functional = {
    --     Increase = 0.2 ,
    --     Recover = 0.4,
    --     RecoverDelay = 0.2,
    --     Func = function(self,progress)
    --         local pitch ,yaw = -5, 0
    --         if progress >= 0.8 then
    --             pitch = 0
    --         end
    --         return pitch , -yaw
    --     end
    -- }

}

SWEP.VisualRecoil = {
    Vertical = { 0.9, 0.9 },
    Horizonal = { 0.6, -0.6 },
    Backward = { 7, 7 }, --random 1 and 2 , max 3
    RecoverSpeed = 2,
    RecoverDelay = 0.05,
    AdsMultiplier = 1,
    -- Functional = {
    --     Increase = 0.1 ,
    --     Recover = 1 ,
    --     RecoverDelay = 0.5,
    --     Func = function(self,progress)
    --         local pitch ,yaw ,back= 0, 0 , 0
    --         if progress < 0.1 then
    --             pitch = 2.5
    --         end

    --         return pitch , -yaw , back
    --     end
    -- }
}


SWEP.CameraAttachment = "Camera"
SWEP.CameraReserve = false
SWEP.MoveSpeed = {
    Walk = 0.98,
    Run = 1.25,
    Aim = 0.9,
}
SWEP.AltSwitch = false
SWEP.Animations = {
    ["Draw"] = {
        sequence = { "draw" },

    },
    ["Draw_First"] = {
        sequence = { "draw_first" }
    },
    ["Melee"] = {
        sequence = { "melee_hit_01", "melee_hit_02", "melee_hit_03" },
        Length = 0.5,
        events = {
            {
                time = 0.2,
                callback = function(self)
                    self:DealMeleeDamage()
                end
            }
        },

    },
    -- ["Melee_Empty"] = {
    --     sequence = {"base_melee_bash_empty"},
    --     events = {
    --         {time = 0.2 , callback= function(self)
    --             self:DealMeleeDamage()
    --         end}
    --     },
    -- },
    ["Holster"] = {
        sequence = { "holster" },
    },
    ["Idle"] = {
        sequence = { "idle" },
    },

    ["Fire"] = {
        sequence = { "fire" },
        Speed = 2 ,
    },
    ["Fire_Last"] = {
        sequence = { "fire_last" }
    },
    -----------------------------Reload--------------------------------------------------------------
    ["Reload_Empty"] = {
        sequence = { "reload_empty_wicked","reload_empty" },
        Length = 0.7,
        events = {
            {time = 0.35,callback = function(self) self:MagzineLoaded() end }
        }
    },

    ["Reload"] = {
        sequence = { "reload" },
        Length = 0.7,
        events = {
            { time = 0.45, callback = function(self) self:MagzineLoaded() end },
        }
    },
    ["Reload_Empty_Xmag"] = {
        sequence = { "reload_empty_ext01" },
        Length = 0.7,
        events = {
            { time = 0.35, callback = function(self) self:MagzineLoaded() end }
        }
    },

    ["Reload_Xmag"] = {
        sequence = { "reload_ext01" },
        Length = 0.7,
        events = {
            { time = 0.45, callback = function(self) self:MagzineLoaded() end },
        }
    },
    ["Reload_Empty_XmagLrg"] = {
        sequence = { "reload_empty_ext02" },
        Length = 0.7,
        events = {
            { time = 0.35, callback = function(self) self:MagzineLoaded() end }
        }
    },

    ["Reload_XmagLrg"] = {
        sequence = { "reload_ext02" },
        Length = 0.7,
        events = {
            { time = 0.45, callback = function(self) self:MagzineLoaded() end },
        }
    },
    ["Reload_Fast"] = {
        sequence = { "reload_fast" },
        Length = 0.7,
        events = {
            { time = 0.35, callback = function(self) self:MagzineLoaded() end }
        }
    },

    ["Reload_Empty_Fast"] = {
        sequence = { "reload_empty_fast" },
        Length = 0.7,
        events = {
            { time = 0.45, callback = function(self) self:MagzineLoaded() end },
        }
    },    
    ---------------------------------------------------------------------------------------------------
    ["Inspect"] = {
        sequence = { "inspect" },
    },
    ["Inspect_Empty"] = {
        sequence = { "inspect" }
    },
    -----------------------------------------------------------------------------------------------------
    ["Ads_In"] = {
        sequence = { "ads_in" }
    },
    ["Ads_Out"] = {
        sequence = { "ads_out" }
    },


    ["SprintIn"] = {
        sequence = { "sprint_in" },
        Length = 0.1,
    },
    ["Sprint"] = {
        sequence = { "idle" },
    },

    ["SprintOut"] = {
        sequence = { "sprint_out" },
        Length = 0.1,
    },
}

SWEP.BasePoseParameter = {
    Sprint = { "sprint_loop", "sprint_offset" },
    Empty = { "empty_offset" },
    Walk = { "jog_offset", "jog_loop" }
}

SWEP.CustomizeDelta = 0.15

SWEP.Attachments = {
    {
        Name = "Barrel",
        Default = "bo7_1911_barrel_d",
        Category = { "bo7_1911_barrel" },
    },
    {
        Name = "Mag",
        Default = "bo7_1911_mag_d",
        Category = { "bo7_1911_mag" },
    },
    {
        Name = "PGrip",
        Default = "bo7_1911_pgrip_d",
        Category = { "bo7_1911_pgrip" },
    },
    {
        Name = "Trigger",
        Default = "bo7_1911_tr_d",
        Category = { "bo7_1911_tr" },
    },
    {
        Name = "Optic",
        Category = { "att_sight_pistol" },
        Bone = "tag_reflex",
        Pos = Vector(0, 0, 0),
        Ang = Angle(-0, 0, 0) ,
        SightPos = Vector(-0.0, -1, -1.8),
        SightAng = Angle(-0.0, -0, 0),

    },
    {
        Name = "Muzzle",
        Category = { "bo7_1911_muzzle", "att_muzzle_pistol" },
        Bone = "tag_flash",
        Ang = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    {
        Name = "Laser",
        Category = { "att_laser_pistol" },
        Bone = "tag_laser_attach",
    },
    {
        Name = "Misc",
        Category = { "bo7_1911_misc" },
    },

}
