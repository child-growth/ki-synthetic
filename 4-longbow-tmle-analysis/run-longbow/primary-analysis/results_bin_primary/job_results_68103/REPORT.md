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

**Outcome Variable:** pers_wast

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

|agecat      |studyid        |country                      |trth2o | pers_wast| n_cell|   n|
|:-----------|:--------------|:----------------------------|:------|---------:|------:|---:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |         0|    112| 120|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |         1|      8| 120|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0      |         0|      0| 120|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0      |         1|      0| 120|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         0|      1|   4|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         1|      0|   4|
|0-24 months |GMS-Nepal      |NEPAL                        |0      |         0|      3|   4|
|0-24 months |GMS-Nepal      |NEPAL                        |0      |         1|      0|   4|
|0-24 months |IRC            |INDIA                        |1      |         0|    105| 122|
|0-24 months |IRC            |INDIA                        |1      |         1|     17| 122|
|0-24 months |IRC            |INDIA                        |0      |         0|      0| 122|
|0-24 months |IRC            |INDIA                        |0      |         1|      0| 122|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |         0|    127| 135|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |         1|      6| 135|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |         0|      2| 135|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |         1|      0| 135|
|0-24 months |MAL-ED         |BRAZIL                       |1      |         0|     13| 103|
|0-24 months |MAL-ED         |BRAZIL                       |1      |         1|      0| 103|
|0-24 months |MAL-ED         |BRAZIL                       |0      |         0|     90| 103|
|0-24 months |MAL-ED         |BRAZIL                       |0      |         1|      0| 103|
|0-24 months |MAL-ED         |INDIA                        |1      |         0|      4|   9|
|0-24 months |MAL-ED         |INDIA                        |1      |         1|      0|   9|
|0-24 months |MAL-ED         |INDIA                        |0      |         0|      4|   9|
|0-24 months |MAL-ED         |INDIA                        |0      |         1|      1|   9|
|0-24 months |MAL-ED         |NEPAL                        |1      |         0|     69|  83|
|0-24 months |MAL-ED         |NEPAL                        |1      |         1|      0|  83|
|0-24 months |MAL-ED         |NEPAL                        |0      |         0|     13|  83|
|0-24 months |MAL-ED         |NEPAL                        |0      |         1|      1|  83|
|0-24 months |MAL-ED         |PERU                         |1      |         0|     39|  49|
|0-24 months |MAL-ED         |PERU                         |1      |         1|      0|  49|
|0-24 months |MAL-ED         |PERU                         |0      |         0|     10|  49|
|0-24 months |MAL-ED         |PERU                         |0      |         1|      0|  49|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |         0|      2|  12|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |         1|      0|  12|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |         0|     10|  12|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |         1|      0|  12|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |         0|      6|  43|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |         1|      0|  43|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |         0|     37|  43|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |         1|      0|  43|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |         0|    390| 730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |         1|     18| 730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0      |         0|    314| 730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0      |         1|      8| 730|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         0|     14| 641|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         1|      0| 641|
|0-24 months |PROVIDE        |BANGLADESH                   |0      |         0|    612| 641|
|0-24 months |PROVIDE        |BANGLADESH                   |0      |         1|     15| 641|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/e361e29b-0554-4ff7-98be-d012ecc60b46/c839895d-dd0a-48b4-9ebb-bac54695997e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e361e29b-0554-4ff7-98be-d012ecc60b46/c839895d-dd0a-48b4-9ebb-bac54695997e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e361e29b-0554-4ff7-98be-d012ecc60b46/c839895d-dd0a-48b4-9ebb-bac54695997e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e361e29b-0554-4ff7-98be-d012ecc60b46/c839895d-dd0a-48b4-9ebb-bac54695997e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0441176| 0.0241777| 0.0640576|
|0-24 months |NIH-Crypto |BANGLADESH |0                  |NA             | 0.0248447| 0.0078321| 0.0418574|


### Parameter: E(Y)


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate| ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|--------:|---------:|
|0-24 months |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0356164| 0.022163| 0.0490699|


### Parameter: RR


|agecat      |studyid    |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto |BANGLADESH |0                  |1              | 0.563147| 0.2479108| 1.279228|


### Parameter: PAR


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | -0.0085012| -0.0200837| 0.0030813|


### Parameter: PAF


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | -0.2386878| -0.5956124| 0.0383959|
