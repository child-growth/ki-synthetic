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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |hhwealth_quart | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |         0|     93|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |         0|     83|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |         1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |         0|     89|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |         1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |         0|     85|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |         1|      6|   373|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |         0|    375|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |         1|      9|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |         0|    199|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |         1|      4|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |         0|    197|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |         1|     11|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |         0|    217|  1023|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |         1|     11|  1023|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |         0|    754|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |         1|     19|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |         0|    556|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |         1|     48|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |         0|    476|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |         1|     27|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |         0|    881|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |         1|     50|  2811|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |         0|     52|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |         0|     59|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |         0|     52|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |         0|     52|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |         1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |         0|    132|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |         1|     17|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |         0|    123|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |         1|     25|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |         0|    137|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |         1|     20|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |         0|    125|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |         1|     18|   597|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |         0|     90|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |         1|     10|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |         0|     95|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |         1|     10|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |         0|     87|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |         1|     15|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |         0|     90|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |         1|     13|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |         0|   4505| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |         1|    205| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |         0|   3107| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |         1|    254| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |         0|   3440| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |         1|    221| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |         0|   3847| 15796|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |         1|    217| 15796|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |         0|   1234|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |         1|     73|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |         0|   1191|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |         1|    133|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |         0|   1199|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |         1|    116|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |         0|   1229|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |         1|    104|  5279|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |         0|    188|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |         1|      1|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |         0|    172|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |         1|      3|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |         0|    176|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |         1|      2|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |         0|    173|   715|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |         1|      0|   715|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |         0|     57|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |         1|      4|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |         0|     57|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |         1|      3|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |         0|     56|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |         1|      5|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |         0|     59|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |         1|      1|   242|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |         0|     52|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |         1|      1|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |         0|     52|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |         1|      1|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |         0|     53|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |         1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |         0|     51|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |         1|      0|   210|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |         0|     55|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |         1|      4|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |         0|     55|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |         1|      5|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |         0|     52|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |         1|      6|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |         0|     53|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |         1|      5|   235|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |         0|     58|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |         1|      1|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |         0|     58|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |         1|      1|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |         0|     59|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |         1|      0|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |         0|     58|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |         1|      1|   236|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |         0|     68|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |         1|      0|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |         0|     68|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |         1|      0|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |         0|     71|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |         1|      0|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |         0|     63|   271|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |         1|      1|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |         0|     64|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |         1|      0|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |         0|     64|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |         1|      0|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |         0|     63|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |         1|      1|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |         0|     63|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |         1|      1|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |         0|     63|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |         0|     63|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |         0|     62|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |         0|     62|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |         1|      0|   250|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |         0|    142|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |         0|    162|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |         0|    167|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |         0|    155|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |         1|      4|   641|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |         0|    524|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |         1|     12|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |         0|    624|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |         1|     25|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |         0|    430|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |         1|      7|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |         0|    521|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |         1|     14|  2157|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
![](/tmp/0b1a8338-7ee3-421b-8539-b8ef759ba7a6/68efe78f-806f-4a5e-b65f-a3eabf520976/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b1a8338-7ee3-421b-8539-b8ef759ba7a6/68efe78f-806f-4a5e-b65f-a3eabf520976/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b1a8338-7ee3-421b-8539-b8ef759ba7a6/68efe78f-806f-4a5e-b65f-a3eabf520976/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b1a8338-7ee3-421b-8539-b8ef759ba7a6/68efe78f-806f-4a5e-b65f-a3eabf520976/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.0249742| 0.0139039| 0.0360444|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.0835222| 0.0615107| 0.1055336|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.0520516| 0.0325953| 0.0715079|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.0529435| 0.0384511| 0.0674358|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.1145705| 0.0631561| 0.1659849|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.1679246| 0.1072611| 0.2285881|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.1293195| 0.0765931| 0.1820459|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.1254439| 0.0707717| 0.1801161|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.0991347| 0.0401997| 0.1580698|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.1000109| 0.0437827| 0.1562392|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.1483184| 0.0785420| 0.2180948|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.1300360| 0.0654824| 0.1945897|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.0475732| 0.0377287| 0.0574178|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.0655221| 0.0543398| 0.0767043|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.0613084| 0.0509723| 0.0716445|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.0577212| 0.0484240| 0.0670183|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.0690541| 0.0499249| 0.0881833|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.0948172| 0.0725381| 0.1170963|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.0876044| 0.0707999| 0.1044089|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.0806222| 0.0613528| 0.0998916|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.0223881| 0.0098607| 0.0349154|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.0385208| 0.0237112| 0.0533304|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.0160183| 0.0042447| 0.0277919|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.0261682| 0.0126381| 0.0396983|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1340034| 0.1066544| 0.1613523|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.1170732| 0.0859146| 0.1482317|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0567865| 0.0526703| 0.0609027|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0806971| 0.0720842| 0.0893100|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0268892| 0.0200612| 0.0337172|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 3.3443432| 1.9968135| 5.601240|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 2.0842183| 1.1670858| 3.722062|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 2.1199301| 1.2589787| 3.569642|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.4656882| 0.8238535| 2.607553|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.1287331| 0.6154823| 2.069984|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.0949056| 0.5855703| 2.047266|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 1.0088386| 0.4457057| 2.283469|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 1.4961296| 0.7003185| 3.196265|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 1.3117100| 0.6044819| 2.846377|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.3772884| 1.0587505| 1.791662|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.2887162| 0.9924495| 1.673425|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.2133116| 0.9293369| 1.584059|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.3730849| 0.9628732| 1.958059|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.2686343| 0.9063043| 1.775820|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.1675217| 0.8091544| 1.684607|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 1.7205958| 0.8726409| 3.392518|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.7154844| 0.2840630| 1.802128|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 1.1688474| 0.5456139| 2.503976|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.0262532|  0.0151851| 0.0373213|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.0194329| -0.0261932| 0.0650589|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.0179384| -0.0345198| 0.0703967|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.0092133|  0.0002043| 0.0182222|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.0116430| -0.0064177| 0.0297037|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.0045011| -0.0067043| 0.0157066|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.5124835|  0.2638504| 0.6771412|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.1450177| -0.2718602| 0.4252554|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.1532242| -0.4352759| 0.5004241|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.1622443| -0.0127165| 0.3069783|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.1442799| -0.1099947| 0.3403059|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.1673958| -0.3700147| 0.4939983|
