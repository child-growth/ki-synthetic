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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country     |gagebrth          | swasted| n_cell|     n|
|:---------|:--------------|:-----------|:-----------------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |       0|     52|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |       1|      0|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |       0|     23|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |       1|      0|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |       0|      7|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |       1|      1|    83|
|Birth     |COHORTS        |INDIA       |Full or late term |       0|    434|  1111|
|Birth     |COHORTS        |INDIA       |Full or late term |       1|     22|  1111|
|Birth     |COHORTS        |INDIA       |Early term        |       0|    283|  1111|
|Birth     |COHORTS        |INDIA       |Early term        |       1|     14|  1111|
|Birth     |COHORTS        |INDIA       |Preterm           |       0|    335|  1111|
|Birth     |COHORTS        |INDIA       |Preterm           |       1|     23|  1111|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |       0|    185|   361|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |       1|     20|   361|
|Birth     |COHORTS        |GUATEMALA   |Early term        |       0|    103|   361|
|Birth     |COHORTS        |GUATEMALA   |Early term        |       1|      5|   361|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |       0|     46|   361|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |       1|      2|   361|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |       0|   1095|  2875|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |       1|     45|  2875|
|Birth     |COHORTS        |PHILIPPINES |Early term        |       0|   1077|  2875|
|Birth     |COHORTS        |PHILIPPINES |Early term        |       1|     48|  2875|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |       0|    583|  2875|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |       1|     27|  2875|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |       0|   8767| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |       1|    157| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |       0|   4472| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |       1|     93| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |       0|   3820| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |       1|     85| 17394|
|Birth     |Keneba         |GAMBIA      |Full or late term |       0|    415|   922|
|Birth     |Keneba         |GAMBIA      |Full or late term |       1|     23|   922|
|Birth     |Keneba         |GAMBIA      |Early term        |       0|    322|   922|
|Birth     |Keneba         |GAMBIA      |Early term        |       1|     34|   922|
|Birth     |Keneba         |GAMBIA      |Preterm           |       0|    117|   922|
|Birth     |Keneba         |GAMBIA      |Preterm           |       1|     11|   922|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |       0|    192|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |       1|     13|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |       0|    199|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |       1|     16|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |       0|    269|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |       1|     18|   707|
|Birth     |PROBIT         |BELARUS     |Full or late term |       0|   6640| 13817|
|Birth     |PROBIT         |BELARUS     |Full or late term |       1|    480| 13817|
|Birth     |PROBIT         |BELARUS     |Early term        |       0|   5825| 13817|
|Birth     |PROBIT         |BELARUS     |Early term        |       1|    417| 13817|
|Birth     |PROBIT         |BELARUS     |Preterm           |       0|    433| 13817|
|Birth     |PROBIT         |BELARUS     |Preterm           |       1|     22| 13817|
|Birth     |Vellore Crypto |INDIA       |Full or late term |       0|    171|   331|
|Birth     |Vellore Crypto |INDIA       |Full or late term |       1|     31|   331|
|Birth     |Vellore Crypto |INDIA       |Early term        |       0|     68|   331|
|Birth     |Vellore Crypto |INDIA       |Early term        |       1|     14|   331|
|Birth     |Vellore Crypto |INDIA       |Preterm           |       0|     38|   331|
|Birth     |Vellore Crypto |INDIA       |Preterm           |       1|      9|   331|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |       0|    186|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |       1|      8|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |       0|     98|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |       1|      2|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |       0|     48|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |       1|      1|   343|
|6 months  |COHORTS        |INDIA       |Full or late term |       0|    479|  1202|
|6 months  |COHORTS        |INDIA       |Full or late term |       1|     17|  1202|
|6 months  |COHORTS        |INDIA       |Early term        |       0|    309|  1202|
|6 months  |COHORTS        |INDIA       |Early term        |       1|     19|  1202|
|6 months  |COHORTS        |INDIA       |Preterm           |       0|    370|  1202|
|6 months  |COHORTS        |INDIA       |Preterm           |       1|      8|  1202|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |       0|    250|   456|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |       1|      1|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |       0|    131|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |       1|      2|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |       0|     72|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |       1|      0|   456|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |       0|   1038|  2682|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |       1|     14|  2682|
|6 months  |COHORTS        |PHILIPPINES |Early term        |       0|   1047|  2682|
|6 months  |COHORTS        |PHILIPPINES |Early term        |       1|     14|  2682|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |       0|    562|  2682|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |       1|      7|  2682|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |       0|   8490| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |       1|    111| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |       0|   4117| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |       1|     61| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |       0|   3379| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |       1|     49| 16207|
|6 months  |Keneba         |GAMBIA      |Full or late term |       0|    582|  1218|
|6 months  |Keneba         |GAMBIA      |Full or late term |       1|      9|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |       0|    461|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |       1|      3|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |       0|    158|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |       1|      5|  1218|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |       0|    209|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |       0|    207|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |       0|    299|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |       1|      0|   715|
|6 months  |PROBIT         |BELARUS     |Full or late term |       0|   8038| 15757|
|6 months  |PROBIT         |BELARUS     |Full or late term |       1|      3| 15757|
|6 months  |PROBIT         |BELARUS     |Early term        |       0|   7160| 15757|
|6 months  |PROBIT         |BELARUS     |Early term        |       1|      6| 15757|
|6 months  |PROBIT         |BELARUS     |Preterm           |       0|    550| 15757|
|6 months  |PROBIT         |BELARUS     |Preterm           |       1|      0| 15757|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |       0|   1168|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |       1|      6|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |       0|    448|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |       1|      2|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |       0|    300|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |       1|      3|  1927|
|6 months  |Vellore Crypto |INDIA       |Full or late term |       0|    234|   392|
|6 months  |Vellore Crypto |INDIA       |Full or late term |       1|      9|   392|
|6 months  |Vellore Crypto |INDIA       |Early term        |       0|     86|   392|
|6 months  |Vellore Crypto |INDIA       |Early term        |       1|      9|   392|
|6 months  |Vellore Crypto |INDIA       |Preterm           |       0|     51|   392|
|6 months  |Vellore Crypto |INDIA       |Preterm           |       1|      3|   392|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |       0|    193|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |       1|      3|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |       0|    102|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |       1|      0|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |       0|     49|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |       1|      0|   347|
|24 months |COHORTS        |INDIA       |Full or late term |       0|    406|   989|
|24 months |COHORTS        |INDIA       |Full or late term |       1|      3|   989|
|24 months |COHORTS        |INDIA       |Early term        |       0|    268|   989|
|24 months |COHORTS        |INDIA       |Early term        |       1|      3|   989|
|24 months |COHORTS        |INDIA       |Preterm           |       0|    303|   989|
|24 months |COHORTS        |INDIA       |Preterm           |       1|      6|   989|
|24 months |COHORTS        |GUATEMALA   |Full or late term |       0|    267|   493|
|24 months |COHORTS        |GUATEMALA   |Full or late term |       1|      1|   493|
|24 months |COHORTS        |GUATEMALA   |Early term        |       0|    144|   493|
|24 months |COHORTS        |GUATEMALA   |Early term        |       1|      1|   493|
|24 months |COHORTS        |GUATEMALA   |Preterm           |       0|     80|   493|
|24 months |COHORTS        |GUATEMALA   |Preterm           |       1|      0|   493|
|24 months |COHORTS        |PHILIPPINES |Full or late term |       0|    939|  2426|
|24 months |COHORTS        |PHILIPPINES |Full or late term |       1|     13|  2426|
|24 months |COHORTS        |PHILIPPINES |Early term        |       0|    952|  2426|
|24 months |COHORTS        |PHILIPPINES |Early term        |       1|      6|  2426|
|24 months |COHORTS        |PHILIPPINES |Preterm           |       0|    510|  2426|
|24 months |COHORTS        |PHILIPPINES |Preterm           |       1|      6|  2426|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |       0|   4188|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |       1|    157|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |       0|   2053|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |       1|     82|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |       0|   1757|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |       1|     81|  8318|
|24 months |Keneba         |GAMBIA      |Full or late term |       0|    497|  1032|
|24 months |Keneba         |GAMBIA      |Full or late term |       1|     11|  1032|
|24 months |Keneba         |GAMBIA      |Early term        |       0|    392|  1032|
|24 months |Keneba         |GAMBIA      |Early term        |       1|      4|  1032|
|24 months |Keneba         |GAMBIA      |Preterm           |       0|    125|  1032|
|24 months |Keneba         |GAMBIA      |Preterm           |       1|      3|  1032|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |       0|    149|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |       1|      1|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |       0|    148|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |       1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |       0|    213|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |       1|      3|   514|
|24 months |PROBIT         |BELARUS     |Full or late term |       0|   1993|  3970|
|24 months |PROBIT         |BELARUS     |Full or late term |       1|      6|  3970|
|24 months |PROBIT         |BELARUS     |Early term        |       0|   1827|  3970|
|24 months |PROBIT         |BELARUS     |Early term        |       1|      1|  3970|
|24 months |PROBIT         |BELARUS     |Preterm           |       0|    143|  3970|
|24 months |PROBIT         |BELARUS     |Preterm           |       1|      0|  3970|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |       1|      0|     6|
|24 months |Vellore Crypto |INDIA       |Full or late term |       0|    241|   393|
|24 months |Vellore Crypto |INDIA       |Full or late term |       1|      2|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |       0|     93|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |       1|      2|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |       0|     55|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |       1|      0|   393|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


