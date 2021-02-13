

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
  print(getwd())
  dataset = read_excel(file)
  return(dataset)
}


#' Title
#'
#' @param data
#'
#' @return
#' @export
#'
#' @examples
make_analysis = function(data){

}

#' Title
#'
#' @param analysis
#'
#' @return
#' @export
#'
#' @examples
evaluate_process = function(analysis){

}

#' Title
#'
#' @return
#' @export
#'
#' @examples
export_result= function(evaluated_process){

}
