# Author LH

## Make R

#devtools::load_all()
#library(drake)
render_repro <- function(){
  drake::make(reproducibleFairTemplate::scenario_1)
}
render_repro()
