_______________ ___.____     ___________________    _______       _  _   ____ 
\_   _____/    |   \    |    \_   _____/\_____  \   \      \   __| || |_/_   |
 |    __)_|    |   /    |     |    __)_  /   |   \  /   |   \  \   __   /|   |
 |        \    |  /|    |___  |        \/    |    \/    |    \  |  ||  | |   |
/_______  /______/ |_______ \/_______  /\_______  /\____|__  / /_  ~~  _\|___|
        \/                 \/        \/         \/         \/    |_||_|       
getgenv().euleon = {
    configuration = {
        version = "1.0", --  use this to change versions
        key = "key", --  put your key here!
        gui = false, --  shows a gui on inject
        intro = false, --  shows an intro on inject
        internal = false, --  uses rconsole that you can change stuff using chatcommands, only works on rconsole supported executors ]
        bypassdata = false, --  bypasses many methods of most cheat detections
        lowgfx = false, --  automatically disables textures in the map
        removeseats = true, --  automatically removes seats
    },
    silent = {
        enabled = true,
        usesilentkeybind = true, 
        keybind = "b", 
        mode = "rage", -- rage , legit
        
        forcelock = false, --  you press the button to target the player. risky!
        forcelock_aimassisttarget = true, --  uses aimassist target instead of silent aim
        forcekeybind = "h", --  the key that gets the target
        
        predictmovement = true, --  predicts target position and movement
        prediction = 0.11, --  how much power it predicts the target
        part = "humanoidrootpart", --  what part it targerts
        useairpart = false, --  when target is in the air its gonna force to shoot on air part
        airpart = "lowertorso", --  the parts it targets on when player is in the air
        closestpart = true, --  automatically gets the closest part of the target and uses that position
        closestpoint = true, --  automatically gets the closest point of the target part and uses that position
        closestpointscale = 300, --  how far it reaches out basically multi point. in percent
        usewhitelistedparts = false, --  makes so you only get custom parts
        whitelistedpart = {"head", "uppertorso", "humanoidrootpart", "lowertorso", "lefthand", "righthand", "leftlowerarm", "rightlowerarm", "leftupperarm", "rightupperarm", "leftfoot", "leftlowerleg",  "leftupperleg", "rightlowerleg", "rightfoot",  "rightupperleg"}, --  whitelists certain part for closestpart function. example {"humanoidrootpart", "head"}
        antiaimviewer = true, --  bypasses the mouse position for the server
        hitchance = 300, --  the chance you will hit the target
        airhitchance = 500, --  the chance you will hit the target in the air
        
        humanize = false, --  makes so the silent doesnt hit the same position randomizes the position
        humanizevalue = 5, --  makes so how much power it changes
        
        antigroundshots = true, --  makes so you dont shoot the ground/floor
        antigroundvalue = 0.3, --  how much power it uses for the silent
        antigroundactivation = -20, --  the value its gonna start activating

        custom_antiaimviewerpoint = {
            enabled = false, --  enable / disable custom anti aimviewer
            remoteevent = functionpos --  this is only for games that arent supported with the current anti aim viewer
                local mainevent = game:getservice"replicatedstorage".mainevent --  the mainevent path
                local args = {
                    [1] = "updatemousepos", --  the string
                    [2] = pos --  the mouse position
                }
                return args, mainevent --  returns args and mainevent 
                --  use this script to get the mainevent and the args
                --  loadstringgame:httpget"https://github.com/exxtremestuffs/simplespysource/raw/master/simplespy.lua"
            end
        },
        aimassist = {
            enabled = true, --  enable / disable aimassist
            keybind = "e", --  the key to lock onto a player
            holdmode = false, --  enables while only holding the key
            method = "camera", --  wich thing it uses for aimassist mouse, camera
    
            predictmovement = true, --  predicts target position and movement
            prediction = 0.136645, --  how much power it predicts the target
            part = "humanoidrootpart", --  the part that aim assist locks on
            closestpart = true, --  automatically gets the closest part of the target and uses that position
            randompart = false, --  randomizes an part of the target and uses that position. will overwrite closestpart
            enablechance = false, --  makes so theres a chance the aimassist will enabled
            chance = 30, --  the chance the aimassist will be enabled
            usecircleradius = true, --  only locks on to people inside the circle
            disableoutsidecircle = false, --  if target is outside the circle it disables the aim assist
            
            firstperson = true, --  only enables when your on firstperson
            thirdperson = true, --  only enables when your on thirdperson
            
            usesmoothness = true, --  enable / disable smoothness
            smoothness_x = 0.042, --  how smooth the aim assist is on x
            smoothness_y = 0.045, --  how smooth the aim assist is on y 
    
            airsmoothness = true, --  uses airsmoothness when the target is in the air
            airsmoothness_x = 0.055, --  how smooth the aim assist is on x in target air
            airsmoothness_y = 0.055, --  how smooth the aim assist is on y in target air
            
            advanced = {
                wallcheck_v2 = false, --  loop checks if theres a wall infront of the target
                tickbased = false, --  executes on based tick changes
                stutter = 1, --  checks last tick if its high or not. if its high it disables for security reasons
                easingstyle = "linear", --  what smoothning method for aimassist to control motion 
                easingdirection = "out" --  what smoothning method for aimassist to control direction
            },
            ['triggerbot'] = {
                triggerbot = true, -- [ shoots AutoPredictionally once locked onto a target ]
                triggerbot_holdmode = true, -- [ only enables while keybind is being held down ]
                triggerbot_delay = 100, -- [ the delay it takes to shoots ( milliseconds ) ]
                triggerbotmousekey = "MouseButton3", -- [ mouse bind to enable triggerbot ]
                triggerbot_hotkey = false, -- [ set this to true to use keybord keys instead of mouse keys ]
                triggerbotkey = "q", -- [ uses this keybind to enable triggerbot ]
            },
            frameskip = {
                enabled = true, --  flicks to targets part
                power = 0.95, --  how much power it flicks to the target
                useprediction = false, --  adds prediction for flicking
                targetpart = {enabled = true, part = "head"}, --  flicks to the part
                keybind = "q" --  the keybind to activate the flick
            },
            shake = {
                enabled = true, --  enable / disable shake
                shake_x = 20, --  how much it shakes on x
                shake_y = 15, --  how much it shakes on y
                shake_z = 20, --  how much it shakes on z
                airshake = true, --  uses shake percentage when the target is in the air
                airpercentage = 50 --  how much percent it removed on shake when target is in the air. yes this can go over 300+
            },
            fov = {
                visible = false, --  if the circle is showing or not
                filled = true, --  if the circle is filled
                transparency = 0.5, --  circles transparency
                color = color3.fromrgb0, 0, 0, --  circle color
                radius = 70 --  how big the circle is
            },
            advanced = {
                target_bots = false, --  makes the silent and aimassist target the bot. risky!
                bot_path = "npc" --  gets the folder path where the bots are and uses it. in the current workspace folder
            }
        },
        pingprediction = {
            enabled = true, 
            automatic = false, 
            refreshrate = 0.2, 
            p200_inf = 0.1848, 
            p190_200 = 0.1813, 
            p180_190 = 0.1733, 
            p170_180 = 0.1693, 
            p160_170 = 0.1663, 
            p150_160 = 0.1574, 
            p140_150 = 0.1555, 
            p130_140 = 0.15, 
            p120_130 = 0.1411, 
            p110_120 = 0.1344, 
            p100_110 = 0.1315, 
            p90_100 = 0.13, 
            p80_90 = 0.1295, 
            p70_80 = 0.129, 
            p60_70 = 0.125, 
            p50_60 = 0.121, 
            p40_50 = 0.114, 
            p30_40 = 0.11, 
            p20_30 = 0.1, 
            p10_20 = 0.05
        },
        fov = {
            visible = false, --  if the circle is showing or not
            method = "mouse", --  what type of position the fov is gonna be mouse, screen
            filled = false, --  if the circle is filled
            transparency = 1, --  the circle transparency
            color = color3.fromrgb200, 200, 200, --  circle color
            offset = vector2.new0, 0, --  circle position + the offset
            stickyfov = false, --  puts the circle on target position
            radius = 10 --  how big the circle is
        },
        gunsettings = {
            enabled = true, --  enable / disable gunsettings
            methods = {
                fov = true, 
                range = true, 
                prediction = false, 
                hitchance = true, 
                airhitchance = true, 
                smoothness = false, 
                airsmoothness = true
            }, --  what things its gonna change like if fov is on it will change fov. using rangemode will overwrite instant fov changes.
            dynamic = {
                enabled = true, --  will smoothly changes the method
                time = 0.5, --  how much time its gonna take to complete the motion
                easingstyle = "linear", --  what smoothning method for method control motion 
                easingdirection = "out" --  what smoothning method for method control direction
            },
            far_activation = math.huge, --  keep at math.huge or 1/0
            medium_activation = 42, --  how far by using studs
            close_activation = 16, --  how far by using studs
            
            revolver = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            double-barrel sg = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            shotgun = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            tacticalshotgun = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            smg = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            silencer = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            rifle = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            ar = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            },
            ak47 = {
                fov = 19.5,     prediction = 0.135,     hitchance = 300,      airhitchance = 500,      smoothness = 0.043,     airsmoothness = 0.055,
                closefov = 10,  closeprediction = 0.121,closehitchance = 300, closeairhitchance = 500, closesmoothness = 0.06, closeairsmoothness = 0.075,
                medfov = 6,     medprediction = 0.124,  medhitchance = 300,   medairhitchance = 500,   medsmoothness = 0.04,   medairsmoothness = 0.065,
                farfov = 4,     farprediction = 0.127,  farhitchance = 300,   farairhitchance = 500,   farsmoothness = 0.03,   farairsmoothness = 0.045,
            }
        }
    },
    chatcommands = {
        enabled = true, --  enable / disable chat commands

        --  silent chatcommands
        silent_enabled = "!senabled", --  the command to enable / disable silent with false/true
        silent_prediction = "!spred", --  the command to change silent prediction with numbers
        silent_fov_size = "!sfov", --  the command to change silent fov with numbers
        silent_fov_show = "!sshow", --  the command to change silent with false/true
        silent_hitchance = "!schance", --  the command to change silent hitchance with numbers
        silent_legitmode = "!slegit", --  the command to change silent legitmode with false/true
        silent_blatantmode = "!sblatant", --  the command to change silent blatantmode with false/true

        --  aimassist chatcommands
        aimassist_enabled = "!aenabled", --  the command to enable / disable aimassist with false/true
        aimassist_prediction = "!apred", --  the command to change aimassist prediction with numbers
        aimassist_fov_size = "!afov", --  the command to change aimassist fov with numbers
        aimassist_fov_show = "!ashow", --  the command to change aimassist with false/true
        aimassist_smoothx = "!smoothx", --  the command to change aimassist smoothness x value with numbers
        aimassist_smoothy = "!smoothy", --  the command to change aimassist smoothness y value with numbers
        aimassist_shake = "!ashake", --  the command to change aimassist shake value with numbers
        
        --  misc chatcommands
        rejoinserver = "rejserv", --  the command to rejoin the server you are in
        randomserver = "rejoin.", --  the command to rejoin an random server
        
        saveconfig = "savecon", --  creates an txt that saves the table. example savecon configname
        loadconfig = "loadcon", --  loads an new table. example loadcon configname

        crashmode = ". ", --  the command to crash roblox
        crashmethod = "freeze" --  method to crash roblox freeze, shutdown
    },
    inventorysorter = {
        enabled = true, --  sorts the inventory tab
        keybind = "m", --  what keybind you enabled
        usefood = true, --  sorts also food
        slots = {
            "[double-barrel sg]", --  the first slot item
            "[revolver]", --  the second slot item
            "[tacticalshotgun]", --  the third slot item
            "[shotgun]", --  the fourth slot item
            "[katana]" --  the fifth slot item
            --  more can be added max is 10
        }, --  wich slots the guns are gonna be at starts up and goes down
    },
    panicmode = {
        enabled = true, --  enables the key for panicmode
        keybind = "p" --  the key that enables / disables the panicmode
    },
    f9cleaner = {
        enabled = true, --  enables the key for f9cleaner
        keybind = "n" --  the key that enables / disables the f9cleaner
    },
    fakespike = {
        enabled = true, --  enables the key for fakespike
        keybind = "j", --  the key that enables / disables the fakespike
        power = 500, --  how much ping it goes up to
        togglemode = true, --  you toggle the spike instead
        delay = 4, --  how much delay its untill the normal ping turns back
    },
    moddetection = {
        enabled = true, --  enables / disable mod detection
        delay = 3, --  makes it more legit for kick method
        rank = 200, --  detects if the users group rank is higher then the number
        method = "notification", --  what detection it sends kick, notification
    },
    memoryspoofer = {
        enabled = true, --  edits memory numbers on roblox gui
        delay = 1, --  the refreshrate on random numbers
        maximum = 980, --  the maximum it can generate
        lowest = 965 --  the lowest it can generate 
    },
    macro = {
        --  for speed macro
        speed_enabled = true, --  enable / disable macro 
        speed_delay = 1, --  the delay for the macro the higher the slower
        speed_keybind = "t", --  key to macro
        speed_holdmode = true, --  enables while only holding the keybind
        speed_macroabuse = true, --  this will bypass anti gun macro
        speed_thirdpersonv2 = false, --  this makes the macro much faster. but its only good for people that has under 60-
        speed_method = "firstperson", --  3 kinds of method thirdperson, firstperson, shift
        
        --  for emote macro 
        lay_emote = true, --  enable / disable lay_emote key
        lay_keybind = "g", --  key to execute lay
        greet_emote = true, --  enable / disable greet_emote key
        greet_keybind = "y", --  key to execute greet
        
        --  for noclip macro
        noclip_macro = true, --  enable / disable noclip key
        noclip_holdmode = true, --  enables while only holding the key
        noclip_keybind = "c", --  key to enable macro
        
        --  for rotation mode
        rotationmode = true, --  enable / disable rotation key
        degrees = 360, --  how much you turn
        rotationspeed = 5, --  how fast you turn
        rotation_keybind = "v" --  key to enable macro
    },
    desync = {
        enabled = true, --  enable / disable desync
        healthdeactivation = 7, --  disables the desync when your health is that low
        usedesynckey = true, --  use the keybind to enable / disable the desync desync key
        desynckey = "x", --  key to enable / disable desync
        holdmode = false, --  enables while only holding the key
        
        visualize = {enabled = true, radius = 30, color = color3.fromrgb255, 255, 255}, --  shows an dot where the velocity is
        method = "vel_standby", --  diffrent methods to change velocity vel_multi, custom_vel, vel_standby, vel_under, vel_zero 2 diffrent methods to change server position freeze_pos, slow_data
        power = 5, --  how much velocity the method is using. vel_standby, custom_vel, vel_zero and server position changer does not need this
        
        custom = {
            vel_x = 50, --  how much power is on x
            vel_y = 50, --  how much power is on y
            vel_z = 50 --  how much power is on z
        }
    },
    esp = {
        enabled = false,
            boxes = {
            enabled = false,
            filled = {
                enabled = false,
                color = color3.new1, 1, 1,
                transparency = 0.3
        }
    },
    bullettracers = {
        enabled = false,
        color = {
            gradient1 = color3.new1, 1, 1,
            gradient2 = color3.new0, 0, 0
    },
                duration = 1,
                fade = {
                    enabled = false,
                    duration = 0.5
                }
            },
            bulletimpacts = {
                enabled = false,
                color = color3.new1, 1, 1,
                duration = 1,
                size = 1,
                material = "smoothplastic",
                fade = {
                    enabled = false,
                    duration = 0.5
                }
            },
            onhit = {
                enabled = false,
                effect = {
                    enabled = false,
                    color = color3.new1, 1, 1
                },
                sound = {
                    enabled = false,
                    volume = 5,
                    value = "skeet"
                },
                chams = {
                    enabled = false,
                    color = color3.new1, 1, 1,
                    material = "forcefield",
                    duration = 1
                }
            },
            world = {
                enabled = false,
                fog = {
                    enabled = false,
                    color = color3.new1, 1, 1,
                    end = 1000,
                    start = 10000
                },
                ambient = {
                    enabled = false,
                    color = color3.new1, 1, 1
                },
                brightness = {
                    enabled = false,
                    value = 0
                },
                clocktime = {
                    enabled = false,
                    value = 24
                },
                worldexposure = {
                    enabled = false,
                    value = -0.1
                }
            },
            crosshair = {
                enabled = false,
                color = color3.new1, 1, 1,
                size = 10,
                gap = 2,
                rotation = {
                    enabled = false,
                    speed = 1
                }
        }

