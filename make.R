# Author LH

## Make R

#devtools::load_all()
#library(drake)
render_repro <- function(){
  drake::make(scenario_wrapper())
}
render_repro()
