## Setting types:
bool - True or False.  
int - A number with no decimal place.  
float - A number with a decimal place.  
percent - A float that is represented as a percent (0.5 would be 50%, 1.1 would be 110%).  
string - Text instead of numbers/true or false. Requires "Options".  
keybind - Allows setting up of a custom keybind for specific actions (often a dodge or something similar).  

## Various Setting requirements:
name - The name of the setting in the options menu.  
description - The description of the setting in the options menu.  
type - Described above.  
save - The saveTag to recall in Lua when calling getModSetting().  
value - The default value that the setting will start at.  

## Number specific:
*(This includes Percentages and Floats)*  
min - The minimum value a given number can be.  
max - The maximum value a given number can be.  
step - The amount that the value will change by when pressing Left/Right.  

## Float specific:  
scroll - how fast the scroll will be when *holding (not pressing)* left/right. *(This includes Percentages)*  
decimals - how many decimal places the number will be (generally at least 1) *(This doesn't work with Percentages)*  

## String specific:
options - A list of avalible options for this string setting.  
format - The string's formatting. %v represents the string from avalible options.  

## Keybind specific:
keyboard - The default key on the keyboard for your keybind.  
gamepad - The default button on a controller for your keybind.  
List of avalible keys [here](../allPossibleKeys.html).

*An example of a settings.json file can be found [here](examples/settings.json).*  
After setting up your json properly and putting it in **/yourMod/data/**, you can find them in the mods folder's options button.

When getting a setting in lua, you call getModSetting(saveTag), where saveTag is the name of the setting under the "save" part of the json.  
<u>Examples from the above settings.json:</u>

debugPrint(getModSetting("testBool")) will print true or false depending on player's choice.

debugPrint(getModSetting("testInt")) will print the integer.

debugPrint(getModSetting("testFloat")) will print the float.

debugPrint(getModSetting("testPercent")) will print the float (0 being 0%, 1 being 100%, 0.5 being 50%, ect).

debugPrint(getModSetting("testString")) will return either "Game", "HUD", or "Other" depending on player choice.  
*Notice that this ignores whatever is in Format, and only returns one of the valid options.*

debugPrint(getModSetting("testBind"))returns a list containing a map for both "gamepad" and "keyboard".  
*If you want just one or the other, you should be using*  
**debugPrint(getModSetting("testBind")["keyboard"])** *or* **debugPrint(getModSetting("testBind")["gamepad"])**