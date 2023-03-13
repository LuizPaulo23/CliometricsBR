<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="CliometricsBR_0"></a>{CliometricsBR}</h1>
<p class="has-line-data" data-line-start="1" data-line-end="2"><a href=""><img src="https://img.shields.io/badge/vers%C3%A3o-0.1.0-yellow.svg" alt="versão"></a><a href=""><img src="https://img.shields.io/badge/build-sucesso-green.svg" alt="build"></a></p>
<h5 class="code-line" data-line-start=2 data-line-end=3 ><a id="Pacote_para_Histria_Econmica_quantitativa_2"></a>Pacote para História Econômica quantitativa</h5>
<h1 class="code-line" data-line-start=4 data-line-end=5 ><a id="_Background_4"></a>📍 Background</h1>
<p class="has-line-data" data-line-start="5" data-line-end="6">O pacote {CliometricsBR} tem como objetivo disponibilizar uma coleção de dados socioeconômicos do Brasil, compilando dados desde o período do Brasil Império até o período Republicano. Adicionalmente, inclui dados sobre a escravidão disponíveis de 1800 até meados da década de 1850 (quando a Lei Eusébio de Queiroz pôs fim ao tráfico transatlântico de escravos).  O {CliometricsBR} foi idealizado com o objetivo de otimizar e, até mesmo, popularizar a linha de pesquisa cliométrica em <em>terras brasilis</em>. O pacote está sendo disponibilizado em sua segunda versão. Forks e/ou contribuições são bem-vindas. Caso queira contribuir para o projeto, leia a secção <strong>🫂 Como contribuir</strong>.</p>
<h3 class="code-line" data-line-start=7 data-line-end=8 ><a id="_Tecnologias_utilizadas_7"></a>🛠 Tecnologias utilizadas</h3>
<p class="has-line-data" data-line-start="9" data-line-end="10">As seguintes ferramentas foram usadas na construção do projeto:</p>
<ul>
<li class="has-line-data" data-line-start="11" data-line-end="12"><a href="https://cran.r-project.org/">Linguagem R</a>;</li>
<li class="has-line-data" data-line-start="12" data-line-end="13"><a href="https://www.sql.org/">SQL</a>;</li>
<li class="has-line-data" data-line-start="13" data-line-end="14"><a href="https://www.sqlite.org/index.html">SQLite</a>;</li>
<li class="has-line-data" data-line-start="14" data-line-end="15"><a href="https://rmarkdown.rstudio.com/">RMarkdown</a>;</li>
<li class="has-line-data" data-line-start="15" data-line-end="16"><a href="https://en.wikipedia.org/wiki/Web_scraping">Web Scraping</a>;</li>
<li class="has-line-data" data-line-start="16" data-line-end="18"><a href="https://dillinger.io/">Dillinger</a>.</li>
</ul>
<h1 class="code-line" data-line-start=18 data-line-end=19 ><a id="_Sries_Disponveis_18"></a>📈 Séries Disponíveis</h1>
<p class="has-line-data" data-line-start="20" data-line-end="21">Em sua segunda versão, o {CliometricsBR} conta com os seguintes dados:</p>
<ul>
<li class="has-line-data" data-line-start="22" data-line-end="23">Dados históricos do IPEAdata;</li>
<li class="has-line-data" data-line-start="23" data-line-end="24">Dados sobre escravidão do “Voyages: The Trans-Atlantic Slave Trade Database”;</li>
<li class="has-line-data" data-line-start="24" data-line-end="26">Maddison Project Database 2020;</li>
</ul>
<p class="has-line-data" data-line-start="26" data-line-end="27">Em primeiro, o pacote conta com 538 séries dos mais variados setores do banco de dados do Instituto de Pesquisa Econômica Aplicada (IPEA) – as quais foram extraidas via API. Por sua vez, os dados sobre escravidão – de 1800 a meados de 1850 – são do Voyages Slave. Por fim, estão disponíveis os dados do Maddison Project Database 2020:  PIB per capita real (U$ 2011) e população estimada para mais de 169 países ao longo da história. Observe que esse é o único conjunto de dados do {CliometricsBR} em formato de painel, isto é, um cross-section com centenas de países ao longo de uma série temporal – esses dados foram obtidos via Web Scraping. Para mais informações sobre a metodologia de estimação/retropolação, consultar:</p>
<ul>
<li class="has-line-data" data-line-start="28" data-line-end="29"><a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020">Banco de Dados do Projeto Maddison 2020</a></li>
<li class="has-line-data" data-line-start="29" data-line-end="31"><a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/publications/wp15.pdf">A new 2020 update</a></li>
</ul>
<h2 class="code-line" data-line-start=31 data-line-end=32 ><a id="__Installation_CliometricsBR_31"></a>👩‍💻 🧑‍💻 Installation {CliometricsBR}</h2>
<pre><code class="has-line-data" data-line-start="34" data-line-end="37" class="language-sh"><span class="hljs-comment"># install.packages("devtools") // devtools devidamente instalado </span>
devtools::install_github(<span class="hljs-string">"LuizPaulo23/CliometricsBR"</span>, dependencies = T)
</code></pre>
<h1 class="code-line" data-line-start=38 data-line-end=39 ><a id="Utilizando_o_CliometricsBR_38"></a>🏄🏽‍♀️Utilizando o {CliometricsBR}</h1>
<p class="has-line-data" data-line-start="40" data-line-end="41">Não esqueça de  :: após o nome do pacote nas funções. Dito isso, para importar, por exemplo, todos os dados disponíveis no Project Maddison:</p>
<pre><code class="has-line-data" data-line-start="44" data-line-end="51" class="language-sh"><span class="hljs-comment"># Puxando todos os dados do Project Maddison de 1800 a 1973</span>


all_maddison = CliometricsBR::get.DBMaddison(country = <span class="hljs-string">"all"</span>,
                                            start = <span class="hljs-number">1800</span>,
                                             end = <span class="hljs-number">1973</span>)

</code></pre>
<p class="has-line-data" data-line-start="52" data-line-end="53">Importando apenas os dados do Brasil e da Argentina, por exemplo:</p>
<pre><code class="has-line-data" data-line-start="55" data-line-end="61" class="language-sh"><span class="hljs-comment"># Brasil e Argetina de 1930 a 1964  </span>
maddison = CliometricsBR::get.DBMaddison(country = c(<span class="hljs-string">"BRA"</span>,<span class="hljs-string">"ARG"</span>),
                                               start = <span class="hljs-number">1930</span>,
                                                end = <span class="hljs-number">1964</span>)

</code></pre>
<p class="has-line-data" data-line-start="62" data-line-end="63">Para o caso dos dados do IPEA, recomeda-se antes a importação dos metadados das séries caso não saiba o código da série deseja. Observe que no parâmetro <em>codes</em> pode ser passado como input “all” caso queira de fato importar todos os metadados ou selecionar apenas a série desejada de acordo com o seu código:</p>
<pre><code class="has-line-data" data-line-start="65" data-line-end="69" class="language-sh"><span class="hljs-comment"># Puxando todos os metadados </span>

all_metadados = CliometricsBR::get_metadadosIPEA(codes = <span class="hljs-string">"all"</span>)
</code></pre>
<p class="has-line-data" data-line-start="70" data-line-end="71">Posteriormente, é só importar as séries desejadas:</p>
<pre><code class="has-line-data" data-line-start="73" data-line-end="77" class="language-sh">ipea_series = CliometricsBR::get_seriesIPEA(codes = c(<span class="hljs-string">"HIST_ACOV"</span>,
                                                <span class="hljs-string">"HIST_ACUCARQ"</span>,
                                                 <span class="hljs-string">"HIST_ACUCARV"</span>))
</code></pre>
<p class="has-line-data" data-line-start="78" data-line-end="79">🗣 <em>O restante das funções disponíveis no pacote {CliometricsBR} seguem o mesmo padrão de importação. Qualquer dúvida sobre a utilização, pressione F1 no nome da função e encontrará a documentação no ambiente RStudio (ou na sua IDE de preferência)</em></p>
<h1 class="code-line" data-line-start=80 data-line-end=81 ><a id="_Dependncias_80"></a>🗃 Dependências</h1>
<p class="has-line-data" data-line-start="82" data-line-end="83">Caso ocorra algum problema na instalação ou até mesmo após a instalação derivado de dependências de outros pacotes, o {CliometricsBr} usou as dependências/pacotes nas versões:</p>
<table class="table table-striped table-bordered">
<thead>
<tr>
<th>Pacote</th>
<th>Versão</th>
</tr>
</thead>
<tbody>
<tr>
<td>tidyverse</td>
<td>1.3.1</td>
</tr>
<tr>
<td>rvest</td>
<td>1.0.3</td>
</tr>
<tr>
<td>httr</td>
<td>1.4.4</td>
</tr>
<tr>
<td>tibble</td>
<td>3.1.8</td>
</tr>
<tr>
<td>dplyr</td>
<td>1.1.0</td>
</tr>
<tr>
<td>janitor</td>
<td>2.2.0</td>
</tr>
<tr>
<td>readxl</td>
<td>1.4.1</td>
</tr>
<tr>
<td>stats</td>
<td>4.2.2</td>
</tr>
<tr>
<td>stringr</td>
<td>1.5.0</td>
</tr>
<tr>
<td>RSQLite</td>
<td>2.2.18</td>
</tr>
</tbody>
</table>
<h1 class="code-line" data-line-start=98 data-line-end=99 ><a id="_Fonte_dos_dados_98"></a>👥 Fonte dos dados</h1>
<p class="has-line-data" data-line-start="100" data-line-end="101">As fontes detalhadas dos dados utilizados no pacote {CliometricsBR} podem ser visualizadas na pasta {Fontes} do projeto no <a href="https://github.com/LuizPaulo23/CliometricsBR">Github</a>. Em linhas gerais são:</p>
<ul>
<li class="has-line-data" data-line-start="102" data-line-end="103">IPEAdata ~&gt; <a href="http://www.ipeadata.gov.br/Default.aspx">IPEAdata</a></li>
<li class="has-line-data" data-line-start="103" data-line-end="104">The Trans-Atlantic Slave Trade Database ~&gt; <a href="https://www.slavevoyages.org/">Slave Voyages</a></li>
<li class="has-line-data" data-line-start="104" data-line-end="105">Maddison Project Database 2020 ~&gt; <a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020">Projecto Maddison</a></li>
</ul>
<p class="has-line-data" data-line-start="107" data-line-end="108">Em versões futuras, espera-se migrar as fontes detalhadas para a documentação fora do README ou de pastas secundárias, assim, facilitando a usabilidade  do pacote!</p>
<h1 class="code-line" data-line-start=109 data-line-end=110 ><a id="_Como_contribuir_109"></a>🫂 Como contribuir</h1>
<ul>
<li class="has-line-data" data-line-start="111" data-line-end="112">Faça um fork do repositório;</li>
<li class="has-line-data" data-line-start="112" data-line-end="113">Entre no sua página do GitHub e faça um clone do seu fork;</li>
<li class="has-line-data" data-line-start="113" data-line-end="114">Crie uma branch com o nome da sua feature: git chechout -b feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="114" data-line-end="115">Faça as alterações necessárias no código ou na documentação;</li>
<li class="has-line-data" data-line-start="115" data-line-end="116">Faça um push para a sua branch: git push origin feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="116" data-line-end="117">Agora é só abrir um pull request no repositório que você fez o fork e assim que acontecer o merge sua Issue será fechada e suas alterações irão fazer parte do projeto;</li>
<li class="has-line-data" data-line-start="117" data-line-end="118">Depois que o merge da sua pull request for feito, você pode deletar a sua branch.</li>
<li class="has-line-data" data-line-start="118" data-line-end="119"><strong>Obrigado por contribuir!</strong></li>
</ul>
<h1 class="code-line" data-line-start=121 data-line-end=122 ><a id="_Autor_121"></a>🤠 Autor</h1>
<p class="has-line-data" data-line-start="123" data-line-end="124"><a href="mailto:luizpauloueg@gmail.com"><img src="https://img.shields.io/badge/-luizpauloueg@gmail.com.com-c14438?style=flat-square&amp;logo=Gmail&amp;logoColor=white&amp;link=mailto:tgmarinho@gmail.com" alt="Gmail Badge"></a></p>
