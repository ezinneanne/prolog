% A program to find the factorial of a number
factorial(0, 1).  % Base case: factorial of 0 is 1
factorial(N, R) :-
    N > 0,           % Ensure N is positive
    S is N - 1,     % Decrease N by 1
    factorial(S, T), % Recursive call
    R is N * T.     % Calculate factorial

% Main predicate to read input, calculate factorial, and print result
main :-
    write('Enter a number: '),
    read(N),        % Read input from user
    factorial(N, F),  % Calculate factorial
    format('Factorial of ~w is ~w.~n', [N, F]). % Print result

% Entry point
:- main.