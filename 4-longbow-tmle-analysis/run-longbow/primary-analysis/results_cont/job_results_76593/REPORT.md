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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mhtcm        | n_cell|     n|
|:---------|:--------------|:------------|:------------|------:|-----:|
|Birth     |COHORTS        |INDIA        |>=155 cm     |   4877|  6640|
|Birth     |COHORTS        |INDIA        |[151-155) cm |    647|  6640|
|Birth     |COHORTS        |INDIA        |<151 cm      |   1116|  6640|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |     90|   826|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |    161|   826|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |    575|   826|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |    693|  3049|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |    736|  3049|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |   1620|  3049|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |   3753| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |   5393| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |  13103| 22249|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |   1056|  1360|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |    187|  1360|
|Birth     |Keneba         |GAMBIA       |<151 cm      |    117|  1360|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |     13|    47|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |     14|    47|
|Birth     |MAL-ED         |INDIA        |<151 cm      |     20|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |     33|   226|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |     48|   226|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |    145|   226|
|Birth     |MAL-ED         |PERU         |>=155 cm     |     56|   229|
|Birth     |MAL-ED         |PERU         |[151-155) cm |     45|   229|
|Birth     |MAL-ED         |PERU         |<151 cm      |    128|   229|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |      4|    27|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |      8|    27|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |     15|    27|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |     29|    65|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |     13|    65|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |     23|    65|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |     73|   122|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |     17|   122|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |     32|   122|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |     87|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |     14|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |     11|   112|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |    110|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |    140|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |    358|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |    145|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |    180|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |    406|   731|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |  13174| 13719|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |    399| 13719|
|Birth     |PROBIT         |BELARUS      |<151 cm      |    146| 13719|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |    103|   516|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |    142|   516|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |    271|   516|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |    502|  1230|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |    250|  1230|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |    478|  1230|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   7553|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1402|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |    557|  9512|
|6 months  |COHORTS        |INDIA        |>=155 cm     |   5061|  6860|
|6 months  |COHORTS        |INDIA        |[151-155) cm |    645|  6860|
|6 months  |COHORTS        |INDIA        |<151 cm      |   1154|  6860|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |    100|   926|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |    171|   926|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |    655|   926|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |    619|  2707|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |    657|  2707|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |   1431|  2707|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |     49|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |     43|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |    147|   239|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |   2900| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |   4155| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |   9640| 16695|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |   1394|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |    248|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |    161|  1803|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |    492|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |    172|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |    171|   835|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |     60|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |     55|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |    118|   233|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |     35|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |     54|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |    149|   238|
|6 months  |MAL-ED         |PERU         |>=155 cm     |     66|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |     53|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |    150|   269|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |     44|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |     58|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |    134|   236|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |     97|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |     43|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |     68|   208|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |    143|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |     43|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |     57|   243|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |    180|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |     35|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |     31|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |     92|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |    129|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |    316|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |    143|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |    172|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |    399|   714|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |  12555| 13083|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |    385| 13083|
|6 months  |PROBIT         |BELARUS      |<151 cm      |    143| 13083|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |    113|   587|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |    159|   587|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |    315|   587|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |    544|  1317|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |    276|  1317|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |    497|  1317|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |     70|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |    101|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |    207|   378|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1287|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |    430|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |    293|  2010|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   5730|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1097|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |    422|  7249|
|24 months |COHORTS        |INDIA        |>=155 cm     |   3774|  5337|
|24 months |COHORTS        |INDIA        |[151-155) cm |    566|  5337|
|24 months |COHORTS        |INDIA        |<151 cm      |    997|  5337|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |    108|   979|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |    178|   979|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |    693|   979|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |    558|  2444|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |    588|  2444|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |   1298|  2444|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |   1447|  8576|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |   2129|  8576|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |   5000|  8576|
|24 months |Keneba         |GAMBIA       |>=155 cm     |   1176|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |    211|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |    122|  1509|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |    343|   577|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |    117|   577|
|24 months |LCNI-5         |MALAWI       |<151 cm      |    117|   577|
|24 months |MAL-ED         |INDIA        |>=155 cm     |     57|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |     51|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |    116|   224|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |     31|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |     50|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |    128|   209|
|24 months |MAL-ED         |PERU         |>=155 cm     |     51|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |     41|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |    105|   197|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |     42|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |     56|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |    130|   228|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |     76|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |     36|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |     56|   168|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |    127|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |     36|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |     48|   211|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |    171|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |     33|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |     28|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |     75|   429|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |     97|   429|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |    257|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |    103|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |    130|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |    280|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |   3834|  4000|
|24 months |PROBIT         |BELARUS      |[151-155) cm |    121|  4000|
|24 months |PROBIT         |BELARUS      |<151 cm      |     45|  4000|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |    106|   562|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |    155|   562|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |    301|   562|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      1|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   1060|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    234|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |     77|  1371|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
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

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


