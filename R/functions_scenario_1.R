

#' Imports data linked with the question
#'
#' @param question question string, which is linked in the system
#' @param file path to raw triplet file
#'
#' @importFrom readxl read_excel
#'
#' @tests
#' expect_error(import_data("test", "some_wrong_path/raw_data.xlsx"))
#'
#'
#' @return imported data
#' @export
#'
import_data <- function(question, file) {
  dataset <-  read_excel(file)
  return(dataset)
}


#' The analysis makes a report, in the example case a visualization of cpp
#'
#' @param data returned from import data
#' @param notebook_file the report file which is knitted
#'
#' @return TRUE or result code
#' @export
#'
#' @tests
#' expect_true(make_analysis(tibble(x=1), notebook_file="../../notebooks/report.rmd"))
make_analysis <- function(data, notebook_file) {

  # knit notebook

  # check - successful
  return(TRUE)
}

#' Evaluate the made analysis
#'
#' @param analysis made before
#'
#' @return TRUE if succesful
#' @export
#'
#' @tests
#' expect_true(evaluate_process(analysis="test"))
evaluate_process <- function(analysis) {
  # check plot
  #
  return(TRUE)
}

#' Export the Result artifact
#'
#' @param evaluated_process if process was evaluated succesful
#'
#' @return TRUE as stub
#' @export
#'
#' @tests
#' expect_true(export_result("test"))
export_result <- function(evaluated_process) {
  # create output files
  # capture metadata
  return(TRUE)
}
