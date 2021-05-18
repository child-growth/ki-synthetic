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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid      |country      |earlybf | swasted| n_cell|     n|
|:---------|:------------|:------------|:-------|-------:|------:|-----:|
|Birth     |EE           |PAKISTAN     |1       |       0|     36|   173|
|Birth     |EE           |PAKISTAN     |1       |       1|      3|   173|
|Birth     |EE           |PAKISTAN     |0       |       0|    131|   173|
|Birth     |EE           |PAKISTAN     |0       |       1|      3|   173|
|Birth     |GMS-Nepal    |NEPAL        |1       |       0|    152|   587|
|Birth     |GMS-Nepal    |NEPAL        |1       |       1|      8|   587|
|Birth     |GMS-Nepal    |NEPAL        |0       |       0|    412|   587|
|Birth     |GMS-Nepal    |NEPAL        |0       |       1|     15|   587|
|Birth     |JiVitA-3     |BANGLADESH   |1       |       0|    131| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |1       |       1|      6| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |0       |       0|  17447| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |0       |       1|    340| 17924|
|Birth     |JiVitA-4     |BANGLADESH   |1       |       0|   1463|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |1       |       1|     17|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |0       |       0|    898|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |0       |       1|     14|  2392|
|Birth     |MAL-ED       |INDIA        |1       |       0|     29|    45|
|Birth     |MAL-ED       |INDIA        |1       |       1|      0|    45|
|Birth     |MAL-ED       |INDIA        |0       |       0|     16|    45|
|Birth     |MAL-ED       |INDIA        |0       |       1|      0|    45|
|Birth     |MAL-ED       |BANGLADESH   |1       |       0|    124|   215|
|Birth     |MAL-ED       |BANGLADESH   |1       |       1|      3|   215|
|Birth     |MAL-ED       |BANGLADESH   |0       |       0|     83|   215|
|Birth     |MAL-ED       |BANGLADESH   |0       |       1|      5|   215|
|Birth     |MAL-ED       |PERU         |1       |       0|    172|   228|
|Birth     |MAL-ED       |PERU         |1       |       1|      0|   228|
|Birth     |MAL-ED       |PERU         |0       |       0|     56|   228|
|Birth     |MAL-ED       |PERU         |0       |       1|      0|   228|
|Birth     |MAL-ED       |NEPAL        |1       |       0|     10|    26|
|Birth     |MAL-ED       |NEPAL        |1       |       1|      0|    26|
|Birth     |MAL-ED       |NEPAL        |0       |       0|     15|    26|
|Birth     |MAL-ED       |NEPAL        |0       |       1|      1|    26|
|Birth     |MAL-ED       |BRAZIL       |1       |       0|     30|    62|
|Birth     |MAL-ED       |BRAZIL       |1       |       1|      0|    62|
|Birth     |MAL-ED       |BRAZIL       |0       |       0|     32|    62|
|Birth     |MAL-ED       |BRAZIL       |0       |       1|      0|    62|
|Birth     |MAL-ED       |TANZANIA     |1       |       0|     95|   115|
|Birth     |MAL-ED       |TANZANIA     |1       |       1|      0|   115|
|Birth     |MAL-ED       |TANZANIA     |0       |       0|     20|   115|
|Birth     |MAL-ED       |TANZANIA     |0       |       1|      0|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |       0|     65|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |       1|      0|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |       0|     50|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |       1|      0|   115|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |       0|    581|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |       1|     40|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |       0|     79|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |       1|      7|   707|
|Birth     |SAS-CompFeed |INDIA        |1       |       0|     63|  1062|
|Birth     |SAS-CompFeed |INDIA        |1       |       1|      1|  1062|
|Birth     |SAS-CompFeed |INDIA        |0       |       0|    971|  1062|
|Birth     |SAS-CompFeed |INDIA        |0       |       1|     27|  1062|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |       0|   5737| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |       1|    400| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |       0|   5058| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |       1|    319| 11514|
|6 months  |EE           |PAKISTAN     |1       |       0|     78|   367|
|6 months  |EE           |PAKISTAN     |1       |       1|      3|   367|
|6 months  |EE           |PAKISTAN     |0       |       0|    276|   367|
|6 months  |EE           |PAKISTAN     |0       |       1|     10|   367|
|6 months  |GMS-Nepal    |NEPAL        |1       |       0|    142|   520|
|6 months  |GMS-Nepal    |NEPAL        |1       |       1|      3|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |       0|    372|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |       1|      3|   520|
|6 months  |JiVitA-3     |BANGLADESH   |1       |       0|     74| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |1       |       1|      3| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |0       |       0|  16410| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |0       |       1|    225| 16712|
|6 months  |JiVitA-4     |BANGLADESH   |1       |       0|   2980|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |1       |       1|     17|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |0       |       0|   1813|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |0       |       1|     16|  4826|
|6 months  |MAL-ED       |INDIA        |1       |       0|    139|   236|
|6 months  |MAL-ED       |INDIA        |1       |       1|      3|   236|
|6 months  |MAL-ED       |INDIA        |0       |       0|     91|   236|
|6 months  |MAL-ED       |INDIA        |0       |       1|      3|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |       0|    144|   241|
|6 months  |MAL-ED       |BANGLADESH   |1       |       1|      0|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |       0|     95|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |       1|      2|   241|
|6 months  |MAL-ED       |PERU         |1       |       0|    206|   273|
|6 months  |MAL-ED       |PERU         |1       |       1|      0|   273|
|6 months  |MAL-ED       |PERU         |0       |       0|     67|   273|
|6 months  |MAL-ED       |PERU         |0       |       1|      0|   273|
|6 months  |MAL-ED       |NEPAL        |1       |       0|     89|   236|
|6 months  |MAL-ED       |NEPAL        |1       |       1|      0|   236|
|6 months  |MAL-ED       |NEPAL        |0       |       0|    147|   236|
|6 months  |MAL-ED       |NEPAL        |0       |       1|      0|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |       0|     97|   209|
|6 months  |MAL-ED       |BRAZIL       |1       |       1|      0|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |       0|    112|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |       1|      0|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |       0|    199|   247|
|6 months  |MAL-ED       |TANZANIA     |1       |       1|      0|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |       0|     48|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |       1|      0|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |       0|    140|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |       1|      1|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |       0|    107|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |       1|      2|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |       0|    631|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |       1|      0|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |       0|     84|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |       1|      0|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |       0|     72|  1298|
|6 months  |SAS-CompFeed |INDIA        |1       |       1|      1|  1298|
|6 months  |SAS-CompFeed |INDIA        |0       |       0|   1187|  1298|
|6 months  |SAS-CompFeed |INDIA        |0       |       1|     38|  1298|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |       0|   4070|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |       1|     39|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |       0|   3436|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |       1|     33|  7578|
|24 months |EE           |PAKISTAN     |1       |       0|     40|   164|
|24 months |EE           |PAKISTAN     |1       |       1|      0|   164|
|24 months |EE           |PAKISTAN     |0       |       0|    120|   164|
|24 months |EE           |PAKISTAN     |0       |       1|      4|   164|
|24 months |GMS-Nepal    |NEPAL        |1       |       0|    124|   450|
|24 months |GMS-Nepal    |NEPAL        |1       |       1|      3|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |       0|    312|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |       1|     11|   450|
|24 months |JiVitA-3     |BANGLADESH   |1       |       0|      2|  8569|
|24 months |JiVitA-3     |BANGLADESH   |1       |       1|      1|  8569|
|24 months |JiVitA-3     |BANGLADESH   |0       |       0|   8234|  8569|
|24 months |JiVitA-3     |BANGLADESH   |0       |       1|    332|  8569|
|24 months |JiVitA-4     |BANGLADESH   |1       |       0|   2866|  4729|
|24 months |JiVitA-4     |BANGLADESH   |1       |       1|     82|  4729|
|24 months |JiVitA-4     |BANGLADESH   |0       |       0|   1734|  4729|
|24 months |JiVitA-4     |BANGLADESH   |0       |       1|     47|  4729|
|24 months |MAL-ED       |INDIA        |1       |       0|    136|   227|
|24 months |MAL-ED       |INDIA        |1       |       1|      0|   227|
|24 months |MAL-ED       |INDIA        |0       |       0|     89|   227|
|24 months |MAL-ED       |INDIA        |0       |       1|      2|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |       0|    129|   212|
|24 months |MAL-ED       |BANGLADESH   |1       |       1|      0|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |       0|     83|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |       1|      0|   212|
|24 months |MAL-ED       |PERU         |1       |       0|    155|   201|
|24 months |MAL-ED       |PERU         |1       |       1|      2|   201|
|24 months |MAL-ED       |PERU         |0       |       0|     44|   201|
|24 months |MAL-ED       |PERU         |0       |       1|      0|   201|
|24 months |MAL-ED       |NEPAL        |1       |       0|     85|   228|
|24 months |MAL-ED       |NEPAL        |1       |       1|      0|   228|
|24 months |MAL-ED       |NEPAL        |0       |       0|    143|   228|
|24 months |MAL-ED       |NEPAL        |0       |       1|      0|   228|
|24 months |MAL-ED       |BRAZIL       |1       |       0|     78|   169|
|24 months |MAL-ED       |BRAZIL       |1       |       1|      0|   169|
|24 months |MAL-ED       |BRAZIL       |0       |       0|     90|   169|
|24 months |MAL-ED       |BRAZIL       |0       |       1|      1|   169|
|24 months |MAL-ED       |TANZANIA     |1       |       0|    174|   214|
|24 months |MAL-ED       |TANZANIA     |1       |       1|      0|   214|
|24 months |MAL-ED       |TANZANIA     |0       |       0|     40|   214|
|24 months |MAL-ED       |TANZANIA     |0       |       1|      0|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |       0|    135|   235|
|24 months |MAL-ED       |SOUTH AFRICA |1       |       1|      0|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |       0|    100|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |       1|      0|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |       0|    450|   514|
|24 months |NIH-Crypto   |BANGLADESH   |1       |       1|      2|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |       0|     60|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |       1|      2|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |       0|    181|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |       1|     20|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |       0|    167|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |       1|      6|   374|


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


