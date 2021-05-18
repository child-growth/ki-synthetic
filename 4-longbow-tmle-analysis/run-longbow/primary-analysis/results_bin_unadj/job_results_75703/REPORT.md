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

**Outcome Variable:** pers_wast

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

|agecat      |studyid        |country     |gagebrth          | pers_wast| n_cell|     n|
|:-----------|:--------------|:-----------|:-----------------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |         0|    183|   348|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |         1|     14|   348|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |         0|     99|   348|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |         1|      3|   348|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |         0|     46|   348|
|0-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |         1|      3|   348|
|0-24 months |COHORTS        |INDIA       |Full or late term |         0|    379|  1009|
|0-24 months |COHORTS        |INDIA       |Full or late term |         1|     36|  1009|
|0-24 months |COHORTS        |INDIA       |Early term        |         0|    252|  1009|
|0-24 months |COHORTS        |INDIA       |Early term        |         1|     25|  1009|
|0-24 months |COHORTS        |INDIA       |Preterm           |         0|    291|  1009|
|0-24 months |COHORTS        |INDIA       |Preterm           |         1|     26|  1009|
|0-24 months |COHORTS        |GUATEMALA   |Full or late term |         0|    267|   495|
|0-24 months |COHORTS        |GUATEMALA   |Full or late term |         1|      6|   495|
|0-24 months |COHORTS        |GUATEMALA   |Early term        |         0|    139|   495|
|0-24 months |COHORTS        |GUATEMALA   |Early term        |         1|      7|   495|
|0-24 months |COHORTS        |GUATEMALA   |Preterm           |         0|     74|   495|
|0-24 months |COHORTS        |GUATEMALA   |Preterm           |         1|      2|   495|
|0-24 months |COHORTS        |PHILIPPINES |Full or late term |         0|   1047|  2786|
|0-24 months |COHORTS        |PHILIPPINES |Full or late term |         1|     49|  2786|
|0-24 months |COHORTS        |PHILIPPINES |Early term        |         0|   1044|  2786|
|0-24 months |COHORTS        |PHILIPPINES |Early term        |         1|     52|  2786|
|0-24 months |COHORTS        |PHILIPPINES |Preterm           |         0|    553|  2786|
|0-24 months |COHORTS        |PHILIPPINES |Preterm           |         1|     41|  2786|
|0-24 months |JiVitA-3       |BANGLADESH  |Full or late term |         0|   7655| 15269|
|0-24 months |JiVitA-3       |BANGLADESH  |Full or late term |         1|    470| 15269|
|0-24 months |JiVitA-3       |BANGLADESH  |Early term        |         0|   3713| 15269|
|0-24 months |JiVitA-3       |BANGLADESH  |Early term        |         1|    216| 15269|
|0-24 months |JiVitA-3       |BANGLADESH  |Preterm           |         0|   3034| 15269|
|0-24 months |JiVitA-3       |BANGLADESH  |Preterm           |         1|    181| 15269|
|0-24 months |Keneba         |GAMBIA      |Full or late term |         0|    664|  1430|
|0-24 months |Keneba         |GAMBIA      |Full or late term |         1|     45|  1430|
|0-24 months |Keneba         |GAMBIA      |Early term        |         0|    508|  1430|
|0-24 months |Keneba         |GAMBIA      |Early term        |         1|     30|  1430|
|0-24 months |Keneba         |GAMBIA      |Preterm           |         0|    167|  1430|
|0-24 months |Keneba         |GAMBIA      |Preterm           |         1|     16|  1430|
|0-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |         0|    206|   730|
|0-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |         1|      7|   730|
|0-24 months |NIH-Crypto     |BANGLADESH  |Early term        |         0|    207|   730|
|0-24 months |NIH-Crypto     |BANGLADESH  |Early term        |         1|      6|   730|
|0-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |         0|    291|   730|
|0-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |         1|     13|   730|
|0-24 months |PROBIT         |BELARUS     |Full or late term |         0|   8410| 16583|
|0-24 months |PROBIT         |BELARUS     |Full or late term |         1|     69| 16583|
|0-24 months |PROBIT         |BELARUS     |Early term        |         0|   7463| 16583|
|0-24 months |PROBIT         |BELARUS     |Early term        |         1|     60| 16583|
|0-24 months |PROBIT         |BELARUS     |Preterm           |         0|    576| 16583|
|0-24 months |PROBIT         |BELARUS     |Preterm           |         1|      5| 16583|
|0-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |         0|   1224|  2051|
|0-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |         1|     30|  2051|
|0-24 months |TanzaniaChild2 |TANZANIA    |Early term        |         0|    462|  2051|
|0-24 months |TanzaniaChild2 |TANZANIA    |Early term        |         1|     10|  2051|
|0-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |         0|    310|  2051|
|0-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |         1|     15|  2051|
|0-24 months |Vellore Crypto |INDIA       |Full or late term |         0|    219|   394|
|0-24 months |Vellore Crypto |INDIA       |Full or late term |         1|     25|   394|
|0-24 months |Vellore Crypto |INDIA       |Early term        |         0|     84|   394|
|0-24 months |Vellore Crypto |INDIA       |Early term        |         1|     11|   394|
|0-24 months |Vellore Crypto |INDIA       |Preterm           |         0|     46|   394|
|0-24 months |Vellore Crypto |INDIA       |Preterm           |         1|      9|   394|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |         0|    166|   333|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |         1|     23|   333|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |         0|     83|   333|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |         1|     13|   333|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |         0|     40|   333|
|0-6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |         1|      8|   333|
|0-6 months  |COHORTS        |PHILIPPINES |Full or late term |         0|    324|   849|
|0-6 months  |COHORTS        |PHILIPPINES |Full or late term |         1|     17|   849|
|0-6 months  |COHORTS        |PHILIPPINES |Early term        |         0|    309|   849|
|0-6 months  |COHORTS        |PHILIPPINES |Early term        |         1|     14|   849|
|0-6 months  |COHORTS        |PHILIPPINES |Preterm           |         0|    164|   849|
|0-6 months  |COHORTS        |PHILIPPINES |Preterm           |         1|     21|   849|
|0-6 months  |JiVitA-3       |BANGLADESH  |Full or late term |         0|     26|    49|
|0-6 months  |JiVitA-3       |BANGLADESH  |Full or late term |         1|      1|    49|
|0-6 months  |JiVitA-3       |BANGLADESH  |Early term        |         0|      9|    49|
|0-6 months  |JiVitA-3       |BANGLADESH  |Early term        |         1|      1|    49|
|0-6 months  |JiVitA-3       |BANGLADESH  |Preterm           |         0|     12|    49|
|0-6 months  |JiVitA-3       |BANGLADESH  |Preterm           |         1|      0|    49|
|0-6 months  |Keneba         |GAMBIA      |Full or late term |         0|    557|  1182|
|0-6 months  |Keneba         |GAMBIA      |Full or late term |         1|     21|  1182|
|0-6 months  |Keneba         |GAMBIA      |Early term        |         0|    434|  1182|
|0-6 months  |Keneba         |GAMBIA      |Early term        |         1|     14|  1182|
|0-6 months  |Keneba         |GAMBIA      |Preterm           |         0|    148|  1182|
|0-6 months  |Keneba         |GAMBIA      |Preterm           |         1|      8|  1182|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |         0|     73|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |         1|      3|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Early term        |         0|     75|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Early term        |         1|      0|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |         0|     97|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |         1|      2|   250|
|0-6 months  |PROBIT         |BELARUS     |Full or late term |         0|   6396| 13534|
|0-6 months  |PROBIT         |BELARUS     |Full or late term |         1|    586| 13534|
|0-6 months  |PROBIT         |BELARUS     |Early term        |         0|   5623| 13534|
|0-6 months  |PROBIT         |BELARUS     |Early term        |         1|    473| 13534|
|0-6 months  |PROBIT         |BELARUS     |Preterm           |         0|    418| 13534|
|0-6 months  |PROBIT         |BELARUS     |Preterm           |         1|     38| 13534|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |         0|   1163|  1956|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |         1|     28|  1956|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Early term        |         0|    440|  1956|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Early term        |         1|     11|  1956|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |         0|    306|  1956|
|0-6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |         1|      8|  1956|
|0-6 months  |Vellore Crypto |INDIA       |Full or late term |         0|    204|   386|
|0-6 months  |Vellore Crypto |INDIA       |Full or late term |         1|     35|   386|
|0-6 months  |Vellore Crypto |INDIA       |Early term        |         0|     76|   386|
|0-6 months  |Vellore Crypto |INDIA       |Early term        |         1|     18|   386|
|0-6 months  |Vellore Crypto |INDIA       |Preterm           |         0|     45|   386|
|0-6 months  |Vellore Crypto |INDIA       |Preterm           |         1|      8|   386|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |         0|    183|   348|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |         1|     14|   348|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |         0|     99|   348|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Early term        |         1|      3|   348|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |         0|     46|   348|
|6-24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |         1|      3|   348|
|6-24 months |COHORTS        |INDIA       |Full or late term |         0|    379|  1009|
|6-24 months |COHORTS        |INDIA       |Full or late term |         1|     36|  1009|
|6-24 months |COHORTS        |INDIA       |Early term        |         0|    252|  1009|
|6-24 months |COHORTS        |INDIA       |Early term        |         1|     25|  1009|
|6-24 months |COHORTS        |INDIA       |Preterm           |         0|    291|  1009|
|6-24 months |COHORTS        |INDIA       |Preterm           |         1|     26|  1009|
|6-24 months |COHORTS        |GUATEMALA   |Full or late term |         0|    267|   495|
|6-24 months |COHORTS        |GUATEMALA   |Full or late term |         1|      6|   495|
|6-24 months |COHORTS        |GUATEMALA   |Early term        |         0|    139|   495|
|6-24 months |COHORTS        |GUATEMALA   |Early term        |         1|      7|   495|
|6-24 months |COHORTS        |GUATEMALA   |Preterm           |         0|     74|   495|
|6-24 months |COHORTS        |GUATEMALA   |Preterm           |         1|      2|   495|
|6-24 months |COHORTS        |PHILIPPINES |Full or late term |         0|   1047|  2786|
|6-24 months |COHORTS        |PHILIPPINES |Full or late term |         1|     49|  2786|
|6-24 months |COHORTS        |PHILIPPINES |Early term        |         0|   1044|  2786|
|6-24 months |COHORTS        |PHILIPPINES |Early term        |         1|     52|  2786|
|6-24 months |COHORTS        |PHILIPPINES |Preterm           |         0|    553|  2786|
|6-24 months |COHORTS        |PHILIPPINES |Preterm           |         1|     41|  2786|
|6-24 months |JiVitA-3       |BANGLADESH  |Full or late term |         0|   7655| 15269|
|6-24 months |JiVitA-3       |BANGLADESH  |Full or late term |         1|    470| 15269|
|6-24 months |JiVitA-3       |BANGLADESH  |Early term        |         0|   3713| 15269|
|6-24 months |JiVitA-3       |BANGLADESH  |Early term        |         1|    216| 15269|
|6-24 months |JiVitA-3       |BANGLADESH  |Preterm           |         0|   3034| 15269|
|6-24 months |JiVitA-3       |BANGLADESH  |Preterm           |         1|    181| 15269|
|6-24 months |Keneba         |GAMBIA      |Full or late term |         0|    664|  1430|
|6-24 months |Keneba         |GAMBIA      |Full or late term |         1|     45|  1430|
|6-24 months |Keneba         |GAMBIA      |Early term        |         0|    508|  1430|
|6-24 months |Keneba         |GAMBIA      |Early term        |         1|     30|  1430|
|6-24 months |Keneba         |GAMBIA      |Preterm           |         0|    167|  1430|
|6-24 months |Keneba         |GAMBIA      |Preterm           |         1|     16|  1430|
|6-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |         0|    206|   730|
|6-24 months |NIH-Crypto     |BANGLADESH  |Full or late term |         1|      7|   730|
|6-24 months |NIH-Crypto     |BANGLADESH  |Early term        |         0|    207|   730|
|6-24 months |NIH-Crypto     |BANGLADESH  |Early term        |         1|      6|   730|
|6-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |         0|    291|   730|
|6-24 months |NIH-Crypto     |BANGLADESH  |Preterm           |         1|     13|   730|
|6-24 months |PROBIT         |BELARUS     |Full or late term |         0|   8410| 16583|
|6-24 months |PROBIT         |BELARUS     |Full or late term |         1|     69| 16583|
|6-24 months |PROBIT         |BELARUS     |Early term        |         0|   7463| 16583|
|6-24 months |PROBIT         |BELARUS     |Early term        |         1|     60| 16583|
|6-24 months |PROBIT         |BELARUS     |Preterm           |         0|    576| 16583|
|6-24 months |PROBIT         |BELARUS     |Preterm           |         1|      5| 16583|
|6-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |         0|   1224|  2051|
|6-24 months |TanzaniaChild2 |TANZANIA    |Full or late term |         1|     30|  2051|
|6-24 months |TanzaniaChild2 |TANZANIA    |Early term        |         0|    462|  2051|
|6-24 months |TanzaniaChild2 |TANZANIA    |Early term        |         1|     10|  2051|
|6-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |         0|    310|  2051|
|6-24 months |TanzaniaChild2 |TANZANIA    |Preterm           |         1|     15|  2051|
|6-24 months |Vellore Crypto |INDIA       |Full or late term |         0|    219|   394|
|6-24 months |Vellore Crypto |INDIA       |Full or late term |         1|     25|   394|
|6-24 months |Vellore Crypto |INDIA       |Early term        |         0|     84|   394|
|6-24 months |Vellore Crypto |INDIA       |Early term        |         1|     11|   394|
|6-24 months |Vellore Crypto |INDIA       |Preterm           |         0|     46|   394|
|6-24 months |Vellore Crypto |INDIA       |Preterm           |         1|      9|   394|


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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


