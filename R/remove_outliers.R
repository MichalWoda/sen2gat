#' Remove outliers
#'
#' @description
#' Function to remove outliers observation based
#' on a quantile distance
#'
#' @param x vector of values
#' @param lq lower quantile
#' @param uq upper quantile
#'
#' @return vector
#' @export
#'
#' @examples
#' data <- c(1,1,1,1,1,99)
#' new_data <- remove_outliers(data)
#' print(data)
#' print(new_data)
#'
#' data("moj_df", package = "mojpakiet")
#' remove_outliers(moj_df$x)
#'
#' system.file("moj_df.csv", package = "mojpakiet")
#' remove_outliers(moj_df$y)
remove_outliers <- function(
    x,
    lq = .25,
    uq = .75)
  {
  qnt <- stats::quantile(x, probs=c(lq, uq), na.rm = T)
  iq <- as.numeric(qnt[2] - qnt[1])
  x[x < (qnt[1]-(1.5*iq))] <- NA
  x[x > (qnt[2]+(1.5*iq))] <- NA
  return(x[stats::complete.cases(x)])
}
