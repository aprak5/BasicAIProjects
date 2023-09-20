:- discontiguous
        friend_of/2,
        liked/2.

require(movies). % imports movies.pl

% User 01
%% User 01's Social Network
friend_of(user01, user02).
friend_of(user01, user04).
friend_of(user01, user05).
friend_of(user01, user06).
friend_of(user01, user10).

%% User 01's Liked Movies
liked(crazy_stupid_love, user01).
liked(frozen, user01).
liked(inside_out, user01).
liked(pitch_perfect, user01).
liked(rock_of_ages, user01).
liked(the_grand_budapest_hotel, user01).

% User 02
%% User 02's Social Network
friend_of(user02, user01).
friend_of(user02, user03).
friend_of(user02, user05).
friend_of(user02, user07).

%% User 02's Liked Movies
liked(footloose, user02).
liked(pitch_perfect, user02).
liked(diary_of_a_wimpy_kid, user02).
liked(frozen, user02).

% User 03
%% User 03's Social Network
friend_of(user03, user02).
friend_of(user03, user04).
friend_of(user03, user06).
friend_of(user03, user07).
friend_of(user03, user08).
friend_of(user03, user10).

%% User 03's Liked Movies
liked(divergent, user03).
liked(gone_girl, user03).
liked(jack_reacher, user03).
liked(prometheus, user03).
liked(sleeping_beauty, user03).

% User 04
%% User 04's Social Network
friend_of(user04, user01).
friend_of(user04, user03).
friend_of(user04, user07).
friend_of(user04, user08).

%% User 04's Liked Movies
liked(american_hustle, user04).
liked(the_big_short, user04).
liked(interstellar, user04).
liked(inception, user04).

% User 05
%% User 05's Social Network
friend_of(user05, user01).
friend_of(user05, user02).
friend_of(user05, user06).
friend_of(user05, user09).

%% User 05's Liked Movies
liked(the_hobbit_an_unexpected_journey, user05).
liked(the_hobbit_the_battle_of_the_five_armies, user05).
liked(the_hobbit_the_desolation_of_smaug, user05).

% User 06
%% User 06's Social Network
friend_of(user06, user01).
friend_of(user06, user03).
friend_of(user06, user05).
friend_of(user06, user07).
friend_of(user06, user09).
friend_of(user06, user10).

%% User 06's Liked Movies
liked(avengers_age_of_ultron, user06).
liked(the_avengers, user06).
liked(scott_pilgrim_vs_the_world, user06).
liked(mad_max_fury_road, user06).
liked(guardians_of_the_galaxy, user06).
liked(fantastic_four, user06).

% User 07
%% User 07's Social Network
friend_of(user07, user02).
friend_of(user07, user03).
friend_of(user07, user04).
friend_of(user07, user06).
friend_of(user07, user08).
friend_of(user07, user10).

%% User 07's Liked Movies
liked(black_swan, user07).
liked(crazy_stupid_love, user07).
liked(frozen, user07).
liked(gone_girl, user07).
liked(melancholia, user07).
liked(sleeping_beauty, user07).
liked(the_hunger_games, user07).

% User 08
%% User 08's Social Network
friend_of(user08, user02).
friend_of(user08, user03).
friend_of(user08, user07).
friend_of(user08, user10).

%% User 08's Liked Movies
liked(legend, user08).
liked(the_big_short, user08).
liked(the_imitation_game, user08).
liked(the_social_network, user08).
liked(the_wolf_of_wall_street, user08).

% User 09
%% User 09's Social Network
friend_of(user09, user01).
friend_of(user09, user05).
friend_of(user09, user06).
friend_of(user09, user10).

%% User 09's Liked Movies
liked(ex_machina, user09).
liked(her, user09).
liked(the_big_short, user09).
liked(the_imitation_game, user09).
liked(the_kings_speech, user09).
liked(the_wolf_of_wall_street, user09).

% User 10
%% User 10's Social Network
friend_of(user10, user01).
friend_of(user10, user02).
friend_of(user10, user06).
friend_of(user10, user07).
friend_of(user10, user08).
friend_of(user10, user09).

%% User 10's Liked Movies
liked(margin_call, user10).
liked(nightcrawler, user10).
liked(skyfall, user10).
liked(the_conjuring, user10).