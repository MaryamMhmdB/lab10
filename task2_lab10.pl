user(mariam,  '1234').
user(maryam,   '12345').
user(haya, 'pass123').
user(maha,  '9876').

login :-
    write('===== LOGIN PAGE ====='), nl,
    attempt(1).

attempt(N) :-
    N =< 3,
    write('Username: '), read(U),
    write('Password: '), read(P),
    (   user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        N1 is N + 1,
        attempt(N1)
    ).

attempt(N) :-
    N > 3,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
