set.seed(08022024)
moj_df = data.frame(x = sample(100, 20), y = sample(500, 20))
usethis::use_data(moj_df, overwrite = TRUE)
