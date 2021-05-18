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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* sex
* month
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
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
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
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

|agecat    |studyid        |country      |predexfd6 | n_cell|     n|
|:---------|:--------------|:------------|:---------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |      7|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |      0|     7|
|Birth     |EE             |PAKISTAN     |1         |     21|    22|
|Birth     |EE             |PAKISTAN     |0         |      1|    22|
|Birth     |GMS-Nepal      |NEPAL        |1         |    375|   500|
|Birth     |GMS-Nepal      |NEPAL        |0         |    125|   500|
|Birth     |JiVitA-3       |BANGLADESH   |1         |   8252| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |0         |   2403| 10655|
|Birth     |JiVitA-4       |BANGLADESH   |1         |   1569|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |0         |    521|  2090|
|Birth     |Keneba         |GAMBIA       |1         |    407|  1188|
|Birth     |Keneba         |GAMBIA       |0         |    781|  1188|
|Birth     |MAL-ED         |INDIA        |1         |      2|    40|
|Birth     |MAL-ED         |INDIA        |0         |     38|    40|
|Birth     |MAL-ED         |BANGLADESH   |1         |     65|   187|
|Birth     |MAL-ED         |BANGLADESH   |0         |    122|   187|
|Birth     |MAL-ED         |PERU         |1         |     58|   208|
|Birth     |MAL-ED         |PERU         |0         |    150|   208|
|Birth     |MAL-ED         |NEPAL        |1         |      2|    25|
|Birth     |MAL-ED         |NEPAL        |0         |     23|    25|
|Birth     |MAL-ED         |BRAZIL       |1         |     10|    52|
|Birth     |MAL-ED         |BRAZIL       |0         |     42|    52|
|Birth     |MAL-ED         |TANZANIA     |1         |      0|   101|
|Birth     |MAL-ED         |TANZANIA     |0         |    101|   101|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |      1|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |     88|    89|
|Birth     |PROVIDE        |BANGLADESH   |1         |    136|   532|
|Birth     |PROVIDE        |BANGLADESH   |0         |    396|   532|
|Birth     |SAS-CompFeed   |INDIA        |1         |    301|   316|
|Birth     |SAS-CompFeed   |INDIA        |0         |     15|   316|
|Birth     |Vellore Crypto |INDIA        |1         |      0|     8|
|Birth     |Vellore Crypto |INDIA        |0         |      8|     8|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |     28|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |      0|    28|
|6 months  |EE             |PAKISTAN     |1         |     54|    54|
|6 months  |EE             |PAKISTAN     |0         |      0|    54|
|6 months  |GMS-Nepal      |NEPAL        |1         |    342|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |    104|   446|
|6 months  |JiVitA-3       |BANGLADESH   |1         |   7628|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |0         |   2243|  9871|
|6 months  |JiVitA-4       |BANGLADESH   |1         |   3233|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |    999|  4232|
|6 months  |Keneba         |GAMBIA       |1         |    574|  1669|
|6 months  |Keneba         |GAMBIA       |0         |   1095|  1669|
|6 months  |LCNI-5         |MALAWI       |1         |     36|   286|
|6 months  |LCNI-5         |MALAWI       |0         |    250|   286|
|6 months  |MAL-ED         |INDIA        |1         |     10|   206|
|6 months  |MAL-ED         |INDIA        |0         |    196|   206|
|6 months  |MAL-ED         |BANGLADESH   |1         |     76|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |    134|   210|
|6 months  |MAL-ED         |PERU         |1         |     78|   250|
|6 months  |MAL-ED         |PERU         |0         |    172|   250|
|6 months  |MAL-ED         |NEPAL        |1         |     16|   222|
|6 months  |MAL-ED         |NEPAL        |0         |    206|   222|
|6 months  |MAL-ED         |BRAZIL       |1         |     29|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |    158|   187|
|6 months  |MAL-ED         |TANZANIA     |1         |      0|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |    227|   227|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |      1|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |    196|   197|
|6 months  |PROVIDE        |BANGLADESH   |1         |    158|   603|
|6 months  |PROVIDE        |BANGLADESH   |0         |    445|   603|
|6 months  |SAS-CompFeed   |INDIA        |1         |    353|   374|
|6 months  |SAS-CompFeed   |INDIA        |0         |     21|   374|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |    148|   148|
|6 months  |Vellore Crypto |INDIA        |1         |      0|    10|
|6 months  |Vellore Crypto |INDIA        |0         |     10|    10|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |     28|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |      0|    28|
|24 months |EE             |PAKISTAN     |1         |     24|    24|
|24 months |EE             |PAKISTAN     |0         |      0|    24|
|24 months |GMS-Nepal      |NEPAL        |1         |    294|   383|
|24 months |GMS-Nepal      |NEPAL        |0         |     89|   383|
|24 months |JiVitA-3       |BANGLADESH   |1         |   3891|  5066|
|24 months |JiVitA-3       |BANGLADESH   |0         |   1175|  5066|
|24 months |JiVitA-4       |BANGLADESH   |1         |   3176|  4138|
|24 months |JiVitA-4       |BANGLADESH   |0         |    962|  4138|
|24 months |Keneba         |GAMBIA       |1         |    490|  1387|
|24 months |Keneba         |GAMBIA       |0         |    897|  1387|
|24 months |LCNI-5         |MALAWI       |1         |     25|   202|
|24 months |LCNI-5         |MALAWI       |0         |    177|   202|
|24 months |MAL-ED         |INDIA        |1         |      9|   198|
|24 months |MAL-ED         |INDIA        |0         |    189|   198|
|24 months |MAL-ED         |BANGLADESH   |1         |     68|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |    115|   183|
|24 months |MAL-ED         |PERU         |1         |     54|   182|
|24 months |MAL-ED         |PERU         |0         |    128|   182|
|24 months |MAL-ED         |NEPAL        |1         |     16|   214|
|24 months |MAL-ED         |NEPAL        |0         |    198|   214|
|24 months |MAL-ED         |BRAZIL       |1         |     22|   148|
|24 months |MAL-ED         |BRAZIL       |0         |    126|   148|
|24 months |MAL-ED         |TANZANIA     |1         |      0|   198|
|24 months |MAL-ED         |TANZANIA     |0         |    198|   198|
|24 months |MAL-ED         |SOUTH AFRICA |1         |      1|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |    179|   180|
|24 months |PROVIDE        |BANGLADESH   |1         |    156|   579|
|24 months |PROVIDE        |BANGLADESH   |0         |    423|   579|
|24 months |Vellore Crypto |INDIA        |1         |      0|     9|
|24 months |Vellore Crypto |INDIA        |0         |      9|     9|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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


