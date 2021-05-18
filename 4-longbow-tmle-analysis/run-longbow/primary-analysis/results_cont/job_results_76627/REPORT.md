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

**Intervention Variable:** birthwt

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthwt                    | n_cell|     n|
|:---------|:--------------|:------------|:--------------------------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |     76|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |     10|    86|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |     13|    19|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |      6|    19|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |   5178|  6193|
|Birth     |COHORTS        |INDIA        |Low birthweight            |   1015|  6193|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |    702|   756|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |     54|   756|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |   2688|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |    211|  2899|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |      2|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |      0|     2|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |    138|   177|
|Birth     |EE             |PAKISTAN     |Low birthweight            |     39|   177|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |    461|   641|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |    180|   641|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |  12556| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |   5458| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |   1758|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |    638|  2396|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |   1273|  1465|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |    192|  1465|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |     38|    45|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |      7|    45|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |    177|   215|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |     38|   215|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |    218|   228|
|Birth     |MAL-ED         |PERU         |Low birthweight            |     10|   228|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |     24|    26|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |      2|    26|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |     60|    62|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |      2|    62|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |    113|   115|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |      2|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |    115|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |      5|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |    410|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |    165|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |    554|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |    153|   707|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |  13817| 13817|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |      0| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |    401|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |    131|   532|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |     33|    38|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |      5|    38|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |    894|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |    209|  1103|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |    296|   343|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |     47|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |  11614| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |   1303| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |    317|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |     43|   360|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |      8|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |      4|    12|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |   5000|  6252|
|6 months  |COHORTS        |INDIA        |Low birthweight            |   1252|  6252|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |    704|   774|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |     70|   774|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |   2416|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |    248|  2664|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |      2|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |      0|     2|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |    243|   374|
|6 months  |EE             |PAKISTAN     |Low birthweight            |    131|   374|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |    386|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |    177|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |   8315| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |   5790| 14105|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |   3005|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |   1040|  4045|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |   1146|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |    188|  1334|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |    193|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |     34|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |    188|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |     50|   238|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |    254|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |     16|   270|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |    210|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |     19|   229|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |    199|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |     10|   209|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |    177|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |      9|   186|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |    238|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |     15|   253|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |    356|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |    162|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |    545|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |    170|   715|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |  15757| 15757|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |      0| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |    460|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |    143|   603|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |     29|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |      5|    34|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |   1001|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |    323|  1324|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |   1943|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |     67|  2010|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |    334|   402|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |     68|   402|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |   7405|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |   1068|  8473|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |    321|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |     43|   364|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |      7|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |      4|    11|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |   3911|  4821|
|24 months |COHORTS        |INDIA        |Low birthweight            |    910|  4821|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |    595|   657|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |     62|   657|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |   2195|  2410|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |    215|  2410|
|24 months |CONTENT        |PERU         |Normal or high birthweight |      2|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |      0|     2|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |    101|   168|
|24 months |EE             |PAKISTAN     |Low birthweight            |     67|   168|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |    345|   486|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |    141|   486|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |   4216|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |   3066|  7282|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |   2944|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |   1053|  3997|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |    905|  1057|
|24 months |Keneba         |GAMBIA       |Low birthweight            |    152|  1057|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |    185|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |     33|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |    165|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |     45|   210|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |    187|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |     12|   199|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |    203|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |     18|   221|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |    161|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |      8|   169|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |    154|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |      8|   162|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |    224|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |     13|   237|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |    278|   413|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |    135|   413|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |    388|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |    126|   514|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |   3970|  3970|
|24 months |PROBIT         |BELARUS      |Low birthweight            |      0|  3970|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |    440|   579|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |    139|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |      0|     6|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |    335|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |     68|   403|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |    337|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |     94|   431|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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


