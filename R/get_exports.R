#' @title Dados - Exportações
#'
#' @name get_exports
#'
#' @description  As séries disponíveis na função \code{get_exports} são as seguintes:
#'
#' \code{Yerba_mate};
#' \code{Sugar};
#' \code{Cotton};
#' \code{Cocoa};
#' \code{Tobacco};
#' \code{Coffee} e
#' \code{Fob}.
#'
#' Respectivamente, exportações de: Erva-mate, Açúcar, Algodão, Cacau, Tabaco, Café e exportações em FOB (Free on Board ou Livre a Bordo do Navio).
#'
#' @param series Representa o nome da série desejada. O parâmetro aceita mais de um nome por vez ou, até mesmo, o nome de todas as séries simultaneamente passando no parâmetro series = \code{"all"};
#'
#' @param start Representa o ano de início da série que deseja
#'
#' @param end Por sua vez, \code{end}, representa o último ano da série que deseja, isto é, o fim do período desejado.
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
#' exports_all = CliometricsBR::get_exports(series = "all",
#'                                         start = 1821, end = 1900)
#'
#' # Importando produtos selecionados = Sugar, Coffee e Cotton
#' # De 1821 a 1855
#'
#' exports_select = CliometricsBR::get_exports(series = c("Sugar", "Coffee", "Cotton"),
#'                                            start = 1821, end = 1855)
#'
#' }
#'
#' @export

get_exports <- function(series = as.character(),
                        start = as.numeric(),
                        end = as.numeric()){

 # Validando parametro series

        if(length(series) == 0){

          stop("ERRO: parâmetro series não encontrado")

        }

# Travando verificação de data

      if (length(start) == 0 | length(end) == 0) {
        stop("ERRO: Parâmetro start e/ou end não encontrado! ",
  "Por favor, selecione um período start-end válido")
      }
        if (is.na(start) | is.na(end)) {
          stop("ERRO: NA's nos parâmetros start e/ou end")
  }


# Iniciando a limpeza e organização

    exports = CliometricsBR::load_db() %>%
              janitor::clean_names() %>%
              dplyr::select(starts_with("export"),
                            starts_with("data")) %>%
              dplyr::relocate(data, .after = NULL) %>%
              # Exportações necessariamente incia em 1821
              # Anexado em documentação
              dplyr::filter(data >= 1821) %>%
              dplyr::rename_all(~str_to_title(sub("^export_", "", .)))%>%
             # Não aceita data menor ou maior que o disponível em DB
              dplyr::filter(Data >= start &
                            Data <= end)

    if(all(series == "all")){
      return(exports)
    } else {


          if(any(!(series %in% colnames(exports)))) {

        stop("ERRO: série selecionada inválida")
    }

          prod_select = tibble::tibble(series)
          prod_exports = exports %>%
                         dplyr::select(Data, c(prod_select$series))


           return(prod_exports)

       }

  }


