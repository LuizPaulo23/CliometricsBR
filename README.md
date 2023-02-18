<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="CliometricsBR__Version_010_0"></a>{CliometricsBR} - Version: 0.1.0</h1>
<h5 class="code-line" data-line-start=1 data-line-end=2 ><a id="Pacote_para_Histria_Econmica_quantitativa_1"></a>Pacote para História Econômica quantitativa</h5>
<h1 class="code-line" data-line-start=5 data-line-end=6 ><a id="_Background_5"></a>📍 Background</h1>
<p class="has-line-data" data-line-start="6" data-line-end="7">O pacote {CliometricsBR} busca disponibilizar um conjunto de dados socioeconômicos do Brasil Império até o início do Brasil República (1821-1900) – com exceção dos dados sobre escravidão disponíveis de 1800 a meados de 1850 (até o período que a Lei Eusébio de Queiroz coloca fim no tráfico transatlântico). O pacote está sendo disponibilizado em sua primeira versão –  almeja em versões futuras ampliar a ideia para SQL. Assim, Forks e/ou contribuições são bem-vindas. O {CliometricsBR} foi idealizado com o objetivo de otimizar e, até mesmo, popularizar a linha de pesquisa cliométrica em <em>terras brasilis</em>.</p>
<h3 class="code-line" data-line-start=8 data-line-end=9 ><a id="_Tecnologias_utilizadas_8"></a>🛠 Tecnologias utilizadas</h3>
<p class="has-line-data" data-line-start="10" data-line-end="11">As seguintes ferramentas foram usadas na construção do projeto:</p>
<ul>
<li class="has-line-data" data-line-start="12" data-line-end="13"><a href="https://cran.r-project.org/">Linguagem R</a></li>
<li class="has-line-data" data-line-start="13" data-line-end="15"><a href="https://www.python.org/">Linguagem Python</a></li>
</ul>
<h1 class="code-line" data-line-start=15 data-line-end=16 ><a id="_Sries_Disponveis_15"></a>📈 Séries Disponíveis</h1>
<p class="has-line-data" data-line-start="17" data-line-end="18">Em sua primeira versão, o {CliometricsBR} vai contar com dados de três “setores” da história do Brasil – todos em formato de série temporal. São:</p>
<ul>
<li class="has-line-data" data-line-start="19" data-line-end="20">Exportações;</li>
<li class="has-line-data" data-line-start="20" data-line-end="21">Escravidão;</li>
<li class="has-line-data" data-line-start="21" data-line-end="22">Preços;</li>
<li class="has-line-data" data-line-start="22" data-line-end="24">Taxa de Câmbio.</li>
</ul>
<p class="has-line-data" data-line-start="24" data-line-end="25">As séries de <strong>exportação</strong> disponíveis:</p>
<ul>
<li class="has-line-data" data-line-start="26" data-line-end="27">Exportação total em libra esterlina - FOB {Fob} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="27" data-line-end="28">Exportação de café em sacas de 60kg {Cooffe} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="28" data-line-end="29">Exportação de açucar em toneladas {Sugar} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="29" data-line-end="30">Exportação de algodão em toneladas {Cotton} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="30" data-line-end="31">Exportação de cacau em toneladas {Cocoa} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="31" data-line-end="32">Exportação de Tabaco em toneladas {Tobacco} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="32" data-line-end="34">Exportação de Erva-Mate em toneladas {Yerba_mate} - (1831 a 1900).</li>
</ul>
<p class="has-line-data" data-line-start="34" data-line-end="35">As séries de <strong>Escravidão</strong> disponíveis, por sua vez, representam o número estimado de escravos desembarcados em determinadas regiões. As regiões disponíveis no {CliometricsBR}:</p>
<ul>
<li class="has-line-data" data-line-start="36" data-line-end="37">Amazonia;</li>
<li class="has-line-data" data-line-start="37" data-line-end="38">Bahia;</li>
<li class="has-line-data" data-line-start="38" data-line-end="39">Pernambuco;</li>
<li class="has-line-data" data-line-start="39" data-line-end="40">SouthEast;</li>
<li class="has-line-data" data-line-start="40" data-line-end="41">Unspecified;</li>
<li class="has-line-data" data-line-start="41" data-line-end="43">Total.</li>
</ul>
<p class="has-line-data" data-line-start="43" data-line-end="44">Por sua vez, os dados referente aos <strong>preços</strong> são subdividido em:</p>
<ul>
<li class="has-line-data" data-line-start="45" data-line-end="46">Bag</li>
<li class="has-line-data" data-line-start="46" data-line-end="48">Kilo</li>
</ul>
<p class="has-line-data" data-line-start="48" data-line-end="49">O qual resume-se ao preço do café entre 1808 a 1900 em sacas de 50 kg (<strong>Bag</strong>) e em quilo (<strong>Kilo</strong>).</p>
<h2 class="code-line" data-line-start=50 data-line-end=51 ><a id="__Installation_CliometricsBR_50"></a>👩‍💻 🧑‍💻 Installation {CliometricsBR}</h2>
<pre><code class="has-line-data" data-line-start="53" data-line-end="59" class="language-sh">rm(list = ls())
graphics.off()

<span class="hljs-comment"># install.packages("devtools") // devtools devidamente instalado </span>
devtools::install_github(<span class="hljs-string">"LuizPaulo23/CliometricsBR"</span>, ref = <span class="hljs-string">"main"</span>)
</code></pre>
<h1 class="code-line" data-line-start=60 data-line-end=61 ><a id="Utilizando_o_CliometricsBR_60"></a>🏄🏽‍♀️Utilizando o {CliometricsBR}</h1>
<p class="has-line-data" data-line-start="62" data-line-end="63">Para importar todos os dados de exportações disponíveis no pacote:</p>
<pre><code class="has-line-data" data-line-start="66" data-line-end="70" class="language-sh"><span class="hljs-comment"># Puxando todas as séries de exportação </span>
exports_all = CliometricsBR::get_exports(series = <span class="hljs-string">"all"</span>, 
                                         start = <span class="hljs-number">1821</span>, end = <span class="hljs-number">1900</span>) 
</code></pre>
<p class="has-line-data" data-line-start="71" data-line-end="72">Importando apenas séries de exportação selecionadas:</p>
<pre><code class="has-line-data" data-line-start="74" data-line-end="80" class="language-sh"><span class="hljs-comment"># Importando produtos selecionados = Sugar, Coffee e Cotton </span>
<span class="hljs-comment"># De 1821 a 1855</span>

exports_select = CliometricsBR::get_exports(series = c(<span class="hljs-string">"Sugar"</span>, 
<span class="hljs-string">"Coffee"</span>, <span class="hljs-string">"Cotton"</span>),  start = <span class="hljs-number">1821</span>,  end = <span class="hljs-number">1855</span>) 
</code></pre>
<p class="has-line-data" data-line-start="81" data-line-end="82">Importando todas as regiões em escravidão:</p>
<pre><code class="has-line-data" data-line-start="84" data-line-end="87" class="language-sh"><span class="hljs-comment"># Todas as regiões </span>
region_slave_all = CliometricsBR::get_slavery(region = <span class="hljs-string">"all"</span>) 
</code></pre>
<p class="has-line-data" data-line-start="88" data-line-end="89">Importando apenas regiões selecionadas, por exemplo:</p>
<pre><code class="has-line-data" data-line-start="91" data-line-end="94" class="language-sh"><span class="hljs-comment"># Regiões selecionadas </span>
region_slave_select = CliometricsBR::get_slavery(region = c(<span class="hljs-string">"Bahia"</span>, <span class="hljs-string">"Total"</span>))
</code></pre>
<h1 class="code-line" data-line-start=95 data-line-end=96 ><a id="_Como_contribuir_95"></a>🫂 Como contribuir</h1>
<ul>
<li class="has-line-data" data-line-start="97" data-line-end="98">Faça um fork do repositório;</li>
<li class="has-line-data" data-line-start="98" data-line-end="99">Entre no sua página do GitHub e faça um clone do seu fork;</li>
<li class="has-line-data" data-line-start="99" data-line-end="100">Crie uma branch com o nome da sua feature: git chechout -b feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="100" data-line-end="101">Faça as alterações necessárias no código ou na documentação;</li>
<li class="has-line-data" data-line-start="101" data-line-end="102">Faça um push para a sua branch: git push origin feat/minhaFeature;</li>
<li class="has-line-data" data-line-start="102" data-line-end="103">Agora é só abrir um pull request no repositório que você fez o fork e assim que acontecer o merge sua Issue será fechada e suas alterações irão fazer parte do projeto;</li>
<li class="has-line-data" data-line-start="103" data-line-end="104">Depois que o merge da sua pull request for feito, você pode deletar a sua branch.</li>
<li class="has-line-data" data-line-start="104" data-line-end="105"><strong>Obrigado por contribuir!</strong></li>
</ul>
<h1 class="code-line" data-line-start=107 data-line-end=108 ><a id="_Autor_107"></a>🤠 Autor</h1>
<p class="has-line-data" data-line-start="109" data-line-end="110"><a href="mailto:luizpauloueg@gmail.com"><img src="https://img.shields.io/badge/-luizpauloueg@gmail.com.com-c14438?style=flat-square&amp;logo=Gmail&amp;logoColor=white&amp;link=mailto:tgmarinho@gmail.com" alt="Gmail Badge"></a></p>
