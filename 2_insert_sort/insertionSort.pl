insert_sorting([A|B], Sorted) :- insert_sorting(B, SortedTail), insert(A, SortedTail, Sorted).
insert_sorting([], []).

insert(A, [B|C], [B|D]) :- A @> B, !, insert(A, C, D).
insert(A, C, [A|C]).