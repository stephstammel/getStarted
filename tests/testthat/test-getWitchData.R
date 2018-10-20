context("test-getWitchData.R")

db <- getWitchData()

test_that("the data is as expected", {
  expect_equal(nrow(db), 10940)
  expect_equal(ncol(db), 12)
})
