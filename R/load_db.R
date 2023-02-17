#' @title Base de dados do pacote CliometricsBR
#' @name load_db
#'
#' @description A função representa a importação da base de dados local (pasta {R}) utilizada no pacote. Portanto, os dados utilizados no CliometricsBR que são derivados de Web-Scraping não estão disponíveis no presente banco de dados local. Assim, possibilitando um melhor gerenciamento do pacote.
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#' @return Retorna um data.frame com a base de dados bruta utilizada no pacote, com exceção dos dados de Web-Scraping.
#'
#' @examples
#' \dontrun{
#'
#'          db_cliometrics = load_db()
#' }
#'
#'
#' @export

load_db <- function() {

  Db_cliometrics <- base::readRDS(system.file("data/data.rds",
                                  package = "CliometricsBR"))

  if(!is.null(Db_cliometrics)){
    return(Db_cliometrics)

  }else{

       stop("ERRO: Base de dados {Db_cliometrics} não encontrada")

     }

}





