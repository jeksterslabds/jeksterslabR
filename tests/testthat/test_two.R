library(testthat)
library(jeksterslabR)
context("Test two.")
test_that("two", {
  expect_equal(
    two(),
    2
  )
})
