#' @title Maddison Project Database 2020
#'
#' @name get.DBMaddison
#'
#' @description  Maddison Project Database 2020 foi coletado via Web Sraping. As séries disponíveis na função \code{get.DBMaddison} são as seguintes:
#'
#' \code{gdppc} e
#' \code{pop}.
#'
#' Respectivamente, o PIB per capita real (U$ 2011) e população estimada para mais de 169 países ao longo da história. Para o caso do Brasil, a série histórica inicia em 1800. Observe que esse é o único conjunto de dados do {CliometricsBR} em formato de painel, isto é, um cross-section com centenas de países ao longo de uma série temporal – esses dados foram obtidos via Web Scraping.
#'
#' @param country representa o nome do país desejado. O parâmetro aceita mais de um nome por vez ou, até mesmo, o nome de todas as séries simultaneamente passando no parâmetro country = \code{"all"};
#' @param start representa o início do período/ano selecionado
#' @param end representa o fim do período/ano selecionado
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#'  O Maddison Project Database fornece informações sobre crescimento econômico comparativo e níveis de renda no longo prazo. A versão 2020 deste banco de dados abrange 169 países e o período até 2018.
#'
#' @return Retorna um data.frame com as series selecionadas
#'
#' @examples
#' \dontrun{
#'
#'
#' # Maddison Project Database 2020
#'
#' teste_mesa_all = CliometricsBR::get.DBMaddison(country = "all",
#'                                                start = 1800, end = 1900)
#'
#' teste_mesa_filter = CliometricsBR::get.DBMaddison(country = c("USA", "BRA", "ARG"),
#'                                                   start = 1850, end = 1973)
#'
#' teste_mesa_BRA= CliometricsBR::get.DBMaddison(country = "BRA")
#'
#' }
#'
#' @export

get.DBMaddison = function(country = as.character(),
                          start = as.numeric(),
                          end = as.numeric()){

# Validação country

            if(is.null(country) | length(country) == 0){

              stop("ERRO: Parâmetro country não encontrado")
            }



# Verificação dos inputs de data

      if (length(start) == 0 | length(end) == 0) {

        stop("ERRO: Parâmetro start e/ou end não encontrado!
  Por favor, selecione um período start-end válido")

    } else if (is.null(start) | is.null(end)) {

        stop("ERRO: NA's nos parâmetros start e/ou end")
}

input_country <- tibble::tibble(country) # Guardando os países selecionados
cat("Países selecionados:", input_country$country)

# WebScraping - Project Maddison Database

  excel_link <- rvest::html_nodes(read_html("https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020"),
                # código do botão de download
                ".rug-mr-s") %>% rvest::html_attr("href")

  excel_url = base::paste0("https://www.rug.nl", excel_link[2])
              httr::GET(excel_url,
                        write_disk("mpd2020.xlsx",
                        overwrite = T))
  # Salvando o xlsx sheet Full Data
  db_maddison = readxl::read_excel("mpd2020.xlsx", sheet = 3) %>%
                dplyr::relocate(year, .after = NULL)


  if(all(country == "all")){

    return(db_maddison)

    } else{

      if(any(!(input_country$country %in% unique(db_maddison$countrycode)))) {

        stop("ERRO: país selecionado inválido!")

           }

      db_maddison = db_maddison %>%
                    dplyr::filter(countrycode %in% c(input_country$country))


      if(start < min(as.numeric(db_maddison$year)) | end > max(db_maddison$year)){

        stop("ERRO: Parâmetros start e end disponíveis de acordo com as séries selecionadas, respectivamente são:", min(db_maddison$year), "-", max(db_maddison$year))

      }else{

        db_maddison = db_maddison %>%
                      dplyr::filter(year >= start & year <= end)


      }


     return(db_maddison)

  }



}



