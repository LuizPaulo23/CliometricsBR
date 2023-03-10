% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_slavery.R
\name{get_slavery}
\alias{get_slavery}
\title{Dados - Escravidão}
\usage{
get_slavery(region = as.character())
}
\arguments{
\item{region}{Representa o nome da região desejada. O parâmetro aceita mais de um nome por vez ou, até mesmo, o nome de todas as regiões simultaneamente passando no parâmetro region = \code{"all"};}
}
\value{
Retorna um data.frame com os series selecionadas
}
\description{
As séries disponíveis na função \code{get_slavery} são as seguintes:

\code{Bahia};
\code{Amazonia};
\code{Pernambuco};
\code{South_east};
\code{Unspecified} e
\code{Total}.


As quais representam o número estimado de escravos importados para cada região do Brasil e o Total. Os dados estimados são da The SlaveVoyages. Para mais detalhes consultar a documentação no Github.
}
\examples{
\dontrun{

# Todas as regiões

 region_slave_all = CliometricsBR::get_slavery(region = "all")


region_slave_select = CliometricsBR::get_slavery(region = c("Bahia", "Total"))



}

}
\author{
Luiz Paulo Tavares Gonçalves
}
