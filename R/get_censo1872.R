#' @title Dados - Recenseamento de 1872
#' @name get_Censo1872
#'
#' @description
#'
#' @author Luiz Paulo Tavares Gonçalves
#'
#' @details
#'
#' @return
#'
#' @examples
#' \dontrun{
#'
#'
#' }
#'
#'
#' @export

# sudo apt update
# sudo apt install r-cran-rsqlite

get_censo1872 <- function(){

con <- DBI::dbConnect(RSQLite::SQLite(),
                      dbname = "DBSQL")
censo <- DBI::dbGetQuery(con, "SELECT * FROM CENSO1872")
censo = censo |>
        janitor::clean_names()

return(censo)

}






