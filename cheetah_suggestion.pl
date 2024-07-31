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


Knowledgebase for cheetah; fast, spotted, slender bodies, small heads, tear-like facial streaks
Questions to ask the user: is the animal fast? Is the animal spotted, does it have a slender body, does it have a small head, does it have tear-like facial streaks

What is the speed range of the animal (fast F or slow S)? yes
Is the animal S spotted or plain P? yes
Is the animal S slender or C chubby? yes
Does it have a S small head or B big head? yes
Does it have T tear-like facial streaks or Not N? Yes

It is definitely a cheetah
If yes&yes&yes&yes


Type
Boolean
Text
FSSST
True
It is definitely a cheetah
FSSSN
False
It is not a cheetah as tear-like facial streaks are unique to only cheetahs
SPCBT
True
It is possibly a cheetah as cheetahs have unique tear-like facial streaks
FPSBT
True
It is possibly a cheetah as cheetahs have unique tear-like facial streaks
SPCSN
False
It is not a cheetah
SPCBN
False
It is not a cheetah
SSSSN
False
It is not a cheetah
SPCSN
False
It is not a cheetah






















song('https://www.youtube.com/watch?v=c8YIlU_30Kk',jazz,M,P):- M = happy ,(P= (entj) ; P=(enfj) ; P=(enfp)),!.

Suggest(‘It is definitely a cheetah’, T):- (T= FSSST),!.

What is the speed range of the animal (fast or slow)? yes
Is the animal spotted or plain? yes
Is the animal slender or chubby? yes
Does it have a small head or big head? yes
Does it have tear-like facial streaks? No

It is not a cheetah as tear-like facial streaks are unique to only cheetahs

If yes&yes&yes&no = false

What is the speed range of the animal (fast or slow)? Slow | No
Is the animal spotted or plain? Plain| No
Is the animal slender or chubby? Chubby|No
Does it have a small head or big head? Big head|No
Does it have tear-like facial streaks? Yes

It is possibly a cheetah as cheetahs have unique tear-like facial streaks


What is the speed range of the animal (fast or slow)? yes
Is the animal spotted or plain? No
Is the animal slender or chubby? yes
Does it have a small head or big head? No
Does it have tear-like facial streaks? Yes

It is possibly a cheetah as cheetahs have unique tear-like facial streaks


What is the speed range of the animal (fast or slow)? No
Is the animal spotted or plain? yes
Is the animal slender or chubby? No
Does it have a small head or big head? Yes
Does it have tear-like facial streaks? No

It is not a cheetah
