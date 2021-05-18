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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid      |country      |earlybf | wasted| n_cell|     n|
|:---------|:------------|:------------|:-------|------:|------:|-----:|
|Birth     |EE           |PAKISTAN     |1       |      0|     32|   173|
|Birth     |EE           |PAKISTAN     |1       |      1|      7|   173|
|Birth     |EE           |PAKISTAN     |0       |      0|    119|   173|
|Birth     |EE           |PAKISTAN     |0       |      1|     15|   173|
|Birth     |GMS-Nepal    |NEPAL        |1       |      0|    134|   587|
|Birth     |GMS-Nepal    |NEPAL        |1       |      1|     26|   587|
|Birth     |GMS-Nepal    |NEPAL        |0       |      0|    332|   587|
|Birth     |GMS-Nepal    |NEPAL        |0       |      1|     95|   587|
|Birth     |JiVitA-3     |BANGLADESH   |1       |      0|    121| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |1       |      1|     16| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |0       |      0|  15841| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |0       |      1|   1946| 17924|
|Birth     |JiVitA-4     |BANGLADESH   |1       |      0|   1338|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |1       |      1|    142|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |0       |      0|    815|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |0       |      1|     97|  2392|
|Birth     |MAL-ED       |INDIA        |1       |      0|     25|    45|
|Birth     |MAL-ED       |INDIA        |1       |      1|      4|    45|
|Birth     |MAL-ED       |INDIA        |0       |      0|     15|    45|
|Birth     |MAL-ED       |INDIA        |0       |      1|      1|    45|
|Birth     |MAL-ED       |BANGLADESH   |1       |      0|    112|   215|
|Birth     |MAL-ED       |BANGLADESH   |1       |      1|     15|   215|
|Birth     |MAL-ED       |BANGLADESH   |0       |      0|     67|   215|
|Birth     |MAL-ED       |BANGLADESH   |0       |      1|     21|   215|
|Birth     |MAL-ED       |PERU         |1       |      0|    168|   228|
|Birth     |MAL-ED       |PERU         |1       |      1|      4|   228|
|Birth     |MAL-ED       |PERU         |0       |      0|     55|   228|
|Birth     |MAL-ED       |PERU         |0       |      1|      1|   228|
|Birth     |MAL-ED       |NEPAL        |1       |      0|     10|    26|
|Birth     |MAL-ED       |NEPAL        |1       |      1|      0|    26|
|Birth     |MAL-ED       |NEPAL        |0       |      0|     14|    26|
|Birth     |MAL-ED       |NEPAL        |0       |      1|      2|    26|
|Birth     |MAL-ED       |BRAZIL       |1       |      0|     29|    62|
|Birth     |MAL-ED       |BRAZIL       |1       |      1|      1|    62|
|Birth     |MAL-ED       |BRAZIL       |0       |      0|     31|    62|
|Birth     |MAL-ED       |BRAZIL       |0       |      1|      1|    62|
|Birth     |MAL-ED       |TANZANIA     |1       |      0|     94|   115|
|Birth     |MAL-ED       |TANZANIA     |1       |      1|      1|   115|
|Birth     |MAL-ED       |TANZANIA     |0       |      0|     20|   115|
|Birth     |MAL-ED       |TANZANIA     |0       |      1|      0|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |      0|     58|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |      1|      7|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |      0|     46|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |      1|      4|   115|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |      0|    474|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |      1|    147|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |      0|     61|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |      1|     25|   707|
|Birth     |SAS-CompFeed |INDIA        |1       |      0|     56|  1062|
|Birth     |SAS-CompFeed |INDIA        |1       |      1|      8|  1062|
|Birth     |SAS-CompFeed |INDIA        |0       |      0|    892|  1062|
|Birth     |SAS-CompFeed |INDIA        |0       |      1|    106|  1062|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |      0|   5137| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |      1|   1000| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |      0|   4516| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |      1|    861| 11514|
|6 months  |EE           |PAKISTAN     |1       |      0|     73|   367|
|6 months  |EE           |PAKISTAN     |1       |      1|      8|   367|
|6 months  |EE           |PAKISTAN     |0       |      0|    247|   367|
|6 months  |EE           |PAKISTAN     |0       |      1|     39|   367|
|6 months  |GMS-Nepal    |NEPAL        |1       |      0|    128|   520|
|6 months  |GMS-Nepal    |NEPAL        |1       |      1|     17|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |      0|    343|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |      1|     32|   520|
|6 months  |JiVitA-3     |BANGLADESH   |1       |      0|     65| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |1       |      1|     12| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |0       |      0|  15232| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |0       |      1|   1403| 16712|
|6 months  |JiVitA-4     |BANGLADESH   |1       |      0|   2843|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |1       |      1|    154|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |0       |      0|   1708|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |0       |      1|    121|  4826|
|6 months  |MAL-ED       |INDIA        |1       |      0|    134|   236|
|6 months  |MAL-ED       |INDIA        |1       |      1|      8|   236|
|6 months  |MAL-ED       |INDIA        |0       |      0|     83|   236|
|6 months  |MAL-ED       |INDIA        |0       |      1|     11|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |      0|    140|   241|
|6 months  |MAL-ED       |BANGLADESH   |1       |      1|      4|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |      0|     93|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |      1|      4|   241|
|6 months  |MAL-ED       |PERU         |1       |      0|    206|   273|
|6 months  |MAL-ED       |PERU         |1       |      1|      0|   273|
|6 months  |MAL-ED       |PERU         |0       |      0|     67|   273|
|6 months  |MAL-ED       |PERU         |0       |      1|      0|   273|
|6 months  |MAL-ED       |NEPAL        |1       |      0|     88|   236|
|6 months  |MAL-ED       |NEPAL        |1       |      1|      1|   236|
|6 months  |MAL-ED       |NEPAL        |0       |      0|    144|   236|
|6 months  |MAL-ED       |NEPAL        |0       |      1|      3|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |      0|     97|   209|
|6 months  |MAL-ED       |BRAZIL       |1       |      1|      0|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |      0|    111|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |      1|      1|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |      0|    198|   247|
|6 months  |MAL-ED       |TANZANIA     |1       |      1|      1|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |      0|     48|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |      1|      0|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |      0|    138|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |      1|      3|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |      0|    105|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |      1|      4|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |      0|    612|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |      1|     19|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |      0|     82|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |      1|      2|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |      0|     62|  1298|
|6 months  |SAS-CompFeed |INDIA        |1       |      1|     11|  1298|
|6 months  |SAS-CompFeed |INDIA        |0       |      0|   1077|  1298|
|6 months  |SAS-CompFeed |INDIA        |0       |      1|    148|  1298|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |      0|   3980|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |      1|    129|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |      0|   3361|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |      1|    108|  7578|
|24 months |EE           |PAKISTAN     |1       |      0|     33|   164|
|24 months |EE           |PAKISTAN     |1       |      1|      7|   164|
|24 months |EE           |PAKISTAN     |0       |      0|    103|   164|
|24 months |EE           |PAKISTAN     |0       |      1|     21|   164|
|24 months |GMS-Nepal    |NEPAL        |1       |      0|    111|   450|
|24 months |GMS-Nepal    |NEPAL        |1       |      1|     16|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |      0|    256|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |      1|     67|   450|
|24 months |JiVitA-3     |BANGLADESH   |1       |      0|      1|  8569|
|24 months |JiVitA-3     |BANGLADESH   |1       |      1|      2|  8569|
|24 months |JiVitA-3     |BANGLADESH   |0       |      0|   6698|  8569|
|24 months |JiVitA-3     |BANGLADESH   |0       |      1|   1868|  8569|
|24 months |JiVitA-4     |BANGLADESH   |1       |      0|   2366|  4729|
|24 months |JiVitA-4     |BANGLADESH   |1       |      1|    582|  4729|
|24 months |JiVitA-4     |BANGLADESH   |0       |      0|   1444|  4729|
|24 months |JiVitA-4     |BANGLADESH   |0       |      1|    337|  4729|
|24 months |MAL-ED       |INDIA        |1       |      0|    124|   227|
|24 months |MAL-ED       |INDIA        |1       |      1|     12|   227|
|24 months |MAL-ED       |INDIA        |0       |      0|     76|   227|
|24 months |MAL-ED       |INDIA        |0       |      1|     15|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |      0|    117|   212|
|24 months |MAL-ED       |BANGLADESH   |1       |      1|     12|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |      0|     74|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |      1|      9|   212|
|24 months |MAL-ED       |PERU         |1       |      0|    153|   201|
|24 months |MAL-ED       |PERU         |1       |      1|      4|   201|
|24 months |MAL-ED       |PERU         |0       |      0|     44|   201|
|24 months |MAL-ED       |PERU         |0       |      1|      0|   201|
|24 months |MAL-ED       |NEPAL        |1       |      0|     81|   228|
|24 months |MAL-ED       |NEPAL        |1       |      1|      4|   228|
|24 months |MAL-ED       |NEPAL        |0       |      0|    142|   228|
|24 months |MAL-ED       |NEPAL        |0       |      1|      1|   228|
|24 months |MAL-ED       |BRAZIL       |1       |      0|     77|   169|
|24 months |MAL-ED       |BRAZIL       |1       |      1|      1|   169|
|24 months |MAL-ED       |BRAZIL       |0       |      0|     89|   169|
|24 months |MAL-ED       |BRAZIL       |0       |      1|      2|   169|
|24 months |MAL-ED       |TANZANIA     |1       |      0|    170|   214|
|24 months |MAL-ED       |TANZANIA     |1       |      1|      4|   214|
|24 months |MAL-ED       |TANZANIA     |0       |      0|     40|   214|
|24 months |MAL-ED       |TANZANIA     |0       |      1|      0|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |      0|    134|   235|
|24 months |MAL-ED       |SOUTH AFRICA |1       |      1|      1|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |      0|    100|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |      1|      0|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |      0|    413|   514|
|24 months |NIH-Crypto   |BANGLADESH   |1       |      1|     39|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |      0|     56|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |      1|      6|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |      0|    158|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |      1|     43|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |      0|    147|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |      1|     26|   374|


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


