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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid    |country      |hfoodsec             | n_cell|     n|
|:---------|:----------|:------------|:--------------------|------:|-----:|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     78|   620|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    100|   620|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    442|   620|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   2019| 11763|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   3947| 11763|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   5797| 11763|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    308|  2383|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    870|  2383|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |   1205|  2383|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |      2|    35|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|    35|
|Birth     |MAL-ED     |INDIA        |Food Secure          |     32|    35|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     21|   162|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      3|   162|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    138|   162|
|Birth     |MAL-ED     |PERU         |Food Insecure        |     44|    89|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     22|    89|
|Birth     |MAL-ED     |PERU         |Food Secure          |     23|    89|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |      3|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |     10|    14|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |     22|    26|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      4|    26|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |      0|    26|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     33|    87|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      9|    87|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |     45|    87|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     36|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    453|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     86|   575|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     79|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    199|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    429|   707|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     74|   546|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     76|   546|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    396|   546|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |   2778| 16764|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   5590| 16764|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   8396| 16764|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    622|  4795|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1728|  4795|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |   2445|  4795|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |     17|   212|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      5|   212|
|6 months  |MAL-ED     |INDIA        |Food Secure          |    190|   212|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |     29|   193|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   193|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |    160|   193|
|6 months  |MAL-ED     |PERU         |Food Insecure        |     56|   111|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |     28|   111|
|6 months  |MAL-ED     |PERU         |Food Secure          |     27|   111|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |     19|   128|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |     15|   128|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |     94|   128|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |    115|   129|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |     11|   129|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |      3|   129|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |     81|   228|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     18|   228|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |    129|   228|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |     40|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    417|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |     80|   537|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |     84|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    204|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |    427|   715|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     69|   477|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     67|   477|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |    341|   477|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |   1580|  8190|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2753|  8190|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |   3857|  8190|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |    608|  4696|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1699|  4696|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |   2389|  4696|
|24 months |MAL-ED     |INDIA        |Food Insecure        |     17|   212|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      5|   212|
|24 months |MAL-ED     |INDIA        |Food Secure          |    190|   212|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |     29|   194|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   194|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |    161|   194|
|24 months |MAL-ED     |PERU         |Food Insecure        |     54|   107|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |     27|   107|
|24 months |MAL-ED     |PERU         |Food Secure          |     26|   107|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |     19|   128|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |     15|   128|
|24 months |MAL-ED     |NEPAL        |Food Secure          |     94|   128|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |    115|   129|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |     11|   129|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |      3|   129|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |     81|   228|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     18|   228|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |    129|   228|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |     33|   428|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    327|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |     68|   428|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     56|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    124|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |    334|   514|


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
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


