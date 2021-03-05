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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |sex    | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female |            0|    144|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female |            1|     43|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male   |            0|    137|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male   |            1|     49|   373|
|0-24 months |CMIN           |BANGLADESH                   |Female |            0|    101|   272|
|0-24 months |CMIN           |BANGLADESH                   |Female |            1|     18|   272|
|0-24 months |CMIN           |BANGLADESH                   |Male   |            0|    129|   272|
|0-24 months |CMIN           |BANGLADESH                   |Male   |            1|     24|   272|
|0-24 months |COHORTS        |GUATEMALA                    |Female |            0|    599|  1349|
|0-24 months |COHORTS        |GUATEMALA                    |Female |            1|     36|  1349|
|0-24 months |COHORTS        |GUATEMALA                    |Male   |            0|    653|  1349|
|0-24 months |COHORTS        |GUATEMALA                    |Male   |            1|     61|  1349|
|0-24 months |COHORTS        |INDIA                        |Female |            0|   3185|  7405|
|0-24 months |COHORTS        |INDIA                        |Female |            1|    366|  7405|
|0-24 months |COHORTS        |INDIA                        |Male   |            0|   3444|  7405|
|0-24 months |COHORTS        |INDIA                        |Male   |            1|    410|  7405|
|0-24 months |COHORTS        |PHILIPPINES                  |Female |            0|   1274|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Female |            1|    157|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Male   |            0|   1389|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Male   |            1|    225|  3045|
|0-24 months |CONTENT        |PERU                         |Female |            0|    109|   215|
|0-24 months |CONTENT        |PERU                         |Female |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Male   |            0|    105|   215|
|0-24 months |CONTENT        |PERU                         |Male   |            1|      1|   215|
|0-24 months |EE             |PAKISTAN                     |Female |            0|    153|   380|
|0-24 months |EE             |PAKISTAN                     |Female |            1|     32|   380|
|0-24 months |EE             |PAKISTAN                     |Male   |            0|    147|   380|
|0-24 months |EE             |PAKISTAN                     |Male   |            1|     48|   380|
|0-24 months |GMS-Nepal      |NEPAL                        |Female |            0|    239|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Female |            1|     83|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Male   |            0|    270|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Male   |            1|     94|   686|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female |            0|    162|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male   |            0|    150|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male   |            1|      3|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female |            0|   1565|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female |            1|     60|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male   |            0|   1536|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male   |            1|    105|  3266|
|0-24 months |IRC            |INDIA                        |Female |            0|    123|   410|
|0-24 months |IRC            |INDIA                        |Female |            1|     62|   410|
|0-24 months |IRC            |INDIA                        |Male   |            0|    147|   410|
|0-24 months |IRC            |INDIA                        |Male   |            1|     78|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female |            0|  12463| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female |            1|    771| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male   |            0|  12848| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male   |            1|    874| 26956|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female |            0|   2579|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female |            1|    146|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male   |            0|   2521|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male   |            1|    197|  5443|
|0-24 months |Keneba         |GAMBIA                       |Female |            0|   1198|  2920|
|0-24 months |Keneba         |GAMBIA                       |Female |            1|    213|  2920|
|0-24 months |Keneba         |GAMBIA                       |Male   |            0|   1196|  2920|
|0-24 months |Keneba         |GAMBIA                       |Male   |            1|    313|  2920|
|0-24 months |LCNI-5         |MALAWI                       |Female |            0|    418|   840|
|0-24 months |LCNI-5         |MALAWI                       |Female |            1|      3|   840|
|0-24 months |LCNI-5         |MALAWI                       |Male   |            0|    414|   840|
|0-24 months |LCNI-5         |MALAWI                       |Male   |            1|      5|   840|
|0-24 months |MAL-ED         |BANGLADESH                   |Female |            0|    121|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |Female |            1|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |Male   |            0|    121|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |Male   |            1|      8|   263|
|0-24 months |MAL-ED         |BRAZIL                       |Female |            0|    112|   233|
|0-24 months |MAL-ED         |BRAZIL                       |Female |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |Male   |            0|    117|   233|
|0-24 months |MAL-ED         |BRAZIL                       |Male   |            1|      3|   233|
|0-24 months |MAL-ED         |INDIA                        |Female |            0|    124|   251|
|0-24 months |MAL-ED         |INDIA                        |Female |            1|     14|   251|
|0-24 months |MAL-ED         |INDIA                        |Male   |            0|    101|   251|
|0-24 months |MAL-ED         |INDIA                        |Male   |            1|     12|   251|
|0-24 months |MAL-ED         |NEPAL                        |Female |            0|    107|   240|
|0-24 months |MAL-ED         |NEPAL                        |Female |            1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |Male   |            0|    124|   240|
|0-24 months |MAL-ED         |NEPAL                        |Male   |            1|      6|   240|
|0-24 months |MAL-ED         |PERU                         |Female |            0|    141|   302|
|0-24 months |MAL-ED         |PERU                         |Female |            1|      1|   302|
|0-24 months |MAL-ED         |PERU                         |Male   |            0|    157|   302|
|0-24 months |MAL-ED         |PERU                         |Male   |            1|      3|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female |            0|    152|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female |            1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male   |            0|    144|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male   |            1|     10|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female |            0|    129|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female |            1|      3|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male   |            0|    123|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male   |            1|      6|   261|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female |            0|    257|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female |            1|     39|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male   |            0|    268|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male   |            1|     60|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female |            0|    346|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female |            1|     35|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male   |            0|    346|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male   |            1|     31|   758|
|0-24 months |PROBIT         |BELARUS                      |Female |            0|   7579| 16898|
|0-24 months |PROBIT         |BELARUS                      |Female |            1|    575| 16898|
|0-24 months |PROBIT         |BELARUS                      |Male   |            0|   7994| 16898|
|0-24 months |PROBIT         |BELARUS                      |Male   |            1|    750| 16898|
|0-24 months |PROVIDE        |BANGLADESH                   |Female |            0|    317|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Female |            1|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Male   |            0|    341|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Male   |            1|     27|   700|
|0-24 months |ResPak         |PAKISTAN                     |Female |            0|    110|   284|
|0-24 months |ResPak         |PAKISTAN                     |Female |            1|     26|   284|
|0-24 months |ResPak         |PAKISTAN                     |Male   |            0|    105|   284|
|0-24 months |ResPak         |PAKISTAN                     |Male   |            1|     43|   284|
|0-24 months |SAS-CompFeed   |INDIA                        |Female |            0|    591|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Female |            1|     95|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Male   |            0|    699|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Male   |            1|    128|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female |            0|    187|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female |            1|     36|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male   |            0|    160|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male   |            1|     35|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female |            0|   1118|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female |            1|     66|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male   |            0|   1120|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male   |            1|     92|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female |            0|   6170| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female |            1|    605| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male   |            0|   6490| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male   |            1|    681| 13946|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/b9b9f1fb-5d2d-4312-9b28-3d8d2d7593c1/90a6525e-be5f-41dc-b4bd-c899b45fda84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9b9f1fb-5d2d-4312-9b28-3d8d2d7593c1/90a6525e-be5f-41dc-b4bd-c899b45fda84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9b9f1fb-5d2d-4312-9b28-3d8d2d7593c1/90a6525e-be5f-41dc-b4bd-c899b45fda84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9b9f1fb-5d2d-4312-9b28-3d8d2d7593c1/90a6525e-be5f-41dc-b4bd-c899b45fda84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             | 0.2299465| 0.1695539| 0.2903392|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male               |NA             | 0.2634409| 0.2000510| 0.3268307|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | 0.1512605| 0.0867657| 0.2157553|
|0-24 months |CMIN           |BANGLADESH                   |Male               |NA             | 0.1568627| 0.0991315| 0.2145940|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             | 0.0566929| 0.0386995| 0.0746863|
|0-24 months |COHORTS        |GUATEMALA                    |Male               |NA             | 0.0854342| 0.0649233| 0.1059450|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             | 0.1030696| 0.0930685| 0.1130706|
|0-24 months |COHORTS        |INDIA                        |Male               |NA             | 0.1063830| 0.0966480| 0.1161179|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             | 0.1097135| 0.0935180| 0.1259090|
|0-24 months |COHORTS        |PHILIPPINES                  |Male               |NA             | 0.1394052| 0.1225044| 0.1563060|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             | 0.1729730| 0.1183993| 0.2275467|
|0-24 months |EE             |PAKISTAN                     |Male               |NA             | 0.2461538| 0.1856131| 0.3066946|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             | 0.2577640| 0.2099539| 0.3055740|
|0-24 months |GMS-Nepal      |NEPAL                        |Male               |NA             | 0.2582418| 0.2132473| 0.3032362|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             | 0.0369231| 0.0259852| 0.0478610|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male               |NA             | 0.0639854| 0.0442101| 0.0837606|
|0-24 months |IRC            |INDIA                        |Female             |NA             | 0.3351351| 0.2670317| 0.4032386|
|0-24 months |IRC            |INDIA                        |Male               |NA             | 0.3466667| 0.2844065| 0.4089269|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             | 0.0582590| 0.0540854| 0.0624326|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male               |NA             | 0.0636933| 0.0588465| 0.0685402|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             | 0.0535780| 0.0438961| 0.0632599|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male               |NA             | 0.0724798| 0.0618616| 0.0830979|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             | 0.1509568| 0.1322736| 0.1696399|
|0-24 months |Keneba         |GAMBIA                       |Male               |NA             | 0.2074221| 0.1869612| 0.2278831|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |NA             | 0.0970149| 0.0468058| 0.1472240|
|0-24 months |MAL-ED         |BANGLADESH                   |Male               |NA             | 0.0620155| 0.0203162| 0.1037148|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             | 0.1014493| 0.0509749| 0.1519237|
|0-24 months |MAL-ED         |INDIA                        |Male               |NA             | 0.1061947| 0.0492768| 0.1631126|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |NA             | 0.0379747| 0.0081238| 0.0678256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male               |NA             | 0.0649351| 0.0259547| 0.1039154|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             | 0.1317568| 0.0931949| 0.1703186|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male               |NA             | 0.1829268| 0.1410544| 0.2247993|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | 0.0918635| 0.0628421| 0.1208850|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male               |NA             | 0.0822281| 0.0544795| 0.1099768|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             | 0.0705175| 0.0371800| 0.1038551|
|0-24 months |PROBIT         |BELARUS                      |Male               |NA             | 0.0857731| 0.0530144| 0.1185318|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             | 0.0451807| 0.0228230| 0.0675384|
|0-24 months |PROVIDE        |BANGLADESH                   |Male               |NA             | 0.0733696| 0.0467104| 0.1000287|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             | 0.1911765| 0.1249718| 0.2573812|
|0-24 months |ResPak         |PAKISTAN                     |Male               |NA             | 0.2905405| 0.2172665| 0.3638146|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             | 0.1384840| 0.1126625| 0.1643055|
|0-24 months |SAS-CompFeed   |INDIA                        |Male               |NA             | 0.1547763| 0.1144403| 0.1951123|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             | 0.1614350| 0.1130865| 0.2097835|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male               |NA             | 0.1794872| 0.1255597| 0.2334147|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             | 0.0557432| 0.0426724| 0.0688141|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male               |NA             | 0.0759076| 0.0609938| 0.0908214|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             | 0.0892989| 0.0825081| 0.0960897|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male               |NA             | 0.0949658| 0.0881802| 0.1017515|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2466488| 0.2028447| 0.2904529|
|0-24 months |CMIN           |BANGLADESH                   |NA                 |NA             | 0.1544118| 0.1113905| 0.1974330|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0719051| 0.0581146| 0.0856956|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1047941| 0.0978174| 0.1117707|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1254516| 0.1136848| 0.1372183|
|0-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.2105263| 0.1694822| 0.2515704|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2580175| 0.2252514| 0.2907836|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0505205| 0.0383088| 0.0627322|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3414634| 0.2955068| 0.3874201|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610254| 0.0575469| 0.0645038|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0630167| 0.0560702| 0.0699632|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.1801370| 0.1661957| 0.1940783|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.0798479| 0.0470264| 0.1126695|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.1035857| 0.0658126| 0.1413587|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.0512821| 0.0267678| 0.0757963|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0784116| 0.0458146| 0.1110087|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |ResPak         |PAKISTAN                     |NA                 |NA             | 0.2429577| 0.1929911| 0.2929244|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1473893| 0.1184132| 0.1763654|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1698565| 0.1338154| 0.2058975|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0659432| 0.0560037| 0.0758828|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0922128| 0.0874108| 0.0970149|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male               |Female         | 1.1456614| 0.8023445| 1.635881|
|0-24 months |CMIN           |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMIN           |BANGLADESH                   |Male               |Female         | 1.0370370| 0.5904417| 1.821426|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Male               |Female         | 1.5069639| 1.0122142| 2.243537|
|0-24 months |COHORTS        |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Male               |Female         | 1.0321474| 0.9032697| 1.179413|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Male               |Female         | 1.2706296| 1.0496880| 1.538076|
|0-24 months |EE             |PAKISTAN                     |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |EE             |PAKISTAN                     |Male               |Female         | 1.4230769| 0.9538780| 2.123068|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Male               |Female         | 1.0018536| 0.7767565| 1.292182|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male               |Female         | 1.7329372| 1.1929166| 2.517419|
|0-24 months |IRC            |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Male               |Female         | 1.0344086| 0.7886984| 1.356667|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male               |Female         | 1.0932784| 0.9943869| 1.202005|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male               |Female         | 1.3527901| 1.0644025| 1.719313|
|0-24 months |Keneba         |GAMBIA                       |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |Male               |Female         | 1.3740499| 1.1729191| 1.609670|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Male               |Female         | 0.6392367| 0.2736265| 1.493362|
|0-24 months |MAL-ED         |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Male               |Female         | 1.0467762| 0.5037919| 2.174987|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male               |Female         | 1.7099567| 0.6359688| 4.597634|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male               |Female         | 1.3883677| 0.9575010| 2.013121|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male               |Female         | 0.8951118| 0.5637941| 1.421131|
|0-24 months |PROBIT         |BELARUS                      |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Male               |Female         | 1.2163372| 1.0397411| 1.422927|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Male               |Female         | 1.6239130| 0.8788991| 3.000451|
|0-24 months |ResPak         |PAKISTAN                     |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ResPak         |PAKISTAN                     |Male               |Female         | 1.5197505| 0.9901917| 2.332520|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Male               |Female         | 1.1176478| 0.8732350| 1.430470|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male               |Female         | 1.1118234| 0.7274394| 1.699318|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male               |Female         | 1.3617362| 1.0028496| 1.849056|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male               |Female         | 1.0634604| 0.9580839| 1.180427|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             |  0.0167023| -0.0269901| 0.0603946|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             |  0.0031513| -0.0455393| 0.0518419|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             |  0.0152122|  0.0007506| 0.0296738|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             |  0.0017245| -0.0055395| 0.0089885|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             |  0.0157381|  0.0033196| 0.0281566|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             |  0.0375533| -0.0044347| 0.0795413|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             |  0.0002535| -0.0345827| 0.0350897|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             |  0.0135974|  0.0038513| 0.0233436|
|0-24 months |IRC            |INDIA                        |Female             |NA             |  0.0063283| -0.0443127| 0.0569693|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             |  0.0027663| -0.0001905| 0.0057232|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             |  0.0094387|  0.0020613| 0.0168162|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             |  0.0291802|  0.0148249| 0.0435355|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |NA             | -0.0171670| -0.0492501| 0.0149161|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             |  0.0021364| -0.0321135| 0.0363862|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |NA             |  0.0133074| -0.0109728| 0.0375875|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             |  0.0268971| -0.0030916| 0.0568858|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | -0.0047923| -0.0247656| 0.0151810|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             |  0.0078941|  0.0027350| 0.0130532|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             |  0.0148193| -0.0035018| 0.0331404|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             |  0.0517813| -0.0000055| 0.1035680|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             |  0.0089053| -0.0115075| 0.0293181|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             |  0.0084215| -0.0253776| 0.0422205|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             |  0.0102000|  0.0001605| 0.0202395|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             |  0.0029139| -0.0020226| 0.0078504|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             |  0.0677168| -0.1271830| 0.2289168|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             |  0.0204082| -0.3515419| 0.2899960|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             |  0.2115594| -0.0128720| 0.3862614|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             |  0.0164561| -0.0553548| 0.0833807|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             |  0.1254514|  0.0212291| 0.2185758|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             |  0.1783784| -0.0451765| 0.3541166|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             |  0.0009826| -0.1435811| 0.1272715|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             |  0.2691469|  0.0799006| 0.4194689|
|0-24 months |IRC            |INDIA                        |Female             |NA             |  0.0185328| -0.1415647| 0.1561776|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             |  0.0453311| -0.0039918| 0.0922308|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             |  0.1497815|  0.0245846| 0.2589090|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             |  0.1619890|  0.0790734| 0.2374393|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |NA             | -0.2149964| -0.6804648| 0.1215428|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             |  0.0206243| -0.3725884| 0.3011913|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |NA             |  0.2594937| -0.3749809| 0.6011947|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             |  0.1695332| -0.0405754| 0.3372175|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | -0.0550386| -0.3109276| 0.1509017|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             |  0.1006752|  0.0167072| 0.1774728|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             |  0.2469880| -0.1178132| 0.4927353|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             |  0.2131287| -0.0287497| 0.3981370|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             |  0.0604205| -0.0824248| 0.1844147|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             |  0.0495800| -0.1715599| 0.2289782|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             |  0.1546784| -0.0102469| 0.2926793|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             |  0.0316000| -0.0234197| 0.0836619|
