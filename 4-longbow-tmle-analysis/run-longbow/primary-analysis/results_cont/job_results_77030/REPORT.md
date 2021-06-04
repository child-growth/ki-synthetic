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
|Birth     |COHORTS    |INDIA        |1      |   1685|  4461|
|Birth     |COHORTS    |INDIA        |0      |   2776|  4461|
|Birth     |COHORTS    |GUATEMALA    |1      |     43|   449|
|Birth     |COHORTS    |GUATEMALA    |0      |    406|   449|
|Birth     |COHORTS    |PHILIPPINES  |1      |    177|  1126|
|Birth     |COHORTS    |PHILIPPINES  |0      |    949|  1126|
|Birth     |CONTENT    |PERU         |1      |      1|     2|
|Birth     |CONTENT    |PERU         |0      |      1|     2|
|Birth     |JiVitA-3   |BANGLADESH   |1      |  12413| 17991|
|Birth     |JiVitA-3   |BANGLADESH   |0      |   5578| 17991|
|Birth     |JiVitA-4   |BANGLADESH   |1      |   1859|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |0      |    535|  2394|
|Birth     |MAL-ED     |INDIA        |1      |     14|    39|
|Birth     |MAL-ED     |INDIA        |0      |     25|    39|
|Birth     |MAL-ED     |BANGLADESH   |1      |    168|   201|
|Birth     |MAL-ED     |BANGLADESH   |0      |     33|   201|
|Birth     |MAL-ED     |PERU         |1      |     50|   203|
|Birth     |MAL-ED     |PERU         |0      |    153|   203|
|Birth     |MAL-ED     |NEPAL        |1      |     24|    25|
|Birth     |MAL-ED     |NEPAL        |0      |      1|    25|
|Birth     |MAL-ED     |BRAZIL       |1      |     56|    57|
|Birth     |MAL-ED     |BRAZIL       |0      |      1|    57|
|Birth     |MAL-ED     |TANZANIA     |1      |      0|   110|
|Birth     |MAL-ED     |TANZANIA     |0      |    110|   110|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |      0|    94|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |     94|    94|
|Birth     |NIH-Birth  |BANGLADESH   |1      |    222|   575|
|Birth     |NIH-Birth  |BANGLADESH   |0      |    353|   575|
|Birth     |NIH-Crypto |BANGLADESH   |1      |    610|   696|
|Birth     |NIH-Crypto |BANGLADESH   |0      |     86|   696|
|Birth     |PROVIDE    |BANGLADESH   |1      |     43|    45|
|Birth     |PROVIDE    |BANGLADESH   |0      |      2|    45|
|6 months  |COHORTS    |INDIA        |1      |   1879|  4964|
|6 months  |COHORTS    |INDIA        |0      |   3085|  4964|
|6 months  |COHORTS    |GUATEMALA    |1      |     67|   658|
|6 months  |COHORTS    |GUATEMALA    |0      |    591|   658|
|6 months  |COHORTS    |PHILIPPINES  |1      |    143|  1083|
|6 months  |COHORTS    |PHILIPPINES  |0      |    940|  1083|
|6 months  |CONTENT    |PERU         |1      |    201|   215|
|6 months  |CONTENT    |PERU         |0      |     14|   215|
|6 months  |JiVitA-3   |BANGLADESH   |1      |  12015| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |0      |   4758| 16773|
|6 months  |JiVitA-4   |BANGLADESH   |1      |   3734|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |0      |   1093|  4827|
|6 months  |LCNI-5     |MALAWI       |1      |      3|   812|
|6 months  |LCNI-5     |MALAWI       |0      |    809|   812|
|6 months  |MAL-ED     |INDIA        |1      |    108|   233|
|6 months  |MAL-ED     |INDIA        |0      |    125|   233|
|6 months  |MAL-ED     |BANGLADESH   |1      |    202|   240|
|6 months  |MAL-ED     |BANGLADESH   |0      |     38|   240|
|6 months  |MAL-ED     |PERU         |1      |     65|   263|
|6 months  |MAL-ED     |PERU         |0      |    198|   263|
|6 months  |MAL-ED     |NEPAL        |1      |    235|   236|
|6 months  |MAL-ED     |NEPAL        |0      |      1|   236|
|6 months  |MAL-ED     |BRAZIL       |1      |    205|   209|
|6 months  |MAL-ED     |BRAZIL       |0      |      4|   209|
|6 months  |MAL-ED     |TANZANIA     |1      |      0|   238|
|6 months  |MAL-ED     |TANZANIA     |0      |    238|   238|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |      4|   244|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |    240|   244|
|6 months  |NIH-Birth  |BANGLADESH   |1      |    205|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |    332|   537|
|6 months  |NIH-Crypto |BANGLADESH   |1      |    615|   704|
|6 months  |NIH-Crypto |BANGLADESH   |0      |     89|   704|
|6 months  |PROVIDE    |BANGLADESH   |1      |     11|    11|
|6 months  |PROVIDE    |BANGLADESH   |0      |      0|    11|
|24 months |COHORTS    |INDIA        |1      |   1457|  3724|
|24 months |COHORTS    |INDIA        |0      |   2267|  3724|
|24 months |COHORTS    |GUATEMALA    |1      |     77|   903|
|24 months |COHORTS    |GUATEMALA    |0      |    826|   903|
|24 months |COHORTS    |PHILIPPINES  |1      |    124|   993|
|24 months |COHORTS    |PHILIPPINES  |0      |    869|   993|
|24 months |CONTENT    |PERU         |1      |    151|   164|
|24 months |CONTENT    |PERU         |0      |     13|   164|
|24 months |JiVitA-3   |BANGLADESH   |1      |   6085|  8593|
|24 months |JiVitA-3   |BANGLADESH   |0      |   2508|  8593|
|24 months |JiVitA-4   |BANGLADESH   |1      |   3671|  4730|
|24 months |JiVitA-4   |BANGLADESH   |0      |   1059|  4730|
|24 months |LCNI-5     |MALAWI       |1      |      2|   556|
|24 months |LCNI-5     |MALAWI       |0      |    554|   556|
|24 months |MAL-ED     |INDIA        |1      |    104|   225|
|24 months |MAL-ED     |INDIA        |0      |    121|   225|
|24 months |MAL-ED     |BANGLADESH   |1      |    181|   212|
|24 months |MAL-ED     |BANGLADESH   |0      |     31|   212|
|24 months |MAL-ED     |PERU         |1      |     47|   196|
|24 months |MAL-ED     |PERU         |0      |    149|   196|
|24 months |MAL-ED     |NEPAL        |1      |    227|   228|
|24 months |MAL-ED     |NEPAL        |0      |      1|   228|
|24 months |MAL-ED     |BRAZIL       |1      |    166|   169|
|24 months |MAL-ED     |BRAZIL       |0      |      3|   169|
|24 months |MAL-ED     |TANZANIA     |1      |      0|   207|
|24 months |MAL-ED     |TANZANIA     |0      |    207|   207|
|24 months |MAL-ED     |SOUTH AFRICA |1      |      4|   235|
|24 months |MAL-ED     |SOUTH AFRICA |0      |    231|   235|
|24 months |NIH-Birth  |BANGLADESH   |1      |    170|   428|
|24 months |NIH-Birth  |BANGLADESH   |0      |    258|   428|
|24 months |NIH-Crypto |BANGLADESH   |1      |    433|   503|
|24 months |NIH-Crypto |BANGLADESH   |0      |     70|   503|
|24 months |PROVIDE    |BANGLADESH   |1      |      9|     9|
|24 months |PROVIDE    |BANGLADESH   |0      |      0|     9|


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
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

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


