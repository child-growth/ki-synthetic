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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |meducyrs | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |         0|    150|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |         1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |         0|     98|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |         1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |         0|    102|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |         1|      7|   373|
|0-24 months |COHORTS        |GUATEMALA                    |High     |         0|    203|  1047|
|0-24 months |COHORTS        |GUATEMALA                    |High     |         1|      6|  1047|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |         0|    462|  1047|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |         1|     20|  1047|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |         0|    346|  1047|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |         1|     10|  1047|
|0-24 months |COHORTS        |INDIA                        |High     |         0|    579|  4519|
|0-24 months |COHORTS        |INDIA                        |High     |         1|     31|  4519|
|0-24 months |COHORTS        |INDIA                        |Low      |         0|   1254|  4519|
|0-24 months |COHORTS        |INDIA                        |Low      |         1|    218|  4519|
|0-24 months |COHORTS        |INDIA                        |Medium   |         0|   2248|  4519|
|0-24 months |COHORTS        |INDIA                        |Medium   |         1|    189|  4519|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |         0|   1013|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |         1|     42|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |         0|    787|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |         1|     61|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |         0|    867|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |         1|     41|  2811|
|0-24 months |EE             |PAKISTAN                     |High     |         0|     15|   374|
|0-24 months |EE             |PAKISTAN                     |High     |         1|      0|   374|
|0-24 months |EE             |PAKISTAN                     |Low      |         0|    295|   374|
|0-24 months |EE             |PAKISTAN                     |Low      |         1|     31|   374|
|0-24 months |EE             |PAKISTAN                     |Medium   |         0|     31|   374|
|0-24 months |EE             |PAKISTAN                     |Medium   |         1|      2|   374|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |         0|     66|   594|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |         1|      8|   594|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |         0|    360|   594|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |         1|     57|   594|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |         0|     88|   594|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |         1|     15|   594|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |         0|    105|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |         1|      1|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |         0|     66|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |         1|      1|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |         0|     76|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |         1|      2|   251|
|0-24 months |IRC            |INDIA                        |High     |         0|    113|   410|
|0-24 months |IRC            |INDIA                        |High     |         1|     11|   410|
|0-24 months |IRC            |INDIA                        |Low      |         0|    131|   410|
|0-24 months |IRC            |INDIA                        |Low      |         1|     16|   410|
|0-24 months |IRC            |INDIA                        |Medium   |         0|    118|   410|
|0-24 months |IRC            |INDIA                        |Medium   |         1|     21|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |         0|   5301| 15788|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |         1|    283| 15788|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |         0|   4926| 15788|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |         1|    365| 15788|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |         0|   4664| 15788|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |         1|    249| 15788|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |         0|   1745|  5272|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |         1|    105|  5272|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |         0|   1557|  5272|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |         1|    176|  5272|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |         0|   1544|  5272|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |         1|    145|  5272|
|0-24 months |LCNI-5         |MALAWI                       |High     |         0|    262|   713|
|0-24 months |LCNI-5         |MALAWI                       |High     |         1|      1|   713|
|0-24 months |LCNI-5         |MALAWI                       |Low      |         0|    225|   713|
|0-24 months |LCNI-5         |MALAWI                       |Low      |         1|      2|   713|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |         0|    220|   713|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |         1|      3|   713|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |         0|     71|   202|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |         1|      4|   202|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |         0|     62|   202|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |         1|      4|   202|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |         0|     59|   202|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |         1|      2|   202|
|0-24 months |MAL-ED         |BRAZIL                       |High     |         0|     74|   217|
|0-24 months |MAL-ED         |BRAZIL                       |High     |         1|      0|   217|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |         0|     59|   217|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |         1|      1|   217|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |         0|     82|   217|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |         1|      1|   217|
|0-24 months |MAL-ED         |INDIA                        |High     |         0|     56|   210|
|0-24 months |MAL-ED         |INDIA                        |High     |         1|      4|   210|
|0-24 months |MAL-ED         |INDIA                        |Low      |         0|     63|   210|
|0-24 months |MAL-ED         |INDIA                        |Low      |         1|     10|   210|
|0-24 months |MAL-ED         |INDIA                        |Medium   |         0|     72|   210|
|0-24 months |MAL-ED         |INDIA                        |Medium   |         1|      5|   210|
|0-24 months |MAL-ED         |NEPAL                        |High     |         0|     53|   223|
|0-24 months |MAL-ED         |NEPAL                        |High     |         1|      0|   223|
|0-24 months |MAL-ED         |NEPAL                        |Low      |         0|     93|   223|
|0-24 months |MAL-ED         |NEPAL                        |Low      |         1|      1|   223|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |         0|     74|   223|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |         1|      2|   223|
|0-24 months |MAL-ED         |PERU                         |High     |         0|     85|   283|
|0-24 months |MAL-ED         |PERU                         |High     |         1|      0|   283|
|0-24 months |MAL-ED         |PERU                         |Low      |         0|     98|   283|
|0-24 months |MAL-ED         |PERU                         |Low      |         1|      0|   283|
|0-24 months |MAL-ED         |PERU                         |Medium   |         0|     99|   283|
|0-24 months |MAL-ED         |PERU                         |Medium   |         1|      1|   283|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |         0|     79|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |         0|    133|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |         1|      2|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |         0|     61|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |         1|      0|   275|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |         0|      9|   208|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |         1|      0|   208|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |         0|     63|   208|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |         1|      0|   208|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |         0|    136|   208|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |         1|      0|   208|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |         0|    144|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |         1|     11|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |         0|    174|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |         1|     19|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |         0|    169|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |         1|     17|   534|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |         0|    246|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |         1|      0|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |         0|    220|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |         1|     14|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |         0|    238|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |         1|     12|   730|
|0-24 months |PROBIT         |BELARUS                      |High     |         0|   2753| 16583|
|0-24 months |PROBIT         |BELARUS                      |High     |         1|     21| 16583|
|0-24 months |PROBIT         |BELARUS                      |Low      |         0|   5922| 16583|
|0-24 months |PROBIT         |BELARUS                      |Low      |         1|     46| 16583|
|0-24 months |PROBIT         |BELARUS                      |Medium   |         0|   7774| 16583|
|0-24 months |PROBIT         |BELARUS                      |Medium   |         1|     67| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |         0|    218|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |         0|    187|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |         1|      9|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |         0|    221|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |         1|      4|   641|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |         0|    289|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |         1|     10|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |         0|    526|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |         1|     76|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |         0|    437|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |         1|     28|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |         0|     36|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |         1|      2|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |         0|    242|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |         1|     55|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |         0|     32|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |         1|      8|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |         0|    535|  2158|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |         1|     18|  2158|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |         0|     75|  2158|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |         1|      1|  2158|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |         0|   1490|  2158|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |         1|     39|  2158|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |         0|   5030|  9513|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |         1|     79|  9513|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |         0|   1953|  9513|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |         1|     48|  9513|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |         0|   2362|  9513|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |         1|     41|  9513|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/82470891-6fab-44ea-8f7a-a90a54a32078/41f2afae-d637-479f-a06e-09adbdf6a80e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82470891-6fab-44ea-8f7a-a90a54a32078/41f2afae-d637-479f-a06e-09adbdf6a80e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82470891-6fab-44ea-8f7a-a90a54a32078/41f2afae-d637-479f-a06e-09adbdf6a80e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82470891-6fab-44ea-8f7a-a90a54a32078/41f2afae-d637-479f-a06e-09adbdf6a80e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |High               |NA             | 0.0506329| 0.0164006| 0.0848652|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Low                |NA             | 0.0754717| 0.0251181| 0.1258253|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Medium             |NA             | 0.0642202| 0.0181372| 0.1103031|
|0-24 months |COHORTS        |GUATEMALA   |High               |NA             | 0.0287081| 0.0060586| 0.0513577|
|0-24 months |COHORTS        |GUATEMALA   |Low                |NA             | 0.0414938| 0.0236814| 0.0593061|
|0-24 months |COHORTS        |GUATEMALA   |Medium             |NA             | 0.0280899| 0.0109180| 0.0452618|
|0-24 months |COHORTS        |INDIA       |High               |NA             | 0.0522740| 0.0344280| 0.0701200|
|0-24 months |COHORTS        |INDIA       |Low                |NA             | 0.1450534| 0.1269205| 0.1631862|
|0-24 months |COHORTS        |INDIA       |Medium             |NA             | 0.0774079| 0.0667602| 0.0880556|
|0-24 months |COHORTS        |PHILIPPINES |High               |NA             | 0.0426331| 0.0299503| 0.0553158|
|0-24 months |COHORTS        |PHILIPPINES |Low                |NA             | 0.0706082| 0.0529349| 0.0882815|
|0-24 months |COHORTS        |PHILIPPINES |Medium             |NA             | 0.0427616| 0.0295344| 0.0559887|
|0-24 months |GMS-Nepal      |NEPAL       |High               |NA             | 0.1081081| 0.0372999| 0.1789163|
|0-24 months |GMS-Nepal      |NEPAL       |Low                |NA             | 0.1366906| 0.1036918| 0.1696895|
|0-24 months |GMS-Nepal      |NEPAL       |Medium             |NA             | 0.1456311| 0.0774529| 0.2138092|
|0-24 months |IRC            |INDIA       |High               |NA             | 0.0946784| 0.0442079| 0.1451488|
|0-24 months |IRC            |INDIA       |Low                |NA             | 0.1127310| 0.0621921| 0.1632699|
|0-24 months |IRC            |INDIA       |Medium             |NA             | 0.1555834| 0.0956403| 0.2155265|
|0-24 months |JiVitA-3       |BANGLADESH  |High               |NA             | 0.0537675| 0.0446040| 0.0629309|
|0-24 months |JiVitA-3       |BANGLADESH  |Low                |NA             | 0.0665187| 0.0544750| 0.0785624|
|0-24 months |JiVitA-3       |BANGLADESH  |Medium             |NA             | 0.0486334| 0.0406933| 0.0565734|
|0-24 months |JiVitA-4       |BANGLADESH  |High               |NA             | 0.0603127| 0.0393125| 0.0813130|
|0-24 months |JiVitA-4       |BANGLADESH  |Low                |NA             | 0.0967127| 0.0783099| 0.1151155|
|0-24 months |JiVitA-4       |BANGLADESH  |Medium             |NA             | 0.0886546| 0.0713554| 0.1059539|
|0-24 months |NIH-Birth      |BANGLADESH  |High               |NA             | 0.0716655| 0.0309396| 0.1123915|
|0-24 months |NIH-Birth      |BANGLADESH  |Low                |NA             | 0.0993019| 0.0571860| 0.1414179|
|0-24 months |NIH-Birth      |BANGLADESH  |Medium             |NA             | 0.0911438| 0.0500507| 0.1322370|
|0-24 months |PROBIT         |BELARUS     |High               |NA             | 0.0066708| 0.0020116| 0.0113299|
|0-24 months |PROBIT         |BELARUS     |Low                |NA             | 0.0084188| 0.0035626| 0.0132750|
|0-24 months |PROBIT         |BELARUS     |Medium             |NA             | 0.0081599| 0.0050491| 0.0112707|
|0-24 months |SAS-CompFeed   |INDIA       |High               |NA             | 0.0375958| 0.0215488| 0.0536428|
|0-24 months |SAS-CompFeed   |INDIA       |Low                |NA             | 0.1256370| 0.0819409| 0.1693331|
|0-24 months |SAS-CompFeed   |INDIA       |Medium             |NA             | 0.0588288| 0.0304520| 0.0872055|
|0-24 months |ZVITAMBO       |ZIMBABWE    |High               |NA             | 0.0151907| 0.0116495| 0.0187319|
|0-24 months |ZVITAMBO       |ZIMBABWE    |Low                |NA             | 0.0217460| 0.0144931| 0.0289990|
|0-24 months |ZVITAMBO       |ZIMBABWE    |Medium             |NA             | 0.0169742| 0.0111189| 0.0228295|


### Parameter: E(Y)


|agecat      |studyid        |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |NA                 |NA             | 0.0616622| 0.0372186| 0.0861058|
|0-24 months |COHORTS        |GUATEMALA   |NA                 |NA             | 0.0343840| 0.0233416| 0.0454263|
|0-24 months |COHORTS        |INDIA       |NA                 |NA             | 0.0969241| 0.0882972| 0.1055510|
|0-24 months |COHORTS        |PHILIPPINES |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |GMS-Nepal      |NEPAL       |NA                 |NA             | 0.1346801| 0.1072037| 0.1621566|
|0-24 months |IRC            |INDIA       |NA                 |NA             | 0.1170732| 0.0859146| 0.1482317|
|0-24 months |JiVitA-3       |BANGLADESH  |NA                 |NA             | 0.0568153| 0.0526983| 0.0609323|
|0-24 months |JiVitA-4       |BANGLADESH  |NA                 |NA             | 0.0808042| 0.0721841| 0.0894244|
|0-24 months |NIH-Birth      |BANGLADESH  |NA                 |NA             | 0.0880150| 0.0639627| 0.1120673|
|0-24 months |PROBIT         |BELARUS     |NA                 |NA             | 0.0080806| 0.0045539| 0.0116073|
|0-24 months |SAS-CompFeed   |INDIA       |NA                 |NA             | 0.0834553| 0.0601989| 0.1067118|
|0-24 months |ZVITAMBO       |ZIMBABWE    |NA                 |NA             | 0.0176600| 0.0150131| 0.0203070|


### Parameter: RR


|agecat      |studyid        |country     |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:-----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Low                |High           | 1.4905660| 0.5765449| 3.853624|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Medium             |High           | 1.2683486| 0.4732218| 3.399481|
|0-24 months |COHORTS        |GUATEMALA   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA   |Low                |High           | 1.4453665| 0.5887096| 3.548582|
|0-24 months |COHORTS        |GUATEMALA   |Medium             |High           | 0.9784644| 0.3606476| 2.654648|
|0-24 months |COHORTS        |INDIA       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA       |Low                |High           | 2.7748667| 1.9296962| 3.990206|
|0-24 months |COHORTS        |INDIA       |Medium             |High           | 1.4808116| 1.0252218| 2.138857|
|0-24 months |COHORTS        |PHILIPPINES |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES |Low                |High           | 1.6561837| 1.1229165| 2.442696|
|0-24 months |COHORTS        |PHILIPPINES |Medium             |High           | 1.0030143| 0.6531927| 1.540185|
|0-24 months |GMS-Nepal      |NEPAL       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL       |Low                |High           | 1.2643885| 0.6291027| 2.541204|
|0-24 months |GMS-Nepal      |NEPAL       |Medium             |High           | 1.3470874| 0.6022147| 3.013285|
|0-24 months |IRC            |INDIA       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA       |Low                |High           | 1.1906730| 0.5929827| 2.390799|
|0-24 months |IRC            |INDIA       |Medium             |High           | 1.6432839| 0.8507526| 3.174110|
|0-24 months |JiVitA-3       |BANGLADESH  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH  |Low                |High           | 1.2371554| 0.9678907| 1.581329|
|0-24 months |JiVitA-3       |BANGLADESH  |Medium             |High           | 0.9045126| 0.7204774| 1.135557|
|0-24 months |JiVitA-4       |BANGLADESH  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH  |Low                |High           | 1.6035204| 1.0745810| 2.392819|
|0-24 months |JiVitA-4       |BANGLADESH  |Medium             |High           | 1.4699159| 0.9840100| 2.195763|
|0-24 months |NIH-Birth      |BANGLADESH  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH  |Low                |High           | 1.3856298| 0.6815290| 2.817151|
|0-24 months |NIH-Birth      |BANGLADESH  |Medium             |High           | 1.2717942| 0.6158033| 2.626586|
|0-24 months |PROBIT         |BELARUS     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS     |Low                |High           | 1.2620371| 0.7624818| 2.088886|
|0-24 months |PROBIT         |BELARUS     |Medium             |High           | 1.2232320| 0.6335367| 2.361815|
|0-24 months |SAS-CompFeed   |INDIA       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA       |Low                |High           | 3.3417837| 2.4756821| 4.510885|
|0-24 months |SAS-CompFeed   |INDIA       |Medium             |High           | 1.5647706| 0.8438352| 2.901641|
|0-24 months |ZVITAMBO       |ZIMBABWE    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE    |Low                |High           | 1.4315338| 0.9530179| 2.150315|
|0-24 months |ZVITAMBO       |ZIMBABWE    |Medium             |High           | 1.1174053| 0.7369280| 1.694324|


### Parameter: PAR


|agecat      |studyid        |country     |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:-----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |High               |NA             | 0.0110293| -0.0168377| 0.0388962|
|0-24 months |COHORTS        |GUATEMALA   |High               |NA             | 0.0056758| -0.0150637| 0.0264153|
|0-24 months |COHORTS        |INDIA       |High               |NA             | 0.0446501|  0.0270352| 0.0622650|
|0-24 months |COHORTS        |PHILIPPINES |High               |NA             | 0.0085943| -0.0022325| 0.0194211|
|0-24 months |GMS-Nepal      |NEPAL       |High               |NA             | 0.0265720| -0.0406554| 0.0937994|
|0-24 months |IRC            |INDIA       |High               |NA             | 0.0223948| -0.0222316| 0.0670212|
|0-24 months |JiVitA-3       |BANGLADESH  |High               |NA             | 0.0030478| -0.0051221| 0.0112178|
|0-24 months |JiVitA-4       |BANGLADESH  |High               |NA             | 0.0204915|  0.0011267| 0.0398564|
|0-24 months |NIH-Birth      |BANGLADESH  |High               |NA             | 0.0163494| -0.0194618| 0.0521607|
|0-24 months |PROBIT         |BELARUS     |High               |NA             | 0.0014098| -0.0018810| 0.0047006|
|0-24 months |SAS-CompFeed   |INDIA       |High               |NA             | 0.0458596|  0.0250560| 0.0666631|
|0-24 months |ZVITAMBO       |ZIMBABWE    |High               |NA             | 0.0024693| -0.0002770| 0.0052156|


### Parameter: PAF


|agecat      |studyid        |country     |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:-----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |High               |NA             | 0.1788663| -0.4151376| 0.5235371|
|0-24 months |COHORTS        |GUATEMALA   |High               |NA             | 0.1650718| -0.7149568| 0.5935145|
|0-24 months |COHORTS        |INDIA       |High               |NA             | 0.4606708|  0.2506467| 0.6118307|
|0-24 months |COHORTS        |PHILIPPINES |High               |NA             | 0.1677671| -0.0705596| 0.3530379|
|0-24 months |GMS-Nepal      |NEPAL       |High               |NA             | 0.1972973| -0.4926666| 0.5683352|
|0-24 months |IRC            |INDIA       |High               |NA             | 0.1912889| -0.2889298| 0.4925918|
|0-24 months |JiVitA-3       |BANGLADESH  |High               |NA             | 0.0536445| -0.1017335| 0.1871096|
|0-24 months |JiVitA-4       |BANGLADESH  |High               |NA             | 0.2535945| -0.0301775| 0.4591989|
|0-24 months |NIH-Birth      |BANGLADESH  |High               |NA             | 0.1857574| -0.3374388| 0.5042831|
|0-24 months |PROBIT         |BELARUS     |High               |NA             | 0.1744655| -0.3552853| 0.4971486|
|0-24 months |SAS-CompFeed   |INDIA       |High               |NA             | 0.5495101|  0.3421911| 0.6914892|
|0-24 months |ZVITAMBO       |ZIMBABWE    |High               |NA             | 0.1398256| -0.0288435| 0.2808431|
