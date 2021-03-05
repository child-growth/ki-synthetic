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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mage    | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |            0|    222|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |            1|     74|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |            0|     27|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |            1|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |            0|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |            1|     11|   373|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |            0|    608|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |            1|     47|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |            0|    180|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |            1|     16|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |            0|    456|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |            1|     34|  1341|
|0-24 months |COHORTS        |INDIA                        |[20-30) |            0|   3245|  5305|
|0-24 months |COHORTS        |INDIA                        |[20-30) |            1|    352|  5305|
|0-24 months |COHORTS        |INDIA                        |<20     |            0|    384|  5305|
|0-24 months |COHORTS        |INDIA                        |<20     |            1|     42|  5305|
|0-24 months |COHORTS        |INDIA                        |>=30    |            0|   1129|  5305|
|0-24 months |COHORTS        |INDIA                        |>=30    |            1|    153|  5305|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |            0|   1596|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |            1|    224|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |            0|    326|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |            1|     51|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |            0|    741|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |            1|    107|  3045|
|0-24 months |EE             |PAKISTAN                     |[20-30) |            0|    134|   377|
|0-24 months |EE             |PAKISTAN                     |[20-30) |            1|     28|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |            0|      1|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |            1|      0|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |            0|    163|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |            1|     51|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |            0|    339|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |            1|    105|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |            0|    104|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |            1|     37|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |            0|     66|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |            1|     35|   686|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |            0|    174|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |            1|      1|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |            0|     47|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |            1|      0|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |            0|     57|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |            1|      2|   281|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |            0|   1665|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |            1|     78|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |            0|    382|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |            1|     21|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |            0|    982|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |            1|     51|  3179|
|0-24 months |IRC            |INDIA                        |[20-30) |            0|    226|   410|
|0-24 months |IRC            |INDIA                        |[20-30) |            1|    118|   410|
|0-24 months |IRC            |INDIA                        |<20     |            0|     27|   410|
|0-24 months |IRC            |INDIA                        |<20     |            1|     10|   410|
|0-24 months |IRC            |INDIA                        |>=30    |            0|     17|   410|
|0-24 months |IRC            |INDIA                        |>=30    |            1|     12|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |            0|  11861| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |            1|    729| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |            0|  11311| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |            1|    740| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |            0|   2129| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |            1|    175| 26945|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |            0|   1193|  2864|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |            1|    250|  2864|
|0-24 months |Keneba         |GAMBIA                       |<20     |            0|    337|  2864|
|0-24 months |Keneba         |GAMBIA                       |<20     |            1|     57|  2864|
|0-24 months |Keneba         |GAMBIA                       |>=30    |            0|    812|  2864|
|0-24 months |Keneba         |GAMBIA                       |>=30    |            1|    215|  2864|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |            0|    362|   670|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |            1|      2|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |            0|    104|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |            1|      4|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |            0|    196|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |            1|      2|   670|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |            0|    167|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |            1|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |            0|     32|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |            1|      5|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |            0|     43|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |            1|      3|   263|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |            0|    138|   233|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |            0|     41|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |            0|     50|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |            1|      1|   233|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |            0|    172|   249|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |            1|     22|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |            0|     31|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |            1|      3|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |            0|     20|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |            1|      1|   249|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |            0|    180|   240|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |            1|      9|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |            0|      5|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |            0|     46|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |            1|      0|   240|
|0-24 months |MAL-ED         |PERU                         |[20-30) |            0|    150|   302|
|0-24 months |MAL-ED         |PERU                         |[20-30) |            1|      3|   302|
|0-24 months |MAL-ED         |PERU                         |<20     |            0|     81|   302|
|0-24 months |MAL-ED         |PERU                         |<20     |            1|      1|   302|
|0-24 months |MAL-ED         |PERU                         |>=30    |            0|     67|   302|
|0-24 months |MAL-ED         |PERU                         |>=30    |            1|      0|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |            0|    151|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |            1|      8|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |            0|     44|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |            1|      4|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |            0|    101|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |            1|      4|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|    135|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            0|     14|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|    103|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|      3|   261|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |            0|    349|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |            1|     68|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |            0|     66|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |            1|      7|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |            0|    108|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |            1|     24|   622|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |            0|    455|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |            1|     39|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |            0|    122|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |            1|     14|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |            0|    115|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |            1|     13|   758|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |            0|  11141| 16898|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |            1|    989| 16898|
|0-24 months |PROBIT         |BELARUS                      |<20     |            0|   1621| 16898|
|0-24 months |PROBIT         |BELARUS                      |<20     |            1|    124| 16898|
|0-24 months |PROBIT         |BELARUS                      |>=30    |            0|   2811| 16898|
|0-24 months |PROBIT         |BELARUS                      |>=30    |            1|    212| 16898|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |            0|    464|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |            1|     29|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |            0|     83|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |            0|    111|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |            1|     11|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |            0|    979|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |            1|    173|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |            0|    173|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |            1|     19|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |            0|    138|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |            1|     31|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |            0|    247|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |            1|     43|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |            0|     33|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |            1|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |            0|     67|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |            1|     25|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|   1472|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|     99|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            0|    154|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            1|     13|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|    593|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|     45|  2376|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |            0|   8480| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |            1|    871| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |            0|   2018| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |            1|    200| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |            0|   2131| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |            1|    208| 13908|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/21c5af3c-f26f-42b9-b53a-9c5451c76672/4f62a90c-9768-469b-ad0c-36756ebedbc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21c5af3c-f26f-42b9-b53a-9c5451c76672/4f62a90c-9768-469b-ad0c-36756ebedbc5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/21c5af3c-f26f-42b9-b53a-9c5451c76672/4f62a90c-9768-469b-ad0c-36756ebedbc5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21c5af3c-f26f-42b9-b53a-9c5451c76672/4f62a90c-9768-469b-ad0c-36756ebedbc5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | 0.2500000| 0.2006047| 0.2993953|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |NA             | 0.2058824| 0.0697869| 0.3419778|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |NA             | 0.2558140| 0.1252270| 0.3864009|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.0699588| 0.0505594| 0.0893582|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.0866365| 0.0455623| 0.1277107|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.0683632| 0.0459893| 0.0907372|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.1012496| 0.0911919| 0.1113073|
|0-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.0960988| 0.0662483| 0.1259492|
|0-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.1078675| 0.0908060| 0.1249291|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.1226267| 0.1074102| 0.1378431|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.1293605| 0.0940737| 0.1646474|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.1267833| 0.1044727| 0.1490938|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.2388965| 0.1987858| 0.2790072|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.2753997| 0.1963484| 0.3544510|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.2867431| 0.2059557| 0.3675305|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.0447965| 0.0315461| 0.0580469|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.0470574| 0.0307556| 0.0633593|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.0501769| 0.0261329| 0.0742209|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | 0.3424109| 0.2921059| 0.3927160|
|0-24 months |IRC            |INDIA                        |<20                |NA             | 0.2596304| 0.1055903| 0.4136705|
|0-24 months |IRC            |INDIA                        |>=30               |NA             | 0.4401179| 0.2638764| 0.6163595|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.0578252| 0.0529467| 0.0627037|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.0633329| 0.0578902| 0.0687756|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.0696488| 0.0580788| 0.0812188|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.1763396| 0.1560664| 0.1966127|
|0-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.1462392| 0.1088285| 0.1836499|
|0-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.2076519| 0.1823143| 0.2329896|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.1630695| 0.1275833| 0.1985558|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.0958904| 0.0282924| 0.1634885|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.1818182| 0.1159684| 0.2476679|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.0797363| 0.0558815| 0.1035911|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.1053564| 0.0541376| 0.1565752|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.1037557| 0.0517731| 0.1557384|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.0818008| 0.0470506| 0.1165511|
|0-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.0703743| 0.0389002| 0.1018484|
|0-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.0701372| 0.0410276| 0.0992468|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.1525924| 0.1221680| 0.1830168|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.1164718| 0.0357384| 0.1972052|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.1438637| 0.0946592| 0.1930682|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.0628919| 0.0508661| 0.0749177|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.0766271| 0.0362231| 0.1170311|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.0711400| 0.0511939| 0.0910861|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.0932366| 0.0871115| 0.0993617|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.0890983| 0.0763308| 0.1018659|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.0929190| 0.0789491| 0.1068889|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2466488| 0.2028447| 0.2904529|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0723341| 0.0584645| 0.0862036|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1031103| 0.0949263| 0.1112943|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1254516| 0.1136848| 0.1372183|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2580175| 0.2252514| 0.2907836|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0471846| 0.0353428| 0.0590265|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3414634| 0.2955068| 0.3874201|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610132| 0.0575333| 0.0644930|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.1822626| 0.1681211| 0.1964040|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.1591640| 0.1303913| 0.1879367|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0784116| 0.0458146| 0.1110087|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1473893| 0.1184132| 0.1763654|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0660774| 0.0560867| 0.0760682|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0919615| 0.0871588| 0.0967642|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |[20-30)        | 0.8235294| 0.4130909| 1.6417711|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |[20-30)        | 1.0232558| 0.5919164| 1.7689196|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 1.2383928| 0.7149814| 2.1449744|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 0.9771926| 0.6361537| 1.5010607|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 0.9491276| 0.6851453| 1.3148206|
|0-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.0653626| 0.8841849| 1.2836653|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.0549136| 0.7818227| 1.4233952|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.0338966| 0.8335689| 1.2823680|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.1527990| 0.8266520| 1.6076240|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 1.2002814| 0.8647560| 1.6659907|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.0504715| 0.6842011| 1.6128160|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.1201072| 0.6571601| 1.9091847|
|0-24 months |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |<20                |[20-30)        | 0.7582422| 0.4114194| 1.3974334|
|0-24 months |IRC            |INDIA                        |>=30               |[20-30)        | 1.2853501| 0.8390548| 1.9690309|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.0952480| 0.9779957| 1.2265578|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.2044725| 1.0076664| 1.4397165|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 0.8293044| 0.6266401| 1.0975131|
|0-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.1775684| 0.9958326| 1.3924703|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.5880338| 0.2811840| 1.2297419|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 1.1149733| 0.7307436| 1.7012334|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 1.3213113| 0.7470520| 2.3370040|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.3012366| 0.7257390| 2.3330930|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 0.8603130| 0.6678335| 1.1082681|
|0-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.8574148| 0.7422879| 0.9903975|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.7632870| 0.4126184| 1.4119754|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 0.9427973| 0.7946437| 1.1185727|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 1.2183935| 0.6953490| 2.1348744|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 1.1311478| 0.8055722| 1.5883063|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 0.9556153| 0.8162650| 1.1187552|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 0.9965933| 0.8457778| 1.1743017|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0033512| -0.0254025|  0.0187001|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0023753| -0.0116021|  0.0163526|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0018607| -0.0042102|  0.0079316|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0028249| -0.0070103|  0.0126601|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0191210| -0.0060323|  0.0442742|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0023882| -0.0075819|  0.0123582|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | -0.0009475| -0.0211485|  0.0192535|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0031880| -0.0003429|  0.0067189|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0059230| -0.0088111|  0.0206571|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0039056| -0.0238720|  0.0160609|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0073350| -0.0079197|  0.0225896|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0033892| -0.0066477| -0.0001307|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0052031| -0.0103458| -0.0000604|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0031855| -0.0041167|  0.0104878|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | -0.0012751| -0.0049512|  0.0024009|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0135870| -0.1070401|  0.0719771|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0328374| -0.1809508|  0.2079234|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0180454| -0.0426108|  0.0751729|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0225178| -0.0591053|  0.0978503|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0741072| -0.0285830|  0.1665452|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0506129| -0.1821962|  0.2375751|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | -0.0027749| -0.0637139|  0.0546729|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0522511| -0.0074055|  0.1083749|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0324970| -0.0518192|  0.1100543|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0245379| -0.1579328|  0.0934897|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0842411| -0.1075649|  0.2428305|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0432229| -0.0769999| -0.0105052|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0353018| -0.0700598| -0.0016727|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0482091| -0.0687643|  0.1523800|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | -0.0138661| -0.0546255|  0.0253180|
