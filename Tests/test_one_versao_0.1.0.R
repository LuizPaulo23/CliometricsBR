# // Testes  de mesa

rm(list = ls())
graphics.off()
library(CliometricsBR)

# Dependências //Packages

library(tidyverse)
library(rvest)
library(httr)
library(tibble)
library(dplyr)

# Puxando todas as séries de exportação -------------------------------------------------------
# test =  CliometricsBR::load_db()

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

# Maddison Project Database 2020 -------------------------------------------------------------------

teste_mesa_all = get.DBMaddison(country = "all",
                                start = 1800, end = 1900)

teste_mesa_filter = get.DBMaddison(country = c("USA", "BRA", "ARG"),
                                   start = 1800, end = 1900)

teste_mesa_all = get.DBMaddison(country = "BRA")

# Tentar quebrar a função passando bug em series ------------------------------------------

teste_mesa_filter = get.DBMaddison(country = c("USAfdsf", "BRAwww", "ARG"),
                                   start = 1800, end = 1900)
# Se passar dois nomes errados, retorna apenas o correto -- !Corrigir!
# Bug /// Correção -------------------------------------------------------------------------------------

teste_mesa_filter = get.DBMaddison(country = c("USAfdsf", "BRAwww", "AsssRG"),
                                   start = 1800, end = 1900)

# Tudo errado, retorna vazio
# !Corrigir - lembrar que está formato de painel

# Slave --------------------------------------------------------------------------------------

# Todas as regiões
region_slave_all = CliometricsBR::get_slavery(region = "all") %>% dplyr::glimpse()

# Regiões selecionadas

region_slave_select = CliometricsBR::get_slavery(region = c("Bahia", "Total"))

# Apenas um região

region_slave = CliometricsBR::get_slavery(region = "Total")

# Passando nome errado

region_slaveBUG = CliometricsBR::get_slavery(region = c("Bahia", "vvvl"))

# Corrigir Bug

# Tentar instalar o pacote
#rm(list = ls())
#graphics.off()
# install.packages("devtools") // devtools devidamente instalado
#devtools::install_github("LuizPaulo23/CliometricsBR", ref = "main")
#library(CliometricsBR)

# Oganizando DB do Cliometrics

#data = readxl::read_excel("DB_pkg.xls") %>% select(-RJ) %>%
#              saveRDS("data.rds")

# Teste Prices ---------------------------------------------------------------------------

teste_prices_all = CliometricsBR::get_prices(units = "all")

teste_prices_select = CliometricsBR::get_prices(units = "Kilo")

teste_prices= CliometricsBR::get_prices(units = c("Kilo", "Bag"))

teste_pricesBUG = CliometricsBR::get_prices(units = c("zzzzzzzxs", "Bag"))


