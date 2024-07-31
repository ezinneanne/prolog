% Facts
spot_pattern(cheetah, spotted).
body_size(cheetah, medium).
leg_length(cheetah, long).
tail_length(cheetah, long).
habitat(cheetah, grassland).
habitat(cheetah, savanna).
diet(cheetah, carnivore).
speed(cheetah, fast).

% Rules
is_cheetah(Animal) :-
    spot_pattern(Animal, spotted),
    body_size(Animal, medium),
    leg_length(Animal, long),
    tail_length(Animal, long),
    habitat(Animal, grassland),
    habitat(Animal, savanna),
    diet(Animal, carnivore),
    speed(Animal, fast).







