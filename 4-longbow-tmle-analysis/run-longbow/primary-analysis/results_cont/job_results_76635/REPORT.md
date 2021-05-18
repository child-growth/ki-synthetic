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
|Birth     |COHORTS        |INDIA        |>=155 cm     |   4549|  6193|
|Birth     |COHORTS        |INDIA        |[151-155) cm |    608|  6193|
|Birth     |COHORTS        |INDIA        |<151 cm      |   1036|  6193|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |     84|   735|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |    140|   735|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |    511|   735|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |    673|  2898|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |    708|  2898|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |   1517|  2898|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |   3064| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |   4405| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |  10380| 17849|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |   1005|  1293|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |    179|  1293|
|Birth     |Keneba         |GAMBIA       |<151 cm      |    109|  1293|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |     13|    45|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |     13|    45|
|Birth     |MAL-ED         |INDIA        |<151 cm      |     19|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |     32|   212|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |     43|   212|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |    137|   212|
|Birth     |MAL-ED         |PERU         |>=155 cm     |     56|   224|
|Birth     |MAL-ED         |PERU         |[151-155) cm |     44|   224|
|Birth     |MAL-ED         |PERU         |<151 cm      |    124|   224|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |      4|    26|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |      7|    26|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |     15|    26|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |     29|    62|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |     12|    62|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |     21|    62|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |     67|   113|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |     16|   113|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |     30|   113|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |     84|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |     14|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |     11|   109|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |    105|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |    132|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |    338|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |    140|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |    173|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |    393|   706|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |  13101| 13644|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |    398| 13644|
|Birth     |PROBIT         |BELARUS      |<151 cm      |    145| 13644|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |    101|   509|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |    142|   509|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |    266|   509|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |    441|  1081|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |    220|  1081|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |    420|  1081|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   7064|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1314|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |    512|  8890|
|6 months  |COHORTS        |INDIA        |>=155 cm     |   5054|  6850|
|6 months  |COHORTS        |INDIA        |[151-155) cm |    645|  6850|
|6 months  |COHORTS        |INDIA        |<151 cm      |   1151|  6850|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |    100|   929|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |    171|   929|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |    658|   929|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |    618|  2705|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |    656|  2705|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |   1431|  2705|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |     49|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |     43|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |    147|   239|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |   2895| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |   4147| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |   9626| 16668|
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
|6 months  |PROBIT         |BELARUS      |>=155 cm     |  12553| 13081|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |    385| 13081|
|6 months  |PROBIT         |BELARUS      |<151 cm      |    143| 13081|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |    113|   586|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |    159|   586|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |    314|   586|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |    544|  1315|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |    273|  1315|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |    498|  1315|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |     70|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |    100|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |    208|   378|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1287|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |    430|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |    292|  2009|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   5632|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1080|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |    415|  7127|
|24 months |COHORTS        |INDIA        |>=155 cm     |   3740|  5291|
|24 months |COHORTS        |INDIA        |[151-155) cm |    561|  5291|
|24 months |COHORTS        |INDIA        |<151 cm      |    990|  5291|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |    110|   991|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |    178|   991|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |    703|   991|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |    555|  2448|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |    590|  2448|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |   1303|  2448|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |   1442|  8547|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |   2119|  8547|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |   4986|  8547|
|24 months |Keneba         |GAMBIA       |>=155 cm     |   1176|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |    211|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |    122|  1509|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |    333|   561|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |    112|   561|
|24 months |LCNI-5         |MALAWI       |<151 cm      |    116|   561|
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
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |     74|   428|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |     97|   428|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |    257|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |    103|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |    130|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |    280|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |   3776|  3935|
|24 months |PROBIT         |BELARUS      |[151-155) cm |    116|  3935|
|24 months |PROBIT         |BELARUS      |<151 cm      |     43|  3935|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |    106|   563|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |    155|   563|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |    302|   563|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      1|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |    274|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |     70|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |     23|   367|


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


