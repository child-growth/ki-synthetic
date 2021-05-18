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

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country     |parity | pers_wast| n_cell|     n|
|:-----------|:--------------|:-----------|:------|---------:|------:|-----:|
|0-24 months |COHORTS        |INDIA       |1      |         0|    577|  3539|
|0-24 months |COHORTS        |INDIA       |1      |         1|     74|  3539|
|0-24 months |COHORTS        |INDIA       |2      |         0|    798|  3539|
|0-24 months |COHORTS        |INDIA       |2      |         1|     75|  3539|
|0-24 months |COHORTS        |INDIA       |3+     |         0|   1816|  3539|
|0-24 months |COHORTS        |INDIA       |3+     |         1|    199|  3539|
|0-24 months |COHORTS        |GUATEMALA   |1      |         0|    151|  1049|
|0-24 months |COHORTS        |GUATEMALA   |1      |         1|      5|  1049|
|0-24 months |COHORTS        |GUATEMALA   |2      |         0|    156|  1049|
|0-24 months |COHORTS        |GUATEMALA   |2      |         1|      3|  1049|
|0-24 months |COHORTS        |GUATEMALA   |3+     |         0|    706|  1049|
|0-24 months |COHORTS        |GUATEMALA   |3+     |         1|     28|  1049|
|0-24 months |COHORTS        |PHILIPPINES |1      |         0|    607|  2810|
|0-24 months |COHORTS        |PHILIPPINES |1      |         1|     40|  2810|
|0-24 months |COHORTS        |PHILIPPINES |2      |         0|    644|  2810|
|0-24 months |COHORTS        |PHILIPPINES |2      |         1|     27|  2810|
|0-24 months |COHORTS        |PHILIPPINES |3+     |         0|   1415|  2810|
|0-24 months |COHORTS        |PHILIPPINES |3+     |         1|     77|  2810|
|0-24 months |GMS-Nepal      |NEPAL       |1      |         0|    147|   597|
|0-24 months |GMS-Nepal      |NEPAL       |1      |         1|     17|   597|
|0-24 months |GMS-Nepal      |NEPAL       |2      |         0|    138|   597|
|0-24 months |GMS-Nepal      |NEPAL       |2      |         1|     22|   597|
|0-24 months |GMS-Nepal      |NEPAL       |3+     |         0|    232|   597|
|0-24 months |GMS-Nepal      |NEPAL       |3+     |         1|     41|   597|
|0-24 months |JiVitA-3       |BANGLADESH  |1      |         0|   5764| 15802|
|0-24 months |JiVitA-3       |BANGLADESH  |1      |         1|    340| 15802|
|0-24 months |JiVitA-3       |BANGLADESH  |2      |         0|   4968| 15802|
|0-24 months |JiVitA-3       |BANGLADESH  |2      |         1|    276| 15802|
|0-24 months |JiVitA-3       |BANGLADESH  |3+     |         0|   4172| 15802|
|0-24 months |JiVitA-3       |BANGLADESH  |3+     |         1|    282| 15802|
|0-24 months |Keneba         |GAMBIA      |1      |         0|     74|  1676|
|0-24 months |Keneba         |GAMBIA      |1      |         1|      4|  1676|
|0-24 months |Keneba         |GAMBIA      |2      |         0|    136|  1676|
|0-24 months |Keneba         |GAMBIA      |2      |         1|      6|  1676|
|0-24 months |Keneba         |GAMBIA      |3+     |         0|   1366|  1676|
|0-24 months |Keneba         |GAMBIA      |3+     |         1|     90|  1676|
|0-24 months |PROVIDE        |BANGLADESH  |1      |         0|    249|   641|
|0-24 months |PROVIDE        |BANGLADESH  |1      |         1|      6|   641|
|0-24 months |PROVIDE        |BANGLADESH  |2      |         0|    222|   641|
|0-24 months |PROVIDE        |BANGLADESH  |2      |         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH  |3+     |         0|    155|   641|
|0-24 months |PROVIDE        |BANGLADESH  |3+     |         1|      6|   641|
|0-24 months |SAS-CompFeed   |INDIA       |1      |         0|    387|  1364|
|0-24 months |SAS-CompFeed   |INDIA       |1      |         1|     34|  1364|
|0-24 months |SAS-CompFeed   |INDIA       |2      |         0|    284|  1364|
|0-24 months |SAS-CompFeed   |INDIA       |2      |         1|     31|  1364|
|0-24 months |SAS-CompFeed   |INDIA       |3+     |         0|    579|  1364|
|0-24 months |SAS-CompFeed   |INDIA       |3+     |         1|     49|  1364|
|0-24 months |SAS-FoodSuppl  |INDIA       |1      |         0|     13|   375|
|0-24 months |SAS-FoodSuppl  |INDIA       |1      |         1|      3|   375|
|0-24 months |SAS-FoodSuppl  |INDIA       |2      |         0|     54|   375|
|0-24 months |SAS-FoodSuppl  |INDIA       |2      |         1|      9|   375|
|0-24 months |SAS-FoodSuppl  |INDIA       |3+     |         0|    243|   375|
|0-24 months |SAS-FoodSuppl  |INDIA       |3+     |         1|     53|   375|
|0-24 months |TanzaniaChild2 |TANZANIA    |1      |         0|    745|  2159|
|0-24 months |TanzaniaChild2 |TANZANIA    |1      |         1|     18|  2159|
|0-24 months |TanzaniaChild2 |TANZANIA    |2      |         0|    688|  2159|
|0-24 months |TanzaniaChild2 |TANZANIA    |2      |         1|     23|  2159|
|0-24 months |TanzaniaChild2 |TANZANIA    |3+     |         0|    668|  2159|
|0-24 months |TanzaniaChild2 |TANZANIA    |3+     |         1|     17|  2159|
|0-24 months |ZVITAMBO       |ZIMBABWE    |1      |         0|   4131|  9525|
|0-24 months |ZVITAMBO       |ZIMBABWE    |1      |         1|     72|  9525|
|0-24 months |ZVITAMBO       |ZIMBABWE    |2      |         0|   3063|  9525|
|0-24 months |ZVITAMBO       |ZIMBABWE    |2      |         1|     65|  9525|
|0-24 months |ZVITAMBO       |ZIMBABWE    |3+     |         0|   2163|  9525|
|0-24 months |ZVITAMBO       |ZIMBABWE    |3+     |         1|     31|  9525|
|0-6 months  |COHORTS        |PHILIPPINES |1      |         0|    187|   853|
|0-6 months  |COHORTS        |PHILIPPINES |1      |         1|     13|   853|
|0-6 months  |COHORTS        |PHILIPPINES |2      |         0|    201|   853|
|0-6 months  |COHORTS        |PHILIPPINES |2      |         1|      5|   853|
|0-6 months  |COHORTS        |PHILIPPINES |3+     |         0|    413|   853|
|0-6 months  |COHORTS        |PHILIPPINES |3+     |         1|     34|   853|
|0-6 months  |GMS-Nepal      |NEPAL       |1      |         0|    140|   567|
|0-6 months  |GMS-Nepal      |NEPAL       |1      |         1|     16|   567|
|0-6 months  |GMS-Nepal      |NEPAL       |2      |         0|    133|   567|
|0-6 months  |GMS-Nepal      |NEPAL       |2      |         1|     15|   567|
|0-6 months  |GMS-Nepal      |NEPAL       |3+     |         0|    232|   567|
|0-6 months  |GMS-Nepal      |NEPAL       |3+     |         1|     31|   567|
|0-6 months  |JiVitA-3       |BANGLADESH  |1      |         0|     15|    50|
|0-6 months  |JiVitA-3       |BANGLADESH  |1      |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH  |2      |         0|     16|    50|
|0-6 months  |JiVitA-3       |BANGLADESH  |2      |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH  |3+     |         0|     17|    50|
|0-6 months  |JiVitA-3       |BANGLADESH  |3+     |         1|      0|    50|
|0-6 months  |Keneba         |GAMBIA      |1      |         0|     65|  1385|
|0-6 months  |Keneba         |GAMBIA      |1      |         1|      3|  1385|
|0-6 months  |Keneba         |GAMBIA      |2      |         0|    118|  1385|
|0-6 months  |Keneba         |GAMBIA      |2      |         1|      2|  1385|
|0-6 months  |Keneba         |GAMBIA      |3+     |         0|   1157|  1385|
|0-6 months  |Keneba         |GAMBIA      |3+     |         1|     40|  1385|
|0-6 months  |PROVIDE        |BANGLADESH  |1      |         0|    250|   638|
|0-6 months  |PROVIDE        |BANGLADESH  |1      |         1|      3|   638|
|0-6 months  |PROVIDE        |BANGLADESH  |2      |         0|    218|   638|
|0-6 months  |PROVIDE        |BANGLADESH  |2      |         1|      6|   638|
|0-6 months  |PROVIDE        |BANGLADESH  |3+     |         0|    156|   638|
|0-6 months  |PROVIDE        |BANGLADESH  |3+     |         1|      5|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA    |1      |         0|    707|  2054|
|0-6 months  |TanzaniaChild2 |TANZANIA    |1      |         1|     19|  2054|
|0-6 months  |TanzaniaChild2 |TANZANIA    |2      |         0|    656|  2054|
|0-6 months  |TanzaniaChild2 |TANZANIA    |2      |         1|     20|  2054|
|0-6 months  |TanzaniaChild2 |TANZANIA    |3+     |         0|    639|  2054|
|0-6 months  |TanzaniaChild2 |TANZANIA    |3+     |         1|     13|  2054|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |1      |         0|    272|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |1      |         1|      6|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |2      |         0|    209|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |2      |         1|      3|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |3+     |         0|    137|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |3+     |         1|      5|   632|
|6-24 months |COHORTS        |INDIA       |1      |         0|    577|  3539|
|6-24 months |COHORTS        |INDIA       |1      |         1|     74|  3539|
|6-24 months |COHORTS        |INDIA       |2      |         0|    798|  3539|
|6-24 months |COHORTS        |INDIA       |2      |         1|     75|  3539|
|6-24 months |COHORTS        |INDIA       |3+     |         0|   1816|  3539|
|6-24 months |COHORTS        |INDIA       |3+     |         1|    199|  3539|
|6-24 months |COHORTS        |GUATEMALA   |1      |         0|    151|  1049|
|6-24 months |COHORTS        |GUATEMALA   |1      |         1|      5|  1049|
|6-24 months |COHORTS        |GUATEMALA   |2      |         0|    156|  1049|
|6-24 months |COHORTS        |GUATEMALA   |2      |         1|      3|  1049|
|6-24 months |COHORTS        |GUATEMALA   |3+     |         0|    706|  1049|
|6-24 months |COHORTS        |GUATEMALA   |3+     |         1|     28|  1049|
|6-24 months |COHORTS        |PHILIPPINES |1      |         0|    607|  2810|
|6-24 months |COHORTS        |PHILIPPINES |1      |         1|     40|  2810|
|6-24 months |COHORTS        |PHILIPPINES |2      |         0|    644|  2810|
|6-24 months |COHORTS        |PHILIPPINES |2      |         1|     27|  2810|
|6-24 months |COHORTS        |PHILIPPINES |3+     |         0|   1415|  2810|
|6-24 months |COHORTS        |PHILIPPINES |3+     |         1|     77|  2810|
|6-24 months |GMS-Nepal      |NEPAL       |1      |         0|    147|   597|
|6-24 months |GMS-Nepal      |NEPAL       |1      |         1|     17|   597|
|6-24 months |GMS-Nepal      |NEPAL       |2      |         0|    138|   597|
|6-24 months |GMS-Nepal      |NEPAL       |2      |         1|     22|   597|
|6-24 months |GMS-Nepal      |NEPAL       |3+     |         0|    232|   597|
|6-24 months |GMS-Nepal      |NEPAL       |3+     |         1|     41|   597|
|6-24 months |JiVitA-3       |BANGLADESH  |1      |         0|   5764| 15802|
|6-24 months |JiVitA-3       |BANGLADESH  |1      |         1|    340| 15802|
|6-24 months |JiVitA-3       |BANGLADESH  |2      |         0|   4968| 15802|
|6-24 months |JiVitA-3       |BANGLADESH  |2      |         1|    276| 15802|
|6-24 months |JiVitA-3       |BANGLADESH  |3+     |         0|   4172| 15802|
|6-24 months |JiVitA-3       |BANGLADESH  |3+     |         1|    282| 15802|
|6-24 months |Keneba         |GAMBIA      |1      |         0|     74|  1676|
|6-24 months |Keneba         |GAMBIA      |1      |         1|      4|  1676|
|6-24 months |Keneba         |GAMBIA      |2      |         0|    136|  1676|
|6-24 months |Keneba         |GAMBIA      |2      |         1|      6|  1676|
|6-24 months |Keneba         |GAMBIA      |3+     |         0|   1366|  1676|
|6-24 months |Keneba         |GAMBIA      |3+     |         1|     90|  1676|
|6-24 months |PROVIDE        |BANGLADESH  |1      |         0|    249|   641|
|6-24 months |PROVIDE        |BANGLADESH  |1      |         1|      6|   641|
|6-24 months |PROVIDE        |BANGLADESH  |2      |         0|    222|   641|
|6-24 months |PROVIDE        |BANGLADESH  |2      |         1|      3|   641|
|6-24 months |PROVIDE        |BANGLADESH  |3+     |         0|    155|   641|
|6-24 months |PROVIDE        |BANGLADESH  |3+     |         1|      6|   641|
|6-24 months |SAS-CompFeed   |INDIA       |1      |         0|    387|  1364|
|6-24 months |SAS-CompFeed   |INDIA       |1      |         1|     34|  1364|
|6-24 months |SAS-CompFeed   |INDIA       |2      |         0|    284|  1364|
|6-24 months |SAS-CompFeed   |INDIA       |2      |         1|     31|  1364|
|6-24 months |SAS-CompFeed   |INDIA       |3+     |         0|    579|  1364|
|6-24 months |SAS-CompFeed   |INDIA       |3+     |         1|     49|  1364|
|6-24 months |SAS-FoodSuppl  |INDIA       |1      |         0|     13|   375|
|6-24 months |SAS-FoodSuppl  |INDIA       |1      |         1|      3|   375|
|6-24 months |SAS-FoodSuppl  |INDIA       |2      |         0|     54|   375|
|6-24 months |SAS-FoodSuppl  |INDIA       |2      |         1|      9|   375|
|6-24 months |SAS-FoodSuppl  |INDIA       |3+     |         0|    243|   375|
|6-24 months |SAS-FoodSuppl  |INDIA       |3+     |         1|     53|   375|
|6-24 months |TanzaniaChild2 |TANZANIA    |1      |         0|    745|  2159|
|6-24 months |TanzaniaChild2 |TANZANIA    |1      |         1|     18|  2159|
|6-24 months |TanzaniaChild2 |TANZANIA    |2      |         0|    688|  2159|
|6-24 months |TanzaniaChild2 |TANZANIA    |2      |         1|     23|  2159|
|6-24 months |TanzaniaChild2 |TANZANIA    |3+     |         0|    668|  2159|
|6-24 months |TanzaniaChild2 |TANZANIA    |3+     |         1|     17|  2159|
|6-24 months |ZVITAMBO       |ZIMBABWE    |1      |         0|   4131|  9525|
|6-24 months |ZVITAMBO       |ZIMBABWE    |1      |         1|     72|  9525|
|6-24 months |ZVITAMBO       |ZIMBABWE    |2      |         0|   3063|  9525|
|6-24 months |ZVITAMBO       |ZIMBABWE    |2      |         1|     65|  9525|
|6-24 months |ZVITAMBO       |ZIMBABWE    |3+     |         0|   2163|  9525|
|6-24 months |ZVITAMBO       |ZIMBABWE    |3+     |         1|     31|  9525|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


