split(H,[A|T],[A|S],B):- H>A,!,split(H,T,S,B).
split(H,[A|T],S,[A|B]):-split(H,T,S,B).
split(_,[],[],[]).

qsort([],[]).
qsort([X], [X]).
qsort([Head, Pivot|Tail],Sorted):-
        split(Pivot,[Head|Tail],Less,Greater),
        qsort(Less,SortedLess),
        qsort(Greater,SortedGreater),
        append(SortedLess,[Pivot|SortedGreater],Sorted).