%8-Puzzle Problem in Prolog

:- dynamic visited/9.

solve(0,1,3,4,2,5,7,8,6).


%right
solve(A,B,C,D,E,F,G,H,I):-
A =0,
not(visited(B,A,C,D,E,F,G,H,I)),
assert(visited(B,A,C,D,E,F,G,H,I)),
%writeln("2"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(B,A,C,D,E,F,G,H,I).



%down
solve(A,B,C,D,E,F,G,H,I):-
A =0,
not(visited(D,B,C,A,E,F,G,H,I)),
assert(visited(D,B,C,A,E,F,G,H,I)),
%writeln("5"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(D,B,C,A,E,F,G,H,I).

%right
solve(A,B,C,D,E,F,G,H,I):-
B =0,
not(visited(A,C,B,D,E,F,G,H,I)),
assert(visited(A,C,B,D,E,F,G,H,I)),
%writeln("2"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,C,B,D,E,F,G,H,I).

%left
solve(A,B,C,D,E,F,G,H,I):-
B =0,
not(visited(B,A,C,D,E,F,G,H,I)),
assert(visited(B,A,C,D,E,F,G,H,I)),
%writeln("3"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(B,A,C,D,E,F,G,H,I).


%down
solve(A,B,C,D,E,F,G,H,I):-
B =0,
not(visited(A,E,C,D,B,F,G,H,I)),
assert(visited(A,E,C,D,B,F,G,H,I)),
%writeln("5"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,E,C,D,B,F,G,H,I).


%left
solve(A,B,C,D,E,F,G,H,I):-
C =0,
not(visited(A,C,B,D,E,F,G,H,I)),
assert(visited(A,C,B,D,E,F,G,H,I)),
%writeln("3"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,C,B,D,E,F,G,H,I).


%down
solve(A,B,C,D,E,F,G,H,I):-
C =0,
not(visited(A,B,F,D,E,C,G,H,I)),
assert(visited(A,B,F,D,E,C,G,H,I)),
%writeln("5"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,F,D,E,C,G,H,I).

%right
solve(A,B,C,D,E,F,G,H,I):-
D =0,
not(visited(A,B,C,E,D,F,G,H,I)),
assert(visited(A,B,C,E,D,F,G,H,I)),
%writeln("2"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,E,D,F,G,H,I).


%up
solve(A,B,C,D,E,F,G,H,I):-
D =0,
not(visited(D,B,C,A,E,F,G,H,I)),
assert(visited(D,B,C,A,E,F,G,H,I)),
writeln([A,B,C,D,E,F,G,H,I]),
%writeln("4"),
solve(D,B,C,A,E,F,G,H,I).

%down
solve(A,B,C,D,E,F,G,H,I):-
D =0,
not(visited(A,B,C,G,E,F,D,H,I)),
assert(visited(A,B,C,G,E,F,D,H,I)),
%writeln("5"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,G,E,F,D,H,I).

%right
solve(A,B,C,D,E,F,G,H,I):-
E =0,
not(visited(A,B,C,D,F,E,G,H,I)),
assert(visited(A,B,C,D,F,E,G,H,I)),
%writeln("2"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,F,E,G,H,I).

%left
solve(A,B,C,D,E,F,G,H,I):-
E =0,
not(visited(A,B,C,E,D,F,G,H,I)),
assert(visited(A,B,C,E,D,F,G,H,I)),
%writeln("3"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,E,D,F,G,H,I).

%up
solve(A,B,C,D,E,F,G,H,I):-
E =0,
not(visited(A,E,C,D,B,F,G,H,I)),
assert(visited(A,E,C,D,B,F,G,H,I)),
writeln([A,B,C,D,E,F,G,H,I]),
%writeln("4"),
solve(A,E,C,D,B,F,G,H,I).

%down
solve(A,B,C,D,E,F,G,H,I):-
E =0,
not(visited(A,B,C,D,H,F,G,E,I)),
assert(visited(A,B,C,D,H,F,G,E,I)),
%writeln("5"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,H,F,G,E,I).


%left
solve(A,B,C,D,E,F,G,H,I):-
F =0,
not(visited(A,B,C,D,F,E,G,H,I)),
assert(visited(A,B,C,D,F,E,G,H,I)),
%writeln("3"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,F,E,G,H,I).

%up
solve(A,B,C,D,E,F,G,H,I):-
F =0,
not(visited(A,B,F,D,E,C,G,H,I)),
assert(visited(A,B,F,D,E,C,G,H,I)),
writeln([A,B,C,D,E,F,G,H,I]),
%writeln("4"),
solve(A,B,F,D,E,C,G,H,I).

%down
solve(A,B,C,D,E,F,G,H,I):-
F =0,
not(visited(A,B,C,D,E,I,G,H,F)),
assert(visited(A,B,C,D,E,I,G,H,F)),
%writeln("5"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,E,I,G,H,F).

%right
solve(A,B,C,D,E,F,G,H,I):-
G =0,
not(visited(A,B,C,D,E,F,H,G,I)),
assert(visited(A,B,C,D,E,F,H,G,I)),
%writeln("2"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,E,F,H,G,I).


%up
solve(A,B,C,D,E,F,G,H,I):-
G =0,
not(visited(A,B,C,G,E,F,D,H,I)),
assert(visited(A,B,C,G,E,F,D,H,I)),
writeln([A,B,C,D,E,F,G,H,I]),
%writeln("4"),
solve(A,B,C,G,E,F,D,H,I).


%right
solve(A,B,C,D,E,F,G,H,I):-
H =0,
not(visited(A,B,C,D,E,F,G,I,H)),
assert(visited(A,B,C,D,E,F,G,I,H)),
%writeln("2"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,E,F,G,I,H).

%left
solve(A,B,C,D,E,F,G,H,I):-
H =0,
not(visited(A,B,C,D,E,F,H,G,I)),
assert(visited(A,B,C,D,E,F,H,G,I)),
%writeln("3"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,E,F,H,G,I).

%up
solve(A,B,C,D,E,F,G,H,I):-
H =0,
not(visited(A,B,C,D,H,F,G,E,I)),
assert(visited(A,B,C,D,H,F,G,E,I)),
writeln([A,B,C,D,E,F,G,H,I]),
%writeln("4"),
solve(A,B,C,D,H,F,G,E,I).



%left
solve(A,B,C,D,E,F,G,H,I):-
I =0,
not(visited(A,B,C,D,E,F,G,I,H)),
assert(visited(A,B,C,D,E,F,G,I,H)),
%writeln("3"),
writeln([A,B,C,D,E,F,G,H,I]),
solve(A,B,C,D,E,F,G,I,H).

%up
solve(A,B,C,D,E,F,G,H,I):-
I =0,
not(visited(A,B,C,D,E,I,G,H,F)),
assert(visited(A,B,C,D,E,I,G,H,F)),
writeln([A,B,C,D,E,F,G,H,I]),
%writeln("4"),
solve(A,B,C,D,E,I,G,H,F).
