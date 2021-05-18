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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country      |single | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:------|--------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |1      |        0|      4|  5001|
|Birth     |COHORTS        |INDIA        |1      |        1|      0|  5001|
|Birth     |COHORTS        |INDIA        |0      |        0|   4832|  5001|
|Birth     |COHORTS        |INDIA        |0      |        1|    165|  5001|
|Birth     |COHORTS        |GUATEMALA    |1      |        0|     75|   794|
|Birth     |COHORTS        |GUATEMALA    |1      |        1|      0|   794|
|Birth     |COHORTS        |GUATEMALA    |0      |        0|    708|   794|
|Birth     |COHORTS        |GUATEMALA    |0      |        1|     11|   794|
|Birth     |COHORTS        |PHILIPPINES  |1      |        0|     78|  3003|
|Birth     |COHORTS        |PHILIPPINES  |1      |        1|      1|  3003|
|Birth     |COHORTS        |PHILIPPINES  |0      |        0|   2880|  3003|
|Birth     |COHORTS        |PHILIPPINES  |0      |        1|     44|  3003|
|Birth     |JiVitA-4       |BANGLADESH   |1      |        0|     20|  2819|
|Birth     |JiVitA-4       |BANGLADESH   |1      |        1|      1|  2819|
|Birth     |JiVitA-4       |BANGLADESH   |0      |        0|   2566|  2819|
|Birth     |JiVitA-4       |BANGLADESH   |0      |        1|    232|  2819|
|Birth     |MAL-ED         |INDIA        |1      |        0|      0|    47|
|Birth     |MAL-ED         |INDIA        |1      |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |0      |        0|     45|    47|
|Birth     |MAL-ED         |INDIA        |0      |        1|      2|    47|
|Birth     |MAL-ED         |BANGLADESH   |1      |        0|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |1      |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |0      |        0|    222|   231|
|Birth     |MAL-ED         |BANGLADESH   |0      |        1|      9|   231|
|Birth     |MAL-ED         |PERU         |1      |        0|     12|   233|
|Birth     |MAL-ED         |PERU         |1      |        1|      1|   233|
|Birth     |MAL-ED         |PERU         |0      |        0|    217|   233|
|Birth     |MAL-ED         |PERU         |0      |        1|      3|   233|
|Birth     |MAL-ED         |NEPAL        |1      |        0|      0|    27|
|Birth     |MAL-ED         |NEPAL        |1      |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |0      |        0|     26|    27|
|Birth     |MAL-ED         |NEPAL        |0      |        1|      1|    27|
|Birth     |MAL-ED         |BRAZIL       |1      |        0|     11|    65|
|Birth     |MAL-ED         |BRAZIL       |1      |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |0      |        0|     51|    65|
|Birth     |MAL-ED         |BRAZIL       |0      |        1|      3|    65|
|Birth     |MAL-ED         |TANZANIA     |1      |        0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |1      |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |0      |        0|    106|   125|
|Birth     |MAL-ED         |TANZANIA     |0      |        1|     10|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |        0|     47|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |        0|     74|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |        1|      2|   123|
|Birth     |PROBIT         |BELARUS      |1      |        0|    535| 13893|
|Birth     |PROBIT         |BELARUS      |1      |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |0      |        0|  13353| 13893|
|Birth     |PROBIT         |BELARUS      |0      |        1|      5| 13893|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |        0|    942| 13787|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |        1|     27| 13787|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |        0|  12403| 13787|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |        1|    415| 13787|
|6 months  |COHORTS        |INDIA        |1      |        0|      3|  5174|
|6 months  |COHORTS        |INDIA        |1      |        1|      0|  5174|
|6 months  |COHORTS        |INDIA        |0      |        0|   4938|  5174|
|6 months  |COHORTS        |INDIA        |0      |        1|    233|  5174|
|6 months  |COHORTS        |GUATEMALA    |1      |        0|     77|   899|
|6 months  |COHORTS        |GUATEMALA    |1      |        1|     18|   899|
|6 months  |COHORTS        |GUATEMALA    |0      |        0|    706|   899|
|6 months  |COHORTS        |GUATEMALA    |0      |        1|     98|   899|
|6 months  |COHORTS        |PHILIPPINES  |1      |        0|     68|  2669|
|6 months  |COHORTS        |PHILIPPINES  |1      |        1|      2|  2669|
|6 months  |COHORTS        |PHILIPPINES  |0      |        0|   2470|  2669|
|6 months  |COHORTS        |PHILIPPINES  |0      |        1|    129|  2669|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |        0|     29|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |        1|      4|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |        0|    234|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |        1|     22|   289|
|6 months  |JiVitA-4       |BANGLADESH   |1      |        0|     33|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |1      |        1|      2|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |0      |        0|   4520|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |0      |        1|    268|  4823|
|6 months  |MAL-ED         |INDIA        |1      |        0|      0|   234|
|6 months  |MAL-ED         |INDIA        |1      |        1|      0|   234|
|6 months  |MAL-ED         |INDIA        |0      |        0|    225|   234|
|6 months  |MAL-ED         |INDIA        |0      |        1|      9|   234|
|6 months  |MAL-ED         |BANGLADESH   |1      |        0|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |1      |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |        0|    233|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |        1|      8|   241|
|6 months  |MAL-ED         |PERU         |1      |        0|     18|   273|
|6 months  |MAL-ED         |PERU         |1      |        1|      1|   273|
|6 months  |MAL-ED         |PERU         |0      |        0|    245|   273|
|6 months  |MAL-ED         |PERU         |0      |        1|      9|   273|
|6 months  |MAL-ED         |NEPAL        |1      |        0|      0|   236|
|6 months  |MAL-ED         |NEPAL        |1      |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |0      |        0|    235|   236|
|6 months  |MAL-ED         |NEPAL        |0      |        1|      1|   236|
|6 months  |MAL-ED         |BRAZIL       |1      |        0|     38|   209|
|6 months  |MAL-ED         |BRAZIL       |1      |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |        0|    171|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |        1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |1      |        0|     15|   247|
|6 months  |MAL-ED         |TANZANIA     |1      |        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |        0|    218|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |        1|     13|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |        0|     91|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |        0|    157|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |        1|      5|   254|
|6 months  |PROBIT         |BELARUS      |1      |        0|    636| 15760|
|6 months  |PROBIT         |BELARUS      |1      |        1|     11| 15760|
|6 months  |PROBIT         |BELARUS      |0      |        0|  14947| 15760|
|6 months  |PROBIT         |BELARUS      |0      |        1|    166| 15760|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |        0|    201|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |        1|      1|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |        0|   1803|  2023|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |        1|     18|  2023|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |        0|    538|  8615|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |        1|     31|  8615|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |        0|   7729|  8615|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |        1|    317|  8615|
|24 months |COHORTS        |INDIA        |1      |        0|      2|  3990|
|24 months |COHORTS        |INDIA        |1      |        1|      0|  3990|
|24 months |COHORTS        |INDIA        |0      |        0|   3068|  3990|
|24 months |COHORTS        |INDIA        |0      |        1|    920|  3990|
|24 months |COHORTS        |GUATEMALA    |1      |        0|     51|  1004|
|24 months |COHORTS        |GUATEMALA    |1      |        1|     56|  1004|
|24 months |COHORTS        |GUATEMALA    |0      |        0|    461|  1004|
|24 months |COHORTS        |GUATEMALA    |0      |        1|    436|  1004|
|24 months |COHORTS        |PHILIPPINES  |1      |        0|     51|  2406|
|24 months |COHORTS        |PHILIPPINES  |1      |        1|     12|  2406|
|24 months |COHORTS        |PHILIPPINES  |0      |        0|   1653|  2406|
|24 months |COHORTS        |PHILIPPINES  |0      |        1|    690|  2406|
|24 months |JiVitA-4       |BANGLADESH   |1      |        0|     35|  4745|
|24 months |JiVitA-4       |BANGLADESH   |1      |        1|      4|  4745|
|24 months |JiVitA-4       |BANGLADESH   |0      |        0|   4259|  4745|
|24 months |JiVitA-4       |BANGLADESH   |0      |        1|    447|  4745|
|24 months |MAL-ED         |INDIA        |1      |        0|      0|   225|
|24 months |MAL-ED         |INDIA        |1      |        1|      0|   225|
|24 months |MAL-ED         |INDIA        |0      |        0|    196|   225|
|24 months |MAL-ED         |INDIA        |0      |        1|     29|   225|
|24 months |MAL-ED         |BANGLADESH   |1      |        0|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |1      |        1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |        0|    184|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |        1|     28|   212|
|24 months |MAL-ED         |PERU         |1      |        0|     14|   201|
|24 months |MAL-ED         |PERU         |1      |        1|      2|   201|
|24 months |MAL-ED         |PERU         |0      |        0|    172|   201|
|24 months |MAL-ED         |PERU         |0      |        1|     13|   201|
|24 months |MAL-ED         |NEPAL        |1      |        0|      0|   228|
|24 months |MAL-ED         |NEPAL        |1      |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |0      |        0|    221|   228|
|24 months |MAL-ED         |NEPAL        |0      |        1|      7|   228|
|24 months |MAL-ED         |BRAZIL       |1      |        0|     31|   169|
|24 months |MAL-ED         |BRAZIL       |1      |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |0      |        0|    137|   169|
|24 months |MAL-ED         |BRAZIL       |0      |        1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |1      |        0|      9|   214|
|24 months |MAL-ED         |TANZANIA     |1      |        1|      4|   214|
|24 months |MAL-ED         |TANZANIA     |0      |        0|    135|   214|
|24 months |MAL-ED         |TANZANIA     |0      |        1|     66|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1      |        0|     79|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1      |        1|      7|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |        0|    132|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |        1|     20|   238|
|24 months |PROBIT         |BELARUS      |1      |        0|    144|  4035|
|24 months |PROBIT         |BELARUS      |1      |        1|      6|  4035|
|24 months |PROBIT         |BELARUS      |0      |        0|   3826|  4035|
|24 months |PROBIT         |BELARUS      |0      |        1|     59|  4035|
|24 months |TanzaniaChild2 |TANZANIA     |1      |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |        0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |        1|      1|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |        0|     90|  1630|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |        1|     13|  1630|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |        0|   1363|  1630|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |        1|    164|  1630|


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
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


