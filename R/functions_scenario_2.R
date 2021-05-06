

#' Samples data linked with the question from scenario 1
#'
#' @param data the tibble which is subsampled
#'
#' @return sampled data, which should be reprodcicble
#' @export
#'
sample_data <- function(data) {
  set.seed(12345)
  data_sample <- data %>% sample_n(1)
  return(data_sample)
}
