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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mbmi          | n_cell|     n|
|:---------|:--------------|:------------|:-------------|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |  10685| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |   7151| 17836|
|Birth     |MAL-ED         |INDIA        |Normal weight |     36|    43|
|Birth     |MAL-ED         |INDIA        |Underweight   |      7|    43|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |    178|   202|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |     24|   202|
|Birth     |MAL-ED         |PERU         |Normal weight |    214|   218|
|Birth     |MAL-ED         |PERU         |Underweight   |      4|   218|
|Birth     |MAL-ED         |NEPAL        |Normal weight |     26|    26|
|Birth     |MAL-ED         |NEPAL        |Underweight   |      0|    26|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |     54|    60|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |      6|    60|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |    101|   111|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |     10|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |     93|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      5|    98|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |    493|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |     82|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |    656|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |     48|   704|
|Birth     |PROBIT         |BELARUS      |Normal weight |  13100| 13638|
|Birth     |PROBIT         |BELARUS      |Underweight   |    538| 13638|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |    409|   509|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |    100|   509|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |    710|   998|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |    288|   998|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |   8386|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |    470|  8856|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |  10077| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |   6583| 16660|
|6 months  |LCNI-5         |MALAWI       |Normal weight |    674|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |    161|   835|
|6 months  |MAL-ED         |INDIA        |Normal weight |    179|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |     48|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |    196|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |     32|   228|
|6 months  |MAL-ED         |PERU         |Normal weight |    257|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |      4|   261|
|6 months  |MAL-ED         |NEPAL        |Normal weight |    232|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |      2|   234|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |    183|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |     15|   198|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |    221|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |     19|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |    222|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |     11|   233|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |    454|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |     83|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |    660|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |     51|   711|
|6 months  |PROBIT         |BELARUS      |Normal weight |  12546| 13075|
|6 months  |PROBIT         |BELARUS      |Underweight   |    529| 13075|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |    479|   586|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |    107|   586|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |    870|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |    354|  1224|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |   1949|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |     44|  1993|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |   6747|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |    374|  7121|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |   5151|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |   3392|  8543|
|24 months |LCNI-5         |MALAWI       |Normal weight |    453|   561|
|24 months |LCNI-5         |MALAWI       |Underweight   |    108|   561|
|24 months |MAL-ED         |INDIA        |Normal weight |    172|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |     46|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |    169|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |     30|   199|
|24 months |MAL-ED         |PERU         |Normal weight |    186|   190|
|24 months |MAL-ED         |PERU         |Underweight   |      4|   190|
|24 months |MAL-ED         |NEPAL        |Normal weight |    224|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |      2|   226|
|24 months |MAL-ED         |BRAZIL       |Normal weight |    148|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |     11|   159|
|24 months |MAL-ED         |TANZANIA     |Normal weight |    190|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |     18|   208|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |    208|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |     10|   218|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |    358|   428|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |     70|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |    475|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |     35|   510|
|24 months |PROBIT         |BELARUS      |Normal weight |   3787|  3935|
|24 months |PROBIT         |BELARUS      |Underweight   |    148|  3935|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |    461|   563|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |    102|   563|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |    341|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |     26|   367|


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


