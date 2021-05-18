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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mbmi          | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:-------------|-------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |             0|   2441|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |             1|    283|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |             0|    432|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |             1|     60|  3216|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |             0|  13205| 26954|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |             1|   3146| 26954|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |             0|   8781| 26954|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |             1|   1822| 26954|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |             0|    536|   836|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |             1|    139|   836|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |             0|    124|   836|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |             1|     37|   836|
|0-24 months |MAL-ED         |INDIA        |Normal weight |             0|    143|   241|
|0-24 months |MAL-ED         |INDIA        |Normal weight |             1|     47|   241|
|0-24 months |MAL-ED         |INDIA        |Underweight   |             0|     39|   241|
|0-24 months |MAL-ED         |INDIA        |Underweight   |             1|     12|   241|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |             0|    173|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |             1|     44|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |             0|     22|   250|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |             1|     11|   250|
|0-24 months |MAL-ED         |PERU         |Normal weight |             0|    228|   290|
|0-24 months |MAL-ED         |PERU         |Normal weight |             1|     58|   290|
|0-24 months |MAL-ED         |PERU         |Underweight   |             0|      3|   290|
|0-24 months |MAL-ED         |PERU         |Underweight   |             1|      1|   290|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |             0|    215|   238|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |             1|     21|   238|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |             0|      2|   238|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |             1|      0|   238|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |             0|    179|   219|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |             1|     19|   219|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |             0|     19|   219|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |             1|      2|   219|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |             0|    109|   253|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |             1|    124|   253|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |             0|     12|   253|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |             1|      8|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |             0|    197|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |             1|     58|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |             0|     10|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |             1|      4|   269|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |             0|    379|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |             1|    156|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |             0|     54|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |             1|     40|   629|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |             0|    616|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |             1|     87|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |             0|     39|   754|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |             1|     12|   754|
|0-24 months |PROBIT         |BELARUS      |Normal weight |             0|  12884| 13797|
|0-24 months |PROBIT         |BELARUS      |Normal weight |             1|    359| 13797|
|0-24 months |PROBIT         |BELARUS      |Underweight   |             0|    536| 13797|
|0-24 months |PROBIT         |BELARUS      |Underweight   |             1|     18| 13797|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |             0|    480|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |             1|     59|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |             0|     99|   668|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |             1|     30|   668|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |             0|    677|  1408|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |             1|    314|  1408|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |             0|    266|  1408|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |             1|    151|  1408|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |             0|   2080|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |             1|    228|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |             0|     46|  2360|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |             1|      6|  2360|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |             0|   7465|  9616|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |             1|   1623|  9616|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |             0|    407|  9616|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |             1|    121|  9616|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |             0|  13806| 26890|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |             1|   2511| 26890|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |             0|   9123| 26890|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |             1|   1450| 26890|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |             0|    203|   271|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |             1|     18|   271|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |             0|     48|   271|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |             1|      2|   271|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |             0|    175|   241|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |             1|     15|   241|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |             0|     45|   241|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |             1|      6|   241|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |             0|    199|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |             1|     18|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |             0|     30|   250|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |             1|      3|   250|
|0-6 months  |MAL-ED         |PERU         |Normal weight |             0|    250|   290|
|0-6 months  |MAL-ED         |PERU         |Normal weight |             1|     36|   290|
|0-6 months  |MAL-ED         |PERU         |Underweight   |             0|      4|   290|
|0-6 months  |MAL-ED         |PERU         |Underweight   |             1|      0|   290|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |             0|    226|   238|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |             1|     10|   238|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |             0|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |             1|      0|   238|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |             0|    184|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |             1|     14|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |             0|     19|   219|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |             1|      2|   219|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |             0|    199|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |             1|     34|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |             0|     19|   253|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |             1|      1|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |             0|    231|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |             1|     24|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |             0|     13|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |             1|      1|   269|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |             0|    489|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |             1|     46|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |             0|     81|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |             1|     13|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |             0|    662|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |             1|     41|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |             0|     45|   754|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |             1|      6|   754|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |             0|  13111| 13797|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |             1|    132| 13797|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |             0|    548| 13797|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |             1|      6| 13797|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |             0|    514|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |             1|     25|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |             0|    125|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |             1|      4|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |             0|    850|  1405|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |             1|    138|  1405|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |             0|    340|  1405|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |             1|     77|  1405|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |             0|   2208|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |             1|    100|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |             0|     49|  2360|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |             1|      3|  2360|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |             0|   8199|  9605|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |             1|    878|  9605|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |             0|    459|  9605|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |             1|     69|  9605|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


