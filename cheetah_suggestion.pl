% Define the main predicate to suggest an animal based on the characteristics
suggest_animal :-
    write('What is the speed range of the animal (fast F or slow S)? '), 
    read(Speed),
    write('Is the animal spotted or plain (spotted S or plain P)? '), 
    read(Pattern),
    write('Is the animal slender or chubby (slender S or chubby C)? '), 
    read(BodyType),
    write('Does it have a small head or big head (small S or big B)? '), 
    read(HeadSize),
    write('Does it have tear-like facial streaks or not (tear_like T or not N)? '), 
    read(FacialStreaks),
    determine_animal(Speed, Pattern, BodyType, HeadSize, FacialStreaks).

% Determine the animal based on the characteristics
determine_animal('F', 'S', 'S', 'S', 'T') :-
    write('It is definitely a cheetah'), nl, !.

determine_animal(_, _, _, _, _) :-
    write('The animal is not a cheetah'), nl, !.

% Main predicate to start the expert system
start :- 
    suggest_animal.

% Example query to start the expert system
% You can start the expert system by querying:
% ?- start.
