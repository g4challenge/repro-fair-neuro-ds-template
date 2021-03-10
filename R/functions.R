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
my_function <- function(input) {
  # documented code
  output <- input + 1
  return(output)
}


#' Create Histogram with Mapping Ozone and Binwidth = 10
#'
#' @param data
#'
#' @return ggplot object
#' @export
#'
#' @examples
create_plot <- function(data) {
  ggplot(data) +
    geom_histogram(aes(x = timestamp), binwidth = 10) +
    theme_gray(24)
}
