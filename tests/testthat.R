library(testthat)
pkgload::load_all(".")

#source_dir("R")

test_check("reproducibleFairTemplate")

template_mode <- FALSE
# Additional Tests, only suitable in "full-template" not in the package mode.
if(template_mode)
{

test_that("0 - context is defined", 1)

# strobe, record, daqcord, cdisc share
test_that("1 - process steps exist", 1)
test_that("M-1-", 1)
# KDD


test_that("2 - documentation is created (roxygen)", 1)
# roxygen, cchic, provenance, pkgdown
test_that("3 - data are versioned and controlled", 1)
# FAIR, DAQCORd, IQM3, FHIR, privacy+security
# DVC
test_that("4 - analysis-code is versioned and assured", 1)
# environment - renv
test_that("4 - renv exists",{
  expect_true(file.exists("../renv.lock"))
})
# traceable  - drake
# pipelines - drake

# wholetale, dcat, nanopublications, codeocean, binder...
test_that("5 - execution is validated", 1)
test_that("5 - dockerfile exists",{
  expect_true(file.exists("../Dockerfile"))
})
# dockerized - rocker
# drake
test_that("5 - drake folder exists",{
  expect_true(dir.exists("../.drake"))
})


test_that("6 - results are traceable", 1)
# zenodo,...
# Rocrate
test_that("6 - ROCrate exists",{
  expect_true(file.exists("../man/figures/ro-crate-metadata.json"))
})

drake::loadd(sc2_random1)
testthat::test_that("6 - sc2_random1 contains the reproducible correct sample", {
  testthat::expect_equal(sc2_random1$cpp[1], 89.5938261130521)
})

test_that("Environment is correct version", {
  expect_true(T)
})

}

