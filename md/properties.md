This is **NOT** every single property, just every property that can actually be found useful that isn't already a variable given out in lua.  
I doubt you want to edit [boyfriendMap](https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/states/PlayState.hx#L99).

**VARIABLENAME**  <u>(Warning (if applicable))</u>  
*DESCRIPTION*  
VARIABLETYPE  
(DEFAULT VALUE (if it's code, it's written in haxe)  
<hr/><br>

**songSpeedType**  
*The current scrollSpeed's type*  
String  
("Constant" or "Multiplicative")

**noteKillOffset**  
*How far up a note will go before it causes a miss*  
Float  
(`Math.max(Conductor.stepCrochet, 350 / songSpeed * playbackRate);`)

**storyPlaylist**  
*Contains (in order), the remaining songs to play in a given week.*  
Array of Strings  
(You're in song "Bopeebo" of default week1, the array is: `["Fresh", "Dadbattle"]`.)

**camZooming**  
*When False, disables camera zoom on section hit.*  
Boolean  
(Is false until the opponent hits a note, then true. Vestiage of old FNF camera issues?)

**camZoomingMult**  
*Camera zooming on section hit gets multiplied by this number.*  
Float  
(1)

**botplaySine**  
*Sets the alpha of the botplayTxt*  
Float  
(`1 - Math.sin((Math.PI * botplaySine) / 180);`)

**cameraSpeed**
*camGame's movement speed is multiplied by this number.*  
Float  
(1)

**defaultCamZoom**
*camGame's target zoom level.*  
Float  
(stageData.defaultZoom)

**deathCounter**  
*How many times the player has blueballed.*  
Int  
(0)

**singAnimations**  
*The sing animations for each note. If you're weird, you can change them ig.*  
Array of Strings  
(`['singLEFT', 'singDOWN', 'singUP', 'singRIGHT']`)

**boyfriendCameraOffset, opponentCameraOffset, girlfriendCameraOffset** <u>(IT IS BETTER TO CUSTOMIZE THIS WITH A STAGE JSON!)</u>  
*The offset for each character's camera when the camera is panned toward them.*  
Array of Floats  
(`[0, 0]`)  

**campaignScore**  
*Total score for story mode.*  
Int  
(0)

**campaignMisses**  
*Total misses for story mode.*  
Int  
(0)

**skipCountdown**  
*Allows the skipping of "3, 2, 1, Go!" if true.*  
Bool  
(False)

**chartingMode**  
*Whether or not the player is in charting mode.*  
Bool  
(False)

