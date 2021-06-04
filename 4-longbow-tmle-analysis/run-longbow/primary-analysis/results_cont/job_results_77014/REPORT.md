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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impfloor
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mbmi          | n_cell|     n|
|:---------|:--------------|:------------|:-------------|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |  10841| 17912|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |   7071| 17912|
|Birth     |MAL-ED         |INDIA        |Normal weight |     33|    42|
|Birth     |MAL-ED         |INDIA        |Underweight   |      9|    42|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |    178|   212|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |     34|   212|
|Birth     |MAL-ED         |PERU         |Normal weight |    211|   217|
|Birth     |MAL-ED         |PERU         |Underweight   |      6|   217|
|Birth     |MAL-ED         |NEPAL        |Normal weight |     25|    25|
|Birth     |MAL-ED         |NEPAL        |Underweight   |      0|    25|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |     53|    58|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |      5|    58|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |     99|   113|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |     14|   113|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |     97|   101|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |      4|   101|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |    479|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |     96|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |    636|   698|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |     62|   698|
|Birth     |PROBIT         |BELARUS      |Normal weight |  12451| 12944|
|Birth     |PROBIT         |BELARUS      |Underweight   |    493| 12944|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |    404|   507|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |    103|   507|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |    732|  1001|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |    269|  1001|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |   8539|  9014|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |    475|  9014|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |  10189| 16702|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |   6513| 16702|
|6 months  |LCNI-5         |MALAWI       |Normal weight |    694|   837|
|6 months  |LCNI-5         |MALAWI       |Underweight   |    143|   837|
|6 months  |MAL-ED         |INDIA        |Normal weight |    178|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |     49|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |    199|   236|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |     37|   236|
|6 months  |MAL-ED         |PERU         |Normal weight |    250|   257|
|6 months  |MAL-ED         |PERU         |Underweight   |      7|   257|
|6 months  |MAL-ED         |NEPAL        |Normal weight |    232|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |      2|   234|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |    176|   191|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |     15|   191|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |    216|   244|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |     28|   244|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |    220|   225|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |      5|   225|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |    439|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |     98|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |    641|   705|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |     64|   705|
|6 months  |PROBIT         |BELARUS      |Normal weight |  12464| 12986|
|6 months  |PROBIT         |BELARUS      |Underweight   |    522| 12986|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |    468|   577|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |    109|   577|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |    895|  1216|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |    321|  1216|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |   1948|  1984|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |     36|  1984|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |   6506|  6834|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |    328|  6834|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |   5244|  8555|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |   3311|  8555|
|24 months |LCNI-5         |MALAWI       |Normal weight |    457|   562|
|24 months |LCNI-5         |MALAWI       |Underweight   |    105|   562|
|24 months |MAL-ED         |INDIA        |Normal weight |    171|   219|
|24 months |MAL-ED         |INDIA        |Underweight   |     48|   219|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |    176|   211|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |     35|   211|
|24 months |MAL-ED         |PERU         |Normal weight |    185|   189|
|24 months |MAL-ED         |PERU         |Underweight   |      4|   189|
|24 months |MAL-ED         |NEPAL        |Normal weight |    224|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |      2|   226|
|24 months |MAL-ED         |BRAZIL       |Normal weight |    145|   153|
|24 months |MAL-ED         |BRAZIL       |Underweight   |      8|   153|
|24 months |MAL-ED         |TANZANIA     |Normal weight |    186|   211|
|24 months |MAL-ED         |TANZANIA     |Underweight   |     25|   211|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |    208|   213|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |      5|   213|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |    355|   428|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |     73|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |    463|   507|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |     44|   507|
|24 months |PROBIT         |BELARUS      |Normal weight |   3613|  3734|
|24 months |PROBIT         |BELARUS      |Underweight   |    121|  3734|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |    452|   552|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |    100|   552|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |    319|   341|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |     22|   341|


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

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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


