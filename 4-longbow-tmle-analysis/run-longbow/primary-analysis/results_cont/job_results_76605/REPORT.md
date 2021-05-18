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
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |     91|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |    460|   665|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |    114|   665|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |   2524| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |   7055| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   4799| 14378|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |    359|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |   1468|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |    982|  2809|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |      1|    40|
|Birth     |MAL-ED     |INDIA        |Food Secure          |     38|    40|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|    40|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |     26|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |    129|   159|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      4|   159|
|Birth     |MAL-ED     |PERU         |Food Insecure        |     86|   122|
|Birth     |MAL-ED     |PERU         |Food Secure          |     25|   122|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |     11|   122|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |     13|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|    14|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |     20|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |      1|    23|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      2|    23|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |     37|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |     48|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     15|   100|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |     49|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |     75|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    484|   608|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |     71|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |    453|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    208|   732|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |     72|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |    377|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     90|   539|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |   2344| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |   7242| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   4797| 14383|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |    590|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |   2575|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1641|  4806|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |     17|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |    193|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      3|   213|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |     28|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |    134|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      5|   167|
|6 months  |MAL-ED     |PERU         |Food Insecure        |     96|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |     27|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |     17|   140|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |     17|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |     94|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |     12|   123|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |     91|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |      2|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |      5|    98|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |     80|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |    103|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     33|   216|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |     46|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |     68|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    423|   537|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |     68|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |    449|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    198|   715|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |     67|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |    320|   467|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |     80|   467|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |   1334|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |   3427|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |   2437|  7198|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |    573|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |   2545|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |   1609|  4727|
|24 months |MAL-ED     |INDIA        |Food Insecure        |     16|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |    185|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      3|   204|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |     24|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |    114|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      5|   143|
|24 months |MAL-ED     |PERU         |Food Insecure        |     64|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |     19|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |     15|    98|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |     16|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |     91|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |     12|   119|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |     70|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |      2|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |      5|    77|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |     74|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |     98|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |     30|   202|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |     36|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |     59|   429|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |    334|   429|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |     53|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |    314|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |    147|   514|


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
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL





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


