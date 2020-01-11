require "turtle"
size(800,700)
function round(n)
  return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

local x, y = 0, -170
local side = 180

python = 4
java = 5
javascript = 1
c_plotek = 2
php = 4

tab = {python, java, javascript, c_plotek, php}
tab2 = {python, java, javascript, c_plotek, php}
tab3 = {'Python', 'Java', 'JavaScript', 'C#', 'PHP'}
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
posn(x, -200)
posn()

 font(18)
 text("Popularność top 5 języków programowania w 2019r", 0, -250, -100)

--cyfry
font(10)
for i = thebiggest+1, 0, -1
  do
      posn(-300, (-i*50)+246)
      text(i)
     wait(1)
  end

--osie
posn(-280,250)
move(0,-(thebiggest*63))
wait(1)
posn(-280,250)
move(550,0)
wait(1)
hide()

--kreski
for i = 0, 4
do
  posn(-240+i*100,250)
  move(0,5)
  move(0,-10)
  posn(-240+i*100,265)
  text(tab3[i+1])
  wait(1)
end

--linie
for i=1, thebiggest+1
do
posn(-280,250-i*50)
wait(1)
for j=1, 55
  do
    move(1,0)
    posn(-280+10*j,250-i*50)
  end
end

--wykres
posn(-280,250)

move(40,(-1)*tab2[1]*50)
wait(1)
for i = 2, 5
do
  x = tab2[i-1]-tab2[i]
  move(100,(x*50))
  wait(1)
end

wait()
wait()