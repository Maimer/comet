def distance(point1, point2)
  total = 0
  x = (point1[0] + point2[0]).abs
  y = (point1[1] + point2[1]).abs
  total = Math.sqrt((x * x) + (y * y)).round(3)
end
