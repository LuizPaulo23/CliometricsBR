# Dependência de reprodutividade
# Packages/bibliotecas usadas

# Função para instalação/liberação ------------------------------------------------------


    library_packages <- function(pkg){
                        new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
                        if (length(new.pkg))
                          install.packages(new.pkg, dependencies = T)
                          sapply(pkg, require, character.only = T)
 }


packages <- c("tidyverse",
               "tibble",
               "rvest",
               "dplyr",
               "janitor",
               "httr",
               "readxl")

# Instalando/Liberando

  if(!is.null(packages)){
      library_packages(packages)
    } else {

      print("ERRO: vetor nulo")

  }








