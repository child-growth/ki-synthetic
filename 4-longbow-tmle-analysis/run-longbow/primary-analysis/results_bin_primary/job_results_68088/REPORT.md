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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mhtcm        | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------------|---------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |         0|    126|  1026|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |         1|      6|  1026|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |         0|    653|  1026|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |         1|     23|  1026|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |         0|    212|  1026|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |         1|      6|  1026|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |         0|    439|  1635|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |         1|     42|  1635|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |         0|    654|  1635|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |         1|     67|  1635|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |         0|    401|  1635|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |         1|     32|  1635|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |         0|    557|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |         1|     26|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |         0|   1345|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |         1|     77|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |         0|    765|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |         1|     41|  2811|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |         0|     35|   214|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |         1|      0|   214|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |         0|    124|   214|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |         1|      3|   214|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |         0|     51|   214|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |         1|      1|   214|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |         0|   1323|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |         1|    164|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |         0|     34|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |         1|     10|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |         0|     95|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |         1|     19|  1645|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |         0|   2426| 15760|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |         1|    107| 15760|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |         0|   8597| 15760|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |         1|    540| 15760|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |         0|   3842| 15760|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |         1|    248| 15760|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |         0|   1687|  2154|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |         1|    101|  2154|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |         0|     66|  2154|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |         1|     11|  2154|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |         0|    274|  2154|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |         1|     15|  2154|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |         0|    435|   716|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |         1|      5|   716|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |         0|    114|   716|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |         1|      0|   716|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |         0|    161|   716|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |         1|      1|   716|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |         0|     21|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |         1|      3|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |         0|    154|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |         1|      7|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |         0|     60|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |         1|      3|   248|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |         0|    124|   217|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |         1|      2|   217|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |         0|     52|   217|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |         1|      0|   217|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |         0|     39|   217|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |         1|      0|   217|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |         0|     53|   240|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |         1|      2|   240|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |         0|    102|   240|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |         1|     13|   240|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |         0|     64|   240|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |         1|      6|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |         0|     41|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |         0|    131|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |         1|      2|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |         0|     62|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |         1|      2|   238|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |         0|     58|   283|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |         1|      0|   283|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |         0|    165|   283|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |         1|      0|   283|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |         0|     59|   283|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |         1|      1|   283|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |         0|    200|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |         1|      1|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |         0|     31|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |         1|      1|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |         0|     33|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |         1|      0|   266|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |         0|    151|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |         0|     50|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |         0|     52|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |         1|      0|   253|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |         0|     88|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |         1|      9|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |         0|    287|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |         1|     26|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |         0|    112|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |         1|     12|   534|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |         0|    135|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |         1|      3|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |         0|    401|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |         1|     18|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |         0|    168|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |         1|      5|   730|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |         0|  13104| 13720|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |         1|     93| 13720|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |         0|    125| 13720|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |         1|      0| 13720|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |         0|    395| 13720|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |         1|      3| 13720|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |         0|    133|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |         1|      5|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |         0|    343|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |         1|      5|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |         0|    149|   640|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |         1|      5|   640|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |         0|    510|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |         1|     25|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |         0|    372|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |         1|     53|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |         0|    270|  1257|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |         1|     27|  1257|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |         0|     60|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |         1|     14|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |         0|    161|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |         1|     33|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |         0|     89|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |         1|     18|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |         0|   1316|  2133|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |         1|     29|  2133|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |         0|    319|  2133|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |         1|      7|  2133|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |         0|    441|  2133|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |         1|     21|  2133|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |         0|   6377|  8178|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |         1|    107|  8178|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |         0|    474|  8178|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |         1|     14|  8178|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |         0|   1187|  8178|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |         1|     19|  8178|


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
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/f48ff888-b0c8-4810-9b76-6b4c1b64739d/8fcaa800-b7b7-43fd-a233-4a753a2b0317/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f48ff888-b0c8-4810-9b76-6b4c1b64739d/8fcaa800-b7b7-43fd-a233-4a753a2b0317/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f48ff888-b0c8-4810-9b76-6b4c1b64739d/8fcaa800-b7b7-43fd-a233-4a753a2b0317/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f48ff888-b0c8-4810-9b76-6b4c1b64739d/8fcaa800-b7b7-43fd-a233-4a753a2b0317/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.0454545|  0.0099029| 0.0810062|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.0340237|  0.0203508| 0.0476966|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.0275229|  0.0057950| 0.0492509|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.0912589|  0.0659227| 0.1165951|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.0907552|  0.0695597| 0.1119507|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.0732541|  0.0486559| 0.0978523|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.0451775|  0.0283799| 0.0619751|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.0533732|  0.0416489| 0.0650974|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.0514072|  0.0360179| 0.0667964|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.1102557|  0.0825406| 0.1379707|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.2203517| -0.0567211| 0.4974245|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.1636761|  0.0134956| 0.3138567|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.0410759|  0.0327886| 0.0493632|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.0584137|  0.0529298| 0.0638975|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.0617000|  0.0531108| 0.0702892|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0568769|  0.0461810| 0.0675728|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.1467860|  0.0681322| 0.2254398|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.0537526|  0.0280255| 0.0794796|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.0927835|  0.0349925| 0.1505745|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.0830671|  0.0524639| 0.1136702|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.0967742|  0.0446880| 0.1488603|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.0362319|  0.0050301| 0.0674337|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.0143678|  0.0018551| 0.0268805|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.0324675|  0.0044529| 0.0604822|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.0491300|  0.0336953| 0.0645648|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.1194392|  0.0718928| 0.1669856|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.0899800|  0.0554871| 0.1244730|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1844400|  0.0958643| 0.2730156|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.1729160|  0.1196855| 0.2261465|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.1709771|  0.0997455| 0.2422087|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0215613|  0.0137972| 0.0293255|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.0214724|  0.0057337| 0.0372111|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.0454545|  0.0264562| 0.0644529|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0165488|  0.0134397| 0.0196579|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.0271566|  0.0132023| 0.0411108|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.0158126|  0.0087157| 0.0229096|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0341131| 0.0230006| 0.0452255|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0862385| 0.0726276| 0.0998495|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1173252| 0.0921861| 0.1424644|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0567893| 0.0526505| 0.0609282|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.0589601| 0.0490104| 0.0689098|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0880150| 0.0639627| 0.1120673|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0234375| 0.0117074| 0.0351676|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.0835322| 0.0594080| 0.1076564|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0267229| 0.0198773| 0.0335686|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0171191| 0.0143076| 0.0199306|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 0.7485207| 0.3106798| 1.803411|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 0.6055046| 0.1992921| 1.839690|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 0.9944810| 0.6920261| 1.429126|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 0.8027066| 0.5194266| 1.240479|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.1814097| 0.7670860| 1.819521|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 1.1378925| 0.7060883| 1.833764|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 1.9985521| 0.5148313| 7.758291|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 1.4845143| 0.5634265| 3.911393|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 1.4220913| 1.1457499| 1.765083|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.5020963| 1.1684639| 1.930991|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 2.5807678| 1.4620969| 4.555349|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 0.9450685| 0.5651168| 1.580477|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 0.8952787| 0.4341874| 1.846032|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.0430108| 0.4579132| 2.375716|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 0.3965517| 0.1165174| 1.349612|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 0.8961039| 0.2648038| 3.032442|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 2.4310831| 1.7037375| 3.468941|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.8314674| 1.2554105| 2.671854|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 0.9375191| 0.5311360| 1.654834|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 0.9270067| 0.4923766| 1.745293|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 0.9958748| 0.4400867| 2.253571|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 2.1081505| 1.2142426| 3.660140|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.6410023| 0.9495887| 2.835847|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 0.9555173| 0.5874052| 1.554316|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.0113415| -0.0439327| 0.0212497|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | -0.0050203| -0.0262530| 0.0162124|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             |  0.0060498| -0.0091880| 0.0212876|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0070695| -0.0069324| 0.0210714|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.0157134|  0.0078180| 0.0236089|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             |  0.0020832| -0.0027516| 0.0069179|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | -0.0047685| -0.0567779| 0.0472409|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | -0.0127944| -0.0390871| 0.0134983|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.0344022|  0.0172931| 0.0515112|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | -0.0111066| -0.0897419| 0.0675287|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.0051616| -0.0004171| 0.0107402|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0005703| -0.0009400| 0.0020807|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | -0.3324675| -1.7178844| 0.3467457|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | -0.0582146| -0.3355216| 0.1615126|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             |  0.1180973| -0.2347552| 0.3701161|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             |  0.0602560| -0.0665407| 0.1719783|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             |  0.2766970|  0.1256795| 0.4016299|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             |  0.0353321| -0.0499524| 0.1136892|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | -0.0541785| -0.8462698| 0.3980878|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | -0.5458937| -2.1301295| 0.2365212|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             |  0.4118434|  0.2586684| 0.5333691|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | -0.0640767| -0.6294485| 0.3051273|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             |  0.1931520| -0.0377679| 0.3726886|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             |  0.0333157| -0.0588821| 0.1174857|
