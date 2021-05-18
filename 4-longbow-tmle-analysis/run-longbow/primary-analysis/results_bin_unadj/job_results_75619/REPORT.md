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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid      |country      |earlybf | wast_rec90d| n_cell|    n|
|:-----------|:------------|:------------|:-------|-----------:|------:|----:|
|0-24 months |EE           |PAKISTAN     |1       |           0|     32|  317|
|0-24 months |EE           |PAKISTAN     |1       |           1|     42|  317|
|0-24 months |EE           |PAKISTAN     |0       |           0|    126|  317|
|0-24 months |EE           |PAKISTAN     |0       |           1|    117|  317|
|0-24 months |GMS-Nepal    |NEPAL        |1       |           0|     66|  590|
|0-24 months |GMS-Nepal    |NEPAL        |1       |           1|     79|  590|
|0-24 months |GMS-Nepal    |NEPAL        |0       |           0|    205|  590|
|0-24 months |GMS-Nepal    |NEPAL        |0       |           1|    240|  590|
|0-24 months |JiVitA-3     |BANGLADESH   |1       |           0|     48| 7539|
|0-24 months |JiVitA-3     |BANGLADESH   |1       |           1|     16| 7539|
|0-24 months |JiVitA-3     |BANGLADESH   |0       |           0|   4306| 7539|
|0-24 months |JiVitA-3     |BANGLADESH   |0       |           1|   3169| 7539|
|0-24 months |JiVitA-4     |BANGLADESH   |1       |           0|    915| 2065|
|0-24 months |JiVitA-4     |BANGLADESH   |1       |           1|    312| 2065|
|0-24 months |JiVitA-4     |BANGLADESH   |0       |           0|    615| 2065|
|0-24 months |JiVitA-4     |BANGLADESH   |0       |           1|    223| 2065|
|0-24 months |MAL-ED       |INDIA        |1       |           0|     36|  181|
|0-24 months |MAL-ED       |INDIA        |1       |           1|     67|  181|
|0-24 months |MAL-ED       |INDIA        |0       |           0|     35|  181|
|0-24 months |MAL-ED       |INDIA        |0       |           1|     43|  181|
|0-24 months |MAL-ED       |BANGLADESH   |1       |           0|     25|  124|
|0-24 months |MAL-ED       |BANGLADESH   |1       |           1|     47|  124|
|0-24 months |MAL-ED       |BANGLADESH   |0       |           0|     19|  124|
|0-24 months |MAL-ED       |BANGLADESH   |0       |           1|     33|  124|
|0-24 months |MAL-ED       |PERU         |1       |           0|      6|   35|
|0-24 months |MAL-ED       |PERU         |1       |           1|     23|   35|
|0-24 months |MAL-ED       |PERU         |0       |           0|      0|   35|
|0-24 months |MAL-ED       |PERU         |0       |           1|      6|   35|
|0-24 months |MAL-ED       |NEPAL        |1       |           0|      7|   98|
|0-24 months |MAL-ED       |NEPAL        |1       |           1|     28|   98|
|0-24 months |MAL-ED       |NEPAL        |0       |           0|     13|   98|
|0-24 months |MAL-ED       |NEPAL        |0       |           1|     50|   98|
|0-24 months |MAL-ED       |BRAZIL       |1       |           0|      2|   24|
|0-24 months |MAL-ED       |BRAZIL       |1       |           1|      9|   24|
|0-24 months |MAL-ED       |BRAZIL       |0       |           0|      4|   24|
|0-24 months |MAL-ED       |BRAZIL       |0       |           1|      9|   24|
|0-24 months |MAL-ED       |TANZANIA     |1       |           0|      8|   51|
|0-24 months |MAL-ED       |TANZANIA     |1       |           1|     37|   51|
|0-24 months |MAL-ED       |TANZANIA     |0       |           0|      1|   51|
|0-24 months |MAL-ED       |TANZANIA     |0       |           1|      5|   51|
|0-24 months |MAL-ED       |SOUTH AFRICA |1       |           0|      9|   84|
|0-24 months |MAL-ED       |SOUTH AFRICA |1       |           1|     34|   84|
|0-24 months |MAL-ED       |SOUTH AFRICA |0       |           0|      7|   84|
|0-24 months |MAL-ED       |SOUTH AFRICA |0       |           1|     34|   84|
|0-24 months |NIH-Crypto   |BANGLADESH   |1       |           0|    104|  310|
|0-24 months |NIH-Crypto   |BANGLADESH   |1       |           1|    163|  310|
|0-24 months |NIH-Crypto   |BANGLADESH   |0       |           0|     13|  310|
|0-24 months |NIH-Crypto   |BANGLADESH   |0       |           1|     30|  310|
|0-24 months |SAS-CompFeed |INDIA        |1       |           0|     27|  787|
|0-24 months |SAS-CompFeed |INDIA        |1       |           1|     19|  787|
|0-24 months |SAS-CompFeed |INDIA        |0       |           0|    459|  787|
|0-24 months |SAS-CompFeed |INDIA        |0       |           1|    282|  787|
|0-24 months |ZVITAMBO     |ZIMBABWE     |1       |           0|    777| 3234|
|0-24 months |ZVITAMBO     |ZIMBABWE     |1       |           1|    951| 3234|
|0-24 months |ZVITAMBO     |ZIMBABWE     |0       |           0|    691| 3234|
|0-24 months |ZVITAMBO     |ZIMBABWE     |0       |           1|    815| 3234|
|0-6 months  |EE           |PAKISTAN     |1       |           0|      7|  125|
|0-6 months  |EE           |PAKISTAN     |1       |           1|     19|  125|
|0-6 months  |EE           |PAKISTAN     |0       |           0|     48|  125|
|0-6 months  |EE           |PAKISTAN     |0       |           1|     51|  125|
|0-6 months  |GMS-Nepal    |NEPAL        |1       |           0|     24|  243|
|0-6 months  |GMS-Nepal    |NEPAL        |1       |           1|     35|  243|
|0-6 months  |GMS-Nepal    |NEPAL        |0       |           0|     73|  243|
|0-6 months  |GMS-Nepal    |NEPAL        |0       |           1|    111|  243|
|0-6 months  |JiVitA-3     |BANGLADESH   |1       |           0|     36| 4718|
|0-6 months  |JiVitA-3     |BANGLADESH   |1       |           1|     16| 4718|
|0-6 months  |JiVitA-3     |BANGLADESH   |0       |           0|   1497| 4718|
|0-6 months  |JiVitA-3     |BANGLADESH   |0       |           1|   3169| 4718|
|0-6 months  |JiVitA-4     |BANGLADESH   |1       |           0|    144|  553|
|0-6 months  |JiVitA-4     |BANGLADESH   |1       |           1|    189|  553|
|0-6 months  |JiVitA-4     |BANGLADESH   |0       |           0|    100|  553|
|0-6 months  |JiVitA-4     |BANGLADESH   |0       |           1|    120|  553|
|0-6 months  |MAL-ED       |INDIA        |1       |           0|     15|   86|
|0-6 months  |MAL-ED       |INDIA        |1       |           1|     37|   86|
|0-6 months  |MAL-ED       |INDIA        |0       |           0|     12|   86|
|0-6 months  |MAL-ED       |INDIA        |0       |           1|     22|   86|
|0-6 months  |MAL-ED       |BANGLADESH   |1       |           0|      6|   63|
|0-6 months  |MAL-ED       |BANGLADESH   |1       |           1|     25|   63|
|0-6 months  |MAL-ED       |BANGLADESH   |0       |           0|      7|   63|
|0-6 months  |MAL-ED       |BANGLADESH   |0       |           1|     25|   63|
|0-6 months  |MAL-ED       |PERU         |1       |           0|      0|   11|
|0-6 months  |MAL-ED       |PERU         |1       |           1|     10|   11|
|0-6 months  |MAL-ED       |PERU         |0       |           0|      0|   11|
|0-6 months  |MAL-ED       |PERU         |0       |           1|      1|   11|
|0-6 months  |MAL-ED       |NEPAL        |1       |           0|      3|   48|
|0-6 months  |MAL-ED       |NEPAL        |1       |           1|     13|   48|
|0-6 months  |MAL-ED       |NEPAL        |0       |           0|      6|   48|
|0-6 months  |MAL-ED       |NEPAL        |0       |           1|     26|   48|
|0-6 months  |MAL-ED       |BRAZIL       |1       |           0|      0|   15|
|0-6 months  |MAL-ED       |BRAZIL       |1       |           1|      7|   15|
|0-6 months  |MAL-ED       |BRAZIL       |0       |           0|      1|   15|
|0-6 months  |MAL-ED       |BRAZIL       |0       |           1|      7|   15|
|0-6 months  |MAL-ED       |TANZANIA     |1       |           0|      1|   14|
|0-6 months  |MAL-ED       |TANZANIA     |1       |           1|     10|   14|
|0-6 months  |MAL-ED       |TANZANIA     |0       |           0|      0|   14|
|0-6 months  |MAL-ED       |TANZANIA     |0       |           1|      3|   14|
|0-6 months  |MAL-ED       |SOUTH AFRICA |1       |           0|      3|   33|
|0-6 months  |MAL-ED       |SOUTH AFRICA |1       |           1|     13|   33|
|0-6 months  |MAL-ED       |SOUTH AFRICA |0       |           0|      4|   33|
|0-6 months  |MAL-ED       |SOUTH AFRICA |0       |           1|     13|   33|
|0-6 months  |NIH-Crypto   |BANGLADESH   |1       |           0|     20|  197|
|0-6 months  |NIH-Crypto   |BANGLADESH   |1       |           1|    149|  197|
|0-6 months  |NIH-Crypto   |BANGLADESH   |0       |           0|      1|  197|
|0-6 months  |NIH-Crypto   |BANGLADESH   |0       |           1|     27|  197|
|0-6 months  |SAS-CompFeed |INDIA        |1       |           0|     12|  326|
|0-6 months  |SAS-CompFeed |INDIA        |1       |           1|     10|  326|
|0-6 months  |SAS-CompFeed |INDIA        |0       |           0|    143|  326|
|0-6 months  |SAS-CompFeed |INDIA        |0       |           1|    161|  326|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |1       |           0|    293| 2261|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |1       |           1|    912| 2261|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |0       |           0|    274| 2261|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |0       |           1|    782| 2261|
|6-24 months |EE           |PAKISTAN     |1       |           0|     25|  192|
|6-24 months |EE           |PAKISTAN     |1       |           1|     23|  192|
|6-24 months |EE           |PAKISTAN     |0       |           0|     78|  192|
|6-24 months |EE           |PAKISTAN     |0       |           1|     66|  192|
|6-24 months |GMS-Nepal    |NEPAL        |1       |           0|     42|  347|
|6-24 months |GMS-Nepal    |NEPAL        |1       |           1|     44|  347|
|6-24 months |GMS-Nepal    |NEPAL        |0       |           0|    132|  347|
|6-24 months |GMS-Nepal    |NEPAL        |0       |           1|    129|  347|
|6-24 months |JiVitA-3     |BANGLADESH   |1       |           0|     12| 2821|
|6-24 months |JiVitA-3     |BANGLADESH   |1       |           1|      0| 2821|
|6-24 months |JiVitA-3     |BANGLADESH   |0       |           0|   2809| 2821|
|6-24 months |JiVitA-3     |BANGLADESH   |0       |           1|      0| 2821|
|6-24 months |JiVitA-4     |BANGLADESH   |1       |           0|    771| 1512|
|6-24 months |JiVitA-4     |BANGLADESH   |1       |           1|    123| 1512|
|6-24 months |JiVitA-4     |BANGLADESH   |0       |           0|    515| 1512|
|6-24 months |JiVitA-4     |BANGLADESH   |0       |           1|    103| 1512|
|6-24 months |MAL-ED       |INDIA        |1       |           0|     21|   95|
|6-24 months |MAL-ED       |INDIA        |1       |           1|     30|   95|
|6-24 months |MAL-ED       |INDIA        |0       |           0|     23|   95|
|6-24 months |MAL-ED       |INDIA        |0       |           1|     21|   95|
|6-24 months |MAL-ED       |BANGLADESH   |1       |           0|     19|   61|
|6-24 months |MAL-ED       |BANGLADESH   |1       |           1|     22|   61|
|6-24 months |MAL-ED       |BANGLADESH   |0       |           0|     12|   61|
|6-24 months |MAL-ED       |BANGLADESH   |0       |           1|      8|   61|
|6-24 months |MAL-ED       |PERU         |1       |           0|      6|   24|
|6-24 months |MAL-ED       |PERU         |1       |           1|     13|   24|
|6-24 months |MAL-ED       |PERU         |0       |           0|      0|   24|
|6-24 months |MAL-ED       |PERU         |0       |           1|      5|   24|
|6-24 months |MAL-ED       |NEPAL        |1       |           0|      4|   50|
|6-24 months |MAL-ED       |NEPAL        |1       |           1|     15|   50|
|6-24 months |MAL-ED       |NEPAL        |0       |           0|      7|   50|
|6-24 months |MAL-ED       |NEPAL        |0       |           1|     24|   50|
|6-24 months |MAL-ED       |BRAZIL       |1       |           0|      2|    9|
|6-24 months |MAL-ED       |BRAZIL       |1       |           1|      2|    9|
|6-24 months |MAL-ED       |BRAZIL       |0       |           0|      3|    9|
|6-24 months |MAL-ED       |BRAZIL       |0       |           1|      2|    9|
|6-24 months |MAL-ED       |TANZANIA     |1       |           0|      7|   37|
|6-24 months |MAL-ED       |TANZANIA     |1       |           1|     27|   37|
|6-24 months |MAL-ED       |TANZANIA     |0       |           0|      1|   37|
|6-24 months |MAL-ED       |TANZANIA     |0       |           1|      2|   37|
|6-24 months |MAL-ED       |SOUTH AFRICA |1       |           0|      6|   51|
|6-24 months |MAL-ED       |SOUTH AFRICA |1       |           1|     21|   51|
|6-24 months |MAL-ED       |SOUTH AFRICA |0       |           0|      3|   51|
|6-24 months |MAL-ED       |SOUTH AFRICA |0       |           1|     21|   51|
|6-24 months |NIH-Crypto   |BANGLADESH   |1       |           0|     84|  113|
|6-24 months |NIH-Crypto   |BANGLADESH   |1       |           1|     14|  113|
|6-24 months |NIH-Crypto   |BANGLADESH   |0       |           0|     12|  113|
|6-24 months |NIH-Crypto   |BANGLADESH   |0       |           1|      3|  113|
|6-24 months |SAS-CompFeed |INDIA        |1       |           0|     15|  461|
|6-24 months |SAS-CompFeed |INDIA        |1       |           1|      9|  461|
|6-24 months |SAS-CompFeed |INDIA        |0       |           0|    316|  461|
|6-24 months |SAS-CompFeed |INDIA        |0       |           1|    121|  461|
|6-24 months |ZVITAMBO     |ZIMBABWE     |1       |           0|    484|  973|
|6-24 months |ZVITAMBO     |ZIMBABWE     |1       |           1|     39|  973|
|6-24 months |ZVITAMBO     |ZIMBABWE     |0       |           0|    417|  973|
|6-24 months |ZVITAMBO     |ZIMBABWE     |0       |           1|     33|  973|


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


