<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="CliometricsBR_0"></a>{CliometricsBR}</h1>
<p class="has-line-data" data-line-start="1" data-line-end="2"><a href=""><img src="https://img.shields.io/badge/vers%C3%A3o-0.1.0-yellow.svg" alt="versão"></a><a href=""><img src="https://img.shields.io/badge/build-sucesso-green.svg" alt="build"></a></p>
<h5 class="code-line" data-line-start=2 data-line-end=3 ><a id="Pacote_para_Histria_Econmica_quantitativa_2"></a>Pacote para História Econômica quantitativa</h5>
<h1 class="code-line" data-line-start=4 data-line-end=5 ><a id="_Background_4"></a>📍 Background</h1>
<p class="has-line-data" data-line-start="5" data-line-end="6">O pacote {CliometricsBR} tem como objetivo disponibilizar uma coleção de dados socioeconômicos do Brasil, compilando dados desde o período do Brasil Império até o período Republicano. Adicionalmente, inclui dados sobre a escravidão disponíveis de 1800 até meados da década de 1850 (quando a Lei Eusébio de Queiroz pôs fim ao tráfico transatlântico de escravos).  O {CliometricsBR} foi idealizado com o objetivo de otimizar e, até mesmo, popularizar a linha de pesquisa cliométrica em <em>terras brasilis</em>. O pacote está sendo disponibilizado em sua primeira versão –  almejando em versões futuras ampliar a ideia para SQL e utilizar a API do IPEAdata. Assim, Forks e/ou contribuições são bem-vindas. Caso queira contribuir para o projeto, leia a secção <strong>🫂 Como contribuir</strong>.</p>
<h3 class="code-line" data-line-start=7 data-line-end=8 ><a id="_Tecnologias_utilizadas_7"></a>🛠 Tecnologias utilizadas</h3>
<p class="has-line-data" data-line-start="9" data-line-end="10">As seguintes ferramentas foram usadas na construção do projeto:</p>
<ul>
<li class="has-line-data" data-line-start="11" data-line-end="12"><a href="https://cran.r-project.org/">Linguagem R</a>;</li>
<li class="has-line-data" data-line-start="12" data-line-end="13"><a href="https://rmarkdown.rstudio.com/">RMarkdown</a>;</li>
<li class="has-line-data" data-line-start="13" data-line-end="14"><a href="https://en.wikipedia.org/wiki/Web_scraping">Web Scraping</a>;</li>
<li class="has-line-data" data-line-start="14" data-line-end="16"><a href="https://dillinger.io/">Dillinger</a>.</li>
</ul>
<h1 class="code-line" data-line-start=16 data-line-end=17 ><a id="_Sries_Disponveis_16"></a>📈 Séries Disponíveis</h1>
<p class="has-line-data" data-line-start="18" data-line-end="19">Em sua primeira versão, o {CliometricsBR} vai contar com os seguintes dados:</p>
<ul>
<li class="has-line-data" data-line-start="20" data-line-end="21">Exportação;</li>
<li class="has-line-data" data-line-start="21" data-line-end="22">Escravidão;</li>
<li class="has-line-data" data-line-start="22" data-line-end="23">Maddison Project Database 2020;</li>
<li class="has-line-data" data-line-start="23" data-line-end="25">Cotação/Preço.</li>
</ul>
<p class="has-line-data" data-line-start="25" data-line-end="26">As séries de <strong>exportações</strong> disponíveis:</p>
<ul>
<li class="has-line-data" data-line-start="27" data-line-end="28">Exportação total em libra esterlina - FOB {Fob} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="28" data-line-end="29">Exportação de café em sacas de 60kg {Cooffe} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="29" data-line-end="30">Exportação de açúcar em toneladas {Sugar} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="30" data-line-end="31">Exportação de algodão em toneladas {Cotton} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="31" data-line-end="32">Exportação de cacau em toneladas {Cocoa} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="32" data-line-end="33">Exportação de tabaco em toneladas {Tobacco} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="33" data-line-end="35">Exportação de erva-mate em toneladas {Yerba_mate} - (1831 a 1900).</li>
</ul>
<p class="has-line-data" data-line-start="35" data-line-end="36">As séries de <strong>Escravidão</strong> disponíveis, por sua vez, representam o número estimado de escravos desembarcados em determinadas regiões (e o total representando o somatório de todas as regiões). As regiões disponíveis são:</p>
<ul>
<li class="has-line-data" data-line-start="37" data-line-end="38">Amazonia (1800-1851);</li>
<li class="has-line-data" data-line-start="38" data-line-end="39">Bahia (1800-1851);</li>
<li class="has-line-data" data-line-start="39" data-line-end="40">Pernambuco (1800-1851);</li>
<li class="has-line-data" data-line-start="40" data-line-end="41">SouthEast (1800-1851);</li>
<li class="has-line-data" data-line-start="41" data-line-end="42">Unspecified (1800-1851);</li>
<li class="has-line-data" data-line-start="42" data-line-end="44">Total (1800-1851).</li>
</ul>
<p class="has-line-data" data-line-start="44" data-line-end="45">Em terceiro, representa os dados do Maddison Project Database 2020. No {CliometricsBR} conta com sua versão 2020 ataualizada com os dados:</p>
<ul>
<li class="has-line-data" data-line-start="46" data-line-end="47">gdpcc</li>
<li class="has-line-data" data-line-start="47" data-line-end="49">population</li>
</ul>
<p class="has-line-data" data-line-start="49" data-line-end="50">Respectivamente, o PIB per capita real (U$ 2011) e população estimada para mais de 169 países ao longo da história. Para o caso do Brasil, a série histórica inicia em 1800. Observe que esse é o único conjunto de dados do {CliometricsBR} em formato de painel, isto é, um cross-section com centenas de países ao longo de uma série temporal – esses dados foram obtidos via Web Scraping. Para mais informações sobre a metodologia de estimação/retropolação, consultar:</p>
<ul>
<li class="has-line-data" data-line-start="51" data-line-end="52"><a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020">Banco de Dados do Projeto Maddison 2020</a></li>
<li class="has-line-data" data-line-start="52" data-line-end="54"><a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/publications/wp15.pdf">A new 2020 update</a></li>
</ul>
<p class="has-line-data" data-line-start="54" data-line-end="55">Por sua vez, os dados referente aos <strong>preços</strong> são subdividido em:</p>
<ul>
<li class="has-line-data" data-line-start="56" data-line-end="57">Bag (1808-1900);</li>
<li class="has-line-data" data-line-start="57" data-line-end="59">Kilo (1808-1900).</li>
</ul>
<p class="has-line-data" data-line-start="59" data-line-end="60">O quais representam o preço do café entre 1808 a 1900 em sacas de 50 kg (<strong>Bag</strong>) e em quilo (<strong>Kilo</strong>).</p>
<h2 class="code-line" data-line-start=61 data-line-end=62 ><a id="__Installation_CliometricsBR_61"></a>👩‍💻 🧑‍💻 Installation {CliometricsBR}</h2>
<pre><code class="has-line-data" data-line-start="64" data-line-end="67" class="language-sh"><span class="hljs-comment"># install.packages("devtools") // devtools devidamente instalado </span>
devtools::install_github(<span class="hljs-string">"LuizPaulo23/CliometricsBR"</span>, dependencies = T)
</code></pre>
<h1 class="code-line" data-line-start=68 data-line-end=69 ><a id="Utilizando_o_CliometricsBR_68"></a>🏄🏽‍♀️Utilizando o {CliometricsBR}</h1>
<p class="has-line-data" data-line-start="70" data-line-end="71">Não esqueça de  :: após o nome do pacote nas funções. Dito isso, para importar todos os dados de exportações disponíveis no pacote:</p>
<pre><code class="has-line-data" data-line-start="74" data-line-end="78" class="language-sh"><span class="hljs-comment"># Puxando todas as séries de exportações </span>
exports_all = CliometricsBR::get_exports(series = <span class="hljs-string">"all"</span>, 
                                         start = <span class="hljs-number">1821</span>, end = <span class="hljs-number">1900</span>) 
</code></pre>
<p class="has-line-data" data-line-start="79" data-line-end="80">Importando apenas séries de exportação selecionadas:</p>
<pre><code class="has-line-data" data-line-start="82" data-line-end="87" class="language-sh"><span class="hljs-comment"># Importando produtos selecionados {Sugar, Coffee e Cotton}  </span>

exports_select = CliometricsBR::get_exports(series = c(<span class="hljs-string">"Sugar"</span>, 
                     <span class="hljs-string">"Coffee"</span>, <span class="hljs-string">"Cotton"</span>),  start = <span class="hljs-number">1821</span>,  end = <span class="hljs-number">1855</span>) 
</code></pre>
<p class="has-line-data" data-line-start="88" data-line-end="89">Importando dados do Project Maddison:</p>
<pre><code class="has-line-data" data-line-start="91" data-line-end="96" class="language-sh"><span class="hljs-comment"># Maddison Project Database 2020 - importando tudo desde 1700</span>

teste_mesa_all = get.DBMaddison(country = <span class="hljs-string">"all"</span>,
                                start = <span class="hljs-number">1700</span>, end = <span class="hljs-number">1900</span>)
</code></pre>
<p class="has-line-data" data-line-start="97" data-line-end="98">Importando apenas países selecionadas, por exemplo:</p>
<pre><code class="has-line-data" data-line-start="100" data-line-end="103" class="language-sh">teste_mesa_filter = get.DBMaddison(country = c(<span class="hljs-string">"USA"</span>, <span class="hljs-string">"BRA"</span>, <span class="hljs-string">"ARG"</span>),
                                   start = <span class="hljs-number">1800</span>, end = <span class="hljs-number">1900</span>)
</code></pre>
<p class="has-line-data" data-line-start="104" data-line-end="105">🗣 <em>O restante das funções disponíveis no pacote {CliometricsBR} seguem o mesmo padrão de importação. Qualquer dúvida sobre a utilização, pressione F1 no nome da função e encontrará a documentação no ambiente RStudio (ou na sua IDE de preferência)</em></p>
<h1 class="code-line" data-line-start=106 data-line-end=107 ><a id="_Dependncias_106"></a>🗃 Dependências</h1>
<p class="has-line-data" data-line-start="108" data-line-end="109">Caso ocorra algum problema na instalação ou até mesmo após a instalação derivado de dependências de outros pacotes, o {CliometricsBr} usou as dependências/pacotes nas versões:</p>
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
</tbody>
</table>
<h1 class="code-line" data-line-start=122 data-line-end=123 ><a id="_Fonte_dos_dados_122"></a>👥 Fonte dos dados</h1>
<p class="has-line-data" data-line-start="124" data-line-end="125">As fontes detalhadas dos dados utilizados no pacote {CliometricsBR} podem ser visualizadas na pasta {Fontes} do projeto no <a href="https://github.com/LuizPaulo23/CliometricsBR">Github</a>. Em linhas gerais são:</p>
<ul>
<li class="has-line-data" data-line-start="126" data-line-end="127">Exportação ~&gt; <a href="http://www.ipeadata.gov.br/Default.aspx">IPEAdata</a></li>
<li class="has-line-data" data-line-start="127" data-line-end="128">Escravidão ~&gt; <a href="https://www.slavevoyages.org/">Slave Voyages</a></li>
<li class="has-line-data" data-line-start="128" data-line-end="129">Maddison Project Database 2020 ~&gt; <a href="https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020">Projecto Maddison</a></li>
<li class="has-line-data" data-line-start="129" data-line-end="131">Cotação/Preço ~&gt; <a href="http://www.ipeadata.gov.br/Default.aspx">IPEAdata</a></li>
</ul>
<p class="has-line-data" data-line-start="131" data-line-end="132">Na próxima versão, espera-se migrar as fontes detalhadas para a documentação fora do README ou de pastas secundárias, assim, facilitando a usabilidade  do pacote!</p>
<h1 class="code-line" data-line-start=133 data-line-end=134 ><a id="_Como_contribuir_133"></a>🫂 Como contribuir</h1>
<ul>
<li class="has-line-data" data-line-start="135" data-line-end="136">Faça um fork do repositório;</li>
<li class="has-line-data" data-line-start="136" data-line-end="137">Entre no sua página do GitHub e faça um clone do seu fork;</li>
<li class="has-line-data" data-line-start="137" data-line-end="138">Crie uma branch com o nome da sua feature: git chechout -b feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="138" data-line-end="139">Faça as alterações necessárias no código ou na documentação;</li>
<li class="has-line-data" data-line-start="139" data-line-end="140">Faça um push para a sua branch: git push origin feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="140" data-line-end="141">Agora é só abrir um pull request no repositório que você fez o fork e assim que acontecer o merge sua Issue será fechada e suas alterações irão fazer parte do projeto;</li>
<li class="has-line-data" data-line-start="141" data-line-end="142">Depois que o merge da sua pull request for feito, você pode deletar a sua branch.</li>
<li class="has-line-data" data-line-start="142" data-line-end="143"><strong>Obrigado por contribuir!</strong></li>
</ul>
<h1 class="code-line" data-line-start=145 data-line-end=146 ><a id="_Autor_145"></a>🤠 Autor</h1>
<p class="has-line-data" data-line-start="147" data-line-end="148"><a href="mailto:luizpauloueg@gmail.com"><img src="https://img.shields.io/badge/-luizpauloueg@gmail.com.com-c14438?style=flat-square&amp;logo=Gmail&amp;logoColor=white&amp;link=mailto:tgmarinho@gmail.com" alt="Gmail Badge"></a></p>
