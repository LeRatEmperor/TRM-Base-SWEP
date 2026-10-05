include("sound.lua")
include("animations.lua")


SWEP.Base = "trm_gun_base"

SWEP.Category = "TriggerBase Weapon"
SWEP.SubCategory = "Pistols"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "DCM1911"
SWEP.Author = "CRANK07 and TriggerMiku"
SWEP.Purpose = ""
SWEP.DrawCrosshair = false

SWEP.DrawCrossHairIS = false

SWEP.ViewModel = Model("models/weapons/c_1911.mdl")
SWEP.UseHands = true
SWEP.ViewModelFOV = 70
SWEP.WorldModel = Model("models/weapons/w_1911.mdl")
SWEP.BodyGroups = {
    Body = 0,
}
SWEP.Slot = 1

if CLIENT then
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/hud/tfa_1911")
end
SWEP.Primary.ClipSize = 7
SWEP.Primary.Chamber = 1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.SpecialAmmo = -1
SWEP.Primary.RPM = 800

-- SWEP.Primary.Trigger = {
--     Time = 0.025,
--     Type = "Hold", --"Hold" or "Tap"
--     -- Sound = Sound("weap_mpapa5_fire_first_plr"),
--     -- ReleaseSound = Sound("weap_mpapa5_disconnector_plr"),
-- }


SWEP.m_EjectDelay = 0.0

SWEP.Primary.Damage = 41
-- SWEP.Primary.Range = 5000
SWEP.Primary.Force = 1


SWEP.Primary.Sound = Sound("TRM.DCM1911.1911fire")
SWEP.Primary.SliencedSound = Sound("TRM.DCM1911.1911fire2")
SWEP.Primary.Slienced = false

SWEP.Reverb = {
    PresetName = "Pistol"
}


SWEP.Primary.NumBullets = 1

SWEP.Primary.Brust = false
SWEP.Primary.BrustNum = 3
SWEP.Primary.BrustDelay = 0.25
SWEP.Primary.BrustMode = "Single"     -- Single / Auto
SWEP.Primary.BrustModeOnce = "Single" -- Single / Full


SWEP.Primary.Automatic = false

-- SWEP.Firemode = {
--     {
--         Name = "FullAuto",
--         OnSet = function(self)
--             self.Primary.Automatic = true
--         end,
--         Animation = "SemiOn",
--         PoseParameter = {
--             ["firemode_offset"] = 0,
--         }
--     },
--     {
--         Name = "SemiAuto",
--         OnSet = function(self)
--             self.Primary.Automatic = false
--         end,
--         Animation = "SemiOff",
--         PoseParameter = {
--             ["firemode_offset"] = 1,
--         }
--     }
-- }

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Ammo = -1



SWEP.VMOffset = {

    Idle = {
        Pos = Vector(2, 0, 1),
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
        attachment = "muzzle",
       // ParticleEffect = "trm_0",
    },
    Shell = {
        attachment = "shell_eject", -- Attachment 名称
        effect = "shelleject",
        Primary = true,
    }, -- 是否在开火时弹壳,
    Mag = {
        Flag = 3,
        Model = Model("models/weapons/1911_mag.mdl")
    }

}
SWEP.HoldType = "pistol"

SWEP.WorldModelOffsets = {
    Bone = false,
    Angles = Angle(0, -0, 180),
    Pos = Vector(1, 19, -2)
}
SWEP.Sight = {
    Pos           = Vector(0.2, 0, -0.3),
    Ang           = Angle(-0.2, -1, 0),
    PoseParameter = { "aim_offset" }
}
SWEP.ReloadType = "Magzine"

SWEP.IronsightReload = true

SWEP.Melee = {
    Enabled = true,
    Damage = 50,
    Range = 50, --hu
    Radius = 100,
    Force = 100,
    Sound = Sound("weapons/knife/knife_hitwall1.wav")
}

SWEP.Aim = {
    Spread = 0.005,
    SpreadFollowPrimary = false,
    Scale = 1.2,
    Time = 0.25,
}

SWEP.ShootPosOffset = Vector(2, -0, -1.5)
SWEP.ShootPosOffsetAim = Vector(0, -0, -1.5)

SWEP.Spread = {
    Base = 0.012,
    Vertical = 1.0,
    Horizontal = 1.0,
    Max = 0.15,
    Increase = 0.006,
    Recover = 0.1,
    Delay = 0.05,
    MoveMultiplier = 0.1,

}


SWEP.Recoil = {
    Vertical = { 2.5, 2.25 },
    Horizonal = { -0.5, 0.5 },
    AdsMultiplier = 0.5,
    KickDown = 0.1,
    Shake = 1,
    Factor = 0.5,
    Seed = 76676 --just give this a random number
    --AutoControl = true,
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

SWEP.ViewmodelRecoil = {
    Pos = Vector(0.00, 0, -0.00),
    Ang = Angle(-0, 0, 0),
    PitchMultiplier = 0.2,
    YawMultiplier = 1,
}
SWEP.VisualRecoil = {
    Vertical = { 1.2, 1.2 },
    Horizonal = { 0.2, -0.2 },
    Backward = { 4, 4 }, --random 1 and 2 , max 3
    RecoverSpeed = 0.5,
    RecoverDelay = 0.05,
    AdsMultiplier = 0.5,
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


SWEP.MoveSpeed = {
    Walk = 0.95,
    Run = 1,
    Aim = 0.8,
}
SWEP.AltSwitch = false



SWEP.Attachments = {



    {
        Name = "Mag",
        Category = { "attach_vm_dcm1911_mag" },
    },



    {
        Name = "Optic",
        SightPos = Vector(-0.0, 0, -1.4),
        SightAng = Angle(-0.0, -0, 0),
        Category = { "att_sight_pistol" },
        Bone = "huatao",
        OffsetRotate = Angle(0, 0, 90 ) ,
        Pos = Vector(-4.7,0,0.4),
        Ang = Angle(-0, 0, -90)
    },


    {
        Name = "Laser",
        Category = { "att_laser_pistol" },
        Bone = "A_LaserFlashlight",
        OffsetRotate = Angle(0, 0, 90 ) ,
        Ang = Angle(0, 0, -90),
        Pos = Vector(-1.2, 0, 0.5),
    },
    {
        Name = "Ammo",
        Category = { "att_ammo" },
    },
    {
        Name = "Misc",
        Category = { "attach_vm_dcm1911_misc" },
    }

}
