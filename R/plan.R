# Plan
# Author: LH


# This is where you set up your workflow plan,
# a data frame with the steps of your analysis.
plan <- drake_plan(
    ## Data Selection
    raw_data = readxl::read_excel(file_in("../data/raw_data.xlsx")),
    ## Data Preprocessing
    data = raw_data %>%
      mutate(cpp = map-icp),
    ## Data Transformation

    ## Data Mining
    hist = create_plot(data),
    fit = target(
      lm(Ozone ~ Wind + Temp, data),
      desc= "
      ** This model describes Ozone depending on Wind**
      "
      ),
    ## Interpretation/Evaluation
    report = rmarkdown::render(
      knitr_in("../notebooks/report.Rmd"),
      output_file = file_out("../output/report.html"),
      quiet = TRUE
    )
  )


scenario_1 <- drake_plan(
  sc1_question = "string that defines hypothesis - example: get the cpp values from different patients, which are stored in triplets",
  sc1_data = import_data(sc1_question, file_in("data/raw_data.xlsx")),
  sc1_analysis = make_analysis(sc1_data),
  sc1_evaluation_process = evaluate_process(sc1_analysis),
  sc1_result = export_result(sc1_evaluation_process)
)
