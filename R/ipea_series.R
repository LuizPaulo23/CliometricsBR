#' @title Séries históricas disponíveis no IPEAdata
#'
#' @name get_seriesIPEA
#'
#' @description A função busca retorna todas as séries históricas disponíveis no IPEAdata via API
#'
#' @param codes representa o parâmetro que recebe o código da série
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#'
#' @return Retorna um data.frame com as séries históricas selecionadas
#'
#'
#' @examples
#' \dontrun{
#'
#'   series_all = CliometricsBR::get_seriesIPEA(codes = c("HIST_ACOV",
#'                                                        "HIST_ACUCARQ",
#'                                                        "HIST_ACUCARV"))
#'
#' }
#'
#' @export


get_seriesIPEA <- function(codes = as.character()){

# Validação

  if (is.null(codes) || length(codes) == 0) {

    stop("ERRO: character nulo.")

  } else if (is.numeric(codes)) {

    stop("ERRO: código numérico não é válido")
}


# criar um data.frame vazio para armazenamento

requests <- data.frame(code_series = character(),
                       date = character(),
                       value = numeric(),
                       stringsAsFactors = FALSE)

# loop sobre os códigos de série e extrair as informações

for (codes in codes) {

  # Chamando API, verbo GET
  response <- httr::VERB("GET", url = paste0("http://www.ipeadata.gov.br/api/odata4/ValoresSerie(SERCODIGO='", codes, "')")) %>%
              httr::content("parsed")

# extrair informações relevantes para cada observação

  for (i in seq_along(response$value)) {

    code_series <- response$value[[i]]$SERCODIGO
    date <- response$value[[i]]$VALDATA
    value <- response$value[[i]]$VALVALOR

# adicionar informações ao data.frame

    requests <- rbind(requests,
                      data.frame(code_series,
                                 date,
                                 value,
                                 stringsAsFactors = FALSE))

    requests$date <- as.Date(substr(requests$date, 1, 10))


    }

  }

    if(is.null(requests$code_series) | length(requests$code_series) == 0){

      stop("ERRO: retornou um data.frame nulo, código inexistente")

    }

    return(requests)

}



