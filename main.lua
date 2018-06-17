-----------------------------------------------------------------------------------------
-- Name: Aliya Satica
-- Class Code: ICS3C
-- Title: Animating Images
--

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background color
display.setDefault("background", 153/255, 204/255, 255/255)
 
 -- Creating Image
local jordan = display.newImageRect("Images/Jordan.png", 100, 140) 

-- setting y and x value
jordan.x = 100
jordan.y = 125

-- the coordinates of where the jordan image will be going 
transition.to(jordan, {x=500, y=600})

-- set the image to be transperant 
jordan.alpha = 0 

local function Movejordan(event)

	-- add the scroll speed to the x-value of jordan
	jordan.x = jordan.alpha + 0.03

	-- change the transperency of the jordan every time it moves so that it fades out
	jordan.alpha = jordan.alpha + 0.02
end

-- Move jordan will be called over again
Runtime:addEventListener("enterFrame", Movejordan)

 -- Creating Image
local rabbit = display.newImageRect("Images/Rabbit.png", 100, 120)

-- setting y and x value
rabbit.x = 1000
rabbit.y = 800

-- the coordinates of where the rabbit image will be going 
transition.to(rabbit, {x=400, y=300})

-- Creating Image
local mickey = display.newImageRect("Images/Mickey.png",200 ,400)


-- setting y and x value
mickey.x = 500
mickey.y = 23

-- the coordinates of where the mickey image will be going 
transition.to(mickey, {x=300, y=600})

-- create the text object at position
textObject = display.newText ("Mouving Images", 30, 50, nil, 50)

-- anchor the text from the top left corner
textObject.anchorX = 0
textObject.anchorY = 0

-- set the color of the text object
textObject:setFillColor(1, 3, 0)



