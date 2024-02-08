nowy_p = 1:100
nowy_p_2 = nowy_p^2

test_that("struktura wyniku jest poprawna", {
  expect_length(remove_outliers(nowy_p), 100)
})

test_that("wystepuja odpowiednie bledy", {
  expect_error(remove_outliers(c(3, 5, 2, "a")))
})

data("moj_df", package = "mojpakiet")
test_that("dlugosc wyniku jest poprawna", {
  testthat::expect_equal(length(remove_outliers(moj_df$y)), 20)
})

test_that("wynik jest poprawna", {
  testthat::expect_equal(length(remove_outliers(moj_df$y)), 20)
})
