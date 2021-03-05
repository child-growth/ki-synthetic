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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid   |country                      |predfeed3 | ever_swasted| n_cell|     n|
|:---------------------------|:---------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |1         |            0|     34|    39|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |1         |            1|      5|    39|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |0         |            0|      0|    39|
|0-24 months (no birth wast) |EE        |PAKISTAN                     |0         |            1|      0|    39|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1         |            0|    283|   453|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |1         |            1|     93|   453|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |0         |            0|     62|   453|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL                        |0         |            1|     15|   453|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1         |            0|  12886| 14768|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |1         |            1|    478| 14768|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |0         |            0|   1347| 14768|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH                   |0         |            1|     57| 14768|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |1         |            0|    142|   164|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |1         |            1|      5|   164|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |0         |            0|     16|   164|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH                   |0         |            1|      1|   164|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1         |            0|    190|   244|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |1         |            1|     10|   244|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |0         |            0|     42|   244|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH                   |0         |            1|      2|   244|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |1         |            0|     94|   202|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |1         |            1|      4|   202|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |0         |            0|    104|   202|
|0-24 months (no birth wast) |MAL-ED    |BRAZIL                       |0         |            1|      0|   202|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1         |            0|    140|   212|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |1         |            1|     10|   212|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |0         |            0|     60|   212|
|0-24 months (no birth wast) |MAL-ED    |INDIA                        |0         |            1|      2|   212|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1         |            0|    111|   227|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |1         |            1|      2|   227|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |0         |            0|    113|   227|
|0-24 months (no birth wast) |MAL-ED    |NEPAL                        |0         |            1|      1|   227|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1         |            0|    184|   287|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |1         |            1|      4|   287|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |0         |            0|     99|   287|
|0-24 months (no birth wast) |MAL-ED    |PERU                         |0         |            1|      0|   287|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1         |            0|     70|   269|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |1         |            1|      1|   269|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |0         |            0|    188|   269|
|0-24 months (no birth wast) |MAL-ED    |SOUTH AFRICA                 |0         |            1|     10|   269|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |            0|     63|   219|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |            1|      2|   219|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |            0|    149|   219|
|0-24 months (no birth wast) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |            1|      5|   219|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b5c503c6-7304-48ce-9abb-dde0bd7c0268/ef7dcfff-b28d-4744-964d-ad4ca842577b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5c503c6-7304-48ce-9abb-dde0bd7c0268/ef7dcfff-b28d-4744-964d-ad4ca842577b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5c503c6-7304-48ce-9abb-dde0bd7c0268/ef7dcfff-b28d-4744-964d-ad4ca842577b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5c503c6-7304-48ce-9abb-dde0bd7c0268/ef7dcfff-b28d-4744-964d-ad4ca842577b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.2481094| 0.2044224| 0.2917965|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.2058346| 0.1165161| 0.2951531|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0357047| 0.0321850| 0.0392244|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0414047| 0.0277270| 0.0550824|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2384106| 0.1991278| 0.2776934|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0362270| 0.0327939| 0.0396601|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate| ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|--------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 0.8296122| 0.519324| 1.325293|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.1596427| 0.820625| 1.638716|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0096988| -0.0266555| 0.0072578|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0005223| -0.0008260| 0.0018705|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0406813| -0.1142104| 0.0279955|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0144166| -0.0233515| 0.0507908|
