require(movies). % imports movies.pl

% same_year(M1, M2) <- whether two movies (M1, M2) were released in the same year.
same_year(M1, M2) :- (movie(M1, Y), movie(M2, Y), M1 \== M2).

% released_between(Y1, Y2, M) <- the movies released after year Y1 but before Y2 (inclusive).
released_between(Y1, Y2, M) :- (movie(M, Y), (Y1 >= Y; Y >= Y2)).

% roles(A) <- the roles person A has performed as.
% (Hint: recall a person can be an actor or actress)
roles(A, R) :- starred(_, A, R).

% worked_on(A,M) <- person A was an actor, actress, or director in movie M
worked_on(A, M) :- (starred(M, A, _); director(M, A)).

% co_star(A1, A2) <- actors A1 and A2 costarred in the same movie.
% (Hint: A1 and A2 should not be equal)
co_star(A1, A2) :- (starred(M1, A1, _), starred(M2, A2, _), M1 == M2, A1 \= A2) .

% directed_by(X,Y) <- person X has been in a movie directed by Y
% Re-use the worked_on predicate.
directed_by(X,Y) :- (worked_on(X, M), director(M, Y), X \== Y).
