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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |single | wasted| n_cell|     n|
|:---------|:--------------|:------------|:------|------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |1      |      0|      4|  4650|
|Birth     |COHORTS        |INDIA        |1      |      1|      0|  4650|
|Birth     |COHORTS        |INDIA        |0      |      0|   3814|  4650|
|Birth     |COHORTS        |INDIA        |0      |      1|    832|  4650|
|Birth     |COHORTS        |GUATEMALA    |1      |      0|     48|   704|
|Birth     |COHORTS        |GUATEMALA    |1      |      1|     23|   704|
|Birth     |COHORTS        |GUATEMALA    |0      |      0|    479|   704|
|Birth     |COHORTS        |GUATEMALA    |0      |      1|    154|   704|
|Birth     |COHORTS        |PHILIPPINES  |1      |      0|     62|  2855|
|Birth     |COHORTS        |PHILIPPINES  |1      |      1|     13|  2855|
|Birth     |COHORTS        |PHILIPPINES  |0      |      0|   2352|  2855|
|Birth     |COHORTS        |PHILIPPINES  |0      |      1|    428|  2855|
|Birth     |JiVitA-4       |BANGLADESH   |1      |      0|     19|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |1      |      1|      1|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |0      |      0|   2136|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |0      |      1|    237|  2393|
|Birth     |MAL-ED         |INDIA        |1      |      0|      0|    45|
|Birth     |MAL-ED         |INDIA        |1      |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |0      |      0|     40|    45|
|Birth     |MAL-ED         |INDIA        |0      |      1|      5|    45|
|Birth     |MAL-ED         |BANGLADESH   |1      |      0|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |1      |      1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |0      |      0|    179|   215|
|Birth     |MAL-ED         |BANGLADESH   |0      |      1|     36|   215|
|Birth     |MAL-ED         |PERU         |1      |      0|     11|   228|
|Birth     |MAL-ED         |PERU         |1      |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |0      |      0|    212|   228|
|Birth     |MAL-ED         |PERU         |0      |      1|      4|   228|
|Birth     |MAL-ED         |NEPAL        |1      |      0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |1      |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |0      |      0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |0      |      1|      2|    26|
|Birth     |MAL-ED         |BRAZIL       |1      |      0|     11|    62|
|Birth     |MAL-ED         |BRAZIL       |1      |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |0      |      0|     49|    62|
|Birth     |MAL-ED         |BRAZIL       |0      |      1|      2|    62|
|Birth     |MAL-ED         |TANZANIA     |1      |      0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |1      |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |0      |      0|    105|   115|
|Birth     |MAL-ED         |TANZANIA     |0      |      1|      1|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |      0|     42|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |      1|      5|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |      0|     66|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |      1|      7|   120|
|Birth     |PROBIT         |BELARUS      |1      |      0|    422| 13817|
|Birth     |PROBIT         |BELARUS      |1      |      1|    111| 13817|
|Birth     |PROBIT         |BELARUS      |0      |      0|  10489| 13817|
|Birth     |PROBIT         |BELARUS      |0      |      1|   2795| 13817|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |      0|    732| 12831|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |      1|    168| 12831|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |      0|  10052| 12831|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |      1|   1879| 12831|
|6 months  |COHORTS        |INDIA        |1      |      0|      3|  5166|
|6 months  |COHORTS        |INDIA        |1      |      1|      0|  5166|
|6 months  |COHORTS        |INDIA        |0      |      0|   4508|  5166|
|6 months  |COHORTS        |INDIA        |0      |      1|    655|  5166|
|6 months  |COHORTS        |GUATEMALA    |1      |      0|     89|   900|
|6 months  |COHORTS        |GUATEMALA    |1      |      1|      5|   900|
|6 months  |COHORTS        |GUATEMALA    |0      |      0|    782|   900|
|6 months  |COHORTS        |GUATEMALA    |0      |      1|     24|   900|
|6 months  |COHORTS        |PHILIPPINES  |1      |      0|     68|  2667|
|6 months  |COHORTS        |PHILIPPINES  |1      |      1|      2|  2667|
|6 months  |COHORTS        |PHILIPPINES  |0      |      0|   2441|  2667|
|6 months  |COHORTS        |PHILIPPINES  |0      |      1|    156|  2667|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |      0|     33|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |      1|      0|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |      0|    252|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |      1|      4|   289|
|6 months  |JiVitA-4       |BANGLADESH   |1      |      0|     33|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |1      |      1|      2|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |0      |      0|   4519|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |0      |      1|    271|  4825|
|6 months  |MAL-ED         |INDIA        |1      |      0|      0|   234|
|6 months  |MAL-ED         |INDIA        |1      |      1|      0|   234|
|6 months  |MAL-ED         |INDIA        |0      |      0|    215|   234|
|6 months  |MAL-ED         |INDIA        |0      |      1|     19|   234|
|6 months  |MAL-ED         |BANGLADESH   |1      |      0|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |1      |      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |      0|    233|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |      1|      8|   241|
|6 months  |MAL-ED         |PERU         |1      |      0|     19|   273|
|6 months  |MAL-ED         |PERU         |1      |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |0      |      0|    254|   273|
|6 months  |MAL-ED         |PERU         |0      |      1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |1      |      0|      0|   236|
|6 months  |MAL-ED         |NEPAL        |1      |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |0      |      0|    232|   236|
|6 months  |MAL-ED         |NEPAL        |0      |      1|      4|   236|
|6 months  |MAL-ED         |BRAZIL       |1      |      0|     38|   209|
|6 months  |MAL-ED         |BRAZIL       |1      |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |      0|    170|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |      1|      1|   209|
|6 months  |MAL-ED         |TANZANIA     |1      |      0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |1      |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |      0|    230|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |      1|      1|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |      0|     89|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |      1|      3|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |      0|    158|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |      1|      4|   254|
|6 months  |PROBIT         |BELARUS      |1      |      0|    642| 15757|
|6 months  |PROBIT         |BELARUS      |1      |      1|      4| 15757|
|6 months  |PROBIT         |BELARUS      |0      |      0|  15007| 15757|
|6 months  |PROBIT         |BELARUS      |0      |      1|    104| 15757|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |      0|    195|  2022|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |      1|      7|  2022|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |      0|   1740|  2022|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |      1|     80|  2022|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |      0|    528|  8451|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |      1|     31|  8451|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |      0|   7659|  8451|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |      1|    233|  8451|
|24 months |COHORTS        |INDIA        |1      |      0|      2|  3960|
|24 months |COHORTS        |INDIA        |1      |      1|      0|  3960|
|24 months |COHORTS        |INDIA        |0      |      0|   3592|  3960|
|24 months |COHORTS        |INDIA        |0      |      1|    366|  3960|
|24 months |COHORTS        |GUATEMALA    |1      |      0|    101|  1015|
|24 months |COHORTS        |GUATEMALA    |1      |      1|      7|  1015|
|24 months |COHORTS        |GUATEMALA    |0      |      0|    868|  1015|
|24 months |COHORTS        |GUATEMALA    |0      |      1|     39|  1015|
|24 months |COHORTS        |PHILIPPINES  |1      |      0|     60|  2410|
|24 months |COHORTS        |PHILIPPINES  |1      |      1|      3|  2410|
|24 months |COHORTS        |PHILIPPINES  |0      |      0|   2187|  2410|
|24 months |COHORTS        |PHILIPPINES  |0      |      1|    160|  2410|
|24 months |JiVitA-4       |BANGLADESH   |1      |      0|     29|  4728|
|24 months |JiVitA-4       |BANGLADESH   |1      |      1|     10|  4728|
|24 months |JiVitA-4       |BANGLADESH   |0      |      0|   3780|  4728|
|24 months |JiVitA-4       |BANGLADESH   |0      |      1|    909|  4728|
|24 months |MAL-ED         |INDIA        |1      |      0|      0|   225|
|24 months |MAL-ED         |INDIA        |1      |      1|      0|   225|
|24 months |MAL-ED         |INDIA        |0      |      0|    198|   225|
|24 months |MAL-ED         |INDIA        |0      |      1|     27|   225|
|24 months |MAL-ED         |BANGLADESH   |1      |      0|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |1      |      1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |      0|    191|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |      1|     21|   212|
|24 months |MAL-ED         |PERU         |1      |      0|     15|   201|
|24 months |MAL-ED         |PERU         |1      |      1|      1|   201|
|24 months |MAL-ED         |PERU         |0      |      0|    182|   201|
|24 months |MAL-ED         |PERU         |0      |      1|      3|   201|
|24 months |MAL-ED         |NEPAL        |1      |      0|      0|   228|
|24 months |MAL-ED         |NEPAL        |1      |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |0      |      0|    223|   228|
|24 months |MAL-ED         |NEPAL        |0      |      1|      5|   228|
|24 months |MAL-ED         |BRAZIL       |1      |      0|     30|   169|
|24 months |MAL-ED         |BRAZIL       |1      |      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |0      |      0|    136|   169|
|24 months |MAL-ED         |BRAZIL       |0      |      1|      2|   169|
|24 months |MAL-ED         |TANZANIA     |1      |      0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |1      |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |0      |      0|    197|   214|
|24 months |MAL-ED         |TANZANIA     |0      |      1|      4|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1      |      0|     86|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1      |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |      0|    151|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |      1|      1|   238|
|24 months |PROBIT         |BELARUS      |1      |      0|    145|  3970|
|24 months |PROBIT         |BELARUS      |1      |      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |0      |      0|   3793|  3970|
|24 months |PROBIT         |BELARUS      |0      |      1|     29|  3970|
|24 months |TanzaniaChild2 |TANZANIA     |1      |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |      0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |      1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |      0|     25|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |      1|      6|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |      0|    329|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |      1|     72|   432|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


