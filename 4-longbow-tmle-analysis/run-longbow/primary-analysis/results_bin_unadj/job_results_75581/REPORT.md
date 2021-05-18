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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country     |gagebrth          | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:-----------|:-----------------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |           0|     58|  299|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |           1|    101|  299|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |           0|     37|  299|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |           1|     60|  299|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |           0|     14|  299|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |           1|     29|  299|
|0-24 months |COHORTS        |INDIA       |Full or late term |           0|    155|  485|
|0-24 months |COHORTS        |INDIA       |Full or late term |           1|     56|  485|
|0-24 months |COHORTS        |INDIA       |Early term        |           0|     97|  485|
|0-24 months |COHORTS        |INDIA       |Early term        |           1|     33|  485|
|0-24 months |COHORTS        |INDIA       |Preterm           |           0|    107|  485|
|0-24 months |COHORTS        |INDIA       |Preterm           |           1|     37|  485|
|0-24 months |COHORTS        |GUATEMALA   |Full or late term |           0|     46|  173|
|0-24 months |COHORTS        |GUATEMALA   |Full or late term |           1|     48|  173|
|0-24 months |COHORTS        |GUATEMALA   |Early term        |           0|     32|  173|
|0-24 months |COHORTS        |GUATEMALA   |Early term        |           1|     21|  173|
|0-24 months |COHORTS        |GUATEMALA   |Preterm           |           0|     13|  173|
|0-24 months |COHORTS        |GUATEMALA   |Preterm           |           1|     13|  173|
|0-24 months |COHORTS        |PHILIPPINES |Full or late term |           0|    264| 1677|
|0-24 months |COHORTS        |PHILIPPINES |Full or late term |           1|    396| 1677|
|0-24 months |COHORTS        |PHILIPPINES |Early term        |           0|    242| 1677|
|0-24 months |COHORTS        |PHILIPPINES |Early term        |           1|    407| 1677|
|0-24 months |COHORTS        |PHILIPPINES |Preterm           |           0|    154| 1677|
|0-24 months |COHORTS        |PHILIPPINES |Preterm           |           1|    214| 1677|
|0-24 months |JiVitA-3       |BANGLADESH  |Full or late term |           0|   2157| 7285|
|0-24 months |JiVitA-3       |BANGLADESH  |Full or late term |           1|   1587| 7285|
|0-24 months |JiVitA-3       |BANGLADESH  |Early term        |           0|   1098| 7285|
|0-24 months |JiVitA-3       |BANGLADESH  |Early term        |           1|    806| 7285|
|0-24 months |JiVitA-3       |BANGLADESH  |Preterm           |           0|    958| 7285|
|0-24 months |JiVitA-3       |BANGLADESH  |Preterm           |           1|    679| 7285|
|0-24 months |Keneba         |GAMBIA      |Full or late term |           0|    210| 1004|
|0-24 months |Keneba         |GAMBIA      |Full or late term |           1|    297| 1004|
|0-24 months |Keneba         |GAMBIA      |Early term        |           0|    138| 1004|
|0-24 months |Keneba         |GAMBIA      |Early term        |           1|    220| 1004|
|0-24 months |Keneba         |GAMBIA      |Preterm           |           0|     60| 1004|
|0-24 months |Keneba         |GAMBIA      |Preterm           |           1|     79| 1004|
|0-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |           0|     34|  310|
|0-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |           1|     67|  310|
|0-24 months |NIH-Crypto     |BANGLADESH  |Early term        |           0|     35|  310|
|0-24 months |NIH-Crypto     |BANGLADESH  |Early term        |           1|     60|  310|
|0-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |           0|     48|  310|
|0-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |           1|     66|  310|
|0-24 months |PROBIT         |BELARUS     |Full or late term |           0|    259| 4408|
|0-24 months |PROBIT         |BELARUS     |Full or late term |           1|   2018| 4408|
|0-24 months |PROBIT         |BELARUS     |Early term        |           0|    249| 4408|
|0-24 months |PROBIT         |BELARUS     |Early term        |           1|   1734| 4408|
|0-24 months |PROBIT         |BELARUS     |Preterm           |           0|     18| 4408|
|0-24 months |PROBIT         |BELARUS     |Preterm           |           1|    130| 4408|
|0-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |           0|    150|  688|
|0-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |           1|    263|  688|
|0-24 months |TanzaniaChild2 |TANZANIA    |Early term        |           0|     58|  688|
|0-24 months |TanzaniaChild2 |TANZANIA    |Early term        |           1|    107|  688|
|0-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |           0|     47|  688|
|0-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |           1|     63|  688|
|0-24 months |Vellore Crypto |INDIA       |Full or late term |           0|     88|  377|
|0-24 months |Vellore Crypto |INDIA       |Full or late term |           1|    147|  377|
|0-24 months |Vellore Crypto |INDIA       |Early term        |           0|     38|  377|
|0-24 months |Vellore Crypto |INDIA       |Early term        |           1|     41|  377|
|0-24 months |Vellore Crypto |INDIA       |Preterm           |           0|     28|  377|
|0-24 months |Vellore Crypto |INDIA       |Preterm           |           1|     35|  377|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |           0|     30|  185|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |           1|     66|  185|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |           0|     19|  185|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |           1|     43|  185|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |           0|     11|  185|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |           1|     16|  185|
|0-6 months  |COHORTS        |INDIA       |Full or late term |           0|     84|  330|
|0-6 months  |COHORTS        |INDIA       |Full or late term |           1|     56|  330|
|0-6 months  |COHORTS        |INDIA       |Early term        |           0|     53|  330|
|0-6 months  |COHORTS        |INDIA       |Early term        |           1|     33|  330|
|0-6 months  |COHORTS        |INDIA       |Preterm           |           0|     67|  330|
|0-6 months  |COHORTS        |INDIA       |Preterm           |           1|     37|  330|
|0-6 months  |COHORTS        |GUATEMALA   |Full or late term |           0|     11|  103|
|0-6 months  |COHORTS        |GUATEMALA   |Full or late term |           1|     46|  103|
|0-6 months  |COHORTS        |GUATEMALA   |Early term        |           0|     11|  103|
|0-6 months  |COHORTS        |GUATEMALA   |Early term        |           1|     20|  103|
|0-6 months  |COHORTS        |GUATEMALA   |Preterm           |           0|      3|  103|
|0-6 months  |COHORTS        |GUATEMALA   |Preterm           |           1|     12|  103|
|0-6 months  |COHORTS        |PHILIPPINES |Full or late term |           0|     81|  744|
|0-6 months  |COHORTS        |PHILIPPINES |Full or late term |           1|    214|  744|
|0-6 months  |COHORTS        |PHILIPPINES |Early term        |           0|     64|  744|
|0-6 months  |COHORTS        |PHILIPPINES |Early term        |           1|    209|  744|
|0-6 months  |COHORTS        |PHILIPPINES |Preterm           |           0|     51|  744|
|0-6 months  |COHORTS        |PHILIPPINES |Preterm           |           1|    125|  744|
|0-6 months  |JiVitA-3       |BANGLADESH  |Full or late term |           0|    720| 4551|
|0-6 months  |JiVitA-3       |BANGLADESH  |Full or late term |           1|   1587| 4551|
|0-6 months  |JiVitA-3       |BANGLADESH  |Early term        |           0|    390| 4551|
|0-6 months  |JiVitA-3       |BANGLADESH  |Early term        |           1|    806| 4551|
|0-6 months  |JiVitA-3       |BANGLADESH  |Preterm           |           0|    369| 4551|
|0-6 months  |JiVitA-3       |BANGLADESH  |Preterm           |           1|    679| 4551|
|0-6 months  |Keneba         |GAMBIA      |Full or late term |           0|     45|  415|
|0-6 months  |Keneba         |GAMBIA      |Full or late term |           1|    159|  415|
|0-6 months  |Keneba         |GAMBIA      |Early term        |           0|     28|  415|
|0-6 months  |Keneba         |GAMBIA      |Early term        |           1|    131|  415|
|0-6 months  |Keneba         |GAMBIA      |Preterm           |           0|     15|  415|
|0-6 months  |Keneba         |GAMBIA      |Preterm           |           1|     37|  415|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |           0|      5|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |           1|     61|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Early term        |           0|      8|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Early term        |           1|     54|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |           0|      8|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |           1|     61|  197|
|0-6 months  |PROBIT         |BELARUS     |Full or late term |           0|    211| 4267|
|0-6 months  |PROBIT         |BELARUS     |Full or late term |           1|   2007| 4267|
|0-6 months  |PROBIT         |BELARUS     |Early term        |           0|    197| 4267|
|0-6 months  |PROBIT         |BELARUS     |Early term        |           1|   1707| 4267|
|0-6 months  |PROBIT         |BELARUS     |Preterm           |           0|     15| 4267|
|0-6 months  |PROBIT         |BELARUS     |Preterm           |           1|    130| 4267|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |           0|     50|  324|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |           1|    136|  324|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Early term        |           0|     27|  324|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Early term        |           1|     55|  324|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |           0|     17|  324|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |           1|     39|  324|
|0-6 months  |Vellore Crypto |INDIA       |Full or late term |           0|     45|  229|
|0-6 months  |Vellore Crypto |INDIA       |Full or late term |           1|     93|  229|
|0-6 months  |Vellore Crypto |INDIA       |Early term        |           0|     25|  229|
|0-6 months  |Vellore Crypto |INDIA       |Early term        |           1|     31|  229|
|0-6 months  |Vellore Crypto |INDIA       |Preterm           |           0|     13|  229|
|0-6 months  |Vellore Crypto |INDIA       |Preterm           |           1|     22|  229|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |           0|     28|  114|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |           1|     35|  114|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |           0|     18|  114|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |           1|     17|  114|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |           0|      3|  114|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |           1|     13|  114|
|6-24 months |COHORTS        |INDIA       |Full or late term |           0|     71|  155|
|6-24 months |COHORTS        |INDIA       |Full or late term |           1|      0|  155|
|6-24 months |COHORTS        |INDIA       |Early term        |           0|     44|  155|
|6-24 months |COHORTS        |INDIA       |Early term        |           1|      0|  155|
|6-24 months |COHORTS        |INDIA       |Preterm           |           0|     40|  155|
|6-24 months |COHORTS        |INDIA       |Preterm           |           1|      0|  155|
|6-24 months |COHORTS        |GUATEMALA   |Full or late term |           0|     35|   70|
|6-24 months |COHORTS        |GUATEMALA   |Full or late term |           1|      2|   70|
|6-24 months |COHORTS        |GUATEMALA   |Early term        |           0|     21|   70|
|6-24 months |COHORTS        |GUATEMALA   |Early term        |           1|      1|   70|
|6-24 months |COHORTS        |GUATEMALA   |Preterm           |           0|     10|   70|
|6-24 months |COHORTS        |GUATEMALA   |Preterm           |           1|      1|   70|
|6-24 months |COHORTS        |PHILIPPINES |Full or late term |           0|    183|  933|
|6-24 months |COHORTS        |PHILIPPINES |Full or late term |           1|    182|  933|
|6-24 months |COHORTS        |PHILIPPINES |Early term        |           0|    178|  933|
|6-24 months |COHORTS        |PHILIPPINES |Early term        |           1|    198|  933|
|6-24 months |COHORTS        |PHILIPPINES |Preterm           |           0|    103|  933|
|6-24 months |COHORTS        |PHILIPPINES |Preterm           |           1|     89|  933|
|6-24 months |JiVitA-3       |BANGLADESH  |Full or late term |           0|   1437| 2734|
|6-24 months |JiVitA-3       |BANGLADESH  |Full or late term |           1|      0| 2734|
|6-24 months |JiVitA-3       |BANGLADESH  |Early term        |           0|    708| 2734|
|6-24 months |JiVitA-3       |BANGLADESH  |Early term        |           1|      0| 2734|
|6-24 months |JiVitA-3       |BANGLADESH  |Preterm           |           0|    589| 2734|
|6-24 months |JiVitA-3       |BANGLADESH  |Preterm           |           1|      0| 2734|
|6-24 months |Keneba         |GAMBIA      |Full or late term |           0|    165|  589|
|6-24 months |Keneba         |GAMBIA      |Full or late term |           1|    138|  589|
|6-24 months |Keneba         |GAMBIA      |Early term        |           0|    110|  589|
|6-24 months |Keneba         |GAMBIA      |Early term        |           1|     89|  589|
|6-24 months |Keneba         |GAMBIA      |Preterm           |           0|     45|  589|
|6-24 months |Keneba         |GAMBIA      |Preterm           |           1|     42|  589|
|6-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |           0|     29|  113|
|6-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |           1|      6|  113|
|6-24 months |NIH-Crypto     |BANGLADESH  |Early term        |           0|     27|  113|
|6-24 months |NIH-Crypto     |BANGLADESH  |Early term        |           1|      6|  113|
|6-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |           0|     40|  113|
|6-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |           1|      5|  113|
|6-24 months |PROBIT         |BELARUS     |Full or late term |           0|     48|  141|
|6-24 months |PROBIT         |BELARUS     |Full or late term |           1|     11|  141|
|6-24 months |PROBIT         |BELARUS     |Early term        |           0|     52|  141|
|6-24 months |PROBIT         |BELARUS     |Early term        |           1|     27|  141|
|6-24 months |PROBIT         |BELARUS     |Preterm           |           0|      3|  141|
|6-24 months |PROBIT         |BELARUS     |Preterm           |           1|      0|  141|
|6-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |           0|    100|  364|
|6-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |           1|    127|  364|
|6-24 months |TanzaniaChild2 |TANZANIA    |Early term        |           0|     31|  364|
|6-24 months |TanzaniaChild2 |TANZANIA    |Early term        |           1|     52|  364|
|6-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |           0|     30|  364|
|6-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |           1|     24|  364|
|6-24 months |Vellore Crypto |INDIA       |Full or late term |           0|     43|  148|
|6-24 months |Vellore Crypto |INDIA       |Full or late term |           1|     54|  148|
|6-24 months |Vellore Crypto |INDIA       |Early term        |           0|     13|  148|
|6-24 months |Vellore Crypto |INDIA       |Early term        |           1|     10|  148|
|6-24 months |Vellore Crypto |INDIA       |Preterm           |           0|     15|  148|
|6-24 months |Vellore Crypto |INDIA       |Preterm           |           1|     13|  148|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





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


