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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country     |parity | swasted| n_cell|     n|
|:---------|:--------------|:-----------|:------|-------:|------:|-----:|
|Birth     |COHORTS        |INDIA       |1      |       0|    660|  3870|
|Birth     |COHORTS        |INDIA       |1      |       1|     42|  3870|
|Birth     |COHORTS        |INDIA       |2      |       0|    925|  3870|
|Birth     |COHORTS        |INDIA       |2      |       1|     53|  3870|
|Birth     |COHORTS        |INDIA       |3+     |       0|   2071|  3870|
|Birth     |COHORTS        |INDIA       |3+     |       1|    119|  3870|
|Birth     |COHORTS        |GUATEMALA   |1      |       0|    108|   751|
|Birth     |COHORTS        |GUATEMALA   |1      |       1|      7|   751|
|Birth     |COHORTS        |GUATEMALA   |2      |       0|    107|   751|
|Birth     |COHORTS        |GUATEMALA   |2      |       1|     13|   751|
|Birth     |COHORTS        |GUATEMALA   |3+     |       0|    476|   751|
|Birth     |COHORTS        |GUATEMALA   |3+     |       1|     40|   751|
|Birth     |COHORTS        |PHILIPPINES |1      |       0|    645|  2898|
|Birth     |COHORTS        |PHILIPPINES |1      |       1|     32|  2898|
|Birth     |COHORTS        |PHILIPPINES |2      |       0|    649|  2898|
|Birth     |COHORTS        |PHILIPPINES |2      |       1|     29|  2898|
|Birth     |COHORTS        |PHILIPPINES |3+     |       0|   1483|  2898|
|Birth     |COHORTS        |PHILIPPINES |3+     |       1|     60|  2898|
|Birth     |GMS-Nepal      |NEPAL       |1      |       0|    173|   641|
|Birth     |GMS-Nepal      |NEPAL       |1      |       1|      9|   641|
|Birth     |GMS-Nepal      |NEPAL       |2      |       0|    162|   641|
|Birth     |GMS-Nepal      |NEPAL       |2      |       1|      7|   641|
|Birth     |GMS-Nepal      |NEPAL       |3+     |       0|    279|   641|
|Birth     |GMS-Nepal      |NEPAL       |3+     |       1|     11|   641|
|Birth     |JiVitA-3       |BANGLADESH  |1      |       0|   6681| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |1      |       1|    144| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |2      |       0|   5736| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |2      |       1|    101| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |       0|   5246| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |       1|    104| 18012|
|Birth     |Keneba         |GAMBIA      |1      |       0|     40|  1054|
|Birth     |Keneba         |GAMBIA      |1      |       1|      5|  1054|
|Birth     |Keneba         |GAMBIA      |2      |       0|     85|  1054|
|Birth     |Keneba         |GAMBIA      |2      |       1|      2|  1054|
|Birth     |Keneba         |GAMBIA      |3+     |       0|    859|  1054|
|Birth     |Keneba         |GAMBIA      |3+     |       1|     63|  1054|
|Birth     |PROVIDE        |BANGLADESH  |1      |       0|    208|   532|
|Birth     |PROVIDE        |BANGLADESH  |1      |       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH  |2      |       0|    195|   532|
|Birth     |PROVIDE        |BANGLADESH  |2      |       1|      7|   532|
|Birth     |PROVIDE        |BANGLADESH  |3+     |       0|    116|   532|
|Birth     |PROVIDE        |BANGLADESH  |3+     |       1|      5|   532|
|Birth     |SAS-CompFeed   |INDIA       |1      |       0|    341|  1103|
|Birth     |SAS-CompFeed   |INDIA       |1      |       1|      6|  1103|
|Birth     |SAS-CompFeed   |INDIA       |2      |       0|    239|  1103|
|Birth     |SAS-CompFeed   |INDIA       |2      |       1|      7|  1103|
|Birth     |SAS-CompFeed   |INDIA       |3+     |       0|    494|  1103|
|Birth     |SAS-CompFeed   |INDIA       |3+     |       1|     16|  1103|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |       0|   5552| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |       1|    367| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |       0|   3913| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |       1|    254| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |       0|   2656| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |       1|    171| 12913|
|6 months  |COHORTS        |INDIA       |1      |       0|    769|  4284|
|6 months  |COHORTS        |INDIA       |1      |       1|     28|  4284|
|6 months  |COHORTS        |INDIA       |2      |       0|   1021|  4284|
|6 months  |COHORTS        |INDIA       |2      |       1|     31|  4284|
|6 months  |COHORTS        |INDIA       |3+     |       0|   2361|  4284|
|6 months  |COHORTS        |INDIA       |3+     |       1|     74|  4284|
|6 months  |COHORTS        |GUATEMALA   |1      |       0|    140|   958|
|6 months  |COHORTS        |GUATEMALA   |1      |       1|      2|   958|
|6 months  |COHORTS        |GUATEMALA   |2      |       0|    145|   958|
|6 months  |COHORTS        |GUATEMALA   |2      |       1|      0|   958|
|6 months  |COHORTS        |GUATEMALA   |3+     |       0|    667|   958|
|6 months  |COHORTS        |GUATEMALA   |3+     |       1|      4|   958|
|6 months  |COHORTS        |PHILIPPINES |1      |       0|    608|  2705|
|6 months  |COHORTS        |PHILIPPINES |1      |       1|     10|  2705|
|6 months  |COHORTS        |PHILIPPINES |2      |       0|    638|  2705|
|6 months  |COHORTS        |PHILIPPINES |2      |       1|      5|  2705|
|6 months  |COHORTS        |PHILIPPINES |3+     |       0|   1424|  2705|
|6 months  |COHORTS        |PHILIPPINES |3+     |       1|     20|  2705|
|6 months  |GMS-Nepal      |NEPAL       |1      |       0|    156|   564|
|6 months  |GMS-Nepal      |NEPAL       |1      |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |       0|    142|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |       1|      5|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |       0|    259|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |       1|      2|   564|
|6 months  |JiVitA-3       |BANGLADESH  |1      |       0|   6405| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |1      |       1|     93| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |2      |       0|   5455| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |2      |       1|     74| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |       0|   4693| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |       1|     63| 16783|
|6 months  |Keneba         |GAMBIA      |1      |       0|     67|  1418|
|6 months  |Keneba         |GAMBIA      |1      |       1|      1|  1418|
|6 months  |Keneba         |GAMBIA      |2      |       0|    120|  1418|
|6 months  |Keneba         |GAMBIA      |2      |       1|      1|  1418|
|6 months  |Keneba         |GAMBIA      |3+     |       0|   1207|  1418|
|6 months  |Keneba         |GAMBIA      |3+     |       1|     22|  1418|
|6 months  |PROVIDE        |BANGLADESH  |1      |       0|    240|   603|
|6 months  |PROVIDE        |BANGLADESH  |1      |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH  |2      |       0|    207|   603|
|6 months  |PROVIDE        |BANGLADESH  |2      |       1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH  |3+     |       0|    151|   603|
|6 months  |PROVIDE        |BANGLADESH  |3+     |       1|      2|   603|
|6 months  |SAS-CompFeed   |INDIA       |1      |       0|    392|  1332|
|6 months  |SAS-CompFeed   |INDIA       |1      |       1|     17|  1332|
|6 months  |SAS-CompFeed   |INDIA       |2      |       0|    293|  1332|
|6 months  |SAS-CompFeed   |INDIA       |2      |       1|     10|  1332|
|6 months  |SAS-CompFeed   |INDIA       |3+     |       0|    604|  1332|
|6 months  |SAS-CompFeed   |INDIA       |3+     |       1|     16|  1332|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |       0|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |       0|     59|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |       1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |       0|    283|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |       1|     14|   380|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |       0|    714|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |       1|      5|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |       0|    651|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |       1|      6|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |       0|    644|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |       1|      1|  2021|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |       0|   3682|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |       1|     40|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |       0|   2771|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |       1|     23|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |       0|   1971|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |       1|     16|  8503|
|24 months |COHORTS        |INDIA       |1      |       0|    582|  3282|
|24 months |COHORTS        |INDIA       |1      |       1|      7|  3282|
|24 months |COHORTS        |INDIA       |2      |       0|    817|  3282|
|24 months |COHORTS        |INDIA       |2      |       1|      6|  3282|
|24 months |COHORTS        |INDIA       |3+     |       0|   1849|  3282|
|24 months |COHORTS        |INDIA       |3+     |       1|     21|  3282|
|24 months |COHORTS        |GUATEMALA   |1      |       0|    164|  1070|
|24 months |COHORTS        |GUATEMALA   |1      |       1|      1|  1070|
|24 months |COHORTS        |GUATEMALA   |2      |       0|    161|  1070|
|24 months |COHORTS        |GUATEMALA   |2      |       1|      0|  1070|
|24 months |COHORTS        |GUATEMALA   |3+     |       0|    741|  1070|
|24 months |COHORTS        |GUATEMALA   |3+     |       1|      3|  1070|
|24 months |COHORTS        |PHILIPPINES |1      |       0|    530|  2448|
|24 months |COHORTS        |PHILIPPINES |1      |       1|      9|  2448|
|24 months |COHORTS        |PHILIPPINES |2      |       0|    589|  2448|
|24 months |COHORTS        |PHILIPPINES |2      |       1|      3|  2448|
|24 months |COHORTS        |PHILIPPINES |3+     |       0|   1304|  2448|
|24 months |COHORTS        |PHILIPPINES |3+     |       1|     13|  2448|
|24 months |GMS-Nepal      |NEPAL       |1      |       0|    131|   487|
|24 months |GMS-Nepal      |NEPAL       |1      |       1|      3|   487|
|24 months |GMS-Nepal      |NEPAL       |2      |       0|    125|   487|
|24 months |GMS-Nepal      |NEPAL       |2      |       1|      6|   487|
|24 months |GMS-Nepal      |NEPAL       |3+     |       0|    216|   487|
|24 months |GMS-Nepal      |NEPAL       |3+     |       1|      6|   487|
|24 months |JiVitA-3       |BANGLADESH  |1      |       0|   3154|  8602|
|24 months |JiVitA-3       |BANGLADESH  |1      |       1|    130|  8602|
|24 months |JiVitA-3       |BANGLADESH  |2      |       0|   2678|  8602|
|24 months |JiVitA-3       |BANGLADESH  |2      |       1|    110|  8602|
|24 months |JiVitA-3       |BANGLADESH  |3+     |       0|   2435|  8602|
|24 months |JiVitA-3       |BANGLADESH  |3+     |       1|     95|  8602|
|24 months |Keneba         |GAMBIA      |1      |       0|     52|  1196|
|24 months |Keneba         |GAMBIA      |1      |       1|      0|  1196|
|24 months |Keneba         |GAMBIA      |2      |       0|    102|  1196|
|24 months |Keneba         |GAMBIA      |2      |       1|      1|  1196|
|24 months |Keneba         |GAMBIA      |3+     |       0|   1020|  1196|
|24 months |Keneba         |GAMBIA      |3+     |       1|     21|  1196|
|24 months |PROVIDE        |BANGLADESH  |1      |       0|    225|   579|
|24 months |PROVIDE        |BANGLADESH  |1      |       1|      6|   579|
|24 months |PROVIDE        |BANGLADESH  |2      |       0|    203|   579|
|24 months |PROVIDE        |BANGLADESH  |2      |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH  |3+     |       0|    142|   579|
|24 months |PROVIDE        |BANGLADESH  |3+     |       1|      3|   579|
|24 months |TanzaniaChild2 |TANZANIA    |1      |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA    |1      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |       0|    159|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |       1|     10|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |       0|    137|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |       1|     11|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |       0|    106|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |       1|      9|   432|


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

* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


