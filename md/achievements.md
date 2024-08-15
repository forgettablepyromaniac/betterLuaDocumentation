## Achievement requirements:
name - The name of the Achivement that will appear in the Awards section.  
description - The description of the achievement, often flavour text or how to obtain it.  
save - The saveTag to recall in Lua when calling achievement-related functions.  
hidden - Whether or not the achievement will appear in the Awards section before its unlocked.  
maxScore - Shows a scorebar with the number here as the maximum.  
maxDecimals - how many decimal places will be shown for the progress counter (NOT maxScore).

## Important notes:
having a save variable named `weekJSON + "_nomiss"` will have it automatically be handled by Psych under the requirements of:  
Hard difficulty  
Story Mode  

the saveTag of the achievement will be the name of the image it looks for when it comes to the unlock image.  
An example being an achievement with the saveTag of `"myWeek_nomiss"` will look for `images/achievements/myWeek_nomiss.png`

*An example of an achievements.json file can be found [here](examples/achievements.json).*  
After setting up your json properly and putting it in **/yourMod/data/**, you can find them in the Awards section.

## Functions

isAchievementUnlocked(saveTag) will return true or false if the achivement "saveTag" is unlocked.  
unlockAchievement(saveTag) will unlock the achievement "saveTag".  
getAchievementScore(saveTag) returns the current score of an achievement (Float).  
setAchievementScore(saveTag, value, saveIfNotUnlocked) will set the score of "saveTag" to value. Will only save after the song is over if "saveIfNotUnlocked" is true.

A simple-to-edit lua file I made for custom achievements can be found [here](examples/sampleAchieve.lua).