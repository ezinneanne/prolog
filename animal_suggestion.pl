% Define dynamic predicates to store user responses
:- dynamic yes/1, no/1.

% Start the expert system
start :- hypothesize(Animal),
         write('The animal is likely a: '), write(Animal), nl,
         undo.

% Hypotheses to be tested
hypothesize(cheetah) :- cheetah, !.
hypothesize(tiger) :- tiger, !.
hypothesize(giraffe) :- giraffe, !.
hypothesize(zebra) :- zebra, !.
hypothesize(unknown).  % No diagnosis

% Animal identification rules
cheetah :- mammal, carnivore, verify(has_tawny_color), verify(has_dark_spots), verify(has_tear_streaks).
tiger :- mammal, carnivore, verify(has_tawny_color), verify(has_black_stripes).
giraffe :- ungulate, verify(has_long_neck), verify(has_long_legs).
zebra :- ungulate, verify(has_black_stripes).

% Classification rules
mammal :- verify(has_hair), !.
mammal :- verify(gives_milk).
bird :- verify(has_feathers), !.
bird :- verify(flies), verify(lays_eggs).
carnivore :- verify(eats_meat), !.
carnivore :- verify(has_pointed_teeth), verify(has_claws), verify(has_forward_eyes).
ungulate :- mammal, verify(has_hooves), !.
ungulate :- mammal, verify(chews_cud).

% How to ask questions
ask(Question) :-
    write('Does the animal have the following attribute: '), write(Question), write('? '),
    read(Response), nl,
    ( (Response == yes ; Response == y)
    -> assert(yes(Question))
    ; assert(no(Question)), fail).

% How to verify something
verify(S) :-
    (yes(S) -> true ; (no(S) -> fail ; ask(S))).

% Undo all yes/no assertions
undo :- retract(yes(_)), fail.
undo :- retract(no(_)), fail.
undo.
