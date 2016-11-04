--- 

job1        : Gene Expression & Growth in Budding Yeast 
job2        : <p>{{job1}}<br/>{{job2}}</p>

title       : Gene Expression & Growth in Budding Yeast 
subtitle    : X-Men Group Retreat, Bergen Nov 2016
author      : Rainer Machne
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : mathjax       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- 

## Respiratory Oscillations in Budding Yeast 

ultradian|circadian
------|------
<i>Saccharomyces cerevisiae</i>| <i>Synechocystis</i> PCC6803
<img src="assets/img/tuliCoarse_li06_timecourse_ranges_major_nrm.png" height="180">|<img src="assets/img/cls_timecourse_major_total_fromLehmann14.png" height="190">
|
<div style='text-align: center;'><img src="assets/img/fermentor_detailed.png" align="center" height="200"></div>|$$ \begin{equation*} \begin{aligned} \frac{\text{d}X}{\text{d}t} &= + \mu X - \phi X  \\   \frac{\text{d}S}{\text{d}t} &= - \frac{\mu}{y} X + \phi (S_{in} - S)\\\hline \mu =& \mu_{max} \frac{S^n}{S^n+K_S^n};\;      y = a + b \cdot S \end{aligned}  \end{equation*} $$

--- .class #id bg:#AAFF00AA

### Varying Periods


oscillation: period distinct from cell cycle, but synchronization
and semi-linear relations; continuous culture! 

--- .class #id

### Varying Periods ... Constant Gene Expression Profile

Saccharomyces cerevisiae| growth rate| | |
---|---|---|---
<img src="assets/img/wang15_highD_ranges_major.png" height="120">|CEN.PK 122<br/> $$0.13\; \text{h}^{-1}$$ | <img src="assets/img/tuliCoarse_tu05_timecourse_ranges_major_nrm.png" height="120">| CEN.PK 122<br/>$$0.1\;\text{h}^{-1}$$ 
<img src="assets/img/tuliCoarse_li06_timecourse_ranges_major_nrm.png" height="120">|  IFO 0233<br/>$$0.09\;\text{h}^{-1}$$ | <img src="assets/img/wang15_lowD_ranges_major.png" height="120">| CEN.PK 122<br/>$$0.05\;\text{h}^{-1}$$
<img src="assets/img/slavov11_ranges_major.png" height="120">| DBY12007<br/>$$\sim \textbf{0}\;\text{h}^{-1}$$ | Oscillation also <br/>without cell division!

<br/>
<div style='text-align: right;'>$$\rightarrow \text{live at the brink}$$</div>

--- .class #id 

### Gene Expression & Growth Laws
<br/>

<div style='text-align: center;'><img src="assets/img/machne12_fig2_cropped.png" height="280"></div>

<br/>
Machne & Murray, PLoS ONE 2012<br/>
Slavov et al., Mol Biol Cell 2011

--- .class #id 

### Gene Expression & Growth Laws
<br/>

<div style='text-align: center;'><img src="assets/img/cluster_vs_rates_major.png" height="280"></div>


<br/>
Machne & Murray, PLoS ONE 2012<br/>
Slavov et al., Mol Biol Cell 2011

--- .class #id 

### Gene Expression & Growth Laws
<br/>

<div style='text-align: center;'><img src="assets/img/cluster_vs_doubling_AD.png" height="280"></div>


<br/>
Machne & Murray, PLoS ONE 2012<br/>
Slavov et al., Mol Biol Cell 2011

<div style='text-align: right;'>$$t_2=\frac{\ln(2)}{\mu}$$</div>

--- .class #id 

### Growth Laws: Linear Relations to &mu;

major carbon flux| nucleic acid content
------|------
<div style='text-align: center;'><img src="assets/img/data_DW_interpolated_nc.png"  height="220"></div>|<div style='text-align: center;'><img src="assets/img/data_RNA_interpolated_nc.png"  height="220"></div>
|
<div style='text-align: center;'><img src="assets/img/data_EtOH_interpolated_nc.png"  height="220"></div>|<div style='text-align: center;'><img src="assets/img/data_V_cell_interpolated_nc.png"  height="220"></div>


koch1988, &mu; = rib2
heijnen92: limiting is membrane space
recent trade-off models: protein costs

--- .class #id 

### A Working Hypothesis

culture level|cellular level
---|---
|
<img src="assets/img/basic_feedback.png"  height="180">|<img src="assets/img/model_feedback.png"  height="220">

$$   \begin{equation*}
    \label{eqn:ancat}
    \begin{aligned}
      \frac{\text{d}X}{\text{d}t} &= (\mu_{ab} - \phi) X  \\
      \frac{\text{d}S}{\text{d}t} &= \phi (S_{in} - S)-(\mu_{ab} + \mu_{cd}) X\\  
      \frac{\text{d}atp}{\text{d}t} &= (n_{cd} \mu_{cd} - n_{ab} \mu_{ab} - \mu_{m})\frac{C_c}{V_c} - \mu_{ab} atp\\
      adp & = a_{tot} - atp\\\hline
     \end{aligned}
  \end{equation*} $$

-> model yeast/coilseq - sequence-dependence of DNA state!

--- .class #id 

### Growth & Gene Expression in E. coli & <i>Cyanobacteria</i>

<img src="assets/img/ecoli_20141014.png" height="300">
<img src="assets/img/fritz_the_platypus.gif" alt="https://upload.wikimedia.org/wikipedia/en/c/c2/Platypus_sketch_by_Hmich176.gif" height="350">

<div style='text-align: right;'>... &#169; fritz, the <i>platypus</i></div>

`platexpress`

--- .class #id 

## Growth & Stress

red/blue genes in batch growth:

yeast diauxie: expo phase is not "balanced", slow transition, atp-model?

blue genes!? phase of low energy, stress, differentiation 

--- .class #id 

### Stress & Cell Structure 

[//]: # (Comment ![Fritz](assets/img/fritz_the_platypus.gif))

cells are well prepared for stress: differentiation

stress: P-bodies form, cell becomes granular, phase-transition

show osci water structure paper

--- .class #id 

### Stress & Chromatin

amariei: three phases of nucleosome condensation

--- .class #id 

### Working Hypothesis: Chromatin Remodeling

-> model chromatin remodeling, but ATP/ADP general, electron transport chain

--- .class #id 

### Stress & Pervasive Transcription in Yeast

RNAseq data!

noncoding, antisense expression: only during low energy phase

upstream noncoding: detected by Karl, segmenTier, potentially new mechanism
after yeast WGD

--- .class #id 

## THE END

concepts and tools for cyano/bacteria, coilseq

--- .class #id 






