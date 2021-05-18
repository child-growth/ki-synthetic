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

**Outcome Variable:** stunted

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

|agecat    |studyid        |country      |single | stunted| n_cell|     n|
|:---------|:--------------|:------------|:------|-------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |1      |       0|      4|  5001|
|Birth     |COHORTS        |INDIA        |1      |       1|      0|  5001|
|Birth     |COHORTS        |INDIA        |0      |       0|   4386|  5001|
|Birth     |COHORTS        |INDIA        |0      |       1|    611|  5001|
|Birth     |COHORTS        |GUATEMALA    |1      |       0|     70|   794|
|Birth     |COHORTS        |GUATEMALA    |1      |       1|      5|   794|
|Birth     |COHORTS        |GUATEMALA    |0      |       0|    679|   794|
|Birth     |COHORTS        |GUATEMALA    |0      |       1|     40|   794|
|Birth     |COHORTS        |PHILIPPINES  |1      |       0|     74|  3003|
|Birth     |COHORTS        |PHILIPPINES  |1      |       1|      5|  3003|
|Birth     |COHORTS        |PHILIPPINES  |0      |       0|   2746|  3003|
|Birth     |COHORTS        |PHILIPPINES  |0      |       1|    178|  3003|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       0|     17|  2819|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       1|      4|  2819|
|Birth     |JiVitA-4       |BANGLADESH   |0      |       0|   1946|  2819|
|Birth     |JiVitA-4       |BANGLADESH   |0      |       1|    852|  2819|
|Birth     |MAL-ED         |INDIA        |1      |       0|      0|    47|
|Birth     |MAL-ED         |INDIA        |1      |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |0      |       0|     37|    47|
|Birth     |MAL-ED         |INDIA        |0      |       1|     10|    47|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |0      |       0|    187|   231|
|Birth     |MAL-ED         |BANGLADESH   |0      |       1|     44|   231|
|Birth     |MAL-ED         |PERU         |1      |       0|     11|   233|
|Birth     |MAL-ED         |PERU         |1      |       1|      2|   233|
|Birth     |MAL-ED         |PERU         |0      |       0|    196|   233|
|Birth     |MAL-ED         |PERU         |0      |       1|     24|   233|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      0|    27|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |0      |       0|     25|    27|
|Birth     |MAL-ED         |NEPAL        |0      |       1|      2|    27|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|     11|    65|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |0      |       0|     45|    65|
|Birth     |MAL-ED         |BRAZIL       |0      |       1|      9|    65|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |0      |       0|     94|   125|
|Birth     |MAL-ED         |TANZANIA     |0      |       1|     22|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|     43|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      4|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       0|     70|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       1|      6|   123|
|Birth     |PROBIT         |BELARUS      |1      |       0|    533| 13893|
|Birth     |PROBIT         |BELARUS      |1      |       1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |0      |       0|  13326| 13893|
|Birth     |PROBIT         |BELARUS      |0      |       1|     32| 13893|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |       0|    870| 13787|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |       1|     99| 13787|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |       0|  11489| 13787|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |       1|   1329| 13787|
|6 months  |COHORTS        |INDIA        |1      |       0|      2|  5174|
|6 months  |COHORTS        |INDIA        |1      |       1|      1|  5174|
|6 months  |COHORTS        |INDIA        |0      |       0|   4224|  5174|
|6 months  |COHORTS        |INDIA        |0      |       1|    947|  5174|
|6 months  |COHORTS        |GUATEMALA    |1      |       0|     52|   899|
|6 months  |COHORTS        |GUATEMALA    |1      |       1|     43|   899|
|6 months  |COHORTS        |GUATEMALA    |0      |       0|    482|   899|
|6 months  |COHORTS        |GUATEMALA    |0      |       1|    322|   899|
|6 months  |COHORTS        |PHILIPPINES  |1      |       0|     58|  2669|
|6 months  |COHORTS        |PHILIPPINES  |1      |       1|     12|  2669|
|6 months  |COHORTS        |PHILIPPINES  |0      |       0|   2045|  2669|
|6 months  |COHORTS        |PHILIPPINES  |0      |       1|    554|  2669|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |       0|     23|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |       1|     10|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |       0|    180|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |       1|     76|   289|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       0|     25|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       1|     10|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |0      |       0|   3581|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |0      |       1|   1207|  4823|
|6 months  |MAL-ED         |INDIA        |1      |       0|      0|   234|
|6 months  |MAL-ED         |INDIA        |1      |       1|      0|   234|
|6 months  |MAL-ED         |INDIA        |0      |       0|    190|   234|
|6 months  |MAL-ED         |INDIA        |0      |       1|     44|   234|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |       0|    197|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |       1|     44|   241|
|6 months  |MAL-ED         |PERU         |1      |       0|     13|   273|
|6 months  |MAL-ED         |PERU         |1      |       1|      6|   273|
|6 months  |MAL-ED         |PERU         |0      |       0|    200|   273|
|6 months  |MAL-ED         |PERU         |0      |       1|     54|   273|
|6 months  |MAL-ED         |NEPAL        |1      |       0|      0|   236|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |0      |       0|    224|   236|
|6 months  |MAL-ED         |NEPAL        |0      |       1|     12|   236|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|     38|   209|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |       0|    165|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |       1|      6|   209|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|     13|   247|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      3|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |       0|    175|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |       1|     56|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|     72|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|     20|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       0|    132|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       1|     30|   254|
|6 months  |PROBIT         |BELARUS      |1      |       0|    612| 15760|
|6 months  |PROBIT         |BELARUS      |1      |       1|     35| 15760|
|6 months  |PROBIT         |BELARUS      |0      |       0|  14528| 15760|
|6 months  |PROBIT         |BELARUS      |0      |       1|    585| 15760|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |       0|    183|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |       1|     19|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |       0|   1643|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |       1|    178|  2023|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |       0|    460|  8615|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |       1|    109|  8615|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |       0|   6753|  8615|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |       1|   1293|  8615|
|24 months |COHORTS        |INDIA        |1      |       0|      2|  3990|
|24 months |COHORTS        |INDIA        |1      |       1|      0|  3990|
|24 months |COHORTS        |INDIA        |0      |       0|   1853|  3990|
|24 months |COHORTS        |INDIA        |0      |       1|   2135|  3990|
|24 months |COHORTS        |GUATEMALA    |1      |       0|     19|  1004|
|24 months |COHORTS        |GUATEMALA    |1      |       1|     88|  1004|
|24 months |COHORTS        |GUATEMALA    |0      |       0|    169|  1004|
|24 months |COHORTS        |GUATEMALA    |0      |       1|    728|  1004|
|24 months |COHORTS        |PHILIPPINES  |1      |       0|     25|  2406|
|24 months |COHORTS        |PHILIPPINES  |1      |       1|     38|  2406|
|24 months |COHORTS        |PHILIPPINES  |0      |       0|    882|  2406|
|24 months |COHORTS        |PHILIPPINES  |0      |       1|   1461|  2406|
|24 months |JiVitA-4       |BANGLADESH   |1      |       0|     23|  4745|
|24 months |JiVitA-4       |BANGLADESH   |1      |       1|     16|  4745|
|24 months |JiVitA-4       |BANGLADESH   |0      |       0|   2822|  4745|
|24 months |JiVitA-4       |BANGLADESH   |0      |       1|   1884|  4745|
|24 months |MAL-ED         |INDIA        |1      |       0|      0|   225|
|24 months |MAL-ED         |INDIA        |1      |       1|      0|   225|
|24 months |MAL-ED         |INDIA        |0      |       0|    129|   225|
|24 months |MAL-ED         |INDIA        |0      |       1|     96|   225|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |       0|    111|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |       1|    101|   212|
|24 months |MAL-ED         |PERU         |1      |       0|     10|   201|
|24 months |MAL-ED         |PERU         |1      |       1|      6|   201|
|24 months |MAL-ED         |PERU         |0      |       0|    117|   201|
|24 months |MAL-ED         |PERU         |0      |       1|     68|   201|
|24 months |MAL-ED         |NEPAL        |1      |       0|      0|   228|
|24 months |MAL-ED         |NEPAL        |1      |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |0      |       0|    178|   228|
|24 months |MAL-ED         |NEPAL        |0      |       1|     50|   228|
|24 months |MAL-ED         |BRAZIL       |1      |       0|     30|   169|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |0      |       0|    132|   169|
|24 months |MAL-ED         |BRAZIL       |0      |       1|      6|   169|
|24 months |MAL-ED         |TANZANIA     |1      |       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      9|   214|
|24 months |MAL-ED         |TANZANIA     |0      |       0|     55|   214|
|24 months |MAL-ED         |TANZANIA     |0      |       1|    146|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|     62|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|     24|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       0|     92|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       1|     60|   238|
|24 months |PROBIT         |BELARUS      |1      |       0|    138|  4035|
|24 months |PROBIT         |BELARUS      |1      |       1|     12|  4035|
|24 months |PROBIT         |BELARUS      |0      |       0|   3622|  4035|
|24 months |PROBIT         |BELARUS      |0      |       1|    263|  4035|
|24 months |TanzaniaChild2 |TANZANIA     |1      |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |       1|      1|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |       0|     64|  1630|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |       1|     39|  1630|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |       0|   1000|  1630|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |       1|    527|  1630|


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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


