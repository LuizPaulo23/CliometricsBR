#' @title Dados - Escravidão
#'
#' @name get_slavery
#'
#' @description  As séries disponíveis na função \code{get_slavery} são as seguintes:
#'
#' \code{Bahia};
#' \code{Amazonia};
#' \code{Pernambuco};
#' \code{South_east};
#' \code{Unspecified} e
#' \code{Total}.
#'
#'
#' As quais representam o número estimado de escravos importados para cada região do Brasil e o Total. Os dados estimados são da The SlaveVoyages. Para mais detalhes consultar a documentação no Github.
#'
#' @param region Representa o nome da região desejada. O parâmetro aceita mais de um nome por vez ou, até mesmo, o nome de todas as regiões simultaneamente passando no parâmetro region = \code{"all"};
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#' @return Retorna um data.frame com os series selecionadas
#'
#' @examples
#' \dontrun{
#'
#' # Todas as regiões
#'
#'  region_slave_all = CliometricsBR::get_slavery(region = "all")
#'
# # Regiões selecionadas
#'
#' region_slave_select = CliometricsBR::get_slavery(region = c("Bahia", "Total"))
#'
#'
#'
#' }
#'
#' @export

get_slavery <- function(region = as.character()){

# Validação de parâmetro

  if(length(region) == 0){

    stop("ERRO: parâmentro region não encontrado")

  }

      slavery = CliometricsBR::load_db() %>%
                janitor::clean_names() %>%
                dplyr::select(starts_with("slave"),
                              starts_with("data")) %>%
                dplyr::relocate(data, .after = NULL) %>%
                dplyr::rename_all(~str_to_title(sub("^slave_", "", .))) %>%
                # data max até 1852
                stats::na.omit()

input_region = tibble::tibble(region)

      if(all(region == "all")){
        return(slavery)
      } else {

        if(any(!(input_region$region %in%  colnames(slavery)))){

          stop("ERRO: região selecionada inválida")

        }

                       region_slavery = slavery %>%
                                        dplyr::select(Data, c(input_region$region))



            return(region_slavery)

     }



}




