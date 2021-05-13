

#' Samples data linked with the question from scenario 1
#'
#' @param data the tibble which is subsampled
#'
#' @return sampled data, which should be reprodcicble
#' @export
#'
#'@tests
#'expect_equal(nrow(sample_data(tibble(x=c(1,2,3,4,5)))),1)
sample_data <- function(data) {
  set.seed(12345)
  data_sample <- data %>% sample_n(1)
  return(data_sample)
}
