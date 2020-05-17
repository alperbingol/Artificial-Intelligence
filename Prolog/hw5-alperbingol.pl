man(ali). man(mehmet). man(yunus).
woman(elif). woman(nelin). woman(zeynep).
person(X):- man(X).
person(X):- woman(X).

dif_pers(A,B,C,D,E,F):- person(A), person(B), person(C), person(D), person(E), person(F),  \+A=B, \+A=C, \+A=D, \+A=E, \+A=F, \+B=C, \+B=D, \+B=E, \+B=F, \+C=D, \+C=E, \+C=F, \+D=E, \+D=F, \+E=F.

write_ans(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine):- 
    write("Bathroom: "), write(Bathroom), nl,
    write("Dining: "), write(Dining), nl,
    write("Livingroom: "), write(Livingroom), nl, 
    write("Pantry: "), write(Pantry), nl,
    write("Study: "), write(Study), nl,
    write("Kitchen: "), write(Kitchen), nl,
    write("Knife: "), write(Knife), nl,
    write("Handsaw: "), write(Handsaw), nl,
    write("Weldingmachine: "), write(Weldingmachine), nl, 
    write("Hammer: "), write(Hammer), nl,
    write("Chemical: "), write(Chemical), nl,
    write("Gun: "), write(Gun), nl.

% Clue 1
clue1(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
   man(Kitchen), 
   \+Kitchen=Weldingmachine, \+Kitchen=Knife, \+Kitchen=Hammer, \+Kitchen=Gun.

% Clue 2
clue2(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    elif=Bathroom, zeynep=Study;
    elif=Study, zeynep=Bathroom.

% Clue 3: 
clue3(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    \+elif=Hammer, \+ali=Hammer, \+Hammer=Bathroom, \+Hammer=Dining.
   
% Clue 4
clue4(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    woman(Weldingmachine), Weldingmachine=Study.

% Clue 5
clue5(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    Livingroom = mehmet;
    Livingroom = ali.

% Clue 6
clue6(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    \+Knife=Dining.

% Clue 7
clue7(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    \+zeynep=Pantry, \+zeynep=Study.

% Clue 8
clue8(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine) :-
    Gun=ali.

robber(X) :-
   dif_pers(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study),
   dif_pers(Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue1(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue2(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue3(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue4(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue5(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue6(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue7(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   clue8(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine),
   X = Handsaw, X = Pantry,
   
   write("The robber is :"), write(X), nl, 
   write_ans(Bathroom, Dining, Kitchen, Livingroom, Pantry, Study, Hammer, Gun, Handsaw, Knife, Chemical, Weldingmachine).