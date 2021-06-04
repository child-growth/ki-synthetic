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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |feducyrs | n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|-----:|
|Birth     |COHORTS        |INDIA        |Low      |    610|  2109|
|Birth     |COHORTS        |INDIA        |Medium   |    730|  2109|
|Birth     |COHORTS        |INDIA        |High     |    769|  2109|
|Birth     |COHORTS        |GUATEMALA    |Low      |    379|   790|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    283|   790|
|Birth     |COHORTS        |GUATEMALA    |High     |    128|   790|
|Birth     |COHORTS        |PHILIPPINES  |Low      |    928|  2911|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    747|  2911|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1236|  2911|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    313|   693|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    225|   693|
|Birth     |GMS-Nepal      |NEPAL        |High     |    155|   693|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   9302| 21609|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   7448| 21609|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   4859| 21609|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |   1061|  2673|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |    978|  2673|
|Birth     |JiVitA-4       |BANGLADESH   |High     |    634|  2673|
|Birth     |MAL-ED         |INDIA        |Low      |      5|    26|
|Birth     |MAL-ED         |INDIA        |Medium   |      6|    26|
|Birth     |MAL-ED         |INDIA        |High     |     15|    26|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     36|   147|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     38|   147|
|Birth     |MAL-ED         |BANGLADESH   |High     |     73|   147|
|Birth     |MAL-ED         |PERU         |Low      |     66|   222|
|Birth     |MAL-ED         |PERU         |Medium   |     72|   222|
|Birth     |MAL-ED         |PERU         |High     |     84|   222|
|Birth     |MAL-ED         |NEPAL        |Low      |      2|    11|
|Birth     |MAL-ED         |NEPAL        |Medium   |      2|    11|
|Birth     |MAL-ED         |NEPAL        |High     |      7|    11|
|Birth     |MAL-ED         |TANZANIA     |Low      |     21|   119|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     24|   119|
|Birth     |MAL-ED         |TANZANIA     |High     |     74|   119|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     14|    40|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |      9|    40|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     17|    40|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    209|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    178|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    345|   732|
|Birth     |PROBIT         |BELARUS      |Low      |   5261| 13468|
|Birth     |PROBIT         |BELARUS      |Medium   |   6112| 13468|
|Birth     |PROBIT         |BELARUS      |High     |   2095| 13468|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    173|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    186|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |    180|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    538|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    372|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |    340|  1250|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2348| 13407|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |  10102| 13407|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |    957| 13407|
|6 months  |COHORTS        |INDIA        |Low      |    621|  2166|
|6 months  |COHORTS        |INDIA        |Medium   |    753|  2166|
|6 months  |COHORTS        |INDIA        |High     |    792|  2166|
|6 months  |COHORTS        |GUATEMALA    |Low      |    432|   901|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    316|   901|
|6 months  |COHORTS        |GUATEMALA    |High     |    153|   901|
|6 months  |COHORTS        |PHILIPPINES  |Low      |    825|  2591|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    684|  2591|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1082|  2591|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    251|   561|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    183|   561|
|6 months  |GMS-Nepal      |NEPAL        |High     |    127|   561|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   6305| 16151|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5601| 16151|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   4245| 16151|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1659|  4562|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1730|  4562|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1173|  4562|
|6 months  |LCNI-5         |MALAWI       |Low      |    298|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |    275|   827|
|6 months  |LCNI-5         |MALAWI       |High     |    254|   827|
|6 months  |MAL-ED         |INDIA        |Low      |     40|   144|
|6 months  |MAL-ED         |INDIA        |Medium   |     47|   144|
|6 months  |MAL-ED         |INDIA        |High     |     57|   144|
|6 months  |MAL-ED         |BANGLADESH   |Low      |     37|   158|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |     45|   158|
|6 months  |MAL-ED         |BANGLADESH   |High     |     76|   158|
|6 months  |MAL-ED         |PERU         |Low      |     72|   257|
|6 months  |MAL-ED         |PERU         |Medium   |     86|   257|
|6 months  |MAL-ED         |PERU         |High     |     99|   257|
|6 months  |MAL-ED         |NEPAL        |Low      |     24|    83|
|6 months  |MAL-ED         |NEPAL        |Medium   |     14|    83|
|6 months  |MAL-ED         |NEPAL        |High     |     45|    83|
|6 months  |MAL-ED         |TANZANIA     |Low      |     44|   235|
|6 months  |MAL-ED         |TANZANIA     |Medium   |     43|   235|
|6 months  |MAL-ED         |TANZANIA     |High     |    148|   235|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |     40|   114|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     31|   114|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |     43|   114|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |    207|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    173|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |    335|   715|
|6 months  |PROBIT         |BELARUS      |Low      |   5948| 15271|
|6 months  |PROBIT         |BELARUS      |Medium   |   6856| 15271|
|6 months  |PROBIT         |BELARUS      |High     |   2467| 15271|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    191|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    203|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |    210|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    559|  1334|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    415|  1334|
|6 months  |SAS-CompFeed   |INDIA        |High     |    360|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    134|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |    152|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     94|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |   1055|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |    586|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    386|  2027|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1475|  8371|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   6320|  8371|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |    576|  8371|
|24 months |COHORTS        |INDIA        |Low      |    500|  1764|
|24 months |COHORTS        |INDIA        |Medium   |    615|  1764|
|24 months |COHORTS        |INDIA        |High     |    649|  1764|
|24 months |COHORTS        |GUATEMALA    |Low      |    461|   991|
|24 months |COHORTS        |GUATEMALA    |Medium   |    351|   991|
|24 months |COHORTS        |GUATEMALA    |High     |    179|   991|
|24 months |COHORTS        |PHILIPPINES  |Low      |    770|  2342|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    605|  2342|
|24 months |COHORTS        |PHILIPPINES  |High     |    967|  2342|
|24 months |GMS-Nepal      |NEPAL        |Low      |    225|   485|
|24 months |GMS-Nepal      |NEPAL        |Medium   |    150|   485|
|24 months |GMS-Nepal      |NEPAL        |High     |    110|   485|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3375|  8293|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2858|  8293|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2060|  8293|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1650|  4502|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1679|  4502|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1173|  4502|
|24 months |LCNI-5         |MALAWI       |Low      |    203|   572|
|24 months |LCNI-5         |MALAWI       |Medium   |    187|   572|
|24 months |LCNI-5         |MALAWI       |High     |    182|   572|
|24 months |MAL-ED         |INDIA        |Low      |     40|   140|
|24 months |MAL-ED         |INDIA        |Medium   |     45|   140|
|24 months |MAL-ED         |INDIA        |High     |     55|   140|
|24 months |MAL-ED         |BANGLADESH   |Low      |     31|   136|
|24 months |MAL-ED         |BANGLADESH   |Medium   |     40|   136|
|24 months |MAL-ED         |BANGLADESH   |High     |     65|   136|
|24 months |MAL-ED         |PERU         |Low      |     55|   188|
|24 months |MAL-ED         |PERU         |Medium   |     58|   188|
|24 months |MAL-ED         |PERU         |High     |     75|   188|
|24 months |MAL-ED         |NEPAL        |Low      |     24|    83|
|24 months |MAL-ED         |NEPAL        |Medium   |     14|    83|
|24 months |MAL-ED         |NEPAL        |High     |     45|    83|
|24 months |MAL-ED         |TANZANIA     |Low      |     38|   204|
|24 months |MAL-ED         |TANZANIA     |Medium   |     35|   204|
|24 months |MAL-ED         |TANZANIA     |High     |    131|   204|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |     38|   107|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |     28|   107|
|24 months |MAL-ED         |SOUTH AFRICA |High     |     41|   107|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    140|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    130|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    244|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1504|  3938|
|24 months |PROBIT         |BELARUS      |Medium   |   1831|  3938|
|24 months |PROBIT         |BELARUS      |High     |    603|  3938|
|24 months |PROVIDE        |BANGLADESH   |Low      |    180|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    191|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |    207|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      1|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |    275|  1573|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |   1191|  1573|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |    107|  1573|


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


