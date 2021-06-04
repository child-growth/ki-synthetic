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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* brthmon
* W_parity
* impfloor
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mwtkg      | n_cell|     n|
|:---------|:--------------|:------------|:----------|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |    576| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |   1589| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |  20255| 22420|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |      6|    47|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |     11|    47|
|Birth     |MAL-ED         |INDIA        |<52 kg     |     30|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |     43|   230|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |     36|   230|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |    151|   230|
|Birth     |MAL-ED         |PERU         |>=58 kg    |     83|   230|
|Birth     |MAL-ED         |PERU         |[52-58) kg |     63|   230|
|Birth     |MAL-ED         |PERU         |<52 kg     |     84|   230|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |     15|    27|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |      6|    27|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |      6|    27|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |     39|    65|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |     12|    65|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |     14|    65|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |     45|   125|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |     22|   125|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |     58|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |     87|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |     12|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |     12|   111|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |     68|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |     84|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |    456|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |    202|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |    177|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |    353|   732|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |   9821| 13069|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |   2222| 13069|
|Birth     |PROBIT         |BELARUS      |<52 kg     |   1026| 13069|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |    111|   533|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |    113|   533|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |    309|   533|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |     96|  1240|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |    225|  1240|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |    919|  1240|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   5793| 11093|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2948| 11093|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |   2352| 11093|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |    471| 16785|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |   1218| 16785|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |  15096| 16785|
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
|6 months  |PROBIT         |BELARUS      |>=58 kg    |   9715| 13053|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |   2260| 13053|
|6 months  |PROBIT         |BELARUS      |<52 kg     |   1078| 13053|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |    130|   595|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |    112|   595|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |    353|   595|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |    117|  1331|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |    240|  1331|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |    974|  1331|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |   1270|  2020|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |    418|  2020|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |    332|  2020|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   4220|  7854|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2088|  7854|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |   1546|  7854|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |    206|  8616|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |    647|  8616|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |   7763|  8616|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |     88|   579|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |    157|   579|
|24 months |LCNI-5         |MALAWI       |<52 kg     |    334|   579|
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
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |     51|   429|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |     54|   429|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |    324|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |    137|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |    122|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |    255|   514|
|24 months |PROBIT         |BELARUS      |>=58 kg    |   2902|  3813|
|24 months |PROBIT         |BELARUS      |[52-58) kg |    629|  3813|
|24 months |PROBIT         |BELARUS      |<52 kg     |    282|  3813|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |    130|   568|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |    108|   568|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |    330|   568|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |    774|  1495|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |    408|  1495|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |    313|  1495|


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


