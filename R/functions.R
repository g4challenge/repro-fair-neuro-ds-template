# Functions

#' Increment Template Function
#'
#' @param input
#'
#' @return output numeric - increased by 1
#' @export
#'
#' @examples
#' my_function(1)
#'
#' @tests
#' expect_equal(my_function(1), 2)
#'
my_function <- function(input){
  # documented code
  output <- input+1
  return(output)
}
