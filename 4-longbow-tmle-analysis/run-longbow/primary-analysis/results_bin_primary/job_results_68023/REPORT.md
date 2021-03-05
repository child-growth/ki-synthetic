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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |trth2o | ever_swasted| n_cell|   n|
|:---------------------------|:--------------|:----------------------------|:------|------------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |            0|    103| 119|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |            1|     16| 119|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |            0|      0| 119|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |            1|      0| 119|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |            0|      1|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |            1|      0|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |            0|      2|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |            1|      1|   4|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |            0|     93| 122|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |            1|     29| 122|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |            0|      0| 122|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |            1|      0| 122|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1      |            0|    127| 135|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1      |            1|      6| 135|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0      |            0|      2| 135|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0      |            1|      0| 135|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1      |            0|     13| 103|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1      |            1|      0| 103|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0      |            0|     88| 103|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0      |            1|      2| 103|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1      |            0|      4|   9|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1      |            1|      0|   9|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0      |            0|      5|   9|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0      |            1|      0|   9|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1      |            0|     68|  83|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1      |            1|      1|  83|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0      |            0|     14|  83|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0      |            1|      0|  83|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1      |            0|     39|  49|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1      |            1|      0|  49|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0      |            0|     10|  49|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0      |            1|      0|  49|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1      |            0|      2|  12|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1      |            1|      0|  12|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0      |            0|      6|  12|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0      |            1|      4|  12|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      6|  43|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      0|  43|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|     35|  43|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|      2|  43|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |            0|    412| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |            1|     14| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |            0|    322| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |            1|      6| 754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |            0|     16| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |            1|      0| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |            0|    652| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |            1|     19| 687|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/2f471f9c-4cc9-41dc-8438-adf3530b4324/1177dd1c-59be-4178-8dca-3a9c220ae4f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2f471f9c-4cc9-41dc-8438-adf3530b4324/1177dd1c-59be-4178-8dca-3a9c220ae4f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2f471f9c-4cc9-41dc-8438-adf3530b4324/1177dd1c-59be-4178-8dca-3a9c220ae4f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2f471f9c-4cc9-41dc-8438-adf3530b4324/1177dd1c-59be-4178-8dca-3a9c220ae4f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0328638| 0.0159230| 0.0498047|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0                  |NA             | 0.0182927| 0.0037806| 0.0328047|


### Parameter: E(Y)


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0265252| 0.0150478| 0.0380026|


### Parameter: RR


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0                  |1              | 0.5566202| 0.2161107| 1.433645|


### Parameter: PAR


|agecat                      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | -0.0063387| -0.0160561| 0.0033788|


### Parameter: PAF


|agecat                      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower| ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|--------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | -0.2389671| -0.6466972| 0.067807|
