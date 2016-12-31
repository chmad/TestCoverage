context("Definition")

myA = new("ClassA")
# myA = new("ChildClassA")
#
#
# test_that("ValidChildClassA throws an error",{
#   myATemp = myA
#   myATemp@a = function(){print("hello")}
#   expect_error(ValidChildClassA(myATemp), "function not equal to prototype" )
#
# })
myB = new("ClassB", b = 1, objA = myA)

# # Tests for ClassB --------------------------------------------------------
# testFct = function(x){TRUE}
# test_that("fct slot is correct",{
#    expect_equal(myB@objA@a,testFct)
#
# })
#
# test_that("ValidClassB throws an error",{
#     myBTemp = myB
#     myBTemp@b = -1
#     expect_error(ValidClassB(myBTemp), "cant be negative")
#
# })
