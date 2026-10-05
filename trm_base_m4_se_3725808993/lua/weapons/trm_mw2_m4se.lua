
SWEP.Base = "trm_gun_base"

SWEP.Category = "TriggerBase Weapon"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "M4"
SWEP.Author = "TriggerMiku and dqr"
SWEP.Purpose = ""
SWEP.DrawCrosshair = false

SWEP.DrawCrossHairIS = false 

SWEP.ViewModel = "models/dqr/mw2/m4/v_m4.mdl"
SWEP.UseHands = true
SWEP.ViewModelFOV = 70
SWEP.WorldModel = "models/dqr/mw2/m4/w_m4.mdl"
SWEP.BodyGroups = {
    ["tag_sight"] = 1,
    ["tag_laser_hide"] = 1 ,
    ["tag_grip_hide"] = 1
}
SWEP.RenderGroup = RENDERGROUP_OPAQUE
SWEP.RenderMode = RENDERMODE_NORMAL

SWEP.BobScale = 0
SWEP.SwayScale = 0
SWEP.IconHeightRadio = 1.5
SWEP.Slot = 2


SWEP.m_WeaponDeploySpeed = 1
SWEP.Primary.ClipSize = 30
SWEP.Primary.Chamber = 1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.SpecialAmmo = -1
SWEP.Primary.RPM = 840
SWEP.Primary.Automatic = true

SWEP.m_EjectDelay = 0.0

SWEP.Primary.Damage = 34
-- SWEP.Primary.Range = 5000
SWEP.Primary.Force = 1


SWEP.Primary.Sound = Sound("mw2_m4_fire")
SWEP.Primary.SliencedSound = Sound("mw2_m4_fire_s")
SWEP.Primary.Slienced = false


SWEP.Primary.NumBullets = 1

SWEP.Primary.FireMode = "FullAuto"
SWEP.Primary.BrustNum = 3 
SWEP.Primary.BrustDelay = 0.25
SWEP.Primary.BrustMode = "Single" -- Single / Auto 
SWEP.Primary.BrustModeOnce = "Single" -- Single / Full

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Ammo = -1



SWEP.VMOffset = {
    
    Idle = {
        Pos = Vector(0,0,0.0) ,
        Ang = Angle(-0,0,-0)
    } , 
    Sprint = {
        Pos = Vector(-0,-0,-0) ,
        Ang = Angle(-0,0,-0)
    },
    Crouch = {
        Pos = Vector(-1,-0 ,-3) ,
        Ang = Angle(0,0,-15)
    }
}

SWEP.Effects = {
    Muzzle = {
        effect = "MuzzleFlash" ,
        attachment = "muzzle" ,
    },
    Shell = {
        attachment = "shell_eject"  ,           -- Attachment 名称
        effect = "RifleShellEject",
        Pos = Vector(0, 0, 0),      -- 位置微调
        Ang = Angle(20, 0, 0),       -- 角度微调
        Magnitude = 10,             -- 弹出力度
        Primary = true,  
        Scale = 0.15 ,
    }      -- 是否在开火时弹壳

}
SWEP.HoldType = "ar2"


SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(175, 90, 0),
    Pos = Vector(2,10.5,-2)
}


SWEP.Sight = {
    Align = "Optic" ,      --Model Attachment
    Angles = Angle(0,90,90),
    Pos = Vector(-0 ,2   , - 0  ),
    PoseParameter = {"aim_offset"}
}
SWEP.ReloadType = "Magzine"

SWEP.IronsightReload =  true  

SWEP.Melee = {
    Enabled = true ,
    Damage = 50 ,
    Range = 50 , --hu
    Radius = 100 ,
    Force = 100 ,
    Sound = Sound("weapons/knife/knife_hitwall1.wav")
}

SWEP.Aim = {
    Spread = 0.005 ,
    SpreadFollowPrimary = false  ,
    Scale = 1.2 ,
    Time = 0.35 ,  
}

SWEP.Spread = {
    Base = 0.012 ,
	Vertical = 1.0 ,
	Horizontal = 1.0 ,
	Max = 0.15,
	Increase = 0.012,
	Recover = 0.1,
	Delay = 0.0 ,
    
    
}


SWEP.Recoil = {
    Vertical = {0.6,0.7 } ,
    Horizonal = {-0.2,0.2} ,
    AdsMultiplier = 0.4 , 
    KickDown = 0.5 ,
    Shake = 0.7 ,
    Factor = 0.7 ,
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
    Vertical = {1.9,1.9} ,
    Horizonal = {1.6,-1.6} ,
    Backward = {2,2 } , --random 1 and 2 , max 3
    RecoverSpeed = 1 ,
    RecoverDelay = 0.05 ,
    AdsMultiplier = 0.5 ,
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
    Walk = 0.95 ,
    Run = 1 ,
    Aim = 0.8 ,
}
SWEP.AltSwitch = false
SWEP.Animations = {
    ["Draw"] = {
        sequence = {"draw"} ,
        
    },
    ["Draw_First"] = {
        sequence = {"draw_first"},
        events = {
            { time = 0.0 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7 , callback = function(self) self:SetGrip1(true)   end},

        }
    },
    ["Melee"] = {
        sequence = {"melee_hit_01"},
        Length = 0.5 ,
        events = {
            {time = 0.2 , callback= function(self)
                self:DealMeleeDamage()
            end}
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
        sequence = {"holster"} ,
    },
    ["Idle"] = {
        sequence = {"idle" } ,
    },

    ["Fire"] = {
        sequence = {"fire"},
    },
    ["Fire_Last"] = {
        sequence = {"fire_last"}
    },
-----------------------------Reload--------------------------------------------------------------
    ["Reload_Empty"] = {
        sequence = {"reload_empty"},
        Length = 0.9 ,
        
        events ={
            { time = 0.0 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7 , callback = function(self) self:SetGrip1(true)   end},
            {time = 0.55 , callback = function(self)
                self:MagzineLoaded()
            end}
        }
    },

    ["Reload"] = {
        sequence = {"reload"},
        Length = 0.9 ,
        events = {
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7, callback = function(self) self:SetGrip1(true)   end},
            { time = 0.45 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    ["Reload_Empty_9mm"] = {
        sequence = {"reload_empty_9mm"},
        Length = 0.9 ,
        
        events ={
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7, callback = function(self) self:SetGrip1(true)   end},
            {time = 0.55 , callback = function(self) self:MagzineLoaded() end}
        }
    },

    ["Reload_9mm"] = {
        sequence = {"reload_9mm"},
        Length = 0.9 ,
        events = {
            { time = 0.05 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7 , callback = function(self) self:SetGrip1(true)   end},
            { time = 0.45 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    ["Reload_Empty_1"] = {
        sequence = {"reload_empty_mc"},
        Length = 0.9 ,
        
        events ={
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8, callback = function(self) self:SetGrip1(true)   end},

            {time = 0.55 , callback = function(self)

                self:MagzineLoaded()
            end}
        }
    },

    ["Reload_1"] = {
        sequence = {"reload_mc"},
        Length = 0.9 ,
        events = {
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8, callback = function(self) self:SetGrip1(true)   end},

            { time = 0.45 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    
    ["Reload_Smag"] = {
        sequence = {"reload_smag"},
        Length = 0.9 ,
        events = {
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.6, callback = function(self) self:SetGrip1(true)   end},

            { time = 0.45 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    ["Reload_Empty_Smag"] = {
        sequence = {"reload_empty_smag"},
        Length = 0.9 ,
        
        events ={
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.6, callback = function(self) self:SetGrip1(true)   end},

            {time = 0.55 , callback = function(self)
                self:MagzineLoaded()
            end}
        }
    },

    ["Reload_Dmag"] = {
        sequence = {"reload_xmaglrg"},
        Length = 0.9 ,
        events = {
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7, callback = function(self) self:SetGrip1(true)   end},

            { time = 0.55 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    ["Reload_Empty_Dmag"] = {
        sequence = {"reload_empty_xmaglrg"},
        Length = 0.9 ,
        
        events ={
            { time = 0.15    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8, callback = function(self) self:SetGrip1(true)   end},

            {time = 0.55 , callback = function(self)
                self:MagzineLoaded()
            end}
        }
    },
    ["Reload_Dmag_1"] = {
        sequence = {"reload_xmaglrg_1"},
        Length = 0.9 ,
        events = {
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7, callback = function(self) self:SetGrip1(true)   end},

            { time = 0.55 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    ["Reload_Empty_Dmag_1"] = {
        sequence = {"reload_empty_xmaglrg_1"},
        Length = 0.9 ,
        
        events ={
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7, callback = function(self) self:SetGrip1(true)   end},

            {time = 0.55 , callback = function(self)
                self:MagzineLoaded()
            end}
        }
    },
    
    ["Reload_Xmag"] = {
        sequence = {"reload_xmag"},
        Length = 0.9 ,
        events = {
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.7, callback = function(self) self:SetGrip1(true)   end},

            { time = 0.55 , callback = function(self) self:MagzineLoaded()   end},
        }
    },
    ["Reload_Xmag_Empty"] = {
        sequence = {"reload_empty_xmag"},
        Length = 0.9 ,
        
        events ={
            { time = 0.05    , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.75, callback = function(self) self:SetGrip1(true)   end},

            {time = 0.55 , callback = function(self)
                self:MagzineLoaded()
            end}
        }
    },
---------------------------------------------------------------------------------------------------
    ["Inspect"] = {
        sequence = {"inspect"} ,   
        events = {
            { time = 0.0 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.75 , callback = function(self) self:SetGrip1(true)   end},
        }    
    },
    ["Inspect_Empty"] = {
        sequence = {"inspect_empty"} ,
        events = {
            { time = 0.1 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.85 , callback = function(self) self:SetGrip1(true)   end},
        }    

    },
    ["Inspect_Mw19"] = {
        sequence = {"inspect_cod16"} ,   
        events = {
            { time = 0.0 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8 , callback = function(self) self:SetGrip1(true)   end},
        }    
    },
    ["Inspect_Empty_Mw19"] = {
        sequence = {"inspect_cod16"} ,   
        events = {
            { time = 0.0 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8 , callback = function(self) self:SetGrip1(true)   end},
        }    
    },
    ["Inspect_Smag"] = {
        sequence = {"inspect_smag"} , 
        events = {
            { time = 0.0 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8 , callback = function(self) self:SetGrip1(true)   end},
        }    
      
    },
    ["Inspect_Empty_Smag"] = {
        sequence = {"inspect_empty_smag"},
        events = {
            { time = 0.1 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.85 , callback = function(self) self:SetGrip1(true)   end},
        }    
 
    },
    ["Inspect_Dmag"] = {
        sequence = {"inspect_xmag"} ,  
        events = {
            { time = 0.05 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.8 , callback = function(self) self:SetGrip1(true)   end},
        }    
     
    },
    ["Inspect_Empty_Dmag"] = {
        sequence = {"inspect_empty_xmag"} ,
        events = {
            { time = 0.1 , callback = function(self) self:SetGrip1(false)   end},
            { time = 0.85 , callback = function(self) self:SetGrip1(true)   end},
        }    

    },
-----------------------------------------------------------------------------------------------------
    ["Ads_In"] = {
        sequence = {"ads_in"}
    },
    ["Ads_Out"] = {
        sequence = {"ads_out"}
    },


    ["SprintIn"] = {
        sequence = {"sprint_in"} ,  
        Length = 0.1 ,     
    },
    ["Sprint"] = {
        sequence = {"idle"}
    },
    ["SprintOut"] = {
        sequence = {"sprint_out"} ,
        Length = 0.1 ,   
    },
} 

SWEP.BasePoseParameter = {
    Sprint = {"sprint_loop" , "sprint_offset"} ,
    Empty = {"empty_offset"} ,
    Walk = {"jog_offset","jog_loop"} 
}

SWEP.GripPoseParameters = {
}

SWEP.CustomizeDelta = 0.15

SWEP.Attachments = {
    {
        Name = "Barrel" ,
        Default = "mw23_m4_bar_d" ,
        Category = {"m4se_barrel"} ,
    },
    {
        Name = "Mag" ,
        Default = "mw23_m4_mag_d" , 
        Category = {"mw23_m4_mag"} ,
    },
    {
        Name = "Grip" ,
        Default = "mw23_m4_pgrip_d" , 
        Category = {"mw23_m4_pistolgrip"} ,
    },
        {
        Name = "Stock" ,
        Default = "mw23_m4_stock_d" , 
        Category = {"mw23_m4_stock"} ,
    },
    {
        Name = "Optic" ,
        SightPos = Vector(-0.0,0,-0.7 ) , 
        SightAng = Angle(-0.0,-0,0) , 
        Category = {    "att_sight","att_sight_mw23m4" },
        Bone = "tag_holo" ,
        Default = "mw23_m4_sight" ,
        Pos = Vector(0,0,0) ,
        Ang = Angle(-90,180,90)
    },
    {
        Name = "Laser" ,
        Category = {    "att_laser" },
        Bone = "tag_laser_attach" ,
        Pos = Vector(0  ,0,0) ,
        Ang = Angle(-90,180,90) ,
    },
    {
        Name = "UnderBarrel" ,
        Category = {    "att_grip_vert" },
        Bone = "tag_grip_attach" ,
        Pos = Vector(0  ,0,0) ,
        Ang = Angle(-0,0,0) ,
    },
   {   
        Name = "Muzzle",
        --ParentAtt = 1 ,
        Category = {"att_muzzle"},
        Pos = Vector(-2,0,0) ,
        Ang = Angle(0,0,0) ,  
        Bone = "tag_flash" ,
    },
--    {
--         Name = "Receiver" ,
--         Category = {"mw23_m4_receiver"} ,
--     },
   {
        Name = "Misc",
        Category = {"mw23_m4_misc"},
    },
}
