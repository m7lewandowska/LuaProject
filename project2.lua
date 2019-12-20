require "turtle"
size(800,700)
function round(n)
  return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

local x, y = 0, -170
local side = 180

chrzescijanie = 10
protestanci = 20
muzumanie = 22
hindusi = 15
niezrzeszeni = 30

suma_religi = chrzescijanie + protestanci + muzumanie + hindusi + niezrzeszeni

chrzescijaniepro = (chrzescijanie/suma_religi)*100
protespro = (protestanci/suma_religi)*100
muzupro = (muzumanie/suma_religi)*100
hindpro = (hindusi/suma_religi)*100
niepro = (niezrzeszeni/suma_religi)*100

tab_procenty = {chrzescijaniepro, protespro, muzupro, hindpro, niepro}

obrot = {}
tab2 = {chrzescijanie, protestanci, muzumanie, hindusi, niezrzeszeni}
tab3 = {"chrzescijanie", "protestanci", "muzumanie", "hindusi", "niezrzeszeni"}
list_of_colors = {"#E53935","#FFB300","#8E24AA", "#7CB342", "pink"}

tab = {}
tab[1] = chrzescijanie/suma_religi
tab[2] = protestanci/suma_religi
tab[3] = muzumanie/suma_religi
tab[4] = hindusi/suma_religi
tab[5] = niezrzeszeni/suma_religi

show()

posn(-side, -side)
posn(x, y)
posn()

local angle = 1 --Szybkość
--local radius = 3 -- promien kola
local m = (180*3)/math.pi

-- TEXT --
-- -150 szerokosc
-- -70 wysokosc
--local shot = snap() -- store snapshot
--for angle = 0, 360, 6 do
 -- undo(shot) -- restore saved snapshot to clear screen below -angle <- zero
 font(18)
 text("Zawarcie związku małżeńskiego wg religii świata", 0, -250, -70)

 -- wait(0.01)
--end

--DRAWING CIRCLE--
for i = 1, 360
  do
    turn(angle)
    move(3)
  end
hide()
--

--ROTATING ANGLE
for i=1,5,1
  do
    
    obrot[i] = (360 * tab[i])
  end
--

  turn(90)
  move(m)
  turn(180)
  for i = 1, 5, 1
  do
  --fill(list_of_colors[i],-2,-3)
  turn(obrot[i])
  wait(1)
  move(m)
  move(-m)
  
  turn(-(obrot[i]/2))
  move(50)
  fill(list_of_colors[i])
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
  --text(round(chrzescijaniepro).. "%", 0, 0, 0)
  wait(1)
end
  
 
wait()