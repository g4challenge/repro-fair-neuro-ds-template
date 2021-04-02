# Author LH

## Make R

#devtools::load_all()
#library(drake)
render_repro <- function(){
  drake::make(scenario_1_wrapper())
}
render_repro()
