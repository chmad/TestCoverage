ClassA = setClass("ClassA", slot = c(a = "function"))#, contains = "VIRTUAL")
                 # prototype = prototype(a = function(){FALSE}))
# #
# ValidClassA <- function(object){
#   test = TRUE
#   print("ClassA")
#   return(test)
# }
# setValidity("ClassA", ValidClassA)

setMethod("initialize","ClassA", function(.Object,...){
  .Object <- callNextMethod()
  .Object
})


trueFct = function(x){TRUE}

ChildClassA = setClass("ChildClassA", slot = c(ca = "numeric"), contains = "ClassA",
                       prototype = prototype(a = trueFct))


ValidChildClassA <- function(object){
  test = TRUE
  if(!identical(object@a,trueFct)) stop("function not equal to prototype")
  print("ChildA")
  return(test)
}
setValidity("ChildClassA", ValidChildClassA)


setMethod("initialize","ChildClassA", function(.Object,...){
  .Object <- callNextMethod()
  .Object
})





