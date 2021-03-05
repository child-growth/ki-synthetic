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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mhtcm        | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |            0|    149|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |            1|     16|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |            0|    772|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |            1|     63|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |            0|    257|  1275|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |            1|     18|  1275|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |            0|    514|  1905|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |            1|     57|  1905|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |            0|    736|  1905|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |            1|     87|  1905|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |            0|    458|  1905|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |            1|     53|  1905|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |            0|    549|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |            1|     80|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |            0|   1346|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |            1|    194|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |            0|    768|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |            1|    108|  3045|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            0|     36|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |            1|      0|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |            0|    141|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |            1|      2|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            0|     56|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |            1|      0|   235|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |            0|   2770|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |            1|    130|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |            0|     82|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |            1|      9|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |            0|    211|  3217|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |            1|     15|  3217|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |            0|   3880| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |            1|    246| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |            0|  14933| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |            1|    983| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |            0|   6387| 26837|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |            1|    408| 26837|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |            0|   1634|  2434|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |            1|    381|  2434|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |            0|     75|  2434|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |            1|     18|  2434|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |            0|    263|  2434|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |            1|     63|  2434|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |            0|    511|   837|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |            1|      3|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |            0|    129|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |            1|      2|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |            0|    189|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |            1|      3|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |            0|     23|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |            1|      2|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |            0|    149|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |            1|     14|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |            0|     61|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |            1|      5|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |            0|    126|   222|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |            1|      4|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |            0|     53|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |            1|      0|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |            0|     39|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |            1|      0|   222|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |            0|     51|   242|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |            1|      4|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |            0|     99|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |            1|     16|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |            0|     66|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |            1|      6|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |            0|     40|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |            1|      1|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |            0|    127|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |            1|      6|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |            0|     62|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |            1|      2|   238|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |            0|     60|   290|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |            1|      0|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |            0|    166|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |            1|      3|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |            0|     60|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |            1|      1|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            0|    195|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |            1|      9|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            0|     30|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |            1|      3|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            0|     30|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |            1|      3|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|    151|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|      2|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|     49|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|      2|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|     47|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|      5|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |            0|     98|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |            1|     18|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |            0|    300|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |            1|     62|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |            0|    127|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |            1|     19|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            0|    130|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |            1|     10|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |            0|    392|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |            1|     43|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            0|    167|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |            1|     13|   755|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |            0|  12040| 13734|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |            1|   1171| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |            0|    117| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |            1|      8| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |            0|    372| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |            1|     26| 13734|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |            0|    131|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |            1|      7|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |            0|    350|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |            1|     23|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |            0|    147|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |            1|     11|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |            0|    499|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |            1|     69|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |            0|    400|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |            1|     87|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |            0|    288|  1390|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |            1|     47|  1390|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            0|     64|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |            1|     14|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |            0|    185|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |            1|     35|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            0|     91|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |            1|     20|   409|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            0|   1402|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |            1|     88|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            0|    326|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |            1|     32|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            0|    475|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |            1|     36|  2359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            0|   7078|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |            1|    741|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            0|    501|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |            1|     73|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            0|   1305|  9830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |            1|    132|  9830|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2e7099e0-0837-4c68-9fc0-f067851a6035/166820f1-ea17-4789-9124-ec69c5a95821/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e7099e0-0837-4c68-9fc0-f067851a6035/166820f1-ea17-4789-9124-ec69c5a95821/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e7099e0-0837-4c68-9fc0-f067851a6035/166820f1-ea17-4789-9124-ec69c5a95821/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e7099e0-0837-4c68-9fc0-f067851a6035/166820f1-ea17-4789-9124-ec69c5a95821/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.0969991|  0.0516404| 0.1423578|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.0754735|  0.0575466| 0.0934004|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.0654594|  0.0361256| 0.0947932|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.1013497|  0.0767379| 0.1259615|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.1042647|  0.0833426| 0.1251868|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.1038094|  0.0772040| 0.1304148|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1260952|  0.1001022| 0.1520882|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.1241040|  0.1077121| 0.1404959|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.1244862|  0.1023162| 0.1466562|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0448276|  0.0330790| 0.0565762|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.0989011|  0.0320763| 0.1657259|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.0663717| -0.0121057| 0.1448490|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.0603175|  0.0525478| 0.0680871|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.0612066|  0.0568940| 0.0655191|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.0615536|  0.0547504| 0.0683568|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.1894258|  0.1723180| 0.2065336|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.1902339|  0.1100538| 0.2704141|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.1914944|  0.1480619| 0.2349268|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1548996|  0.0887623| 0.2210370|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.1716195|  0.1324411| 0.2107980|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.1294699|  0.0746236| 0.1843162|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.0759722|  0.0335321| 0.1184123|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.0996500|  0.0715332| 0.1277668|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.0745089|  0.0366043| 0.1124134|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0886383|  0.0534346| 0.1238420|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.0640000|  0.0504110| 0.0775890|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.0653266|  0.0283038| 0.1023494|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.0507246|  0.0140860| 0.0873632|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.0616622|  0.0372331| 0.0860913|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.0696203|  0.0299064| 0.1093341|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.1262242|  0.0793840| 0.1730644|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.1684388|  0.1275204| 0.2093571|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.1439283|  0.1134905| 0.1743661|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1768332|  0.0923595| 0.2613068|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.1614582|  0.1128200| 0.2100965|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.1820724|  0.1102907| 0.2538541|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0583700|  0.0464727| 0.0702674|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.0905839|  0.0607670| 0.1204007|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.0707026|  0.0484154| 0.0929898|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0948257|  0.0883286| 0.1013228|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.1286732|  0.1014332| 0.1559131|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.0915463|  0.0765337| 0.1065588|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0760784| 0.0615201| 0.0906368|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1034121| 0.0897349| 0.1170893|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1254516| 0.1136848| 0.1372183|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0478707| 0.0359037| 0.0598376|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0609979| 0.0575023| 0.0644934|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.1898110| 0.1742287| 0.2053933|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0874172| 0.0672569| 0.1075775|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0877385| 0.0529840| 0.1224929|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0612855| 0.0430966| 0.0794744|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1460432| 0.1145875| 0.1774988|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1687042| 0.1323664| 0.2050420|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0661297| 0.0560993| 0.0761601|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0962360| 0.0904057| 0.1020663|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 0.7780842| 0.4604616| 1.314800|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 0.6748453| 0.3530984| 1.289771|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 1.0287613| 0.7507067| 1.409805|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 1.0242695| 0.7195551| 1.458023|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 0.9842091| 0.7704098| 1.257340|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 0.9872399| 0.7518190| 1.296380|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 2.2062553| 1.1131512| 4.372777|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 1.4805990| 0.4280422| 5.121396|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 1.0147402| 0.8823058| 1.167053|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.0204937| 0.8644818| 1.204661|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 1.0042660| 0.6525370| 1.545583|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 1.0109200| 0.7919259| 1.290473|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 1.1079403| 0.6822133| 1.799337|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.8358309| 0.4577683| 1.526128|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 1.3116640| 0.7010877| 2.453990|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.9807388| 0.4607783| 2.087443|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 0.7220359| 0.4679692| 1.114039|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 0.7370027| 0.5240840| 1.036423|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 1.2156262| 0.5333591| 2.770642|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.3725136| 0.5467589| 3.445383|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.3344409| 0.9129249| 1.950579|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.1402589| 0.8363462| 1.554608|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 0.9130541| 0.5197232| 1.604061|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.0296280| 0.5546522| 1.911349|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.5518898| 1.0536369| 2.285761|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.2112823| 0.8321852| 1.763075|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.3569434| 1.0862411| 1.695107|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 0.9654157| 0.8082230| 1.153181|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.0209207| -0.0626259|  0.0207845|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             |  0.0020624| -0.0186992|  0.0228239|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | -0.0006436| -0.0238132|  0.0225259|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0030431| -0.0031079|  0.0091941|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.0006804| -0.0064091|  0.0077699|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             |  0.0003852| -0.0067806|  0.0075510|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0037542| -0.0561417|  0.0636501|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.0114450| -0.0277918|  0.0506818|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | -0.0008998| -0.0016588| -0.0001408|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.0105609| -0.0228968|  0.0440185|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.0198189| -0.0059434|  0.0455813|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | -0.0081290| -0.0836366|  0.0673786|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0077597| -0.0001289|  0.0156483|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0014103| -0.0016064|  0.0044269|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.2749884| -0.9567043|  0.1692177|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             |  0.0199431| -0.2028155|  0.2014474|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | -0.0051306| -0.2078771|  0.1635842|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0635692| -0.0699048|  0.1803918|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.0111545| -0.1121474|  0.1207861|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             |  0.0020293| -0.0364455|  0.0390759|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             |  0.0236630| -0.4372141|  0.3367488|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             |  0.1309240| -0.4537148|  0.4804393|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | -0.0102554| -0.0173672| -0.0031934|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             |  0.1723224| -0.5965976|  0.5709312|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.1357061| -0.0745365|  0.3048128|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | -0.0481850| -0.6063562|  0.3160348|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.1173403| -0.0091603|  0.2279838|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0146544| -0.0171858|  0.0454978|
