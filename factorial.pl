% Base case: The factorial of 0 is 1
factorial(0, 1).

% Recursive case: The factorial of N is N * factorial of (N-1)
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.



% A program to find the factorial of a number
% factorial(0, 1).  % Base case: factorial of 0 is 1
% factorial(N, R) :-
    % N > 0,           % Ensure N is positive
    % S is N - 1,     % Decrease N by 1
    % factorial(S, T), % Recursive call
    % R is N * T.     % Calculate factorial

% Main predicate to read input, calculate factorial, and print result
% main :-
    % write('Enter a number: '),
    % read(N),        % Read input from user
    % factorial(N, F),  % Calculate factorial
    % format('Factorial of ~w is ~w.~n', [N, F]). % Print result

% Entry point
% :- main.

