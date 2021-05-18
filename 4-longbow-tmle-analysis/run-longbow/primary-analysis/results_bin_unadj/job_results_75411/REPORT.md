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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid      |country      |earlybf | sstunted| n_cell|     n|
|:---------|:------------|:------------|:-------|--------:|------:|-----:|
|Birth     |EE           |PAKISTAN     |1       |        0|     39|   235|
|Birth     |EE           |PAKISTAN     |1       |        1|     12|   235|
|Birth     |EE           |PAKISTAN     |0       |        0|    150|   235|
|Birth     |EE           |PAKISTAN     |0       |        1|     34|   235|
|Birth     |GMS-Nepal    |NEPAL        |1       |        0|    166|   639|
|Birth     |GMS-Nepal    |NEPAL        |1       |        1|      8|   639|
|Birth     |GMS-Nepal    |NEPAL        |0       |        0|    443|   639|
|Birth     |GMS-Nepal    |NEPAL        |0       |        1|     22|   639|
|Birth     |JiVitA-3     |BANGLADESH   |1       |        0|    168| 22343|
|Birth     |JiVitA-3     |BANGLADESH   |1       |        1|     92| 22343|
|Birth     |JiVitA-3     |BANGLADESH   |0       |        0|  19738| 22343|
|Birth     |JiVitA-3     |BANGLADESH   |0       |        1|   2345| 22343|
|Birth     |JiVitA-4     |BANGLADESH   |1       |        0|   1609|  2817|
|Birth     |JiVitA-4     |BANGLADESH   |1       |        1|    142|  2817|
|Birth     |JiVitA-4     |BANGLADESH   |0       |        0|    977|  2817|
|Birth     |JiVitA-4     |BANGLADESH   |0       |        1|     89|  2817|
|Birth     |MAL-ED       |INDIA        |1       |        0|     29|    47|
|Birth     |MAL-ED       |INDIA        |1       |        1|      1|    47|
|Birth     |MAL-ED       |INDIA        |0       |        0|     16|    47|
|Birth     |MAL-ED       |INDIA        |0       |        1|      1|    47|
|Birth     |MAL-ED       |BANGLADESH   |1       |        0|    132|   231|
|Birth     |MAL-ED       |BANGLADESH   |1       |        1|      5|   231|
|Birth     |MAL-ED       |BANGLADESH   |0       |        0|     90|   231|
|Birth     |MAL-ED       |BANGLADESH   |0       |        1|      4|   231|
|Birth     |MAL-ED       |PERU         |1       |        0|    173|   233|
|Birth     |MAL-ED       |PERU         |1       |        1|      3|   233|
|Birth     |MAL-ED       |PERU         |0       |        0|     56|   233|
|Birth     |MAL-ED       |PERU         |0       |        1|      1|   233|
|Birth     |MAL-ED       |NEPAL        |1       |        0|     10|    27|
|Birth     |MAL-ED       |NEPAL        |1       |        1|      0|    27|
|Birth     |MAL-ED       |NEPAL        |0       |        0|     16|    27|
|Birth     |MAL-ED       |NEPAL        |0       |        1|      1|    27|
|Birth     |MAL-ED       |BRAZIL       |1       |        0|     30|    65|
|Birth     |MAL-ED       |BRAZIL       |1       |        1|      1|    65|
|Birth     |MAL-ED       |BRAZIL       |0       |        0|     32|    65|
|Birth     |MAL-ED       |BRAZIL       |0       |        1|      2|    65|
|Birth     |MAL-ED       |TANZANIA     |1       |        0|     95|   125|
|Birth     |MAL-ED       |TANZANIA     |1       |        1|     10|   125|
|Birth     |MAL-ED       |TANZANIA     |0       |        0|     20|   125|
|Birth     |MAL-ED       |TANZANIA     |0       |        1|      0|   125|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |        0|     65|   118|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |        1|      2|   118|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |        0|     51|   118|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |        1|      0|   118|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |        0|    634|   732|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |        1|      9|   732|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |        0|     88|   732|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |        1|      1|   732|
|Birth     |SAS-CompFeed |INDIA        |1       |        0|     69|  1195|
|Birth     |SAS-CompFeed |INDIA        |1       |        1|      2|  1195|
|Birth     |SAS-CompFeed |INDIA        |0       |        0|   1047|  1195|
|Birth     |SAS-CompFeed |INDIA        |0       |        1|     77|  1195|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |        0|   6380| 12362|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |        1|    203| 12362|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |        0|   5595| 12362|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |        1|    184| 12362|
|6 months  |EE           |PAKISTAN     |1       |        0|     69|   365|
|6 months  |EE           |PAKISTAN     |1       |        1|     11|   365|
|6 months  |EE           |PAKISTAN     |0       |        0|    216|   365|
|6 months  |EE           |PAKISTAN     |0       |        1|     69|   365|
|6 months  |GMS-Nepal    |NEPAL        |1       |        0|    141|   520|
|6 months  |GMS-Nepal    |NEPAL        |1       |        1|      4|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |        0|    359|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |        1|     16|   520|
|6 months  |JiVitA-3     |BANGLADESH   |1       |        0|     59| 16739|
|6 months  |JiVitA-3     |BANGLADESH   |1       |        1|     16| 16739|
|6 months  |JiVitA-3     |BANGLADESH   |0       |        0|  15665| 16739|
|6 months  |JiVitA-3     |BANGLADESH   |0       |        1|    999| 16739|
|6 months  |JiVitA-4     |BANGLADESH   |1       |        0|   2822|  4824|
|6 months  |JiVitA-4     |BANGLADESH   |1       |        1|    176|  4824|
|6 months  |JiVitA-4     |BANGLADESH   |0       |        0|   1732|  4824|
|6 months  |JiVitA-4     |BANGLADESH   |0       |        1|     94|  4824|
|6 months  |MAL-ED       |INDIA        |1       |        0|    138|   236|
|6 months  |MAL-ED       |INDIA        |1       |        1|      4|   236|
|6 months  |MAL-ED       |INDIA        |0       |        0|     89|   236|
|6 months  |MAL-ED       |INDIA        |0       |        1|      5|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |        0|    140|   241|
|6 months  |MAL-ED       |BANGLADESH   |1       |        1|      4|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |        0|     93|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |        1|      4|   241|
|6 months  |MAL-ED       |PERU         |1       |        0|    199|   273|
|6 months  |MAL-ED       |PERU         |1       |        1|      7|   273|
|6 months  |MAL-ED       |PERU         |0       |        0|     64|   273|
|6 months  |MAL-ED       |PERU         |0       |        1|      3|   273|
|6 months  |MAL-ED       |NEPAL        |1       |        0|     89|   236|
|6 months  |MAL-ED       |NEPAL        |1       |        1|      0|   236|
|6 months  |MAL-ED       |NEPAL        |0       |        0|    146|   236|
|6 months  |MAL-ED       |NEPAL        |0       |        1|      1|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |        0|     97|   209|
|6 months  |MAL-ED       |BRAZIL       |1       |        1|      0|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |        0|    112|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |        1|      0|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |        0|    186|   247|
|6 months  |MAL-ED       |TANZANIA     |1       |        1|     13|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |        0|     47|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |        1|      1|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |        0|    139|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |        1|      2|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |        0|    105|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |        1|      4|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |        0|    609|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |        1|     22|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |        0|     83|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |        1|      1|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |        0|     73|  1300|
|6 months  |SAS-CompFeed |INDIA        |1       |        1|      1|  1300|
|6 months  |SAS-CompFeed |INDIA        |0       |        0|   1105|  1300|
|6 months  |SAS-CompFeed |INDIA        |0       |        1|    121|  1300|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |        0|   4002|  7721|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |        1|    179|  7721|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |        0|   3411|  7721|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |        1|    129|  7721|
|24 months |EE           |PAKISTAN     |1       |        0|     26|   163|
|24 months |EE           |PAKISTAN     |1       |        1|     14|   163|
|24 months |EE           |PAKISTAN     |0       |        0|     79|   163|
|24 months |EE           |PAKISTAN     |0       |        1|     44|   163|
|24 months |GMS-Nepal    |NEPAL        |1       |        0|    114|   450|
|24 months |GMS-Nepal    |NEPAL        |1       |        1|     13|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |        0|    286|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |        1|     37|   450|
|24 months |JiVitA-3     |BANGLADESH   |1       |        0|      0|  8598|
|24 months |JiVitA-3     |BANGLADESH   |1       |        1|      4|  8598|
|24 months |JiVitA-3     |BANGLADESH   |0       |        0|   7257|  8598|
|24 months |JiVitA-3     |BANGLADESH   |0       |        1|   1337|  8598|
|24 months |JiVitA-4     |BANGLADESH   |1       |        0|   2671|  4746|
|24 months |JiVitA-4     |BANGLADESH   |1       |        1|    287|  4746|
|24 months |JiVitA-4     |BANGLADESH   |0       |        0|   1624|  4746|
|24 months |JiVitA-4     |BANGLADESH   |0       |        1|    164|  4746|
|24 months |MAL-ED       |INDIA        |1       |        0|    118|   227|
|24 months |MAL-ED       |INDIA        |1       |        1|     18|   227|
|24 months |MAL-ED       |INDIA        |0       |        0|     79|   227|
|24 months |MAL-ED       |INDIA        |0       |        1|     12|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |        0|    111|   212|
|24 months |MAL-ED       |BANGLADESH   |1       |        1|     18|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |        0|     73|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |        1|     10|   212|
|24 months |MAL-ED       |PERU         |1       |        0|    146|   201|
|24 months |MAL-ED       |PERU         |1       |        1|     11|   201|
|24 months |MAL-ED       |PERU         |0       |        0|     40|   201|
|24 months |MAL-ED       |PERU         |0       |        1|      4|   201|
|24 months |MAL-ED       |NEPAL        |1       |        0|     83|   228|
|24 months |MAL-ED       |NEPAL        |1       |        1|      2|   228|
|24 months |MAL-ED       |NEPAL        |0       |        0|    138|   228|
|24 months |MAL-ED       |NEPAL        |0       |        1|      5|   228|
|24 months |MAL-ED       |BRAZIL       |1       |        0|     78|   169|
|24 months |MAL-ED       |BRAZIL       |1       |        1|      0|   169|
|24 months |MAL-ED       |BRAZIL       |0       |        0|     90|   169|
|24 months |MAL-ED       |BRAZIL       |0       |        1|      1|   169|
|24 months |MAL-ED       |TANZANIA     |1       |        0|    116|   214|
|24 months |MAL-ED       |TANZANIA     |1       |        1|     58|   214|
|24 months |MAL-ED       |TANZANIA     |0       |        0|     28|   214|
|24 months |MAL-ED       |TANZANIA     |0       |        1|     12|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |        0|    123|   235|
|24 months |MAL-ED       |SOUTH AFRICA |1       |        1|     12|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |        0|     86|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |        1|     14|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |        0|    422|   514|
|24 months |NIH-Crypto   |BANGLADESH   |1       |        1|     30|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |        0|     56|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |        1|      6|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |        0|    656|  1420|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |        1|     74|  1420|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |        0|    613|  1420|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |        1|     77|  1420|


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

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


