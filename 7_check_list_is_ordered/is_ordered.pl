is_ordered( []      ) .
is_ordered( [_]     ) .
is_ordered( [X,Y|Z] ) :- X =< Y , is_ordered( [Y|Z] ) .