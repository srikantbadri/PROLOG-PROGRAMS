%Magic Square Problem in Prolog
letsgo:-
permutation([1,2,3,4,5,6,7,8,9],[A,B,C,D,E,F,G,H,I]),
Z is A+B+C,
Z=15,
Y is D+E+F,
Y=15,
X is G+H+I,
X=15,
W is A+D+G,
W=15,
V is B+E+H,
V=15,
U is C+F+I,
U=15,
T is G+E+C,
T=15,
writeln([A,B,C,D,E,F,G,H,I]).
