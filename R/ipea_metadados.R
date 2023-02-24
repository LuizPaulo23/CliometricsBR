#' @title Metadado das séries históricas disponíveis no IPEAdata 
#'
#' @name ipea_metadados
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
#'    ipea_metadados = ipea_metadados(code_series = c("HIST_DCCEST", 
#'                                                    "HIST_AGRANIMAB", 
#'                                                    "HIST_AGRCULDOM"))
#'
#' }
#'
#' @export


ipea_metadados <- function(code_series = as.character()){
  
  metadados = ipeadatar::metadata(code = c(code_series)) %>% 
              dplyr::select(-lastupdate, 
                            -status, 
                            -scode)
  
  return(metadados)
  
}





