assertContains(Title, A, B) :- memberchk(A,B), write('[OK] '), write(Title),nl.
assertContains(Title, A, B) :- not(memberchk(A,B)),
	write('[KO] '), write(Title),nl,
	write(B),write(" does not contain "),write(A),nl,fail.

assertCount(Title, A, B) :- length(A,C), B==C, write('[OK] '), write(Title),nl.
assertCount(Title, A, B) :- length(A,C), B\==C,
	write('[KO] '), write(Title),nl,
	write("Expecting "),write(B),
	write(", got "),write(C),nl,fail.

assertDirectoryExists(Title, A) :- exists_directory(A), write('[OK] '), write(Title),nl.
assertDirectoryExists(Title, A) :- not(exists_directory(A)),
	write('[KO] '), write(Title),nl,write(A),
	write(" does not exist"),nl,fail.

assertEquals(Title, A, A) :- write('[OK] '), write(Title),nl.
assertEquals(Title, A, B) :- A\==B,
	write('[KO] '), write(Title),nl,
	write("Expecting "),write(A),
	write(", got "),write(B),nl,fail.

assertFileExists(Title, A) :- exists_file(A), write('[OK] '), write(Title),nl.
assertFileExists(Title, A) :- not(exists_file(A)),
	write('[KO] '), write(Title),nl,write(A),
	write(" does not exist"),nl,fail.

assertGreaterThan(Title, A, B) :- A>B, write('[OK] '), write(Title),nl.
assertGreaterThan(Title, A, B) :- (A<B; A==B),
	write('[KO] '), write(Title),nl,
	write(A),write(" is less than or equal to "),write(B),nl,fail.

assertGreaterThanOrEqual(Title, A, B) :- (A>B; A==B), write('[OK] '), write(Title),nl.
assertGreaterThanOrEqual(Title, A, B) :- A<B,
	write('[KO] '), write(Title),nl,
	write(A),write(" is less than "),write(B),nl,fail.

assertLessThan(Title, A, B) :- A<B, write('[OK] '), write(Title),nl.
assertLessThan(Title, A, B) :- A>=B,
	write('[KO] '), write(Title),nl,
	write(A),write(" is greater than or equal to "),write(B),nl,fail.

assertLessThanOrEqual(Title, A, B) :- (A<B; A==B), write('[OK] '), write(Title),nl.
assertLessThanOrEqual(Title, A, B) :- A>B,
	write('[KO] '), write(Title),nl,
	write(A),write(" is greater than "),write(B),nl,fail.

assertNotEquals(Title, A, B) :- A\==B, write('[OK] '), write(Title),nl.
assertNotEquals(Title, A, A) :- write('[KO] '), write(Title),nl,
	write("got "),write(A),nl,fail.
