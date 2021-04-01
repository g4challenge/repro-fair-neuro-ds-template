# Plan
# Author: LH


#' This is where you set up your workflow plan,
#' a data frame with the steps of your analysis.
#' @export
plan <- drake_plan(
    ## Data Selection
    raw_data = target(readxl::read_excel(file_in("data/raw_data.xlsx")),
                      desc = "
                      ** Dataframe containing patient data **
                      "
                      ),
    ## Data Preprocessing
    data = raw_data %>%
      mutate(cpp = MAP - ICP),
    ## Data Transformation

    ## Data Mining
    ## Interpretation/Evaluation
    #eport = rmarkdown::render(
    #  knitr_in("../notebooks/report.Rmd"),
    #  output_file = file_out("../output/report.html"),
    #  quiet = TRUE
    #)
  )

#' Plan of scenario_1
#' @export
scenario_1 <- drake_plan(
  sc1_question = "string that defines hypothesis - example: get the cpp values from different patients, which are stored in triplets",
  sc1_data = import_data(sc1_question, file_in("data/raw_data.xlsx")),
  # calculate cpp
  sc1_interim_data = sc1_data %>% mutate(cpp = MAP - ICP),
  sc1_analysis = {
    rmarkdown::render(
    knitr_in("notebooks/report.Rmd"),
    output_file = "report.html",
    quiet = TRUE
    )
    file_out("notebooks/report.html")
    },
  sc1_evaluation_process = evaluate_process(sc1_analysis),
  sc1_result = export_result(sc1_evaluation_process)
)
