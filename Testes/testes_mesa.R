# // Testes  de mesa

rm(list = ls())
graphics.off()

# Packages/bibliotecas

library(CliometricsBR)
library(tidyverse)
library(rvest)

# Puxando todas as séries de exportação -------------------------------------------------------
# CliometricsBR::load_db()

exports_all = CliometricsBR::get_exports(series = "all",
                                         start = 1821, end = 1900) %>% glimpse()

# Importando produtos selecionados = Sugar, Coffee e Cotton - de 1821 a 1855 -----------------------

exports_select = CliometricsBR::get_exports(series = c("Sugar",
                                          "Coffee", "Cotton"),
                                          start = 1821,  end = 1855) %>% glimpse()

# Testando as verificações de datas -------------------------------------------------------------

CliometricsBR::get_exports(series = "Sugar")

CliometricsBR::get_exports(series = "Sugar",
                           start = 1800)

# Com apenas um produto selecionado ------------------------------------------------------

export_sugar = CliometricsBR::get_exports(series = "Sugar", start = 1821,  end = 1855) %>% glimpse()

# Tentar quebrar a função passando bug em series ------------------------------------------

CliometricsBR::get_exports(series = "zwqwqw", start = 1821,  end = 1855)

# Retorna: ! Can't subset columns that don't exist.
# ✖ Column `zwqwqw` doesn't exist.

# Bug /// Correção -------------------------------------------------------------------------------------

CliometricsBR::get_exports(series = "sadfsdfe", start = 1821,  end = 1855)


# Slave

# Todas as regiões
region_slave_all = CliometricsBR::get_slavery(region = "all") %>% dplyr::glimpse()

# Regiões selecionadas

region_slave_select = CliometricsBR::get_slavery(region = c("Bahia", "Total"))


teste_mesa_all = get.DBMaddison(country = "all",
                                start = 1800, end = 1900)

teste_mesa_filter = get.DBMaddison(country = c("USA", "BRA", "ARG"),
                                   start = 1800, end = 1900)


teste_mesa_all = get.DBMaddison(country = "BRA",
                                start = 1800,
                                end = 1900)




