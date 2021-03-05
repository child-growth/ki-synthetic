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

|agecat      |studyid        |country                      |mage    | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |         0|    277|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |         1|     19|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |         0|     33|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |         0|     40|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |         1|      3|   373|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |         0|    499|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |         1|     16|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |         0|    128|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |         1|      5|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |         0|    390|  1053|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |         1|     15|  1053|
|0-24 months |COHORTS        |INDIA                        |[20-30) |         0|   2483|  4068|
|0-24 months |COHORTS        |INDIA                        |[20-30) |         1|    254|  4068|
|0-24 months |COHORTS        |INDIA                        |<20     |         0|    233|  4068|
|0-24 months |COHORTS        |INDIA                        |<20     |         1|     40|  4068|
|0-24 months |COHORTS        |INDIA                        |>=30    |         0|    947|  4068|
|0-24 months |COHORTS        |INDIA                        |>=30    |         1|    111|  4068|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |         0|   1589|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |         1|     87|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |         0|    327|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |         1|     17|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |         0|    751|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |         1|     40|  2811|
|0-24 months |EE             |PAKISTAN                     |[20-30) |         0|    148|   374|
|0-24 months |EE             |PAKISTAN                     |[20-30) |         1|     13|   374|
|0-24 months |EE             |PAKISTAN                     |<20     |         0|      1|   374|
|0-24 months |EE             |PAKISTAN                     |<20     |         1|      0|   374|
|0-24 months |EE             |PAKISTAN                     |>=30    |         0|    192|   374|
|0-24 months |EE             |PAKISTAN                     |>=30    |         1|     20|   374|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |         0|    339|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |         1|     48|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |         0|    101|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |         1|     20|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |         0|     77|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |         1|     12|   597|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |         0|    159|   250|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |         1|      2|   250|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |         0|     35|   250|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |         1|      1|   250|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |         0|     52|   250|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |         1|      1|   250|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |         0|    800|  1633|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |         1|     82|  1633|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |         0|    171|  1633|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |         1|     29|  1633|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |         0|    471|  1633|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |         1|     80|  1633|
|0-24 months |IRC            |INDIA                        |[20-30) |         0|    307|   410|
|0-24 months |IRC            |INDIA                        |[20-30) |         1|     37|   410|
|0-24 months |IRC            |INDIA                        |<20     |         0|     33|   410|
|0-24 months |IRC            |INDIA                        |<20     |         1|      4|   410|
|0-24 months |IRC            |INDIA                        |>=30    |         0|     22|   410|
|0-24 months |IRC            |INDIA                        |>=30    |         1|      7|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |         0|   6922| 15797|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |         1|    397| 15797|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |         0|   6890| 15797|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |         1|    420| 15797|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |         0|   1088| 15797|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |         1|     80| 15797|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |         0|   1104|  2422|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |         1|     56|  2422|
|0-24 months |Keneba         |GAMBIA                       |<20     |         0|    336|  2422|
|0-24 months |Keneba         |GAMBIA                       |<20     |         1|     18|  2422|
|0-24 months |Keneba         |GAMBIA                       |>=30    |         0|    839|  2422|
|0-24 months |Keneba         |GAMBIA                       |>=30    |         1|     69|  2422|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |         0|    311|   581|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |         1|      1|   581|
|0-24 months |LCNI-5         |MALAWI                       |<20     |         0|     93|   581|
|0-24 months |LCNI-5         |MALAWI                       |<20     |         1|      2|   581|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |         0|    172|   581|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |         1|      2|   581|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |         0|    162|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |         1|      7|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |         0|     31|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |         1|      4|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |         0|     42|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |         1|      2|   248|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |         0|    127|   218|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |         0|     40|   218|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |         0|     49|   218|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |         1|      1|   218|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |         0|    165|   239|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |         1|     19|   239|
|0-24 months |MAL-ED         |INDIA                        |<20     |         0|     32|   239|
|0-24 months |MAL-ED         |INDIA                        |<20     |         1|      2|   239|
|0-24 months |MAL-ED         |INDIA                        |>=30    |         0|     21|   239|
|0-24 months |MAL-ED         |INDIA                        |>=30    |         1|      0|   239|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |         0|    183|   238|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |         1|      4|   238|
|0-24 months |MAL-ED         |NEPAL                        |<20     |         0|      5|   238|
|0-24 months |MAL-ED         |NEPAL                        |<20     |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |         0|     46|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |         1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |[20-30) |         0|    143|   284|
|0-24 months |MAL-ED         |PERU                         |[20-30) |         1|      0|   284|
|0-24 months |MAL-ED         |PERU                         |<20     |         0|     77|   284|
|0-24 months |MAL-ED         |PERU                         |<20     |         1|      1|   284|
|0-24 months |MAL-ED         |PERU                         |>=30    |         0|     63|   284|
|0-24 months |MAL-ED         |PERU                         |>=30    |         1|      0|   284|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |         0|    135|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |         0|     42|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |         0|     96|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |         1|      1|   275|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |         0|    132|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |         0|     15|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |         0|    106|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |         1|      0|   253|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |         0|    322|   532|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |         1|     36|   532|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |         0|     58|   532|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |         1|      3|   532|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |         0|    105|   532|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |         1|      8|   532|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |         0|    458|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |         1|     16|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |         0|    128|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |         1|      5|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |         0|    118|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |         1|      5|   730|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |         0|  11787| 16583|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |         1|     98| 16583|
|0-24 months |PROBIT         |BELARUS                      |<20     |         0|   1704| 16583|
|0-24 months |PROBIT         |BELARUS                      |<20     |         1|     11| 16583|
|0-24 months |PROBIT         |BELARUS                      |>=30    |         0|   2958| 16583|
|0-24 months |PROBIT         |BELARUS                      |>=30    |         1|     25| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |         0|    440|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |         1|      9|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |         0|     73|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |         0|    113|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |         1|      5|   641|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |         0|    951|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |         1|     89|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |         0|    169|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |         1|     11|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |         0|    132|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |         1|     14|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |         0|    222|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |         1|     36|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |         0|     28|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |         1|      5|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |         0|     60|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |         1|     24|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |         0|   1369|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |         1|     35|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |         0|    147|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |         1|      6|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |         0|    574|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |         1|     17|  2148|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |         0|   6213|  9505|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |         1|    118|  9505|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |         0|   1421|  9505|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |         1|     20|  9505|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |         0|   1704|  9505|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |         1|     29|  9505|


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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/d0f3c243-ee1e-439d-a63a-e8f78470038c/448822f0-bc5a-49a4-8ebe-dcd5d651237d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0f3c243-ee1e-439d-a63a-e8f78470038c/448822f0-bc5a-49a4-8ebe-dcd5d651237d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0f3c243-ee1e-439d-a63a-e8f78470038c/448822f0-bc5a-49a4-8ebe-dcd5d651237d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0f3c243-ee1e-439d-a63a-e8f78470038c/448822f0-bc5a-49a4-8ebe-dcd5d651237d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.0310680| 0.0160762| 0.0460598|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.0375940| 0.0052520| 0.0699360|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.0370370| 0.0186357| 0.0554384|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.0971050| 0.0857811| 0.1084288|
|0-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.1415221| 0.0995772| 0.1834670|
|0-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.0929033| 0.0754332| 0.1103734|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.0520723| 0.0414027| 0.0627419|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.0465322| 0.0247370| 0.0683275|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.0507491| 0.0353224| 0.0661757|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.1229292| 0.0899599| 0.1558986|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.1691444| 0.0997441| 0.2385448|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.1469828| 0.0730845| 0.2208810|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.0906222| 0.0654738| 0.1157707|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.1264368| 0.0208421| 0.2320315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.1553948| 0.1157100| 0.1950796|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.0544189| 0.0482817| 0.0605560|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.0580153| 0.0516696| 0.0643610|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.0540457| 0.0427715| 0.0653199|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.0481163| 0.0357924| 0.0604402|
|0-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.0526849| 0.0272042| 0.0781657|
|0-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.0741169| 0.0569641| 0.0912697|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.0337553| 0.0174859| 0.0500247|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.0375940| 0.0052452| 0.0699428|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.0406504| 0.0057272| 0.0755736|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.0082503| 0.0046308| 0.0118697|
|0-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.0062499| 0.0019613| 0.0105385|
|0-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.0084404| 0.0038518| 0.0130290|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.0873329| 0.0617476| 0.1129183|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.0639487| 0.0138363| 0.1140610|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.0857093| 0.0327504| 0.1386681|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.1395349| 0.0971973| 0.1818725|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.1515152| 0.0290194| 0.2740109|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.2857143| 0.1889778| 0.3824508|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.0249288| 0.0167717| 0.0330858|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.0392157| 0.0084514| 0.0699799|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.0287648| 0.0152861| 0.0422435|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.0192747| 0.0157878| 0.0227616|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.0142101| 0.0075284| 0.0208917|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.0147655| 0.0085395| 0.0209915|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0341880| 0.0232075| 0.0451686|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0995575| 0.0903557| 0.1087594|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1340034| 0.1066544| 0.1613523|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1169626| 0.0922087| 0.1417166|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0567829| 0.0526732| 0.0608927|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.0590421| 0.0496532| 0.0684311|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0080806| 0.0045539| 0.0116073|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.0834553| 0.0601989| 0.1067118|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0270019| 0.0201456| 0.0338581|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0175697| 0.0149283| 0.0202111|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 1.2100564| 0.4512550| 3.244810|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 1.1921296| 0.5963889| 2.382964|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 1.4574132| 1.0602773| 2.003300|
|0-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 0.9567302| 0.7673621| 1.192830|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 0.8936090| 0.5360031| 1.489799|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 0.9745891| 0.6754325| 1.406245|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.3759495| 0.8424496| 2.247300|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 1.1956695| 0.6761013| 2.114514|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.3952074| 0.6277100| 3.101120|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.7147540| 1.1839953| 2.483440|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.0660882| 0.9192409| 1.236394|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 0.9931427| 0.7820091| 1.261280|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 1.0949498| 0.6346884| 1.888982|
|0-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.5403705| 1.0926797| 2.171488|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 1.1137218| 0.4153797| 2.986127|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.2042683| 0.4496864| 3.225052|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 0.7575440| 0.4622108| 1.241583|
|0-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 1.0230446| 0.6749559| 1.550650|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.7322397| 0.3093512| 1.733224|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 0.9814083| 0.6471965| 1.488207|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 1.0858586| 0.4578734| 2.575142|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 2.0476190| 1.2995746| 3.226243|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 1.5731092| 0.6723736| 3.680502|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 1.1538796| 0.6515543| 2.043480|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 0.7372385| 0.4454861| 1.220062|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 0.7660544| 0.4841919| 1.211997|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0031201| -0.0080818| 0.0143219|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0024525| -0.0045360| 0.0094410|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | -0.0008449| -0.0075716| 0.0058817|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0110741| -0.0097929| 0.0319411|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0263404|  0.0092680| 0.0434129|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0023641| -0.0020871| 0.0068152|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0109258|  0.0012443| 0.0206074|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0018612| -0.0082359| 0.0119582|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0001697| -0.0009811| 0.0006417|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0038776| -0.0101843| 0.0024291|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0337984|  0.0055533| 0.0620436|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0020731| -0.0030809| 0.0072270|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | -0.0017050| -0.0036763| 0.0002662|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0912621| -0.3014881| 0.3654921|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0246343| -0.0480879| 0.0923106|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | -0.0164941| -0.1566347| 0.1066667|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0826405| -0.0864698| 0.2254285|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.2252037|  0.0738939| 0.3517921|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0416335| -0.0401990| 0.1170283|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.1850516|  0.0061385| 0.3317571|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0522558| -0.2773402| 0.2968051|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0210003| -0.1269683| 0.0750035|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0464632| -0.1224801| 0.0244056|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.1949911|  0.0190527| 0.3393739|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0767757| -0.1340989| 0.2484402|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | -0.0970426| -0.2142127| 0.0088208|
