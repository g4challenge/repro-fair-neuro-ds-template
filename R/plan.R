# Plan
# Author: LH


#' Plan of scenarios,
#' This is where you set up your workflow plan,
#' a data frame with the steps of your analysis.
#' @export
#'
#' @tests
#' expect_s3_class(scenario_wrapper(), "drake_plan")
scenario_wrapper <- function(){
  plan <- drake_plan(
    ## Data Selection
    sc1_question = "string that defines hypothesis - example: get the cpp values from different patients, which are stored in triplets",
    sc1_data = target(import_data(sc1_question, file_in("inst/extdata/raw_data.xlsx")),
                      desc = "
                      ** Dataframe containing patient data **
                      "),
    ## Data Preprocessing
    ## Data Transformation
    # calculate cpp
    sc1_interim_data = sc1_data %>% mutate(cpp = MAP - ICP),
    ## Data Mining
    sc1_analysis = {
      rmarkdown::render(
        knitr_in("notebooks/report.Rmd"),
        output_file = "report.html",
        quiet = TRUE
      )
      file_out("notebooks/report.html")
    },
    ## Interpretation/Evaluation
    sc1_evaluation_process = evaluate_process(sc1_analysis),
    sc1_result = export_result(sc1_evaluation_process),
    ### Scenario_2
    sc2_random1 = sample_data(sc1_interim_data)
  )
  return(plan)
}
