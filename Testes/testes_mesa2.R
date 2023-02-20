# Testando a instalação, revisando documentação e bugs ///

rm(list = ls())

# Testando em ambiente limpo ----------------------------
#/ Teste em R.4.2.2 /CLOUD/PROJECT
# install.packages("devtools") // devtools devidamente instalado
# devtools::install_github("LuizPaulo23/CliometricsBR", dependencies = T)

library(CliometricsBR)
db = CliometricsBR::load_db()

#\\INSTALADO COM SUCESSO
# REVISANDO DOCUMENTAÇÃO

CliometricsBR::load_db() # okay
CliometricsBR::get_prices() # Corrigir título
CliometricsBR::get_slavery() # bug
CliometricsBR::get.DBMaddison() # okay
CliometricsBR::get_exports() # okay

# ENCONTRADO BUG NA FUNCTION GET PRICES!!!!!!!!!!!!!!!!!!!!!
# ACEITANDO PARÂMETROS VAZIOS
# Função get_slavery também

CliometricsBR::get_prices() # OKAY
CliometricsBR::get_slavery() # OKAY

# REPLICAR TESTE DE MESA EM AMBIENTE LIMPO ------------------
# Puxando todas as séries de exportação -----------------------
# test =  CliometricsBR::load_db()

CliometricsBR::get_exports(series = "all",
                           start = 1821, end = 1900)

exports_all = CliometricsBR::get_exports(series = "all",
                                         start = 1821, end = 1900)

# Importando produtos selecionados = Sugar, Coffee e Cotton - de 1821 a 1855 -----------------------

exports_select = CliometricsBR::get_exports(series = c("Sugar",
                                                       "Coffee", "Cotton"),
                                            start = 1821,  end = 1855)

# Testando as verificações de datas -------------------------------------------------------------

CliometricsBR::get_exports(series = "Sugar")

CliometricsBR::get_exports(series = "Sugar",
                           start = 1800)

# Com apenas um produto selecionado ------------------------------------------------------

export_sugar = CliometricsBR::get_exports(series = "Sugar",
                                          start = 1821,  end = 1855)

CliometricsBR::get_exports(start = 1821,  end = 1855)

# Tentar quebrar a função passando bug em series ------------------------------------------

CliometricsBR::get_exports(series = "zwqwqw", start = 1821,  end = 1855)

# Retorna: ! Can't subset columns that don't exist.
# ✖ Column `zwqwqw` doesn't exist.

# Bug /// Correção -------------------------------------------------------------------------------------

CliometricsBR::get_exports(series = "sadfsdfe", start = 1821,  end = 1855)

# Maddison Project Database 2020 -------------------------------------------------------------------

CliometricsBR::get.DBMaddison(country = "all",
                              start = 1800, end = 1900)

teste_mesa_all = get.DBMaddison(country = "all",
                                start = 1800, end = 1900)

teste_mesa_filter = CliometricsBR::get.DBMaddison(country = c("USA", "BRA", "ARG"),
                                                  start = 1800, end = 1900)

teste_mesa_all = CliometricsBR::get.DBMaddison(country = "BRA")

# Tentar quebrar a função passando bug em series ------------------------------------------

teste_mesa_filter = CliometricsBR::get.DBMaddison(country = c("USAfdsf", "BRAwww", "ARG"),
                                                  start = 1800, end = 1900)
# Se passar dois nomes errados, retorna apenas o correto -- !Corrigir!
# Bug /// Correção -------------------------------------------------------------------------------------

teste_mesa_filter = CliometricsBR::get.DBMaddison(country = c("USAfdsf", "BRAwww", "AsssRG"),
                                                  start = 1800, end = 1900)


bug = get.DBMaddison(start = 1800, end = 1900)

# Tudo errado, retorna vazio
# !Corrigir - lembrar que está formato de painel

# Slave --------------------------------------------------------------------------------------

# Todas as regiões

CliometricsBR::get_slavery(region = "all")
region_slave_all = CliometricsBR::get_slavery(region = "all")

# Regiões selecionadas

region_slave_select = CliometricsBR::get_slavery(region = c("Bahia", "Total"))

# Apenas um região

region_slave = CliometricsBR::get_slavery(region = "Total")
region_slave = CliometricsBR::get_slavery()

# Passando nome errado

region_slaveBUG = CliometricsBR::get_slavery(region = c("Bahia", "vvvl"))

# Teste Prices ---------------------------------------------------------------------------

CliometricsBR::get_prices(units = "all")

CliometricsBR::get_prices()

teste_prices_all = CliometricsBR::get_prices(units = "all")

teste_prices_select = CliometricsBR::get_prices(units = "Kilo")

teste_prices= CliometricsBR::get_prices(units = c("Kilo", "Bag"))

teste_pricesBUG = CliometricsBR::get_prices(units = c("zzzzzzzxs", "Bag"))

# Função get_censo1872 ficará para a próxima versão!!!

# Função get_censo1872
#install.packages("RSQLite")
#library(RSQLite)
# CliometricsBR::get_censo1872()


