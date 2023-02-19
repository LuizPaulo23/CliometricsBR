#' @title Dados - Cotações/Preço
#'
#' @name get_prices
#'
#' @description A função retorna o preço médio do café - de 1808 a 1900 (ou seja, pegando o período anterior ao Brasil Império até a República)
#'
#' Estão disponíveis na função o preço em quilo ou em sacas de 50kg
#'
#' @param units representa as unidades disponíveis: Bag (em sacas de 50kg) ou em Kilo (quilo)
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#' A unidade monetária das sacas de café estão em Franco francês, por sua vez, o quilo está em Réis.
#'
#'
#' @return Retorna um data.frame com as unidades selecionadas
#'
#' @examples
#' \dontrun{
#'
#'   teste_prices_all = CliometricsBR::get_prices(units = "all")
#'
#'   teste_prices_select = CliometricsBR::get_prices(units = "Kilo")
#'
#'   teste_prices= CliometricsBR::get_prices(units = c("Kilo", "Bag"))
#'
#' }
#'
#' @export

get_prices = function(units = as.character()){


  if(length(units) == 0){

    stop("ERRO: parâmentro units não encontrado")

  }

  prices <- CliometricsBR::load_db() %>%
            dplyr::filter(Data >= 1808 &
                            Data <= 1900)

  unidade = tibble::tibble(units)

  if(all(units == "all")){

    prices <- prices %>%
              dplyr::select(Data,
                            Kilo,
                            Bag)

    return(prices)


  } else{

    if(any(!(unidade$units %in% colnames(prices[,2:3])))){

      stop("ERRO: unidade selecionada inválida")

    }

    prices <-prices %>%
             dplyr::select(c(Data, unidade$units))

    return(prices)

  }


}





