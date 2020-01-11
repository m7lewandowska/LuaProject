require "turtle"
size(800,700)
function round(n)
  return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

local x, y = 0, -170
local side = 180

python = 10
java = 20
javascript = 22
c_plotek = 15
php = 20

summary = python + java +  javascript + c_plotek + php

--Now we compute percentage share of each programming language in total popularity of top 5 languages in 2019
python_popularity = (python/summary)*100
java_popularity = (java/summary)*100
javascript_popularity = (javascript/summary)*100
c_plotek_popularity = (c_plotek/summary)*100
php_popularity = (php/summary)*100

tab_procenty = {python_popularity, java_popularity, javascript_popularity, c_plotek_popularity, php_popularity}
obrot = {}
tab2 = {python, java, javascript, c_plotek, php}
tab3 = {'Python', 'Java', 'JavaScript', 'C#', 'PHP'}
list_of_colors = {"#E53935","#FFB300","#8E24AA", "#7CB342", "pink"}

tab = {}
tab[1] = python/summary
tab[2] = java/summary
tab[3] = javascript/summary
tab[4] = c_plotek/summary
tab[5] = php/summary
show()

posn(-side, -side)
posn(x, y)
posn()

local angle = 1 
local m = (180*3)/math.pi

 font(18)
 text("Popularność top 5 języków programowania w 2019r", 0, -250, -70)


--DRAWING CIRCLE
for i = 1, 360
  do
    turn(angle)
    move(3)
  end
hide()

--ROTATING ANGLE
for i=1,5,1
  do
    obrot[i] = (360 * tab[i])
  end

  turn(90)
  move(m)
  turn(180)
  for i = 1, 5, 1
  do
  turn(obrot[i])
  wait(1)
  move(m)
  move(-m)
  --malowanie kresek
  turn(-(obrot[i]/2))
  --pncl(colr(list_of_colors[i]))
  move(50)
  --pncl(colr("black"))
  fill(list_of_colors[i],1,1)
  move(-50)
  turn(obrot[i]/2)
  
end

  wait(1)
  posn()
  font(10)
  
  for i=1, 5
do
  posn(-380,(i*30)-50)
  move(10,0)
  move(0,10)
  move(-10,0)
  move(0,-10)
  fill(list_of_colors[i],1,1)
  posn(-360,(i*30)-53)
  text(tab3[i].." ".. round(tab_procenty[i]).. "%")
  wait(1)
end
  
 
wait()