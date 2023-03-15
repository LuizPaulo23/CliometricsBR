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
#' @return Retorna um data.frame com as series selecionadas
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

get_slavery <- function(region = as.character(),
                        start = as.numeric(),
                        end = as.numeric()){

# Validação de parâmetro region

  if(is.null(region) | length(region) == 0){

    stop("ERRO: parâmentro region não encontrado")

  }


  Db_cliometrics <- base::readRDS(system.file("data/data.rds",
                                              package = "CliometricsBR"))

      slavery = Db_cliometrics %>%
                janitor::clean_names() %>%
                dplyr::select(starts_with("slave"),
                              starts_with("data")) %>%
                dplyr::relocate(data, .after = NULL) %>%
                dplyr::rename_all(~str_to_title(sub("^slave_", "", .))) %>%
                # data max até 1852
                stats::na.omit()

input_region = tibble::tibble(region)

# Validação dos inputs start e end

    if(length(start) == 0 | length(end) == 0){
      if(start < min(slavery$Data) | end > max(slavery$Data)){
        stop("ERRO: parâmetros start e end inconsistentes")
      }

  }


# Condicional

      if(all(region == "all")){

        slavery <- slavery %>%
                   dplyr::filter(start >= Data &
                                   end <= Data)

        return(slavery)
      } else if(any(!(input_region$region %in%  colnames(slavery)))){

          stop("ERRO: região selecionada inválida")

      } else{

        region_slavery = slavery %>%
                          dplyr::select(Data, c(input_region$region)) %>%
                          dplyr::filter(start >= Data &
                                          end <= Data)


        }


            return(region_slavery)

  }






