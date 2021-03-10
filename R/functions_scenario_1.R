

#' Imports data linked with the question
#'
#' @param question question string, which is linked in the system
#' @param file path to raw triplet file
#'
#' @importFrom readxl read_excel
#'
#' @tests
#' expect_s3_class(import_data("test", "../../data/raw_data.xlsx"),  "data.frame")
#'
#'
#' @return imported data
#' @export
#'
import_data = function(question, file){
  dataset = read_excel(file)
  return(dataset)
}


#' The analysis makes a report, in the example case a visualization of cpp
#'
#' @param data returned from import data
#' @param notebook_file the report file which is knitted
#'
#' @return
#' @export
#'
#' @examples
make_analysis = function(data, notebook_file){

  # knit notebook

  # check - successful
}

#' Evaluate the made analysis
#'
#' @param analysis made before
#'
#' @return
#' @export
#'
#' @examples
evaluate_process = function(analysis){
  # check plot
  #
}

#' Export the Result artifact
#'
#' @return
#' @export
#'
#' @examples
export_result= function(evaluated_process){
  # create output files
  # capture metadata
}
