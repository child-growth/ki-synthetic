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

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |birthlen   | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:----------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |         0|     16|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |         1|      0|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<48 cm     |         0|     45|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<48 cm     |         1|      5|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |         0|     39|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |         1|      1|   106|
|0-24 months |CMIN           |BANGLADESH                   |>=50 cm    |         0|      0|    12|
|0-24 months |CMIN           |BANGLADESH                   |>=50 cm    |         1|      0|    12|
|0-24 months |CMIN           |BANGLADESH                   |<48 cm     |         0|      7|    12|
|0-24 months |CMIN           |BANGLADESH                   |<48 cm     |         1|      0|    12|
|0-24 months |CMIN           |BANGLADESH                   |[48-50) cm |         0|      5|    12|
|0-24 months |CMIN           |BANGLADESH                   |[48-50) cm |         1|      0|    12|
|0-24 months |COHORTS        |GUATEMALA                    |>=50 cm    |         0|    340|   699|
|0-24 months |COHORTS        |GUATEMALA                    |>=50 cm    |         1|      7|   699|
|0-24 months |COHORTS        |GUATEMALA                    |<48 cm     |         0|    136|   699|
|0-24 months |COHORTS        |GUATEMALA                    |<48 cm     |         1|      5|   699|
|0-24 months |COHORTS        |GUATEMALA                    |[48-50) cm |         0|    206|   699|
|0-24 months |COHORTS        |GUATEMALA                    |[48-50) cm |         1|      5|   699|
|0-24 months |COHORTS        |INDIA                        |>=50 cm    |         0|   1096|  5267|
|0-24 months |COHORTS        |INDIA                        |>=50 cm    |         1|     76|  5267|
|0-24 months |COHORTS        |INDIA                        |<48 cm     |         0|   1865|  5267|
|0-24 months |COHORTS        |INDIA                        |<48 cm     |         1|    253|  5267|
|0-24 months |COHORTS        |INDIA                        |[48-50) cm |         0|   1799|  5267|
|0-24 months |COHORTS        |INDIA                        |[48-50) cm |         1|    178|  5267|
|0-24 months |COHORTS        |PHILIPPINES                  |>=50 cm    |         0|    998|  2804|
|0-24 months |COHORTS        |PHILIPPINES                  |>=50 cm    |         1|     39|  2804|
|0-24 months |COHORTS        |PHILIPPINES                  |<48 cm     |         0|    653|  2804|
|0-24 months |COHORTS        |PHILIPPINES                  |<48 cm     |         1|     48|  2804|
|0-24 months |COHORTS        |PHILIPPINES                  |[48-50) cm |         0|   1010|  2804|
|0-24 months |COHORTS        |PHILIPPINES                  |[48-50) cm |         1|     56|  2804|
|0-24 months |CONTENT        |PERU                         |>=50 cm    |         0|      1|     2|
|0-24 months |CONTENT        |PERU                         |>=50 cm    |         1|      0|     2|
|0-24 months |CONTENT        |PERU                         |<48 cm     |         0|      1|     2|
|0-24 months |CONTENT        |PERU                         |<48 cm     |         1|      0|     2|
|0-24 months |CONTENT        |PERU                         |[48-50) cm |         0|      0|     2|
|0-24 months |CONTENT        |PERU                         |[48-50) cm |         1|      0|     2|
|0-24 months |EE             |PAKISTAN                     |>=50 cm    |         0|     20|   240|
|0-24 months |EE             |PAKISTAN                     |>=50 cm    |         1|      2|   240|
|0-24 months |EE             |PAKISTAN                     |<48 cm     |         0|    157|   240|
|0-24 months |EE             |PAKISTAN                     |<48 cm     |         1|     15|   240|
|0-24 months |EE             |PAKISTAN                     |[48-50) cm |         0|     43|   240|
|0-24 months |EE             |PAKISTAN                     |[48-50) cm |         1|      3|   240|
|0-24 months |GMS-Nepal      |NEPAL                        |>=50 cm    |         0|     84|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |>=50 cm    |         1|      6|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |<48 cm     |         0|    275|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |<48 cm     |         1|     51|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |[48-50) cm |         0|    157|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |[48-50) cm |         1|     23|   596|
|0-24 months |IRC            |INDIA                        |>=50 cm    |         0|    124|   391|
|0-24 months |IRC            |INDIA                        |>=50 cm    |         1|     18|   391|
|0-24 months |IRC            |INDIA                        |<48 cm     |         0|    100|   391|
|0-24 months |IRC            |INDIA                        |<48 cm     |         1|     11|   391|
|0-24 months |IRC            |INDIA                        |[48-50) cm |         0|    121|   391|
|0-24 months |IRC            |INDIA                        |[48-50) cm |         1|     17|   391|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=50 cm    |         0|    761| 13275|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=50 cm    |         1|     48| 13275|
|0-24 months |JiVitA-3       |BANGLADESH                   |<48 cm     |         0|   8651| 13275|
|0-24 months |JiVitA-3       |BANGLADESH                   |<48 cm     |         1|    527| 13275|
|0-24 months |JiVitA-3       |BANGLADESH                   |[48-50) cm |         0|   3137| 13275|
|0-24 months |JiVitA-3       |BANGLADESH                   |[48-50) cm |         1|    151| 13275|
|0-24 months |JiVitA-4       |BANGLADESH                   |>=50 cm    |         0|   1131|  4410|
|0-24 months |JiVitA-4       |BANGLADESH                   |>=50 cm    |         1|     67|  4410|
|0-24 months |JiVitA-4       |BANGLADESH                   |<48 cm     |         0|   1922|  4410|
|0-24 months |JiVitA-4       |BANGLADESH                   |<48 cm     |         1|    218|  4410|
|0-24 months |JiVitA-4       |BANGLADESH                   |[48-50) cm |         0|   1013|  4410|
|0-24 months |JiVitA-4       |BANGLADESH                   |[48-50) cm |         1|     59|  4410|
|0-24 months |Keneba         |GAMBIA                       |>=50 cm    |         0|    711|  1509|
|0-24 months |Keneba         |GAMBIA                       |>=50 cm    |         1|     31|  1509|
|0-24 months |Keneba         |GAMBIA                       |<48 cm     |         0|    262|  1509|
|0-24 months |Keneba         |GAMBIA                       |<48 cm     |         1|     18|  1509|
|0-24 months |Keneba         |GAMBIA                       |[48-50) cm |         0|    456|  1509|
|0-24 months |Keneba         |GAMBIA                       |[48-50) cm |         1|     31|  1509|
|0-24 months |MAL-ED         |BANGLADESH                   |>=50 cm    |         0|     32|   218|
|0-24 months |MAL-ED         |BANGLADESH                   |>=50 cm    |         1|      3|   218|
|0-24 months |MAL-ED         |BANGLADESH                   |<48 cm     |         0|     98|   218|
|0-24 months |MAL-ED         |BANGLADESH                   |<48 cm     |         1|      7|   218|
|0-24 months |MAL-ED         |BANGLADESH                   |[48-50) cm |         0|     76|   218|
|0-24 months |MAL-ED         |BANGLADESH                   |[48-50) cm |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL                       |>=50 cm    |         0|     22|    62|
|0-24 months |MAL-ED         |BRAZIL                       |>=50 cm    |         1|      0|    62|
|0-24 months |MAL-ED         |BRAZIL                       |<48 cm     |         0|     18|    62|
|0-24 months |MAL-ED         |BRAZIL                       |<48 cm     |         1|      0|    62|
|0-24 months |MAL-ED         |BRAZIL                       |[48-50) cm |         0|     21|    62|
|0-24 months |MAL-ED         |BRAZIL                       |[48-50) cm |         1|      1|    62|
|0-24 months |MAL-ED         |INDIA                        |>=50 cm    |         0|      8|    42|
|0-24 months |MAL-ED         |INDIA                        |>=50 cm    |         1|      0|    42|
|0-24 months |MAL-ED         |INDIA                        |<48 cm     |         0|     21|    42|
|0-24 months |MAL-ED         |INDIA                        |<48 cm     |         1|      0|    42|
|0-24 months |MAL-ED         |INDIA                        |[48-50) cm |         0|     11|    42|
|0-24 months |MAL-ED         |INDIA                        |[48-50) cm |         1|      2|    42|
|0-24 months |MAL-ED         |NEPAL                        |>=50 cm    |         0|      6|    27|
|0-24 months |MAL-ED         |NEPAL                        |>=50 cm    |         1|      1|    27|
|0-24 months |MAL-ED         |NEPAL                        |<48 cm     |         0|     12|    27|
|0-24 months |MAL-ED         |NEPAL                        |<48 cm     |         1|      0|    27|
|0-24 months |MAL-ED         |NEPAL                        |[48-50) cm |         0|      8|    27|
|0-24 months |MAL-ED         |NEPAL                        |[48-50) cm |         1|      0|    27|
|0-24 months |MAL-ED         |PERU                         |>=50 cm    |         0|     39|   220|
|0-24 months |MAL-ED         |PERU                         |>=50 cm    |         1|      0|   220|
|0-24 months |MAL-ED         |PERU                         |<48 cm     |         0|     87|   220|
|0-24 months |MAL-ED         |PERU                         |<48 cm     |         1|      1|   220|
|0-24 months |MAL-ED         |PERU                         |[48-50) cm |         0|     93|   220|
|0-24 months |MAL-ED         |PERU                         |[48-50) cm |         1|      0|   220|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |         0|     30|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |         1|      0|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<48 cm     |         0|     29|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<48 cm     |         1|      0|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |         0|     43|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |         1|      2|   104|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |         0|     20|   121|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |         1|      0|   121|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |         0|     41|   121|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |         1|      0|   121|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |         0|     60|   121|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |         1|      0|   121|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=50 cm    |         0|     99|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=50 cm    |         1|      7|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |<48 cm     |         0|    182|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |<48 cm     |         1|     27|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |[48-50) cm |         0|    187|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |[48-50) cm |         1|     13|   515|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=50 cm    |         0|    165|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=50 cm    |         1|      0|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<48 cm     |         0|    268|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<48 cm     |         1|     12|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[48-50) cm |         0|    271|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[48-50) cm |         1|     14|   730|
|0-24 months |PROBIT         |BELARUS                      |>=50 cm    |         0|  14909| 16583|
|0-24 months |PROBIT         |BELARUS                      |>=50 cm    |         1|    132| 16583|
|0-24 months |PROBIT         |BELARUS                      |<48 cm     |         0|    180| 16583|
|0-24 months |PROBIT         |BELARUS                      |<48 cm     |         1|      0| 16583|
|0-24 months |PROBIT         |BELARUS                      |[48-50) cm |         0|   1360| 16583|
|0-24 months |PROBIT         |BELARUS                      |[48-50) cm |         1|      2| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |>=50 cm    |         0|    153|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |>=50 cm    |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |<48 cm     |         0|    219|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |<48 cm     |         1|      8|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |[48-50) cm |         0|    254|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |[48-50) cm |         1|      5|   641|
|0-24 months |ResPak         |PAKISTAN                     |>=50 cm    |         0|      8|    35|
|0-24 months |ResPak         |PAKISTAN                     |>=50 cm    |         1|      1|    35|
|0-24 months |ResPak         |PAKISTAN                     |<48 cm     |         0|     15|    35|
|0-24 months |ResPak         |PAKISTAN                     |<48 cm     |         1|      1|    35|
|0-24 months |ResPak         |PAKISTAN                     |[48-50) cm |         0|      9|    35|
|0-24 months |ResPak         |PAKISTAN                     |[48-50) cm |         1|      1|    35|
|0-24 months |SAS-CompFeed   |INDIA                        |>=50 cm    |         0|    198|  1353|
|0-24 months |SAS-CompFeed   |INDIA                        |>=50 cm    |         1|      8|  1353|
|0-24 months |SAS-CompFeed   |INDIA                        |<48 cm     |         0|    634|  1353|
|0-24 months |SAS-CompFeed   |INDIA                        |<48 cm     |         1|     78|  1353|
|0-24 months |SAS-CompFeed   |INDIA                        |[48-50) cm |         0|    410|  1353|
|0-24 months |SAS-CompFeed   |INDIA                        |[48-50) cm |         1|     25|  1353|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |         0|   2667|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |         1|     34|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<48 cm     |         0|   2929|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<48 cm     |         1|     63|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |         0|   3672|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |         1|     69|  9434|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/a81f77ba-369a-4640-932f-11515ba51738/f9d8ee85-e6a2-4730-9b50-2e7d8da8ffa2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a81f77ba-369a-4640-932f-11515ba51738/f9d8ee85-e6a2-4730-9b50-2e7d8da8ffa2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a81f77ba-369a-4640-932f-11515ba51738/f9d8ee85-e6a2-4730-9b50-2e7d8da8ffa2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a81f77ba-369a-4640-932f-11515ba51738/f9d8ee85-e6a2-4730-9b50-2e7d8da8ffa2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid      |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS      |GUATEMALA   |>=50 cm            |NA             | 0.0201729| 0.0053698| 0.0349760|
|0-24 months |COHORTS      |GUATEMALA   |<48 cm             |NA             | 0.0354610| 0.0049129| 0.0660091|
|0-24 months |COHORTS      |GUATEMALA   |[48-50) cm         |NA             | 0.0236967| 0.0031589| 0.0442345|
|0-24 months |COHORTS      |INDIA       |>=50 cm            |NA             | 0.0673671| 0.0530017| 0.0817326|
|0-24 months |COHORTS      |INDIA       |<48 cm             |NA             | 0.1172189| 0.1034747| 0.1309631|
|0-24 months |COHORTS      |INDIA       |[48-50) cm         |NA             | 0.0899393| 0.0772324| 0.1026461|
|0-24 months |COHORTS      |PHILIPPINES |>=50 cm            |NA             | 0.0382617| 0.0265924| 0.0499311|
|0-24 months |COHORTS      |PHILIPPINES |<48 cm             |NA             | 0.0684655| 0.0496028| 0.0873282|
|0-24 months |COHORTS      |PHILIPPINES |[48-50) cm         |NA             | 0.0517523| 0.0384022| 0.0651024|
|0-24 months |GMS-Nepal    |NEPAL       |>=50 cm            |NA             | 0.0666667| 0.0150887| 0.1182446|
|0-24 months |GMS-Nepal    |NEPAL       |<48 cm             |NA             | 0.1564417| 0.1169744| 0.1959091|
|0-24 months |GMS-Nepal    |NEPAL       |[48-50) cm         |NA             | 0.1277778| 0.0789668| 0.1765888|
|0-24 months |IRC          |INDIA       |>=50 cm            |NA             | 0.1314390| 0.0753560| 0.1875219|
|0-24 months |IRC          |INDIA       |<48 cm             |NA             | 0.0913287| 0.0361712| 0.1464862|
|0-24 months |IRC          |INDIA       |[48-50) cm         |NA             | 0.1287881| 0.0736772| 0.1838990|
|0-24 months |JiVitA-3     |BANGLADESH  |>=50 cm            |NA             | 0.0590850| 0.0400168| 0.0781533|
|0-24 months |JiVitA-3     |BANGLADESH  |<48 cm             |NA             | 0.0571422| 0.0519991| 0.0622853|
|0-24 months |JiVitA-3     |BANGLADESH  |[48-50) cm         |NA             | 0.0458931| 0.0378097| 0.0539764|
|0-24 months |JiVitA-4     |BANGLADESH  |>=50 cm            |NA             | 0.0611021| 0.0455829| 0.0766214|
|0-24 months |JiVitA-4     |BANGLADESH  |<48 cm             |NA             | 0.1010718| 0.0859492| 0.1161944|
|0-24 months |JiVitA-4     |BANGLADESH  |[48-50) cm         |NA             | 0.0548596| 0.0388625| 0.0708566|
|0-24 months |Keneba       |GAMBIA      |>=50 cm            |NA             | 0.0413627| 0.0269293| 0.0557960|
|0-24 months |Keneba       |GAMBIA      |<48 cm             |NA             | 0.0638847| 0.0349385| 0.0928310|
|0-24 months |Keneba       |GAMBIA      |[48-50) cm         |NA             | 0.0637511| 0.0419314| 0.0855708|
|0-24 months |NIH-Birth    |BANGLADESH  |>=50 cm            |NA             | 0.0660377| 0.0187141| 0.1133614|
|0-24 months |NIH-Birth    |BANGLADESH  |<48 cm             |NA             | 0.1291866| 0.0836702| 0.1747030|
|0-24 months |NIH-Birth    |BANGLADESH  |[48-50) cm         |NA             | 0.0650000| 0.0308007| 0.0991993|
|0-24 months |SAS-CompFeed |INDIA       |>=50 cm            |NA             | 0.0388350| 0.0114714| 0.0661985|
|0-24 months |SAS-CompFeed |INDIA       |<48 cm             |NA             | 0.1095506| 0.0778598| 0.1412413|
|0-24 months |SAS-CompFeed |INDIA       |[48-50) cm         |NA             | 0.0574713| 0.0276190| 0.0873235|
|0-24 months |ZVITAMBO     |ZIMBABWE    |>=50 cm            |NA             | 0.0128389| 0.0085693| 0.0171086|
|0-24 months |ZVITAMBO     |ZIMBABWE    |<48 cm             |NA             | 0.0209019| 0.0157508| 0.0260531|
|0-24 months |ZVITAMBO     |ZIMBABWE    |[48-50) cm         |NA             | 0.0185141| 0.0141394| 0.0228887|


### Parameter: E(Y)


|agecat      |studyid      |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS      |GUATEMALA   |NA                 |NA             | 0.0243205| 0.0128927| 0.0357482|
|0-24 months |COHORTS      |INDIA       |NA                 |NA             | 0.0962597| 0.0882935| 0.1042259|
|0-24 months |COHORTS      |PHILIPPINES |NA                 |NA             | 0.0509986| 0.0428544| 0.0591428|
|0-24 months |GMS-Nepal    |NEPAL       |NA                 |NA             | 0.1342282| 0.1068369| 0.1616195|
|0-24 months |IRC          |INDIA       |NA                 |NA             | 0.1176471| 0.0856708| 0.1496233|
|0-24 months |JiVitA-3     |BANGLADESH  |NA                 |NA             | 0.0546893| 0.0503788| 0.0589997|
|0-24 months |JiVitA-4     |BANGLADESH  |NA                 |NA             | 0.0780045| 0.0689447| 0.0870643|
|0-24 months |Keneba       |GAMBIA      |NA                 |NA             | 0.0530152| 0.0417064| 0.0643241|
|0-24 months |NIH-Birth    |BANGLADESH  |NA                 |NA             | 0.0912621| 0.0663660| 0.1161582|
|0-24 months |SAS-CompFeed |INDIA       |NA                 |NA             | 0.0820399| 0.0573937| 0.1066861|
|0-24 months |ZVITAMBO     |ZIMBABWE    |NA                 |NA             | 0.0175959| 0.0149427| 0.0202492|


### Parameter: RR


|agecat      |studyid      |country     |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:------------|:-----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS      |GUATEMALA   |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS      |GUATEMALA   |<48 cm             |>=50 cm        | 1.7578521| 0.5669193| 5.450589|
|0-24 months |COHORTS      |GUATEMALA   |[48-50) cm         |>=50 cm        | 1.1746784| 0.3773324| 3.656907|
|0-24 months |COHORTS      |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS      |INDIA       |<48 cm             |>=50 cm        | 1.7400018| 1.3645921| 2.218690|
|0-24 months |COHORTS      |INDIA       |[48-50) cm         |>=50 cm        | 1.3350617| 1.0341800| 1.723481|
|0-24 months |COHORTS      |PHILIPPINES |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS      |PHILIPPINES |<48 cm             |>=50 cm        | 1.7893992| 1.1865986| 2.698427|
|0-24 months |COHORTS      |PHILIPPINES |[48-50) cm         |>=50 cm        | 1.3525860| 0.9073421| 2.016316|
|0-24 months |GMS-Nepal    |NEPAL       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal    |NEPAL       |<48 cm             |>=50 cm        | 2.3466258| 1.0399944| 5.294887|
|0-24 months |GMS-Nepal    |NEPAL       |[48-50) cm         |>=50 cm        | 1.9166667| 0.8087628| 4.542260|
|0-24 months |IRC          |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC          |INDIA       |<48 cm             |>=50 cm        | 0.6948373| 0.3319431| 1.454463|
|0-24 months |IRC          |INDIA       |[48-50) cm         |>=50 cm        | 0.9798322| 0.5332664| 1.800359|
|0-24 months |JiVitA-3     |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3     |BANGLADESH  |<48 cm             |>=50 cm        | 0.9671184| 0.6990636| 1.337958|
|0-24 months |JiVitA-3     |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.7767290| 0.5389067| 1.119503|
|0-24 months |JiVitA-4     |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4     |BANGLADESH  |<48 cm             |>=50 cm        | 1.6541456| 1.2311352| 2.222500|
|0-24 months |JiVitA-4     |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.8978341| 0.6076038| 1.326697|
|0-24 months |Keneba       |GAMBIA      |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba       |GAMBIA      |<48 cm             |>=50 cm        | 1.5445025| 0.8719807| 2.735712|
|0-24 months |Keneba       |GAMBIA      |[48-50) cm         |>=50 cm        | 1.5412718| 0.9454482| 2.512585|
|0-24 months |NIH-Birth    |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth    |BANGLADESH  |<48 cm             |>=50 cm        | 1.9562543| 0.8802817| 4.347393|
|0-24 months |NIH-Birth    |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.9842857| 0.4045972| 2.394525|
|0-24 months |SAS-CompFeed |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed |INDIA       |<48 cm             |>=50 cm        | 2.8209270| 1.5294183| 5.203043|
|0-24 months |SAS-CompFeed |INDIA       |[48-50) cm         |>=50 cm        | 1.4798851| 0.6628767| 3.303872|
|0-24 months |ZVITAMBO     |ZIMBABWE    |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO     |ZIMBABWE    |<48 cm             |>=50 cm        | 1.6280091| 1.0761819| 2.462793|
|0-24 months |ZVITAMBO     |ZIMBABWE    |[48-50) cm         |>=50 cm        | 1.4420241| 0.9589338| 2.168485|


### Parameter: PAR


|agecat      |studyid      |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS      |GUATEMALA   |>=50 cm            |NA             |  0.0041475| -0.0073486| 0.0156437|
|0-24 months |COHORTS      |INDIA       |>=50 cm            |NA             |  0.0288926|  0.0154693| 0.0423159|
|0-24 months |COHORTS      |PHILIPPINES |>=50 cm            |NA             |  0.0127368|  0.0026056| 0.0228681|
|0-24 months |GMS-Nepal    |NEPAL       |>=50 cm            |NA             |  0.0675615|  0.0165015| 0.1186216|
|0-24 months |IRC          |INDIA       |>=50 cm            |NA             | -0.0137919| -0.0581331| 0.0305493|
|0-24 months |JiVitA-3     |BANGLADESH  |>=50 cm            |NA             | -0.0043958| -0.0222791| 0.0134875|
|0-24 months |JiVitA-4     |BANGLADESH  |>=50 cm            |NA             |  0.0169024|  0.0027598| 0.0310450|
|0-24 months |Keneba       |GAMBIA      |>=50 cm            |NA             |  0.0116526|  0.0001791| 0.0231261|
|0-24 months |NIH-Birth    |BANGLADESH  |>=50 cm            |NA             |  0.0252244| -0.0187919| 0.0692407|
|0-24 months |SAS-CompFeed |INDIA       |>=50 cm            |NA             |  0.0432050|  0.0181178| 0.0682921|
|0-24 months |ZVITAMBO     |ZIMBABWE    |>=50 cm            |NA             |  0.0047570|  0.0008792| 0.0086348|


### Parameter: PAF


|agecat      |studyid      |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS      |GUATEMALA   |>=50 cm            |NA             |  0.1705374| -0.4549860| 0.5271375|
|0-24 months |COHORTS      |INDIA       |>=50 cm            |NA             |  0.3001526|  0.1484406| 0.4248359|
|0-24 months |COHORTS      |PHILIPPINES |>=50 cm            |NA             |  0.2497487|  0.0274559| 0.4212324|
|0-24 months |GMS-Nepal    |NEPAL       |>=50 cm            |NA             |  0.5033333| -0.0429660| 0.7634843|
|0-24 months |IRC          |INDIA       |>=50 cm            |NA             | -0.1172313| -0.5649207| 0.2023841|
|0-24 months |JiVitA-3     |BANGLADESH  |>=50 cm            |NA             | -0.0803772| -0.4609359| 0.2010500|
|0-24 months |JiVitA-4     |BANGLADESH  |>=50 cm            |NA             |  0.2166850|  0.0155991| 0.3766946|
|0-24 months |Keneba       |GAMBIA      |>=50 cm            |NA             |  0.2197968| -0.0240696| 0.4055901|
|0-24 months |NIH-Birth    |BANGLADESH  |>=50 cm            |NA             |  0.2763950| -0.3993750| 0.6258300|
|0-24 months |SAS-CompFeed |INDIA       |>=50 cm            |NA             |  0.5266334|  0.1384809| 0.7399060|
|0-24 months |ZVITAMBO     |ZIMBABWE    |>=50 cm            |NA             |  0.2703463|  0.0183078| 0.4576767|
