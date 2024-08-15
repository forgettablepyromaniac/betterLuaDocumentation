Animated pack icons are possible!

`totalFrames = Math.floor(bmp.width / 150) * Math.floor(bmp.height / 150);`  
`icon.animation.add("icon", [for (i in 0...totalFrames) i], iconFps);`

It takes the width and height of the image and cuts it up into 150 pixel chunks, so to do this, you have to make the pack.png a multiple of 150x150. It can be 150x300, 300x150, 300x300, whatever, as long as both end in a multiple of 150.

Therefore, these are all valid animated pack.png images (and show the order as 1, 2, ect.):  
![150x300](img/twoFrames.png)
![450x150](img/threeFrames.png)
![300x300](img/fourFrames.png)  

