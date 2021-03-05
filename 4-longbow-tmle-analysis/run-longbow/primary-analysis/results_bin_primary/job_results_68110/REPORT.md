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

|agecat      |studyid   |country                      |predfeed3 | pers_wast| n_cell|    n|
|:-----------|:---------|:----------------------------|:---------|---------:|------:|----:|
|0-24 months |EE        |PAKISTAN                     |1         |         0|     38|   39|
|0-24 months |EE        |PAKISTAN                     |1         |         1|      1|   39|
|0-24 months |EE        |PAKISTAN                     |0         |         0|      0|   39|
|0-24 months |EE        |PAKISTAN                     |0         |         1|      0|   39|
|0-24 months |GMS-Nepal |NEPAL                        |1         |         0|    326|  457|
|0-24 months |GMS-Nepal |NEPAL                        |1         |         1|     54|  457|
|0-24 months |GMS-Nepal |NEPAL                        |0         |         0|     63|  457|
|0-24 months |GMS-Nepal |NEPAL                        |0         |         1|     14|  457|
|0-24 months |JiVitA-3  |BANGLADESH                   |1         |         0|   7715| 8954|
|0-24 months |JiVitA-3  |BANGLADESH                   |1         |         1|    470| 8954|
|0-24 months |JiVitA-3  |BANGLADESH                   |0         |         0|    730| 8954|
|0-24 months |JiVitA-3  |BANGLADESH                   |0         |         1|     39| 8954|
|0-24 months |JiVitA-4  |BANGLADESH                   |1         |         0|    136|  163|
|0-24 months |JiVitA-4  |BANGLADESH                   |1         |         1|     10|  163|
|0-24 months |JiVitA-4  |BANGLADESH                   |0         |         0|     16|  163|
|0-24 months |JiVitA-4  |BANGLADESH                   |0         |         1|      1|  163|
|0-24 months |MAL-ED    |BANGLADESH                   |1         |         0|    188|  240|
|0-24 months |MAL-ED    |BANGLADESH                   |1         |         1|      9|  240|
|0-24 months |MAL-ED    |BANGLADESH                   |0         |         0|     40|  240|
|0-24 months |MAL-ED    |BANGLADESH                   |0         |         1|      3|  240|
|0-24 months |MAL-ED    |BRAZIL                       |1         |         0|     94|  195|
|0-24 months |MAL-ED    |BRAZIL                       |1         |         1|      2|  195|
|0-24 months |MAL-ED    |BRAZIL                       |0         |         0|     99|  195|
|0-24 months |MAL-ED    |BRAZIL                       |0         |         1|      0|  195|
|0-24 months |MAL-ED    |INDIA                        |1         |         0|    137|  215|
|0-24 months |MAL-ED    |INDIA                        |1         |         1|     13|  215|
|0-24 months |MAL-ED    |INDIA                        |0         |         0|     60|  215|
|0-24 months |MAL-ED    |INDIA                        |0         |         1|      5|  215|
|0-24 months |MAL-ED    |NEPAL                        |1         |         0|    112|  228|
|0-24 months |MAL-ED    |NEPAL                        |1         |         1|      2|  228|
|0-24 months |MAL-ED    |NEPAL                        |0         |         0|    112|  228|
|0-24 months |MAL-ED    |NEPAL                        |0         |         1|      2|  228|
|0-24 months |MAL-ED    |PERU                         |1         |         0|    181|  281|
|0-24 months |MAL-ED    |PERU                         |1         |         1|      1|  281|
|0-24 months |MAL-ED    |PERU                         |0         |         0|     99|  281|
|0-24 months |MAL-ED    |PERU                         |0         |         1|      0|  281|
|0-24 months |MAL-ED    |SOUTH AFRICA                 |1         |         0|     69|  264|
|0-24 months |MAL-ED    |SOUTH AFRICA                 |1         |         1|      1|  264|
|0-24 months |MAL-ED    |SOUTH AFRICA                 |0         |         0|    193|  264|
|0-24 months |MAL-ED    |SOUTH AFRICA                 |0         |         1|      1|  264|
|0-24 months |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |         0|     64|  218|
|0-24 months |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |         1|      0|  218|
|0-24 months |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |         0|    154|  218|
|0-24 months |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |         1|      0|  218|


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/91e31dcb-5e89-4fba-9d49-605eef44cbd0/0a70fdb4-58bb-434d-b07a-25350fe67b4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91e31dcb-5e89-4fba-9d49-605eef44cbd0/0a70fdb4-58bb-434d-b07a-25350fe67b4c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91e31dcb-5e89-4fba-9d49-605eef44cbd0/0a70fdb4-58bb-434d-b07a-25350fe67b4c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91e31dcb-5e89-4fba-9d49-605eef44cbd0/0a70fdb4-58bb-434d-b07a-25350fe67b4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1416696| 0.1064912| 0.1768480|
|0-24 months |GMS-Nepal |NEPAL      |0                  |NA             | 0.1705266| 0.0816731| 0.2593801|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0574499| 0.0516612| 0.0632386|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0520849| 0.0360379| 0.0681319|
|0-24 months |MAL-ED    |INDIA      |1                  |NA             | 0.0866667| 0.0415377| 0.1317956|
|0-24 months |MAL-ED    |INDIA      |0                  |NA             | 0.0769231| 0.0119922| 0.1418539|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1487965| 0.1161318| 0.1814612|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0568461| 0.0514610| 0.0622312|
|0-24 months |MAL-ED    |INDIA      |NA                 |NA             | 0.0837209| 0.0466125| 0.1208293|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |0                  |1              | 1.203693| 0.6755149| 2.144846|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |1              | 0.906614| 0.6510653| 1.262468|
|0-24 months |MAL-ED    |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED    |INDIA      |0                  |1              | 0.887574| 0.3292108| 2.392958|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             |  0.0071269| -0.0086965| 0.0229502|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0006038| -0.0021153| 0.0009076|
|0-24 months |MAL-ED    |INDIA      |1                  |NA             | -0.0029457| -0.0268592| 0.0209678|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             |  0.0478969| -0.0642842| 0.1482536|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0106223| -0.0374420| 0.0155041|
|0-24 months |MAL-ED    |INDIA      |1                  |NA             | -0.0351852| -0.3636591| 0.2141670|
