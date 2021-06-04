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

**Intervention Variable:** earlybf

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

|agecat    |studyid      |country      |earlybf | n_cell|     n|
|:---------|:------------|:------------|:-------|------:|-----:|
|Birth     |EE           |PAKISTAN     |1       |     36|   170|
|Birth     |EE           |PAKISTAN     |0       |    134|   170|
|Birth     |GMS-Nepal    |NEPAL        |1       |    171|   586|
|Birth     |GMS-Nepal    |NEPAL        |0       |    415|   586|
|Birth     |JiVitA-3     |BANGLADESH   |1       |    105| 17943|
|Birth     |JiVitA-3     |BANGLADESH   |0       |  17838| 17943|
|Birth     |JiVitA-4     |BANGLADESH   |1       |   1624|  2396|
|Birth     |JiVitA-4     |BANGLADESH   |0       |    772|  2396|
|Birth     |MAL-ED       |INDIA        |1       |     31|    44|
|Birth     |MAL-ED       |INDIA        |0       |     13|    44|
|Birth     |MAL-ED       |BANGLADESH   |1       |    140|   214|
|Birth     |MAL-ED       |BANGLADESH   |0       |     74|   214|
|Birth     |MAL-ED       |PERU         |1       |    172|   228|
|Birth     |MAL-ED       |PERU         |0       |     56|   228|
|Birth     |MAL-ED       |NEPAL        |1       |     14|    26|
|Birth     |MAL-ED       |NEPAL        |0       |     12|    26|
|Birth     |MAL-ED       |BRAZIL       |1       |     26|    62|
|Birth     |MAL-ED       |BRAZIL       |0       |     36|    62|
|Birth     |MAL-ED       |TANZANIA     |1       |    103|   115|
|Birth     |MAL-ED       |TANZANIA     |0       |     12|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |     69|   110|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |     41|   110|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |    613|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |     94|   707|
|Birth     |SAS-CompFeed |INDIA        |1       |     79|  1072|
|Birth     |SAS-CompFeed |INDIA        |0       |    993|  1072|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6142| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5372| 11514|
|6 months  |EE           |PAKISTAN     |1       |     69|   364|
|6 months  |EE           |PAKISTAN     |0       |    295|   364|
|6 months  |GMS-Nepal    |NEPAL        |1       |    151|   511|
|6 months  |GMS-Nepal    |NEPAL        |0       |    360|   511|
|6 months  |JiVitA-3     |BANGLADESH   |1       |     36| 16784|
|6 months  |JiVitA-3     |BANGLADESH   |0       |  16748| 16784|
|6 months  |JiVitA-4     |BANGLADESH   |1       |   3095|  4833|
|6 months  |JiVitA-4     |BANGLADESH   |0       |   1738|  4833|
|6 months  |MAL-ED       |INDIA        |1       |    140|   236|
|6 months  |MAL-ED       |INDIA        |0       |     96|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |    147|   240|
|6 months  |MAL-ED       |BANGLADESH   |0       |     93|   240|
|6 months  |MAL-ED       |PERU         |1       |    202|   273|
|6 months  |MAL-ED       |PERU         |0       |     71|   273|
|6 months  |MAL-ED       |NEPAL        |1       |     96|   236|
|6 months  |MAL-ED       |NEPAL        |0       |    140|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |     95|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |    114|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |    205|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |     42|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |    156|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |     94|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |    619|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |     96|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |     97|  1334|
|6 months  |SAS-CompFeed |INDIA        |0       |   1237|  1334|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |   4065|  7553|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |   3488|  7553|
|24 months |EE           |PAKISTAN     |1       |     32|   164|
|24 months |EE           |PAKISTAN     |0       |    132|   164|
|24 months |GMS-Nepal    |NEPAL        |1       |    131|   444|
|24 months |GMS-Nepal    |NEPAL        |0       |    313|   444|
|24 months |JiVitA-3     |BANGLADESH   |1       |      1|  8603|
|24 months |JiVitA-3     |BANGLADESH   |0       |   8602|  8603|
|24 months |JiVitA-4     |BANGLADESH   |1       |   3031|  4735|
|24 months |JiVitA-4     |BANGLADESH   |0       |   1704|  4735|
|24 months |MAL-ED       |INDIA        |1       |    134|   227|
|24 months |MAL-ED       |INDIA        |0       |     93|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |    128|   211|
|24 months |MAL-ED       |BANGLADESH   |0       |     83|   211|
|24 months |MAL-ED       |PERU         |1       |    149|   201|
|24 months |MAL-ED       |PERU         |0       |     52|   201|
|24 months |MAL-ED       |NEPAL        |1       |     95|   228|
|24 months |MAL-ED       |NEPAL        |0       |    133|   228|
|24 months |MAL-ED       |BRAZIL       |1       |     80|   169|
|24 months |MAL-ED       |BRAZIL       |0       |     89|   169|
|24 months |MAL-ED       |TANZANIA     |1       |    180|   214|
|24 months |MAL-ED       |TANZANIA     |0       |     34|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |    144|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |     91|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |    443|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |     71|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |    201|   379|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |    178|   379|


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH





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


