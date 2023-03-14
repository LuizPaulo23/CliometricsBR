# Testes pkg {CliometricsBR} versão 0.1.1
# Testando em ambiente limpo
# Teste usando POSIT CLOUD
# install.packages("devtools") // devtools devidamente instalado
devtools::install_github("LuizPaulo23/CliometricsBR", dependencies = T)
library(CliometricsBR)
# Testando o return das funções

CliometricsBR::get_metadadosIPEA()
CliometricsBR::get_seriesIPEA()
CliometricsBR::get_slavery()
CliometricsBR::get.DBMaddison()
CliometricsBR::load_db()

# Testando a função de metadados - IPEA
# API -> GET
# Problema de conexão: Connection timed out after 10001 milliseconds
all_metadados = CliometricsBR::get_metadadosIPEA(codes = "all")

select_metadados = CliometricsBR::get_metadadosIPEA(codes = "HIST_ACOV")

# Testando a função de series históricas do IPEA
all_series = CliometricsBR::get_seriesIPEA(codes = "all")
# ATENÇÃO: NÃO HÁ COMO PUXAR TODAS AS SÉRIES DE FORMA SIMULTÂNEA
# log: como esperado
# Problema de conexão: Connection timed out after 10001 milliseconds
select_series = CliometricsBR::get_seriesIPEA(codes = "HIST_ACOV")

series_select_multi = CliometricsBR::get_seriesIPEA(codes = c("HIST_ACOV",
                                                             "HIST_ACUCARQ",
                                                              "HIST_ACUCARV"))

# ------------------------------------------------------------------
# Testando CliometricsBR::get_slavery()

all_slaverry = CliometricsBR::get_slavery(region = "all")

select_slavery = CliometricsBR::get_slavery(region = "Bahia")

select_mult_slavery = CliometricsBR::get_slavery(region = c("Bahia",
                                                            "Total"))

bug_slavery = CliometricsBR::get_slavery(region = c("Bahia",
                                                    "sadasdf"))

bug_slavery = CliometricsBR::get_slavery(region = "sadfd")

# Log: okay - get_slavery

# Testando CliometricsBR::get.DBMaddison()

all_maddison = CliometricsBR::get.DBMaddison(country = "all")

all_maddison = CliometricsBR::get.DBMaddison(country = "all",
                                             start = 1800,
                                             end = 1973)

select_maddison = CliometricsBR::get.DBMaddison(country = "BRA",
                                                start = 1930,
                                                end = 1964)

select_mult_maddison = CliometricsBR::get.DBMaddison(country = c("BRA","ARG"),
                                                     start = 1930,
                                                     end = 1964)


bug_maddison = CliometricsBR::get.DBMaddison(country = c("BRA","ARG", "dfdf"),
                                             start = 1930,
                                             end = 194)

bug_time_maddison = CliometricsBR::get.DBMaddison(country = "BRA",
                                                  start = -10,
                                                  end = 5000)

# BUG: Corrigir start e end
# Colocar um min e max para os inputs de datas
