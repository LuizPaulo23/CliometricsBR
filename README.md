<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="CliometricsBR__Version_010_0"></a>{CliometricsBR} - Version: 0.1.0</h1>
<h5 class="code-line" data-line-start=1 data-line-end=2 ><a id="Pacote_para_Histria_Econmica_quantitativa_1"></a>Pacote para História Econômica quantitativa</h5>
<h1 class="code-line" data-line-start=3 data-line-end=4 ><a id="_Background_3"></a>📍 Background</h1>
<p class="has-line-data" data-line-start="4" data-line-end="5">O pacote {CliometricsBR} tem como objetivo disponibilizar uma coleção de dados socioeconômicos do Brasil, compilando dados desde o período do Brasil Império até o período Republicano. Adicionalmente, inclui dados sobre a escravidão disponíveis de 1800 até meados da década de 1850 (quando a Lei Eusébio de Queiroz pôs fim ao tráfico transatlântico de escravos).  O {CliometricsBR} foi idealizado com o objetivo de otimizar e, até mesmo, popularizar a linha de pesquisa cliométrica em <em>terras brasilis</em>. O pacote está sendo disponibilizado em sua primeira versão –  almejando em versões futuras ampliar a ideia para SQL e utilizar a API do IPEAdata. Assim, Forks e/ou contribuições são bem-vindas. Caso queira contribuir para o projeto, leia a secção <strong>🫂 Como contribuir</strong>.</p>
<h3 class="code-line" data-line-start=6 data-line-end=7 ><a id="_Tecnologias_utilizadas_6"></a>🛠 Tecnologias utilizadas</h3>
<p class="has-line-data" data-line-start="8" data-line-end="9">As seguintes ferramentas foram usadas na construção do projeto:</p>
<ul>
<li class="has-line-data" data-line-start="10" data-line-end="11"><a href="https://cran.r-project.org/">Linguagem R</a>;</li>
<li class="has-line-data" data-line-start="11" data-line-end="12"><a href="https://rmarkdown.rstudio.com/">RMarkdown</a>;</li>
<li class="has-line-data" data-line-start="12" data-line-end="13"><a href="https://en.wikipedia.org/wiki/Web_scraping">Web Scraping</a>;</li>
<li class="has-line-data" data-line-start="13" data-line-end="15"><a href="https://dillinger.io/">Dillinger</a>.</li>
</ul>
<h1 class="code-line" data-line-start=15 data-line-end=16 ><a id="_Sries_Disponveis_15"></a>📈 Séries Disponíveis</h1>
<p class="has-line-data" data-line-start="17" data-line-end="18">Em sua primeira versão, o {CliometricsBR} vai contar com os seguintes dados:</p>
<ul>
<li class="has-line-data" data-line-start="19" data-line-end="20">Exportação;</li>
<li class="has-line-data" data-line-start="20" data-line-end="21">Escravidão;</li>
<li class="has-line-data" data-line-start="21" data-line-end="22">Maddison Project Database 2020;</li>
<li class="has-line-data" data-line-start="22" data-line-end="24">Cotação/Preço.</li>
</ul>
<p class="has-line-data" data-line-start="24" data-line-end="25">As séries de <strong>exportações</strong> disponíveis:</p>
<ul>
<li class="has-line-data" data-line-start="26" data-line-end="27">Exportação total em libra esterlina - FOB {Fob} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="27" data-line-end="28">Exportação de café em sacas de 60kg {Cooffe} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="28" data-line-end="29">Exportação de açúcar em toneladas {Sugar} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="29" data-line-end="30">Exportação de algodão em toneladas {Cotton} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="30" data-line-end="31">Exportação de cacau em toneladas {Cocoa} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="31" data-line-end="32">Exportação de tabaco em toneladas {Tobacco} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="32" data-line-end="34">Exportação de erva-mate em toneladas {Yerba_mate} - (1831 a 1900).</li>
</ul>
<p class="has-line-data" data-line-start="34" data-line-end="35">As séries de <strong>Escravidão</strong> disponíveis, por sua vez, representam o número estimado de escravos desembarcados em determinadas regiões (e o total representando o somatório de todas as regiões). As regiões disponíveis são:</p>
<ul>
<li class="has-line-data" data-line-start="36" data-line-end="37">Amazonia (1800-1851);</li>
<li class="has-line-data" data-line-start="37" data-line-end="38">Bahia (1800-1851);</li>
<li class="has-line-data" data-line-start="38" data-line-end="39">Pernambuco (1800-1851);</li>
<li class="has-line-data" data-line-start="39" data-line-end="40">SouthEast (1800-1851);</li>
<li class="has-line-data" data-line-start="40" data-line-end="41">Unspecified (1800-1851);</li>
<li class="has-line-data" data-line-start="41" data-line-end="43">Total (1800-1851).</li>
</ul>
<p class="has-line-data" data-line-start="43" data-line-end="44">Em terceiro, representa os dados do Maddison Project Database 2020. No {CliometricsBR} conta com sua versão 2020 atualizada com os dados:</p>
<ul>
<li class="has-line-data" data-line-start="45" data-line-end="46">gdpcc</li>
<li class="has-line-data" data-line-start="46" data-line-end="48">population</li>
</ul>
<p class="has-line-data" data-line-start="48" data-line-end="49">Respectivamente, o PIB per capita real (U$ 2011) e população estimada para mais de 169 países ao longo da história. Para o caso do Brasil, a série história inicia em 1800. Observe que esse é o único conjunto de dados do {CliometricsBR} em formato de painel, isto é, um cross-section com centenas de países ao longo de uma série temporal – esses dados foram obtidos via Web Scraping. Para mais informações sobre a metodologia de estimação/retropolação, consultar:</p>
<ul>
<li class="has-line-data" data-line-start="50" data-line-end="51"><a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020">Banco de Dados do Projeto Maddison 2020</a></li>
<li class="has-line-data" data-line-start="51" data-line-end="53"><a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/publications/wp15.pdf">A new 2020 update</a></li>
</ul>
<p class="has-line-data" data-line-start="53" data-line-end="54">Por sua vez, os dados referente aos <strong>preços</strong> são subdividido em:</p>
<ul>
<li class="has-line-data" data-line-start="55" data-line-end="56">Bag (1808-1900);</li>
<li class="has-line-data" data-line-start="56" data-line-end="58">Kilo (1808-1900).</li>
</ul>
<p class="has-line-data" data-line-start="58" data-line-end="59">O quais representam o preço do café entre 1808 a 1900 em sacas de 50 kg (<strong>Bag</strong>) e em quilo (<strong>Kilo</strong>).</p>
<h2 class="code-line" data-line-start=60 data-line-end=61 ><a id="__Installation_CliometricsBR_60"></a>👩‍💻 🧑‍💻 Installation {CliometricsBR}</h2>
<pre><code class="has-line-data" data-line-start="63" data-line-end="69" class="language-sh">rm(list = ls())
graphics.off()

<span class="hljs-comment"># install.packages("devtools") // devtools devidamente instalado </span>
devtools::install_github(<span class="hljs-string">"LuizPaulo23/CliometricsBR"</span>, ref = <span class="hljs-string">"main"</span>)
</code></pre>
<h1 class="code-line" data-line-start=70 data-line-end=71 ><a id="Utilizando_o_CliometricsBR_70"></a>🏄🏽‍♀️Utilizando o {CliometricsBR}</h1>
<p class="has-line-data" data-line-start="72" data-line-end="73">Para importar todos os dados de exportações disponíveis no pacote:</p>
<pre><code class="has-line-data" data-line-start="76" data-line-end="80" class="language-sh"><span class="hljs-comment"># Puxando todas as séries de exportações </span>
exports_all = CliometricsBR::get_exports(series = <span class="hljs-string">"all"</span>, 
                                         start = <span class="hljs-number">1821</span>, end = <span class="hljs-number">1900</span>) 
</code></pre>
<p class="has-line-data" data-line-start="81" data-line-end="82">Importando apenas séries de exportação selecionadas:</p>
<pre><code class="has-line-data" data-line-start="84" data-line-end="89" class="language-sh"><span class="hljs-comment"># Importando produtos selecionados {Sugar, Coffee e Cotton}  </span>

exports_select = CliometricsBR::get_exports(series = c(<span class="hljs-string">"Sugar"</span>, 
<span class="hljs-string">"Coffee"</span>, <span class="hljs-string">"Cotton"</span>),  start = <span class="hljs-number">1821</span>,  end = <span class="hljs-number">1855</span>) 
</code></pre>
<p class="has-line-data" data-line-start="90" data-line-end="91">Importando dados do Project Maddison:</p>
<pre><code class="has-line-data" data-line-start="93" data-line-end="98" class="language-sh"><span class="hljs-comment"># Maddison Project Database 2020 - importando tudo desde 1700</span>

teste_mesa_all = get.DBMaddison(country = <span class="hljs-string">"all"</span>,
                                start = <span class="hljs-number">1700</span>, end = <span class="hljs-number">1900</span>)
</code></pre>
<p class="has-line-data" data-line-start="99" data-line-end="100">Importando apenas países selecionadas, por exemplo:</p>
<pre><code class="has-line-data" data-line-start="102" data-line-end="105" class="language-sh">teste_mesa_filter = get.DBMaddison(country = c(<span class="hljs-string">"USA"</span>, <span class="hljs-string">"BRA"</span>, <span class="hljs-string">"ARG"</span>),
                                   start = <span class="hljs-number">1800</span>, end = <span class="hljs-number">1900</span>)
</code></pre>
<p class="has-line-data" data-line-start="106" data-line-end="107">🗣 <em>O restante das funções disponíveis no pacote {CliometricsBR} seguem o mesmo padrão de importação. Qualquer dúvida sobre a utilização, pressione F1 no nome da função e encontrará a documentação no ambiente RStudio (ou na sua IDE de preferência)</em></p>
<h1 class="code-line" data-line-start=108 data-line-end=109 ><a id="_Como_contribuir_108"></a>🫂 Como contribuir</h1>
<ul>
<li class="has-line-data" data-line-start="110" data-line-end="111">Faça um fork do repositório;</li>
<li class="has-line-data" data-line-start="111" data-line-end="112">Entre no sua página do GitHub e faça um clone do seu fork;</li>
<li class="has-line-data" data-line-start="112" data-line-end="113">Crie uma branch com o nome da sua feature: git chechout -b feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="113" data-line-end="114">Faça as alterações necessárias no código ou na documentação;</li>
<li class="has-line-data" data-line-start="114" data-line-end="115">Faça um push para a sua branch: git push origin feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="115" data-line-end="116">Agora é só abrir um pull request no repositório que você fez o fork e assim que acontecer o merge sua Issue será fechada e suas alterações irão fazer parte do projeto;</li>
<li class="has-line-data" data-line-start="116" data-line-end="117">Depois que o merge da sua pull request for feito, você pode deletar a sua branch.</li>
<li class="has-line-data" data-line-start="117" data-line-end="118"><strong>Obrigado por contribuir!</strong></li>
</ul>
<h1 class="code-line" data-line-start=120 data-line-end=121 ><a id="_Autor_120"></a>🤠 Autor</h1>
<p class="has-line-data" data-line-start="122" data-line-end="123"><a href="mailto:luizpauloueg@gmail.com"><img src="https://img.shields.io/badge/-luizpauloueg@gmail.com.com-c14438?style=flat-square&amp;logo=Gmail&amp;logoColor=white&amp;link=mailto:tgmarinho@gmail.com" alt="Gmail Badge"></a></p>
