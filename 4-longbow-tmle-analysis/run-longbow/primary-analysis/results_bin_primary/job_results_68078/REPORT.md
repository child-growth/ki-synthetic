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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |sex    | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female |         0|    179|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female |         1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male   |         0|    171|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male   |         1|     15|   373|
|0-24 months |CMIN           |BANGLADESH                   |Female |         0|    102|   257|
|0-24 months |CMIN           |BANGLADESH                   |Female |         1|      7|   257|
|0-24 months |CMIN           |BANGLADESH                   |Male   |         0|    135|   257|
|0-24 months |CMIN           |BANGLADESH                   |Male   |         1|     13|   257|
|0-24 months |COHORTS        |GUATEMALA                    |Female |         0|    490|  1056|
|0-24 months |COHORTS        |GUATEMALA                    |Female |         1|     12|  1056|
|0-24 months |COHORTS        |GUATEMALA                    |Male   |         0|    530|  1056|
|0-24 months |COHORTS        |GUATEMALA                    |Male   |         1|     24|  1056|
|0-24 months |COHORTS        |INDIA                        |Female |         0|   2511|  5705|
|0-24 months |COHORTS        |INDIA                        |Female |         1|    253|  5705|
|0-24 months |COHORTS        |INDIA                        |Male   |         0|   2644|  5705|
|0-24 months |COHORTS        |INDIA                        |Male   |         1|    297|  5705|
|0-24 months |COHORTS        |PHILIPPINES                  |Female |         0|   1276|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Female |         1|     53|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Male   |         0|   1391|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Male   |         1|     91|  2811|
|0-24 months |CONTENT        |PERU                         |Female |         0|    109|   215|
|0-24 months |CONTENT        |PERU                         |Female |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |Male   |         0|    106|   215|
|0-24 months |CONTENT        |PERU                         |Male   |         1|      0|   215|
|0-24 months |EE             |PAKISTAN                     |Female |         0|    168|   377|
|0-24 months |EE             |PAKISTAN                     |Female |         1|     14|   377|
|0-24 months |EE             |PAKISTAN                     |Male   |         0|    176|   377|
|0-24 months |EE             |PAKISTAN                     |Male   |         1|     19|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |Female |         0|    251|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Female |         1|     36|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Male   |         0|    266|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |Male   |         1|     44|   597|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female |         0|    133|   256|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male   |         0|    119|   256|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male   |         1|      3|   256|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female |         0|    732|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female |         1|     80|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male   |         0|    737|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male   |         1|    120|  1669|
|0-24 months |IRC            |INDIA                        |Female |         0|    165|   410|
|0-24 months |IRC            |INDIA                        |Female |         1|     20|   410|
|0-24 months |IRC            |INDIA                        |Male   |         0|    197|   410|
|0-24 months |IRC            |INDIA                        |Male   |         1|     28|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female |         0|   7302| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female |         1|    424| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male   |         0|   7603| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male   |         1|    474| 15803|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female |         0|   2455|  5281|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female |         1|    187|  5281|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male   |         0|   2400|  5281|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male   |         1|    239|  5281|
|0-24 months |Keneba         |GAMBIA                       |Female |         0|   1123|  2444|
|0-24 months |Keneba         |GAMBIA                       |Female |         1|     60|  2444|
|0-24 months |Keneba         |GAMBIA                       |Male   |         0|   1176|  2444|
|0-24 months |Keneba         |GAMBIA                       |Male   |         1|     85|  2444|
|0-24 months |LCNI-5         |MALAWI                       |Female |         0|    358|   719|
|0-24 months |LCNI-5         |MALAWI                       |Female |         1|      2|   719|
|0-24 months |LCNI-5         |MALAWI                       |Male   |         0|    355|   719|
|0-24 months |LCNI-5         |MALAWI                       |Male   |         1|      4|   719|
|0-24 months |MAL-ED         |BANGLADESH                   |Female |         0|    116|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |Female |         1|      9|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |Male   |         0|    119|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |Male   |         1|      4|   248|
|0-24 months |MAL-ED         |BRAZIL                       |Female |         0|    106|   218|
|0-24 months |MAL-ED         |BRAZIL                       |Female |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL                       |Male   |         0|    110|   218|
|0-24 months |MAL-ED         |BRAZIL                       |Male   |         1|      0|   218|
|0-24 months |MAL-ED         |INDIA                        |Female |         0|    125|   241|
|0-24 months |MAL-ED         |INDIA                        |Female |         1|      8|   241|
|0-24 months |MAL-ED         |INDIA                        |Male   |         0|     95|   241|
|0-24 months |MAL-ED         |INDIA                        |Male   |         1|     13|   241|
|0-24 months |MAL-ED         |NEPAL                        |Female |         0|    110|   238|
|0-24 months |MAL-ED         |NEPAL                        |Female |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |Male   |         0|    124|   238|
|0-24 months |MAL-ED         |NEPAL                        |Male   |         1|      4|   238|
|0-24 months |MAL-ED         |PERU                         |Female |         0|    131|   284|
|0-24 months |MAL-ED         |PERU                         |Female |         1|      0|   284|
|0-24 months |MAL-ED         |PERU                         |Male   |         0|    152|   284|
|0-24 months |MAL-ED         |PERU                         |Male   |         1|      1|   284|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female |         0|    141|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male   |         0|    132|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male   |         1|      1|   275|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female |         0|    128|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male   |         0|    125|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male   |         1|      0|   253|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female |         0|    228|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female |         1|     15|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male   |         0|    259|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male   |         1|     32|   534|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female |         0|    358|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female |         1|     11|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male   |         0|    346|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male   |         1|     15|   730|
|0-24 months |PROBIT         |BELARUS                      |Female |         0|   7941| 16583|
|0-24 months |PROBIT         |BELARUS                      |Female |         1|     52| 16583|
|0-24 months |PROBIT         |BELARUS                      |Male   |         0|   8508| 16583|
|0-24 months |PROBIT         |BELARUS                      |Male   |         1|     82| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |Female |         0|    300|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Female |         1|      5|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Male   |         0|    326|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Male   |         1|     10|   641|
|0-24 months |ResPak         |PAKISTAN                     |Female |         0|    113|   256|
|0-24 months |ResPak         |PAKISTAN                     |Female |         1|      9|   256|
|0-24 months |ResPak         |PAKISTAN                     |Male   |         0|    109|   256|
|0-24 months |ResPak         |PAKISTAN                     |Male   |         1|     25|   256|
|0-24 months |SAS-CompFeed   |INDIA                        |Female |         0|    566|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Female |         1|     48|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Male   |         0|    686|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Male   |         1|     66|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female |         0|    166|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female |         1|     31|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male   |         0|    144|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male   |         1|     34|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female |         0|   1053|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female |         1|     19|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male   |         0|   1055|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male   |         1|     39|  2166|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female |         0|   4669|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female |         1|     59|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male   |         0|   4690|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male   |         1|    109|  9527|


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
![](/tmp/7e889fcf-348b-46e2-b8cc-d8de00f0a123/ff045330-2786-4236-8e5c-7e898b44dd3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e889fcf-348b-46e2-b8cc-d8de00f0a123/ff045330-2786-4236-8e5c-7e898b44dd3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e889fcf-348b-46e2-b8cc-d8de00f0a123/ff045330-2786-4236-8e5c-7e898b44dd3a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e889fcf-348b-46e2-b8cc-d8de00f0a123/ff045330-2786-4236-8e5c-7e898b44dd3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             | 0.0427807| 0.0137378| 0.0718237|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male               |NA             | 0.0806452| 0.0414615| 0.1198288|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | 0.0642202| 0.0181092| 0.1103311|
|0-24 months |CMIN           |BANGLADESH                   |Male               |NA             | 0.0878378| 0.0421458| 0.1335299|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             | 0.0239044| 0.0105358| 0.0372730|
|0-24 months |COHORTS        |GUATEMALA                    |Male               |NA             | 0.0433213| 0.0263610| 0.0602816|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             | 0.0915340| 0.0807827| 0.1022854|
|0-24 months |COHORTS        |INDIA                        |Male               |NA             | 0.1009861| 0.0900954| 0.1118767|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             | 0.0398796| 0.0293575| 0.0504017|
|0-24 months |COHORTS        |PHILIPPINES                  |Male               |NA             | 0.0614035| 0.0491788| 0.0736282|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             | 0.0769231| 0.0381584| 0.1156878|
|0-24 months |EE             |PAKISTAN                     |Male               |NA             | 0.0974359| 0.0557580| 0.1391138|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             | 0.1254355| 0.0870845| 0.1637866|
|0-24 months |GMS-Nepal      |NEPAL                        |Male               |NA             | 0.1419355| 0.1030545| 0.1808164|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             | 0.0985222| 0.0671712| 0.1298731|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male               |NA             | 0.1400233| 0.0951407| 0.1849060|
|0-24 months |IRC            |INDIA                        |Female             |NA             | 0.1081081| 0.0633081| 0.1529081|
|0-24 months |IRC            |INDIA                        |Male               |NA             | 0.1244444| 0.0812611| 0.1676278|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             | 0.0548796| 0.0490082| 0.0607511|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male               |NA             | 0.0586852| 0.0532729| 0.0640974|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             | 0.0707797| 0.0599729| 0.0815865|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male               |NA             | 0.0905646| 0.0775939| 0.1035353|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             | 0.0507185| 0.0382123| 0.0632247|
|0-24 months |Keneba         |GAMBIA                       |Male               |NA             | 0.0674068| 0.0535655| 0.0812481|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             | 0.0601504| 0.0196580| 0.1006428|
|0-24 months |MAL-ED         |INDIA                        |Male               |NA             | 0.1203704| 0.0588741| 0.1818666|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             | 0.0617284| 0.0314412| 0.0920156|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male               |NA             | 0.1099656| 0.0739873| 0.1459439|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | 0.0298103| 0.0124465| 0.0471741|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male               |NA             | 0.0415512| 0.0209512| 0.0621513|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             | 0.0065057| 0.0029153| 0.0100961|
|0-24 months |PROBIT         |BELARUS                      |Male               |NA             | 0.0095460| 0.0056003| 0.0134916|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             | 0.0163934| 0.0021314| 0.0306555|
|0-24 months |PROVIDE        |BANGLADESH                   |Male               |NA             | 0.0297619| 0.0115780| 0.0479458|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             | 0.0737705| 0.0272956| 0.1202454|
|0-24 months |ResPak         |PAKISTAN                     |Male               |NA             | 0.1865672| 0.1204789| 0.2526554|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             | 0.0781759| 0.0600535| 0.0962983|
|0-24 months |SAS-CompFeed   |INDIA                        |Male               |NA             | 0.0877660| 0.0500788| 0.1254531|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             | 0.1573604| 0.1064433| 0.2082775|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male               |NA             | 0.1910112| 0.1331858| 0.2488366|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             | 0.0177239| 0.0098235| 0.0256242|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male               |NA             | 0.0356490| 0.0246594| 0.0466386|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             | 0.0124788| 0.0093144| 0.0156433|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male               |NA             | 0.0227131| 0.0184976| 0.0269285|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.0616622| 0.0372186| 0.0861058|
|0-24 months |CMIN           |BANGLADESH                   |NA                 |NA             | 0.0778210| 0.0450051| 0.1106369|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0340909| 0.0231410| 0.0450408|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0964067| 0.0887472| 0.1040661|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.0875332| 0.0589672| 0.1160991|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1340034| 0.1066544| 0.1613523|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1198322| 0.0943748| 0.1452897|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.1170732| 0.0859146| 0.1482317|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0568247| 0.0527145| 0.0609348|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0806665| 0.0720540| 0.0892791|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.0593290| 0.0499611| 0.0686968|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.0871369| 0.0514552| 0.1228187|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0880150| 0.0639627| 0.1120673|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0080806| 0.0045539| 0.0116073|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0234009| 0.0116889| 0.0351130|
|0-24 months |ResPak         |PAKISTAN                     |NA                 |NA             | 0.1328125| 0.0911588| 0.1744662|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.0834553| 0.0601989| 0.1067118|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0267775| 0.0199775| 0.0335775|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0176341| 0.0149910| 0.0202771|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male               |Female         | 1.885081| 0.8180218| 4.344051|
|0-24 months |CMIN           |BANGLADESH                   |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |CMIN           |BANGLADESH                   |Male               |Female         | 1.367761| 0.5635671| 3.319514|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Male               |Female         | 1.812274| 0.9156815| 3.586769|
|0-24 months |COHORTS        |INDIA                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Male               |Female         | 1.103263| 0.9406498| 1.293987|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Male               |Female         | 1.539722| 1.1063554| 2.142841|
|0-24 months |EE             |PAKISTAN                     |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |EE             |PAKISTAN                     |Male               |Female         | 1.266667| 0.6540224| 2.453195|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Male               |Female         | 1.131541| 0.7505645| 1.705897|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male               |Female         | 1.421237| 0.8801757| 2.294899|
|0-24 months |IRC            |INDIA                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Male               |Female         | 1.151111| 0.6704712| 1.976307|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male               |Female         | 1.069343| 0.9325543| 1.226196|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male               |Female         | 1.279528| 1.0423268| 1.570708|
|0-24 months |Keneba         |GAMBIA                       |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |Male               |Female         | 1.329038| 0.9642268| 1.831873|
|0-24 months |MAL-ED         |INDIA                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Male               |Female         | 2.001157| 0.8595278| 4.659106|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male               |Female         | 1.781443| 0.9877665| 3.212845|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male               |Female         | 1.393855| 0.6486737| 2.995085|
|0-24 months |PROBIT         |BELARUS                      |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Male               |Female         | 1.467328| 1.0181837| 2.114600|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Male               |Female         | 1.815476| 0.6270380| 5.256386|
|0-24 months |ResPak         |PAKISTAN                     |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |ResPak         |PAKISTAN                     |Male               |Female         | 2.529022| 1.2276220| 5.210032|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Male               |Female         | 1.122673| 0.7109206| 1.772904|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male               |Female         | 1.213846| 0.7793349| 1.890614|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male               |Female         | 2.011354| 1.1698166| 3.458272|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |Female         | 1.000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male               |Female         | 1.820125| 1.3293108| 2.492160|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             | 0.0188814| -0.0055159| 0.0432788|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | 0.0136008| -0.0238096| 0.0510112|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             | 0.0101865| -0.0011581| 0.0215311|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             | 0.0048727| -0.0030174| 0.0127628|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             | 0.0113477|  0.0028348| 0.0198606|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             | 0.0106101| -0.0188489| 0.0400691|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             | 0.0085678| -0.0197982| 0.0369338|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             | 0.0213101| -0.0078967| 0.0505169|
|0-24 months |IRC            |INDIA                        |Female             |NA             | 0.0089651| -0.0251914| 0.0431215|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             | 0.0019450| -0.0020106| 0.0059007|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             | 0.0098868|  0.0016370| 0.0181367|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             | 0.0086105| -0.0010201| 0.0182410|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             | 0.0269866| -0.0062264| 0.0601995|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             | 0.0262866|  0.0005773| 0.0519959|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | 0.0058061| -0.0075240| 0.0191363|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             | 0.0015749|  0.0001858| 0.0029640|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             | 0.0070075| -0.0051172| 0.0191322|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             | 0.0590420|  0.0161902| 0.1018938|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             | 0.0052794| -0.0163323| 0.0268912|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             | 0.0159729| -0.0206386| 0.0525845|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             | 0.0090536|  0.0022071| 0.0159001|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             | 0.0051552|  0.0024981| 0.0078124|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             | 0.3062079| -0.1969410| 0.5978519|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | 0.1747706| -0.4689051| 0.5363870|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             | 0.2988048| -0.1056876| 0.5553222|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             | 0.0505427| -0.0348444| 0.1288843|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             | 0.2215168|  0.0405422| 0.3683557|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             | 0.1212121| -0.2860165| 0.3994881|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             | 0.0639373| -0.1732314| 0.2531624|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             | 0.1778325| -0.0918924| 0.3809286|
|0-24 months |IRC            |INDIA                        |Female             |NA             | 0.0765766| -0.2657912| 0.3263416|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             | 0.0342286| -0.0381584| 0.1015683|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             | 0.1225642|  0.0157982| 0.2177482|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             | 0.1451307| -0.0318778| 0.2917752|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             | 0.3097028| -0.1668719| 0.5916345|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             | 0.2986604| -0.0485677| 0.5309055|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | 0.1630186| -0.3014730| 0.4617346|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             | 0.1948963| -0.0067463| 0.3561516|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             | 0.2994536| -0.4235882| 0.6552617|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             | 0.4445516|  0.0525670| 0.6743591|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             | 0.0632608| -0.2198690| 0.2806765|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             | 0.0921515| -0.1448916| 0.2801162|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             | 0.3381047|  0.0468217| 0.5403742|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             | 0.2923452|  0.1322320| 0.4229158|
