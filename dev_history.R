# created by Lukas Huber

# Dev-History

# Provenance in R
# https://github.com/End-to-end-provenance/RDataTracker
## Provenance of a run
prov.run("R/make.R")

## Research Compendium
## https://www.researchobject.org/ro-crate/1.1/root-data-entity.html#ro-crate-metadata-file-descriptor
write_compendium_description(package = "Your compendium name",
                             description = "Your compendium description")


# Code
# Lintr
install.packages("lintr")
library(lintr)
#holepunch::write_runtime() # https://github.com/alan-turing-institute/the-turing-way/blob/master/workshops/boost-research-reproducibility-binder/workshop-presentations/zero-to-binder-r.md


usethis::use_github_action_check_standard()

## pkgdown
pkgdown::build_site()

usethis::use_gpl3_license() # GPL-License for maximum shareability

#prov

library(rdtLite)

rdtLite::prov.quit()
rdtLite::prov.run("R/make.R")
rdtLite::prov.visualize()
