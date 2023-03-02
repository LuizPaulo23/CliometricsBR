#' @title Séries históricas disponíveis no IPEAdata
#'
#' @name
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

code = c("HIST_AGUARV", "HIST_BABV")

get_seriesIPEA <- function(code = as.character()){

series = tibble::tibble(code) # Guardando os códigos
series_list = list()

for (i in 1:length(series$code)) {

# Chamando a API, verbo GET
code_select <- httr::VERB("GET", url = paste0("http://www.ipeadata.gov.br/api/odata4/ValoresSerie(SERCODIGO='",
                                              i, "')")) %>% httr::content("parsed")

series_list[i] = code_select

  }

}


test = get_seriesIPEA()
library(tibble)
library(httr)
library(dplyr)

get_seriesIPEA <- function(code = as.character()) {

  series_list <- list() # criar uma lista vazia para armazenar os data.frames

  for (i in seq_along(code)) {
    url <- paste0("http://www.ipeadata.gov.br/api/odata4/ValoresSerie(SERCODIGO='", code[i], "')")

    # fazer a chamada para a API
    response <- httr::GET(url)

    # extrair os dados da resposta
    content <- httr::content(response, "parsed")

    # transformar os dados em um data.frame e adicionar à lista
    series_list[[i]] <- as.data.frame(content$value)
  }

  # combinar todos os data.frames da lista em um único data.frame
  result <- dplyr::bind_rows(series_list)

  return(result)
}


test = get_seriesIPEA(code = "")


library(tibble)
library(httr)
library(dplyr)

library(tibble)
library(httr)
library(dplyr)

library(dplyr)
library(tidyr)

get_seriesIPEA <- function(code = character()){

  series <- tibble::tibble(code)

  dados <- tibble()

  for (i in 1:length(series$code)) {

    url <- paste0("http://www.ipeadata.gov.br/api/odata4/ValoresSerie(SERCODIGO='",
                  series$code[i], "')")

    dados_serie <- httr::GET(url) %>% httr::content("parsed")

    dados_serie <- tibble::as_tibble(dados_serie$value)

    dados_serie <- dados_serie %>%
      dplyr::select(SERCODIGO, VALDATA, VALVALOR)

    dados <- dplyr::bind_rows(dados, dados_serie)

  }

  dados <- dados %>%
    tidyr::pivot_longer(cols = -c(SERCODIGO, VALDATA), names_to = "variable", values_to = "value") %>%
    tidyr::separate(variable, into = c("variable", "series"), sep = "(?<=\\D)(?=\\d)") %>%
    tidyr::complete(series, VALDATA, fill = list(value = NA_real_)))

return(dados)

}


test_mesa = get_seriesIPEA(code = "HIST_XCAFEQ")
