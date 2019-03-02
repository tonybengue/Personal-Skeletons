--Cette ligne permet d'afficher des traces   dans la console pendant l'éxécution
io.stdout:setvbuf('no')
-- empecher love d'adoucir le contour des images, indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")
-- DEBUG pas à pas dans Zerobrane
if arg[#arg] == "-debug" then require("modebug").start() end

function love.load()
  
end

function love.update(dt) 


end


function love.draw() -- contient les données affichées à l'écran 60x/s comme love.update(dt)
end

function debug()
end

function love.keypressed(key)
  -- sortie écran
  if key == "escape" then love.event.push("quit") end
end

