/* Stefan Leithenmayr*/

/*add an element in front of a list*/
prepend([],E,[E]).
prepend([Head|Tail], E, [E| NewTail]) :- prepend(Tail, Head, NewTail).

/* add an element at the end of a list*/

addElement(E, [], [E]).
addElement(E, [Head|Tail], [Head|ExpandedTail]) :- addElement(E,Tail,ExpandedTail). 

/* calculates the length of a list*/

hasLength([],0).
hasLength([_|Tail], Count) :- hasLength(Tail, SecondCount), Count is SecondCount + 1.

/*remove an element of a list*/

remove(E, [E|Tail], Tail).
remove(E,[_|Tail], ShortedTail) :- remove(E,Tail,ShortedTail).