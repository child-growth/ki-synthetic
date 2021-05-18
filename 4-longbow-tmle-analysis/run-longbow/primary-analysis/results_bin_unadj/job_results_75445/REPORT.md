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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | ever_sstunted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|-------------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |             0|     69|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |             1|     22|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |             0|    348|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |             1|    114|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |             0|     88|   667|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |             1|     26|   667|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |             0|   2456| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |             1|    553| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |             0|   7142| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |             1|   1517| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |             0|   4700| 17457|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |             1|   1089| 17457|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |             0|    532|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |             1|    135|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |             0|   2311|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |             1|    596|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |             0|   1474|  5415|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |             1|    367|  5415|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |             0|     12|   225|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |             1|      6|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |             0|    156|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |             1|     47|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |             0|      3|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |             1|      1|   225|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |             0|     27|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |             1|      2|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |             0|    119|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |             1|     30|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |             0|      3|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |             1|      2|   183|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |             0|     88|   157|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |             1|     20|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |             0|     25|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |             1|      6|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |             0|     17|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |             1|      1|   157|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |             0|     18|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |             1|      0|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |             0|     85|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |             1|     11|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |             0|     12|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |             1|      0|   126|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |             0|     96|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |             1|      7|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |             0|      2|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |             1|      0|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |             0|      3|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |             1|      3|   111|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |             0|     75|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |             1|     18|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |             0|     92|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |             1|     31|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |             0|     25|   252|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |             1|     11|   252|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |             0|     38|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |             1|     14|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |             0|     50|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |             1|     26|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |             0|    345|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |             1|    156|   629|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |             0|     60|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |             1|     12|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |             0|    418|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |             1|     54|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |             0|    181|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |             1|     33|   758|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |             0|     83|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |             1|      8|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |             0|    422|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |             1|     40|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |             0|    104|   667|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |             1|     10|   667|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |             0|   2590| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |             1|    409| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |             0|   7544| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |             1|   1091| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |             0|   4982| 17403|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |             1|    787| 17403|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |             0|    558|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |             1|     69|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |             0|   2460|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |             1|    275|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |             0|   1572|  5104|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |             1|    170|  5104|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |             0|     16|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |             1|      2|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |             0|    187|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |             1|     16|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |             0|      4|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |             1|      0|   225|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |             0|     29|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |             1|      0|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |             0|    137|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |             1|     12|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |             0|      4|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |             1|      1|   183|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |             0|     98|   157|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |             1|     10|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |             0|     27|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |             1|      4|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |             0|     17|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |             1|      1|   157|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |             0|     18|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |             1|      0|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |             0|     92|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |             1|      4|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |             0|     12|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |             1|      0|   126|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |             0|     98|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |             1|      5|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |             0|      2|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |             1|      0|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |             0|      3|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |             1|      3|   111|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |             0|     85|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |             1|      8|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |             0|    114|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |             1|      9|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |             0|     29|   252|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |             1|      7|   252|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |             0|     49|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |             1|      3|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |             0|     68|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |             1|      8|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |             0|    453|   629|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |             1|     48|   629|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |             0|     67|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |             1|      5|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |             0|    444|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |             1|     28|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |             0|    200|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |             1|     14|   758|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


