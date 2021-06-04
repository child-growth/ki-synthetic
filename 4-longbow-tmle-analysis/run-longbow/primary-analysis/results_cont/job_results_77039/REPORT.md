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
|Birth     |EE             |PAKISTAN     |1         |     24|    28|
|Birth     |EE             |PAKISTAN     |0         |      4|    28|
|Birth     |GMS-Nepal      |NEPAL        |1         |    390|   522|
|Birth     |GMS-Nepal      |NEPAL        |0         |    132|   522|
|Birth     |JiVitA-3       |BANGLADESH   |1         |   8392| 10744|
|Birth     |JiVitA-3       |BANGLADESH   |0         |   2352| 10744|
|Birth     |JiVitA-4       |BANGLADESH   |1         |   1802|  2224|
|Birth     |JiVitA-4       |BANGLADESH   |0         |    422|  2224|
|Birth     |Keneba         |GAMBIA       |1         |    450|  1327|
|Birth     |Keneba         |GAMBIA       |0         |    877|  1327|
|Birth     |MAL-ED         |INDIA        |1         |      4|    37|
|Birth     |MAL-ED         |INDIA        |0         |     33|    37|
|Birth     |MAL-ED         |BANGLADESH   |1         |     68|   194|
|Birth     |MAL-ED         |BANGLADESH   |0         |    126|   194|
|Birth     |MAL-ED         |PERU         |1         |     72|   208|
|Birth     |MAL-ED         |PERU         |0         |    136|   208|
|Birth     |MAL-ED         |NEPAL        |1         |      3|    23|
|Birth     |MAL-ED         |NEPAL        |0         |     20|    23|
|Birth     |MAL-ED         |BRAZIL       |1         |      5|    57|
|Birth     |MAL-ED         |BRAZIL       |0         |     52|    57|
|Birth     |MAL-ED         |TANZANIA     |1         |      0|   105|
|Birth     |MAL-ED         |TANZANIA     |0         |    105|   105|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |      1|    90|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |     89|    90|
|Birth     |PROVIDE        |BANGLADESH   |1         |    155|   532|
|Birth     |PROVIDE        |BANGLADESH   |0         |    377|   532|
|Birth     |SAS-CompFeed   |INDIA        |1         |    310|   325|
|Birth     |SAS-CompFeed   |INDIA        |0         |     15|   325|
|Birth     |Vellore Crypto |INDIA        |1         |      0|    12|
|Birth     |Vellore Crypto |INDIA        |0         |     12|    12|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |     19|    19|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |      0|    19|
|6 months  |EE             |PAKISTAN     |1         |     43|    48|
|6 months  |EE             |PAKISTAN     |0         |      5|    48|
|6 months  |GMS-Nepal      |NEPAL        |1         |    406|   547|
|6 months  |GMS-Nepal      |NEPAL        |0         |    141|   547|
|6 months  |JiVitA-3       |BANGLADESH   |1         |   7625|  9882|
|6 months  |JiVitA-3       |BANGLADESH   |0         |   2257|  9882|
|6 months  |JiVitA-4       |BANGLADESH   |1         |   3327|  4275|
|6 months  |JiVitA-4       |BANGLADESH   |0         |    948|  4275|
|6 months  |Keneba         |GAMBIA       |1         |    586|  1908|
|6 months  |Keneba         |GAMBIA       |0         |   1322|  1908|
|6 months  |LCNI-5         |MALAWI       |1         |     47|   272|
|6 months  |LCNI-5         |MALAWI       |0         |    225|   272|
|6 months  |MAL-ED         |INDIA        |1         |     11|   218|
|6 months  |MAL-ED         |INDIA        |0         |    207|   218|
|6 months  |MAL-ED         |BANGLADESH   |1         |     84|   231|
|6 months  |MAL-ED         |BANGLADESH   |0         |    147|   231|
|6 months  |MAL-ED         |PERU         |1         |     92|   271|
|6 months  |MAL-ED         |PERU         |0         |    179|   271|
|6 months  |MAL-ED         |NEPAL        |1         |     12|   225|
|6 months  |MAL-ED         |NEPAL        |0         |    213|   225|
|6 months  |MAL-ED         |BRAZIL       |1         |     30|   209|
|6 months  |MAL-ED         |BRAZIL       |0         |    179|   209|
|6 months  |MAL-ED         |TANZANIA     |1         |      1|   232|
|6 months  |MAL-ED         |TANZANIA     |0         |    231|   232|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |      3|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |    230|   233|
|6 months  |PROVIDE        |BANGLADESH   |1         |    141|   603|
|6 months  |PROVIDE        |BANGLADESH   |0         |    462|   603|
|6 months  |SAS-CompFeed   |INDIA        |1         |    376|   395|
|6 months  |SAS-CompFeed   |INDIA        |0         |     19|   395|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |      0|   168|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |    168|   168|
|6 months  |Vellore Crypto |INDIA        |1         |      0|    14|
|6 months  |Vellore Crypto |INDIA        |0         |     14|    14|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |     19|    19|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |      0|    19|
|24 months |EE             |PAKISTAN     |1         |     20|    23|
|24 months |EE             |PAKISTAN     |0         |      3|    23|
|24 months |GMS-Nepal      |NEPAL        |1         |    355|   469|
|24 months |GMS-Nepal      |NEPAL        |0         |    114|   469|
|24 months |JiVitA-3       |BANGLADESH   |1         |   3909|  5067|
|24 months |JiVitA-3       |BANGLADESH   |0         |   1158|  5067|
|24 months |JiVitA-4       |BANGLADESH   |1         |   3278|  4184|
|24 months |JiVitA-4       |BANGLADESH   |0         |    906|  4184|
|24 months |Keneba         |GAMBIA       |1         |    514|  1514|
|24 months |Keneba         |GAMBIA       |0         |   1000|  1514|
|24 months |LCNI-5         |MALAWI       |1         |     34|   184|
|24 months |LCNI-5         |MALAWI       |0         |    150|   184|
|24 months |MAL-ED         |INDIA        |1         |     11|   209|
|24 months |MAL-ED         |INDIA        |0         |    198|   209|
|24 months |MAL-ED         |BANGLADESH   |1         |     76|   205|
|24 months |MAL-ED         |BANGLADESH   |0         |    129|   205|
|24 months |MAL-ED         |PERU         |1         |     68|   201|
|24 months |MAL-ED         |PERU         |0         |    133|   201|
|24 months |MAL-ED         |NEPAL        |1         |     12|   219|
|24 months |MAL-ED         |NEPAL        |0         |    207|   219|
|24 months |MAL-ED         |BRAZIL       |1         |     25|   169|
|24 months |MAL-ED         |BRAZIL       |0         |    144|   169|
|24 months |MAL-ED         |TANZANIA     |1         |      1|   202|
|24 months |MAL-ED         |TANZANIA     |0         |    201|   202|
|24 months |MAL-ED         |SOUTH AFRICA |1         |      3|   216|
|24 months |MAL-ED         |SOUTH AFRICA |0         |    213|   216|
|24 months |PROVIDE        |BANGLADESH   |1         |    137|   579|
|24 months |PROVIDE        |BANGLADESH   |0         |    442|   579|
|24 months |Vellore Crypto |INDIA        |1         |      0|    14|
|24 months |Vellore Crypto |INDIA        |0         |     14|    14|


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```


