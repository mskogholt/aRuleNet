test_that("Fit function works", {
  x <- iris[1:4]

  output <- fit(x)

  expect_equal(x, output)

})
