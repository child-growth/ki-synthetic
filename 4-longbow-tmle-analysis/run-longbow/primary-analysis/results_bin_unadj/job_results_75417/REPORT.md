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

**Outcome Variable:** ever_stunted

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

|agecat      |studyid        |country      |single | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |1      |            0|      3|  5602|
|0-24 months |COHORTS        |INDIA        |1      |            1|      1|  5602|
|0-24 months |COHORTS        |INDIA        |0      |            0|   3536|  5602|
|0-24 months |COHORTS        |INDIA        |0      |            1|   2062|  5602|
|0-24 months |COHORTS        |GUATEMALA    |1      |            0|     25|  1256|
|0-24 months |COHORTS        |GUATEMALA    |1      |            1|    104|  1256|
|0-24 months |COHORTS        |GUATEMALA    |0      |            0|    264|  1256|
|0-24 months |COHORTS        |GUATEMALA    |0      |            1|    863|  1256|
|0-24 months |COHORTS        |PHILIPPINES  |1      |            0|     24|  3011|
|0-24 months |COHORTS        |PHILIPPINES  |1      |            1|     55|  3011|
|0-24 months |COHORTS        |PHILIPPINES  |0      |            0|    922|  3011|
|0-24 months |COHORTS        |PHILIPPINES  |0      |            1|   2010|  3011|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |            0|     15|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |            1|     19|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |            0|    129|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |            1|    139|   302|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            0|     15|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            1|     27|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |            0|   2263|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |            1|   3129|  5434|
|0-24 months |MAL-ED         |INDIA        |1      |            0|      0|   249|
|0-24 months |MAL-ED         |INDIA        |1      |            1|      0|   249|
|0-24 months |MAL-ED         |INDIA        |0      |            0|     99|   249|
|0-24 months |MAL-ED         |INDIA        |0      |            1|    150|   249|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            0|      0|   265|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            1|      0|   265|
|0-24 months |MAL-ED         |BANGLADESH   |0      |            0|    103|   265|
|0-24 months |MAL-ED         |BANGLADESH   |0      |            1|    162|   265|
|0-24 months |MAL-ED         |PERU         |1      |            0|      6|   303|
|0-24 months |MAL-ED         |PERU         |1      |            1|     15|   303|
|0-24 months |MAL-ED         |PERU         |0      |            0|    109|   303|
|0-24 months |MAL-ED         |PERU         |0      |            1|    173|   303|
|0-24 months |MAL-ED         |NEPAL        |1      |            0|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |1      |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |            0|    156|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |            1|     84|   240|
|0-24 months |MAL-ED         |BRAZIL       |1      |            0|     33|   233|
|0-24 months |MAL-ED         |BRAZIL       |1      |            1|     11|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |            0|    137|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |            1|     52|   233|
|0-24 months |MAL-ED         |TANZANIA     |1      |            0|      3|   262|
|0-24 months |MAL-ED         |TANZANIA     |1      |            1|     13|   262|
|0-24 months |MAL-ED         |TANZANIA     |0      |            0|     37|   262|
|0-24 months |MAL-ED         |TANZANIA     |0      |            1|    209|   262|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|     58|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|     63|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |            0|     80|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |            1|    113|   314|
|0-24 months |PROBIT         |BELARUS      |1      |            0|    596| 16897|
|0-24 months |PROBIT         |BELARUS      |1      |            1|    100| 16897|
|0-24 months |PROBIT         |BELARUS      |0      |            0|  14148| 16897|
|0-24 months |PROBIT         |BELARUS      |0      |            1|   2053| 16897|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |            0|    158|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |            1|     76|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |            0|   1406|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |            1|    750|  2390|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |            0|    565| 13984|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |            1|    411| 13984|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |            0|   7589| 13984|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |            1|   5419| 13984|
|0-6 months  |COHORTS        |INDIA        |1      |            0|      4|  5412|
|0-6 months  |COHORTS        |INDIA        |1      |            1|      0|  5412|
|0-6 months  |COHORTS        |INDIA        |0      |            0|   4392|  5412|
|0-6 months  |COHORTS        |INDIA        |0      |            1|   1016|  5412|
|0-6 months  |COHORTS        |GUATEMALA    |1      |            0|     59|  1014|
|0-6 months  |COHORTS        |GUATEMALA    |1      |            1|     38|  1014|
|0-6 months  |COHORTS        |GUATEMALA    |0      |            0|    627|  1014|
|0-6 months  |COHORTS        |GUATEMALA    |0      |            1|    290|  1014|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |            0|     65|  3011|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |            1|     14|  3011|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |            0|   2228|  3011|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |            1|    704|  3011|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |            0|     22|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |            1|     10|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |            0|    172|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |            1|     78|   282|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            0|     27|  5122|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            1|     14|  5122|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |            0|   3315|  5122|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |            1|   1766|  5122|
|0-6 months  |MAL-ED         |INDIA        |1      |            0|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |1      |            1|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |            0|    164|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |            1|     85|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            0|      0|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            1|      0|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |            0|    170|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |            1|     95|   265|
|0-6 months  |MAL-ED         |PERU         |1      |            0|      9|   303|
|0-6 months  |MAL-ED         |PERU         |1      |            1|     12|   303|
|0-6 months  |MAL-ED         |PERU         |0      |            0|    165|   303|
|0-6 months  |MAL-ED         |PERU         |0      |            1|    117|   303|
|0-6 months  |MAL-ED         |NEPAL        |1      |            0|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |1      |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |            0|    197|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |            1|     43|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            0|     34|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            1|     10|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |            0|    147|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |            1|     42|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            0|     10|   262|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            1|      6|   262|
|0-6 months  |MAL-ED         |TANZANIA     |0      |            0|    143|   262|
|0-6 months  |MAL-ED         |TANZANIA     |0      |            1|    103|   262|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            0|     82|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            1|     39|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |            0|    116|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |            1|     77|   314|
|0-6 months  |PROBIT         |BELARUS      |1      |            0|    641| 16892|
|0-6 months  |PROBIT         |BELARUS      |1      |            1|     55| 16892|
|0-6 months  |PROBIT         |BELARUS      |0      |            0|  15092| 16892|
|0-6 months  |PROBIT         |BELARUS      |0      |            1|   1104| 16892|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |            0|    191|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |            1|     43|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |            0|   1733|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |            1|    423|  2390|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |            0|    710| 13968|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |            1|    266| 13968|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |            0|   9641| 13968|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |            1|   3351| 13968|
|6-24 months |COHORTS        |INDIA        |1      |            0|      2|  4302|
|6-24 months |COHORTS        |INDIA        |1      |            1|      1|  4302|
|6-24 months |COHORTS        |INDIA        |0      |            0|   3253|  4302|
|6-24 months |COHORTS        |INDIA        |0      |            1|   1046|  4302|
|6-24 months |COHORTS        |GUATEMALA    |1      |            0|     18|   831|
|6-24 months |COHORTS        |GUATEMALA    |1      |            1|     66|   831|
|6-24 months |COHORTS        |GUATEMALA    |0      |            0|    174|   831|
|6-24 months |COHORTS        |GUATEMALA    |0      |            1|    573|   831|
|6-24 months |COHORTS        |PHILIPPINES  |1      |            0|     19|  2089|
|6-24 months |COHORTS        |PHILIPPINES  |1      |            1|     41|  2089|
|6-24 months |COHORTS        |PHILIPPINES  |0      |            0|    723|  2089|
|6-24 months |COHORTS        |PHILIPPINES  |0      |            1|   1306|  2089|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |            0|     13|   189|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |            1|      9|   189|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |            0|    106|   189|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |            1|     61|   189|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            0|     15|  3645|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            1|     13|  3645|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |            0|   2254|  3645|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |            1|   1363|  3645|
|6-24 months |MAL-ED         |INDIA        |1      |            0|      0|   154|
|6-24 months |MAL-ED         |INDIA        |1      |            1|      0|   154|
|6-24 months |MAL-ED         |INDIA        |0      |            0|     89|   154|
|6-24 months |MAL-ED         |INDIA        |0      |            1|     65|   154|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            0|      0|   158|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            1|      0|   158|
|6-24 months |MAL-ED         |BANGLADESH   |0      |            0|     91|   158|
|6-24 months |MAL-ED         |BANGLADESH   |0      |            1|     67|   158|
|6-24 months |MAL-ED         |PERU         |1      |            0|      6|   149|
|6-24 months |MAL-ED         |PERU         |1      |            1|      3|   149|
|6-24 months |MAL-ED         |PERU         |0      |            0|     84|   149|
|6-24 months |MAL-ED         |PERU         |0      |            1|     56|   149|
|6-24 months |MAL-ED         |NEPAL        |1      |            0|      0|   194|
|6-24 months |MAL-ED         |NEPAL        |1      |            1|      0|   194|
|6-24 months |MAL-ED         |NEPAL        |0      |            0|    153|   194|
|6-24 months |MAL-ED         |NEPAL        |0      |            1|     41|   194|
|6-24 months |MAL-ED         |BRAZIL       |1      |            0|     27|   163|
|6-24 months |MAL-ED         |BRAZIL       |1      |            1|      1|   163|
|6-24 months |MAL-ED         |BRAZIL       |0      |            0|    125|   163|
|6-24 months |MAL-ED         |BRAZIL       |0      |            1|     10|   163|
|6-24 months |MAL-ED         |TANZANIA     |1      |            0|      3|   144|
|6-24 months |MAL-ED         |TANZANIA     |1      |            1|      7|   144|
|6-24 months |MAL-ED         |TANZANIA     |0      |            0|     28|   144|
|6-24 months |MAL-ED         |TANZANIA     |0      |            1|    106|   144|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|     38|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|     24|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |            0|     60|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |            1|     36|   158|
|6-24 months |PROBIT         |BELARUS      |1      |            0|    577| 15467|
|6-24 months |PROBIT         |BELARUS      |1      |            1|     45| 15467|
|6-24 months |PROBIT         |BELARUS      |0      |            0|  13896| 15467|
|6-24 months |PROBIT         |BELARUS      |0      |            1|    949| 15467|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |            0|    130|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |            1|     33|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |            0|   1107|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |            1|    327|  1597|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |            0|    401|  8442|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |            1|    145|  8442|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |            0|   5828|  8442|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |            1|   2068|  8442|


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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


