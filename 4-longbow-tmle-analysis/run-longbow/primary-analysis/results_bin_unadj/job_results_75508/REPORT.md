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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mbmi          | wasted| n_cell|     n|
|:---------|:--------------|:------------|:-------------|------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |      0|   9496| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |      1|   1189| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |      0|   6383| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |      1|    768| 17836|
|Birth     |MAL-ED         |INDIA        |Normal weight |      0|     33|    43|
|Birth     |MAL-ED         |INDIA        |Normal weight |      1|      3|    43|
|Birth     |MAL-ED         |INDIA        |Underweight   |      0|      6|    43|
|Birth     |MAL-ED         |INDIA        |Underweight   |      1|      1|    43|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |      0|    148|   202|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |      1|     30|   202|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |      0|     21|   202|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |      1|      3|   202|
|Birth     |MAL-ED         |PERU         |Normal weight |      0|    209|   218|
|Birth     |MAL-ED         |PERU         |Normal weight |      1|      5|   218|
|Birth     |MAL-ED         |PERU         |Underweight   |      0|      4|   218|
|Birth     |MAL-ED         |PERU         |Underweight   |      1|      0|   218|
|Birth     |MAL-ED         |NEPAL        |Normal weight |      0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |Normal weight |      1|      2|    26|
|Birth     |MAL-ED         |NEPAL        |Underweight   |      0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |Underweight   |      1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |      0|     52|    60|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |      1|      2|    60|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |      0|      6|    60|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |      1|      0|    60|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |      0|    100|   111|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |      1|      1|   111|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |      0|     10|   111|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |      1|      0|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |      0|     84|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |      1|      9|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      0|      4|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      1|      1|    98|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |      0|    356|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |      1|    137|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |      0|     51|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |      1|     31|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |      0|    495|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |      1|    161|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |      0|     38|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |      1|     10|   704|
|Birth     |PROBIT         |BELARUS      |Normal weight |      0|  10369| 13638|
|Birth     |PROBIT         |BELARUS      |Normal weight |      1|   2731| 13638|
|Birth     |PROBIT         |BELARUS      |Underweight   |      0|    400| 13638|
|Birth     |PROBIT         |BELARUS      |Underweight   |      1|    138| 13638|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |      0|    330|   509|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |      1|     79|   509|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |      0|     68|   509|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |      1|     32|   509|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |      0|    639|   998|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |      1|     71|   998|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |      0|    250|   998|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |      1|     38|   998|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |      0|   7134|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |      1|   1252|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |      0|    371|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |      1|     99|  8856|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |      0|   9280| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |      1|    797| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |      0|   5972| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |      1|    611| 16660|
|6 months  |LCNI-5         |MALAWI       |Normal weight |      0|    662|   835|
|6 months  |LCNI-5         |MALAWI       |Normal weight |      1|     12|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |      0|    160|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |      1|      1|   835|
|6 months  |MAL-ED         |INDIA        |Normal weight |      0|    166|   227|
|6 months  |MAL-ED         |INDIA        |Normal weight |      1|     13|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |      0|     42|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |      1|      6|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |      0|    193|   228|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |      1|      3|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |      0|     28|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |      1|      4|   228|
|6 months  |MAL-ED         |PERU         |Normal weight |      0|    257|   261|
|6 months  |MAL-ED         |PERU         |Normal weight |      1|      0|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |      0|      4|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |      1|      0|   261|
|6 months  |MAL-ED         |NEPAL        |Normal weight |      0|    228|   234|
|6 months  |MAL-ED         |NEPAL        |Normal weight |      1|      4|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |      0|      2|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |      1|      0|   234|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |      0|    182|   198|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |      1|      1|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |      0|     15|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |      1|      0|   198|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |      0|    220|   240|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |      1|      1|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |      0|     19|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |      1|      0|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |      0|    216|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |      1|      6|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |      0|     10|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |      1|      1|   233|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |      0|    429|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |      1|     25|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |      0|     73|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |      1|     10|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |      0|    641|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |      1|     19|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |      0|     49|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |      1|      2|   711|
|6 months  |PROBIT         |BELARUS      |Normal weight |      0|  12461| 13075|
|6 months  |PROBIT         |BELARUS      |Normal weight |      1|     85| 13075|
|6 months  |PROBIT         |BELARUS      |Underweight   |      0|    526| 13075|
|6 months  |PROBIT         |BELARUS      |Underweight   |      1|      3| 13075|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |      0|    463|   586|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |      1|     16|   586|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |      0|     99|   586|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |      1|      8|   586|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |      0|    772|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |      1|     98|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |      0|    307|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |      1|     47|  1224|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |      0|   1866|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |      1|     83|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |      0|     42|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |      1|      2|  1993|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |      0|   6555|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |      1|    192|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |      0|    352|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |      1|     22|  7121|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |      0|   4048|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |      1|   1103|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |      0|   2637|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |      1|    755|  8543|
|24 months |LCNI-5         |MALAWI       |Normal weight |      0|    450|   561|
|24 months |LCNI-5         |MALAWI       |Normal weight |      1|      3|   561|
|24 months |LCNI-5         |MALAWI       |Underweight   |      0|    101|   561|
|24 months |LCNI-5         |MALAWI       |Underweight   |      1|      7|   561|
|24 months |MAL-ED         |INDIA        |Normal weight |      0|    154|   218|
|24 months |MAL-ED         |INDIA        |Normal weight |      1|     18|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |      0|     37|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |      1|      9|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |      0|    157|   199|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |      1|     12|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |      0|     24|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |      1|      6|   199|
|24 months |MAL-ED         |PERU         |Normal weight |      0|    183|   190|
|24 months |MAL-ED         |PERU         |Normal weight |      1|      3|   190|
|24 months |MAL-ED         |PERU         |Underweight   |      0|      4|   190|
|24 months |MAL-ED         |PERU         |Underweight   |      1|      0|   190|
|24 months |MAL-ED         |NEPAL        |Normal weight |      0|    219|   226|
|24 months |MAL-ED         |NEPAL        |Normal weight |      1|      5|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |      0|      2|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |      1|      0|   226|
|24 months |MAL-ED         |BRAZIL       |Normal weight |      0|    145|   159|
|24 months |MAL-ED         |BRAZIL       |Normal weight |      1|      3|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |      0|     11|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |      1|      0|   159|
|24 months |MAL-ED         |TANZANIA     |Normal weight |      0|    187|   208|
|24 months |MAL-ED         |TANZANIA     |Normal weight |      1|      3|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |      0|     17|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |      1|      1|   208|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |      0|    207|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |      1|      1|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |      0|     10|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |      1|      0|   218|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |      0|    324|   428|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |      1|     34|   428|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |      0|     51|   428|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |      1|     19|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |      0|    433|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |      1|     42|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |      0|     32|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |      1|      3|   510|
|24 months |PROBIT         |BELARUS      |Normal weight |      0|   3758|  3935|
|24 months |PROBIT         |BELARUS      |Normal weight |      1|     29|  3935|
|24 months |PROBIT         |BELARUS      |Underweight   |      0|    145|  3935|
|24 months |PROBIT         |BELARUS      |Underweight   |      1|      3|  3935|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |      0|    424|   563|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |      1|     37|   563|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |      0|     78|   563|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |      1|     24|   563|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |      0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |      0|    284|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |      1|     57|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |      0|     18|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |      1|      8|   367|


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

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
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


