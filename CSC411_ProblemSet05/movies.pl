% discontinguous establishes the predicates and their respective
% number of terms; for example the movie predicate expects 2 terms.
:- discontiguous
       (movie/2), % movie(M, Y) where movie M was released in year Y
       (director/2), % directory(M, D) where director D directed movie M
       (genre/2), % genre(M, G) where movie M had genre G
       (starred/3). % starred(M, A, R) where actor A starred as role R in movie M 

director(american_hustle, david_o_russell).
director(avengers_age_of_ultron, joss_whedon).
director(black_swan, darren_aronofsky).
director(captain_america_the_first_avenger, joe_johnston).
director(crazy_stupid_love, glenn_ficarra).
director(crazy_stupid_love, john_requa).
director(diary_of_a_wimpy_kid, thor_freudenthal).
director(divergent, neil_burger).
director(django_unchained, quentin_tarantino).
director(drive, nicolas_winding_refn).
director(ex_machina, alex_garland).
director(fantastic_four, josh_trank).
director(fifty_shades_of_grey, sam_taylor_johnson).
director(footloose, craig_brewer).
director(frozen, chris_buck).
director(frozen, jennifer_lee).
director(gone_girl, david_fincher).
director(guardians_of_the_galaxy, james_gunn).
director(harry_potter_and_the_deathly_hallows_part_1, david_yates).
director(harry_potter_and_the_deathly_hallows_part_2, david_yates).
director(her, spike_jonze).
director(hot_tub_time_machine, steven_pink).
director(inception, christopher_nolan).
director(inside_out, pete_docter).
director(inside_out, ronnie_del_carmen).
director(interstellar, christopher_nolan).
director(jack_reacher, christopher_mcquarrie).
director(john_wick, chad_stahelski).
director(jurassic_world, colin_trevorrow).
director(kick_ass, matthew_vaughn).
director(killing_them_softly, andrew_dominik).
director(kingsman_the_secret_service, matthew_vaughn).
director(knock_knock, eli_roth).
director(legend, brian_helgeland).
director(mad_max_fury_road, george_miller).
director(margin_call, j_c_chandor).
director(melancholia, lars_von_trier).
director(nightcrawler, dan_gilroy).
director(pitch_perfect, jason_moore).
director(prometheus, ridley_scott).
director(rock_of_ages, adam_shankman).
director(scott_pilgrim_vs_the_world, edgar_wright).
director(shutter_island, martin_scorsese).
director(sicario, denis_villeneuve).
director(skyfall, sam_mendes).
director(sleeping_beauty, julia_leigh).
director(the_avengers, joss_whedon).
director(the_big_short, adam_mckay).
director(the_cabin_in_the_woods, drew_goddard).
director(the_conjuring, james_wan).
director(the_dark_knight_rises, christopher_nolan).
director(the_grand_budapest_hotel, wes_anderson).
director(the_great_gatsby, baz_luhrmann).
director(the_hateful_eight, quentin_tarantino).
director(the_hobbit_an_unexpected_journey, peter_jackson).
director(the_hobbit_the_battle_of_the_five_armies, peter_jackson).
director(the_hobbit_the_desolation_of_smaug, peter_jackson).
director(the_hunger_games, gary_ross).
director(the_imitation_game, morten_tyldum).
director(the_intouchables, eric_toledano).
director(the_intouchables, olivier_nakache).
director(the_kings_speech, tom_hooper).
director(the_martian, ridley_scott).
director(the_perks_of_being_a_wallflower, stephen_chbosky).
director(the_revenant, alejandro_g_inarritu).
director(the_social_network, david_fincher).
director(the_witch, robert_eggers).
director(the_wolf_of_wall_street, martin_scorsese).
director(this_is_the_end, eric_goldberg).
director(this_is_the_end, seth_rogen).
director(thor, kenneth_branagh).
director(we_re_the_millers, rawson_marshall_thurber).
director(x_men_days_of_future_past, bryan_singer).
genre(american_hustle, crime).
genre(american_hustle, drama).
genre(avengers_age_of_ultron, action).
genre(avengers_age_of_ultron, adventure).
genre(avengers_age_of_ultron, scifi).
genre(black_swan, drama).
genre(black_swan, thriller).
genre(captain_america_the_first_avenger, action).
genre(captain_america_the_first_avenger, adventure).
genre(captain_america_the_first_avenger, scifi).
genre(crazy_stupid_love, comedy).
genre(crazy_stupid_love, drama).
genre(crazy_stupid_love, romance).
genre(diary_of_a_wimpy_kid, comedy).
genre(diary_of_a_wimpy_kid, drama).
genre(diary_of_a_wimpy_kid, family).
genre(divergent, action).
genre(divergent, adventure).
genre(divergent, mystery).
genre(django_unchained, drama).
genre(django_unchained, western).
genre(drive, action).
genre(drive, drama).
genre(ex_machina, drama).
genre(ex_machina, scifi).
genre(ex_machina, thriller).
genre(fantastic_four, action).
genre(fantastic_four, adventure).
genre(fantastic_four, scifi).
genre(fifty_shades_of_grey, drama).
genre(fifty_shades_of_grey, romance).
genre(fifty_shades_of_grey, thriller).
genre(footloose, comedy).
genre(footloose, drama).
genre(footloose, music).
genre(frozen, adventure).
genre(frozen, animation).
genre(frozen, comedy).
genre(gone_girl, drama).
genre(gone_girl, mystery).
genre(gone_girl, thriller).
genre(guardians_of_the_galaxy, action).
genre(guardians_of_the_galaxy, adventure).
genre(guardians_of_the_galaxy, comedy).
genre(harry_potter_and_the_deathly_hallows_part_1, adventure).
genre(harry_potter_and_the_deathly_hallows_part_1, family).
genre(harry_potter_and_the_deathly_hallows_part_1, fantasy).
genre(harry_potter_and_the_deathly_hallows_part_2, adventure).
genre(harry_potter_and_the_deathly_hallows_part_2, family).
genre(harry_potter_and_the_deathly_hallows_part_2, fantasy).
genre(her, drama).
genre(her, romance).
genre(her, scifi).
genre(hot_tub_time_machine, comedy).
genre(hot_tub_time_machine, scifi).
genre(inception, action).
genre(inception, adventure).
genre(inception, scifi).
genre(inside_out, adventure).
genre(inside_out, animation).
genre(inside_out, comedy).
genre(interstellar, adventure).
genre(interstellar, drama).
genre(interstellar, scifi).
genre(jack_reacher, action).
genre(jack_reacher, mystery).
genre(jack_reacher, thriller).
genre(john_wick, action).
genre(john_wick, crime).
genre(john_wick, thriller).
genre(jurassic_world, action).
genre(jurassic_world, adventure).
genre(jurassic_world, scifi).
genre(kick_ass, action).
genre(kick_ass, comedy).
genre(kick_ass, crime).
genre(killing_them_softly, crime).
genre(killing_them_softly, drama).
genre(killing_them_softly, thriller).
genre(kingsman_the_secret_service, action).
genre(kingsman_the_secret_service, adventure).
genre(kingsman_the_secret_service, comedy).
genre(knock_knock, drama).
genre(knock_knock, thriller).
genre(legend, biography).
genre(legend, crime).
genre(legend, drama).
genre(mad_max_fury_road, action).
genre(mad_max_fury_road, adventure).
genre(mad_max_fury_road, scifi).
genre(margin_call, drama).
genre(margin_call, thriller).
genre(melancholia, drama).
genre(melancholia, scifi).
genre(nightcrawler, crime).
genre(nightcrawler, drama).
genre(nightcrawler, thriller).
genre(pitch_perfect, comedy).
genre(pitch_perfect, music).
genre(pitch_perfect, romance).
genre(prometheus, adventure).
genre(prometheus, mystery).
genre(prometheus, scifi).
genre(rock_of_ages, comedy).
genre(rock_of_ages, drama).
genre(rock_of_ages, music).
genre(scott_pilgrim_vs_the_world, action).
genre(scott_pilgrim_vs_the_world, comedy).
genre(scott_pilgrim_vs_the_world, fantasy).
genre(shutter_island, mystery).
genre(shutter_island, thriller).
genre(sicario, action).
genre(sicario, crime).
genre(sicario, drama).
genre(skyfall, action).
genre(skyfall, adventure).
genre(skyfall, thriller).
genre(sleeping_beauty, drama).
genre(sleeping_beauty, mystery).
genre(sleeping_beauty, romance).
genre(the_avengers, action).
genre(the_avengers, adventure).
genre(the_avengers, scifi).
genre(the_big_short, biography).
genre(the_big_short, comedy).
genre(the_big_short, drama).
genre(the_cabin_in_the_woods, horror).
genre(the_cabin_in_the_woods, mystery).
genre(the_cabin_in_the_woods, thriller).
genre(the_conjuring, horror).
genre(the_conjuring, mystery).
genre(the_conjuring, thriller).
genre(the_dark_knight_rises, action).
genre(the_dark_knight_rises, drama).
genre(the_grand_budapest_hotel, adventure).
genre(the_grand_budapest_hotel, comedy).
genre(the_grand_budapest_hotel, crime).
genre(the_great_gatsby, drama).
genre(the_great_gatsby, romance).
genre(the_hateful_eight, crime).
genre(the_hateful_eight, drama).
genre(the_hateful_eight, mystery).
genre(the_hobbit_an_unexpected_journey, adventure).
genre(the_hobbit_an_unexpected_journey, fantasy).
genre(the_hobbit_the_battle_of_the_five_armies, adventure).
genre(the_hobbit_the_battle_of_the_five_armies, fantasy).
genre(the_hobbit_the_desolation_of_smaug, adventure).
genre(the_hobbit_the_desolation_of_smaug, fantasy).
genre(the_hunger_games, action).
genre(the_hunger_games, adventure).
genre(the_hunger_games, scifi).
genre(the_imitation_game, biography).
genre(the_imitation_game, drama).
genre(the_imitation_game, thriller).
genre(the_intouchables, biography).
genre(the_intouchables, comedy).
genre(the_intouchables, drama).
genre(the_kings_speech, biography).
genre(the_kings_speech, drama).
genre(the_kings_speech, history).
genre(the_martian, adventure).
genre(the_martian, drama).
genre(the_martian, scifi).
genre(the_perks_of_being_a_wallflower, drama).
genre(the_revenant, action).
genre(the_revenant, adventure).
genre(the_revenant, drama).
genre(the_social_network, biography).
genre(the_social_network, drama).
genre(the_witch, drama).
genre(the_witch, fantasy).
genre(the_witch, horror).
genre(the_wolf_of_wall_street, biography).
genre(the_wolf_of_wall_street, comedy).
genre(the_wolf_of_wall_street, crime).
genre(this_is_the_end, comedy).
genre(this_is_the_end, fantasy).
genre(thor, action).
genre(thor, adventure).
genre(thor, fantasy).
genre(we_re_the_millers, comedy).
genre(we_re_the_millers, crime).
genre(x_men_days_of_future_past, action).
genre(x_men_days_of_future_past, adventure).
genre(x_men_days_of_future_past, scifi).
movie(american_hustle, 2013).
movie(avengers_age_of_ultron, 2015).
movie(black_swan, 2010).
movie(captain_america_the_first_avenger, 2011).
movie(crazy_stupid_love, 2011).
movie(diary_of_a_wimpy_kid, 2010).
movie(divergent, 2014).
movie(django_unchained, 2012).
movie(drive, 2011).
movie(ex_machina, 2014).
movie(fantastic_four, 2015).
movie(fifty_shades_of_grey, 2015).
movie(footloose, 2011).
movie(frozen, 2013).
movie(gone_girl, 2014).
movie(guardians_of_the_galaxy, 2014).
movie(harry_potter_and_the_deathly_hallows_part_1, 2010).
movie(harry_potter_and_the_deathly_hallows_part_2, 2011).
movie(her, 2013).
movie(hot_tub_time_machine, 2010).
movie(inception, 2010).
movie(inside_out, 2015).
movie(interstellar, 2014).
movie(jack_reacher, 2012).
movie(john_wick, 2014).
movie(jurassic_world, 2015).
movie(kick_ass, 2010).
movie(killing_them_softly, 2012).
movie(kingsman_the_secret_service, 2014).
movie(knock_knock, 2015).
movie(legend, 2015).
movie(mad_max_fury_road, 2015).
movie(margin_call, 2011).
movie(melancholia, 2011).
movie(nightcrawler, 2014).
movie(pitch_perfect, 2012).
movie(prometheus, 2012).
movie(rock_of_ages, 2012).
movie(scott_pilgrim_vs_the_world, 2010).
movie(shutter_island, 2010).
movie(sicario, 2015).
movie(skyfall, 2012).
movie(sleeping_beauty, 2011).
movie(the_avengers, 2012).
movie(the_big_short, 2015).
movie(the_cabin_in_the_woods, 2011).
movie(the_conjuring, 2013).
movie(the_dark_knight_rises, 2012).
movie(the_grand_budapest_hotel, 2014).
movie(the_great_gatsby, 2013).
movie(the_hateful_eight, 2015).
movie(the_hobbit_an_unexpected_journey, 2012).
movie(the_hobbit_the_battle_of_the_five_armies, 2014).
movie(the_hobbit_the_desolation_of_smaug, 2013).
movie(the_hunger_games, 2012).
movie(the_imitation_game, 2014).
movie(the_intouchables, 2011).
movie(the_kings_speech, 2010).
movie(the_martian, 2015).
movie(the_perks_of_being_a_wallflower, 2012).
movie(the_revenant, 2015).
movie(the_social_network, 2010).
movie(the_witch, 2015).
movie(the_wolf_of_wall_street, 2013).
movie(this_is_the_end, 2013).
movie(thor, 2011).
movie(we_re_the_millers, 2013).
movie(x_men_days_of_future_past, 2014).
starred(american_hustle, adrian_martinez, julius).
starred(american_hustle, alessandro_nivola, anthony_amado).
starred(american_hustle, alura_carbrey, elizabeth_polito).
starred(american_hustle, amy_adams, sydney_prosser).
starred(american_hustle, anthony_zerbe, senator_horton_mitchell).
starred(american_hustle, armen_garo, dick_helsing).
starred(american_hustle, bo_cleary, fbi_agent_1).
starred(american_hustle, bradley_cooper, richie_dimaso).
starred(american_hustle, christian_bale, irving_rosenfeld).
starred(american_hustle, christopher_tarjan, agent_stock).
starred(american_hustle, colleen_camp, brenda).
starred(american_hustle, damien_di_paola, baron_owner).
starred(american_hustle, danny_corbo, danny_rosenfeld).
starred(american_hustle, dawn_olivieri, cosmo_girl).
starred(american_hustle, elisabeth_rohm, dolly_polito).
starred(american_hustle, greg_maxwell, fbi_agent_2).
starred(american_hustle, jack_huston, pete_musane).
starred(american_hustle, jack_jones, jazz_quartet_singer).
starred(american_hustle, jeff_avigian, disco_dancer).
starred(american_hustle, jennifer_lawrence, rosalyn_rosenfeld).
starred(american_hustle, jeremy_renner, mayor_carmine_polito).
starred(american_hustle, kayla_feeney, lorna_polito).
starred(american_hustle, louis_ck, stoddard_thorsen).
starred(american_hustle, matthew_russell, dominic_polito).
starred(american_hustle, michael_pena, paco_hernandez).
starred(american_hustle, michael_trigg, barons_manager).
starred(american_hustle, paul_campbell, barons_patron).
starred(american_hustle, paul_herman, alfonse_simone).
starred(american_hustle, richard_heneks, al_kalowski).
starred(american_hustle, said_taghmaoui, irvs_sheik_plant).
starred(american_hustle, shannon_halliday, doreen_polito).
starred(american_hustle, shea_whigham, carl_elway).
starred(american_hustle, sonny_corbo, danny_rosenfeld).
starred(american_hustle, stacy_hock, girl_outside_stall).
starred(american_hustle, steve_gagliastro, agent_schmidt).
starred(american_hustle, thomas_matthews, francis_polito).
starred(american_hustle, volieda_webb, melora).
starred(american_hustle, zachariah_supka, young_irv).
starred(avengers_age_of_ultron, aaron_himelstein, specialist_cameron_klein).
starred(avengers_age_of_ultron, aaron_taylor_johnson, pietro_maximoff_quicksilver).
starred(avengers_age_of_ultron, andy_serkis, ulysses_klaue).
starred(avengers_age_of_ultron, anthony_mackie, sam_wilson_the_falcon).
starred(avengers_age_of_ultron, brian_schaeffer, strucker_mercenary).
starred(avengers_age_of_ultron, chris_evans, steve_rogers_captain_america).
starred(avengers_age_of_ultron, chris_hemsworth, thor).
starred(avengers_age_of_ultron, chris_luca, fortress_soldier).
starred(avengers_age_of_ultron, claudia_kim, dr_helen_cho).
starred(avengers_age_of_ultron, cobie_smulders, maria_hill).
starred(avengers_age_of_ultron, dominique_provost_chalkley, zrinka).
starred(avengers_age_of_ultron, don_cheadle, james_rhodes_war_machine).
starred(avengers_age_of_ultron, elizabeth_olsen, wanda_maximoff_scarlet_witch).
starred(avengers_age_of_ultron, hayley_atwell, peggy_carter).
starred(avengers_age_of_ultron, henry_goodman, dr_list).
starred(avengers_age_of_ultron, idris_elba, heimdall).
starred(avengers_age_of_ultron, isaac_andrews, costel).
starred(avengers_age_of_ultron, jaiden_stafford, nathaniel_pietro_barton).
starred(avengers_age_of_ultron, james_spader, ultron).
starred(avengers_age_of_ultron, jeremy_renner, clint_barton_hawkeye).
starred(avengers_age_of_ultron, julie_delpy, madame_b).
starred(avengers_age_of_ultron, kerry_condon, friday).
starred(avengers_age_of_ultron, linda_cardellini, laura_barton).
starred(avengers_age_of_ultron, mark_ruffalo, bruce_banner_hulk).
starred(avengers_age_of_ultron, paul_bettany, jarvis_vision).
starred(avengers_age_of_ultron, robert_downey_jr, tony_stark_iron_man).
starred(avengers_age_of_ultron, samuel_l_jackson, nick_fury).
starred(avengers_age_of_ultron, scarlett_johansson, natasha_romanoff_black_widow).
starred(avengers_age_of_ultron, stan_lee, stan_lee).
starred(avengers_age_of_ultron, stellan_skarsgard, erik_selvig).
starred(avengers_age_of_ultron, thomas_kretschmann, strucker).
starred(black_swan, abraham_aronofsky, mr_stein_patron).
starred(black_swan, arkadiy_figlin, piano_player).
starred(black_swan, barbara_hershey, erica_sayers_the_queen).
starred(black_swan, benjamin_millepied, david_the_prince).
starred(black_swan, charlotte_aronofsky, mrs_stein_patron).
starred(black_swan, chris_gartin, sexy_waiter_scott).
starred(black_swan, deborah_offner, administrator_susie).
starred(black_swan, janet_montgomery, madeline_little_swan).
starred(black_swan, john_epperson, jaded_piano_player).
starred(black_swan, kristina_anapau, galina_little_swan).
starred(black_swan, ksenia_solo, veronica_little_swan).
starred(black_swan, kurt_froman, understudy_for_siegfried).
starred(black_swan, leslie_lyles, nurse).
starred(black_swan, liam_flaherty, man_in_stall).
starred(black_swan, marcia_jean_kurtz, costumer_georgina).
starred(black_swan, mark_margolis, mr_fithian_patron).
starred(black_swan, marty_krzywonos, conductor).
starred(black_swan, michelle_rodriguez_nouel, physical_therapist).
starred(black_swan, mila_kunis, lily_the_black_swan).
starred(black_swan, natalie_portman, nina_sayers_the_swan_queen).
starred(black_swan, patrick_heusinger, rich_gent).
starred(black_swan, sarah_lane, lady_in_the_lane).
starred(black_swan, sebastian_stan, andrew_suitor).
starred(black_swan, sergio_torrado, sergio_rothbart).
starred(black_swan, shaun_o_hagan, stage_manager_sebastian).
starred(black_swan, stanley_b_herman, uncle_hank).
starred(black_swan, tim_fain, violin_player).
starred(black_swan, tina_sloan, mrs_fithian_patron).
starred(black_swan, toby_hemingway, tom_suitor).
starred(black_swan, vincent_cassel, thomas_leroy_the_gentleman).
starred(black_swan, winona_ryder, beth_macintyre_the_dying_swan).
starred(captain_america_the_first_avenger, bruno_ricci, jacques_dernier).
starred(captain_america_the_first_avenger, chris_evans, captain_america_steve_rogers).
starred(captain_america_the_first_avenger, david_bradley, tower_keeper).
starred(captain_america_the_first_avenger, derek_luke, gabe_jones).
starred(captain_america_the_first_avenger, dominic_cooper, howard_stark).
starred(captain_america_the_first_avenger, hayley_atwell, peggy_carter).
starred(captain_america_the_first_avenger, hugo_weaving, johann_schmidt_red_skull).
starred(captain_america_the_first_avenger, jj_feild, james_montgomery_falsworth).
starred(captain_america_the_first_avenger, kenneth_choi, jim_morita).
starred(captain_america_the_first_avenger, kieran_o_connor, loud_jerk).
starred(captain_america_the_first_avenger, leander_deeny, steve_rogers_double_barman).
starred(captain_america_the_first_avenger, lex_shrapnel, gilmore_hodge).
starred(captain_america_the_first_avenger, marek_oravec, jan).
starred(captain_america_the_first_avenger, martin_sherman, brandts_aide).
starred(captain_america_the_first_avenger, michael_brandon, senator_brandt).
starred(captain_america_the_first_avenger, natalie_dormer, pvt_lorraine).
starred(captain_america_the_first_avenger, neal_mcdonough, timothy_dum_dum_dugan).
starred(captain_america_the_first_avenger, nicholas_pinnock, shield_tech).
starred(captain_america_the_first_avenger, oscar_pearce, search_team_leader).
starred(captain_america_the_first_avenger, richard_armitage, heinz_kruger).
starred(captain_america_the_first_avenger, sam_hoare, nervous_recruit).
starred(captain_america_the_first_avenger, samuel_l_jackson, nick_fury).
starred(captain_america_the_first_avenger, sebastian_stan, james_buchanan_bucky_barnes).
starred(captain_america_the_first_avenger, simon_kunz, doctor).
starred(captain_america_the_first_avenger, stanley_tucci, dr_abraham_erskine).
starred(captain_america_the_first_avenger, toby_jones, dr_arnim_zola).
starred(captain_america_the_first_avenger, tommy_lee_jones, colonel_chester_phillips).
starred(captain_america_the_first_avenger, william_hope, shield_lieutenant).
starred(crazy_stupid_love, algerita_wynn, principal).
starred(crazy_stupid_love, beth_littleford, claire).
starred(crazy_stupid_love, caitlin_thompson, taylor).
starred(crazy_stupid_love, charlie_hartsock, sad_sack).
starred(crazy_stupid_love, crystal_reed, amy_johnson).
starred(crazy_stupid_love, dan_butler, boss).
starred(crazy_stupid_love, emma_stone, hannah).
starred(crazy_stupid_love, janine_barris, heather).
starred(crazy_stupid_love, jenny_mollen, lisa).
starred(crazy_stupid_love, joanne_brooks, waitress).
starred(crazy_stupid_love, joey_king, molly).
starred(crazy_stupid_love, john_carroll_lynch, bernie).
starred(crazy_stupid_love, jonah_bobo, robbie).
starred(crazy_stupid_love, josh_groban, richard).
starred(crazy_stupid_love, julianna_guill, madison).
starred(crazy_stupid_love, julianne_moore, emily).
starred(crazy_stupid_love, karolina_wydra, jordyn).
starred(crazy_stupid_love, katerina_kopel, stephanie).
starred(crazy_stupid_love, kevin_bacon, david_lindhagen).
starred(crazy_stupid_love, laurel_coppock, sophia).
starred(crazy_stupid_love, lio_tipton, jessica).
starred(crazy_stupid_love, liza_lapira, liz).
starred(crazy_stupid_love, marisa_tomei, kate).
starred(crazy_stupid_love, mekia_cox, hip_hairdresser).
starred(crazy_stupid_love, reggie_lee, officer_huang).
starred(crazy_stupid_love, ryan_gosling, jacob).
starred(crazy_stupid_love, steve_carell, cal).
starred(crazy_stupid_love, tiara_parker, gabby).
starred(crazy_stupid_love, tracy_mulholland, megan).
starred(crazy_stupid_love, wendy_worthington, woman).
starred(crazy_stupid_love, zayne_emory, robbies_friend).
starred(diary_of_a_wimpy_kid, alex_ferris, collin).
starred(diary_of_a_wimpy_kid, andrew_mcnee, coach_malone).
starred(diary_of_a_wimpy_kid, ava_hughes, marley).
starred(diary_of_a_wimpy_kid, belita_moreno, mrs_norton).
starred(diary_of_a_wimpy_kid, cainan_wiebe, quentin).
starred(diary_of_a_wimpy_kid, chloe_grace_moretz, angie_steadman).
starred(diary_of_a_wimpy_kid, cole_heppell, quentins_sidekick).
starred(diary_of_a_wimpy_kid, connor_fielding, manny_heffley).
starred(diary_of_a_wimpy_kid, devon_bostick, rodrick_heffley).
starred(diary_of_a_wimpy_kid, donnie_macneil, wade).
starred(diary_of_a_wimpy_kid, grayson_russell, fregley).
starred(diary_of_a_wimpy_kid, harrison_houde, darren_walsh).
starred(diary_of_a_wimpy_kid, jake_d_smith, archie_kelly).
starred(diary_of_a_wimpy_kid, jennifer_clement, mrs_flint).
starred(diary_of_a_wimpy_kid, karan_brar, chirag_gupta).
starred(diary_of_a_wimpy_kid, karin_konoval, mrs_irvine).
starred(diary_of_a_wimpy_kid, kaye_capron, rowleys_mom).
starred(diary_of_a_wimpy_kid, laine_macneil, patty_farrell).
starred(diary_of_a_wimpy_kid, nicholas_carey, pete_hosey).
starred(diary_of_a_wimpy_kid, owen_best, bryce_anderson).
starred(diary_of_a_wimpy_kid, owen_fielding, manny_heffley).
starred(diary_of_a_wimpy_kid, rachael_harris, susan_heffley).
starred(diary_of_a_wimpy_kid, raugi_yu, vice_principal_roy).
starred(diary_of_a_wimpy_kid, rob_labelle, mr_winsky).
starred(diary_of_a_wimpy_kid, robert_capron, rowley_jefferson).
starred(diary_of_a_wimpy_kid, samantha_page, shelly).
starred(diary_of_a_wimpy_kid, samuel_patrick_chu, carter).
starred(diary_of_a_wimpy_kid, severin_korfer, dieter_muller).
starred(diary_of_a_wimpy_kid, steve_zahn, frank_heffley).
starred(diary_of_a_wimpy_kid, zachary_gordon, greg_heffley).
starred(divergent, alexander_hashioka, erudite_guard).
starred(divergent, amy_newbold, molly).
starred(divergent, ansel_elgort, caleb).
starred(divergent, anthony_fleming, guard).
starred(divergent, ashley_judd, natalie).
starred(divergent, ben_lamb, edward).
starred(divergent, ben_lloyd_hughes, will).
starred(divergent, christian_madsen, al).
starred(divergent, clara_burger, little_abnegation_girl).
starred(divergent, jai_courtney, eric).
starred(divergent, janet_ulrich_brooks, erudite_teacher).
starred(divergent, justine_wachsberger, lauren).
starred(divergent, kate_winslet, jeanine).
starred(divergent, lukas_burger, jonathan_ziegler).
starred(divergent, maggie_q, tori).
starred(divergent, mekhi_phifer, max).
starred(divergent, michael_sherry, bullied_abnegation_boy).
starred(divergent, miles_teller, peter).
starred(divergent, ray_stevenson, marcus).
starred(divergent, rotimi, ezra).
starred(divergent, ryan_carr, dauntless_man).
starred(divergent, shailene_woodley, tris).
starred(divergent, theo_james, four).
starred(divergent, tony_goldwyn, andrew).
starred(divergent, will_blagrove, dauntless_patrol_man).
starred(divergent, zoe_kravitz, christina).
starred(django_unchained, amber_tamblyn, daughter_of_a_son_of_a_gunfighter).
starred(django_unchained, ato_essandoh, d_artagnan).
starred(django_unchained, bruce_dern, old_man_carrucan).
starred(django_unchained, christoph_waltz, dr_king_schultz).
starred(django_unchained, clay_donahue_fontenot, big_freds_opponent).
starred(django_unchained, cooper_huckabee, lil_raj_brittle).
starred(django_unchained, dana_gourrier, cora).
starred(django_unchained, david_steen, mr_stonesipher).
starred(django_unchained, dennis_christopher, leonide_moguy).
starred(django_unchained, doc_duhame, ellis_brittle).
starred(django_unchained, don_johnson, big_daddy).
starred(django_unchained, don_stroud, sheriff_bill_sharp).
starred(django_unchained, escalante_lundy, big_fred).
starred(django_unchained, franco_nero, amerigo_vessepi).
starred(django_unchained, james_remar, butch_pooch_ace_speck).
starred(django_unchained, james_russo, dicky_speck).
starred(django_unchained, jamie_foxx, django).
starred(django_unchained, jonah_hill, bag_head_2).
starred(django_unchained, kerry_washington, broomhilda_von_shaft).
starred(django_unchained, laura_cayouette, lara_lee_candie_fitzwilly).
starred(django_unchained, lee_horsley, sheriff_gus).
starred(django_unchained, leonardo_dicaprio, calvin_candie).
starred(django_unchained, m_c_gainey, big_john_brittle).
starred(django_unchained, miriam_f_glover, betina).
starred(django_unchained, nichole_galicia, sheba).
starred(django_unchained, russ_tamblyn, son_of_a_gunfighter).
starred(django_unchained, sammi_rotibi, rodney).
starred(django_unchained, samuel_l_jackson, stephen).
starred(django_unchained, tom_wopat, us_marshall_gill_tatum).
starred(django_unchained, walton_goggins, billy_crash).
starred(driver, albert_brooks, bernie_rose).
starred(driver, bryan_cranston, shannon).
starred(driver, carey_mulligan, irene).
starred(driver, christina_hendricks, blanche).
starred(driver, james_biberi, cook).
starred(driver, jeff_wolfe, tan_suit).
starred(driver, jimmy_hart, hitman_2).
starred(driver, joe_bucaro, chauffeur).
starred(driver, kaden_leos, benicio).
starred(driver, oscar_isaac, standard).
starred(driver, ron_perlman, nino).
starred(driver, russ_tamblyn, doc).
starred(driver, ryan_gosling, driver).
starred(driver, tiara_parker, young_woman).
starred(driver, tim_trella, hitman_1).
starred(driver, tina_huang, waitress).
starred(ex_machina, alicia_vikander, ava).
starred(ex_machina, claire_selby, lily).
starred(ex_machina, corey_johnson, jay).
starred(ex_machina, domhnall_gleeson, caleb).
starred(ex_machina, elina_alminas, amber).
starred(ex_machina, gana_bayarsaikhan, jade).
starred(ex_machina, oscar_isaac, nathan).
starred(ex_machina, sonoya_mizuno, kyoko).
starred(ex_machina, symara_templeman, jasmine).
starred(ex_machina, tiffany_pisani, katya).
starred(fantastic_four, abhi_trivedi, baxter_employee).
starred(fantastic_four, anna_parsons, girl_classmate).
starred(fantastic_four, barney_lanning, science_fair_plane_kid).
starred(fantastic_four, benjamin_papac, baxter_student).
starred(fantastic_four, chet_hanks, jimmy_grimm).
starred(fantastic_four, dan_castellaneta, mr_kenny).
starred(fantastic_four, dennis_thomas_iv, baxter_security_guard).
starred(fantastic_four, evan_hannemann, young_ben).
starred(fantastic_four, gabe_begneaud, trash_talk_car_driver).
starred(fantastic_four, jamie_bell, ben_grimm_the_thing).
starred(fantastic_four, jim_gleason, board_member).
starred(fantastic_four, joshua_montes, quarterback_speech_school_kid).
starred(fantastic_four, kate_mara, sue_storm).
starred(fantastic_four, kylen_davis, teasing_school_kid).
starred(fantastic_four, mary_pat_green, mrs_grimm).
starred(fantastic_four, mary_rachel_dudley, mrs_richards).
starred(fantastic_four, michael_b_jordan, johnny_storm).
starred(fantastic_four, miles_teller, reed_richards).
starred(fantastic_four, owen_judge, young_reed).
starred(fantastic_four, reg_e_cathey, dr_franklin_storm).
starred(fantastic_four, rhonda_johnson_dents, science_fair_judge).
starred(fantastic_four, tim_blake_nelson, dr_allen).
starred(fantastic_four, tim_heidecker, mr_richards).
starred(fantastic_four, toby_kebbell, victor_von_doom_dr_doom).
starred(fantastic_four, wayne_pere, science_fair_judge).
starred(fifty_shades_of_grey, andrew_airlie, mr_grey).
starred(fifty_shades_of_grey, anna_louise_sargeant, female_grad).
starred(fifty_shades_of_grey, anthony_konechny, paul_clayton).
starred(fifty_shades_of_grey, bruce_dawson, mr_clayton).
starred(fifty_shades_of_grey, callum_keith_rennie, ray).
starred(fifty_shades_of_grey, chris_shields, wsu_professor).
starred(fifty_shades_of_grey, christine_willes, wsu_grad_speaker).
starred(fifty_shades_of_grey, dakota_johnson, anastasia_steele).
starred(fifty_shades_of_grey, dylan_neal, bob).
starred(fifty_shades_of_grey, elliat_albrecht, olivia).
starred(fifty_shades_of_grey, eloise_mumford, kate).
starred(fifty_shades_of_grey, emily_fonda, martina).
starred(fifty_shades_of_grey, jamie_dornan, christian_grey).
starred(fifty_shades_of_grey, jennifer_ehle, carla).
starred(fifty_shades_of_grey, luke_grimes, elliot_grey).
starred(fifty_shades_of_grey, marcia_gay_harden, dr_grey).
starred(fifty_shades_of_grey, max_martini, taylor).
starred(fifty_shades_of_grey, rachel_skarsten, andrea).
starred(fifty_shades_of_grey, rita_ora, mia_grey).
starred(fifty_shades_of_grey, tom_butler, wsu_university_president).
starred(fifty_shades_of_grey, victor_rasuk, jose).
starred(footloose, andie_macdowell, vi_moore).
starred(footloose, anessa_ramsey, caroline).
starred(footloose, brett_rice, roger_dunbar).
starred(footloose, claude_phillips, claude).
starred(footloose, corey_flaspoehler, russell).
starred(footloose, dennis_quaid, rev_shaw_moore).
starred(footloose, enisha_brewster, etta).
starred(footloose, frank_hoyt_taylor, mr_parker).
starred(footloose, jason_ferguson, travis).
starred(footloose, jayson_smith, officer_herb).
starred(footloose, josh_warren, rich).
starred(footloose, julianne_hough, ariel).
starred(footloose, kenny_wormald, ren).
starred(footloose, kim_dickens, lulu_warnicker).
starred(footloose, l_warren_young, andy_beamis).
starred(footloose, maggie_jones, amy_warnicker).
starred(footloose, mary_charles_jones, sarah_warnicker).
starred(footloose, miles_teller, willard).
starred(footloose, patrick_john_flueger, chuck).
starred(footloose, ray_mckinnon, wes_warnicker).
starred(footloose, ser_darius_blain, woody).
starred(footloose, ziah_colon, rusty).
starred(frozen, alan_tudyk, duke).
starred(frozen, chris_williams, oaken).
starred(frozen, ciaran_hinds, pabbie_grandpa).
starred(frozen, edie_mcclurg, gerda).
starred(frozen, eva_bella, young_elsa).
starred(frozen, idina_menzel, elsa).
starred(frozen, jeffrey_marcus, german_dignitary).
starred(frozen, jesse_corti, spanish_dignitary).
starred(frozen, jonathan_groff, kristoff).
starred(frozen, josh_gad, olaf).
starred(frozen, kristen_bell, anna).
starred(frozen, livvy_stubenrauch, young_anna).
starred(frozen, maia_wilson, bulda).
starred(frozen, maurice_lamarche, king).
starred(frozen, robert_pine, bishop).
starred(frozen, santino_fontana, hans).
starred(frozen, spencer_ganus, teen_elsa).
starred(frozen, stephen_j_anderson, kai).
starred(frozen, tucker_gilmore, irish_dignitary).
starred(gone_girl, ben_affleck, nick_dunne).
starred(gone_girl, boyd_holbrook, jeff).
starred(gone_girl, carrie_coon, margo_dunne).
starred(gone_girl, casey_wilson, noelle_hawthorne).
starred(gone_girl, darin_cooper, mustached_man).
starred(gone_girl, david_clennon, rand_elliott).
starred(gone_girl, emily_ratajkowski, andie_fitzgerald).
starred(gone_girl, jamie_mcshane, donnelly).
starred(gone_girl, kate_campbell, above_it_all_journalist).
starred(gone_girl, kathleen_rose_perkins, shawna_kelly).
starred(gone_girl, kim_dickens, detective_rhonda_boney).
starred(gone_girl, lee_norris, officer).
starred(gone_girl, leonard_kelly_young, bill_dunne).
starred(gone_girl, lisa_banes, marybeth_elliott).
starred(gone_girl, lola_kirke, greta).
starred(gone_girl, lynn_adrianna, kelly_capitono).
starred(gone_girl, mark_atteberry, fbi).
starred(gone_girl, missi_pyle, ellen_abbott).
starred(gone_girl, neil_patrick_harris, desi_collings).
starred(gone_girl, patrick_fugit, officer_james_gilpin).
starred(gone_girl, pete_housman, walter).
starred(gone_girl, rosamund_pike, amy_dunne).
starred(gone_girl, sela_ward, sharon_schieber).
starred(gone_girl, tyler_perry, tanner_bolt).
starred(guardians_of_the_galaxy, benicio_del_toro, the_collector).
starred(guardians_of_the_galaxy, bradley_cooper, rocket).
starred(guardians_of_the_galaxy, chris_pratt, peter_quill).
starred(guardians_of_the_galaxy, christopher_fairbank, the_broker).
starred(guardians_of_the_galaxy, dave_bautista, drax).
starred(guardians_of_the_galaxy, djimon_hounsou, korath).
starred(guardians_of_the_galaxy, glenn_close, nova_prime).
starred(guardians_of_the_galaxy, gregg_henry, grandpa).
starred(guardians_of_the_galaxy, janis_ahern, merediths_mother).
starred(guardians_of_the_galaxy, john_c_reilly, corpsman_dey).
starred(guardians_of_the_galaxy, karen_gillan, nebula).
starred(guardians_of_the_galaxy, laura_haddock, meredith_quill).
starred(guardians_of_the_galaxy, lee_pace, ronan).
starred(guardians_of_the_galaxy, lindsay_morton, merediths_best_friend).
starred(guardians_of_the_galaxy, melia_kreiling, bereet).
starred(guardians_of_the_galaxy, michael_rooker, yondu_udonta).
starred(guardians_of_the_galaxy, nick_holmes, horuzs_mate).
starred(guardians_of_the_galaxy, peter_serafinowicz, denarian_saal).
starred(guardians_of_the_galaxy, robert_firth, dr_fitzgibbon).
starred(guardians_of_the_galaxy, sean_gunn, kraglin).
starred(guardians_of_the_galaxy, solomon_mousley, merediths_brother).
starred(guardians_of_the_galaxy, tom_proctor, horuz).
starred(guardians_of_the_galaxy, vin_diesel, groot).
starred(guardians_of_the_galaxy, wyatt_oleff, young_quill).
starred(guardians_of_the_galaxy, zoe_saldana, gamora).
starred(harry_potter_and_the_deathly_hallows_part_1, alan_rickman, professor_severus_snape).
starred(harry_potter_and_the_deathly_hallows_part_1, andy_linden, mundungus_fletcher).
starred(harry_potter_and_the_deathly_hallows_part_1, anna_shaffer, romilda_vane).
starred(harry_potter_and_the_deathly_hallows_part_1, arben_bajraktaraj, antonin_dolohov).
starred(harry_potter_and_the_deathly_hallows_part_1, bill_nighy, minister_rufus_scrimgeour).
starred(harry_potter_and_the_deathly_hallows_part_1, bonnie_wright, ginny_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, brendan_gleeson, alastor_mad_eye_moody).
starred(harry_potter_and_the_deathly_hallows_part_1, carolyn_pickles, charity_burbage).
starred(harry_potter_and_the_deathly_hallows_part_1, clemence_poesy, fleur_delacour).
starred(harry_potter_and_the_deathly_hallows_part_1, daniel_radcliffe, harry_potter).
starred(harry_potter_and_the_deathly_hallows_part_1, david_ryall, elphias_doge).
starred(harry_potter_and_the_deathly_hallows_part_1, david_thewlis, remus_lupin).
starred(harry_potter_and_the_deathly_hallows_part_1, devon_murray, seamus_finnigan).
starred(harry_potter_and_the_deathly_hallows_part_1, domhnall_gleeson, bill_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, emma_watson, hermione_granger).
starred(harry_potter_and_the_deathly_hallows_part_1, eva_alexander, waitress).
starred(harry_potter_and_the_deathly_hallows_part_1, evanna_lynch, luna_lovegood).
starred(harry_potter_and_the_deathly_hallows_part_1, fiona_shaw, petunia_dursley).
starred(harry_potter_and_the_deathly_hallows_part_1, frances_de_la_tour, madame_maxime).
starred(harry_potter_and_the_deathly_hallows_part_1, freddie_stroma, cormac_mclaggen).
starred(harry_potter_and_the_deathly_hallows_part_1, george_harris, kingsley_shacklebolt).
starred(harry_potter_and_the_deathly_hallows_part_1, georgina_leonidas, katie_bell).
starred(harry_potter_and_the_deathly_hallows_part_1, guy_henry, pius_thicknesse).
starred(harry_potter_and_the_deathly_hallows_part_1, harry_melling, dudley_dursley).
starred(harry_potter_and_the_deathly_hallows_part_1, helen_mccrory, narcissa_malfoy).
starred(harry_potter_and_the_deathly_hallows_part_1, helena_bonham_carter, bellatrix_lestrange).
starred(harry_potter_and_the_deathly_hallows_part_1, ian_kelly, mr_granger).
starred(harry_potter_and_the_deathly_hallows_part_1, isabella_laughland, leanne).
starred(harry_potter_and_the_deathly_hallows_part_1, james_phelps, fred_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, jason_isaacs, lucius_malfoy).
starred(harry_potter_and_the_deathly_hallows_part_1, jessie_cave, lavender_brown).
starred(harry_potter_and_the_deathly_hallows_part_1, john_hurt, ollivander).
starred(harry_potter_and_the_deathly_hallows_part_1, josh_herdman, gregory_goyle).
starred(harry_potter_and_the_deathly_hallows_part_1, julie_walters, molly_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, katie_leung, cho_chang).
starred(harry_potter_and_the_deathly_hallows_part_1, mark_williams, arthur_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, matthew_lewis, neville_longbottom).
starred(harry_potter_and_the_deathly_hallows_part_1, matyelok_gibbs, auntie_muriel_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, michael_gambon, professor_albus_dumbledore).
starred(harry_potter_and_the_deathly_hallows_part_1, michelle_fairley, mrs_granger).
starred(harry_potter_and_the_deathly_hallows_part_1, natalia_tena, nymphadora_tonks).
starred(harry_potter_and_the_deathly_hallows_part_1, oliver_phelps, george_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, ralph_fiennes, lord_voldemort).
starred(harry_potter_and_the_deathly_hallows_part_1, ralph_ineson, amycus_carrow).
starred(harry_potter_and_the_deathly_hallows_part_1, rhys_ifans, xenophilius_lovegood).
starred(harry_potter_and_the_deathly_hallows_part_1, richard_griffiths, vernon_dursley).
starred(harry_potter_and_the_deathly_hallows_part_1, robbie_coltrane, rubeus_hagrid).
starred(harry_potter_and_the_deathly_hallows_part_1, rod_hunt, thorfinn_rowle).
starred(harry_potter_and_the_deathly_hallows_part_1, rupert_grint, ron_weasley).
starred(harry_potter_and_the_deathly_hallows_part_1, simon_mcburney, kreacher).
starred(harry_potter_and_the_deathly_hallows_part_1, suzanne_toase, alecto_carrow).
starred(harry_potter_and_the_deathly_hallows_part_1, timothy_spall, wormtail).
starred(harry_potter_and_the_deathly_hallows_part_1, tom_felton, draco_malfoy).
starred(harry_potter_and_the_deathly_hallows_part_1, william_melling, nigel).
starred(harry_potter_and_the_deathly_hallows_part_2, afshan_azad, padma_patil).
starred(harry_potter_and_the_deathly_hallows_part_2, alan_rickman, professor_severus_snape).
starred(harry_potter_and_the_deathly_hallows_part_2, alfred_enoch, dean_thomas).
starred(harry_potter_and_the_deathly_hallows_part_2, amber_evans, twin_girl_1).
starred(harry_potter_and_the_deathly_hallows_part_2, anna_shaffer, romilda_vane).
starred(harry_potter_and_the_deathly_hallows_part_2, anthony_allgood, gringotts_guard).
starred(harry_potter_and_the_deathly_hallows_part_2, bonnie_wright, ginny_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, chris_rankin, percy_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, ciaran_hinds, aberforth_dumbledore).
starred(harry_potter_and_the_deathly_hallows_part_2, clemence_poesy, fleur_delacour).
starred(harry_potter_and_the_deathly_hallows_part_2, daniel_radcliffe, harry_potter).
starred(harry_potter_and_the_deathly_hallows_part_2, david_bradley, argus_filch).
starred(harry_potter_and_the_deathly_hallows_part_2, david_thewlis, remus_lupin).
starred(harry_potter_and_the_deathly_hallows_part_2, devon_murray, seamus_finnigan).
starred(harry_potter_and_the_deathly_hallows_part_2, domhnall_gleeson, bill_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, emma_watson, hermione_granger).
starred(harry_potter_and_the_deathly_hallows_part_2, evanna_lynch, luna_lovegood).
starred(harry_potter_and_the_deathly_hallows_part_2, freddie_stroma, cormac_mclaggen).
starred(harry_potter_and_the_deathly_hallows_part_2, gemma_jones, madam_pomfrey).
starred(harry_potter_and_the_deathly_hallows_part_2, george_harris, kingsley_shacklebolt).
starred(harry_potter_and_the_deathly_hallows_part_2, georgina_leonidas, katie_bell).
starred(harry_potter_and_the_deathly_hallows_part_2, guy_henry, pius_thicknesse).
starred(harry_potter_and_the_deathly_hallows_part_2, hebe_beardsall, ariana_dumbledore).
starred(harry_potter_and_the_deathly_hallows_part_2, helen_mccrory, narcissa_malfoy).
starred(harry_potter_and_the_deathly_hallows_part_2, helena_bonham_carter, bellatrix_lestrange).
starred(harry_potter_and_the_deathly_hallows_part_2, isabella_laughland, leanne).
starred(harry_potter_and_the_deathly_hallows_part_2, james_phelps, fred_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, jason_isaacs, lucius_malfoy).
starred(harry_potter_and_the_deathly_hallows_part_2, jessie_cave, lavender_brown).
starred(harry_potter_and_the_deathly_hallows_part_2, jim_broadbent, professor_horace_slughorn).
starred(harry_potter_and_the_deathly_hallows_part_2, john_hurt, ollivander).
starred(harry_potter_and_the_deathly_hallows_part_2, jon_key, bogrod).
starred(harry_potter_and_the_deathly_hallows_part_2, josh_herdman, gregory_goyle).
starred(harry_potter_and_the_deathly_hallows_part_2, julie_walters, molly_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, katie_leung, cho_chang).
starred(harry_potter_and_the_deathly_hallows_part_2, kelly_macdonald, helena_ravenclaw).
starred(harry_potter_and_the_deathly_hallows_part_2, louis_cordice, blaise_zabini).
starred(harry_potter_and_the_deathly_hallows_part_2, maggie_smith, professor_minerva_mcgonagall).
starred(harry_potter_and_the_deathly_hallows_part_2, mark_williams, arthur_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, matthew_lewis, neville_longbottom).
starred(harry_potter_and_the_deathly_hallows_part_2, michael_gambon, professor_albus_dumbledore).
starred(harry_potter_and_the_deathly_hallows_part_2, miriam_margolyes, professor_pomona_sprout).
starred(harry_potter_and_the_deathly_hallows_part_2, natalia_tena, nymphadora_tonks).
starred(harry_potter_and_the_deathly_hallows_part_2, nick_moran, scabior).
starred(harry_potter_and_the_deathly_hallows_part_2, oliver_phelps, george_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, ralph_fiennes, lord_voldemort).
starred(harry_potter_and_the_deathly_hallows_part_2, ralph_ineson, amycus_carrow).
starred(harry_potter_and_the_deathly_hallows_part_2, ruby_evans, twin_girl_2).
starred(harry_potter_and_the_deathly_hallows_part_2, rupert_grint, ron_weasley).
starred(harry_potter_and_the_deathly_hallows_part_2, rusty_goffe, aged_gringotts_goblin).
starred(harry_potter_and_the_deathly_hallows_part_2, scarlett_hefner, pansy_parkinson).
starred(harry_potter_and_the_deathly_hallows_part_2, sian_grace_phillips, screaming_girl).
starred(harry_potter_and_the_deathly_hallows_part_2, suzanne_toase, alecto_carrow).
starred(harry_potter_and_the_deathly_hallows_part_2, tom_felton, draco_malfoy).
starred(harry_potter_and_the_deathly_hallows_part_2, warwick_davis, professor_filius_flitwick).
starred(harry_potter_and_the_deathly_hallows_part_2, william_melling, nigel).
starred(her, amy_adams, amy).
starred(her, artt_butler, text_voice).
starred(her, bill_hader, chat_room_friend2).
starred(her, brian_johnson, os1_commercial_lead).
starred(her, chris_pratt, paul).
starred(her, dane_white, son).
starred(her, david_azar, theodores_divorce_attorney).
starred(her, evelyn_edwards, mother_who_dated_pricks).
starred(her, gabe_gomez, letter_writer3).
starred(her, guy_lewis, marriage_counselor).
starred(her, james_ozasky, catherines_dad).
starred(her, joaquin_phoenix, theodore).
starred(her, kristen_wiig, sexykitten).
starred(her, lisa_renee_pitts, letter_writer2).
starred(her, lynn_adrianna, letter_writer1).
starred(her, matt_letscher, charles).
starred(her, may_lindstrom, sexy_pregnant_tv_star).
starred(her, melanie_seacat, nice_lady).
starred(her, nicole_grother, daughter).
starred(her, olivia_wilde, blind_date).
starred(her, pramode_kumar, pizza_vendor).
starred(her, rooney_mara, catherine).
starred(her, samantha_sarakanti, mother_of_newborn).
starred(her, scarlett_johansson, samantha).
starred(her, spike_jonze, alien_child).
starred(her, steve_zissis, new_sweet_boyfriend_of_mother_who_dated_pricks).
starred(hot_tub_time_machine, aliu_oyofo, young_nick).
starred(hot_tub_time_machine, brook_bennett, young_lou).
starred(hot_tub_time_machine, charlie_mcdermott, chaz).
starred(hot_tub_time_machine, chevy_chase, repairman).
starred(hot_tub_time_machine, clark_duke, jacob).
starred(hot_tub_time_machine, collette_wolfe, kelly).
starred(hot_tub_time_machine, craig_robinson, nick).
starred(hot_tub_time_machine, crispin_glover, phil).
starred(hot_tub_time_machine, crystal_lowe, zoe).
starred(hot_tub_time_machine, geoff_gustafson, dr_jeff).
starred(hot_tub_time_machine, jake_rose, young_adam).
starred(hot_tub_time_machine, jessica_pare, tara).
starred(hot_tub_time_machine, john_cusack, adam).
starred(hot_tub_time_machine, julia_maxwell, lucy).
starred(hot_tub_time_machine, kellee_stewart, courtney).
starred(hot_tub_time_machine, lizzy_caplan, april).
starred(hot_tub_time_machine, lyndsy_fonseca, jenny).
starred(hot_tub_time_machine, rob_corddry, lou).
starred(hot_tub_time_machine, sebastian_stan, blaine).
starred(inception, cillian_murphy, robert_fischer).
starred(inception, claire_geare, phillipa_3_years_old).
starred(inception, dileep_rao, yusuf).
starred(inception, earl_cameron, elderly_bald_man).
starred(inception, elliot_page, ariadne).
starred(inception, johnathan_geare, james_3_years_old).
starred(inception, joseph_gordon_levitt, arthur).
starred(inception, ken_watanabe, saito).
starred(inception, leonardo_dicaprio, cobb).
starred(inception, lukas_haas, nash).
starred(inception, magnus_nolan, james_20_months_old).
starred(inception, marion_cotillard, mal).
starred(inception, michael_caine, miles).
starred(inception, miranda_nolan, flight_attendant).
starred(inception, pete_postlethwaite, maurice_fischer).
starred(inception, russ_fega, cab_driver).
starred(inception, ryan_hayward, lawyer).
starred(inception, tai_li_lee, tadashi).
starred(inception, talulah_riley, blonde).
starred(inception, taylor_geare, phillipa_5_years_old).
starred(inception, tim_kelleher, thin_man).
starred(inception, tohoru_masamune, japanese_security_guard).
starred(inception, tom_berenger, browning).
starred(inception, tom_hardy, eames).
starred(inception, yuji_okumoto, saitos_attendant).
starred(inside_out, amy_poehler, joy).
starred(inside_out, bill_hader, fear).
starred(inside_out, bobby_moynihan, forgetter_bobby).
starred(inside_out, carlos_alazraqui, helicopter_pilot).
starred(inside_out, carlos_alazraqui, dads_fear).
starred(inside_out, dave_goelz, subconscious_guard_frank).
starred(inside_out, diane_lane, mom).
starred(inside_out, flea, mind_worker_cop_jake).
starred(inside_out, frank_oz, subconscious_guard_dave).
starred(inside_out, john_ratzenberger, fritz).
starred(inside_out, josh_cooley, jangles).
starred(inside_out, kaitlyn_dias, riley).
starred(inside_out, kyle_maclachlan, dad).
starred(inside_out, lewis_black, anger).
starred(inside_out, lori_alan, moms_sadness).
starred(inside_out, mindy_kaling, disgust).
starred(inside_out, paula_pell, dream_director).
starred(inside_out, paula_pell, moms_anger).
starred(inside_out, paula_poundstone, forgetter_paula).
starred(inside_out, pete_docter, dads_anger).
starred(inside_out, peter_sagal, clowns_joy).
starred(inside_out, phyllis_smith, sadness).
starred(inside_out, rashida_jones, cool_girls_emotions).
starred(inside_out, richard_kind, bing_bong).
starred(interstellar, andrew_borba, smith).
starred(interstellar, anne_hathaway, brand).
starred(interstellar, bill_irwin, tars).
starred(interstellar, brooke_smith, nurse).
starred(interstellar, casey_affleck, tom).
starred(interstellar, collette_wolfe, ms_hanley).
starred(interstellar, david_gyasi, romilly).
starred(interstellar, david_oyelowo, school_principal).
starred(interstellar, ellen_burstyn, murph_older).
starred(interstellar, elyes_gabel, administrator).
starred(interstellar, flora_nolan, girl_on_truck).
starred(interstellar, francis_mccarthy, boots).
starred(interstellar, griffen_fraser, boy_on_truck).
starred(interstellar, jeff_hephner, doctor).
starred(interstellar, jessica_chastain, murph).
starred(interstellar, john_lithgow, donald).
starred(interstellar, josh_stewart, case).
starred(interstellar, leah_cairns, lois).
starred(interstellar, lena_georgas, nurse_practitioner).
starred(interstellar, mackenzie_foy, murph_10_yrs).
starred(interstellar, matt_damon, mann).
starred(interstellar, matthew_mcconaughey, cooper).
starred(interstellar, michael_caine, professor_brand).
starred(interstellar, russ_fega, crew_chief).
starred(interstellar, timothee_chalamet, tom_15_yrs).
starred(interstellar, topher_grace, getty).
starred(interstellar, wes_bentley, doyle).
starred(interstellar, william_devane, williams).
starred(interstellar, william_dickinson, coop).
starred(jack_reacher, alexia_fast, sandy).
starred(jack_reacher, alicia_murton, mrs_sawyer).
starred(jack_reacher, david_oyelowo, emerson).
starred(jack_reacher, david_whalen, mr_holt).
starred(jack_reacher, delilah_picart, rita_coronado).
starred(jack_reacher, denver_milord, punk).
starred(jack_reacher, dylan_kussman, gary).
starred(jack_reacher, jai_courtney, charlie).
starred(jack_reacher, james_martin_kelly, rob_farrior).
starred(jack_reacher, joe_coyle, darren_sawyer).
starred(jack_reacher, joseph_sikora, barr).
starred(jack_reacher, josh_helman, jeb).
starred(jack_reacher, julia_yorks, chrissie_farrior).
starred(jack_reacher, michael_minor, eyewitness).
starred(jack_reacher, michael_raymond_james, linsky).
starred(jack_reacher, nicole_forester, nancy_holt).
starred(jack_reacher, peter_gannon, mr_archer).
starred(jack_reacher, richard_jenkins, rodin).
starred(jack_reacher, robert_duvall, cash).
starred(jack_reacher, rosamund_pike, helen).
starred(jack_reacher, sophie_guest, little_girl).
starred(jack_reacher, susan_angelo, oline_archer).
starred(jack_reacher, tom_cruise, reacher).
starred(jack_reacher, tristan_elma, marcos_coronado).
starred(jack_reacher, vladimir_sizov, vlad).
starred(jack_reacher, werner_herzog, the_zec).
starred(john_wick, adrianne_palicki, ms_perkins).
starred(john_wick, alexander_frekey, alexander).
starred(john_wick, alfie_allen, iosef_tarasov).
starred(john_wick, bridget_moynahan, helen).
starred(john_wick, bridget_regan, addy).
starred(john_wick, clarke_peters, harry).
starred(john_wick, daniel_bernhardt, kirill).
starred(john_wick, david_patrick_kelly, charlie).
starred(john_wick, dean_winters, avi).
starred(john_wick, gameela_wright, delivery_woman).
starred(john_wick, ian_mcshane, winston).
starred(john_wick, john_leguizamo, aurelio).
starred(john_wick, kazy_tauginas, ivan).
starred(john_wick, keanu_reeves, john_wick).
starred(john_wick, keith_jardine, kuzma).
starred(john_wick, kevin_nash, francis).
starred(john_wick, lance_reddick, hotel_manager_charon).
starred(john_wick, michael_nyqvist, viggo_tarasov).
starred(john_wick, munro_m_bonnell, priest).
starred(john_wick, omer_barnea, gregori).
starred(john_wick, patricia_squire, elderly_woman).
starred(john_wick, randall_duk_kim, continental_doctor).
starred(john_wick, tait_fletcher, nicholai).
starred(john_wick, thomas_sadoski, jimmy).
starred(john_wick, toby_leonard_moore, victor).
starred(john_wick, vladimir_troitsky, team_leader).
starred(john_wick, vladislav_koulikov, pavel).
starred(john_wick, willem_dafoe, marcus).
starred(jurassic_world, andy_buckley, scott).
starred(jurassic_world, anna_talakkottur, erica_brand).
starred(jurassic_world, bd_wong, dr_henry_wu).
starred(jurassic_world, brian_tee, hamada).
starred(jurassic_world, bryce_dallas_howard, claire_dearing).
starred(jurassic_world, chris_pratt, owen_grady).
starred(jurassic_world, colby_boothman, young_raptor_handler).
starred(jurassic_world, courtney_clark, mosasaurus_announcer).
starred(jurassic_world, eric_edelstein, paddock_supervisor).
starred(jurassic_world, irrfan_khan, masrani).
starred(jurassic_world, jake_johnson, lowery).
starred(jurassic_world, james_dumont, hal_osterly).
starred(jurassic_world, jimmy_fallon, jimmy_fallon).
starred(jurassic_world, judy_greer, karen).
starred(jurassic_world, katie_mcgrath, zara).
starred(jurassic_world, lauren_lapkus, vivian).
starred(jurassic_world, matt_burke, jim_drucker).
starred(jurassic_world, matty_cardarople, gyrosphere_operator).
starred(jurassic_world, michael_papajohn, ingen_contractor).
starred(jurassic_world, nick_robinson, zach).
starred(jurassic_world, omar_sy, barry).
starred(jurassic_world, ty_simpkins, gray).
starred(jurassic_world, vincent_d_onofrio, vic_hoskins).
starred(kick_ass, aaron_johnson, dave_lizewski_kick_ass).
starred(kick_ass, adrian_martinez, ginger_goon).
starred(kick_ass, anthony_desio, baby_goon).
starred(kick_ass, carlos_peres, buttons).
starred(kick_ass, chloe_grace_moretz, mindy_macready_hit_girl).
starred(kick_ass, christopher_mintz_plasse, chris_d_amico_red_mist).
starred(kick_ass, clark_duke, marty).
starred(kick_ass, corey_johnson, sporty_goon).
starred(kick_ass, deborah_twiss, mrs_zane).
starred(kick_ass, dexter_fletcher, cody).
starred(kick_ass, elizabeth_mcgovern, mrs_lizewski).
starred(kick_ass, evan_peters, todd).
starred(kick_ass, garrett_m_brown, mr_lizewski).
starred(kick_ass, hubert_boorder, oscar_juarez).
starred(kick_ass, jason_flemyng, lobby_goon).
starred(kick_ass, joe_bacino, posh_goon).
starred(kick_ass, johnny_hopkins, gang_kid).
starred(kick_ass, kenneth_simmons, scary_goon).
starred(kick_ass, lyndsy_fonseca, katie_deauxma).
starred(kick_ass, mark_strong, frank_d_amico).
starred(kick_ass, michael_rispoli, big_joe).
starred(kick_ass, nicolas_cage, damon_macready_big_daddy).
starred(kick_ass, ohene_cornelius, gang_kid).
starred(kick_ass, randall_batinkoff, tre_fernandez).
starred(kick_ass, russell_bentley, medic).
starred(kick_ass, sophie_wu, erika_cho).
starred(kick_ass, stu_riley, huge_goon).
starred(kick_ass, tamer_hassan, matthew).
starred(kick_ass, tim_plester, danil).
starred(kick_ass, yancy_butler, angie_d_amico).
starred(killing_them_softly, ben_mendelsohn, russell).
starred(killing_them_softly, brad_pitt, jackie).
starred(killing_them_softly, bryan_billingsley, bar_patron_1).
starred(killing_them_softly, christopher_berry, cab_driver_agent).
starred(killing_them_softly, dared_wright, waiter).
starred(killing_them_softly, george_carroll, kenny_gill).
starred(killing_them_softly, james_gandolfini, mickey).
starred(killing_them_softly, joe_chrest, business_suit_agent).
starred(killing_them_softly, john_mcconnell, bartender_2).
starred(killing_them_softly, kenneth_brown_jr, security_force_agent).
starred(killing_them_softly, linara_washington, woman).
starred(killing_them_softly, max_casella, barry_caprio).
starred(killing_them_softly, mustafa_harris, bartender_1).
starred(killing_them_softly, ray_liotta, markie_trattman).
starred(killing_them_softly, richard_jenkins, driver).
starred(killing_them_softly, roger_pfeiffer, bar_patron_3).
starred(killing_them_softly, ross_brodar, poker_guy).
starred(killing_them_softly, sam_shepard, dillon).
starred(killing_them_softly, scoot_mcnairy, frankie).
starred(killing_them_softly, shannon_brewer, bar_patron_2).
starred(killing_them_softly, trevor_long, steve_caprio).
starred(killing_them_softly, vincent_curatola, johnny_amato).
starred(killing_them_softly, wade_allen, business_suit_agent).
starred(kingsman_the_secret_service, alex_nikolov, little_eggsy).
starred(kingsman_the_secret_service, colin_firth, harry_hart_galahad).
starred(kingsman_the_secret_service, edward_holcroft, charlie).
starred(kingsman_the_secret_service, fiona_hampton, amelia).
starred(kingsman_the_secret_service, geoff_bell, dean).
starred(kingsman_the_secret_service, jack_cutmore_scott, rufus).
starred(kingsman_the_secret_service, jack_davenport, lancelot).
starred(kingsman_the_secret_service, jonno_davies, lee).
starred(kingsman_the_secret_service, jordan_long, poodle).
starred(kingsman_the_secret_service, mark_hamill, professor_arnold).
starred(kingsman_the_secret_service, mark_strong, merlin).
starred(kingsman_the_secret_service, michael_caine, arthur).
starred(kingsman_the_secret_service, morgan_watkins, rottweiler).
starred(kingsman_the_secret_service, nicholas_agnew, nathaniel).
starred(kingsman_the_secret_service, nicholas_banks, digby).
starred(kingsman_the_secret_service, paul_kennington, barman).
starred(kingsman_the_secret_service, ralph_ineson, policeman).
starred(kingsman_the_secret_service, rowan_polonski, piers).
starred(kingsman_the_secret_service, samantha_womack, michelle_unwin).
starred(kingsman_the_secret_service, samuel_l_jackson, valentine).
starred(kingsman_the_secret_service, sofia_boutella, gazelle).
starred(kingsman_the_secret_service, sophie_cookson, roxy).
starred(kingsman_the_secret_service, taron_egerton, gary_eggsy_unwin).
starred(kingsman_the_secret_service, theo_barklem_biggs, ryan).
starred(kingsman_the_secret_service, tobi_bakare, jamal).
starred(kingsman_the_secret_service, tom_prior, hugo).
starred(kingsman_the_secret_service, velibor_topic, big_goon).
starred(knock_knock, aaron_burns, louis).
starred(knock_knock, ana_de_armas, bell).
starred(knock_knock, antonio_quercia, uber_driver).
starred(knock_knock, colleen_camp, vivian).
starred(knock_knock, dan_baily, jake).
starred(knock_knock, ignacia_allamand, karen).
starred(knock_knock, keanu_reeves, evan).
starred(knock_knock, lorenza_izzo, genesis).
starred(knock_knock, megan_baily, lisa).
starred(knock_knock, otto, monkey).
starred(legend, adam_fogerty, pat_connolly).
starred(legend, alex_ferns, mclean).
starred(legend, alex_giannini, tony_caponigro).
starred(legend, chazz_palminteri, angelo_bruno).
starred(legend, chris_mason, ronnie_hart).
starred(legend, christopher_adamson, philip_testa).
starred(legend, christopher_eccleston, nipper_read).
starred(legend, colin_morgan, frank_shea).
starred(legend, david_thewlis, leslie_payne).
starred(legend, duffy, timi_yuro).
starred(legend, emily_browning, frances_shea).
starred(legend, frankie_fitzgerald, jack_dickson).
starred(legend, huggy_leaver, pig_and_whistle_barman).
starred(legend, joshua_hill, constable_scott).
starred(legend, major_johnson_finley, the_double_r_club_singer).
starred(legend, mark_theodore, sonny_liston).
starred(legend, martin_mccreadie, eddie_richardson).
starred(legend, mel_raido, ian_barrie).
starred(legend, millie_brady, joan_collins).
starred(legend, nicholas_farrell, dr_humphries).
starred(legend, paul_anderson, albert_donoghue).
starred(legend, richard_riddell, mike_jobber).
starred(legend, sam_hoare, stefan_de_faye).
starred(legend, sam_spruell, jack_mcvitie).
starred(legend, samantha_pearl, shirley_bassey).
starred(legend, shane_attwooll, george_cornell).
starred(legend, stephen_thompson, ronnie_bender).
starred(legend, tara_fitzgerald, mrs_shea).
starred(legend, taron_egerton, mad_teddy_smith).
starred(legend, tom_hardy, reggie_kray).
starred(mad_max_fury_road, abbey_lee, the_dag).
starred(mad_max_fury_road, angus_sampson, the_organic_mechanic).
starred(mad_max_fury_road, charlize_theron, imperator_furiosa).
starred(mad_max_fury_road, chris_patton, morsov).
starred(mad_max_fury_road, coco_jack_gillies, glory_the_child).
starred(mad_max_fury_road, courtney_eaton, cheedo_the_fragile).
starred(mad_max_fury_road, hugh_keays_byrne, immortan_joe).
starred(mad_max_fury_road, jennifer_hagan, miss_giddy).
starred(mad_max_fury_road, john_howard, the_people_eater).
starred(mad_max_fury_road, john_walton, imperator).
starred(mad_max_fury_road, jon_iles, the_ace).
starred(mad_max_fury_road, josh_helman, slit).
starred(mad_max_fury_road, megan_gale, the_valkyrie).
starred(mad_max_fury_road, melissa_jaffer, keeper_of_the_seeds).
starred(mad_max_fury_road, nathan_jones, rictus_erectus).
starred(mad_max_fury_road, nicholas_hoult, nux).
starred(mad_max_fury_road, quentin_kenihan, corpus_colossus).
starred(mad_max_fury_road, richard_carter, the_bullet_farmer).
starred(mad_max_fury_road, richard_norton, the_prime_imperator).
starred(mad_max_fury_road, riley_keough, capable).
starred(mad_max_fury_road, rosie_huntington_whiteley, the_splendid_angharad).
starred(mad_max_fury_road, stephen_dunlevy, the_rock_rider_chief).
starred(mad_max_fury_road, tom_hardy, max_rockatansky).
starred(mad_max_fury_road, vincent_roxburgh, imperator).
starred(mad_max_fury_road, zoe_kravitz, toast_the_knowing).
starred(margin_call, aasif_mandvi, ramesh_shah).
starred(margin_call, al_sapienza, louis_carmelo).
starred(margin_call, ashley_williams, heather_burke).
starred(margin_call, demi_moore, sarah_robertson).
starred(margin_call, grace_gummer, lucy).
starred(margin_call, jeremy_irons, john_tuld).
starred(margin_call, jimmy_palumbo, security_guard).
starred(margin_call, kevin_spacey, sam_rogers).
starred(margin_call, maria_dizzia, executive_assistant).
starred(margin_call, mary_mcdonnell, mary_rogers).
starred(margin_call, oberon_adjepong, coffee_guy).
starred(margin_call, paul_bettany, will_emerson).
starred(margin_call, penn_badgley, seth_bregman).
starred(margin_call, peter_kim, timothy_singh).
starred(margin_call, simon_baker, jared_cohen).
starred(margin_call, stanley_tucci, eric_dale).
starred(margin_call, susan_blackwell, lauren_bratberg).
starred(margin_call, zachary_quinto, peter_sullivan).
starred(melancholia, alexander_skarsgard, michael).
starred(melancholia, brady_corbet, tim).
starred(melancholia, cameron_spurr, leo).
starred(melancholia, charlotta_miller, betty_1).
starred(melancholia, charlotte_gainsbourg, claire).
starred(melancholia, charlotte_rampling, gaby).
starred(melancholia, christian_geisnaes, wedding_photographer).
starred(melancholia, claire_miller, betty_2).
starred(melancholia, deborah_fronko, michaels_mother).
starred(melancholia, gary_whitaker, limo_driver).
starred(melancholia, james_cagnard, michaels_father).
starred(melancholia, jesper_christensen, little_father).
starred(melancholia, john_hurt, dexter).
starred(melancholia, katrine_sahlstrom, girl_with_guitar).
starred(melancholia, kiefer_sutherland, john).
starred(melancholia, kirsten_dunst, justine).
starred(melancholia, stellan_skarsgard, jack).
starred(melancholia, udo_kier, wedding_planner).
starred(nightcrawler, alex_ortiz, cop_3).
starred(nightcrawler, ann_cusack, linda).
starred(nightcrawler, bill_paxton, joe_loder).
starred(nightcrawler, bill_seward, bill_seward).
starred(nightcrawler, carolyn_gilroy, jenny).
starred(nightcrawler, eric_lange, ace_video_cameraman).
starred(nightcrawler, holly_hannula, kwla_anchor_lisa_mays).
starred(nightcrawler, jake_gyllenhaal, louis_bloom).
starred(nightcrawler, james_huang, marcus_mayhem_video).
starred(nightcrawler, jonny_coyne, pawn_shop_owner).
starred(nightcrawler, kent_shocknek, kent_shocknek).
starred(nightcrawler, kevin_dunigan, cop_2).
starred(nightcrawler, kevin_rahm, frank_kruse).
starred(nightcrawler, kiff_vandenheuvel, editor).
starred(nightcrawler, leah_fredkin, female_anchor).
starred(nightcrawler, marco_rodriguez, scrapyard_owner).
starred(nightcrawler, michael_papajohn, security_guard).
starred(nightcrawler, nick_chacon, cop_1).
starred(nightcrawler, pat_harvey, pat_harvey).
starred(nightcrawler, rene_russo, nina_romina).
starred(nightcrawler, rick_chambers, kwla_anchor_ben_waterman).
starred(nightcrawler, rick_garcia, rick_garcia).
starred(nightcrawler, sharon_tay, sharon_tay).
starred(pitch_perfect, adam_devine, bumper).
starred(pitch_perfect, alexis_knapp, stacie).
starred(pitch_perfect, anna_camp, aubrey).
starred(pitch_perfect, anna_kendrick, beca).
starred(pitch_perfect, ben_platt, benji).
starred(pitch_perfect, brittany_snow, chloe).
starred(pitch_perfect, caroline_fourmy, mary_elise).
starred(pitch_perfect, david_del_rio, kolio).
starred(pitch_perfect, elizabeth_banks, gail).
starred(pitch_perfect, ester_dean, cynthia_rose).
starred(pitch_perfect, freddie_stroma, luke).
starred(pitch_perfect, hana_mae_lee, lilly).
starred(pitch_perfect, jacob_wysocki, justin).
starred(pitch_perfect, jawan_harris, timothy).
starred(pitch_perfect, jinhee_joung, kimmy_jin).
starred(pitch_perfect, john_michael_higgins, john_dr_mitchell).
starred(pitch_perfect, kelley_jakle, jessica).
starred(pitch_perfect, michael_viruet, unicycle).
starred(pitch_perfect, nicole_lovince, kori).
starred(pitch_perfect, rebel_wilson, fat_amy).
starred(pitch_perfect, shelley_regner, ashley).
starred(pitch_perfect, skylar_astin, jesse).
starred(pitch_perfect, utkarsh_ambudkar, donald).
starred(pitch_perfect, wanetah_walmsley, denise).
starred(prometheus, benedict_wong, ravel).
starred(prometheus, branwell_donaghey, mercenary_1).
starred(prometheus, cc_smiff_c, mercenary_3).
starred(prometheus, charlize_theron, meredith_vickers).
starred(prometheus, daniel_james, sacrifice_engineer).
starred(prometheus, emun_elliott, chance).
starred(prometheus, giannina_facio, shaws_mother).
starred(prometheus, guy_pearce, peter_weyland).
starred(prometheus, ian_whyte, last_engineer).
starred(prometheus, idris_elba, janek).
starred(prometheus, john_lebar, ghost_engineer).
starred(prometheus, kate_dickie, ford).
starred(prometheus, logan_marshall_green, charlie_holloway).
starred(prometheus, lucy_hutchinson, young_shaw).
starred(prometheus, michael_fassbender, david).
starred(prometheus, noomi_rapace, elizabeth_shaw).
starred(prometheus, patrick_wilson, shaws_father).
starred(prometheus, rafe_spall, millburn).
starred(prometheus, sean_harris, fifield).
starred(prometheus, shane_steyn, mercenary_4).
starred(prometheus, vladimir_furdik, mercenary_2).
starred(rock_of_ages, alec_baldwin, dennis_dupree).
starred(rock_of_ages, angelo_valderrama, chico).
starred(rock_of_ages, anne_fletcher, church_horse_mother).
starred(rock_of_ages, bryan_cranston, mike_whitmore).
starred(rock_of_ages, catherine_zeta_jones, patricia_whitmore).
starred(rock_of_ages, celina_beach, mayors_secretary).
starred(rock_of_ages, chantel_gonsalves, stacee_groupie).
starred(rock_of_ages, dakota_sage_grant, little_girl_on_bus).
starred(rock_of_ages, dan_finnerty, stacee_tour_manager).
starred(rock_of_ages, denise_faye, protest_mother_1).
starred(rock_of_ages, diego_boneta, drew_boley).
starred(rock_of_ages, erica_frene, beth).
starred(rock_of_ages, hanna_lee_sakakibara, stacee_groupie).
starred(rock_of_ages, jaimie_goodwin, stacee_groupie).
starred(rock_of_ages, james_martin_kelly, doug_flintlock).
starred(rock_of_ages, jeff_chase, stacees_bodyguard).
starred(rock_of_ages, julianne_hough, sherrie_christian).
starred(rock_of_ages, kevin_nash, stacees_bodyguard).
starred(rock_of_ages, marriann_nelson, protest_mother_2).
starred(rock_of_ages, matthew_rush_sullivan, random_guy).
starred(rock_of_ages, michael_olusczak, crook).
starred(rock_of_ages, paul_giamatti, paul_gill).
starred(rock_of_ages, porcelain_black, singer).
starred(rock_of_ages, russell_brand, lonny).
starred(rock_of_ages, shane_hartline, bartender_jimmy).
starred(rock_of_ages, tom_cruise, stacee_jaxx).
starred(rock_of_ages, tony_bellissimo, rocker_thief).
starred(rock_of_ages, tyne_stecklein, stacee_groupie).
starred(scott_pilgrim_vs_the_world, alison_pill, kim_pine).
starred(scott_pilgrim_vs_the_world, anna_kendrick, stacey_pilgrim).
starred(scott_pilgrim_vs_the_world, aubrey_plaza, julie_powers).
starred(scott_pilgrim_vs_the_world, ben_lewis, other_scott).
starred(scott_pilgrim_vs_the_world, celine_lepage, party_goer).
starred(scott_pilgrim_vs_the_world, chantelle_chung, tamara_chen).
starred(scott_pilgrim_vs_the_world, chris_evans, lucas_lee).
starred(scott_pilgrim_vs_the_world, christine_watson, demon_hipster_chick).
starred(scott_pilgrim_vs_the_world, don_mckellar, director).
starred(scott_pilgrim_vs_the_world, ellen_wong, knives_chau).
starred(scott_pilgrim_vs_the_world, ingrid_haas, monique).
starred(scott_pilgrim_vs_the_world, jason_schwartzman, gideon_graves).
starred(scott_pilgrim_vs_the_world, johnny_simmons, young_neil).
starred(scott_pilgrim_vs_the_world, jung_yul_kim, goon).
starred(scott_pilgrim_vs_the_world, keita_saitou, kyle_katayanagi).
starred(scott_pilgrim_vs_the_world, kieran_culkin, wallace_wells).
starred(scott_pilgrim_vs_the_world, kjartan_hewitt, jimmy).
starred(scott_pilgrim_vs_the_world, kristina_pesic, sandra).
starred(scott_pilgrim_vs_the_world, mark_leroy, party_goer).
starred(scott_pilgrim_vs_the_world, mark_webber, stephen_stills).
starred(scott_pilgrim_vs_the_world, marley_otto, party_goer).
starred(scott_pilgrim_vs_the_world, mary_elizabeth_winstead, ramona_flowers).
starred(scott_pilgrim_vs_the_world, matt_watts, promoter).
starred(scott_pilgrim_vs_the_world, maurie_w_kaufmann, joel).
starred(scott_pilgrim_vs_the_world, michael_cera, scott_pilgrim).
starred(scott_pilgrim_vs_the_world, nelson_franklin, comeau).
starred(scott_pilgrim_vs_the_world, satya_bhabha, matthew_patel).
starred(scott_pilgrim_vs_the_world, will_bowes, party_goer).
starred(shutter_island, bates_wilder, ward_c_guard).
starred(shutter_island, ben_kingsley, dr_cawley).
starred(shutter_island, christopher_denham, peter_breene).
starred(shutter_island, curtiss_cook, trey_washington).
starred(shutter_island, elias_koteas, laeddis).
starred(shutter_island, emily_mortimer, rachel_1).
starred(shutter_island, jackie_earle_haley, george_noyce).
starred(shutter_island, john_carroll_lynch, deputy_warden_mcpherson).
starred(shutter_island, joseph_mckenna, inmate_billings).
starred(shutter_island, joseph_sikora, glen_miga).
starred(shutter_island, leonardo_dicaprio, teddy_daniels).
starred(shutter_island, mark_ruffalo, chuck_aule).
starred(shutter_island, max_von_sydow, dr_naehring).
starred(shutter_island, michelle_williams, dolores).
starred(shutter_island, nellie_sciutto, nurse_marino).
starred(shutter_island, patricia_clarkson, rachel_2).
starred(shutter_island, raymond_anthony_thomas, orderly_ganton).
starred(shutter_island, robin_bartlett, bridget_kearns).
starred(shutter_island, ruby_jerins, little_girl).
starred(shutter_island, ted_levine, warden).
starred(shutter_island, tom_kemp, ward_c_guard).
starred(sicario, benicio_del_toro, alejandro).
starred(sicario, bernardo_saracino, manuel_diaz).
starred(sicario, daniel_kaluuya, reggie_wayne).
starred(sicario, dylan_kenin, delta_leader).
starred(sicario, edgar_arreola, guillermo).
starred(sicario, emily_blunt, kate_macer).
starred(sicario, hank_rogerson, phil_coopers).
starred(sicario, jeffrey_donovan, steve_forsing).
starred(sicario, jesus_nevarez_castillo, eliseo).
starred(sicario, john_trejo, delta_2).
starred(sicario, jon_bernthal, ted).
starred(sicario, josh_brolin, matt_graver).
starred(sicario, julio_cesar_cedillo, fausto_alarcon).
starred(sicario, kevin_wiggins, burnett).
starred(sicario, kim_larrichio, silvios_wife).
starred(sicario, marty_lindsey, swat_officer).
starred(sicario, maximiliano_hernandez, silvio).
starred(sicario, raoul_trujillo, rafael).
starred(sicario, victor_garber, dave_jennings).
starred(skyfall, albert_finney, kincade).
starred(skyfall, ben_loyd_holmes, vauxhall_bridge_police_guard).
starred(skyfall, ben_whishaw, q).
starred(skyfall, berenice_marlohe, severine).
starred(skyfall, bill_buckhurst, ronson).
starred(skyfall, daniel_craig, james_bond).
starred(skyfall, david_gillies, mi6_assessor).
starred(skyfall, elize_du_toit, vanessa).
starred(skyfall, gordon_milne, ms_driver).
starred(skyfall, helen_mccrory, clair_dowar_mp).
starred(skyfall, ian_bonar, mi6_technician).
starred(skyfall, james_li, mi6_assessor).
starred(skyfall, javier_bardem, silva).
starred(skyfall, judi_dench, m).
starred(skyfall, naomie_harris, eve).
starred(skyfall, nicholas_woodeson, doctor_hall).
starred(skyfall, ola_rapace, patrice).
starred(skyfall, peter_basham, vauxhall_bridge_police_guard).
starred(skyfall, ralph_fiennes, gareth_mallory).
starred(skyfall, rory_kinnear, tanner).
starred(skyfall, tonia_sotiropoulou, bonds_lover).
starred(skyfall, wolf_blitzer, cnn_news_anchor).
starred(sleeping_beauty, alan_cardy, dinner_guest).
starred(sleeping_beauty, amit_kelkar, lecturer).
starred(sleeping_beauty, anni_finsterer, train_riding_hairdresser).
starred(sleeping_beauty, benita_collings, dinner_guest).
starred(sleeping_beauty, bridgette_barrett, dinner_waitress).
starred(sleeping_beauty, chris_haywood, man_2).
starred(sleeping_beauty, eden_falk, thomas).
starred(sleeping_beauty, emily_browning, lucy).
starred(sleeping_beauty, hannah_bella_bowden, dinner_waitress).
starred(sleeping_beauty, hugh_keays_byrne, man_3).
starred(sleeping_beauty, james_fraser, guy_with_ticket).
starred(sleeping_beauty, les_chantery, driver).
starred(sleeping_beauty, michael_dorman, cook).
starred(sleeping_beauty, mirrah_foulkes, sophie).
starred(sleeping_beauty, paul_he, student_boyfriend).
starred(sleeping_beauty, peter_carroll, man_1).
starred(sleeping_beauty, rachael_blake, clara).
starred(sleeping_beauty, robin_goldsworthy, flatmate).
starred(sleeping_beauty, sarah_kinsella, dinner_waitress).
starred(sleeping_beauty, vernon_hayman, dinner_guest).
starred(the_avengers, alexis_denisof, the_other).
starred(the_avengers, chris_evans, steve_rogers_captain_america).
starred(the_avengers, chris_hemsworth, thor).
starred(the_avengers, clark_gregg, agent_phil_coulson).
starred(the_avengers, cobie_smulders, agent_maria_hill).
starred(the_avengers, gwyneth_paltrow, pepper_potts).
starred(the_avengers, jeff_wolfe, tall_thug).
starred(the_avengers, jeremy_renner, clint_barton_hawkeye).
starred(the_avengers, jerzy_skolimowski, georgi_luchkov).
starred(the_avengers, kirill_nikiforov, weaselly_thug).
starred(the_avengers, m_laah_kaur_singh, young_girl).
starred(the_avengers, mark_ruffalo, bruce_banner_the_hulk).
starred(the_avengers, paul_bettany, jarvis).
starred(the_avengers, rashmi_rustagi, calcutta_woman).
starred(the_avengers, robert_downey_jr, tony_stark_iron_man).
starred(the_avengers, samuel_l_jackson, nick_fury).
starred(the_avengers, scarlett_johansson, natasha_romanoff_black_widow).
starred(the_avengers, stellan_skarsgard, selvig).
starred(the_avengers, tina_benko, nasa_scientist).
starred(the_avengers, tom_hiddleston, loki).
starred(the_big_short, aiden_flowers, young_michael_burry).
starred(the_big_short, andrew_farrier, burrys_analyst).
starred(the_big_short, anthony_marble, therapy_businessman).
starred(the_big_short, bernard_hocke, coach).
starred(the_big_short, brandon_stacy, michael_burrys_dad).
starred(the_big_short, casey_groves, fund_manager).
starred(the_big_short, charlie_talbert, lewis_bond_trader).
starred(the_big_short, christian_bale, michael_burry).
starred(the_big_short, david_zalkind, rabbi).
starred(the_big_short, harold_gervais, lewis_bond_trader).
starred(the_big_short, hunter_burke, analyst).
starred(the_big_short, ingrid_steed, lawrence_fields_assistant).
starred(the_big_short, leslie_castay, therapist).
starred(the_big_short, maria_frangos, exotic_dancer).
starred(the_big_short, peter_epstein, paul_baum).
starred(the_big_short, rudy_eisenzopf, lewis_ranieri).
starred(the_big_short, ryan_gosling, jared_vennett).
starred(the_big_short, shauna_rappold, michael_burrys_mom).
starred(the_big_short, silas_cooper, therapy_businessman).
starred(the_big_short, steve_carell, mark_baum).
starred(the_big_short, tracy_letts, lawrence_fields).
starred(the_big_short, vanessa_cloke, goldman_sachs_sales_rep).
starred(the_cabin_in_the_woods, adrian_holmes, demo_guy_2).
starred(the_cabin_in_the_woods, amy_acker, lin).
starred(the_cabin_in_the_woods, anna_hutchison, jules).
starred(the_cabin_in_the_woods, bradley_whitford, hadley).
starred(the_cabin_in_the_woods, brian_white, truman).
starred(the_cabin_in_the_woods, chelah_horsdal, demo_girl).
starred(the_cabin_in_the_woods, chris_hemsworth, curt).
starred(the_cabin_in_the_woods, dan_payne, mathew_buckner).
starred(the_cabin_in_the_woods, dan_shea, father_buckner).
starred(the_cabin_in_the_woods, ellie_harvie, military_liaison).
starred(the_cabin_in_the_woods, fran_kranz, marty).
starred(the_cabin_in_the_woods, heather_doerksen, accountant).
starred(the_cabin_in_the_woods, jesse_williams, holden).
starred(the_cabin_in_the_woods, jodelle_ferland, patience_buckner).
starred(the_cabin_in_the_woods, kristen_connolly, dana).
starred(the_cabin_in_the_woods, matt_drake, judah_buckner).
starred(the_cabin_in_the_woods, maya_massar, mother_buckner).
starred(the_cabin_in_the_woods, naomi_gantug, japanese_floaty_girl).
starred(the_cabin_in_the_woods, nels_lennarson, clean_man).
starred(the_cabin_in_the_woods, patrick_gilmore, werewolf_wrangler).
starred(the_cabin_in_the_woods, patrick_sabongui, elevator_guard).
starred(the_cabin_in_the_woods, peter_kelamis, demo_guy_1).
starred(the_cabin_in_the_woods, phillip_mitchell, lead_guard).
starred(the_cabin_in_the_woods, richard_jenkins, sitterson).
starred(the_cabin_in_the_woods, rukiya_bernard, labcoat_girl).
starred(the_cabin_in_the_woods, terry_chen, operations_guy).
starred(the_cabin_in_the_woods, tim_dezarn, mordecai).
starred(the_cabin_in_the_woods, tom_lenk, ronald_the_intern).
starred(the_conjuring, amy_tipton, camilla).
starred(the_conjuring, hayley_mcfarland, nancy).
starred(the_conjuring, joey_king, christine).
starred(the_conjuring, john_brotherton, brad).
starred(the_conjuring, kyla_deaver, april).
starred(the_conjuring, kymoura_kennedy, student_1).
starred(the_conjuring, lili_taylor, carolyn_perron).
starred(the_conjuring, mackenzie_foy, cindy).
starred(the_conjuring, marion_guyot, georgiana).
starred(the_conjuring, morganna_bridgers, debbie).
starred(the_conjuring, patrick_wilson, ed_warren).
starred(the_conjuring, ron_livingston, roger_perron).
starred(the_conjuring, sean_flynn, student_2).
starred(the_conjuring, shanley_caswell, andrea).
starred(the_conjuring, shannon_kook, drew).
starred(the_conjuring, sterling_jerins, judy_warren).
starred(the_conjuring, vera_farmiga, lorraine_warren).
starred(the_dark_knight_rises, aidan_gillen, cia_op).
starred(the_dark_knight_rises, aliash_tepina, hooded_man_2).
starred(the_dark_knight_rises, alon_aboutboul, dr_pavel).
starred(the_dark_knight_rises, anne_hathaway, selina).
starred(the_dark_knight_rises, ben_mendelsohn, daggett).
starred(the_dark_knight_rises, brett_cullen, congressman).
starred(the_dark_knight_rises, burn_gorman, stryver).
starred(the_dark_knight_rises, christian_bale, bruce_wayne_batman).
starred(the_dark_knight_rises, daniel_sunjata, captain_jones).
starred(the_dark_knight_rises, gary_oldman, commissioner_gordon).
starred(the_dark_knight_rises, joseph_gordon_levitt, blake).
starred(the_dark_knight_rises, marion_cotillard, miranda).
starred(the_dark_knight_rises, matthew_modine, foley).
starred(the_dark_knight_rises, michael_caine, alfred).
starred(the_dark_knight_rises, morgan_freeman, fox).
starred(the_dark_knight_rises, nestor_carbonell, mayor).
starred(the_dark_knight_rises, nick_julian, caterer).
starred(the_dark_knight_rises, sam_kennard, special_ops_sergeant).
starred(the_dark_knight_rises, tom_hardy, bane).
starred(the_grand_budapest_hotel, adrien_brody, dmitri).
starred(the_grand_budapest_hotel, bill_murray, m_ivan).
starred(the_grand_budapest_hotel, bob_balaban, m_martin).
starred(the_grand_budapest_hotel, edward_norton, henckels).
starred(the_grand_budapest_hotel, f_murray_abraham, mr_moustafa).
starred(the_grand_budapest_hotel, fisher_stevens, m_robin).
starred(the_grand_budapest_hotel, florian_lukas, pinky).
starred(the_grand_budapest_hotel, giselda_volodi, serges_sister).
starred(the_grand_budapest_hotel, harvey_keitel, ludwig).
starred(the_grand_budapest_hotel, jason_schwartzman, m_jean).
starred(the_grand_budapest_hotel, jeff_goldblum, deputy_kovacs).
starred(the_grand_budapest_hotel, jella_niemann, student).
starred(the_grand_budapest_hotel, jude_law, young_writer).
starred(the_grand_budapest_hotel, karl_markovics, wolf).
starred(the_grand_budapest_hotel, larry_pine, mr_mosher).
starred(the_grand_budapest_hotel, lea_seydoux, clotilde).
starred(the_grand_budapest_hotel, mathieu_amalric, serge_x).
starred(the_grand_budapest_hotel, neal_huff, lieutenant).
starred(the_grand_budapest_hotel, owen_wilson, m_chuck).
starred(the_grand_budapest_hotel, ralph_fiennes, m_gustave).
starred(the_grand_budapest_hotel, saoirse_ronan, agatha).
starred(the_grand_budapest_hotel, tilda_swinton, madame_d).
starred(the_grand_budapest_hotel, tom_wilkinson, author).
starred(the_grand_budapest_hotel, tony_revolori, zero).
starred(the_grand_budapest_hotel, volker_michalowski, gunther).
starred(the_grand_budapest_hotel, wallace_wolodarsky, m_georges).
starred(the_grand_budapest_hotel, waris_ahluwalia, m_dino).
starred(the_grand_budapest_hotel, willem_dafoe, jopling).
starred(the_great_gatsby, adelaide_clemens, catherine).
starred(the_great_gatsby, amitabh_bachchan, meyer_wolfshiem).
starred(the_great_gatsby, charlize_skinner, pammy).
starred(the_great_gatsby, david_furlong, walter_chase).
starred(the_great_gatsby, eden_falk, mr_mckee).
starred(the_great_gatsby, elizabeth_debicki, jordan_baker).
starred(the_great_gatsby, emily_foreman, pammy).
starred(the_great_gatsby, emmanuel_ekwensi, jazz_player).
starred(the_great_gatsby, frank_aldridge, well_dressed_male_witness).
starred(the_great_gatsby, garrett_william_fountain, barman).
starred(the_great_gatsby, isla_fisher, myrtle_wilson).
starred(the_great_gatsby, jason_clarke, george_wilson).
starred(the_great_gatsby, joel_edgerton, tom_buchanan).
starred(the_great_gatsby, leonardo_dicaprio, jay_gatsby).
starred(the_great_gatsby, lisa_adam, weeping_singing_woman).
starred(the_great_gatsby, mal_day, the_boss_probity_trust).
starred(the_great_gatsby, max_cullen, owl_eyes).
starred(the_great_gatsby, richard_carter, herzog).
starred(the_great_gatsby, steve_bisley, dan_cody).
starred(the_great_gatsby, tiger_leacey_wyvill, pammy).
starred(the_great_gatsby, vince_colosimo, michaelis).
starred(the_hateful_eight, belinda_owino, gemma).
starred(the_hateful_eight, bruce_dern, general_sandy_smithers).
starred(the_hateful_eight, channing_tatum, jody).
starred(the_hateful_eight, craig_stark, chester_charles_smithers).
starred(the_hateful_eight, dana_gourrier, minnie_mink).
starred(the_hateful_eight, demian_bichir, bob).
starred(the_hateful_eight, gene_jones, sweet_dave).
starred(the_hateful_eight, james_parks, ob).
starred(the_hateful_eight, jennifer_jason_leigh, daisy_domergue).
starred(the_hateful_eight, keith_jefferson, charly).
starred(the_hateful_eight, kurt_russell, john_ruth).
starred(the_hateful_eight, lee_horsley, ed).
starred(the_hateful_eight, michael_madsen, joe_gage).
starred(the_hateful_eight, samuel_l_jackson, major_marquis_warren).
starred(the_hateful_eight, tim_roth, oswaldo_mobray).
starred(the_hateful_eight, walton_goggins, sheriff_chris_mannix).
starred(the_hateful_eight, zoe_bell, six_horse_judy).
starred(the_hobbit_an_unexpected_journey, adam_brown, ori).
starred(the_hobbit_an_unexpected_journey, aidan_turner, kili).
starred(the_hobbit_an_unexpected_journey, andy_serkis, gollum).
starred(the_hobbit_an_unexpected_journey, barry_humphries, great_goblin).
starred(the_hobbit_an_unexpected_journey, benedict_cumberbatch, necromancer).
starred(the_hobbit_an_unexpected_journey, bret_mckenzie, lindir).
starred(the_hobbit_an_unexpected_journey, cate_blanchett, galadriel).
starred(the_hobbit_an_unexpected_journey, christopher_lee, saruman).
starred(the_hobbit_an_unexpected_journey, conan_stevens, bolg).
starred(the_hobbit_an_unexpected_journey, dean_o_gorman, fili).
starred(the_hobbit_an_unexpected_journey, elijah_wood, frodo).
starred(the_hobbit_an_unexpected_journey, graham_mctavish, dwalin).
starred(the_hobbit_an_unexpected_journey, hugo_weaving, elrond).
starred(the_hobbit_an_unexpected_journey, ian_holm, old_bilbo).
starred(the_hobbit_an_unexpected_journey, ian_mckellen, gandalf).
starred(the_hobbit_an_unexpected_journey, james_nesbitt, bofur).
starred(the_hobbit_an_unexpected_journey, jed_brophy, nori).
starred(the_hobbit_an_unexpected_journey, jeffrey_thomas, thror).
starred(the_hobbit_an_unexpected_journey, john_callen, oin).
starred(the_hobbit_an_unexpected_journey, john_rawls, yazneg).
starred(the_hobbit_an_unexpected_journey, ken_stott, balin).
starred(the_hobbit_an_unexpected_journey, kiran_shah, goblin_scribe).
starred(the_hobbit_an_unexpected_journey, lee_pace, thranduil).
starred(the_hobbit_an_unexpected_journey, manu_bennett, azog).
starred(the_hobbit_an_unexpected_journey, mark_hadlow, dori_bert_troll).
starred(the_hobbit_an_unexpected_journey, martin_freeman, bilbo).
starred(the_hobbit_an_unexpected_journey, michael_mizrahi, thrain).
starred(the_hobbit_an_unexpected_journey, peter_hambleton, gloin_william_troll).
starred(the_hobbit_an_unexpected_journey, richard_armitage, thorin).
starred(the_hobbit_an_unexpected_journey, stephen_hunter, bombur).
starred(the_hobbit_an_unexpected_journey, stephen_ure, fimbul_grinnah).
starred(the_hobbit_an_unexpected_journey, sylvester_mccoy, radagast).
starred(the_hobbit_an_unexpected_journey, timothy_bartlett, master_worrywort).
starred(the_hobbit_an_unexpected_journey, william_kircher, bifur_tom_troll).
starred(the_hobbit_the_battle_of_the_five_armies, adam_brown, ori).
starred(the_hobbit_the_battle_of_the_five_armies, aidan_turner, kili).
starred(the_hobbit_the_battle_of_the_five_armies, allan_smith, ragash).
starred(the_hobbit_the_battle_of_the_five_armies, benedict_cumberbatch, smaug_necromancer).
starred(the_hobbit_the_battle_of_the_five_armies, billy_connolly, dain).
starred(the_hobbit_the_battle_of_the_five_armies, brian_hotter, otho_sackville_baggins).
starred(the_hobbit_the_battle_of_the_five_armies, cate_blanchett, galadriel).
starred(the_hobbit_the_battle_of_the_five_armies, christopher_lee, saruman).
starred(the_hobbit_the_battle_of_the_five_armies, conan_stevens, keeper_of_the_dungeons).
starred(the_hobbit_the_battle_of_the_five_armies, dean_o_gorman, fili).
starred(the_hobbit_the_battle_of_the_five_armies, erin_banks, lobelia_sackville_baggins).
starred(the_hobbit_the_battle_of_the_five_armies, evangeline_lilly, tauriel).
starred(the_hobbit_the_battle_of_the_five_armies, graham_mctavish, dwalin).
starred(the_hobbit_the_battle_of_the_five_armies, hugo_weaving, elrond).
starred(the_hobbit_the_battle_of_the_five_armies, ian_holm, old_bilbo).
starred(the_hobbit_the_battle_of_the_five_armies, ian_mckellen, gandalf).
starred(the_hobbit_the_battle_of_the_five_armies, james_nesbitt, bofur).
starred(the_hobbit_the_battle_of_the_five_armies, jed_brophy, nori).
starred(the_hobbit_the_battle_of_the_five_armies, john_bell, bain).
starred(the_hobbit_the_battle_of_the_five_armies, john_callen, oin).
starred(the_hobbit_the_battle_of_the_five_armies, john_tui, bolg).
starred(the_hobbit_the_battle_of_the_five_armies, kelly_kilgour, soury).
starred(the_hobbit_the_battle_of_the_five_armies, ken_stott, balin).
starred(the_hobbit_the_battle_of_the_five_armies, lee_pace, thranduil).
starred(the_hobbit_the_battle_of_the_five_armies, luke_evans, bard).
starred(the_hobbit_the_battle_of_the_five_armies, manu_bennett, azog).
starred(the_hobbit_the_battle_of_the_five_armies, mark_hadlow, dori).
starred(the_hobbit_the_battle_of_the_five_armies, mark_mitchinson, braga).
starred(the_hobbit_the_battle_of_the_five_armies, martin_freeman, bilbo).
starred(the_hobbit_the_battle_of_the_five_armies, martin_kwok, ragash).
starred(the_hobbit_the_battle_of_the_five_armies, mary_nesbitt, tilda).
starred(the_hobbit_the_battle_of_the_five_armies, merv_smith, tosser_grubb).
starred(the_hobbit_the_battle_of_the_five_armies, mikael_persbrandt, beorn).
starred(the_hobbit_the_battle_of_the_five_armies, miranda_harcourt, olga).
starred(the_hobbit_the_battle_of_the_five_armies, nick_blake, percy).
starred(the_hobbit_the_battle_of_the_five_armies, orlando_bloom, legolas).
starred(the_hobbit_the_battle_of_the_five_armies, peggy_nesbitt, sigrid).
starred(the_hobbit_the_battle_of_the_five_armies, peter_hambleton, gloin).
starred(the_hobbit_the_battle_of_the_five_armies, richard_armitage, thorin).
starred(the_hobbit_the_battle_of_the_five_armies, ryan_gage, alfrid_lickspittle).
starred(the_hobbit_the_battle_of_the_five_armies, sarah_peirse, hilda_bianca).
starred(the_hobbit_the_battle_of_the_five_armies, simon_london, feren).
starred(the_hobbit_the_battle_of_the_five_armies, stephen_fry, master_of_laketown).
starred(the_hobbit_the_battle_of_the_five_armies, stephen_hunter, bombur).
starred(the_hobbit_the_battle_of_the_five_armies, sylvester_mccoy, radagast).
starred(the_hobbit_the_battle_of_the_five_armies, thomasin_mckenzie, astrid).
starred(the_hobbit_the_battle_of_the_five_armies, timothy_bartlett, master_worrywort).
starred(the_hobbit_the_battle_of_the_five_armies, william_kircher, bifur).
starred(the_hobbit_the_desolation_of_smaug, adam_brown, ori).
starred(the_hobbit_the_desolation_of_smaug, aidan_turner, kili).
starred(the_hobbit_the_desolation_of_smaug, ben_mitchell, narzug).
starred(the_hobbit_the_desolation_of_smaug, benedict_cumberbatch, smaug_necromancer).
starred(the_hobbit_the_desolation_of_smaug, cate_blanchett, galadriel).
starred(the_hobbit_the_desolation_of_smaug, craig_hall, galion).
starred(the_hobbit_the_desolation_of_smaug, dean_o_gorman, fili).
starred(the_hobbit_the_desolation_of_smaug, eli_kent, lethuin).
starred(the_hobbit_the_desolation_of_smaug, evangeline_lilly, tauriel).
starred(the_hobbit_the_desolation_of_smaug, graham_mctavish, dwalin).
starred(the_hobbit_the_desolation_of_smaug, ian_mckellen, gandalf).
starred(the_hobbit_the_desolation_of_smaug, james_nesbitt, bofur).
starred(the_hobbit_the_desolation_of_smaug, jed_brophy, nori).
starred(the_hobbit_the_desolation_of_smaug, john_bell, bain).
starred(the_hobbit_the_desolation_of_smaug, john_callen, oin).
starred(the_hobbit_the_desolation_of_smaug, ken_stott, balin).
starred(the_hobbit_the_desolation_of_smaug, lawrence_makoare, bolg).
starred(the_hobbit_the_desolation_of_smaug, lee_pace, thranduil).
starred(the_hobbit_the_desolation_of_smaug, luke_evans, bard_girion).
starred(the_hobbit_the_desolation_of_smaug, manu_bennett, azog).
starred(the_hobbit_the_desolation_of_smaug, mark_hadlow, dori).
starred(the_hobbit_the_desolation_of_smaug, martin_freeman, bilbo).
starred(the_hobbit_the_desolation_of_smaug, mary_nesbitt, tilda).
starred(the_hobbit_the_desolation_of_smaug, mikael_persbrandt, beorn).
starred(the_hobbit_the_desolation_of_smaug, orlando_bloom, legolas).
starred(the_hobbit_the_desolation_of_smaug, peggy_nesbitt, sigrid).
starred(the_hobbit_the_desolation_of_smaug, peter_hambleton, gloin).
starred(the_hobbit_the_desolation_of_smaug, richard_armitage, thorin).
starred(the_hobbit_the_desolation_of_smaug, robin_kerr, elros).
starred(the_hobbit_the_desolation_of_smaug, ryan_gage, alfrid_lickspittle).
starred(the_hobbit_the_desolation_of_smaug, simon_london, feren).
starred(the_hobbit_the_desolation_of_smaug, stephen_fry, master_of_laketown).
starred(the_hobbit_the_desolation_of_smaug, stephen_hunter, bombur).
starred(the_hobbit_the_desolation_of_smaug, stephen_ure, fimbul).
starred(the_hobbit_the_desolation_of_smaug, sylvester_mccoy, radagast).
starred(the_hobbit_the_desolation_of_smaug, william_kircher, bifur).
starred(the_hunger_games, alexander_ludwig, cato).
starred(the_hunger_games, amandla_stenberg, rue).
starred(the_hunger_games, anthony_reynolds, peacekeeper_2).
starred(the_hunger_games, bruce_bundy, octavia).
starred(the_hunger_games, dayo_okeniyi, thresh).
starred(the_hunger_games, donald_sutherland, president_snow).
starred(the_hunger_games, dwayne_boyd, peacekeeper_1).
starred(the_hunger_games, elizabeth_banks, effie_trinket).
starred(the_hunger_games, isabelle_fuhrman, clove).
starred(the_hunger_games, jack_quaid, marvel).
starred(the_hunger_games, jennifer_lawrence, katniss_everdeen).
starred(the_hunger_games, josh_hutcherson, peeta_mellark).
starred(the_hunger_games, judd_lormand, peacekeeper_3).
starred(the_hunger_games, kimiko_gelman, venia).
starred(the_hunger_games, latarsha_rose, portia).
starred(the_hunger_games, lenny_kravitz, cinna).
starred(the_hunger_games, leven_rambin, glimmer).
starred(the_hunger_games, liam_hemsworth, gale_hawthorne).
starred(the_hunger_games, nelson_ascencio, flavius).
starred(the_hunger_games, paula_malcomson, katniss_mother).
starred(the_hunger_games, raiko_bowman, peetas_mother).
starred(the_hunger_games, rhoda_griffis, registration_woman).
starred(the_hunger_games, sandino_moya_smith, propaganda_film_tribute).
starred(the_hunger_games, sandra_lafferty, hob_vendor).
starred(the_hunger_games, stanley_tucci, caesar_flickerman).
starred(the_hunger_games, toby_jones, claudius_templesmith).
starred(the_hunger_games, wes_bentley, seneca_crane).
starred(the_hunger_games, willow_shields, primrose_everdeen).
starred(the_hunger_games, woody_harrelson, haymitch_abernathy).
starred(the_imitation_game, alex_lawther, young_alan_turing).
starred(the_imitation_game, allen_leech, john_cairncross).
starred(the_imitation_game, benedict_cumberbatch, alan_turing).
starred(the_imitation_game, charles_dance, commander_denniston).
starred(the_imitation_game, ilan_goodman, keith_furman).
starred(the_imitation_game, jack_bannon, christopher_morcom).
starred(the_imitation_game, jack_tarlton, charles_richards).
starred(the_imitation_game, james_northcote, jack_good).
starred(the_imitation_game, keira_knightley, joan_clarke).
starred(the_imitation_game, mark_strong, stewart_menzies).
starred(the_imitation_game, matthew_beard, peter_hilton).
starred(the_imitation_game, matthew_goode, hugh_alexander).
starred(the_imitation_game, rory_kinnear, detective_robert_nock).
starred(the_imitation_game, steven_waddington, superintendent_smith).
starred(the_imitation_game, tom_goodman_hill, sergeant_staehl).
starred(the_imitation_game, tuppence_middleton, helen).
starred(the_intouchables, absa_diatou_toure, mina).
starred(the_intouchables, alba_gaia_bellugi, elisa).
starred(the_intouchables, anne_le_ny, yvonne).
starred(the_intouchables, audrey_fleurot, magalie).
starred(the_intouchables, benjamin_baroche, policier).
starred(the_intouchables, christian_ameri, albert).
starred(the_intouchables, clotilde_mollet, marcelle).
starred(the_intouchables, cyril_mendy, adama).
starred(the_intouchables, dominique_daguier, amie_de_philippe).
starred(the_intouchables, dorothee_briere, eleonore).
starred(the_intouchables, emilie_caen, galeriste).
starred(the_intouchables, francois_bureloup, candidat).
starred(the_intouchables, francois_caron, ami_de_philippe).
starred(the_intouchables, francois_cluzet, philippe).
starred(the_intouchables, gregoire_oestermann, antoine).
starred(the_intouchables, ian_fenelon, candidat).
starred(the_intouchables, jean_francois_cayrey, nouvel_auxiliaire_2).
starred(the_intouchables, josephine_de_meaux, la_drh_societe_de_courses).
starred(the_intouchables, marie_laure_descoureaux, femme_de_chambre).
starred(the_intouchables, nicky_marbot, policier).
starred(the_intouchables, omar_sy, driss).
starred(the_intouchables, renaud_barse, candidat).
starred(the_intouchables, salimata_kamate, fatou).
starred(the_intouchables, sylvain_lazard, nouvel_auxiliaire_1).
starred(the_intouchables, thomas_soliveres, bastien_dit_le_plumeau).
starred(the_kings_speech, adrian_scarborough, bbc_radio_announcer).
starred(the_kings_speech, andrew_havill, robert_wood).
starred(the_kings_speech, ben_wimsett, anthony_logue).
starred(the_kings_speech, calum_gittins, laurie_logue).
starred(the_kings_speech, charles_armstrong, bbc_technician).
starred(the_kings_speech, claire_bloom, queen_mary).
starred(the_kings_speech, colin_firth, king_george_vi).
starred(the_kings_speech, david_bamber, theatre_director).
starred(the_kings_speech, derek_jacobi, archbishop_cosmo_lang).
starred(the_kings_speech, dick_ward, butler).
starred(the_kings_speech, dominic_applewhite, valentine_logue).
starred(the_kings_speech, eve_best, wallis_simpson).
starred(the_kings_speech, freya_wilson, princess_elizabeth).
starred(the_kings_speech, geoffrey_rush, lionel_logue).
starred(the_kings_speech, guy_pearce, king_edward_viii).
starred(the_kings_speech, helena_bonham_carter, queen_elizabeth).
starred(the_kings_speech, jake_hathaway, willie).
starred(the_kings_speech, jennifer_ehle, myrtle_logue).
starred(the_kings_speech, john_albasiny, footman).
starred(the_kings_speech, michael_gambon, king_george_v).
starred(the_kings_speech, orlando_wells, duke_of_kent).
starred(the_kings_speech, patrick_ryecart, lord_wigram).
starred(the_kings_speech, paul_trussell, chauffeur).
starred(the_kings_speech, ramona_marquez, princess_margaret).
starred(the_kings_speech, richard_dixon, private_secretary).
starred(the_kings_speech, robert_portal, equerry).
starred(the_kings_speech, roger_hammond, dr_blandine_bentham).
starred(the_kings_speech, simon_chandler, lord_dawson).
starred(the_kings_speech, teresa_gallagher, nurse).
starred(the_kings_speech, tim_downie, duke_of_gloucester).
starred(the_martian, aksel_hennie, alex_vogel).
starred(the_martian, benedict_wong, bruce_ng).
starred(the_martian, chiwetel_ejiofor, vincent_kapoor).
starred(the_martian, donald_glover, rich_purnell).
starred(the_martian, eddy_ko, guo_ming).
starred(the_martian, enzo_cilenti, mike_watkins).
starred(the_martian, geoffrey_thomas, us_president).
starred(the_martian, gruffudd_glyn, jack).
starred(the_martian, jeff_daniels, teddy_sanders).
starred(the_martian, jessica_chastain, melissa_lewis).
starred(the_martian, jonathan_aris, brendan_hatch).
starred(the_martian, kate_mara, beth_johanssen).
starred(the_martian, kristen_wiig, annie_montrose).
starred(the_martian, mackenzie_davis, mindy_park).
starred(the_martian, matt_damon, mark_watney).
starred(the_martian, michael_pena, rick_martinez).
starred(the_martian, nick_mohammed, tim_grimes).
starred(the_martian, sean_bean, mitch_henderson).
starred(the_martian, sebastian_stan, chris_beck).
starred(the_martian, shu_chen, zhu_tao).
starred(the_perks_of_being_a_wallflower, brian_balzerini, linebacker).
starred(the_perks_of_being_a_wallflower, chelsea_zhang, shakespeare_girl).
starred(the_perks_of_being_a_wallflower, dylan_mcdermott, father).
starred(the_perks_of_being_a_wallflower, emily_marie_callaway, mean_freshman_girl).
starred(the_perks_of_being_a_wallflower, emma_watson, sam).
starred(the_perks_of_being_a_wallflower, ezra_miller, patrick).
starred(the_perks_of_being_a_wallflower, jesse_scheirer, freshman_boy).
starred(the_perks_of_being_a_wallflower, johnny_simmons, brad).
starred(the_perks_of_being_a_wallflower, julia_garner, susan).
starred(the_perks_of_being_a_wallflower, julie_schaefer, twin_girl).
starred(the_perks_of_being_a_wallflower, justine_schaefer, twin_girl).
starred(the_perks_of_being_a_wallflower, kate_walsh, mother).
starred(the_perks_of_being_a_wallflower, logan_lerman, charlie).
starred(the_perks_of_being_a_wallflower, melanie_lynskey, aunt_helen).
starred(the_perks_of_being_a_wallflower, nicholas_braun, ponytail_derek).
starred(the_perks_of_being_a_wallflower, nina_dobrev, candace).
starred(the_perks_of_being_a_wallflower, patrick_de_ledebur, senior_bully).
starred(the_perks_of_being_a_wallflower, paul_rudd, mr_anderson).
starred(the_perks_of_being_a_wallflower, tom_kruszewski, nose_tackle).
starred(the_perks_of_being_a_wallflower, tom_savini, mr_callahan).
starred(the_revenant, arthur_redcloud, hikuc).
starred(the_revenant, brendan_fletcher, fryman).
starred(the_revenant, christopher_rosamond, boone).
starred(the_revenant, domhnall_gleeson, captain_andrew_henry).
starred(the_revenant, duane_howard, elk_dog).
starred(the_revenant, fabrice_adde, toussaint).
starred(the_revenant, forrest_goodluck, hawk).
starred(the_revenant, joshua_burge, stubby_bill).
starred(the_revenant, kristoffer_joner, murphy).
starred(the_revenant, leonardo_dicaprio, hugh_glass).
starred(the_revenant, lukas_haas, jones).
starred(the_revenant, mccaleb_burnett, beckett).
starred(the_revenant, melaw_nakehko, powaqa).
starred(the_revenant, paul_anderson, anderson).
starred(the_revenant, robert_moloney, dave_stomach_wound).
starred(the_revenant, stephane_legault, french_trapper).
starred(the_revenant, tom_hardy, john_fitzgerald).
starred(the_revenant, tyson_wood, weston).
starred(the_revenant, vincent_leclerc, french_trapper).
starred(the_revenant, will_poulter, bridger).
starred(the_social_network, alecia_svensen, girl_at_phoenix_club).
starred(the_social_network, andrew_garfield, eduardo_saverin).
starred(the_social_network, barry_livingston, mr_cox).
starred(the_social_network, bryan_barter, billy_olson).
starred(the_social_network, carrie_armstrong, court_reporter).
starred(the_social_network, denise_grayson, gretchen).
starred(the_social_network, dustin_fitzsimons, phoenix_club_president).
starred(the_social_network, james_dastoli, student_playing_facemash).
starred(the_social_network, jami_owen, student_playing_facemash).
starred(the_social_network, jayk_gallagher, student_playing_facemash).
starred(the_social_network, jesse_eisenberg, mark_zuckerberg).
starred(the_social_network, john_getz, sy).
starred(the_social_network, joseph_mazzello, dustin_moskovitz).
starred(the_social_network, marcella_lentz_pope, ericas_roommate).
starred(the_social_network, marybeth_massett, mrs_cox).
starred(the_social_network, patrick_mapel, chris_hughes).
starred(the_social_network, randy_evans, student_in_communications_office).
starred(the_social_network, rashida_jones, marylin_delpy).
starred(the_social_network, robert_dastoli, student_playing_facemash).
starred(the_social_network, rooney_mara, erica_albright).
starred(the_social_network, scotty_crowe, student_playing_facemash).
starred(the_social_network, toby_meuli, phoenix_member_playing_facemash).
starred(the_social_network, trevor_wright, bu_guy_in_bra).
starred(the_witch, anya_taylor_joy, thomasin).
starred(the_witch, athan_conrad_dube, samuel).
starred(the_witch, axtun_henry_dube, samuel).
starred(the_witch, bathsheba_garnett, the_witch).
starred(the_witch, brandy_leary, coven_witch).
starred(the_witch, daniel_malik, black_phillip).
starred(the_witch, ellie_grainger, mercy).
starred(the_witch, harvey_scrimshaw, caleb).
starred(the_witch, julian_richings, governor).
starred(the_witch, karen_kaeja, coven_witch).
starred(the_witch, kate_dickie, katherine).
starred(the_witch, lucas_dawson, jonas).
starred(the_witch, r_hope_terry, coven_witch).
starred(the_witch, ralph_ineson, william).
starred(the_witch, sarah_stephens, the_witch_young).
starred(the_witch, viv_moore, lead_coven_witch).
starred(the_wolf_of_wall_street, aya_cash, janet).
starred(the_wolf_of_wall_street, barry_rothbart, peter_deblasio).
starred(the_wolf_of_wall_street, bo_dietl, bo_dietl).
starred(the_wolf_of_wall_street, brian_sacca, robbie_feinberg).
starred(the_wolf_of_wall_street, christine_ebersole, leah_belfort).
starred(the_wolf_of_wall_street, cristin_milioti, teresa_petrillo).
starred(the_wolf_of_wall_street, ethan_suplee, toby_welch).
starred(the_wolf_of_wall_street, henry_zebrowski, alden_kupferberg).
starred(the_wolf_of_wall_street, jake_hoffman, steve_madden).
starred(the_wolf_of_wall_street, jean_dujardin, jean_jacques_saurel).
starred(the_wolf_of_wall_street, joanna_lumley, aunt_emma).
starred(the_wolf_of_wall_street, jon_bernthal, brad).
starred(the_wolf_of_wall_street, jon_favreau, manny_riskin).
starred(the_wolf_of_wall_street, jon_spinogatti, nicholas_the_butler).
starred(the_wolf_of_wall_street, jonah_hill, donnie_azoff).
starred(the_wolf_of_wall_street, katarina_cas, chantalle).
starred(the_wolf_of_wall_street, kenneth_choi, chester_ming).
starred(the_wolf_of_wall_street, kyle_chandler, agent_patrick_denham).
starred(the_wolf_of_wall_street, leonardo_dicaprio, jordan_belfort).
starred(the_wolf_of_wall_street, mackenzie_meehan, hildy_azoff).
starred(the_wolf_of_wall_street, margot_robbie, naomi_lapaglia).
starred(the_wolf_of_wall_street, matthew_mcconaughey, mark_hanna).
starred(the_wolf_of_wall_street, p_j_byrne, nicky_koskoff).
starred(the_wolf_of_wall_street, rob_reiner, max_belfort).
starred(the_wolf_of_wall_street, shea_whigham, captain_ted_beecham).
starred(this_is_the_end, aziz_ansari, aziz_ansari).
starred(this_is_the_end, brian_huskey, headless_man).
starred(this_is_the_end, carol_sutton, cashier).
starred(this_is_the_end, channing_tatum, channing_tatum).
starred(this_is_the_end, christopher_mintz_plasse, christopher_mintz_plasse).
starred(this_is_the_end, craig_robinson, craig_robinson).
starred(this_is_the_end, danny_mcbride, danny_mcbride).
starred(this_is_the_end, david_krumholtz, david_krumholtz).
starred(this_is_the_end, douglas_m_griffin, father_in_store).
starred(this_is_the_end, emma_watson, emma_watson).
starred(this_is_the_end, james_franco, james_franco).
starred(this_is_the_end, jay_baruchel, jay_baruchel).
starred(this_is_the_end, jonah_hill, jonah_hill).
starred(this_is_the_end, kevin_hart, kevin_hart).
starred(this_is_the_end, lo_graham, daughter_in_store).
starred(this_is_the_end, martin_starr, martin_starr).
starred(this_is_the_end, michael_cera, michael_cera).
starred(this_is_the_end, mindy_kaling, mindy_kaling).
starred(this_is_the_end, paul_rudd, paul_rudd).
starred(this_is_the_end, richard_holden, priest).
starred(this_is_the_end, rihanna, rihanna).
starred(this_is_the_end, samantha_ressler, karen).
starred(this_is_the_end, seth_rogen, seth_rogen).
starred(this_is_the_end, yohance_myles, cell_phone_guy).
starred(thor, adriana_barraza, isabela_alvarez).
starred(thor, anthony_hopkins, odin).
starred(thor, chris_hemsworth, thor).
starred(thor, clark_gregg, agent_coulson).
starred(thor, colm_feore, king_laufey).
starred(thor, idris_elba, heimdall).
starred(thor, jaimie_alexander, sif).
starred(thor, josh_dallas, fandral).
starred(thor, kat_dennings, darcy_lewis).
starred(thor, maximiliano_hernandez, agent_sitwell).
starred(thor, natalie_portman, jane_foster).
starred(thor, ray_stevenson, volstagg).
starred(thor, rene_russo, frigga).
starred(thor, stellan_skarsgard, erik_selvig).
starred(thor, tadanobu_asano, hogun).
starred(thor, tom_hiddleston, loki).
starred(we_re_the_millers, alan_gilmer, middle_aged_man).
starred(we_re_the_millers, brett_gentile, white_bread_dad).
starred(we_re_the_millers, crystal_nichol, brads_receptionist).
starred(we_re_the_millers, deborah_chavez, flight_attendant).
starred(we_re_the_millers, denielle_fisher_johnson, flight_attendant).
starred(we_re_the_millers, dickson_obahor, parking_cop).
starred(we_re_the_millers, ed_helms, brad_gurdlinger).
starred(we_re_the_millers, emma_roberts, casey_mathis).
starred(we_re_the_millers, jason_sudeikis, david_clark).
starred(we_re_the_millers, jennifer_aniston, rose_o_reilly).
starred(we_re_the_millers, kathryn_hahn, edie_fitzgerald).
starred(we_re_the_millers, kelly_lintz, white_bread_mom).
starred(we_re_the_millers, ken_marino, todd_strip_club_owner).
starred(we_re_the_millers, laura_leigh, kymberly).
starred(we_re_the_millers, luis_guzman, mexican_cop).
starred(we_re_the_millers, lynn_talley, styist).
starred(we_re_the_millers, mark_young, scottie_p).
starred(we_re_the_millers, matthew_willig, one_eye).
starred(we_re_the_millers, molly_c_quinn, melissa_fitzgerald).
starred(we_re_the_millers, nick_offerman, don_fitzgerald).
starred(we_re_the_millers, sam_richardson, tsa_agent).
starred(we_re_the_millers, thomas_lennon, rick_nathanson).
starred(we_re_the_millers, tomer_sisley, pablo_chacon).
starred(we_re_the_millers, will_poulter, kenny_rossmore).
starred(x_men_days_of_future_past, adan_canto, sunspot).
starred(x_men_days_of_future_past, anna_paquin, rogue).
starred(x_men_days_of_future_past, bingbing_fan, blink).
starred(x_men_days_of_future_past, booboo_stewart, warpath).
starred(x_men_days_of_future_past, daniel_cudmore, colossus).
starred(x_men_days_of_future_past, elliot_page, kitty_pryde).
starred(x_men_days_of_future_past, evan_jonigkeit, toad).
starred(x_men_days_of_future_past, evan_peters, peter_quicksilver).
starred(x_men_days_of_future_past, famke_janssen, jean_grey).
starred(x_men_days_of_future_past, halle_berry, storm).
starred(x_men_days_of_future_past, hugh_jackman, logan_wolverine).
starred(x_men_days_of_future_past, ian_mckellen, magneto).
starred(x_men_days_of_future_past, james_marsden, scott_summers).
starred(x_men_days_of_future_past, james_mcavoy, charles_xavier).
starred(x_men_days_of_future_past, jennifer_lawrence, raven_mystique).
starred(x_men_days_of_future_past, josh_helman, maj_bill_stryker).
starred(x_men_days_of_future_past, lucas_till, havok).
starred(x_men_days_of_future_past, mark_camacho, president_nixon).
starred(x_men_days_of_future_past, michael_fassbender, erik_lehnsherr).
starred(x_men_days_of_future_past, nicholas_hoult, hank_beast).
starred(x_men_days_of_future_past, omar_sy, bishop).
starred(x_men_days_of_future_past, patrick_stewart, professor_x).
starred(x_men_days_of_future_past, peter_dinklage, dr_bolivar_trask).
starred(x_men_days_of_future_past, shawn_ashmore, bobby_iceman).