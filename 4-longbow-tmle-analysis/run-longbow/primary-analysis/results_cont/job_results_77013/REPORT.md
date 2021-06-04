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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mwtkg      | n_cell|     n|
|:---------|:--------------|:------------|:----------|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |    475| 17984|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |   1310| 17984|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |  16199| 17984|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |      6|    45|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |     11|    45|
|Birth     |MAL-ED         |INDIA        |<52 kg     |     28|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |     41|   215|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |     35|   215|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |    139|   215|
|Birth     |MAL-ED         |PERU         |>=58 kg    |     81|   225|
|Birth     |MAL-ED         |PERU         |[52-58) kg |     63|   225|
|Birth     |MAL-ED         |PERU         |<52 kg     |     81|   225|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |     15|    26|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |      6|    26|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |      5|    26|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |     37|    62|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |     11|    62|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |     14|    62|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |     40|   115|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |     18|   115|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |     57|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |     85|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |     12|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |     11|   108|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |     67|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |     81|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |    427|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |    196|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |    170|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |    341|   707|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |   9772| 12998|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |   2204| 12998|
|Birth     |PROBIT         |BELARUS      |<52 kg     |   1022| 12998|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |    109|   526|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |    112|   526|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |    305|   526|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |     83|  1096|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |    210|  1096|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |    803|  1096|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   5462| 10351|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2745| 10351|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |   2144| 10351|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |    470| 16759|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |   1217| 16759|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |  15072| 16759|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |    125|   838|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |    236|   838|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |    477|   838|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |     47|   236|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |     50|   236|
|6 months  |MAL-ED         |INDIA        |<52 kg     |    139|   236|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |     45|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |     38|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |    157|   240|
|6 months  |MAL-ED         |PERU         |>=58 kg    |     97|   269|
|6 months  |MAL-ED         |PERU         |[52-58) kg |     72|   269|
|6 months  |MAL-ED         |PERU         |<52 kg     |    100|   269|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |    114|   232|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |     61|   232|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |     57|   232|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |    129|   208|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |     30|   208|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |     49|   208|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |    105|   247|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |     44|   247|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |     98|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |    175|   235|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |     33|   235|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |     27|   235|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |     63|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |     74|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |    400|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |    197|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |    170|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |    348|   715|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |   9714| 13051|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |   2259| 13051|
|6 months  |PROBIT         |BELARUS      |<52 kg     |   1078| 13051|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |    130|   594|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |    112|   594|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |    352|   594|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |    117|  1329|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |    241|  1329|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |    971|  1329|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |   1269|  2019|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |    418|  2019|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |    332|  2019|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   4118|  7716|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2068|  7716|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |   1530|  7716|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |    207|  8588|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |    644|  8588|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |   7737|  8588|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |     84|   563|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |    152|   563|
|24 months |LCNI-5         |MALAWI       |<52 kg     |    327|   563|
|24 months |MAL-ED         |INDIA        |>=58 kg    |     45|   227|
|24 months |MAL-ED         |INDIA        |[52-58) kg |     48|   227|
|24 months |MAL-ED         |INDIA        |<52 kg     |    134|   227|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |     39|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |     34|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |    138|   211|
|24 months |MAL-ED         |PERU         |>=58 kg    |     75|   199|
|24 months |MAL-ED         |PERU         |[52-58) kg |     54|   199|
|24 months |MAL-ED         |PERU         |<52 kg     |     70|   199|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |    109|   224|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |     59|   224|
|24 months |MAL-ED         |NEPAL        |<52 kg     |     56|   224|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |    110|   168|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |     21|   168|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |     37|   168|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |     86|   214|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |     41|   214|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |     87|   214|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |    166|   221|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |     29|   221|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |     26|   221|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |     50|   428|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |     54|   428|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |    324|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |    137|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |    122|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |    255|   514|
|24 months |PROBIT         |BELARUS      |>=58 kg    |   2853|  3750|
|24 months |PROBIT         |BELARUS      |[52-58) kg |    615|  3750|
|24 months |PROBIT         |BELARUS      |<52 kg     |    282|  3750|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |    130|   569|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |    108|   569|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |    331|   569|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |    182|   390|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |    107|   390|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |    101|   390|


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


