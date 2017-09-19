%8 Queens Problem in Prolog

do:-
permutation([1,2,3,4,5,6,7,8],[A,B,C,D,E,F,G,H]),
%Diagonals-1
AA is 1-A,
BB is 2-B,
CC is 3-C,
DD is 4-D,
EE is 5-E,
FF is 6-F,
GG is 7-G,
HH is 8-H,
AA \=BB,
AA \=CC,
AA \=DD,
AA \=EE,
AA \=FF,
AA \=GG,
AA \=HH,
BB \=CC,
BB \=DD,
BB \=EE,
BB \=FF,
BB \=GG,
BB \=HH,
CC \=DD,
CC \=EE,
CC \=FF,
CC \=GG,
CC \=HH,
DD \=EE,
DD \=FF,
DD \=GG,
DD \=HH,
EE \=FF,
EE \=GG,
EE \=HH,
FF \=GG,
FF \=HH,
GG \=HH,
%Diagonals-2
AAA is 8-A,
BBB is 7-B,
CCC is 6-C,
DDD is 5-D,
EEE is 4-E,
FFF is 3-F,
GGG is 2-G,
HHH is 1-H,
AAA \=BBB,
AAA \=CCC,
AAA \=DDD,
AAA \=EEE,
AAA \=FFF,
AAA \=GGG,
AAA \=HHH,
BBB \=CCC,
BBB \=DDD,
BBB \=EEE,
BBB \=FFF,
BBB \=GGG,
BBB \=HHH,
CCC \=DDD,
CCC \=EEE,
CCC \=FFF,
CCC \=GGG,
CCC \=HHH,
DDD \=EEE,
DDD \=FFF,
DDD \=GGG,
DDD \=HHH,
EEE \=FFF,
EEE \=GGG,
EEE \=HHH,
FFF \=GGG,
FFF \=HHH,
GGG \=HHH,
writeln([1-A,2-B,3-C,4-D,5-E,6-F,7-G,8-H]).
