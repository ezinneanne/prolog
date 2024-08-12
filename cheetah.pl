:- dynamic xpositive/2, xnegative/2.

animal_is(cheetah) :-
    it_is(mammal),
    it_is(carnivore),
    positive(has, tawny_color),
    positive(has, dark_spots).

animal_is(tiger) :-
    it_is(mammal),
    it_is(carnivore),
    positive(has, tawny_color),
    positive(has, black_stripes).

animal_is(giraffe) :-
    it_is(ungulate),
    positive(has, long_neck),
    positive(has, long_legs),
    positive(has, dark_spots).

animal_is(zebra) :-
    it_is(ungulate),
    positive(has, black_stripes).

animal_is(ostrich) :-
    it_is(bird),
    negative(does, fly),
    positive(has, long_neck),
    positive(has, long_legs),
    positive(has, black_and_white_color).

animal_is(penguin) :-
    it_is(bird),
    negative(does, fly),
    positive(does, swim),
    positive(has, black_and_white_color).

animal_is(albatross) :-
    it_is(bird),
    positive(does, fly_well).

it_is(mammal) :-
    positive(has, hair), !.
it_is(mammal) :-
    positive(does, give_milk).

it_is(bird) :-
    positive(has, feathers), !.
it_is(bird) :-
    positive(does, fly),
    positive(does, lay_eggs).

it_is(carnivore) :-
    positive(does, eat_meat), !.
it_is(carnivore) :-
    positive(has, pointed_teeth),
    positive(has, claws),
    positive(has, forward_eyes).

it_is(ungulate) :-
    it_is(mammal),
    positive(has, hooves), !.
it_is(ungulate) :-
    it_is(mammal),
    positive(does, chew_cud).

positive(X, Y) :-
    xpositive(X, Y), !.
positive(X, Y) :-
    \+ xnegative(X, Y),
    ask(X, Y, yes).

negative(X, Y) :-
    xnegative(X, Y), !.
negative(X, Y) :-
    \+ xpositive(X, Y),
    ask(X, Y, no).

ask(X, Y, yes) :-
    format('Does it ~w ~w? (yes/no): ', [X, Y]),
    read(Reply),
    (Reply == yes ; Reply == y),
    assertz(xpositive(X, Y)).
ask(X, Y, no) :-
    format('Does it ~w ~w? (yes/no): ', [X, Y]),
    read(Reply),
    (Reply == no ; Reply == n),
    assertz(xnegative(X, Y)), fail.

run :-
    retractall(xpositive(_, _)),
    retractall(xnegative(_, _)),
    (animal_is(Animal) ->
        format('\nYour animal may be a ~w.\n', [Animal])
    ;
        write('\nUnable to determine what your animal is.\n')
    ),
    clear_facts.

clear_facts :-
    retractall(xpositive(_, _)),
    retractall(xnegative(_, _)).

% To start the program, call run.










% Facts
% spot_pattern(cheetah, spotted).
% body_size(cheetah, medium).
% leg_length(cheetah, long).
% tail_length(cheetah, long).
% habitat(cheetah, grassland).
% habitat(cheetah, savanna).
% diet(cheetah, carnivore).
% speed(cheetah, fast).

% Rules
% is_cheetah(Animal) :-
    % spot_pattern(Animal, spotted),
    % body_size(Animal, medium),
    % leg_length(Animal, long),
    % tail_length(Animal, long),
    % habitat(Animal, grassland),
    % habitat(Animal, savanna),
    % diet(Animal, carnivore),
    % speed(Animal, fast).
