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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country      |single | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:------|-----------:|------:|----:|
|0-24 months |COHORTS        |INDIA        |1      |           0|      0| 2017|
|0-24 months |COHORTS        |INDIA        |1      |           1|      0| 2017|
|0-24 months |COHORTS        |INDIA        |0      |           0|   1527| 2017|
|0-24 months |COHORTS        |INDIA        |0      |           1|    490| 2017|
|0-24 months |COHORTS        |GUATEMALA    |1      |           0|     22|  350|
|0-24 months |COHORTS        |GUATEMALA    |1      |           1|     22|  350|
|0-24 months |COHORTS        |GUATEMALA    |0      |           0|    172|  350|
|0-24 months |COHORTS        |GUATEMALA    |0      |           1|    134|  350|
|0-24 months |COHORTS        |PHILIPPINES  |1      |           0|     16| 1659|
|0-24 months |COHORTS        |PHILIPPINES  |1      |           1|     33| 1659|
|0-24 months |COHORTS        |PHILIPPINES  |0      |           0|    642| 1659|
|0-24 months |COHORTS        |PHILIPPINES  |0      |           1|    968| 1659|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |           0|      0|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |           1|      1|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |           0|     20|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |           1|     15|   36|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           0|     14| 2064|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           1|      1| 2064|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |           0|   1517| 2064|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |           1|    532| 2064|
|0-24 months |MAL-ED         |INDIA        |1      |           0|      0|  180|
|0-24 months |MAL-ED         |INDIA        |1      |           1|      0|  180|
|0-24 months |MAL-ED         |INDIA        |0      |           0|     71|  180|
|0-24 months |MAL-ED         |INDIA        |0      |           1|    109|  180|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           0|      0|  124|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           1|      0|  124|
|0-24 months |MAL-ED         |BANGLADESH   |0      |           0|     44|  124|
|0-24 months |MAL-ED         |BANGLADESH   |0      |           1|     80|  124|
|0-24 months |MAL-ED         |PERU         |1      |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |1      |           1|      3|   35|
|0-24 months |MAL-ED         |PERU         |0      |           0|      5|   35|
|0-24 months |MAL-ED         |PERU         |0      |           1|     26|   35|
|0-24 months |MAL-ED         |NEPAL        |1      |           0|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |1      |           1|      0|   98|
|0-24 months |MAL-ED         |NEPAL        |0      |           0|     20|   98|
|0-24 months |MAL-ED         |NEPAL        |0      |           1|     78|   98|
|0-24 months |MAL-ED         |BRAZIL       |1      |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |1      |           1|      5|   24|
|0-24 months |MAL-ED         |BRAZIL       |0      |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |0      |           1|     13|   24|
|0-24 months |MAL-ED         |TANZANIA     |1      |           0|      0|   51|
|0-24 months |MAL-ED         |TANZANIA     |1      |           1|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |0      |           0|      9|   51|
|0-24 months |MAL-ED         |TANZANIA     |0      |           1|     40|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      2|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|     28|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |           0|     16|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |           1|     41|   87|
|0-24 months |PROBIT         |BELARUS      |1      |           0|     23| 4408|
|0-24 months |PROBIT         |BELARUS      |1      |           1|    148| 4408|
|0-24 months |PROBIT         |BELARUS      |0      |           0|    503| 4408|
|0-24 months |PROBIT         |BELARUS      |0      |           1|   3734| 4408|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |           0|     18|  710|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |           1|     54|  710|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |           0|    247|  710|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |           1|    391|  710|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |           0|    143| 3593|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |           1|    145| 3593|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |           0|   1497| 3593|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |           1|   1808| 3593|
|0-6 months  |COHORTS        |INDIA        |1      |           0|      0| 1359|
|0-6 months  |COHORTS        |INDIA        |1      |           1|      0| 1359|
|0-6 months  |COHORTS        |INDIA        |0      |           0|    869| 1359|
|0-6 months  |COHORTS        |INDIA        |0      |           1|    490| 1359|
|0-6 months  |COHORTS        |GUATEMALA    |1      |           0|      7|  197|
|0-6 months  |COHORTS        |GUATEMALA    |1      |           1|     22|  197|
|0-6 months  |COHORTS        |GUATEMALA    |0      |           0|     42|  197|
|0-6 months  |COHORTS        |GUATEMALA    |0      |           1|    126|  197|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |           0|      4|  739|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |           1|     13|  739|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |           0|    193|  739|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |           1|    529|  739|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |           0|      6|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |           1|      4|   10|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           0|      5|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           1|      1|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |           0|    238|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |           1|    307|  551|
|0-6 months  |MAL-ED         |INDIA        |1      |           0|      0|   85|
|0-6 months  |MAL-ED         |INDIA        |1      |           1|      0|   85|
|0-6 months  |MAL-ED         |INDIA        |0      |           0|     27|   85|
|0-6 months  |MAL-ED         |INDIA        |0      |           1|     58|   85|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           0|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           1|      0|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |           0|     13|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |           1|     50|   63|
|0-6 months  |MAL-ED         |PERU         |1      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |1      |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |0      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |0      |           1|      9|   11|
|0-6 months  |MAL-ED         |NEPAL        |1      |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |1      |           1|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |0      |           0|      9|   48|
|0-6 months  |MAL-ED         |NEPAL        |0      |           1|     39|   48|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           1|      4|   15|
|0-6 months  |MAL-ED         |BRAZIL       |0      |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |0      |           1|     10|   15|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           1|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0      |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0      |           1|     13|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           0|      1|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           1|     11|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |           0|      8|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |           1|     16|   36|
|0-6 months  |PROBIT         |BELARUS      |1      |           0|     21| 4267|
|0-6 months  |PROBIT         |BELARUS      |1      |           1|    146| 4267|
|0-6 months  |PROBIT         |BELARUS      |0      |           0|    402| 4267|
|0-6 months  |PROBIT         |BELARUS      |0      |           1|   3698| 4267|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |           0|      6|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |           1|     30|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |           0|     94|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |           1|    209|  339|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |           0|     58| 2503|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |           1|    139| 2503|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |           0|    573| 2503|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |           1|   1733| 2503|
|6-24 months |COHORTS        |INDIA        |1      |           0|      0|  658|
|6-24 months |COHORTS        |INDIA        |1      |           1|      0|  658|
|6-24 months |COHORTS        |INDIA        |0      |           0|    658|  658|
|6-24 months |COHORTS        |INDIA        |0      |           1|      0|  658|
|6-24 months |COHORTS        |GUATEMALA    |1      |           0|     15|  153|
|6-24 months |COHORTS        |GUATEMALA    |1      |           1|      0|  153|
|6-24 months |COHORTS        |GUATEMALA    |0      |           0|    130|  153|
|6-24 months |COHORTS        |GUATEMALA    |0      |           1|      8|  153|
|6-24 months |COHORTS        |PHILIPPINES  |1      |           0|     12|  920|
|6-24 months |COHORTS        |PHILIPPINES  |1      |           1|     20|  920|
|6-24 months |COHORTS        |PHILIPPINES  |0      |           0|    449|  920|
|6-24 months |COHORTS        |PHILIPPINES  |0      |           1|    439|  920|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |           0|      0|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |           1|      1|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |           0|     14|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |           1|     11|   26|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           0|      9| 1513|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           1|      0| 1513|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |           0|   1279| 1513|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |           1|    225| 1513|
|6-24 months |MAL-ED         |INDIA        |1      |           0|      0|   95|
|6-24 months |MAL-ED         |INDIA        |1      |           1|      0|   95|
|6-24 months |MAL-ED         |INDIA        |0      |           0|     44|   95|
|6-24 months |MAL-ED         |INDIA        |0      |           1|     51|   95|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           0|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           1|      0|   61|
|6-24 months |MAL-ED         |BANGLADESH   |0      |           0|     31|   61|
|6-24 months |MAL-ED         |BANGLADESH   |0      |           1|     30|   61|
|6-24 months |MAL-ED         |PERU         |1      |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |1      |           1|      1|   24|
|6-24 months |MAL-ED         |PERU         |0      |           0|      5|   24|
|6-24 months |MAL-ED         |PERU         |0      |           1|     17|   24|
|6-24 months |MAL-ED         |NEPAL        |1      |           0|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |1      |           1|      0|   50|
|6-24 months |MAL-ED         |NEPAL        |0      |           0|     11|   50|
|6-24 months |MAL-ED         |NEPAL        |0      |           1|     39|   50|
|6-24 months |MAL-ED         |BRAZIL       |1      |           0|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |1      |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |0      |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |0      |           1|      3|    9|
|6-24 months |MAL-ED         |TANZANIA     |1      |           0|      0|   37|
|6-24 months |MAL-ED         |TANZANIA     |1      |           1|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |0      |           0|      8|   37|
|6-24 months |MAL-ED         |TANZANIA     |0      |           1|     27|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|     17|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |           0|      8|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |           1|     25|   51|
|6-24 months |PROBIT         |BELARUS      |1      |           0|      2|  141|
|6-24 months |PROBIT         |BELARUS      |1      |           1|      2|  141|
|6-24 months |PROBIT         |BELARUS      |0      |           0|    101|  141|
|6-24 months |PROBIT         |BELARUS      |0      |           1|     36|  141|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |           0|     12|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |           1|     24|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |           0|    153|  371|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |           1|    182|  371|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |           0|     85| 1090|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |           1|      6| 1090|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |           0|    924| 1090|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |           1|     75| 1090|


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
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


