Nome:          Erick Fernando Doria Lopes                  TIA:         31664822
	        Leandro Cipolla Contrera                                 31618952
         	Guilherme Lopes de Oliveira                              31672280

_____________________________Atividade_01_____________________________


ultimo([U],U).

ultimo([_|R],U):-
    ultimo(R,U).


_____________________________Atividade_02_____________________________


ultimo([K|_],0,K).

ultimo([_|R],P,U):-
    P1 is P-1,
    ultimo(R,P1,U).


_____________________________Atividade_03_____________________________


count([],E,0).

count([A|B],A,C):-
    count(B,A,C1),
    C is C1+1.

count([A|B],E,C):-
    count(B,E,C).



_____________________________Atividade_04_____________________________



remove_value([],E,[]).

remove_value([A|B],A,R):-
    remove_value(B,A,R).

remove_value([A|B],E,[A|R]):-
    E \= A,
    remove_value(B,E,R).



_____________________________Atividade_05_____________________________



kesimo([A | B], 1, B).

kesimo([A | B], E,[A | R]):-
    C is E - 1,
    kesimo(B, C, R).



_____________________________Atividade_06_____________________________



reverse([A | []], A).

reverse([A | B], A):-
    reverse(B, A).



_____________________________Atividade_07_____________________________



split([], _, [], []).

split([A | B], 1, [A], B).

split([A | B], C, [A | R], E):-
    C1 is C - 1,
    split(B, C1, R, E).



_____________________________Atividade_08_____________________________



minimo([X], X).

minimo([A | B], A):-
    minimo(B, M),
    A < M.

minimo([A | B], M):-
    minimo(B, M).



_____________________________Atividade_09_____________________________



has([A | B], A).
has([A | B], E):-
	A \= E,
	has(B, E).

uniao([], A, A).
uniao(A, [], A).
uniao([A | B], T, U):-
	has(T, A),
	union(B, T, U).
uniao([A | B], T, [A | U]):-
	union(B, T, U).




_____________________________Atividade_10_____________________________



has([A | B], A).
has([A | B], E):-
	A \= E,
	has(B, E).

inter([], A, []).

inter(A, [], []).

inter([A | B], T, [A | I]):-
    has(T, A),
    inter(B, T, I).

inter([A | B], T, I):-
    inter(B, T, I).
