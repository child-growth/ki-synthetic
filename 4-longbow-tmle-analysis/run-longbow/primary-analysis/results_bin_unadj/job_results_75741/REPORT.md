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

**Outcome Variable:** pers_wast

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

|agecat      |studyid      |country      |earlybf | pers_wast| n_cell|     n|
|:-----------|:------------|:------------|:-------|---------:|------:|-----:|
|0-24 months |EE           |PAKISTAN     |1       |         0|     77|   368|
|0-24 months |EE           |PAKISTAN     |1       |         1|      4|   368|
|0-24 months |EE           |PAKISTAN     |0       |         0|    258|   368|
|0-24 months |EE           |PAKISTAN     |0       |         1|     29|   368|
|0-24 months |GMS-Nepal    |NEPAL        |1       |         0|    129|   550|
|0-24 months |GMS-Nepal    |NEPAL        |1       |         1|     25|   550|
|0-24 months |GMS-Nepal    |NEPAL        |0       |         0|    346|   550|
|0-24 months |GMS-Nepal    |NEPAL        |0       |         1|     50|   550|
|0-24 months |JiVitA-3     |BANGLADESH   |1       |         0|     54| 15733|
|0-24 months |JiVitA-3     |BANGLADESH   |1       |         1|      7| 15733|
|0-24 months |JiVitA-3     |BANGLADESH   |0       |         0|  14783| 15733|
|0-24 months |JiVitA-3     |BANGLADESH   |0       |         1|    889| 15733|
|0-24 months |JiVitA-4     |BANGLADESH   |1       |         0|   3020|  5274|
|0-24 months |JiVitA-4     |BANGLADESH   |1       |         1|    263|  5274|
|0-24 months |JiVitA-4     |BANGLADESH   |0       |         0|   1828|  5274|
|0-24 months |JiVitA-4     |BANGLADESH   |0       |         1|    163|  5274|
|0-24 months |MAL-ED       |INDIA        |1       |         0|    136|   241|
|0-24 months |MAL-ED       |INDIA        |1       |         1|     11|   241|
|0-24 months |MAL-ED       |INDIA        |0       |         0|     84|   241|
|0-24 months |MAL-ED       |INDIA        |0       |         1|     10|   241|
|0-24 months |MAL-ED       |BANGLADESH   |1       |         0|    143|   248|
|0-24 months |MAL-ED       |BANGLADESH   |1       |         1|      6|   248|
|0-24 months |MAL-ED       |BANGLADESH   |0       |         0|     92|   248|
|0-24 months |MAL-ED       |BANGLADESH   |0       |         1|      7|   248|
|0-24 months |MAL-ED       |PERU         |1       |         0|    215|   284|
|0-24 months |MAL-ED       |PERU         |1       |         1|      1|   284|
|0-24 months |MAL-ED       |PERU         |0       |         0|     68|   284|
|0-24 months |MAL-ED       |PERU         |0       |         1|      0|   284|
|0-24 months |MAL-ED       |NEPAL        |1       |         0|     89|   238|
|0-24 months |MAL-ED       |NEPAL        |1       |         1|      1|   238|
|0-24 months |MAL-ED       |NEPAL        |0       |         0|    145|   238|
|0-24 months |MAL-ED       |NEPAL        |0       |         1|      3|   238|
|0-24 months |MAL-ED       |BRAZIL       |1       |         0|    101|   218|
|0-24 months |MAL-ED       |BRAZIL       |1       |         1|      1|   218|
|0-24 months |MAL-ED       |BRAZIL       |0       |         0|    115|   218|
|0-24 months |MAL-ED       |BRAZIL       |0       |         1|      1|   218|
|0-24 months |MAL-ED       |TANZANIA     |1       |         0|    204|   253|
|0-24 months |MAL-ED       |TANZANIA     |1       |         1|      0|   253|
|0-24 months |MAL-ED       |TANZANIA     |0       |         0|     49|   253|
|0-24 months |MAL-ED       |TANZANIA     |0       |         1|      0|   253|
|0-24 months |MAL-ED       |SOUTH AFRICA |1       |         0|    150|   270|
|0-24 months |MAL-ED       |SOUTH AFRICA |1       |         1|      1|   270|
|0-24 months |MAL-ED       |SOUTH AFRICA |0       |         0|    118|   270|
|0-24 months |MAL-ED       |SOUTH AFRICA |0       |         1|      1|   270|
|0-24 months |NIH-Crypto   |BANGLADESH   |1       |         0|    624|   730|
|0-24 months |NIH-Crypto   |BANGLADESH   |1       |         1|     21|   730|
|0-24 months |NIH-Crypto   |BANGLADESH   |0       |         0|     80|   730|
|0-24 months |NIH-Crypto   |BANGLADESH   |0       |         1|      5|   730|
|0-24 months |SAS-CompFeed |INDIA        |1       |         0|     71|  1334|
|0-24 months |SAS-CompFeed |INDIA        |1       |         1|      7|  1334|
|0-24 months |SAS-CompFeed |INDIA        |0       |         0|   1153|  1334|
|0-24 months |SAS-CompFeed |INDIA        |0       |         1|    103|  1334|
|0-24 months |ZVITAMBO     |ZIMBABWE     |1       |         0|   4498|  8487|
|0-24 months |ZVITAMBO     |ZIMBABWE     |1       |         1|     85|  8487|
|0-24 months |ZVITAMBO     |ZIMBABWE     |0       |         0|   3838|  8487|
|0-24 months |ZVITAMBO     |ZIMBABWE     |0       |         1|     66|  8487|
|0-6 months  |EE           |PAKISTAN     |1       |         0|     76|   362|
|0-6 months  |EE           |PAKISTAN     |1       |         1|      2|   362|
|0-6 months  |EE           |PAKISTAN     |0       |         0|    261|   362|
|0-6 months  |EE           |PAKISTAN     |0       |         1|     23|   362|
|0-6 months  |GMS-Nepal    |NEPAL        |1       |         0|    128|   523|
|0-6 months  |GMS-Nepal    |NEPAL        |1       |         1|     16|   523|
|0-6 months  |GMS-Nepal    |NEPAL        |0       |         0|    337|   523|
|0-6 months  |GMS-Nepal    |NEPAL        |0       |         1|     42|   523|
|0-6 months  |JiVitA-3     |BANGLADESH   |1       |         0|      0|    50|
|0-6 months  |JiVitA-3     |BANGLADESH   |1       |         1|      0|    50|
|0-6 months  |JiVitA-3     |BANGLADESH   |0       |         0|     48|    50|
|0-6 months  |JiVitA-3     |BANGLADESH   |0       |         1|      2|    50|
|0-6 months  |MAL-ED       |INDIA        |1       |         0|    135|   240|
|0-6 months  |MAL-ED       |INDIA        |1       |         1|     11|   240|
|0-6 months  |MAL-ED       |INDIA        |0       |         0|     86|   240|
|0-6 months  |MAL-ED       |INDIA        |0       |         1|      8|   240|
|0-6 months  |MAL-ED       |BANGLADESH   |1       |         0|    146|   248|
|0-6 months  |MAL-ED       |BANGLADESH   |1       |         1|      3|   248|
|0-6 months  |MAL-ED       |BANGLADESH   |0       |         0|     95|   248|
|0-6 months  |MAL-ED       |BANGLADESH   |0       |         1|      4|   248|
|0-6 months  |MAL-ED       |PERU         |1       |         0|    216|   284|
|0-6 months  |MAL-ED       |PERU         |1       |         1|      0|   284|
|0-6 months  |MAL-ED       |PERU         |0       |         0|     68|   284|
|0-6 months  |MAL-ED       |PERU         |0       |         1|      0|   284|
|0-6 months  |MAL-ED       |NEPAL        |1       |         0|     89|   238|
|0-6 months  |MAL-ED       |NEPAL        |1       |         1|      1|   238|
|0-6 months  |MAL-ED       |NEPAL        |0       |         0|    142|   238|
|0-6 months  |MAL-ED       |NEPAL        |0       |         1|      6|   238|
|0-6 months  |MAL-ED       |BRAZIL       |1       |         0|    102|   218|
|0-6 months  |MAL-ED       |BRAZIL       |1       |         1|      0|   218|
|0-6 months  |MAL-ED       |BRAZIL       |0       |         0|    115|   218|
|0-6 months  |MAL-ED       |BRAZIL       |0       |         1|      1|   218|
|0-6 months  |MAL-ED       |TANZANIA     |1       |         0|    204|   253|
|0-6 months  |MAL-ED       |TANZANIA     |1       |         1|      0|   253|
|0-6 months  |MAL-ED       |TANZANIA     |0       |         0|     49|   253|
|0-6 months  |MAL-ED       |TANZANIA     |0       |         1|      0|   253|
|0-6 months  |MAL-ED       |SOUTH AFRICA |1       |         0|    149|   269|
|0-6 months  |MAL-ED       |SOUTH AFRICA |1       |         1|      1|   269|
|0-6 months  |MAL-ED       |SOUTH AFRICA |0       |         0|    118|   269|
|0-6 months  |MAL-ED       |SOUTH AFRICA |0       |         1|      1|   269|
|0-6 months  |NIH-Crypto   |BANGLADESH   |1       |         0|    217|   250|
|0-6 months  |NIH-Crypto   |BANGLADESH   |1       |         1|      5|   250|
|0-6 months  |NIH-Crypto   |BANGLADESH   |0       |         0|     28|   250|
|0-6 months  |NIH-Crypto   |BANGLADESH   |0       |         1|      0|   250|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |1       |         0|    301|   562|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |1       |         1|      6|   562|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |0       |         0|    248|   562|
|0-6 months  |ZVITAMBO     |ZIMBABWE     |0       |         1|      7|   562|
|6-24 months |EE           |PAKISTAN     |1       |         0|     77|   368|
|6-24 months |EE           |PAKISTAN     |1       |         1|      4|   368|
|6-24 months |EE           |PAKISTAN     |0       |         0|    258|   368|
|6-24 months |EE           |PAKISTAN     |0       |         1|     29|   368|
|6-24 months |GMS-Nepal    |NEPAL        |1       |         0|    129|   550|
|6-24 months |GMS-Nepal    |NEPAL        |1       |         1|     25|   550|
|6-24 months |GMS-Nepal    |NEPAL        |0       |         0|    346|   550|
|6-24 months |GMS-Nepal    |NEPAL        |0       |         1|     50|   550|
|6-24 months |JiVitA-3     |BANGLADESH   |1       |         0|     54| 15733|
|6-24 months |JiVitA-3     |BANGLADESH   |1       |         1|      7| 15733|
|6-24 months |JiVitA-3     |BANGLADESH   |0       |         0|  14783| 15733|
|6-24 months |JiVitA-3     |BANGLADESH   |0       |         1|    889| 15733|
|6-24 months |JiVitA-4     |BANGLADESH   |1       |         0|   3020|  5274|
|6-24 months |JiVitA-4     |BANGLADESH   |1       |         1|    263|  5274|
|6-24 months |JiVitA-4     |BANGLADESH   |0       |         0|   1828|  5274|
|6-24 months |JiVitA-4     |BANGLADESH   |0       |         1|    163|  5274|
|6-24 months |MAL-ED       |INDIA        |1       |         0|    136|   241|
|6-24 months |MAL-ED       |INDIA        |1       |         1|     11|   241|
|6-24 months |MAL-ED       |INDIA        |0       |         0|     84|   241|
|6-24 months |MAL-ED       |INDIA        |0       |         1|     10|   241|
|6-24 months |MAL-ED       |BANGLADESH   |1       |         0|    143|   248|
|6-24 months |MAL-ED       |BANGLADESH   |1       |         1|      6|   248|
|6-24 months |MAL-ED       |BANGLADESH   |0       |         0|     92|   248|
|6-24 months |MAL-ED       |BANGLADESH   |0       |         1|      7|   248|
|6-24 months |MAL-ED       |PERU         |1       |         0|    215|   284|
|6-24 months |MAL-ED       |PERU         |1       |         1|      1|   284|
|6-24 months |MAL-ED       |PERU         |0       |         0|     68|   284|
|6-24 months |MAL-ED       |PERU         |0       |         1|      0|   284|
|6-24 months |MAL-ED       |NEPAL        |1       |         0|     89|   238|
|6-24 months |MAL-ED       |NEPAL        |1       |         1|      1|   238|
|6-24 months |MAL-ED       |NEPAL        |0       |         0|    145|   238|
|6-24 months |MAL-ED       |NEPAL        |0       |         1|      3|   238|
|6-24 months |MAL-ED       |BRAZIL       |1       |         0|    101|   218|
|6-24 months |MAL-ED       |BRAZIL       |1       |         1|      1|   218|
|6-24 months |MAL-ED       |BRAZIL       |0       |         0|    115|   218|
|6-24 months |MAL-ED       |BRAZIL       |0       |         1|      1|   218|
|6-24 months |MAL-ED       |TANZANIA     |1       |         0|    204|   253|
|6-24 months |MAL-ED       |TANZANIA     |1       |         1|      0|   253|
|6-24 months |MAL-ED       |TANZANIA     |0       |         0|     49|   253|
|6-24 months |MAL-ED       |TANZANIA     |0       |         1|      0|   253|
|6-24 months |MAL-ED       |SOUTH AFRICA |1       |         0|    150|   270|
|6-24 months |MAL-ED       |SOUTH AFRICA |1       |         1|      1|   270|
|6-24 months |MAL-ED       |SOUTH AFRICA |0       |         0|    118|   270|
|6-24 months |MAL-ED       |SOUTH AFRICA |0       |         1|      1|   270|
|6-24 months |NIH-Crypto   |BANGLADESH   |1       |         0|    624|   730|
|6-24 months |NIH-Crypto   |BANGLADESH   |1       |         1|     21|   730|
|6-24 months |NIH-Crypto   |BANGLADESH   |0       |         0|     80|   730|
|6-24 months |NIH-Crypto   |BANGLADESH   |0       |         1|      5|   730|
|6-24 months |SAS-CompFeed |INDIA        |1       |         0|     71|  1334|
|6-24 months |SAS-CompFeed |INDIA        |1       |         1|      7|  1334|
|6-24 months |SAS-CompFeed |INDIA        |0       |         0|   1153|  1334|
|6-24 months |SAS-CompFeed |INDIA        |0       |         1|    103|  1334|
|6-24 months |ZVITAMBO     |ZIMBABWE     |1       |         0|   4498|  8487|
|6-24 months |ZVITAMBO     |ZIMBABWE     |1       |         1|     85|  8487|
|6-24 months |ZVITAMBO     |ZIMBABWE     |0       |         0|   3838|  8487|
|6-24 months |ZVITAMBO     |ZIMBABWE     |0       |         1|     66|  8487|


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
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

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


