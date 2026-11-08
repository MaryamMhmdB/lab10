square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle(Base, Height, A, B, C, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.

square_info :-
    write('Enter the side length: '), read(S),
    square(S, Area, P),
    write('Square -> Area = '), write(Area),
    write(', Perimeter = '), write(P), nl.

rectangle_info :-
    write('Enter the width: '),  read(W),
    write('Enter the height: '), read(H),
    rectangle(W, H, Area, P),
    write('Rectangle -> Area = '), write(Area),
    write(', Perimeter = '), write(P), nl.

triangle_info :-
    write('Enter the base: '),            read(B),
    write('Enter the vertical height: '), read(H),
    write('Enter side a: '),              read(A),
    write('Enter side b: '),              read(Bs),
    write('Enter side c: '),              read(C),
    triangle(B, H, A, Bs, C, Area, P),
    write('Triangle -> Area = '), write(Area),
    write(', Perimeter = '), write(P), nl.
