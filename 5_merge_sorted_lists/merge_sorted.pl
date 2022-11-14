merge_sorted([],L,L).
merge_sorted(L,[],L).
merge_sorted([Head1|Tail1], [Head2|Tail2], L) :- 
    Head1 < Head2 -> L = [Head1|R], merge_sorted(Tail1,[Head2|Tail2],R) ;
    Head1 > Head2 -> L = [Head2|R], merge_sorted([Head1|Tail1],Tail2,R) ;
    L = [Head1,Head2|R], merge_sorted(Tail1,Tail2,R).