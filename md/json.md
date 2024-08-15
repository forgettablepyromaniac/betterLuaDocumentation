DEFAULT stage JSON:  

	directory: "",
	defaultZoom: 0.9,
	isPixelStage: false,
	stageUI: "normal",

	boyfriend: [770, 100],
	girlfriend: [400, 130],
	opponent: [100, 100],
	hide_girlfriend: false,

	camera_boyfriend: [0, 0],
	camera_opponent: [0, 0],
	camera_girlfriend: [0, 0],
	camera_speed: 1

EXPLANATION:  
`Directory`: Where files for this stage should be found by default.  
eg. `directory: "week1",` would have all assets for the stage check in `"week1/images/"` instead of `"shared/images/"`  
`defaultZoom`: The value that *defaultCamZoom* will be set to upon loading into the stage.  
`isPixelStage`: Turns off antialiasing for everything and checks for "-pixel" suffixed entries.  
`stageUI`: will search for UI-related stuff in this folder. *Will automatically be set to "pixel" if isPixelStage is true.*  
`boyfriend, girlfriend, opponent`: All the offsets are for where each character stands.  
`hide_girlfriend`: is litteraly just `setProperty("gf.visible", hide_girlfriend)`.  
`camera_boyfriend, camera_opponent camera_girlfriend`: Camera offsets for every character.  
`camera_speed`: The value that *cameraSpeed* will be set to upon loading into the stage.  

DEFAULT gfDanceTitle JSON

	"titlex":-150,
	"titley":-100,
	"startx":100,
	"starty":576,
	"gfx":512,
	"gfy":40,
	"backgroundSprite":"",
	"bpm":102

EXPLANATION:  
`"titlex"`: Title Bumper's x Offset  
`"titley"`: Title Bumper's y Offset  
`"startx"`: Start Text x Offset  
`"starty"`: Start Text y Offset  
`"gfx"`: GF's x Offset  
`"gfy"`: GF's y Offset  
`"backgroundSprite"`: The background image (that will be the backdrop to everything else in front of it)  
`"bpm"`: Should be the BPM of the titlescreen song (to keep everything on beat)

DEFAULT pack JSON

	"name": 'Unknown Mod',
	"description": 'No description provided.',
	"restart":false,
	"runsGlobally": false,
	"color": [170, 0, 255],
	"discordRPC": "863222024192262205",
	"iconFramerate": 10

`"name"`: Obvious.  
`"description"`: Also pretty obvious, but feel free to use \n to make a new line :)  
`"restart"`: Makes Psych Engine reload from the start.  
`"runsGlobally"`: Makes scripts and the like run on any mod.  
`"color"`: [R, G, B] list (min 0, max 255), BG colour when selected.  
`"discordRPC"`: The discord RPC code for the mod. (Explanation [here](../discordRPC.html)).  
`"iconFramerate"`: The framerate the Icon will run at (Explanation [here](../animatedpackicons.html)).