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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country     |parity | sstunted| n_cell|     n|
|:---------|:--------------|:-----------|:------|--------:|------:|-----:|
|Birth     |COHORTS        |INDIA       |1      |        0|    733|  4149|
|Birth     |COHORTS        |INDIA       |1      |        1|     25|  4149|
|Birth     |COHORTS        |INDIA       |2      |        0|   1025|  4149|
|Birth     |COHORTS        |INDIA       |2      |        1|     35|  4149|
|Birth     |COHORTS        |INDIA       |3+     |        0|   2259|  4149|
|Birth     |COHORTS        |INDIA       |3+     |        1|     72|  4149|
|Birth     |COHORTS        |GUATEMALA   |1      |        0|    128|   846|
|Birth     |COHORTS        |GUATEMALA   |1      |        1|      1|   846|
|Birth     |COHORTS        |GUATEMALA   |2      |        0|    129|   846|
|Birth     |COHORTS        |GUATEMALA   |2      |        1|      2|   846|
|Birth     |COHORTS        |GUATEMALA   |3+     |        0|    578|   846|
|Birth     |COHORTS        |GUATEMALA   |3+     |        1|      8|   846|
|Birth     |COHORTS        |PHILIPPINES |1      |        0|    698|  3049|
|Birth     |COHORTS        |PHILIPPINES |1      |        1|      4|  3049|
|Birth     |COHORTS        |PHILIPPINES |2      |        0|    699|  3049|
|Birth     |COHORTS        |PHILIPPINES |2      |        1|     19|  3049|
|Birth     |COHORTS        |PHILIPPINES |3+     |        0|   1606|  3049|
|Birth     |COHORTS        |PHILIPPINES |3+     |        1|     23|  3049|
|Birth     |GMS-Nepal      |NEPAL       |1      |        0|    189|   696|
|Birth     |GMS-Nepal      |NEPAL       |1      |        1|     10|   696|
|Birth     |GMS-Nepal      |NEPAL       |2      |        0|    175|   696|
|Birth     |GMS-Nepal      |NEPAL       |2      |        1|      9|   696|
|Birth     |GMS-Nepal      |NEPAL       |3+     |        0|    301|   696|
|Birth     |GMS-Nepal      |NEPAL       |3+     |        1|     12|   696|
|Birth     |JiVitA-3       |BANGLADESH  |1      |        0|   7581| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |1      |        1|    904| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |2      |        0|   6490| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |2      |        1|    838| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |        0|   5934| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |        1|    706| 22453|
|Birth     |Keneba         |GAMBIA      |1      |        0|     46|  1110|
|Birth     |Keneba         |GAMBIA      |1      |        1|      2|  1110|
|Birth     |Keneba         |GAMBIA      |2      |        0|     88|  1110|
|Birth     |Keneba         |GAMBIA      |2      |        1|      2|  1110|
|Birth     |Keneba         |GAMBIA      |3+     |        0|    951|  1110|
|Birth     |Keneba         |GAMBIA      |3+     |        1|     21|  1110|
|Birth     |PROVIDE        |BANGLADESH  |1      |        0|    210|   539|
|Birth     |PROVIDE        |BANGLADESH  |1      |        1|      3|   539|
|Birth     |PROVIDE        |BANGLADESH  |2      |        0|    203|   539|
|Birth     |PROVIDE        |BANGLADESH  |2      |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH  |3+     |        0|    122|   539|
|Birth     |PROVIDE        |BANGLADESH  |3+     |        1|      0|   539|
|Birth     |SAS-CompFeed   |INDIA       |1      |        0|    364|  1251|
|Birth     |SAS-CompFeed   |INDIA       |1      |        1|     33|  1251|
|Birth     |SAS-CompFeed   |INDIA       |2      |        0|    253|  1251|
|Birth     |SAS-CompFeed   |INDIA       |2      |        1|     16|  1251|
|Birth     |SAS-CompFeed   |INDIA       |3+     |        0|    544|  1251|
|Birth     |SAS-CompFeed   |INDIA       |3+     |        1|     41|  1251|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |        0|   6157| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |        1|    223| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |        0|   4336| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |        1|    136| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |        0|   2935| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |        1|     83| 13870|
|6 months  |COHORTS        |INDIA       |1      |        0|    752|  4290|
|6 months  |COHORTS        |INDIA       |1      |        1|     45|  4290|
|6 months  |COHORTS        |INDIA       |2      |        0|   1015|  4290|
|6 months  |COHORTS        |INDIA       |2      |        1|     39|  4290|
|6 months  |COHORTS        |INDIA       |3+     |        0|   2330|  4290|
|6 months  |COHORTS        |INDIA       |3+     |        1|    109|  4290|
|6 months  |COHORTS        |GUATEMALA   |1      |        0|    121|   956|
|6 months  |COHORTS        |GUATEMALA   |1      |        1|     21|   956|
|6 months  |COHORTS        |GUATEMALA   |2      |        0|    127|   956|
|6 months  |COHORTS        |GUATEMALA   |2      |        1|     16|   956|
|6 months  |COHORTS        |GUATEMALA   |3+     |        0|    585|   956|
|6 months  |COHORTS        |GUATEMALA   |3+     |        1|     86|   956|
|6 months  |COHORTS        |PHILIPPINES |1      |        0|    582|  2707|
|6 months  |COHORTS        |PHILIPPINES |1      |        1|     36|  2707|
|6 months  |COHORTS        |PHILIPPINES |2      |        0|    615|  2707|
|6 months  |COHORTS        |PHILIPPINES |2      |        1|     28|  2707|
|6 months  |COHORTS        |PHILIPPINES |3+     |        0|   1378|  2707|
|6 months  |COHORTS        |PHILIPPINES |3+     |        1|     68|  2707|
|6 months  |GMS-Nepal      |NEPAL       |1      |        0|    150|   564|
|6 months  |GMS-Nepal      |NEPAL       |1      |        1|      6|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |        0|    141|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |        1|      6|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |        0|    252|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |        1|      9|   564|
|6 months  |JiVitA-3       |BANGLADESH  |1      |        0|   6107| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |1      |        1|    400| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |2      |        0|   5215| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |2      |        1|    322| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |        0|   4469| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |        1|    297| 16810|
|6 months  |Keneba         |GAMBIA      |1      |        0|     67|  1418|
|6 months  |Keneba         |GAMBIA      |1      |        1|      1|  1418|
|6 months  |Keneba         |GAMBIA      |2      |        0|    119|  1418|
|6 months  |Keneba         |GAMBIA      |2      |        1|      2|  1418|
|6 months  |Keneba         |GAMBIA      |3+     |        0|   1186|  1418|
|6 months  |Keneba         |GAMBIA      |3+     |        1|     43|  1418|
|6 months  |PROVIDE        |BANGLADESH  |1      |        0|    234|   604|
|6 months  |PROVIDE        |BANGLADESH  |1      |        1|      8|   604|
|6 months  |PROVIDE        |BANGLADESH  |2      |        0|    205|   604|
|6 months  |PROVIDE        |BANGLADESH  |2      |        1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH  |3+     |        0|    151|   604|
|6 months  |PROVIDE        |BANGLADESH  |3+     |        1|      2|   604|
|6 months  |SAS-CompFeed   |INDIA       |1      |        0|    369|  1334|
|6 months  |SAS-CompFeed   |INDIA       |1      |        1|     40|  1334|
|6 months  |SAS-CompFeed   |INDIA       |2      |        0|    277|  1334|
|6 months  |SAS-CompFeed   |INDIA       |2      |        1|     28|  1334|
|6 months  |SAS-CompFeed   |INDIA       |3+     |        0|    560|  1334|
|6 months  |SAS-CompFeed   |INDIA       |3+     |        1|     60|  1334|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |        0|     16|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |        1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |        0|     53|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |        1|      9|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |        0|    257|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |        1|     40|   380|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |        0|    712|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |        1|      8|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |        0|    654|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |        1|      3|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |        0|    637|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |        1|      8|  2022|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |        0|   3645|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |        1|    150|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |        0|   2714|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |        1|    124|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |        0|   1957|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |        1|     77|  8667|
|24 months |COHORTS        |INDIA       |1      |        0|    463|  3305|
|24 months |COHORTS        |INDIA       |1      |        1|    130|  3305|
|24 months |COHORTS        |INDIA       |2      |        0|    651|  3305|
|24 months |COHORTS        |INDIA       |2      |        1|    177|  3305|
|24 months |COHORTS        |INDIA       |3+     |        0|   1423|  3305|
|24 months |COHORTS        |INDIA       |3+     |        1|    461|  3305|
|24 months |COHORTS        |GUATEMALA   |1      |        0|     83|  1058|
|24 months |COHORTS        |GUATEMALA   |1      |        1|     80|  1058|
|24 months |COHORTS        |GUATEMALA   |2      |        0|     85|  1058|
|24 months |COHORTS        |GUATEMALA   |2      |        1|     73|  1058|
|24 months |COHORTS        |GUATEMALA   |3+     |        0|    374|  1058|
|24 months |COHORTS        |GUATEMALA   |3+     |        1|    363|  1058|
|24 months |COHORTS        |PHILIPPINES |1      |        0|    384|  2444|
|24 months |COHORTS        |PHILIPPINES |1      |        1|    156|  2444|
|24 months |COHORTS        |PHILIPPINES |2      |        0|    427|  2444|
|24 months |COHORTS        |PHILIPPINES |2      |        1|    164|  2444|
|24 months |COHORTS        |PHILIPPINES |3+     |        0|    927|  2444|
|24 months |COHORTS        |PHILIPPINES |3+     |        1|    386|  2444|
|24 months |GMS-Nepal      |NEPAL       |1      |        0|    121|   488|
|24 months |GMS-Nepal      |NEPAL       |1      |        1|     13|   488|
|24 months |GMS-Nepal      |NEPAL       |2      |        0|    115|   488|
|24 months |GMS-Nepal      |NEPAL       |2      |        1|     17|   488|
|24 months |GMS-Nepal      |NEPAL       |3+     |        0|    199|   488|
|24 months |GMS-Nepal      |NEPAL       |3+     |        1|     23|   488|
|24 months |JiVitA-3       |BANGLADESH  |1      |        0|   2781|  8631|
|24 months |JiVitA-3       |BANGLADESH  |1      |        1|    513|  8631|
|24 months |JiVitA-3       |BANGLADESH  |2      |        0|   2375|  8631|
|24 months |JiVitA-3       |BANGLADESH  |2      |        1|    422|  8631|
|24 months |JiVitA-3       |BANGLADESH  |3+     |        0|   2129|  8631|
|24 months |JiVitA-3       |BANGLADESH  |3+     |        1|    411|  8631|
|24 months |Keneba         |GAMBIA      |1      |        0|     48|  1194|
|24 months |Keneba         |GAMBIA      |1      |        1|      4|  1194|
|24 months |Keneba         |GAMBIA      |2      |        0|     93|  1194|
|24 months |Keneba         |GAMBIA      |2      |        1|      9|  1194|
|24 months |Keneba         |GAMBIA      |3+     |        0|    944|  1194|
|24 months |Keneba         |GAMBIA      |3+     |        1|     96|  1194|
|24 months |PROVIDE        |BANGLADESH  |1      |        0|    210|   578|
|24 months |PROVIDE        |BANGLADESH  |1      |        1|     20|   578|
|24 months |PROVIDE        |BANGLADESH  |2      |        0|    186|   578|
|24 months |PROVIDE        |BANGLADESH  |2      |        1|     17|   578|
|24 months |PROVIDE        |BANGLADESH  |3+     |        0|    130|   578|
|24 months |PROVIDE        |BANGLADESH  |3+     |        1|     15|   578|
|24 months |TanzaniaChild2 |TANZANIA    |1      |        0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA    |1      |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |        1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |        0|    613|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |        1|     81|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |        0|    496|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |        1|     57|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |        0|    352|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |        1|     39|  1638|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


