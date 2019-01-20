--Cette ligne permet d'afficher des traces   dans la console pendant l'éxécution
io.stdout:setvbuf('no')
-- empecher love d'adoucir le contour des images, indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")
-- DEBUG pas à pas dans Zerobrane
if arg[#arg] == "-debug" then require("modebug").start() end
--[[
lf = love.filesystem
ls = love.sound
la = love.audio
lp = love.physics
lt = love.thread
li = love.image
lg = love.graphics
--]]

function love.load() 
  --[[
  -- background
  love.graphics.setBackgroundColor(0.2, 0.7, 1)
  -- Souris
  love.mouse.setVisible(false)   
  -- taille police
  love.graphics.setFont(love.graphics.newFont(11)) 
  -- Dimensions ecran
  love.window.setMode(800, 600)
  -- Plein ecran
  love.window.setFullscreen(true)
  LARGEUR_ECRAN = love.graphics.getWidth() 
  HAUTEUR_ECRAN = love.graphics.getHeight() 
--]]
end

function love.update(dt) -- love.update.(dt)  fonction appelée une fois par frame ( vitesse de rafraichissement par secondes ) faire évoluer les variables, mise à jour de l'état du jeu dt = tps en secondes puis la derniere frame (60x/s)
  local left = love.keyboard.isDown("q")
  local right = love.keyboard.isDown("d")
  local up = love.keyboard.isDown("z")
  local space = love.keyboard.isDown("space")
end


function love.draw() -- contient les données affichées à l'écran 60x/s comme love.update(dt)
end

function debug()
  --DEBUG
  local sDebug = "Debug :"
  sDebug = sDebug.." angle ="..tostring(ship.angle)
  sDebug = sDebug.." vx ="..tostring(ship.vx) -- afficher la vitesse x
  sDebug = sDebug.." vy ="..tostring(ship.vy) -- afficher la vitesse y
  love.graphics.print(sDebug, 0, 0)  -- afficher le texte à l'ecran  de debug
end

function love.keypressed(key)
  -- sortie écran
  if key == "escape" then love.event.push("quit") end

  --[[
  -- affiche ou fait disparaitre le curseur
  if key =="v" then
    local state = not love.mouse.isVisible()   -- the opposite of whatever it currently is
    love.mouse.setVisible(state)
  end love.mouse.isVisible() 
  -- affiche du texte avec la couleur
  if key ==  "r" then
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.print("This is a pretty lame example.", 10, 200)
  end
  --]]
end

