-----------------------------------------------------------------------------------------
--
-- Created on: May 10, 2019
-- Created by: Aden Rao
--
-- This program lets a user enter a number in a text field and what this does is it calculates the value of pi by counting the iterations of it based on what the user entered in the text field.
--
-----------------------------------------------------------------------------------------

-- hides status bar
--------------------
display.setStatusBar(display.HiddenStatusBar)
--------------------

-- Green background color
-------------------
display.setDefault("background", 22/255, 219/255, 15/255)
-------------------

-- Pi image
-------------------
local piImage = display.newImageRect( "assets/pi.png", 250, 250 )
piImage.x = display.contentCenterX
piImage.y = display.contentCenterY - 175
piImage.id = "pi image"
-------------------

-- Text field for user to enter a number
-------------------
local userNumberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 125, 300, 50 )
userNumberTextField.id = "userNumberTextField"
-------------------

-- Pi image
-------------------
local enrteranumber = display.newImageRect( "assets/enteranumber.png", 350, 600 )
enrteranumber.x = display.contentCenterX
enrteranumber.y = display.contentCenterY - 50
enrteranumber.id = "enter a number"
-------------------

-- Calculate button 
-------------------
local calculateButton = display.newImageRect( "assets/button.png", 200, 85 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 35
calculateButton.id = "calculate button"
-------------------

-- Arrow image
-------------------
local arrowImage = display.newImageRect( "assets/arrow.png", 100, 85 )
arrowImage.x = display.contentCenterX
arrowImage.y = display.contentCenterY + 185
arrowImage.id = "arrow image"
-------------------

-- Value of pi text
local valueOfPiTextField = display.newText( "Value of pi", display.contentCenterX, display.contentCenterY + 245, native.systemFont, 25 )
valueOfPiTextField.id = "valueOfPi textField"
valueOfPiTextField:setFillColor( 0 )
-------------------

--Calculate Function
-----------------------------------------------------------------------
local function calculateButtonTouch ( event )

local ittereations
local mathNumbers
local answer

answer = 0
ittereations = tonumber(userNumberTextField.text) -- Converts userNumberTextField.text to a number instead of a string
mathNumbers = -1 

--Loop for the ittereations and to calculate the value of pi
for math = 1, ittereations, 1 do
	mathNumbers = mathNumbers*-1
	answer = answer + 4/(2*math-1)*mathNumbers
	valueOfPiTextField.text = ("Answer: "..answer)

end 

-- If statemnent to tell the user to enter a positive number if they enter a negative one.
if tonumber(userNumberTextField.text) < 0 then
	valueOfPiTextField.text = ("Enter a positive number")
end
end
-----------------------------------------------------------------------

--Event listener for the calculate button
calculateButton:addEventListener( "touch", calculateButtonTouch )
