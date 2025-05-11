config = {}

config.debug = false                                    -- Enable or disable debug mode (prints to console)

config.framework = {
    qb = false,                                          -- Set to true if using qbcore
    esx = true,                                        -- Set to true if using esx
    custom = false,                                     -- Set to true if using custom framework (requires modifications)
}

config.notify = function(msg, status) -- DON'T TOUCH THIS

    ---------   edit (or replace) below   -------------  
    
        lib.notify({
            description = msg,
            position = 'top',
            type = status, -- 'success', 'error', 'inform'
            style = {
                backgroundColor = 'rgba(0, 0, 0, 0.65)',
                color = 'white',
            },
        })
    
    ---------------------------------------------------
    
end

config.RollingPaper = {

    required = true,                                    -- Enable or disable requiring rolling paper to roll a joint

    item = 'rollpaper',                             -- Item name of the rolling paper (you can change this if you have a different rolling paper item than the one included)
    amount = 1,                                         -- Amount of rolling paper required each time joint roller is used
}       


config.strains = {      
    ['OGKush Joint'] = { 
        joint = 'joint_ogk', 
        effect = '',
        receive = 1, 
        required = { 
            item = 'weed_og', 
            amount = 1, 
        },
    },
    ['Skunk Joint'] = {     
        joint = 'joint_sk',                -- Item name of the joint that player will receive
        effect = '',                               -- Effect that will be applied to player when smoking this joint 
        receive = 1,                                    -- Amount of joints that player will receive after using joint roller
        required = {        
            item = 'weed_lemonhaze',               -- Item name of the weed that is required to roll this joint (can be dry bud, bag of weed, whatever you want)
            amount = 1,                                 -- Amount of that item that is required to roll this joint
        },
    },
    ['Purplehaze Joint'] = {     
        joint = 'joint_ph',                -- Item name of the joint that player will receive
        effect = '',                               -- Effect that will be applied to player when smoking this joint 
        receive = 1,                                    -- Amount of joints that player will receive after using joint roller
        required = {        
            item = 'weed_purple_haze',               -- Item name of the weed that is required to roll this joint (can be dry bud, bag of weed, whatever you want)
            amount = 1,                                 -- Amount of that item that is required to roll this joint
        },
    },
    ['WhiteWidow Joint'] = { 
        joint = 'joint_ww', 
        effect = '',
        receive = 1, 
        required = { 
            item = 'weed_white_widow', 
            amount = 1, 
        },
    },
--[[
    ['Pineapple Express'] = {
        joint = 'pineapple_express_joint', 
        effect = 'speed',
        receive = 1, 
        required = { 
            item = 'pineapple_express_bag', 
            amount = 1, 
        },
    },
]]--

}