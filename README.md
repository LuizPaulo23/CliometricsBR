<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="CliometricsBR__Version_010_0"></a>{CliometricsBR} - Version: 0.1.0</h1>
<h4 class="code-line" data-line-start=1 data-line-end=2 ><a id="Pacote_para_Histria_Econmica_quantitativa_1"></a>Pacote para História Econômica quantitativa</h4>
<p class="has-line-data" data-line-start="3" data-line-end="4"><a href="https://travis-ci.org/joemccann/dillinger"><img src="https://travis-ci.org/joemccann/dillinger.svg?branch=master" alt="Build Status"></a></p>
<h1 class="code-line" data-line-start=5 data-line-end=6 ><a id="Background_5"></a>Background</h1>
<p class="has-line-data" data-line-start="6" data-line-end="7">O pacote {CliometricsBR} busca disponibilizar um conjunto de dados socioeconômicos do Brasil Império até o início do Brasil República (1821-1900) – com exceção dos dados sobre escravidão disponíveis de 1800 a meados de 1850 (até o período que a Lei Eusébio de Queiroz coloca fim no tráfico transatlântico). O pacote está sendo disponibilizado em sua primeira versão –  almeja em versões futuras ampliar a ideia para SQL. Assim, Forks e/ou contribuições são bem-vindas. O {CliometricsBR} foi idealizado com o objetivo de otimizar e, até mesmo, popularizar a linha de pesquisa cliométrica em <em>terras brasilis</em>.</p>
<h1 class="code-line" data-line-start=8 data-line-end=9 ><a id="Sries_Disponveis_8"></a>Séries Disponíveis</h1>
<p class="has-line-data" data-line-start="10" data-line-end="11">Em sua primeira versão, o {CliometricsBR} vai contar com dados de três “setores” da história do Brasil – todos em formato de série temporal. São:</p>
<ul>
<li class="has-line-data" data-line-start="12" data-line-end="13">Exportações;</li>
<li class="has-line-data" data-line-start="13" data-line-end="14">Escravidão;</li>
<li class="has-line-data" data-line-start="14" data-line-end="15">Preços;</li>
<li class="has-line-data" data-line-start="15" data-line-end="17">Taxa de Câmbio.</li>
</ul>
<p class="has-line-data" data-line-start="17" data-line-end="18">As séries de <strong>exportação</strong> disponíveis:</p>
<ul>
<li class="has-line-data" data-line-start="19" data-line-end="20">Exportação total em libra esterlina - FOB {Fob} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="20" data-line-end="21">Exportação de café em sacas de 60kg {Cooffe} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="21" data-line-end="22">Exportação de açucar em toneladas {Sugar} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="22" data-line-end="23">Exportação de algodão em toneladas {Cotton} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="23" data-line-end="24">Exportação de cacau em toneladas {Cocoa} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="24" data-line-end="25">Exportação de Tabaco em toneladas {Tobacco} - (1821 a 1900);</li>
<li class="has-line-data" data-line-start="25" data-line-end="27">Exportação de Erva-Mate em toneladas {Yerba_mate} - (1831 a 1900).</li>
</ul>
<p class="has-line-data" data-line-start="27" data-line-end="28">As séries de <strong>Escravidão</strong> disponíveis, por sua vez, representam o número estimado de escravos desembarcados em determinadas regiões. As regiões disponíveis no {CliometricsBR}:</p>
<ul>
<li class="has-line-data" data-line-start="29" data-line-end="30">Amazonia;</li>
<li class="has-line-data" data-line-start="30" data-line-end="31">Bahia;</li>
<li class="has-line-data" data-line-start="31" data-line-end="32">Pernambuco;</li>
<li class="has-line-data" data-line-start="32" data-line-end="33">SouthEast;</li>
<li class="has-line-data" data-line-start="33" data-line-end="34">Unspecified;</li>
<li class="has-line-data" data-line-start="34" data-line-end="35">Total.</li>
</ul>
<h2 class="code-line" data-line-start=37 data-line-end=38 ><a id="Installation_CliometricsBR_37"></a>Installation {CliometricsBR}</h2>
<pre><code class="has-line-data" data-line-start="40" data-line-end="46" class="language-sh">rm(list = ls())
graphics.off()

<span class="hljs-comment"># install.packages("devtools") // devtools devidamente instalado </span>
devtools::install_github(<span class="hljs-string">"LuizPaulo23/CliometricsBR"</span>, ref = <span class="hljs-string">"main"</span>)
</code></pre>
<h1 class="code-line" data-line-start=47 data-line-end=48 ><a id="Utilizando_o_CliometricsBR_47"></a>Utilizando o {CliometricsBR}</h1>
<p class="has-line-data" data-line-start="49" data-line-end="50">Para importar todos os dados de exportações disponíveis no pacote:</p>
<pre><code class="has-line-data" data-line-start="53" data-line-end="57" class="language-sh"><span class="hljs-comment"># Puxando todas as séries de exportação </span>
exports_all = CliometricsBR::get_exports(series = <span class="hljs-string">"all"</span>, 
                                         start = <span class="hljs-number">1821</span>, end = <span class="hljs-number">1900</span>) 
</code></pre>
<p class="has-line-data" data-line-start="58" data-line-end="59">Importando apenas séries selecionadas:</p>
<pre><code class="has-line-data" data-line-start="61" data-line-end="68" class="language-sh"><span class="hljs-comment"># Importando produtos selecionados = Sugar, Coffee e Cotton </span>
<span class="hljs-comment"># De 1821 a 1855</span>

exports_select = CliometricsBR::get_exports(series = c(<span class="hljs-string">"Sugar"</span>, 
                <span class="hljs-string">"Coffee"</span>, <span class="hljs-string">"Cotton"</span>),  start = <span class="hljs-number">1821</span>, 
                end = <span class="hljs-number">1855</span>) 
</code></pre>
