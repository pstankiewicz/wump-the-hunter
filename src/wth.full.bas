   10 dim s(20,3): rem labirynth
   15 rem fill labirynth connections with data from lines 120-170
   20 for j = 1 to 20
   30 : for k = 1 to 3
   40 :   read s(j,k)
   50 : next k
   60 next j
   70 w=int(rnd(1)*20+1): rem random wumpus position
   80 p=0: rem initial score
   85 rem border and background black, font yellow
   90 poke 53280,0
  100 poke 53281,0
  110 poke 646,7
  115 rem room connections in dodecahedron
  120 data 2,5,8,1,3,10,2,4,12,3,5,14,1,4
  130 data 12,3,5,14,1,4,6,5,7,15,6,8,17
  140 data 1,7,9,8,10,18,2,9,11,10,12,19
  150 data 3,11,13,12,14,20,4,13,15,6,14
  160 data 20,4,13,15,6,14,16,15,17,20,7
  170 data 16,18,9,17,19,11,18,20,13
  180 printchr$(147): rem clear screen
  190 print"wumpus, you're sleeping. hunters are creeping";
  200 h=int(rnd(1)*20+1): rem hunter position
  205 rem check if hunter is near wumpus
  210 if (s(w,1)=h) or (s(w,2)=h) or (s(w,3)=h) then goto 300
  215 rem progres dot :)
  220 print".";
  225 rem check if hunter is in the same room that wumpus
  230 if h=w then goto 250
  240 goto 200
  245 rem hunter stepped on wumpus, so wumpus kills him automagically
  250 print:print"hunter stepped on you. you killed him."
  255 rem score up
  260 p=p+1
  270 goto 200
  295 rem hunter is near, wumpus needs to check one of three rooms
  300 print:print"you feel someone is near. check room:  ";s(w,1);s(w,2);s(w,3);
  310 input r
  315 rem lets check if wumpus entered proper room number
  320 if (r<>s(w,1)) and (r<>s(w,2)) and (r<>s(w,3)) then goto 390
  325 rem wumpus checked correct room and killed the hunter
  330 if r=h then goto 350
  340 goto 400
  350 print"you killed the hunter!"
  355 rem score up
  360 p=p+1
  365 rem new wumpus position
  370 w=r
  380 goto 200
  385 rem wrong room
  390 print"head-wall collision"
  395 rem killed by hunter
  400 print"hunter found you! you've been gutted! you killed";p;"hunters."
