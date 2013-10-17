-- Import global class object
require("Utility.Core")

-- Make a background
local bgrd = display.newRect(0, 0, 720, 1280)

local gradient = graphics.newGradient({100, 200, 255}, {50, 100, 255})

bgrd:setFillColor(gradient)

-- Initiate 'fonter' and add fonts
_G["Fonter"] = require("Utility.Fonter")
Fonter.addFont("Bebas", {Win = "Bebas Neue", Android = "Fonts/BebasNeue", Mac = "Bebas Neue", iOS = "Bebas Neue"})

-- Improt storyboard
local storyboard = require("storyboard")

-- Add Buttons that wil lead to other scenes
buttons = require("UI.TabButtons")
storyboard.stage:insert(buttons)

storyboard.gotoScene("Scenes.Overview", {time = 1000, effect = "fade"})