# Plan
# Author: LH


# This is where you set up your workflow plan,
# a data frame with the steps of your analysis.
plan <- drake_plan(
    ## Data Selection
    raw_data = readxl::read_excel(file_in("../data/raw_data.xlsx")),
    ## Data Preprocessing
    data = raw_data %>%
      mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE))),
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
