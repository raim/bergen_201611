--- 

title       : Gene Expression & Growth <br/>in Budding Yeast 
subtitle    : X-Men Group Retreat, Bergen aan Zee, Nov 2016
author      : Rainer Machne
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : mathjax       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- 
<style>
em {
  font-style: italic
}
</style>
## Respiratory Oscillations in Budding Yeast 

ultradian|circadian
------|------
*Saccharomyces cerevisiae*| *Synechocystis* PCC6803
<img src="assets/img/tuliCoarse_li06_timecourse_ranges_major_nrm.png" height="180">|<img src="assets/img/cls_timecourse_major_total_fromLehmann14.png" height="190">
*E. coli*  & Paul, the *plateypus*|RNA-seq & Karl, the *segmenTier*
<img src="assets/img/ecoli_20141014.png" height="160"><img src="assets/img/fritz_the_platypus.gif" height="160">|<img src="assets/img/anadenobolus_arboreus-90.png" height="160"><img src="assets/img/segmenTier_srg1.png" height="160">

--- .class #id 

### Growth & Gene Expression in *E. coli* 

<img src="assets/img/ecoli_20141014.png" height="250"><img src="assets/img/fritz_the_platypus.gif" height="230"><img src="assets/img/Ecoli_20161014_OD_grofit_A8.png" height="250">

$$latex 
\begin{equation*} \begin{aligned}  
\frac{\text{d}X(t)}{\text{d}t} =& \mu X(t)\\ 
X(t) =& X(0)   e^{\mu  t}\\ 
t_D =& \frac{\ln(2)}{\mu}  
\end{aligned} \end{equation*} $$

<br/>
https://github.com/raim/platexpress or Paul, the *plateypus*?

--- .class #id 

### Growth & Gene Expression in *E. coli* 

<img src="assets/img/ecoli_20141014.png" height="250"><img src="assets/img/fritz_the_platypus.gif" height="230"><img src="assets/img/Ecoli_20161014_OD_growthrates.png" height="250">

$$latex 
\begin{equation*} \begin{aligned}  
\frac{\text{d}X(t)}{\text{d}t} =& \mu X(t)\\ 
X(t) =& X(0)   e^{\mu  t}\\ 
t_D =& \frac{\ln(2)}{\mu}  
\end{aligned} \end{equation*} $$

<br/>
https://github.com/raim/platexpress or Paul, the *plateypus*?

--- .lineheight

#### Varying Periods

continuous culture|observed periods
------|------
|
<img src="assets/img/fermentor_detailed.png" height="250">|<img src="assets/img/strains_D_t.png" height="250">
|
<font size=4>in continuous culture: $$latex \begin{equation*} \begin{aligned} \frac{\text{d}X(t)}{\text{d}t} =& \mu X(t)- \phi X(t) \end{aligned} \end{equation*} $$ </font><br/>| <font size=4>at steady state: $$\mu = \phi$$ </font> 

<br/><br/>
<font size=3>Monod, Annual Review of Microbiology 1949: *The Growth of Bacterial Cultures.*<br/>
Finn & Wilson, J Agric Food Chem 1954: *Population Dynamics of a Continuous Propagator for Microorganisms.*</font>

--- .lineheight

#### Varying Periods at Balanced Growth

continuous culture|observed periods
------|------
|
<img src="assets/img/fermentor_detailed.png" height="250">|<img src="assets/img/strains_D_t.png" height="250">
|
$$latex \begin{equation*} \begin{aligned} \frac{\text{d}X(t)}{\text{d}t} =& \mu X(t)- \phi X(t) \\ \frac{\text{d}S(t)}{\text{d}t} =&  \phi (S_{in} - S(t)) - \frac{\mu}{Y} X(t) \end{aligned} \end{equation*} $$| $$\mu = \mu_{max}\frac{S^n}{S^n+K^n}$$ $$Y = \frac{\Delta X}{\Delta S}  $$

<br/><br/>
<font size=3>Monod, Ann Rev Microbiol 1949: *The Growth of Bacterial Cultures.*<br/>
Finn & Wilson, J Agric Food Chem 1954: *Population Dynamics of a Continuous Propagator for Microorganisms.*<br/>
Mochan & Pye, Nature New Biol 1973: *Respiratory oscillations in adapting yeast cultures.*<br/>
Heinzle *et al.*, 1983: *Modelling of sustained oscillations observed in continuous culture of Saccharomyces cerevisiae.*
</font>

--- .lineheight

#### Varying Periods & the Cell Cycle?

the budding cycle|observed periods
------|------
|
<br/><img src="assets/img/thompson80_fig1_t2.png" height="220">|<img src="assets/img/zoom_T2_t.png" height="250">
|
<img src="assets/img/budding.svg" height="180">|$$\begin{equation*} \begin{aligned}t_D &= \frac{\ln(2)}{\mu} \\ \frac{t_O}{2} = t_P &= \frac{\ln\frac{1+\sqrt{5}}{2}}{\mu} \end{aligned} \end{equation*}$$


<font size=3>
Thompson & Wheals, J Gen Microbiol 1980: *Asymmetrical division of Saccharomyces cerevisiae in glucose-limited chemostat culture.*<br/>
Duboc, Philippe & von Stockar, Chem Eng Sci 2000: *Modeling of oscillating cultivations of Saccharomyces cerevisiae* [...].<br/>
Klevecz *et al.*, PNAS 2004: *A genomewide oscillation in transcription gates DNA replication and cell cycle.*
</font>

--- .class #id

#### Varying Periods ... Constant Gene Expression Profile

Observed periods| | | |
---|---|---|---
<img src="assets/img/wang15_highD_ranges_major.png" height="120">|CEN.PK 122<br/>\(\phi=0.13\;\text{h}^{-1}\)<br/>\(t_D=5.3\;\text{h}\)<br/>\(t_{osc}=2\;\text{h}\) | <img src="assets/img/tuliCoarse_tu05_timecourse_ranges_major_nrm.png" height="120">| CEN.PK 122<br/>\(\phi=0.1\;\text{h}^{-1}\) <br/>\(t_D=6.9\;\text{h}\) <br/>\(t_{osc}=5\;\text{h}\)
<img src="assets/img/tuliCoarse_li06_timecourse_ranges_major_nrm.png" height="120">|  IFO 0233<br/>\(\phi=0.09\;\text{h}^{-1}\)<br/>\(t_D=7.7\;\text{h}\) <br/>\(t_{osc}=0.7\;\text{h}\) | <img src="assets/img/wang15_lowD_ranges_major.png" height="120">| CEN.PK 122<br/>\(\phi=0.05\;\text{h}^{-1}\)<br/>\(t_D=13.9\;\text{h}\) <br/>\(t_{osc}=7\;\text{h}\)
 <br/><div style='text-align: right;'><font size=5>Oscillation without<br/>(much) cell division:</font></div> | | <img src="assets/img/slavov11_ranges_major.png" height="120">| DBY12007<br/>\(\phi= \sim \textbf{0}\;\text{h}^{-1}\) <br/>\(t_D=\infty \;\text{h}\) <br/>\(t_{osc}=4\;\text{h}\)

<br/>
<div style='text-align: right;'>$$\rightarrow \text{live at the brink}$$</div>

--- .lineheight .centertext

### Gene Expression : function
<br/>

<img src="assets/img/clusterDAG_v2_nona.png" height="280">

<br/>
based on *gene ontology* analysis

<br/><br/>
<font size=3>
<div style='text-align: left;'>Murray <em>et al.</em>, PNAS 2007: <em>Regulation of yeast oscillatory dynamics.</em><br/>
Machne & Murray, PLoS ONE 2012: <em>The yin and yang of yeast transcription:<br/> elements of a global feedback system between metabolism and chromatin.</em>
</div>
</font>


--- .lineheight .centertext

### Gene Expression : meta-transcriptome
<br/>

<img src="assets/img/machne12_fig2_cropped.png" height="280">

<br/>
cluster gene expression in ~1300 microarray experiments

<br/><br/>
<font size=3>
<div style='text-align: left;'>Murray <em>et al.</em>, PNAS 2007: <em>Regulation of yeast oscillatory dynamics.</em><br/>
Machne & Murray, PLoS ONE 2012: <em>The yin and yang of yeast transcription:<br/> elements of a global feedback system between metabolism and chromatin.</em>
</div>
</font>

--- .lineheight .centertext

### Gene Expression & Growth Laws
<br/>

<img src="assets/img/cluster_vs_rates_major.png" height="280">

<br/>
\(\mu \sim \frac{\text{red genes}}{\text{blue genes}}\)

<br/>
<div  style='text-align: left; line-height: 90%;'><font size=3> 
Brauer <em>et al.</em>, Mol Biol Cell 2008: <em>Coordination of growth rate, cell cycle, stress response, and metabolic activity in yeast.</em><br/>
Slavov <em>et al.</em>, Mol Biol Cell 2011: <em>Coupling among growth rate response, metabolic cycle, and cell division cycle in yeast.</em><br/>
</font></div>

--- .lineheight .centertext

### Gene Expression & Growth Laws
<br/>

<img src="assets/img/cluster_vs_rates_major.png" height="280">

<br/>
\(\mu = k \frac{\text{ribosomes}}{\text{proteins}}\)

<br/>
<div  style='text-align: left;line-height: 90%;'><font size=3> 
Brauer <em>et al.</em>, Mol Biol Cell 2008: <em>Coordination of growth rate, cell cycle, stress response, and metabolic activity in yeast.</em><br/>
Slavov <em>et al.</em>, Mol Biol Cell 2011: <em>Coupling among growth rate response, metabolic cycle, and cell division cycle in yeast.</em><br/>
<b>Koch, Can J Microbiol 1988: <em>Why can't a cell grow infinitely fast?</em></b><br/>
</font></div>

--- .lineheight .centertext

### Gene Expression & Growth Laws
<br/>

<img src="assets/img/scott14_fig1b.png" height="280">

<br/>
\(\mu = k \frac{\text{ribosomes}}{\text{proteins}}\)

<div  style='text-align: left;line-height: 90%;'><font size=3> 
Brauer <em>et al.</em>, Mol Biol Cell 2008: <em>Coordination of growth rate, cell cycle, stress response, and metabolic activity in yeast.</em><br/>
Slavov <em>et al.</em>, Mol Biol Cell 2011: <em>Coupling among growth rate response, metabolic cycle, and cell division cycle in yeast.</em><br/>
<b>Koch, Can J Microbiol 1988: <em>Why can't a cell grow infinitely fast?</em></b><br/>
Scott <em>et al.</em>, Mol Syst Biol 2014: <em>Emergence of robust growth laws from optimal regulation of ribosome synthesis.</em></br>
Wei&szlig;e <em>et al.</em>, PNAS 2015: <em>Mechanistic links between cellular trade-offs, gene expression, and growth.</em>
</font></div>

--- .centertext .lineheight

### Gene Expression & Growth Laws
<br/>

<img src="assets/img/cluster_vs_doubling_AD.png" height="280"><img src="assets/img/zoom_T2_t.png" height="280">


<br/>
\(t_D=\frac{\ln(2)}{\mu}\)

<br/>
<div  style='text-align: left; line-height: 90%;'><font size=3> 
Slavov <em>et al.</em>, Mol Biol Cell 2011: <em>Coupling among growth rate response, metabolic cycle, and cell division cycle in yeast.</em><br/>
Burnetti, Aydin & Buchler, Mol Biol Cell 2016: <em>Cell cycle Start is coupled to entry into the yeast metabolic cycle<br/>across diverse strains and growth rates.</em>
</font></div>

---  .lineheight

major carbon flux| nucleic acid content|cell
---|---|---
<img src="assets/img/data_DW_interpolated_nc.png"  height="180">|<img src="assets/img/data_RNA_interpolated_nc.png"  height="180">|<img src="assets/img/thompson80_fig1.png"  height="180">
||
<img src="assets/img/data_EtOH_interpolated_nc.png"  height="180">|<img src="assets/img/data_DNA_interpolated_nc.png"  height="180">|<img src="assets/img/data_V_cell_interpolated_nc.png"  height="180">

<br/>
With increasing growth rate *&mu;*:<br/> 
higher RNA & lower DNA content; larger cells, lower biomass & higher ethanol yield!

<br/><br/>
<font size=3> 
<b>Koch, Can J Microbiol 1988: *Why can't a cell grow infinitely fast?*</b><br/>
Schaechter, Maaloe & Kjeldgaard, J Gen Microbiol 1958: *Dependency on medium and temperature of cell size and chemical composition during balanced growth of Salmonella typhimurium.*<br/>
Heijnen & Van Dijken, Biotechnol Bioeng 1992: *In search of a thermodynamic description of biomass yields* [...].<br/>
Wei&szlig;e *et al.*, PNAS 2015: *Mechanistic links between cellular trade-offs, gene expression, and growth.*
</font>

---  &twocol .lineheight


*** =left
#### Summary:<br/>Growth & Gene Expression
<br/>

1. Growth Rate vs. Protein Expression Trade-off
2. Respiratory Oscillation:<br/>
\(t_{osc} \sim  t_D\), but <b>no strict coupling!</b>
3. Anti-correlation: Red \(\leftrightarrow\) Blue Genes
4. Relative Red/Blue Gene Expression<br/>
\(\mu = k \frac{\text{red genes}}{\text{blues genes}}\) <br/>
and with <b>major cellular restructuring</b>

<img src="assets/img/basic_feedback.png"  height="140">

*** =right
#### A Working Hypothesis: Life's Fundamental Feedbacks
<br/><br/>

<font size=3>
$$   \begin{equation*}
    \label{eqn:ancat}
    \begin{aligned}
      \frac{\text{d}X}{\text{d}t} &= (\mu_{ab} - \phi) X  \\
      \frac{\text{d}S}{\text{d}t} &= \phi (S_{in} - S)-(\mu_{ab} + \mu_{cd}) X\\  
      \frac{\text{d}atp}{\text{d}t} &= (n_{cd} \mu_{cd} - n_{ab} \mu_{ab} - \mu_{m})\frac{C_c}{V_c} - \mu_{ab} atp\\
      adp & = a_{tot} - atp\\\hline
     \end{aligned}
  \end{equation*} $$
</font>
<br/><br/>

<img src="assets/img/model_feedback.png"  height="180">

--- .lineheight

diauxic growth|metabolism
---|---
|
<img src="assets/img/zampar13_growth.png"  height="240">|<img src="assets/img/corecarbon.svg"  height="240">
|
<img src="assets/img/fermentor_detailed.png" height="240">|


<font size=3> 
Zampar *et al.*, Mol Syst Biol 2013: *Temporal system-level organization of the switch from glycolytic to gluconeogenic operation in yeast.*<br/>
</font>

--- .lineheight

diauxic growth|cell cycle
---|---
|
<img src="assets/img/zampar13_growth.png"  height="240">|
|
<img src="assets/img/brauer05_cells.png"  height="240">|


<font size=3> 
Zampar *et al.*, Mol Syst Biol 2013: *Temporal system-level organization of the switch from glycolytic to gluconeogenic operation in yeast.*<br/>
Brauer *et al.*, Mol Biol Cell 2005: *Homeostatic adjustment and metabolic remodeling in glucose-limited yeast cultures.*
</font>


--- .lineheight

diauxic growth|metabolism
---|---
|
<img src="assets/img/zampar13_growth.png"  height="240">|<img src="assets/img/brauer05_cells.png"  height="240">
|
<img src="assets/img/slavov14_growth.png"  height="240">|


<font size=3> 
Zampar *et al.*, Mol Syst Biol 2013: *Temporal system-level organization of the switch from glycolytic to gluconeogenic operation in yeast.*<br/>
Brauer *et al.*, Mol Biol Cell 2005: *Homeostatic adjustment and metabolic remodeling in glucose-limited yeast cultures.*<br/>
Slavov *et al.*, Cell Rep 2014: *Constant growth rate can be supported by decreasing energy flux and increasing aerobic glycolysis.*
</font>

--- .lineheight

diauxic growth|transcription
---|---
|
<img src="assets/img/zampar13_growth.png"  height="240">|<img src="assets/img/brauer05_cells.png"  height="240">
|
<img src="assets/img/slavov14_growth.png"  height="240">|<img src="assets/img/slavov14_selected_transcripts.png"  height="240">

<font size=3> 
Zampar *et al.*, Mol Syst Biol 2013: *Temporal system-level organization of the switch from glycolytic to gluconeogenic operation in yeast.*<br/>
Brauer *et al.*, Mol Biol Cell 2005: *Homeostatic adjustment and metabolic remodeling in glucose-limited yeast cultures.*<br/>
Slavov *et al.*, Cell Rep 2014: *Constant growth rate can be supported by decreasing energy flux and increasing aerobic glycolysis.*
</font>

--- .lineheight

stress|translation vs. P-bodies
---|---
|
<img src="assets/img/slavov14_selected_transcripts.png"  height="240">|<img src="assets/img/slavov14_selected_proteins.png"  height="240">
|
<img src="assets/img/zid14_transcripts.png"  height="240">|<img src="assets/img/zid14_proteins.png"  height="240">


<font size=3> 
Slavov *et al.*, Cell Rep 2014: *Constant growth rate can be supported by decreasing energy flux and increasing aerobic glycolysis.*</br>
Zid & O'Shea, Nature 2014: *Promoter sequences direct cytoplasmic localization and translation of mRNAs during starvation in yeast.*
</font>

--- &twocolbigright

### Gene Expression & Chromatin
*** =left
<img src="assets/img/lee07_clusters_major.png"  height="580">
*** =right

<img src="assets/img/ATP_ADP.png"  height="200">

ATP/ADP ratio oscillates

<img src="assets/img/remodeling_atp.png"  height="200">

ATP-dependent Nucleosome Remodeling

--- &twocolbigright

### Gene Expression & Chromatin
*** =left
<img src="assets/img/lee07_clusters_major.png"  height="580">
*** =right

<img src="assets/img/machne12_fig6a.png"  height="200">

ISW2 enriched in blue gene promoters

<img src="assets/img/remodeling_atp.png"  height="200">

ATP-dependent Nucleosome Remodeling

--- &twocolbigright

### Gene Expression & Chromatin
*** =left
<img src="assets/img/lee07_clusters_major.png"  height="580">
*** =right

<img src="assets/img/machne12_fig9a_top.png"  height="200">

Increased occupancy of blue genes in RSC k.o.

<img src="assets/img/remodeling_atp.png"  height="200">

ATP-dependent Nucleosome Remodeling

--- &twocolbigright

### Stress & Chromatin

*** =left
<img src="assets/img/amariei14_fig1b.png"  height="400">

*** =right
<img src="assets/img/amariei14_fig3a.png"  height="100">
<img src="assets/img/amariei14_fig3c.png"  height="100">
<img src="assets/img/amariei14_fig3e-g.png"  height="300">

--- .lineheight
 
### Stress & Chromatin

<img src="assets/img/nucl_amariei14_TSS.png"  height="450"><img src="assets/img/nucl_nocetti16_TSS.png"  height="450">

<font size=3>
Amariei *et al*, Microb Cell 2014: *Time resolved DNA occupancy dynamics during the respiratory oscillation uncover a global reset point in the yeast growth program.*
</font>

--- .class #id 


<img src="assets/img/nocetti16_ranges_major.png"  height="250">

<img src="assets/img/nucl_nocetti16_movie_ts_.gif"  height="350"><img src="assets/img/nucl_nocetti16_movie_.gif"  height="350">


Global behaviour similar, but locally different consequences!<br/>
Sequence-dependence of nucleosome occupancy and rotational positioning.

<br/>
<font size=3>
Nocetti & Whitehouse, GenesDevel 2016: *Nucleosome repositioning underlies
dynamic gene expression.* \(\Leftarrow\) didn't cite us :(
</font>

--- &twocolbigright

### <img src="assets/img/segmentier.svg"  height="50">

*** =right
<img src="assets/img/primseg_00436.png"  height="350">

Upstream ncRNA SRG1 regulates SER3, but not in SER33<br/>
\(\Rightarrow\) potentially new mechanism after yeast WGD

*** =left
1. RNA-seq time-series:<br/>get read-counts

2. Pre-segment, <50 kb

3. Cluster each read-count:<br/>
take DFT, scale, cluster (`kmeans`)

4. Dynamic Programming:<br/> `icor`, `ccor`

--- &twocol

### Pervasive Transcription During Low Energy Phase!

*** =left
<img src="assets/img/ana_phases_p0_1.png"  height="250">
<img src="assets/img/low_phases_p0_1.png"  height="250">

*** =right
<img src="assets/img/cat_phases_p0_1.png"  height="250">
<img src="assets/img/noisy_phases_p0_1.png"  height="250">

--- &twocol

### Pervasive Transcription During Low Energy Phase!

*** =left
<img src="assets/img/dubious_phases_p0_1.png"  height="250">
<img src="assets/img/AS_man_phases_p0_1.png"  height="250">

*** =right
<img src="assets/img/hawkins13_phases_p0_1.png"  height="250">
<img src="assets/img/telomere_phases_p0_1.png"  height="250">

--- &twocol

### Pervasive Transcription During Low Energy Phase!

*** =left
<br/><br/>

Non-coding transcription, including anti-sense is heavily
biased to the blue gene phase, where ATP/ADP is low. 

<b>Experimental transcription as a<br/>
substrate for evolution?</b>

*** =right
<img src="assets/img/osci_phastcons_p0_1.png"  height="250">
<img src="assets/img/dsb_p0_1.png"  height="250">

--- .class #id 

## THE END

* Lots of data:<br/>
Concepts and tools for cyano/bacteria, Coil-seq

* Trade-off between growth rate &mu; and (recombinant) gene expression

* Chromatin structure can act as a global regulator
of transcription (growth laws!)

* Cells may generate substrate for selection:<br/>
a `weak lamarckian` mechanism of evolution that has
already been suggested by Darwin

* Thanks




