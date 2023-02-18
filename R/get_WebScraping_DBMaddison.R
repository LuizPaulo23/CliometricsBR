#' @title Maddison Project Database 2020
#'
#' @name get.DBMaddison
#'
#' @description  Maddison Project Database 2020 foi coletado via Web Sraping. As séries disponíveis na função \code{get.DBMaddison} são as seguintes:
#'
#' \code{gdpcc} e
#' \code{pop}.
#'
#' São respestivamente: Real GDP per capita in 2011$ e Population - mid-year (thousands). Há dados disponíveis desde do século XIX ou até mesmo de períodos anteriores (Para o Brasil em específico há dados desde 1800). Para mais detalhes sobre a metodologia de estimação/retropolação consultar a documentação no Github.
#'
#' @param country representa o nome do país desejado. O parâmetro aceita mais de um nome por vez ou, até mesmo, o nome de todas as séries simultaneamente passando no parâmetro country = \code{"all"};
#' @param start representa o início do período/ano selecionado
#' @param rend representa o fim do período/ano selecionado
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#'  O Maddison Project Database fornece informações sobre crescimento econômico comparativo e níveis de renda no longo prazo. A versão 2020 deste banco de dados abrange 169 países e o período até 2018. Para questões não abordadas na documentação, entre em contato com ggdc @rug.nl .

#' @return Retorna um data.frame com os series selecionadas
#'
#' @examples
#' \dontrun{
#'
#'
#' }
#'
#' @export

get.DBMaddison = function(country = as.character(),
                          start = as.numeric(),
                          end = as.numeric()){

# Verificação dos inputs de data

      if (length(start) == 0 | length(end) == 0) {
        stop("ERRO: Parâmetro start e/ou end não encontrado!
  Por favor, selecione um período start-end válido")
    }
      if (is.na(start) | is.na(end)) {
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


     teste = db_maddison %>%
                    dplyr::filter(countrycode %in% c(input_country$country)) %>%
                    dplyr::filter(year >= start &
                                    year <= end)

  }



}



