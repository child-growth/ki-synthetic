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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country                      |sex    | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female |             0|     80|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female |             1|    107|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male   |             0|     56|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male   |             1|    130|   373|
|0-24 months |CMIN           |BANGLADESH                   |Female |             0|     60|   277|
|0-24 months |CMIN           |BANGLADESH                   |Female |             1|     60|   277|
|0-24 months |CMIN           |BANGLADESH                   |Male   |             0|     79|   277|
|0-24 months |CMIN           |BANGLADESH                   |Male   |             1|     78|   277|
|0-24 months |COHORTS        |GUATEMALA                    |Female |             0|    365|  1368|
|0-24 months |COHORTS        |GUATEMALA                    |Female |             1|    279|  1368|
|0-24 months |COHORTS        |GUATEMALA                    |Male   |             0|    368|  1368|
|0-24 months |COHORTS        |GUATEMALA                    |Male   |             1|    356|  1368|
|0-24 months |COHORTS        |INDIA                        |Female |             0|   3163|  7417|
|0-24 months |COHORTS        |INDIA                        |Female |             1|    391|  7417|
|0-24 months |COHORTS        |INDIA                        |Male   |             0|   3308|  7417|
|0-24 months |COHORTS        |INDIA                        |Male   |             1|    555|  7417|
|0-24 months |COHORTS        |PHILIPPINES                  |Female |             0|    972|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Female |             1|    465|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Male   |             0|    997|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Male   |             1|    624|  3058|
|0-24 months |CONTENT        |PERU                         |Female |             0|    107|   215|
|0-24 months |CONTENT        |PERU                         |Female |             1|      2|   215|
|0-24 months |CONTENT        |PERU                         |Male   |             0|     98|   215|
|0-24 months |CONTENT        |PERU                         |Male   |             1|      8|   215|
|0-24 months |EE             |PAKISTAN                     |Female |             0|     76|   379|
|0-24 months |EE             |PAKISTAN                     |Female |             1|    109|   379|
|0-24 months |EE             |PAKISTAN                     |Male   |             0|     75|   379|
|0-24 months |EE             |PAKISTAN                     |Male   |             1|    119|   379|
|0-24 months |GMS-Nepal      |NEPAL                        |Female |             0|    253|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Female |             1|     75|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Male   |             0|    276|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Male   |             1|     94|   698|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female |             0|    146|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female |             1|     16|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male   |             0|    113|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male   |             1|     40|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female |             0|   1490|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female |             1|    135|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male   |             0|   1418|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male   |             1|    222|  3265|
|0-24 months |IRC            |INDIA                        |Female |             0|    142|   410|
|0-24 months |IRC            |INDIA                        |Female |             1|     43|   410|
|0-24 months |IRC            |INDIA                        |Male   |             0|    166|   410|
|0-24 months |IRC            |INDIA                        |Male   |             1|     59|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female |             0|  11175| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female |             1|   2201| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male   |             0|  11030| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male   |             1|   2821| 27227|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female |             0|   2245|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female |             1|    479|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male   |             0|   2091|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male   |             1|    627|  5442|
|0-24 months |Keneba         |GAMBIA                       |Female |             0|   1155|  2915|
|0-24 months |Keneba         |GAMBIA                       |Female |             1|    252|  2915|
|0-24 months |Keneba         |GAMBIA                       |Male   |             0|   1141|  2915|
|0-24 months |Keneba         |GAMBIA                       |Male   |             1|    367|  2915|
|0-24 months |LCNI-5         |MALAWI                       |Female |             0|    356|   840|
|0-24 months |LCNI-5         |MALAWI                       |Female |             1|     65|   840|
|0-24 months |LCNI-5         |MALAWI                       |Male   |             0|    307|   840|
|0-24 months |LCNI-5         |MALAWI                       |Male   |             1|    112|   840|
|0-24 months |MAL-ED         |BANGLADESH                   |Female |             0|    111|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |Female |             1|     25|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |Male   |             0|     96|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |Male   |             1|     33|   265|
|0-24 months |MAL-ED         |BRAZIL                       |Female |             0|    104|   233|
|0-24 months |MAL-ED         |BRAZIL                       |Female |             1|      9|   233|
|0-24 months |MAL-ED         |BRAZIL                       |Male   |             0|    107|   233|
|0-24 months |MAL-ED         |BRAZIL                       |Male   |             1|     13|   233|
|0-24 months |MAL-ED         |INDIA                        |Female |             0|    112|   251|
|0-24 months |MAL-ED         |INDIA                        |Female |             1|     26|   251|
|0-24 months |MAL-ED         |INDIA                        |Male   |             0|     80|   251|
|0-24 months |MAL-ED         |INDIA                        |Male   |             1|     33|   251|
|0-24 months |MAL-ED         |NEPAL                        |Female |             0|    102|   240|
|0-24 months |MAL-ED         |NEPAL                        |Female |             1|      8|   240|
|0-24 months |MAL-ED         |NEPAL                        |Male   |             0|    117|   240|
|0-24 months |MAL-ED         |NEPAL                        |Male   |             1|     13|   240|
|0-24 months |MAL-ED         |PERU                         |Female |             0|    118|   303|
|0-24 months |MAL-ED         |PERU                         |Female |             1|     25|   303|
|0-24 months |MAL-ED         |PERU                         |Male   |             0|    121|   303|
|0-24 months |MAL-ED         |PERU                         |Male   |             1|     39|   303|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female |             0|    126|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female |             1|     33|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male   |             0|    115|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male   |             1|     40|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female |             0|     70|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female |             1|     63|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male   |             0|     55|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male   |             1|     74|   262|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female |             0|    217|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female |             1|     80|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male   |             0|    216|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male   |             1|    116|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female |             0|    336|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female |             1|     45|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male   |             0|    323|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male   |             1|     54|   758|
|0-24 months |PROBIT         |BELARUS                      |Female |             0|   8022| 16897|
|0-24 months |PROBIT         |BELARUS                      |Female |             1|    132| 16897|
|0-24 months |PROBIT         |BELARUS                      |Male   |             0|   8408| 16897|
|0-24 months |PROBIT         |BELARUS                      |Male   |             1|    335| 16897|
|0-24 months |PROVIDE        |BANGLADESH                   |Female |             0|    291|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Female |             1|     41|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Male   |             0|    314|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Male   |             1|     54|   700|
|0-24 months |ResPak         |PAKISTAN                     |Female |             0|     86|   284|
|0-24 months |ResPak         |PAKISTAN                     |Female |             1|     50|   284|
|0-24 months |ResPak         |PAKISTAN                     |Male   |             0|     79|   284|
|0-24 months |ResPak         |PAKISTAN                     |Male   |             1|     69|   284|
|0-24 months |SAS-CompFeed   |INDIA                        |Female |             0|    483|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Female |             1|    217|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Male   |             0|    543|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Male   |             1|    290|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female |             0|    125|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female |             1|     98|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male   |             0|     92|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male   |             1|    103|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female |             0|   1101|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female |             1|     83|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male   |             0|   1056|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male   |             1|    156|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female |             0|   5887| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female |             1|    948| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male   |             0|   5821| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male   |             1|   1418| 14074|


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
![](/tmp/cbab1ca3-f535-4eb5-9e79-11dbf4cb4962/14f0d1ed-8802-4c2a-83a8-9b7d2a5860b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cbab1ca3-f535-4eb5-9e79-11dbf4cb4962/14f0d1ed-8802-4c2a-83a8-9b7d2a5860b2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cbab1ca3-f535-4eb5-9e79-11dbf4cb4962/14f0d1ed-8802-4c2a-83a8-9b7d2a5860b2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cbab1ca3-f535-4eb5-9e79-11dbf4cb4962/14f0d1ed-8802-4c2a-83a8-9b7d2a5860b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             | 0.5721925| 0.5011848| 0.6432002|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male               |NA             | 0.6989247| 0.6329121| 0.7649374|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | 0.5000000| 0.4103784| 0.5896216|
|0-24 months |CMIN           |BANGLADESH                   |Male               |NA             | 0.4968153| 0.4184642| 0.5751663|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             | 0.4332298| 0.3949450| 0.4715146|
|0-24 months |COHORTS        |GUATEMALA                    |Male               |NA             | 0.4917127| 0.4552836| 0.5281418|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             | 0.1100169| 0.0997287| 0.1203051|
|0-24 months |COHORTS        |INDIA                        |Male               |NA             | 0.1436707| 0.1326091| 0.1547324|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             | 0.3235908| 0.2993976| 0.3477840|
|0-24 months |COHORTS        |PHILIPPINES                  |Male               |NA             | 0.3849476| 0.3612565| 0.4086386|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             | 0.5891892| 0.5182013| 0.6601771|
|0-24 months |EE             |PAKISTAN                     |Male               |NA             | 0.6134021| 0.5447864| 0.6820177|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             | 0.2286585| 0.1831765| 0.2741405|
|0-24 months |GMS-Nepal      |NEPAL                        |Male               |NA             | 0.2540541| 0.2096651| 0.2984430|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female             |NA             | 0.0987654| 0.0527501| 0.1447808|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male               |NA             | 0.2614379| 0.1916997| 0.3311761|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             | 0.0830769| 0.0629294| 0.1032244|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male               |NA             | 0.1353659| 0.1044940| 0.1662377|
|0-24 months |IRC            |INDIA                        |Female             |NA             | 0.2324324| 0.1714929| 0.2933720|
|0-24 months |IRC            |INDIA                        |Male               |NA             | 0.2622222| 0.2046803| 0.3197642|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             | 0.1645484| 0.1575719| 0.1715250|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male               |NA             | 0.2036676| 0.1960936| 0.2112416|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             | 0.1758443| 0.1598608| 0.1918279|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male               |NA             | 0.2306843| 0.2132830| 0.2480856|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             | 0.1791045| 0.1590656| 0.1991433|
|0-24 months |Keneba         |GAMBIA                       |Male               |NA             | 0.2433687| 0.2217068| 0.2650306|
|0-24 months |LCNI-5         |MALAWI                       |Female             |NA             | 0.1543943| 0.1198588| 0.1889298|
|0-24 months |LCNI-5         |MALAWI                       |Male               |NA             | 0.2673031| 0.2249033| 0.3097029|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |NA             | 0.1838235| 0.1186018| 0.2490452|
|0-24 months |MAL-ED         |BANGLADESH                   |Male               |NA             | 0.2558140| 0.1803782| 0.3312497|
|0-24 months |MAL-ED         |BRAZIL                       |Female             |NA             | 0.0796460| 0.0296193| 0.1296728|
|0-24 months |MAL-ED         |BRAZIL                       |Male               |NA             | 0.1083333| 0.0526053| 0.1640614|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             | 0.1884058| 0.1230338| 0.2537778|
|0-24 months |MAL-ED         |INDIA                        |Male               |NA             | 0.2920354| 0.2080315| 0.3760393|
|0-24 months |MAL-ED         |NEPAL                        |Female             |NA             | 0.0727273| 0.0240965| 0.1213580|
|0-24 months |MAL-ED         |NEPAL                        |Male               |NA             | 0.1000000| 0.0483222| 0.1516778|
|0-24 months |MAL-ED         |PERU                         |Female             |NA             | 0.1748252| 0.1124699| 0.2371804|
|0-24 months |MAL-ED         |PERU                         |Male               |NA             | 0.2437500| 0.1771137| 0.3103863|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |NA             | 0.2075472| 0.1444097| 0.2706847|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male               |NA             | 0.2580645| 0.1890688| 0.3270602|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female             |NA             | 0.4736842| 0.3886644| 0.5587041|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male               |NA             | 0.5736434| 0.4881385| 0.6591483|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             | 0.2693603| 0.2188670| 0.3198536|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male               |NA             | 0.3493976| 0.2980710| 0.4007242|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             | 0.1181102| 0.0856820| 0.1505385|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male               |NA             | 0.1432361| 0.1078509| 0.1786212|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             | 0.0161884| 0.0108845| 0.0214923|
|0-24 months |PROBIT         |BELARUS                      |Male               |NA             | 0.0383164| 0.0277821| 0.0488507|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             | 0.1234940| 0.0880788| 0.1589092|
|0-24 months |PROVIDE        |BANGLADESH                   |Male               |NA             | 0.1467391| 0.1105608| 0.1829175|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             | 0.3676471| 0.2864688| 0.4488254|
|0-24 months |ResPak         |PAKISTAN                     |Male               |NA             | 0.4662162| 0.3857044| 0.5467280|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             | 0.3100000| 0.2770153| 0.3429847|
|0-24 months |SAS-CompFeed   |INDIA                        |Male               |NA             | 0.3481393| 0.3004483| 0.3958302|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             | 0.4394619| 0.3742422| 0.5046816|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male               |NA             | 0.5282051| 0.4580549| 0.5983553|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             | 0.0701014| 0.0555553| 0.0846474|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male               |NA             | 0.1287129| 0.1098556| 0.1475702|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             | 0.1386979| 0.1305037| 0.1468921|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male               |NA             | 0.1958834| 0.1867405| 0.2050263|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6353887| 0.5864772| 0.6843003|
|0-24 months |CMIN           |BANGLADESH                   |NA                 |NA             | 0.4981949| 0.4392073| 0.5571825|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4641813| 0.4377440| 0.4906186|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1275448| 0.1199527| 0.1351370|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3561151| 0.3391405| 0.3730897|
|0-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.6015831| 0.5522295| 0.6509367|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2421203| 0.2103189| 0.2739218|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.1777778| 0.1354898| 0.2200657|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1093415| 0.0900773| 0.1286057|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1844493| 0.1788538| 0.1900447|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2032341| 0.1914368| 0.2150314|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.2123499| 0.1975010| 0.2271989|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2107143| 0.1831192| 0.2383093|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2188679| 0.1689910| 0.2687448|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.0944206| 0.0567935| 0.1320477|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2350598| 0.1824967| 0.2876229|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.0875000| 0.0516764| 0.1233236|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2112211| 0.1651858| 0.2572564|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2324841| 0.1856873| 0.2792809|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5229008| 0.4623051| 0.5834965|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0276380| 0.0201988| 0.0350773|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |ResPak         |PAKISTAN                     |NA                 |NA             | 0.4190141| 0.3615294| 0.4764987|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3307241| 0.3024794| 0.3589688|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4808612| 0.4329065| 0.5288160|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0997496| 0.0877482| 0.1117510|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1681114| 0.1619329| 0.1742900|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Male               |Female         | 1.2214853| 1.0451039| 1.427634|
|0-24 months |CMIN           |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMIN           |BANGLADESH                   |Male               |Female         | 0.9936306| 0.7825985| 1.261569|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Male               |Female         | 1.1349928| 1.0113730| 1.273723|
|0-24 months |COHORTS        |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Male               |Female         | 1.3058971| 1.1569166| 1.474062|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Male               |Female         | 1.1896121| 1.0798157| 1.310573|
|0-24 months |EE             |PAKISTAN                     |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |EE             |PAKISTAN                     |Male               |Female         | 1.0410952| 0.8832628| 1.227131|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Male               |Female         | 1.1110631| 0.8526276| 1.447831|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Male               |Female         | 2.6470588| 1.5474149| 4.528146|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Male               |Female         | 1.6294038| 1.2020731| 2.208648|
|0-24 months |IRC            |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Male               |Female         | 1.1281654| 0.8014734| 1.588022|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Male               |Female         | 1.2377364| 1.1756467| 1.303105|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Male               |Female         | 1.3118666| 1.1655650| 1.476532|
|0-24 months |Keneba         |GAMBIA                       |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |Male               |Female         | 1.3588086| 1.1777881| 1.567651|
|0-24 months |LCNI-5         |MALAWI                       |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |Male               |Female         | 1.7313016| 1.3160788| 2.277527|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Male               |Female         | 1.3916279| 0.8773260| 2.207422|
|0-24 months |MAL-ED         |BRAZIL                       |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BRAZIL                       |Male               |Female         | 1.3601852| 0.6039536| 3.063321|
|0-24 months |MAL-ED         |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Male               |Female         | 1.5500340| 0.9876502| 2.432648|
|0-24 months |MAL-ED         |NEPAL                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |Male               |Female         | 1.3750000| 0.5905862| 3.201269|
|0-24 months |MAL-ED         |PERU                         |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |Male               |Female         | 1.3942500| 0.8895555| 2.185286|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Male               |Female         | 1.2434018| 0.8293222| 1.864231|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Male               |Female         | 1.2110250| 0.9590216| 1.529248|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Male               |Female         | 1.2971386| 1.0222458| 1.645953|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Male               |Female         | 1.2127321| 0.8382291| 1.754555|
|0-24 months |PROBIT         |BELARUS                      |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Male               |Female         | 2.3669065| 1.8692542| 2.997049|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Male               |Female         | 1.1882291| 0.8140567| 1.734386|
|0-24 months |ResPak         |PAKISTAN                     |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ResPak         |PAKISTAN                     |Male               |Female         | 1.2681081| 0.9581122| 1.678403|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Male               |Female         | 1.1230299| 0.9326578| 1.352260|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Male               |Female         | 1.2019362| 0.9848930| 1.466810|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Male               |Female         | 1.8360969| 1.4242332| 2.367064|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |Female         | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Male               |Female         | 1.4123029| 1.3098716| 1.522744|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             |  0.0631962|  0.0144231| 0.1119694|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | -0.0018051| -0.0692766| 0.0656665|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             |  0.0309515|  0.0029400| 0.0589630|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             |  0.0175279|  0.0096507| 0.0254052|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             |  0.0325243|  0.0145422| 0.0505064|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             |  0.0123939| -0.0381575| 0.0629453|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             |  0.0134618| -0.0202399| 0.0471635|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female             |NA             |  0.0790123|  0.0374459| 0.1205788|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             |  0.0262646|  0.0098180| 0.0427111|
|0-24 months |IRC            |INDIA                        |Female             |NA             |  0.0163481| -0.0296696| 0.0623657|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             |  0.0199008|  0.0151147| 0.0246870|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             |  0.0273898|  0.0155817| 0.0391978|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             |  0.0332454|  0.0179352| 0.0485557|
|0-24 months |LCNI-5         |MALAWI                       |Female             |NA             |  0.0563200|  0.0287764| 0.0838635|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |NA             |  0.0350444| -0.0136930| 0.0837818|
|0-24 months |MAL-ED         |BRAZIL                       |Female             |NA             |  0.0147746| -0.0238387| 0.0533879|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             |  0.0466540| -0.0016910| 0.0949989|
|0-24 months |MAL-ED         |NEPAL                        |Female             |NA             |  0.0147727| -0.0237034| 0.0532488|
|0-24 months |MAL-ED         |PERU                         |Female             |NA             |  0.0363959| -0.0119507| 0.0847426|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |NA             |  0.0249369| -0.0213141| 0.0711880|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female             |NA             |  0.0492166| -0.0104616| 0.1088947|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             |  0.0422455|  0.0041140| 0.0803769|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             |  0.0124966| -0.0113919| 0.0363852|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             |  0.0114497|  0.0074589| 0.0154404|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             |  0.0122203| -0.0144090| 0.0388496|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             |  0.0513670| -0.0084906| 0.1112246|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             |  0.0207241| -0.0136409| 0.0550890|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             |  0.0413994| -0.0034864| 0.0862851|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             |  0.0296482|  0.0175442| 0.0417522|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             |  0.0294135|  0.0230809| 0.0357461|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Female             |NA             |  0.0994607|  0.0184481| 0.1737870|
|0-24 months |CMIN           |BANGLADESH                   |Female             |NA             | -0.0036232| -0.1486190| 0.1230691|
|0-24 months |COHORTS        |GUATEMALA                    |Female             |NA             |  0.0666797|  0.0042614| 0.1251853|
|0-24 months |COHORTS        |INDIA                        |Female             |NA             |  0.1374258|  0.0738370| 0.1966486|
|0-24 months |COHORTS        |PHILIPPINES                  |Female             |NA             |  0.0913308|  0.0394053| 0.1404495|
|0-24 months |EE             |PAKISTAN                     |Female             |NA             |  0.0206022| -0.0671749| 0.1011594|
|0-24 months |GMS-Nepal      |NEPAL                        |Female             |NA             |  0.0555997| -0.0942874| 0.1849563|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Female             |NA             |  0.4444444|  0.1820801| 0.6226501|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |Female             |NA             |  0.2402069|  0.0861335| 0.3683042|
|0-24 months |IRC            |INDIA                        |Female             |NA             |  0.0657128| -0.1386877| 0.2334223|
|0-24 months |JiVitA-3       |BANGLADESH                   |Female             |NA             |  0.1078932|  0.0817004| 0.1333388|
|0-24 months |JiVitA-4       |BANGLADESH                   |Female             |NA             |  0.1347695|  0.0748052| 0.1908473|
|0-24 months |Keneba         |GAMBIA                       |Female             |NA             |  0.1565597|  0.0817841| 0.2252459|
|0-24 months |LCNI-5         |MALAWI                       |Female             |NA             |  0.2672813|  0.1276227| 0.3845820|
|0-24 months |MAL-ED         |BANGLADESH                   |Female             |NA             |  0.1601166| -0.0928059| 0.3545019|
|0-24 months |MAL-ED         |BRAZIL                       |Female             |NA             |  0.1564763| -0.3633938| 0.4781168|
|0-24 months |MAL-ED         |INDIA                        |Female             |NA             |  0.1984770| -0.0328363| 0.3779856|
|0-24 months |MAL-ED         |NEPAL                        |Female             |NA             |  0.1688312| -0.4029836| 0.5075911|
|0-24 months |MAL-ED         |PERU                         |Female             |NA             |  0.1723121| -0.0890912| 0.3709734|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Female             |NA             |  0.1072629| -0.1149164| 0.2851665|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Female             |NA             |  0.0941222| -0.0280895| 0.2018062|
|0-24 months |NIH-Birth      |BANGLADESH                   |Female             |NA             |  0.1355734|  0.0043719| 0.2494855|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Female             |NA             |  0.0956812| -0.1062779| 0.2607712|
|0-24 months |PROBIT         |BELARUS                      |Female             |NA             |  0.4142721|  0.3058921| 0.5057292|
|0-24 months |PROVIDE        |BANGLADESH                   |Female             |NA             |  0.0900444| -0.1282918| 0.2661302|
|0-24 months |ResPak         |PAKISTAN                     |Female             |NA             |  0.1225902| -0.0328593| 0.2546439|
|0-24 months |SAS-CompFeed   |INDIA                        |Female             |NA             |  0.0626627| -0.0446081| 0.1589179|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Female             |NA             |  0.0860942| -0.0124865| 0.1750765|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Female             |NA             |  0.2972266|  0.1701477| 0.4048454|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Female             |NA             |  0.1749645|  0.1368070| 0.2114353|
