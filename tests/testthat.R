library(testthat)
library(reproducibleFairTemplate)

source("R/packages.R")

test_check("reproducibleFairTemplate")


test_that("0 - context is defined", 1)
# strobe, record, daqcord, cdisc share
test_that("1 - process steps exist", 1)
# KDD
test_that("2 - documentation is created (roxygen)",1)
# roxygen, cchic, provenance, pkgdown
test_that("3 - data are versioned and controlled", 1)
# FAIR, DAQCORd, IQM3, FHIR, privacy+security
# DVC
test_that("4 - analysis-code is versioned and assured", 1)
# environment - renv
# traceable  - drake
# pipelines - drake
# dockerized
# wholetale, dcat, nanopublications, codeocean, binder...
test_that("5 - execution is validated", 1)
# drake
test_that("6 - results are traceable", 1)
# zenodo,...

test_that("Environment is correct version")
