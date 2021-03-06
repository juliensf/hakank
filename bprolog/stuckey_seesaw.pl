/*

  Seesaw problem in B-Prolog.

  Marriott & Stuckey "Programming with Constraints", page 257.
 
  Balancing on a seesaw.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my B-Prolog page: http://www.hakank.org/bprolog/

*/


% direct modeling
go :-
        LS = [Liz,Fi,Sara],
        LS :: -5..5,

        9 * Liz + 8 * Fi + 4 * Sara #= 0,
        apart(Liz, Fi, 3),
        apart(Liz, Sara, 3),
        apart(Sara, Fi, 3),

        % symmetry breaking
        Sara #>= 0,
        labeling([], LS),

        writeln([liz:Liz,fi:Fi,sara:Sara]),nl.

%
% Page 258 suggests cumulative instead of apart.
%
go2 :-
        LS = [Liz,Fi,Sara],
        LS  :: -5..5,

        9 * Liz + 8 * Fi + 4 * Sara #= 0,
        % symmetry breaking
        Sara #>= 0,

        LD = [3,3,3],
        LR = [1,1,1],
        Limit = 1,
        cumulative(LS, LD, LR, Limit),

        term_variables([LS],Vars),
        labeling([], Vars),

        write([liz:Liz,fi:Fi,sara:Sara]),nl,nl.


apart(X, Y, N) :- 
        (X #>= Y + N) #\/ (Y #>= X + N).

