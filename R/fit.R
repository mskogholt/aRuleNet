#' Estimates the dependency network using association rules extracted from
#' x.
#'
#' @param x matrix input data used to fit the network
#'
#' @return fitted network
#' @export
#'
#' @examples
#' fit(iris[1:4])
fit <- function(x){
  model = arules::apriori(x)
  return(x)
}
