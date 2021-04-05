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


#' Create Histogram of a named variable
#'
#' @param data tibble to be utilized
#' @param variable name of the variable to be plotted
#'
#' @return ggplot object
#' @export
#'
#'@tests
#'expect_s3_class(create_plot(tibble(x=rnorm(10)), quote("x")), "ggplot")
create_plot <- function(data, variable) {
  ggplot(data) +
    geom_histogram(aes_(x = variable), binwidth = 10) +
    theme_gray(24)
}
