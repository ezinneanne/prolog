% factorial(Number, Result) calculates the factorial of a number
% factorial(0, 1) :- !.  % Base case: factorial of 0 is 1 (cut)
% factorial(Number, Result) :-
  % Number > 0,
  % NewNumber is Number - 1,
  % factorial(NewNumber, FactorialOfPrevious),  % Recursive call to find factorial of (Number - 1)
  Result is FactorialOfPrevious * Number.

% Main program: get user input, calculate factorial, and print the result
get_factorial :-
  write('Enter a non-negative number: '),
  read(Number),
  ( Number < 0 -> write('Factorial is not defined for negative numbers.') ;  % Error handling for negatives
    factorial(Number, Result),
    format('The factorial of ~w is ~w', [Number, Result])
  ),
  nl.  % Print a newline