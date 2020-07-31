# Plan
# Author: LH


# This is where you set up your workflow plan,
# a data frame with the steps of your analysis.
plan <- drake_plan(
    raw_data = readxl::read_excel(file_in("data/raw_data.xlsx")),
    data = raw_data %>%
      mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE))),
    hist = create_plot(data),
    fit = target(
      lm(Ozone ~ Wind + Temp, data),
      desc= "
      ** This model describes Ozone depending on Wind**
      "
      ),
    report = rmarkdown::render(
      knitr_in("notebooks/report.Rmd"),
      output_file = file_out("output/report.html"),
      quiet = TRUE
    )
  )
