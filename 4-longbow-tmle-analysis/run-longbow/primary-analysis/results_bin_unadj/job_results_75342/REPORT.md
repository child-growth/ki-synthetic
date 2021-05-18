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

**Outcome Variable:** stunted

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

|agecat    |studyid        |country      |mbmi          | stunted| n_cell|     n|
|:---------|:--------------|:------------|:-------------|-------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |       0|   8895| 22234|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |       1|   4524| 22234|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |       0|   6022| 22234|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |       1|   2793| 22234|
|Birth     |MAL-ED         |INDIA        |Normal weight |       0|     29|    45|
|Birth     |MAL-ED         |INDIA        |Normal weight |       1|      9|    45|
|Birth     |MAL-ED         |INDIA        |Underweight   |       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |Underweight   |       1|      1|    45|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |       0|    155|   216|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |       1|     33|   216|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |       0|     22|   216|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |       1|      6|   216|
|Birth     |MAL-ED         |PERU         |Normal weight |       0|    195|   223|
|Birth     |MAL-ED         |PERU         |Normal weight |       1|     24|   223|
|Birth     |MAL-ED         |PERU         |Underweight   |       0|      4|   223|
|Birth     |MAL-ED         |PERU         |Underweight   |       1|      0|   223|
|Birth     |MAL-ED         |NEPAL        |Normal weight |       0|     25|    27|
|Birth     |MAL-ED         |NEPAL        |Normal weight |       1|      2|    27|
|Birth     |MAL-ED         |NEPAL        |Underweight   |       0|      0|    27|
|Birth     |MAL-ED         |NEPAL        |Underweight   |       1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |       0|     51|    63|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |       1|      6|    63|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |       0|      3|    63|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |       1|      3|    63|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |       0|     89|   118|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |       1|     19|   118|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |       0|      9|   118|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |       1|      1|   118|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |       0|     85|    99|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |       1|      9|    99|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |       0|      5|    99|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |       1|      0|    99|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |       0|    446|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |       1|     72|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |       0|     65|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |       1|     25|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |       0|    591|   728|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |       1|     88|   728|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |       0|     38|   728|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |       1|     11|   728|
|Birth     |PROBIT         |BELARUS      |Normal weight |       0|  13142| 13713|
|Birth     |PROBIT         |BELARUS      |Normal weight |       1|     30| 13713|
|Birth     |PROBIT         |BELARUS      |Underweight   |       0|    537| 13713|
|Birth     |PROBIT         |BELARUS      |Underweight   |       1|      4| 13713|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |       0|    380|   516|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |       1|     36|   516|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |       0|     91|   516|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |       1|      9|   516|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |       0|    585|  1139|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |       1|    217|  1139|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |       0|    229|  1139|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |       1|    108|  1139|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |       0|   8100|  9475|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |       1|    853|  9475|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |       0|    446|  9475|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |       1|     76|  9475|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |       0|   7418| 16687|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |       1|   2667| 16687|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |       0|   5071| 16687|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |       1|   1531| 16687|
|6 months  |LCNI-5         |MALAWI       |Normal weight |       0|    435|   835|
|6 months  |LCNI-5         |MALAWI       |Normal weight |       1|    239|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |       0|     93|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |       1|     68|   835|
|6 months  |MAL-ED         |INDIA        |Normal weight |       0|    142|   227|
|6 months  |MAL-ED         |INDIA        |Normal weight |       1|     37|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |       0|     40|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |       1|      8|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |       0|    164|   228|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |       1|     32|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |       0|     23|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |       1|      9|   228|
|6 months  |MAL-ED         |PERU         |Normal weight |       0|    204|   261|
|6 months  |MAL-ED         |PERU         |Normal weight |       1|     53|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |       0|      2|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |       1|      2|   261|
|6 months  |MAL-ED         |NEPAL        |Normal weight |       0|    220|   234|
|6 months  |MAL-ED         |NEPAL        |Normal weight |       1|     12|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |       0|      2|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |       1|      0|   234|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |       0|    179|   198|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |       1|      4|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |       0|     14|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |       1|      1|   198|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |       0|    165|   240|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |       1|     56|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |       0|     17|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |       1|      2|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |       0|    180|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |       1|     42|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |       0|      9|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |       1|      2|   233|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |       0|    345|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |       1|    109|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |       0|     48|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |       1|     35|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |       0|    534|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |       1|    126|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |       0|     29|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |       1|     22|   711|
|6 months  |PROBIT         |BELARUS      |Normal weight |       0|  12092| 13077|
|6 months  |PROBIT         |BELARUS      |Normal weight |       1|    456| 13077|
|6 months  |PROBIT         |BELARUS      |Underweight   |       0|    500| 13077|
|6 months  |PROBIT         |BELARUS      |Underweight   |       1|     29| 13077|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |       0|    413|   587|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |       1|     67|   587|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |       0|     86|   587|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |       1|     21|   587|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |       0|    631|  1226|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |       1|    241|  1226|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |       0|    244|  1226|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |       1|    110|  1226|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |       0|   1761|  1994|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |       1|    188|  1994|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |       0|     41|  1994|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |       1|      4|  1994|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |       0|   5780|  7243|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |       1|   1085|  7243|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |       0|    300|  7243|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |       1|     78|  7243|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |       0|   2549|  8572|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |       1|   2619|  8572|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |       0|   1813|  8572|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |       1|   1591|  8572|
|24 months |LCNI-5         |MALAWI       |Normal weight |       0|    265|   577|
|24 months |LCNI-5         |MALAWI       |Normal weight |       1|    203|   577|
|24 months |LCNI-5         |MALAWI       |Underweight   |       0|     55|   577|
|24 months |LCNI-5         |MALAWI       |Underweight   |       1|     54|   577|
|24 months |MAL-ED         |INDIA        |Normal weight |       0|     96|   218|
|24 months |MAL-ED         |INDIA        |Normal weight |       1|     76|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |       0|     29|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |       1|     17|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |       0|     95|   199|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |       1|     74|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |       0|     10|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |       1|     20|   199|
|24 months |MAL-ED         |PERU         |Normal weight |       0|    121|   190|
|24 months |MAL-ED         |PERU         |Normal weight |       1|     65|   190|
|24 months |MAL-ED         |PERU         |Underweight   |       0|      3|   190|
|24 months |MAL-ED         |PERU         |Underweight   |       1|      1|   190|
|24 months |MAL-ED         |NEPAL        |Normal weight |       0|    175|   226|
|24 months |MAL-ED         |NEPAL        |Normal weight |       1|     49|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |       0|      1|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |       1|      1|   226|
|24 months |MAL-ED         |BRAZIL       |Normal weight |       0|    142|   159|
|24 months |MAL-ED         |BRAZIL       |Normal weight |       1|      6|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |       0|     10|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |       1|      1|   159|
|24 months |MAL-ED         |TANZANIA     |Normal weight |       0|     49|   208|
|24 months |MAL-ED         |TANZANIA     |Normal weight |       1|    141|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |       0|      8|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |       1|     10|   208|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |       0|    135|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |       1|     73|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |       0|      7|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |       1|      3|   218|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |       0|    164|   429|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |       1|    195|   429|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |       0|     21|   429|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |       1|     49|   429|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |       0|    355|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |       1|    120|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |       0|     23|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |       1|     12|   510|
|24 months |PROBIT         |BELARUS      |Normal weight |       0|   3596|  4000|
|24 months |PROBIT         |BELARUS      |Normal weight |       1|    256|  4000|
|24 months |PROBIT         |BELARUS      |Underweight   |       0|    133|  4000|
|24 months |PROBIT         |BELARUS      |Underweight   |       1|     15|  4000|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |       0|    321|   562|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |       1|    139|   562|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |       0|     60|   562|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |       1|     42|   562|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |       0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |       0|    859|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |       1|    452|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |       0|     37|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |       1|     23|  1371|


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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


