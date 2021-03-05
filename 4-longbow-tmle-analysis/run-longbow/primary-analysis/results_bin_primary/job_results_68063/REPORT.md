---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |cleanck | ever_wasted| n_cell|   n|
|:---------------------------|:--------------|:------------|:-------|-----------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |           0|    104| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |           1|     59| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |           0|     98| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |           1|    107| 368|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |           0|      7| 589|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |           1|      2| 589|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |           0|    279| 589|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |           1|    301| 589|
|0-24 months (no birth wast) |IRC            |INDIA        |1       |           0|    107| 399|
|0-24 months (no birth wast) |IRC            |INDIA        |1       |           1|    123| 399|
|0-24 months (no birth wast) |IRC            |INDIA        |0       |           0|     84| 399|
|0-24 months (no birth wast) |IRC            |INDIA        |0       |           1|     85| 399|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |           0|      1|   2|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |           1|      0|   2|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |           0|      1|   2|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |           1|      0|   2|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |           0|      2|   3|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |           1|      0|   3|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |           0|      1|   3|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |           1|      0|   3|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |           0|    319| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |           1|     39| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |           0|    181| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |           1|     36| 575|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |           0|    471| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |           1|     90| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |           0|     94| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |           1|     32| 687|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |           0|    117| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |           1|     40| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |           0|    125| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |           1|     68| 350|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |           0|      7| 576|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |           1|      1| 576|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |           0|    456| 576|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |           1|    112| 576|
|0-6 months (no birth wast)  |IRC            |INDIA        |1       |           0|    136| 381|
|0-6 months (no birth wast)  |IRC            |INDIA        |1       |           1|     86| 381|
|0-6 months (no birth wast)  |IRC            |INDIA        |0       |           0|    115| 381|
|0-6 months (no birth wast)  |IRC            |INDIA        |0       |           1|     44| 381|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1       |           0|      1|   2|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1       |           1|      0|   2|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0       |           0|      1|   2|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0       |           1|      0|   2|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |           0|      2|   3|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |           1|      0|   3|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |           0|      1|   3|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |           1|      0|   3|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |           0|    351| 572|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |           1|      4| 572|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |           0|    208| 572|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |           1|      9| 572|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |           0|    530| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |           1|     27| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |           0|    116| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |           1|     10| 683|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f81c32c3-8bf4-4fde-a9c3-23ff73c66a62/d975587d-2b6c-4ef6-bbe8-d0a743a4dba3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f81c32c3-8bf4-4fde-a9c3-23ff73c66a62/d975587d-2b6c-4ef6-bbe8-d0a743a4dba3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f81c32c3-8bf4-4fde-a9c3-23ff73c66a62/d975587d-2b6c-4ef6-bbe8-d0a743a4dba3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f81c32c3-8bf4-4fde-a9c3-23ff73c66a62/d975587d-2b6c-4ef6-bbe8-d0a743a4dba3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.3763957| 0.2971334| 0.4556579|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0                  |NA             | 0.5411977| 0.4713113| 0.6110842|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |NA             | 0.5223048| 0.4550347| 0.5895750|
|0-24 months (no birth wast) |IRC            |INDIA      |0                  |NA             | 0.5036202| 0.4215374| 0.5857030|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.1083321| 0.0756716| 0.1409926|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0                  |NA             | 0.1664495| 0.1149708| 0.2179283|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |NA             | 0.1614627| 0.1310735| 0.1918520|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0                  |NA             | 0.2570619| 0.1811175| 0.3330064|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.2625839| 0.1853532| 0.3398147|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0                  |NA             | 0.3860364| 0.3146459| 0.4574268|
|0-6 months (no birth wast)  |IRC            |INDIA      |1                  |NA             | 0.3869177| 0.3220686| 0.4517668|
|0-6 months (no birth wast)  |IRC            |INDIA      |0                  |NA             | 0.2765847| 0.2051985| 0.3479708|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1                  |NA             | 0.0483010| 0.0304624| 0.0661396|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0                  |NA             | 0.0788625| 0.0309193| 0.1268058|


### Parameter: E(Y)


|agecat                      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.4510870| 0.4001777| 0.5019962|
|0-24 months (no birth wast) |IRC            |INDIA      |NA                 |NA             | 0.5213033| 0.4722258| 0.5703807|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.1304348| 0.1028836| 0.1579859|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.3085714| 0.2601110| 0.3570318|
|0-6 months (no birth wast)  |IRC            |INDIA      |NA                 |NA             | 0.3412073| 0.2935379| 0.3888768|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|


### Parameter: RR


|agecat                      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0                  |1              | 1.4378427| 1.1205206| 1.8450278|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |IRC            |INDIA      |0                  |1              | 0.9642266| 0.7831421| 1.1871829|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0                  |1              | 1.5364743| 0.9971881| 2.3674103|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0                  |1              | 1.5920820| 1.1227849| 2.2575340|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0                  |1              | 1.4701446| 1.0376698| 2.0828642|
|0-6 months (no birth wast)  |IRC            |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |IRC            |INDIA      |0                  |1              | 0.7148411| 0.5256111| 0.9721975|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0                  |1              | 1.6327295| 0.8015296| 3.3258980|


### Parameter: PAR


|agecat                      |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.0746913|  0.0115378|  0.1378448|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |NA             | -0.0010016| -0.0471076|  0.0451044|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |NA             |  0.0221027| -0.0009577|  0.0451630|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |NA             |  0.0161210|  0.0008916|  0.0313503|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.0459875| -0.0172580|  0.1092330|
|0-6 months (no birth wast)  |IRC            |INDIA      |1                  |NA             | -0.0457103| -0.0863600| -0.0050607|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1                  |NA             |  0.0058717| -0.0034937|  0.0152372|


### Parameter: PAF


|agecat                      |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.1655807|  0.0126957|  0.2947914|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |NA             | -0.0019213| -0.0943867|  0.0827317|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |NA             |  0.1694537| -0.0242197|  0.3265046|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |NA             |  0.0907794|  0.0018102|  0.1718188|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.1490336| -0.0825549|  0.3310788|
|0-6 months (no birth wast)  |IRC            |INDIA      |1                  |NA             | -0.1339664| -0.2597120| -0.0207729|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1                  |NA             |  0.1083892| -0.0788890|  0.2631588|
