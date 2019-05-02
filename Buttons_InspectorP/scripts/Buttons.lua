--[[----------------------------------------------------------------------------

  Application Name:
  Buttons_InspectorP

  Summary:
  Using the buttons on InspectorP devices.

  How to Run:
  A connected InpspectorP device is necessary to run this sample.
  This script using the button events 'OnPressed' and 'OnReleased' from two buttons
  of the InspectorP. Each event will call the according function. Starting this sample
  is possible either by running the app (F5) or debugging (F7+F10). When it is running,
  the results can be seen when pressing the buttons on the device.

  More information can be found in the Tutorial
  "Audio-Visual Feedback InspectorP"

------------------------------------------------------------------------------]]

--Start of Global Scope---------------------------------------------------------

--luacheck: globals gEnterButton gSkipButton

-- Create buttons, must be global
gEnterButton = Button.create('BTN_ENTER')
gSkipButton = Button.create('BTN_SKIP')

-- Create beeper
local beeper = Beeper.create()

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

--Function is called when the 'OnPressed' event was raised
local function skipButtonPressed()
  beeper:beep(25, 200, 50)
  print('Skip button is was pressed')
end
gSkipButton:register('OnPressed', skipButtonPressed)

--Function is called when the 'OnReleased' event was raised
local function enterButtonReleased()
  beeper:beep(1, 500, 50)
  print('Enter button was released')
end
gEnterButton:register('OnReleased', enterButtonReleased)

--End of Function and Event Scope--------------------------------------------------
