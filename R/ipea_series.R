#' @title Séries históricas disponíveis no IPEAdata
#'
#' @name ipea_series
#'
#' @description
#'
#'
#'
#' @param
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#' @return
#'
#' @examples
#' \dontrun{
#'
#'   series_available = ipea_series()
#'
#' }
#'
#' @export


ipea_series <- function(){

series = ipeadatar::available_series(language = c("br")) %>%
              base::subset(grepl("^HIST", code)) %>%
             dplyr::select(-lastupdate,
                           -status)

    return(series)

}


