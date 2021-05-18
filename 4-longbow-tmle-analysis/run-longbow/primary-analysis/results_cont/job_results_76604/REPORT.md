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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |feducyrs | n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|-----:|
|Birth     |COHORTS        |INDIA        |Low      |    563|  1662|
|Birth     |COHORTS        |INDIA        |Medium   |    476|  1662|
|Birth     |COHORTS        |INDIA        |High     |    623|  1662|
|Birth     |COHORTS        |GUATEMALA    |Low      |    383|   818|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    293|   818|
|Birth     |COHORTS        |GUATEMALA    |High     |    142|   818|
|Birth     |COHORTS        |PHILIPPINES  |Low      |    996|  2932|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    716|  2932|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1220|  2932|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    303|   695|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    242|   695|
|Birth     |GMS-Nepal      |NEPAL        |High     |    150|   695|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   8971| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   7438| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   5217| 21626|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |   1022|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |   1080|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |High     |    589|  2691|
|Birth     |MAL-ED         |INDIA        |Low      |      5|    26|
|Birth     |MAL-ED         |INDIA        |Medium   |      8|    26|
|Birth     |MAL-ED         |INDIA        |High     |     13|    26|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     35|   130|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     34|   130|
|Birth     |MAL-ED         |BANGLADESH   |High     |     61|   130|
|Birth     |MAL-ED         |PERU         |Low      |     66|   223|
|Birth     |MAL-ED         |PERU         |Medium   |     75|   223|
|Birth     |MAL-ED         |PERU         |High     |     82|   223|
|Birth     |MAL-ED         |NEPAL        |Low      |      4|    10|
|Birth     |MAL-ED         |NEPAL        |Medium   |      2|    10|
|Birth     |MAL-ED         |NEPAL        |High     |      4|    10|
|Birth     |MAL-ED         |TANZANIA     |Low      |     30|   118|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     24|   118|
|Birth     |MAL-ED         |TANZANIA     |High     |     64|   118|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     27|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     14|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     15|    56|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    199|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    186|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    347|   732|
|Birth     |PROBIT         |BELARUS      |Low      |   5301| 13441|
|Birth     |PROBIT         |BELARUS      |Medium   |   5951| 13441|
|Birth     |PROBIT         |BELARUS      |High     |   2189| 13441|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    180|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    179|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |    180|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    522|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    410|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |    318|  1250|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2004| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |  10289| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |   1043| 13336|
|6 months  |COHORTS        |INDIA        |Low      |    580|  1690|
|6 months  |COHORTS        |INDIA        |Medium   |    478|  1690|
|6 months  |COHORTS        |INDIA        |High     |    632|  1690|
|6 months  |COHORTS        |GUATEMALA    |Low      |    436|   916|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    326|   916|
|6 months  |COHORTS        |GUATEMALA    |High     |    154|   916|
|6 months  |COHORTS        |PHILIPPINES  |Low      |    894|  2608|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    663|  2608|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1051|  2608|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    247|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    203|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |    113|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   6428| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5590| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   4108| 16126|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1725|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1810|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1064|  4599|
|6 months  |LCNI-5         |MALAWI       |Low      |    281|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |    295|   827|
|6 months  |LCNI-5         |MALAWI       |High     |    251|   827|
|6 months  |MAL-ED         |INDIA        |Low      |     34|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |     34|   119|
|6 months  |MAL-ED         |INDIA        |High     |     51|   119|
|6 months  |MAL-ED         |BANGLADESH   |Low      |     37|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |     36|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |     63|   136|
|6 months  |MAL-ED         |PERU         |Low      |     80|   262|
|6 months  |MAL-ED         |PERU         |Medium   |     80|   262|
|6 months  |MAL-ED         |PERU         |High     |    102|   262|
|6 months  |MAL-ED         |NEPAL        |Low      |     21|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |     24|    79|
|6 months  |MAL-ED         |NEPAL        |High     |     34|    79|
|6 months  |MAL-ED         |TANZANIA     |Low      |     60|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |     51|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |    121|   232|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |     57|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     25|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |     34|   116|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |    191|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    187|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |    337|   715|
|6 months  |PROBIT         |BELARUS      |Low      |   6000| 15235|
|6 months  |PROBIT         |BELARUS      |Medium   |   6689| 15235|
|6 months  |PROBIT         |BELARUS      |High     |   2546| 15235|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    198|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    202|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |    204|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    556|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    432|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |    347|  1335|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    143|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |    140|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     97|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |   1052|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |    579|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    398|  2029|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1290|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   6484|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |    616|  8390|
|24 months |COHORTS        |INDIA        |Low      |    465|  1371|
|24 months |COHORTS        |INDIA        |Medium   |    392|  1371|
|24 months |COHORTS        |INDIA        |High     |    514|  1371|
|24 months |COHORTS        |GUATEMALA    |Low      |    488|  1016|
|24 months |COHORTS        |GUATEMALA    |Medium   |    360|  1016|
|24 months |COHORTS        |GUATEMALA    |High     |    168|  1016|
|24 months |COHORTS        |PHILIPPINES  |Low      |    811|  2354|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    593|  2354|
|24 months |COHORTS        |PHILIPPINES  |High     |    950|  2354|
|24 months |GMS-Nepal      |NEPAL        |Low      |    218|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |    174|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |     95|   487|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3310|  8271|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2896|  8271|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2065|  8271|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1647|  4521|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1811|  4521|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1063|  4521|
|24 months |LCNI-5         |MALAWI       |Low      |    208|   573|
|24 months |LCNI-5         |MALAWI       |Medium   |    204|   573|
|24 months |LCNI-5         |MALAWI       |High     |    161|   573|
|24 months |MAL-ED         |INDIA        |Low      |     34|   114|
|24 months |MAL-ED         |INDIA        |Medium   |     32|   114|
|24 months |MAL-ED         |INDIA        |High     |     48|   114|
|24 months |MAL-ED         |BANGLADESH   |Low      |     33|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |     32|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |     59|   124|
|24 months |MAL-ED         |PERU         |Low      |     53|   193|
|24 months |MAL-ED         |PERU         |Medium   |     58|   193|
|24 months |MAL-ED         |PERU         |High     |     82|   193|
|24 months |MAL-ED         |NEPAL        |Low      |     20|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |     24|    77|
|24 months |MAL-ED         |NEPAL        |High     |     33|    77|
|24 months |MAL-ED         |TANZANIA     |Low      |     55|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |     39|   202|
|24 months |MAL-ED         |TANZANIA     |High     |    108|   202|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |     53|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |     23|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |     33|   109|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    137|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    129|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    248|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1521|  3899|
|24 months |PROBIT         |BELARUS      |Medium   |   1730|  3899|
|24 months |PROBIT         |BELARUS      |High     |    648|  3899|
|24 months |PROVIDE        |BANGLADESH   |Low      |    193|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    192|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |    193|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      2|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |    258|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |   1223|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |    107|  1588|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: NEPAL
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```


