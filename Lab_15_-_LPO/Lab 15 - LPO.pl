mujer(mona).
mujer(marge).
mujer(lisa).
mujer(maggie).
mujer(jacqueline).
mujer(selma).
mujer(patty).
mujer(ling).

hombre(abraham).
hombre(homero).
hombre(bart).
hombre(clancy).

madre(mona, marge).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(jacqueline, marge).
madre(jacqueline, selma).
madre(jacqueline, patty).
madre(patty, ling).

padre(abraham, homero).
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
padre(clancy, marge).
padre(clancy, selma).
padre(clancy, patty).

padreomadre(A, B):-
    padre(A, B);
    madre(A, B).

hermanoohermana(A, B):-
    padreomadre(PM, A),
    padreomadre(PM, B).

hermano(A, B):-
    hermanoohermana(A,B),
	hombre(A).

hermana(A, B):-
    hermanoohermana(A,B),
	mujer(A).

abuelooabuela(A, B):-
    padreomadre(PM, B),
    padreomadre(A, PM).

abuelo(A, B):-
    abuelooabuela(A, B),
    hombre(A).

abuela(A, B):-
    abuelooabuela(A, B),
    mujer(A).

primooprima(A, B):-
    padreomadre(PM1, A),
    padreomadre(PM2, B),
    hermanoohermana(PM1, PM2).

primo(A, B):-
    primooprima(A, B),
    hombre(A).

prima(A, B):-
    primooprima(A, B),
    mujer(A).