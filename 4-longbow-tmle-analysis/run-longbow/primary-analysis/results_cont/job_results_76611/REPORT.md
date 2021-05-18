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

**Intervention Variable:** impsan

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid    |country      |impsan | n_cell|     n|
|:---------|:----------|:------------|:------|------:|-----:|
|Birth     |COHORTS    |INDIA        |1      |   2279|  5255|
|Birth     |COHORTS    |INDIA        |0      |   2976|  5255|
|Birth     |COHORTS    |GUATEMALA    |1      |     60|   605|
|Birth     |COHORTS    |GUATEMALA    |0      |    545|   605|
|Birth     |COHORTS    |PHILIPPINES  |1      |    220|  1273|
|Birth     |COHORTS    |PHILIPPINES  |0      |   1053|  1273|
|Birth     |CONTENT    |PERU         |1      |      2|     2|
|Birth     |CONTENT    |PERU         |0      |      0|     2|
|Birth     |JiVitA-3   |BANGLADESH   |1      |  15490| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |0      |   6944| 22434|
|Birth     |JiVitA-4   |BANGLADESH   |1      |   2149|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |0      |    672|  2821|
|Birth     |MAL-ED     |INDIA        |1      |     19|    46|
|Birth     |MAL-ED     |INDIA        |0      |     27|    46|
|Birth     |MAL-ED     |BANGLADESH   |1      |    176|   212|
|Birth     |MAL-ED     |BANGLADESH   |0      |     36|   212|
|Birth     |MAL-ED     |PERU         |1      |     49|   203|
|Birth     |MAL-ED     |PERU         |0      |    154|   203|
|Birth     |MAL-ED     |NEPAL        |1      |     26|    26|
|Birth     |MAL-ED     |NEPAL        |0      |      0|    26|
|Birth     |MAL-ED     |BRAZIL       |1      |     54|    55|
|Birth     |MAL-ED     |BRAZIL       |0      |      1|    55|
|Birth     |MAL-ED     |TANZANIA     |1      |      0|   115|
|Birth     |MAL-ED     |TANZANIA     |0      |    115|   115|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |      2|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |    104|   106|
|Birth     |NIH-Birth  |BANGLADESH   |1      |    217|   608|
|Birth     |NIH-Birth  |BANGLADESH   |0      |    391|   608|
|Birth     |NIH-Crypto |BANGLADESH   |1      |    623|   725|
|Birth     |NIH-Crypto |BANGLADESH   |0      |    102|   725|
|Birth     |PROVIDE    |BANGLADESH   |1      |     54|    54|
|Birth     |PROVIDE    |BANGLADESH   |0      |      0|    54|
|6 months  |COHORTS    |INDIA        |1      |   2378|  5435|
|6 months  |COHORTS    |INDIA        |0      |   3057|  5435|
|6 months  |COHORTS    |GUATEMALA    |1      |     75|   692|
|6 months  |COHORTS    |GUATEMALA    |0      |    617|   692|
|6 months  |COHORTS    |PHILIPPINES  |1      |    187|  1149|
|6 months  |COHORTS    |PHILIPPINES  |0      |    962|  1149|
|6 months  |CONTENT    |PERU         |1      |    195|   215|
|6 months  |CONTENT    |PERU         |0      |     20|   215|
|6 months  |JiVitA-3   |BANGLADESH   |1      |  11824| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |0      |   4976| 16800|
|6 months  |JiVitA-4   |BANGLADESH   |1      |   3761|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |0      |   1066|  4827|
|6 months  |LCNI-5     |MALAWI       |1      |      2|   823|
|6 months  |LCNI-5     |MALAWI       |0      |    821|   823|
|6 months  |MAL-ED     |INDIA        |1      |    117|   226|
|6 months  |MAL-ED     |INDIA        |0      |    109|   226|
|6 months  |MAL-ED     |BANGLADESH   |1      |    188|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |     36|   224|
|6 months  |MAL-ED     |PERU         |1      |     57|   241|
|6 months  |MAL-ED     |PERU         |0      |    184|   241|
|6 months  |MAL-ED     |NEPAL        |1      |    234|   234|
|6 months  |MAL-ED     |NEPAL        |0      |      0|   234|
|6 months  |MAL-ED     |BRAZIL       |1      |    182|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |      5|   187|
|6 months  |MAL-ED     |TANZANIA     |1      |      0|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |    236|   236|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |      6|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |    218|   224|
|6 months  |NIH-Birth  |BANGLADESH   |1      |    192|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |    345|   537|
|6 months  |NIH-Crypto |BANGLADESH   |1      |    608|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |    100|   708|
|6 months  |PROVIDE    |BANGLADESH   |1      |     49|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |      0|    49|
|24 months |COHORTS    |INDIA        |1      |   1851|  4193|
|24 months |COHORTS    |INDIA        |0      |   2342|  4193|
|24 months |COHORTS    |GUATEMALA    |1      |     81|   782|
|24 months |COHORTS    |GUATEMALA    |0      |    701|   782|
|24 months |COHORTS    |PHILIPPINES  |1      |    170|  1043|
|24 months |COHORTS    |PHILIPPINES  |0      |    873|  1043|
|24 months |CONTENT    |PERU         |1      |    151|   164|
|24 months |CONTENT    |PERU         |0      |     13|   164|
|24 months |JiVitA-3   |BANGLADESH   |1      |   6023|  8627|
|24 months |JiVitA-3   |BANGLADESH   |0      |   2604|  8627|
|24 months |JiVitA-4   |BANGLADESH   |1      |   3703|  4748|
|24 months |JiVitA-4   |BANGLADESH   |0      |   1045|  4748|
|24 months |LCNI-5     |MALAWI       |1      |      2|   570|
|24 months |LCNI-5     |MALAWI       |0      |    568|   570|
|24 months |MAL-ED     |INDIA        |1      |    112|   218|
|24 months |MAL-ED     |INDIA        |0      |    106|   218|
|24 months |MAL-ED     |BANGLADESH   |1      |    162|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |     33|   195|
|24 months |MAL-ED     |PERU         |1      |     41|   174|
|24 months |MAL-ED     |PERU         |0      |    133|   174|
|24 months |MAL-ED     |NEPAL        |1      |    226|   226|
|24 months |MAL-ED     |NEPAL        |0      |      0|   226|
|24 months |MAL-ED     |BRAZIL       |1      |    143|   148|
|24 months |MAL-ED     |BRAZIL       |0      |      5|   148|
|24 months |MAL-ED     |TANZANIA     |1      |      0|   204|
|24 months |MAL-ED     |TANZANIA     |0      |    204|   204|
|24 months |MAL-ED     |SOUTH AFRICA |1      |      5|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |    205|   210|
|24 months |NIH-Birth  |BANGLADESH   |1      |    152|   429|
|24 months |NIH-Birth  |BANGLADESH   |0      |    277|   429|
|24 months |NIH-Crypto |BANGLADESH   |1      |    436|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |     72|   508|
|24 months |PROVIDE    |BANGLADESH   |1      |     46|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |      0|    46|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH





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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


