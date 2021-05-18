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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country      |single | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:------|-----------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |1      |           0|      4|  5594|
|0-24 months |COHORTS        |INDIA        |1      |           1|      0|  5594|
|0-24 months |COHORTS        |INDIA        |0      |           0|   3738|  5594|
|0-24 months |COHORTS        |INDIA        |0      |           1|   1852|  5594|
|0-24 months |COHORTS        |GUATEMALA    |1      |           0|     88|  1238|
|0-24 months |COHORTS        |GUATEMALA    |1      |           1|     41|  1238|
|0-24 months |COHORTS        |GUATEMALA    |0      |           0|    834|  1238|
|0-24 months |COHORTS        |GUATEMALA    |0      |           1|    275|  1238|
|0-24 months |COHORTS        |PHILIPPINES  |1      |           0|     46|  2998|
|0-24 months |COHORTS        |PHILIPPINES  |1      |           1|     33|  2998|
|0-24 months |COHORTS        |PHILIPPINES  |0      |           0|   1743|  2998|
|0-24 months |COHORTS        |PHILIPPINES  |0      |           1|   1176|  2998|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |           0|     33|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |           1|      1|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |           0|    240|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |           1|     28|   302|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           0|     30|  5435|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |           1|     12|  5435|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |           0|   3719|  5435|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |           1|   1674|  5435|
|0-24 months |MAL-ED         |INDIA        |1      |           0|      0|   249|
|0-24 months |MAL-ED         |INDIA        |1      |           1|      0|   249|
|0-24 months |MAL-ED         |INDIA        |0      |           0|    130|   249|
|0-24 months |MAL-ED         |INDIA        |0      |           1|    119|   249|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           0|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |0      |           0|    176|   263|
|0-24 months |MAL-ED         |BANGLADESH   |0      |           1|     87|   263|
|0-24 months |MAL-ED         |PERU         |1      |           0|     17|   302|
|0-24 months |MAL-ED         |PERU         |1      |           1|      3|   302|
|0-24 months |MAL-ED         |PERU         |0      |           0|    258|   302|
|0-24 months |MAL-ED         |PERU         |0      |           1|     24|   302|
|0-24 months |MAL-ED         |NEPAL        |1      |           0|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |1      |           1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |           0|    166|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |           1|     74|   240|
|0-24 months |MAL-ED         |BRAZIL       |1      |           0|     38|   233|
|0-24 months |MAL-ED         |BRAZIL       |1      |           1|      6|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |           0|    175|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |           1|     14|   233|
|0-24 months |MAL-ED         |TANZANIA     |1      |           0|     14|   261|
|0-24 months |MAL-ED         |TANZANIA     |1      |           1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA     |0      |           0|    211|   261|
|0-24 months |MAL-ED         |TANZANIA     |0      |           1|     34|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|     97|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|     24|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |           0|    151|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |           1|     40|   312|
|0-24 months |PROBIT         |BELARUS      |1      |           0|    527| 16898|
|0-24 months |PROBIT         |BELARUS      |1      |           1|    169| 16898|
|0-24 months |PROBIT         |BELARUS      |0      |           0|  12055| 16898|
|0-24 months |PROBIT         |BELARUS      |0      |           1|   4147| 16898|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |           0|    176|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |           1|     58|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |           0|   1650|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |           1|    506|  2390|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |           0|    713| 13856|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |           1|    254| 13856|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |           0|   9862| 13856|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |           1|   3027| 13856|
|0-6 months  |COHORTS        |INDIA        |1      |           0|      4|  5380|
|0-6 months  |COHORTS        |INDIA        |1      |           1|      0|  5380|
|0-6 months  |COHORTS        |INDIA        |0      |           0|   4017|  5380|
|0-6 months  |COHORTS        |INDIA        |0      |           1|   1359|  5380|
|0-6 months  |COHORTS        |GUATEMALA    |1      |           0|     66|   988|
|0-6 months  |COHORTS        |GUATEMALA    |1      |           1|     29|   988|
|0-6 months  |COHORTS        |GUATEMALA    |0      |           0|    726|   988|
|0-6 months  |COHORTS        |GUATEMALA    |0      |           1|    167|   988|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |           0|     63|  2997|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |           1|     16|  2997|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |           0|   2230|  2997|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |           1|    688|  2997|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |           0|     32|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |           1|      0|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |           0|    240|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |           1|     10|   282|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           0|     35|  5088|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |           1|      6|  5088|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |           0|   4502|  5088|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |           1|    545|  5088|
|0-6 months  |MAL-ED         |INDIA        |1      |           0|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |1      |           1|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |           0|    168|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |           1|     81|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           0|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           1|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |           0|    203|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |           1|     60|   263|
|0-6 months  |MAL-ED         |PERU         |1      |           0|     18|   302|
|0-6 months  |MAL-ED         |PERU         |1      |           1|      2|   302|
|0-6 months  |MAL-ED         |PERU         |0      |           0|    273|   302|
|0-6 months  |MAL-ED         |PERU         |0      |           1|      9|   302|
|0-6 months  |MAL-ED         |NEPAL        |1      |           0|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |1      |           1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |           0|    192|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |           1|     48|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           0|     40|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |           0|    178|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |           1|     11|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           0|     16|   261|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |0      |           0|    232|   261|
|0-6 months  |MAL-ED         |TANZANIA     |0      |           1|     13|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           0|    109|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           1|     12|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |           0|    168|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |           1|     23|   312|
|0-6 months  |PROBIT         |BELARUS      |1      |           0|    530| 16895|
|0-6 months  |PROBIT         |BELARUS      |1      |           1|    166| 16895|
|0-6 months  |PROBIT         |BELARUS      |0      |           0|  12141| 16895|
|0-6 months  |PROBIT         |BELARUS      |0      |           1|   4058| 16895|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |           0|    200|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |           1|     34|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |           0|   1858|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |           1|    298|  2390|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |           0|    768| 13764|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |           1|    195| 13764|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |           0|  10503| 13764|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |           1|   2298| 13764|
|6-24 months |COHORTS        |INDIA        |1      |           0|      3|  5236|
|6-24 months |COHORTS        |INDIA        |1      |           1|      0|  5236|
|6-24 months |COHORTS        |INDIA        |0      |           0|   4589|  5236|
|6-24 months |COHORTS        |INDIA        |0      |           1|    644|  5236|
|6-24 months |COHORTS        |GUATEMALA    |1      |           0|    105|  1127|
|6-24 months |COHORTS        |GUATEMALA    |1      |           1|     14|  1127|
|6-24 months |COHORTS        |GUATEMALA    |0      |           0|    879|  1127|
|6-24 months |COHORTS        |GUATEMALA    |0      |           1|    129|  1127|
|6-24 months |COHORTS        |PHILIPPINES  |1      |           0|     51|  2767|
|6-24 months |COHORTS        |PHILIPPINES  |1      |           1|     23|  2767|
|6-24 months |COHORTS        |PHILIPPINES  |0      |           0|   1980|  2767|
|6-24 months |COHORTS        |PHILIPPINES  |0      |           1|    713|  2767|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |           0|     30|   268|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |           1|      1|   268|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |           0|    217|   268|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |           1|     20|   268|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           0|     33|  5422|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |           1|      9|  5422|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |           0|   4049|  5422|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |           1|   1331|  5422|
|6-24 months |MAL-ED         |INDIA        |1      |           0|      0|   233|
|6-24 months |MAL-ED         |INDIA        |1      |           1|      0|   233|
|6-24 months |MAL-ED         |INDIA        |0      |           0|    169|   233|
|6-24 months |MAL-ED         |INDIA        |0      |           1|     64|   233|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           0|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |0      |           0|    197|   240|
|6-24 months |MAL-ED         |BANGLADESH   |0      |           1|     43|   240|
|6-24 months |MAL-ED         |PERU         |1      |           0|     18|   270|
|6-24 months |MAL-ED         |PERU         |1      |           1|      1|   270|
|6-24 months |MAL-ED         |PERU         |0      |           0|    234|   270|
|6-24 months |MAL-ED         |PERU         |0      |           1|     17|   270|
|6-24 months |MAL-ED         |NEPAL        |1      |           0|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |1      |           1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |0      |           0|    199|   235|
|6-24 months |MAL-ED         |NEPAL        |0      |           1|     36|   235|
|6-24 months |MAL-ED         |BRAZIL       |1      |           0|     34|   207|
|6-24 months |MAL-ED         |BRAZIL       |1      |           1|      3|   207|
|6-24 months |MAL-ED         |BRAZIL       |0      |           0|    167|   207|
|6-24 months |MAL-ED         |BRAZIL       |0      |           1|      3|   207|
|6-24 months |MAL-ED         |TANZANIA     |1      |           0|     14|   245|
|6-24 months |MAL-ED         |TANZANIA     |1      |           1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA     |0      |           0|    203|   245|
|6-24 months |MAL-ED         |TANZANIA     |0      |           1|     26|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|     80|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|     14|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |           0|    142|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |           1|     23|   259|
|6-24 months |PROBIT         |BELARUS      |1      |           0|    672| 16598|
|6-24 months |PROBIT         |BELARUS      |1      |           1|      4| 16598|
|6-24 months |PROBIT         |BELARUS      |0      |           0|  15787| 16598|
|6-24 months |PROBIT         |BELARUS      |0      |           1|    135| 16598|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |           0|    170|  2012|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |           1|     32|  2012|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |           0|   1519|  2012|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |           1|    291|  2012|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |           0|    633| 10747|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |           1|     81| 10747|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |           0|   9082| 10747|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |           1|    951| 10747|


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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


