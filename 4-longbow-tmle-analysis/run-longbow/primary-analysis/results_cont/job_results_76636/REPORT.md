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
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |    455| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |   1276| 17987|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |  16256| 17987|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |     11|    45|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |      7|    45|
|Birth     |MAL-ED         |INDIA        |<52 kg     |     27|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |     40|   214|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |     51|   214|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |    123|   214|
|Birth     |MAL-ED         |PERU         |>=58 kg    |     99|   224|
|Birth     |MAL-ED         |PERU         |[52-58) kg |     58|   224|
|Birth     |MAL-ED         |PERU         |<52 kg     |     67|   224|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |     10|    26|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |      8|    26|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |      8|    26|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |     40|    62|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |     10|    62|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |     12|    62|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |     45|   110|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |     27|   110|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |     38|   110|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |     80|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |     13|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |     16|   109|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |     84|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |     75|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |    416|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |    222|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |    151|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |    333|   706|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |  10222| 13694|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |   2325| 13694|
|Birth     |PROBIT         |BELARUS      |<52 kg     |   1147| 13694|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |    110|   525|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |    114|   525|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |    301|   525|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |    120|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |    170|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |    813|  1103|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   5248| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2717| 10171|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |   2206| 10171|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |    430| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |   1179| 16769|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |  15160| 16769|
|6 months  |LCNI-5         |MALAWI       |>=58 kg    |    109|   837|
|6 months  |LCNI-5         |MALAWI       |[52-58) kg |    212|   837|
|6 months  |LCNI-5         |MALAWI       |<52 kg     |    516|   837|
|6 months  |MAL-ED         |INDIA        |>=58 kg    |     44|   234|
|6 months  |MAL-ED         |INDIA        |[52-58) kg |     38|   234|
|6 months  |MAL-ED         |INDIA        |<52 kg     |    152|   234|
|6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |     45|   240|
|6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |     53|   240|
|6 months  |MAL-ED         |BANGLADESH   |<52 kg     |    142|   240|
|6 months  |MAL-ED         |PERU         |>=58 kg    |    123|   270|
|6 months  |MAL-ED         |PERU         |[52-58) kg |     65|   270|
|6 months  |MAL-ED         |PERU         |<52 kg     |     82|   270|
|6 months  |MAL-ED         |NEPAL        |>=58 kg    |     91|   231|
|6 months  |MAL-ED         |NEPAL        |[52-58) kg |     69|   231|
|6 months  |MAL-ED         |NEPAL        |<52 kg     |     71|   231|
|6 months  |MAL-ED         |BRAZIL       |>=58 kg    |    127|   209|
|6 months  |MAL-ED         |BRAZIL       |[52-58) kg |     31|   209|
|6 months  |MAL-ED         |BRAZIL       |<52 kg     |     51|   209|
|6 months  |MAL-ED         |TANZANIA     |>=58 kg    |     96|   239|
|6 months  |MAL-ED         |TANZANIA     |[52-58) kg |     59|   239|
|6 months  |MAL-ED         |TANZANIA     |<52 kg     |     84|   239|
|6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |    185|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |     30|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |     31|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |     75|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |     73|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |    389|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |    221|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |    158|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |    335|   714|
|6 months  |PROBIT         |BELARUS      |>=58 kg    |   9791| 13135|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |   2228| 13135|
|6 months  |PROBIT         |BELARUS      |<52 kg     |   1116| 13135|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |    123|   602|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |    122|   602|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |    357|   602|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |    133|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |    210|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |    991|  1334|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |   1224|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |    407|  2017|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |    386|  2017|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   4112|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2171|  8036|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |   1753|  8036|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |    216|  8596|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |    575|  8596|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |   7805|  8596|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |     71|   562|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |    146|   562|
|24 months |LCNI-5         |MALAWI       |<52 kg     |    345|   562|
|24 months |MAL-ED         |INDIA        |>=58 kg    |     42|   225|
|24 months |MAL-ED         |INDIA        |[52-58) kg |     37|   225|
|24 months |MAL-ED         |INDIA        |<52 kg     |    146|   225|
|24 months |MAL-ED         |BANGLADESH   |>=58 kg    |     40|   211|
|24 months |MAL-ED         |BANGLADESH   |[52-58) kg |     46|   211|
|24 months |MAL-ED         |BANGLADESH   |<52 kg     |    125|   211|
|24 months |MAL-ED         |PERU         |>=58 kg    |     93|   198|
|24 months |MAL-ED         |PERU         |[52-58) kg |     47|   198|
|24 months |MAL-ED         |PERU         |<52 kg     |     58|   198|
|24 months |MAL-ED         |NEPAL        |>=58 kg    |     88|   223|
|24 months |MAL-ED         |NEPAL        |[52-58) kg |     64|   223|
|24 months |MAL-ED         |NEPAL        |<52 kg     |     71|   223|
|24 months |MAL-ED         |BRAZIL       |>=58 kg    |    102|   169|
|24 months |MAL-ED         |BRAZIL       |[52-58) kg |     29|   169|
|24 months |MAL-ED         |BRAZIL       |<52 kg     |     38|   169|
|24 months |MAL-ED         |TANZANIA     |>=58 kg    |     83|   206|
|24 months |MAL-ED         |TANZANIA     |[52-58) kg |     48|   206|
|24 months |MAL-ED         |TANZANIA     |<52 kg     |     75|   206|
|24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |    176|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |     29|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |     27|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |     60|   428|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |     59|   428|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |    309|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |    165|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |    107|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |    241|   513|
|24 months |PROBIT         |BELARUS      |>=58 kg    |   2952|  3949|
|24 months |PROBIT         |BELARUS      |[52-58) kg |    661|  3949|
|24 months |PROBIT         |BELARUS      |<52 kg     |    336|  3949|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |    126|   579|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |    119|   579|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |    334|   579|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |      2|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |    161|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |    116|   419|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |    142|   419|


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


