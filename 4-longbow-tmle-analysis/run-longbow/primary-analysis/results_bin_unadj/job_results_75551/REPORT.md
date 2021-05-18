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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |single | swasted| n_cell|     n|
|:---------|:--------------|:------------|:------|-------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |1      |       0|      4|  4650|
|Birth     |COHORTS        |INDIA        |1      |       1|      0|  4650|
|Birth     |COHORTS        |INDIA        |0      |       0|   4397|  4650|
|Birth     |COHORTS        |INDIA        |0      |       1|    249|  4650|
|Birth     |COHORTS        |GUATEMALA    |1      |       0|     64|   704|
|Birth     |COHORTS        |GUATEMALA    |1      |       1|      7|   704|
|Birth     |COHORTS        |GUATEMALA    |0      |       0|    583|   704|
|Birth     |COHORTS        |GUATEMALA    |0      |       1|     50|   704|
|Birth     |COHORTS        |PHILIPPINES  |1      |       0|     71|  2855|
|Birth     |COHORTS        |PHILIPPINES  |1      |       1|      4|  2855|
|Birth     |COHORTS        |PHILIPPINES  |0      |       0|   2664|  2855|
|Birth     |COHORTS        |PHILIPPINES  |0      |       1|    116|  2855|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       0|     20|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |1      |       1|      0|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |0      |       0|   2342|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |0      |       1|     31|  2393|
|Birth     |MAL-ED         |INDIA        |1      |       0|      0|    45|
|Birth     |MAL-ED         |INDIA        |1      |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |0      |       0|     45|    45|
|Birth     |MAL-ED         |INDIA        |0      |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |0      |       0|    207|   215|
|Birth     |MAL-ED         |BANGLADESH   |0      |       1|      8|   215|
|Birth     |MAL-ED         |PERU         |1      |       0|     12|   228|
|Birth     |MAL-ED         |PERU         |1      |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |0      |       0|    216|   228|
|Birth     |MAL-ED         |PERU         |0      |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |0      |       0|     25|    26|
|Birth     |MAL-ED         |NEPAL        |0      |       1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|     11|    62|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |0      |       0|     51|    62|
|Birth     |MAL-ED         |BRAZIL       |0      |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |0      |       0|    106|   115|
|Birth     |MAL-ED         |TANZANIA     |0      |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|     47|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       0|     73|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       1|      0|   120|
|Birth     |PROBIT         |BELARUS      |1      |       0|    495| 13817|
|Birth     |PROBIT         |BELARUS      |1      |       1|     38| 13817|
|Birth     |PROBIT         |BELARUS      |0      |       0|  12403| 13817|
|Birth     |PROBIT         |BELARUS      |0      |       1|    881| 13817|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |       0|    832| 12831|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |       1|     68| 12831|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |       0|  11213| 12831|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |       1|    718| 12831|
|6 months  |COHORTS        |INDIA        |1      |       0|      3|  5166|
|6 months  |COHORTS        |INDIA        |1      |       1|      0|  5166|
|6 months  |COHORTS        |INDIA        |0      |       0|   5004|  5166|
|6 months  |COHORTS        |INDIA        |0      |       1|    159|  5166|
|6 months  |COHORTS        |GUATEMALA    |1      |       0|     93|   900|
|6 months  |COHORTS        |GUATEMALA    |1      |       1|      1|   900|
|6 months  |COHORTS        |GUATEMALA    |0      |       0|    801|   900|
|6 months  |COHORTS        |GUATEMALA    |0      |       1|      5|   900|
|6 months  |COHORTS        |PHILIPPINES  |1      |       0|     70|  2667|
|6 months  |COHORTS        |PHILIPPINES  |1      |       1|      0|  2667|
|6 months  |COHORTS        |PHILIPPINES  |0      |       0|   2562|  2667|
|6 months  |COHORTS        |PHILIPPINES  |0      |       1|     35|  2667|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |       0|     33|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |       1|      0|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |       0|    256|   289|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |       1|      0|   289|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       0|     34|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |1      |       1|      1|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |0      |       0|   4758|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |0      |       1|     32|  4825|
|6 months  |MAL-ED         |INDIA        |1      |       0|      0|   234|
|6 months  |MAL-ED         |INDIA        |1      |       1|      0|   234|
|6 months  |MAL-ED         |INDIA        |0      |       0|    228|   234|
|6 months  |MAL-ED         |INDIA        |0      |       1|      6|   234|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |       0|    239|   241|
|6 months  |MAL-ED         |BANGLADESH   |0      |       1|      2|   241|
|6 months  |MAL-ED         |PERU         |1      |       0|     19|   273|
|6 months  |MAL-ED         |PERU         |1      |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |0      |       0|    254|   273|
|6 months  |MAL-ED         |PERU         |0      |       1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |1      |       0|      0|   236|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |0      |       0|    236|   236|
|6 months  |MAL-ED         |NEPAL        |0      |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|     38|   209|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |       0|    171|   209|
|6 months  |MAL-ED         |BRAZIL       |0      |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |       0|    231|   247|
|6 months  |MAL-ED         |TANZANIA     |0      |       1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|     90|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       0|    161|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       1|      1|   254|
|6 months  |PROBIT         |BELARUS      |1      |       0|    646| 15757|
|6 months  |PROBIT         |BELARUS      |1      |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |0      |       0|  15102| 15757|
|6 months  |PROBIT         |BELARUS      |0      |       1|      9| 15757|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |       0|    199|  2022|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |       1|      3|  2022|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |       0|   1811|  2022|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |       1|      9|  2022|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |       0|    551|  8451|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |       1|      8|  8451|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |       0|   7821|  8451|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |       1|     71|  8451|
|24 months |COHORTS        |INDIA        |1      |       0|      2|  3960|
|24 months |COHORTS        |INDIA        |1      |       1|      0|  3960|
|24 months |COHORTS        |INDIA        |0      |       0|   3914|  3960|
|24 months |COHORTS        |INDIA        |0      |       1|     44|  3960|
|24 months |COHORTS        |GUATEMALA    |1      |       0|    108|  1015|
|24 months |COHORTS        |GUATEMALA    |1      |       1|      0|  1015|
|24 months |COHORTS        |GUATEMALA    |0      |       0|    903|  1015|
|24 months |COHORTS        |GUATEMALA    |0      |       1|      4|  1015|
|24 months |COHORTS        |PHILIPPINES  |1      |       0|     62|  2410|
|24 months |COHORTS        |PHILIPPINES  |1      |       1|      1|  2410|
|24 months |COHORTS        |PHILIPPINES  |0      |       0|   2323|  2410|
|24 months |COHORTS        |PHILIPPINES  |0      |       1|     24|  2410|
|24 months |JiVitA-4       |BANGLADESH   |1      |       0|     39|  4728|
|24 months |JiVitA-4       |BANGLADESH   |1      |       1|      0|  4728|
|24 months |JiVitA-4       |BANGLADESH   |0      |       0|   4560|  4728|
|24 months |JiVitA-4       |BANGLADESH   |0      |       1|    129|  4728|
|24 months |MAL-ED         |INDIA        |1      |       0|      0|   225|
|24 months |MAL-ED         |INDIA        |1      |       1|      0|   225|
|24 months |MAL-ED         |INDIA        |0      |       0|    223|   225|
|24 months |MAL-ED         |INDIA        |0      |       1|      2|   225|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |       0|    212|   212|
|24 months |MAL-ED         |BANGLADESH   |0      |       1|      0|   212|
|24 months |MAL-ED         |PERU         |1      |       0|     16|   201|
|24 months |MAL-ED         |PERU         |1      |       1|      0|   201|
|24 months |MAL-ED         |PERU         |0      |       0|    183|   201|
|24 months |MAL-ED         |PERU         |0      |       1|      2|   201|
|24 months |MAL-ED         |NEPAL        |1      |       0|      0|   228|
|24 months |MAL-ED         |NEPAL        |1      |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |0      |       0|    228|   228|
|24 months |MAL-ED         |NEPAL        |0      |       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |1      |       0|     31|   169|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |0      |       0|    137|   169|
|24 months |MAL-ED         |BRAZIL       |0      |       1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |1      |       0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |0      |       0|    201|   214|
|24 months |MAL-ED         |TANZANIA     |0      |       1|      0|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|     86|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       0|    152|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       1|      0|   238|
|24 months |PROBIT         |BELARUS      |1      |       0|    147|  3970|
|24 months |PROBIT         |BELARUS      |1      |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |0      |       0|   3816|  3970|
|24 months |PROBIT         |BELARUS      |0      |       1|      6|  3970|
|24 months |TanzaniaChild2 |TANZANIA     |1      |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |       0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0      |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |       0|     28|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |       1|      3|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |       0|    374|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |       1|     27|   432|


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
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


