#' Konwersja temperatur
#'
#' @description
#' Funkcja przelicza temp z F na C
#'
#' @param temperatura_f temperatura w F
#'
#' @return wektor o takiej samej dlugosci jak temperatura_f
#' @export
#'
#' @examples
#' konwersja_temp(99)
konwersja_temp = function(temperatura_f){
  (temperatura_f - 32) / 1.8
}

