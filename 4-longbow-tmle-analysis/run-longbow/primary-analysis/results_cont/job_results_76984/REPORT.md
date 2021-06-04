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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** anywast06

**Adjustment Set:**

* sex
* month
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |anywast06 | n_cell|    n|
|:---------|:--------------|:------------|:---------|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |     37|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |     55|   92|
|Birth     |CMIN           |BANGLADESH   |0         |     15|   20|
|Birth     |CMIN           |BANGLADESH   |1         |      5|   20|
|Birth     |CONTENT        |PERU         |0         |      2|    2|
|Birth     |CONTENT        |PERU         |1         |      0|    2|
|Birth     |EE             |PAKISTAN     |0         |    156|  240|
|Birth     |EE             |PAKISTAN     |1         |     84|  240|
|Birth     |GMS-Nepal      |NEPAL        |0         |    422|  684|
|Birth     |GMS-Nepal      |NEPAL        |1         |    262|  684|
|Birth     |Keneba         |GAMBIA       |0         |    994| 1542|
|Birth     |Keneba         |GAMBIA       |1         |    548| 1542|
|Birth     |MAL-ED         |INDIA        |0         |     33|   47|
|Birth     |MAL-ED         |INDIA        |1         |     14|   47|
|Birth     |MAL-ED         |BANGLADESH   |0         |    177|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |     52|  229|
|Birth     |MAL-ED         |PERU         |0         |    223|  233|
|Birth     |MAL-ED         |PERU         |1         |     10|  233|
|Birth     |MAL-ED         |NEPAL        |0         |     23|   27|
|Birth     |MAL-ED         |NEPAL        |1         |      4|   27|
|Birth     |MAL-ED         |BRAZIL       |0         |     62|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |      3|   65|
|Birth     |MAL-ED         |TANZANIA     |0         |    119|  124|
|Birth     |MAL-ED         |TANZANIA     |1         |      5|  124|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |    101|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |     21|  122|
|Birth     |PROVIDE        |BANGLADESH   |0         |    396|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |    143|  539|
|Birth     |ResPak         |PAKISTAN     |0         |     28|   42|
|Birth     |ResPak         |PAKISTAN     |1         |     14|   42|
|Birth     |Vellore Crypto |INDIA        |0         |    164|  388|
|Birth     |Vellore Crypto |INDIA        |1         |    224|  388|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |    177|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |    188|  365|
|6 months  |CMIN           |BANGLADESH   |0         |    201|  243|
|6 months  |CMIN           |BANGLADESH   |1         |     42|  243|
|6 months  |CONTENT        |PERU         |0         |    211|  215|
|6 months  |CONTENT        |PERU         |1         |      4|  215|
|6 months  |EE             |PAKISTAN     |0         |    249|  373|
|6 months  |EE             |PAKISTAN     |1         |    124|  373|
|6 months  |GMS-Nepal      |NEPAL        |0         |    336|  564|
|6 months  |GMS-Nepal      |NEPAL        |1         |    228|  564|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |    270|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |     10|  280|
|6 months  |Keneba         |GAMBIA       |0         |   1441| 2056|
|6 months  |Keneba         |GAMBIA       |1         |    615| 2056|
|6 months  |MAL-ED         |INDIA        |0         |    159|  236|
|6 months  |MAL-ED         |INDIA        |1         |     77|  236|
|6 months  |MAL-ED         |BANGLADESH   |0         |    183|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |     58|  241|
|6 months  |MAL-ED         |PERU         |0         |    263|  273|
|6 months  |MAL-ED         |PERU         |1         |     10|  273|
|6 months  |MAL-ED         |NEPAL        |0         |    188|  236|
|6 months  |MAL-ED         |NEPAL        |1         |     48|  236|
|6 months  |MAL-ED         |BRAZIL       |0         |    194|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |     15|  209|
|6 months  |MAL-ED         |TANZANIA     |0         |    234|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |     13|  247|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |    223|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |     31|  254|
|6 months  |PROVIDE        |BANGLADESH   |0         |    450|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |    154|  604|
|6 months  |ResPak         |PAKISTAN     |0         |    143|  239|
|6 months  |ResPak         |PAKISTAN     |1         |     96|  239|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |   1728| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |    301| 2029|
|6 months  |Vellore Crypto |INDIA        |0         |    180|  407|
|6 months  |Vellore Crypto |INDIA        |1         |    227|  407|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |    176|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |    190|  366|
|24 months |CMIN           |BANGLADESH   |0         |    200|  242|
|24 months |CMIN           |BANGLADESH   |1         |     42|  242|
|24 months |CONTENT        |PERU         |0         |    162|  164|
|24 months |CONTENT        |PERU         |1         |      2|  164|
|24 months |EE             |PAKISTAN     |0         |    109|  167|
|24 months |EE             |PAKISTAN     |1         |     58|  167|
|24 months |GMS-Nepal      |NEPAL        |0         |    300|  488|
|24 months |GMS-Nepal      |NEPAL        |1         |    188|  488|
|24 months |Keneba         |GAMBIA       |0         |   1091| 1563|
|24 months |Keneba         |GAMBIA       |1         |    472| 1563|
|24 months |MAL-ED         |INDIA        |0         |    151|  227|
|24 months |MAL-ED         |INDIA        |1         |     76|  227|
|24 months |MAL-ED         |BANGLADESH   |0         |    162|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |     50|  212|
|24 months |MAL-ED         |PERU         |0         |    193|  201|
|24 months |MAL-ED         |PERU         |1         |      8|  201|
|24 months |MAL-ED         |NEPAL        |0         |    182|  228|
|24 months |MAL-ED         |NEPAL        |1         |     46|  228|
|24 months |MAL-ED         |BRAZIL       |0         |    156|  169|
|24 months |MAL-ED         |BRAZIL       |1         |     13|  169|
|24 months |MAL-ED         |TANZANIA     |0         |    202|  214|
|24 months |MAL-ED         |TANZANIA     |1         |     12|  214|
|24 months |MAL-ED         |SOUTH AFRICA |0         |    212|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |     26|  238|
|24 months |PROVIDE        |BANGLADESH   |0         |    432|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |    146|  578|
|24 months |TanzaniaChild2 |TANZANIA     |0         |      5|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |      1|    6|
|24 months |Vellore Crypto |INDIA        |0         |    181|  409|
|24 months |Vellore Crypto |INDIA        |1         |    228|  409|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CONTENT, country: PERU
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


