AddCSLuaFile()
SWEP.Animations = {
    ["Draw"] = {
        sequence = { "draw" },
        events = {
            {time = 0 , callback = function(w)
                w:EmitSound("TRM_Weapon.Raise_PI")
            end}
        },

    },
    ["Draw_First"] = {
        sequence = { "draw_first" },
        events = {
            { time = 0.0, callback = function(self) self:SetGrip1(false) end },
            { time = 0.7, callback = function(self) self:SetGrip1(true) end },

        }
    },
    ["Melee"] = {
        sequence = { "melee" },
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
        events = {
            {time = 0 , callback = function(w)
                w:EmitSound("TRM_Weapon.Drop_PI")
            end}
        },
    },
    ["Idle"] = {
        sequence = { "idle" },
    },
    ["Idle_Empty"] = {
        sequence = { "idle_empty" },
    },
    ["Fire"] = {
        sequence = { "fire" },
    },
    ["Fire_Last"] = {
        sequence = { "fire_last" }
    },
    -----------------------------Reload--------------------------------------------------------------
    ["Reload_Empty"] = {
        sequence = { "reload_empty" },
        Length = 0.9,

        events = {
            { time = 0.0, callback = function(self) self:SetGrip1(false) end },
            { time = 0.8, callback = function(self) self:SetGrip1(true) end },
            {
                time = 0.4,
                callback = function(self)
                    self:DropMagazine()
                end
            },
            {
                time = 0.55,
                callback = function(self)
                    self:MagzineLoaded()
                end
            },
            { time = 0.0,  callback = function(self) self:EmitSound("TRM.ViewModel.Medium") end },
        }
    },

    ["Reload"] = {
        sequence = { "reload" },
        Length = 0.9,
        events = {
            { time = 0.00, callback = function(self) self:SetGrip1(false) end },
            { time = 0.8,  callback = function(self) self:SetGrip1(true) end },
            { time = 0.45, callback = function(self) self:MagzineLoaded() end },
            { time = 0.0,  callback = function(self) self:EmitSound("TRM.ViewModel.Medium") end },

        }
    },

    ["Reload_Empty_Fast"] = {
        sequence = { "reload_empty_fast" },
        Length = 0.9,

        events = {
            { time = 0.0, callback = function(self) self:SetGrip1(false) end },
            { time = 0.8, callback = function(self) self:SetGrip1(true) end },
            {
                time = 0.4,
                callback = function(self)
                    self:DropMagazine()
                end
            },
            {
                time = 0.55,
                callback = function(self)
                    self:MagzineLoaded()
                end
            }
        }
    },

    ["Reload_Fast"] = {
        sequence = { "reload_fast" },
        Length = 0.9,
        events = {
            { time = 0.00, callback = function(self) self:SetGrip1(false) end },
            { time = 0.8,  callback = function(self) self:SetGrip1(true) end },
            { time = 0.45, callback = function(self) self:MagzineLoaded() end },
        }
    },




    ---------------------------------------------------------------------------------------------------
    ["Inspect"] = {
        sequence = { "inspect" },
        events = {
            { time = 0.0,  callback = function(self) self:SetGrip1(false) end },
            { time = 0.80, callback = function(self) self:SetGrip1(true) end },
        }
    },

    ["Inspect_Empty"] = {
        sequence = { "inspect_empty" },
        events = {
            { time = 0.0,  callback = function(self) self:SetGrip1(false) end },
            { time = 0.80, callback = function(self) self:SetGrip1(true) end },
        }
    },
    -----------------------------------------------------------------------------------------------------
    ["Ads_In"] = {
        sequence = { "ads_in" },
        Length = 0.5,
    },
    ["Ads_Out"] = {
        sequence = { "ads_out" },
        Length = 0.5,

    },


    ["Sprint"] = {
        sequence = { "sprint" }
    },

}

SWEP.BasePoseParameter = {
    -- Sprint = { "sprint_loop" },
    Empty = { "empty_offset" },
    -- Walk = { "jog_offset", "jog_loop" }
}

SWEP.GripPoseParameters = {
}

SWEP.RawCameraAttachment = true
SWEP.CameraAttachment = "Camera"
SWEP.CameraReserve = false
