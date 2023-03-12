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
               "readxl",
               "stats",
               "stringr",
               "RSQLite")

# Instalando/Liberando

library_packages(packages)








