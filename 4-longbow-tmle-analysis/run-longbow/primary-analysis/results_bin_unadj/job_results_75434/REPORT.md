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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |single | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:------|-------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |1      |             0|      4|  5602|
|0-24 months |COHORTS        |INDIA        |1      |             1|      0|  5602|
|0-24 months |COHORTS        |INDIA        |0      |             0|   4888|  5602|
|0-24 months |COHORTS        |INDIA        |0      |             1|    710|  5602|
|0-24 months |COHORTS        |GUATEMALA    |1      |             0|     64|  1256|
|0-24 months |COHORTS        |GUATEMALA    |1      |             1|     65|  1256|
|0-24 months |COHORTS        |GUATEMALA    |0      |             0|    604|  1256|
|0-24 months |COHORTS        |GUATEMALA    |0      |             1|    523|  1256|
|0-24 months |COHORTS        |PHILIPPINES  |1      |             0|     55|  3011|
|0-24 months |COHORTS        |PHILIPPINES  |1      |             1|     24|  3011|
|0-24 months |COHORTS        |PHILIPPINES  |0      |             0|   1879|  3011|
|0-24 months |COHORTS        |PHILIPPINES  |0      |             1|   1053|  3011|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |             0|     28|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |             1|      6|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |             0|    221|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |             1|     47|   302|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |             0|     33|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |             1|      9|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |             0|   4299|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |             1|   1093|  5434|
|0-24 months |MAL-ED         |INDIA        |1      |             0|      0|   249|
|0-24 months |MAL-ED         |INDIA        |1      |             1|      0|   249|
|0-24 months |MAL-ED         |INDIA        |0      |             0|    191|   249|
|0-24 months |MAL-ED         |INDIA        |0      |             1|     58|   249|
|0-24 months |MAL-ED         |BANGLADESH   |1      |             0|      0|   265|
|0-24 months |MAL-ED         |BANGLADESH   |1      |             1|      0|   265|
|0-24 months |MAL-ED         |BANGLADESH   |0      |             0|    207|   265|
|0-24 months |MAL-ED         |BANGLADESH   |0      |             1|     58|   265|
|0-24 months |MAL-ED         |PERU         |1      |             0|     15|   303|
|0-24 months |MAL-ED         |PERU         |1      |             1|      6|   303|
|0-24 months |MAL-ED         |PERU         |0      |             0|    224|   303|
|0-24 months |MAL-ED         |PERU         |0      |             1|     58|   303|
|0-24 months |MAL-ED         |NEPAL        |1      |             0|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |1      |             1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |             0|    219|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |             1|     21|   240|
|0-24 months |MAL-ED         |BRAZIL       |1      |             0|     40|   233|
|0-24 months |MAL-ED         |BRAZIL       |1      |             1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |             0|    171|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |             1|     18|   233|
|0-24 months |MAL-ED         |TANZANIA     |1      |             0|     10|   262|
|0-24 months |MAL-ED         |TANZANIA     |1      |             1|      6|   262|
|0-24 months |MAL-ED         |TANZANIA     |0      |             0|    115|   262|
|0-24 months |MAL-ED         |TANZANIA     |0      |             1|    131|   262|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |             0|     96|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |             1|     25|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |             0|    145|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |             1|     48|   314|
|0-24 months |PROBIT         |BELARUS      |1      |             0|    673| 16897|
|0-24 months |PROBIT         |BELARUS      |1      |             1|     23| 16897|
|0-24 months |PROBIT         |BELARUS      |0      |             0|  15757| 16897|
|0-24 months |PROBIT         |BELARUS      |0      |             1|    444| 16897|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |             0|    208|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |             1|     26|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |             0|   1944|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |             1|    212|  2390|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |             0|    800| 13984|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |             1|    176| 13984|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |             0|  10831| 13984|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |             1|   2177| 13984|
|0-6 months  |COHORTS        |INDIA        |1      |             0|      4|  5412|
|0-6 months  |COHORTS        |INDIA        |1      |             1|      0|  5412|
|0-6 months  |COHORTS        |INDIA        |0      |             0|   5130|  5412|
|0-6 months  |COHORTS        |INDIA        |0      |             1|    278|  5412|
|0-6 months  |COHORTS        |GUATEMALA    |1      |             0|     86|  1014|
|0-6 months  |COHORTS        |GUATEMALA    |1      |             1|     11|  1014|
|0-6 months  |COHORTS        |GUATEMALA    |0      |             0|    826|  1014|
|0-6 months  |COHORTS        |GUATEMALA    |0      |             1|     91|  1014|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |             0|     76|  3011|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |             1|      3|  3011|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |             0|   2747|  3011|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |             1|    185|  3011|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |             0|     29|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |             1|      3|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |             0|    228|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |             1|     22|   282|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |             0|     36|  5122|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |             1|      5|  5122|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |             0|   4567|  5122|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |             1|    514|  5122|
|0-6 months  |MAL-ED         |INDIA        |1      |             0|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |1      |             1|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |             0|    228|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |             1|     21|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |             0|      0|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |             1|      0|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |             0|    244|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |             1|     21|   265|
|0-6 months  |MAL-ED         |PERU         |1      |             0|     17|   303|
|0-6 months  |MAL-ED         |PERU         |1      |             1|      4|   303|
|0-6 months  |MAL-ED         |PERU         |0      |             0|    248|   303|
|0-6 months  |MAL-ED         |PERU         |0      |             1|     34|   303|
|0-6 months  |MAL-ED         |NEPAL        |1      |             0|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |1      |             1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |             0|    230|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |             1|     10|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1      |             0|     40|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1      |             1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |             0|    176|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |             1|     13|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1      |             0|     14|   262|
|0-6 months  |MAL-ED         |TANZANIA     |1      |             1|      2|   262|
|0-6 months  |MAL-ED         |TANZANIA     |0      |             0|    210|   262|
|0-6 months  |MAL-ED         |TANZANIA     |0      |             1|     36|   262|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |             0|    110|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |             1|     11|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |             0|    175|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |             1|     18|   314|
|0-6 months  |PROBIT         |BELARUS      |1      |             0|    688| 16892|
|0-6 months  |PROBIT         |BELARUS      |1      |             1|      8| 16892|
|0-6 months  |PROBIT         |BELARUS      |0      |             0|  16019| 16892|
|0-6 months  |PROBIT         |BELARUS      |0      |             1|    177| 16892|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |             0|    222|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |             1|     12|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |             0|   2063|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |             1|     93|  2390|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |             0|    875| 13968|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |             1|    101| 13968|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |             0|  11815| 13968|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |             1|   1177| 13968|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


