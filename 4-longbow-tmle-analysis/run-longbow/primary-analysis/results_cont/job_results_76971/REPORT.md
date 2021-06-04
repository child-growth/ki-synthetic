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
|Birth     |COHORTS        |INDIA        |>=155 cm     |   4087|  6640|
|Birth     |COHORTS        |INDIA        |[151-155) cm |    998|  6640|
|Birth     |COHORTS        |INDIA        |<151 cm      |   1555|  6640|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |    372|   724|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |    164|   724|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |    188|   724|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |    793|  3042|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |    725|  3042|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |   1524|  3042|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |   3796| 22330|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |   5232| 22330|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |  13302| 22330|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |   1040|  1349|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |    187|  1349|
|Birth     |Keneba         |GAMBIA       |<151 cm      |    122|  1349|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |     12|    47|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |     14|    47|
|Birth     |MAL-ED         |INDIA        |<151 cm      |     21|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |     30|   231|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |     47|   231|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |    154|   231|
|Birth     |MAL-ED         |PERU         |>=155 cm     |     49|   231|
|Birth     |MAL-ED         |PERU         |[151-155) cm |     52|   231|
|Birth     |MAL-ED         |PERU         |<151 cm      |    130|   231|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |      3|    27|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |     12|    27|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |     12|    27|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |     36|    64|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |     14|    64|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |     14|    64|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |     69|   124|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |     21|   124|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |     34|   124|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |     86|   110|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |     13|   110|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |     11|   110|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |    108|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |    136|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |    364|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |    133|   730|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |    201|   730|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |    396|   730|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |  12564| 13014|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |    347| 13014|
|Birth     |PROBIT         |BELARUS      |<151 cm      |    103| 13014|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |     88|   514|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |    117|   514|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |    309|   514|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |    488|  1222|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |    299|  1222|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |    435|  1222|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   7740|  9669|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1383|  9669|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |    546|  9669|
|6 months  |COHORTS        |INDIA        |>=155 cm     |   4241|  6860|
|6 months  |COHORTS        |INDIA        |[151-155) cm |   1017|  6860|
|6 months  |COHORTS        |INDIA        |<151 cm      |   1602|  6860|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |    455|   821|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |    179|   821|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |    187|   821|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |    706|  2702|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |    641|  2702|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |   1355|  2702|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |     41|   231|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |     41|   231|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |    149|   231|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |   2946| 16733|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |   4061| 16733|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |   9726| 16733|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |   1415|  1816|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |    251|  1816|
|6 months  |Keneba         |GAMBIA       |<151 cm      |    150|  1816|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |    537|   834|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |    153|   834|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |    144|   834|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |     65|   236|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |     69|   236|
|6 months  |MAL-ED         |INDIA        |<151 cm      |    102|   236|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |     35|   239|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |     44|   239|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |    160|   239|
|6 months  |MAL-ED         |PERU         |>=155 cm     |     51|   270|
|6 months  |MAL-ED         |PERU         |[151-155) cm |     65|   270|
|6 months  |MAL-ED         |PERU         |<151 cm      |    154|   270|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |     48|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |     61|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |    127|   236|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |    117|   204|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |     36|   204|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |     51|   204|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |    144|   246|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |     40|   246|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |     62|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |    179|   235|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |     24|   235|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |     32|   235|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |     91|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |    123|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |    323|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |    131|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |    196|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |    387|   714|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |  12498| 12991|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |    383| 12991|
|6 months  |PROBIT         |BELARUS      |<151 cm      |    110| 12991|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |    103|   578|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |    131|   578|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |    344|   578|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |    523|  1306|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |    322|  1306|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |    461|  1306|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |     85|   379|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |     89|   379|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |    205|   379|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1334|  1999|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |    469|  1999|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |    196|  1999|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   5646|  6957|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    937|  6957|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |    374|  6957|
|24 months |COHORTS        |INDIA        |>=155 cm     |   3159|  5337|
|24 months |COHORTS        |INDIA        |[151-155) cm |    850|  5337|
|24 months |COHORTS        |INDIA        |<151 cm      |   1328|  5337|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |    511|   903|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |    174|   903|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |    218|   903|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |    634|  2440|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |    569|  2440|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |   1237|  2440|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |   1523|  8584|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |   2070|  8584|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |   4991|  8584|
|24 months |Keneba         |GAMBIA       |>=155 cm     |   1185|  1521|
|24 months |Keneba         |GAMBIA       |[151-155) cm |    195|  1521|
|24 months |Keneba         |GAMBIA       |<151 cm      |    141|  1521|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |    364|   576|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |    115|   576|
|24 months |LCNI-5         |MALAWI       |<151 cm      |     97|   576|
|24 months |MAL-ED         |INDIA        |>=155 cm     |     62|   227|
|24 months |MAL-ED         |INDIA        |[151-155) cm |     66|   227|
|24 months |MAL-ED         |INDIA        |<151 cm      |     99|   227|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |     29|   211|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |     39|   211|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |    143|   211|
|24 months |MAL-ED         |PERU         |>=155 cm     |     39|   198|
|24 months |MAL-ED         |PERU         |[151-155) cm |     45|   198|
|24 months |MAL-ED         |PERU         |<151 cm      |    114|   198|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |     46|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |     59|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |    123|   228|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |     94|   165|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |     28|   165|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |     43|   165|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |    124|   214|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |     34|   214|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |     56|   214|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |    166|   221|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |     24|   221|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |     31|   221|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |     73|   429|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |     95|   429|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |    261|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |    102|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |    139|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |    272|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |   3656|  3798|
|24 months |PROBIT         |BELARUS      |[151-155) cm |    115|  3798|
|24 months |PROBIT         |BELARUS      |<151 cm      |     27|  3798|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |    106|   551|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |    127|   551|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |    318|   551|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   1040|  1304|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    180|  1304|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |     84|  1304|


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


