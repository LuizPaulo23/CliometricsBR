#' @title Metadados das séries históricas disponíveis no IPEAdata
#'
#' @name get_metadadosIPEA
#'
#' @description A função busca retorna os metadados das séries históricas disponíveis no IPEAdata via API
#'
#' @param codes representa o parâmetro que recebe o código da série, no qual pode ser passado como input "all" quando desejado o metadado de todas as séries
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#'
#' @return Retorna um data.frame com os metadados
#'
#'
#' @examples
#' \dontrun{
#'
#'   metadados_select_mult = CliometricsBR::get_metadadosIPEA(codes = c("HIST_ACOV",
#'                                                                      "HIST_ACUCARQ",
#'                                                                       "HIST_ACUCARV"))
#'
#' }
#'
#' @export

get_metadadosIPEA  <- function(codes = as.character()){

# Validação dos códigos

if (is.null(codes) || length(codes) == 0) {

    stop("ERRO: character nulo.")

  } else if (is.numeric(codes)) {

     stop("ERRO: código numérico não é válido")
  }

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

  }
)

# Guardando o código dos usuários

request = tibble::tibble(codes)

# Filtrando o JSON clean

  if(all(request$codes == "all")){

    metadados_ipea <- metadados_ipea %>%
      base::subset(grepl("^HIST", code))

  }else{

    if(any(!(request$codes %in% metadados_ipea$code))){

      stop("Ops! Código Inexistente")

    }

    metadados_ipea <- metadados_ipea %>%
                      base::subset(grepl("^HIST", code)) %>%
                      dplyr::filter(code %in% c(request$codes))

  }

  return(metadados_ipea)

}




