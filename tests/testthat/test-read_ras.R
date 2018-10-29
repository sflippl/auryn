context("test-read_ras")

test_that("ras files are read in", {
  poi <- read_ras("poisson.0.ras")
  expect_equal(length(poi), 2)
  expect_equal(names(poi), c("x", "y"))
})

test_that("non-conforming files yield an error", {
  expect_error(
    read_ras("a 2\n1 2")
  )
  expect_error(
    read_ras("1 2 3\n1 2 3")
  )
})
