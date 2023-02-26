#' @title Séries históricas disponíveis no IPEAdata
#'
#' @name get_metadadosIPEA
#'
#' @description A função busca retorna todas as séries históricas disponíveis no IPEAdata via API
#'
#' @param
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#' Não há parâmetro na função, basta chamar a função que irá retornar todas as séries históricas disponíveis
#'
#' @return Retorna um data.frame com todas as séries históricas disponíveis
#'
#'
#' @examples
#' \dontrun{
#'
#'   series_available = CliometricsBR::get_metadadosIPEA()
#'
#' }
#'
#' @export

get_metadadosIPEA  <- function(){

# Chamando API, Verbo GET

metadados <- httr::VERB("GET", url = "http://www.ipeadata.gov.br/api/odata4/Metadados") %>%
             httr::content("parsed")

# Fazendo um loop e guardando as variáveis de interesse do JSON
metadados_ipea <- purrr::map_df(metadados[["value"]], function(x) {

    code = ifelse(length(x[["SERCODIGO"]]) > 0,
                         x[["SERCODIGO"]], NA)
    name = ifelse(length(x[["SERNOME"]]) > 0,
                         x[["SERNOME"]], NA)
    comment = ifelse(length(x[["SERCOMENTARIO"]]) > 0,
                            x[["SERCOMENTARIO"]], NA)
    source = ifelse(length(x[["FNTSIGLA"]]) > 0,
                           x[["FNTSIGLA"]], NA)
    freq = ifelse(length(x[["PERNOME"]]) > 0,
                         x[["PERNOME"]], NA)
    metric = ifelse(length(x[["UNINOME"]]) > 0,
                           x[["UNINOME"]], NA)
    units = ifelse(length(x[["MULNOME"]]) > 0,
                          x[["MULNOME"]], NA)
    country = ifelse(length(x[["PAICODIGO"]]) > 0,
                            x[["PAICODIGO"]], NA)

    return(data.frame(code,
                      name,
                      comment,
                      source,
                      freq,
                      metric,
                      units,
                      country))

  })

# Filtrando o JSON para guardar apenas os dados históricos
    metadados_ipea <- metadados_ipea %>%
                      base::subset(grepl("^HIST", code))


        return(metadados_ipea)

}


