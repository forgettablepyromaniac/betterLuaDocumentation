local noAchivements = false

function onCreatePost()
    makeLuaText("noAchieve", "Achievements Enabled", screenWidth, 0, 4)
    setTextColor("noAchieve", "FF0000")
    doTweenColor("noAchieveColourTween", "noAchieve", "FFFFFF", 1.5/playbackRate, "linear")
    screenCenter("noAchieve", 'x')

    local uhOhYoureWrongC = false
    local uhOhYoureWrongM = false
    local fuckingCharting = getPropertyFromClass('states.PlayState', 'chartingMode')
    local fuckingScrollSpeed = getProperty('songSpeed')
    if fuckingScrollSpeed < scrollSpeed then
        if getProperty('songSpeedType') == "constant" then
            uhOhYoureWrongC = true
        else
            uhOhYoureWrongM = true
        end
    end

    local conditions = {
        {condition = botPlay, message = "Botplay is enabled."},
        {condition = practice, message = "Practice Mode is enabled."},
        {condition = fuckingCharting, message = "Chart Editor Mode is Enabled."},
        {condition = playbackRate < 1, message = "Playback Rate < 1."},
        {condition = healthGainMult > 1 and healthLossMult < 1, message = "Health Multiplier > 1 & Drain Multiplier < 1."},
        {condition = healthGainMult > 1, message = "Health Multiplier > 1."},
        {condition = healthLossMult < 1, message = "Drain Multiplier < 1."},
        {condition = uhOhYoureWrongC, message = "Constant Scroll Speed < Default Scroll Speed of "..scrollSpeed..". ("..fuckingScrollSpeed..")"},
        {condition = uhOhYoureWrongM, message = "Multiplicitive Scroll Speed < 1x. ("..fuckingScrollSpeed / scrollSpeed.."x)"}, -- I DONT KNOW HOW TO GET THE CLIENT PREF OKAY :(
        {condition = luaDebugMode, message = "Debug Mode is Enabled."}
    }

    for i, condition in ipairs(conditions) do
        if condition.condition then
            setTextString("noAchieve", "Achievements Disabled: "..condition.message)
            if isStoryMode then
                setPropertyFromClass('states.PlayState', 'campaignMisses', getPropertyFromClass('states.PlayState', 'campaignMisses') + 1)
            end
            noAchivements = true
            break
        end
    end

    if noAchivements then
        addLuaText("noAchieve")
    end
end

function onSongStart()
    doTweenAlpha("noAchieveTweenOut", "noAchieve", 0, 60/curBpm, "linear")
end

function onEndSong()
    if not noAchivements then
        -- add aditional code here for unlocking and checking for achievements.
    end
end