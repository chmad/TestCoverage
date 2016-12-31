# TestCoverage
R package illustrating some issues between covr package and S4 classes.

I encouter an problem when defining a validity method which includes an `if` condition comparing two functions with `identical`. More precisely, I have class A and B. Class A has a validity function as described above and B has one slot of type A. I then call the validity function of A, in the vailidity function of B, and this seems to create a conflict of environments. As a result, the `covr` package output says that the line has not been tested, although this validity function is tested. This even creates conflict as the constructor level, as illustred in the test file.
