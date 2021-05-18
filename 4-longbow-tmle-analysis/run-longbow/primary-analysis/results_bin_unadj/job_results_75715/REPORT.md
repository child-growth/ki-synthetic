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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |single | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:------|---------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |1      |         0|      3|  4301|
|0-24 months |COHORTS        |INDIA        |1      |         1|      0|  4301|
|0-24 months |COHORTS        |INDIA        |0      |         0|   3884|  4301|
|0-24 months |COHORTS        |INDIA        |0      |         1|    414|  4301|
|0-24 months |COHORTS        |GUATEMALA    |1      |         0|     94|   990|
|0-24 months |COHORTS        |GUATEMALA    |1      |         1|      3|   990|
|0-24 months |COHORTS        |GUATEMALA    |0      |         0|    862|   990|
|0-24 months |COHORTS        |GUATEMALA    |0      |         1|     31|   990|
|0-24 months |COHORTS        |PHILIPPINES  |1      |         0|     71|  2769|
|0-24 months |COHORTS        |PHILIPPINES  |1      |         1|      3|  2769|
|0-24 months |COHORTS        |PHILIPPINES  |0      |         0|   2555|  2769|
|0-24 months |COHORTS        |PHILIPPINES  |0      |         1|    140|  2769|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |         0|     29|   247|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |         1|      0|   247|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |         0|    215|   247|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |         1|      3|   247|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |         0|     37|  5273|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |         1|      5|  5273|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |         0|   4811|  5273|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |         1|    420|  5273|
|0-24 months |MAL-ED         |INDIA        |1      |         0|      0|   239|
|0-24 months |MAL-ED         |INDIA        |1      |         1|      0|   239|
|0-24 months |MAL-ED         |INDIA        |0      |         0|    218|   239|
|0-24 months |MAL-ED         |INDIA        |0      |         1|     21|   239|
|0-24 months |MAL-ED         |BANGLADESH   |1      |         0|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |1      |         1|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |0      |         0|    235|   248|
|0-24 months |MAL-ED         |BANGLADESH   |0      |         1|     13|   248|
|0-24 months |MAL-ED         |PERU         |1      |         0|     19|   284|
|0-24 months |MAL-ED         |PERU         |1      |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |0      |         0|    264|   284|
|0-24 months |MAL-ED         |PERU         |0      |         1|      1|   284|
|0-24 months |MAL-ED         |NEPAL        |1      |         0|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |1      |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |0      |         0|    234|   238|
|0-24 months |MAL-ED         |NEPAL        |0      |         1|      4|   238|
|0-24 months |MAL-ED         |BRAZIL       |1      |         0|     39|   218|
|0-24 months |MAL-ED         |BRAZIL       |1      |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |0      |         0|    177|   218|
|0-24 months |MAL-ED         |BRAZIL       |0      |         1|      2|   218|
|0-24 months |MAL-ED         |TANZANIA     |1      |         0|     16|   253|
|0-24 months |MAL-ED         |TANZANIA     |1      |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |0      |         0|    237|   253|
|0-24 months |MAL-ED         |TANZANIA     |0      |         1|      0|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |         0|    103|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |         0|    170|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |         1|      2|   275|
|0-24 months |PROBIT         |BELARUS      |1      |         0|    668| 16583|
|0-24 months |PROBIT         |BELARUS      |1      |         1|      8| 16583|
|0-24 months |PROBIT         |BELARUS      |0      |         0|  15781| 16583|
|0-24 months |PROBIT         |BELARUS      |0      |         1|    126| 16583|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |         0|    209|  2160|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |         1|      4|  2160|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |         0|   1893|  2160|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |         1|     54|  2160|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |         0|    600|  9466|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |         1|     18|  9466|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |         0|   8699|  9466|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |         1|    149|  9466|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |         0|     22|   844|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |         1|      1|   844|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |         0|    770|   844|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |         1|     51|   844|
|0-6 months  |MAL-ED         |INDIA        |1      |         0|      0|   238|
|0-6 months  |MAL-ED         |INDIA        |1      |         1|      0|   238|
|0-6 months  |MAL-ED         |INDIA        |0      |         0|    219|   238|
|0-6 months  |MAL-ED         |INDIA        |0      |         1|     19|   238|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |         0|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |         0|    241|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |         1|      7|   248|
|0-6 months  |MAL-ED         |PERU         |1      |         0|     19|   284|
|0-6 months  |MAL-ED         |PERU         |1      |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |0      |         0|    265|   284|
|0-6 months  |MAL-ED         |PERU         |0      |         1|      0|   284|
|0-6 months  |MAL-ED         |NEPAL        |1      |         0|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |1      |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |0      |         0|    231|   238|
|0-6 months  |MAL-ED         |NEPAL        |0      |         1|      7|   238|
|0-6 months  |MAL-ED         |BRAZIL       |1      |         0|     39|   218|
|0-6 months  |MAL-ED         |BRAZIL       |1      |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |0      |         0|    178|   218|
|0-6 months  |MAL-ED         |BRAZIL       |0      |         1|      1|   218|
|0-6 months  |MAL-ED         |TANZANIA     |1      |         0|     16|   253|
|0-6 months  |MAL-ED         |TANZANIA     |1      |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |0      |         0|    237|   253|
|0-6 months  |MAL-ED         |TANZANIA     |0      |         1|      0|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |         0|    102|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |         0|    170|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |         1|      1|   274|
|0-6 months  |PROBIT         |BELARUS      |1      |         0|    482| 13534|
|0-6 months  |PROBIT         |BELARUS      |1      |         1|     45| 13534|
|0-6 months  |PROBIT         |BELARUS      |0      |         0|  11955| 13534|
|0-6 months  |PROBIT         |BELARUS      |0      |         1|   1052| 13534|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |         0|    198|  2055|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |         1|      5|  2055|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |         0|   1805|  2055|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |         1|     47|  2055|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |         0|     39|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |         1|      3|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |         0|    574|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |         1|     11|   627|
|6-24 months |COHORTS        |INDIA        |1      |         0|      3|  4301|
|6-24 months |COHORTS        |INDIA        |1      |         1|      0|  4301|
|6-24 months |COHORTS        |INDIA        |0      |         0|   3884|  4301|
|6-24 months |COHORTS        |INDIA        |0      |         1|    414|  4301|
|6-24 months |COHORTS        |GUATEMALA    |1      |         0|     94|   990|
|6-24 months |COHORTS        |GUATEMALA    |1      |         1|      3|   990|
|6-24 months |COHORTS        |GUATEMALA    |0      |         0|    862|   990|
|6-24 months |COHORTS        |GUATEMALA    |0      |         1|     31|   990|
|6-24 months |COHORTS        |PHILIPPINES  |1      |         0|     71|  2769|
|6-24 months |COHORTS        |PHILIPPINES  |1      |         1|      3|  2769|
|6-24 months |COHORTS        |PHILIPPINES  |0      |         0|   2555|  2769|
|6-24 months |COHORTS        |PHILIPPINES  |0      |         1|    140|  2769|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |         0|     29|   247|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |         1|      0|   247|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |         0|    215|   247|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |         1|      3|   247|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |         0|     37|  5273|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |         1|      5|  5273|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |         0|   4811|  5273|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |         1|    420|  5273|
|6-24 months |MAL-ED         |INDIA        |1      |         0|      0|   239|
|6-24 months |MAL-ED         |INDIA        |1      |         1|      0|   239|
|6-24 months |MAL-ED         |INDIA        |0      |         0|    218|   239|
|6-24 months |MAL-ED         |INDIA        |0      |         1|     21|   239|
|6-24 months |MAL-ED         |BANGLADESH   |1      |         0|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |1      |         1|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |0      |         0|    235|   248|
|6-24 months |MAL-ED         |BANGLADESH   |0      |         1|     13|   248|
|6-24 months |MAL-ED         |PERU         |1      |         0|     19|   284|
|6-24 months |MAL-ED         |PERU         |1      |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |0      |         0|    264|   284|
|6-24 months |MAL-ED         |PERU         |0      |         1|      1|   284|
|6-24 months |MAL-ED         |NEPAL        |1      |         0|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |1      |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |0      |         0|    234|   238|
|6-24 months |MAL-ED         |NEPAL        |0      |         1|      4|   238|
|6-24 months |MAL-ED         |BRAZIL       |1      |         0|     39|   218|
|6-24 months |MAL-ED         |BRAZIL       |1      |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |0      |         0|    177|   218|
|6-24 months |MAL-ED         |BRAZIL       |0      |         1|      2|   218|
|6-24 months |MAL-ED         |TANZANIA     |1      |         0|     16|   253|
|6-24 months |MAL-ED         |TANZANIA     |1      |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |0      |         0|    237|   253|
|6-24 months |MAL-ED         |TANZANIA     |0      |         1|      0|   253|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |         0|    103|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |         0|    170|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |         1|      2|   275|
|6-24 months |PROBIT         |BELARUS      |1      |         0|    668| 16583|
|6-24 months |PROBIT         |BELARUS      |1      |         1|      8| 16583|
|6-24 months |PROBIT         |BELARUS      |0      |         0|  15781| 16583|
|6-24 months |PROBIT         |BELARUS      |0      |         1|    126| 16583|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |         0|    209|  2160|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |         1|      4|  2160|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |         0|   1893|  2160|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |         1|     54|  2160|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |         0|    600|  9466|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |         1|     18|  9466|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |         0|   8699|  9466|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |         1|    149|  9466|


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


