require "turtle"
size(800,700)
function round(n)
  return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

local x, y = 0, -170
local side = 180

chrzescijanie = 5
protestanci = 3
muzumanie = 2
hindusi = 4
niezrzeszeni = 6

tab = {chrzescijanie, protestanci, muzumanie, hindusi, niezrzeszeni}
tab2 = {chrzescijanie, protestanci, muzumanie, hindusi, niezrzeszeni}
tab3 = {"chrzescijanie", "protestanci", "muzumanie", "hindusi", "niezrzeszeni"}
list_of_colors = {"#E53935","#FFB300","#8E24AA", "#7CB342", "pink"}

function bubbleSort(A)
  local itemCount=#A
  local hasChanged
  repeat
    hasChanged = false
    itemCount=itemCount - 1
    for i = 1, itemCount do
      if A[i] < A[i + 1] then
        A[i], A[i + 1] = A[i + 1], A[i]
        hasChanged = true
      end
    end
  until hasChanged == false
end

bubbleSort(tab)

thebiggest = tab[1]

posn(-side, -side)
posn(x, y)
posn()

 font(18)
 text("Zawarcie związku małżeńskiego wg religii świata", 0, -250, -100)


font(10)
for i = thebiggest+1, 0, -1
  do
      posn(-300, (-i*50)+246)
      text(i)
      wait(1)
  end

posn(-280,250)
move(0,-(thebiggest*63))
wait(1)
posn(-280,250)
move(450,0)
wait(1)
hide()

posn(-250,250)
for i =1, 5
do
  move(0,tab2[i]*(-50))
  move(30,0)
  move(0,tab2[i]*50)
  wait(1)
  fill(list_of_colors[i],-1,-1)
  move(50,0)
  wait(1)
end

--LEGEND--
for i=1, 5
do
  posn(200,(i*30)-50)
  move(10,0)
  move(0,10)
  move(-10,0)
  move(0,-10)
  fill(list_of_colors[i],1,1)
  posn(220,(i*30)-53)
  text(tab3[i])
  wait(1)
end

for i=1, thebiggest+1
do
posn(-280,250-i*50)
wait(1)
for j=1, 45
  do
    move(1,0)
    posn(-280+10*j,250-i*50)
  end
end
wait(1)
hide()

wait()