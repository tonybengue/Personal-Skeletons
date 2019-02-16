-- Retourne l'angle entre deux points
function math.angle(x1, y1, x2, y2) return math.atan2(y2 - y1, x2 - x1) end

-- Collision entre deux objets
function collide(a1, a2)
  if (a1 == a2) then return false end
  local dx = a1.x - a2.x
  local dy = a1.y - a2.y
  if (math.abs(dx) < a1.image:getWidth() + a2.image:getWidth()) then
    if (math.abs(dy) < a1.image:getHeight() + a2.image:getHeight()) then
      return true
    end
  end
  return false
end


