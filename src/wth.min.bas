    0 dims(20,3):forj=1to20:fork=1to3:reads(j,k):next:next:w=int(rnd(1)*20+1):p=0
    1 poke53280,0:poke53281,0:data2,5,8,1,3,10,2,4,12,3,5,14,1,4,6,5,7,15,6,8,17
    2 poke646,7:printchr$(147):print"wumpus, you're sleeping. hunters are creeping";
    3 h=int(rnd(1)*20+1):if(s(w,1)=h)or(s(w,2)=h)or(s(w,3)=h)then6:data1,7,9,8,10,18
    4 print".";:ifh=wthenprint:print"hunter stepped on you. you killed him.":p=p+1:goto3
    5 goto3:data2,9,11,10,12,19,3,11,13,12,14,20,4,13,15,6,14,16,15,17,20,7,16,18
    6 print:print"you feel someone is near. check room:  ";s(w,1);s(w,2);s(w,3);:inputr
    7 if(r<>s(w,1))and(r<>s(w,2))and(r<>s(w,3))thenprint"head-wall collision":goto9
    8 ifr=hthenprint"you killed the hunter!":p=p+1:w=r:goto3:data9,17,19,11,18,20,13
    9 print"hunter found you! you've been gutted! you killed";p;"hunters.":data16,19
