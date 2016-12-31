ClassB = setClass("ClassB", slot = c(b = "numeric", objA = "ClassA"))

ValidClassB <- function(object){
  test = TRUE
  if(object@b < 0) stop("cant be negative")
  #getValidity(getClassDef(class(object@objA)[1]))(object@objA)
  validObject(object@objA)
  return(test)
}
setValidity("ClassB", ValidClassB)

setMethod("initialize","ClassB", function(.Object,...){
  .Object <- callNextMethod()
  .Object
})
