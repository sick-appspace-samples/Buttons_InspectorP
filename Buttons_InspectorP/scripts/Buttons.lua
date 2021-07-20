
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
