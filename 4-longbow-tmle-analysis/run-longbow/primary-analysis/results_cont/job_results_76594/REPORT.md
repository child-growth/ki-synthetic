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
|Birth     |JiVitA-3       |BANGLADESH   |>=58 kg    |    530| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |[52-58) kg |   1536| 22420|
|Birth     |JiVitA-3       |BANGLADESH   |<52 kg     |  20354| 22420|
|Birth     |MAL-ED         |INDIA        |>=58 kg    |     11|    47|
|Birth     |MAL-ED         |INDIA        |[52-58) kg |      8|    47|
|Birth     |MAL-ED         |INDIA        |<52 kg     |     28|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=58 kg    |     41|   229|
|Birth     |MAL-ED         |BANGLADESH   |[52-58) kg |     53|   229|
|Birth     |MAL-ED         |BANGLADESH   |<52 kg     |    135|   229|
|Birth     |MAL-ED         |PERU         |>=58 kg    |    100|   229|
|Birth     |MAL-ED         |PERU         |[52-58) kg |     59|   229|
|Birth     |MAL-ED         |PERU         |<52 kg     |     70|   229|
|Birth     |MAL-ED         |NEPAL        |>=58 kg    |     10|    27|
|Birth     |MAL-ED         |NEPAL        |[52-58) kg |      8|    27|
|Birth     |MAL-ED         |NEPAL        |<52 kg     |      9|    27|
|Birth     |MAL-ED         |BRAZIL       |>=58 kg    |     41|    65|
|Birth     |MAL-ED         |BRAZIL       |[52-58) kg |     11|    65|
|Birth     |MAL-ED         |BRAZIL       |<52 kg     |     13|    65|
|Birth     |MAL-ED         |TANZANIA     |>=58 kg    |     48|   120|
|Birth     |MAL-ED         |TANZANIA     |[52-58) kg |     28|   120|
|Birth     |MAL-ED         |TANZANIA     |<52 kg     |     44|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=58 kg    |     82|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[52-58) kg |     13|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<52 kg     |     17|   112|
|Birth     |NIH-Birth      |BANGLADESH   |>=58 kg    |     85|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[52-58) kg |     78|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<52 kg     |    445|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=58 kg    |    226|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[52-58) kg |    160|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<52 kg     |    345|   731|
|Birth     |PROBIT         |BELARUS      |>=58 kg    |  10276| 13770|
|Birth     |PROBIT         |BELARUS      |[52-58) kg |   2339| 13770|
|Birth     |PROBIT         |BELARUS      |<52 kg     |   1155| 13770|
|Birth     |PROVIDE        |BANGLADESH   |>=58 kg    |    112|   532|
|Birth     |PROVIDE        |BANGLADESH   |[52-58) kg |    115|   532|
|Birth     |PROVIDE        |BANGLADESH   |<52 kg     |    305|   532|
|Birth     |SAS-CompFeed   |INDIA        |>=58 kg    |    125|  1252|
|Birth     |SAS-CompFeed   |INDIA        |[52-58) kg |    191|  1252|
|Birth     |SAS-CompFeed   |INDIA        |<52 kg     |    936|  1252|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   5530| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2940| 10896|
|Birth     |ZVITAMBO       |ZIMBABWE     |<52 kg     |   2426| 10896|
|6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |    429| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |   1180| 16796|
|6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |  15187| 16796|
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
|6 months  |PROBIT         |BELARUS      |>=58 kg    |   9792| 13137|
|6 months  |PROBIT         |BELARUS      |[52-58) kg |   2229| 13137|
|6 months  |PROBIT         |BELARUS      |<52 kg     |   1116| 13137|
|6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |    124|   603|
|6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |    122|   603|
|6 months  |PROVIDE        |BANGLADESH   |<52 kg     |    357|   603|
|6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |    133|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |    209|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<52 kg     |    994|  1336|
|6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |   1224|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |    407|  2018|
|6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |    387|  2018|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |   4216|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |   2194|  8178|
|6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |   1768|  8178|
|24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |    218|  8625|
|24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |    578|  8625|
|24 months |JiVitA-3       |BANGLADESH   |<52 kg     |   7829|  8625|
|24 months |LCNI-5         |MALAWI       |>=58 kg    |     74|   578|
|24 months |LCNI-5         |MALAWI       |[52-58) kg |    149|   578|
|24 months |LCNI-5         |MALAWI       |<52 kg     |    355|   578|
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
|24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |     61|   429|
|24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |     59|   429|
|24 months |NIH-Birth      |BANGLADESH   |<52 kg     |    309|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |    165|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |    107|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |    241|   513|
|24 months |PROBIT         |BELARUS      |>=58 kg    |   3008|  4014|
|24 months |PROBIT         |BELARUS      |[52-58) kg |    667|  4014|
|24 months |PROBIT         |BELARUS      |<52 kg     |    339|  4014|
|24 months |PROVIDE        |BANGLADESH   |>=58 kg    |    125|   578|
|24 months |PROVIDE        |BANGLADESH   |[52-58) kg |    119|   578|
|24 months |PROVIDE        |BANGLADESH   |<52 kg     |    334|   578|
|24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |      2|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |    800|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |    430|  1587|
|24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |    357|  1587|


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


