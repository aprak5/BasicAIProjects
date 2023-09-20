:- [movies, social_network].

:- discontiguous
  recommendation1/2,
  recommendation2/2,
  recommendation3/2.

:- dynamic
  liked/2,
  friend_of/2.

recommendation1(U, M) :- (liked(N, U), movie(M, D1), movie(N, D1), M \== N).  % Your Implementation Here

recommendation2(U, M) :- (liked(N, U), friend_of(U, V), liked(M, V), M \== N, U \== V). % Your Implementation Here

recommendation3(U, M) :- (liked(N, U), genre(M, G), genre(N, G), M \== N). % Your Implementation Here

% Build 4 new users, their social network, and their liked movies
% User 11
% User 11's Social Network
friend_of(user11, user12).
friend_of(user11, user13).

%% User 11's Liked Movies
liked(frozen, user11).
liked(inception, user11).
liked(interstellar, user11).
liked(pitch_perfect, user11).

% User 12
% User 12's Social Network
friend_of(user12, user11).
friend_of(user12, user13).

%% User 12's Liked Movies
liked(divergent, user12).
liked(inside_out, user12).
liked(john_wick, user12).
liked(thor, user12).

% User 13
% User 13's Social Network
friend_of(user13, user11).
friend_of(user13, user12).
friend_of(user13, user14).

%% User 13's Liked Movies
liked(diary_of_a_wimpy_kid, user13).
liked(jack_reacher, user13).
liked(knock_knock, user13).
liked(the_hobbit_an_unexpected_journey, user13).

% User 14
% User 14's Social Network
friend_of(user14, user13).

%% User 14's Liked Movies
liked(jurassic_world, user14).
liked(legend, user14).
liked(the_revenant, user14).











