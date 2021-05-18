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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country     |gagebrth          | wasted| n_cell|     n|
|:---------|:--------------|:-----------|:-----------------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |      0|     48|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |      1|      4|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |      0|     17|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |      1|      6|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |      0|      7|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |      1|      1|    83|
|Birth     |COHORTS        |INDIA       |Full or late term |      0|    370|  1111|
|Birth     |COHORTS        |INDIA       |Full or late term |      1|     86|  1111|
|Birth     |COHORTS        |INDIA       |Early term        |      0|    248|  1111|
|Birth     |COHORTS        |INDIA       |Early term        |      1|     49|  1111|
|Birth     |COHORTS        |INDIA       |Preterm           |      0|    297|  1111|
|Birth     |COHORTS        |INDIA       |Preterm           |      1|     61|  1111|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |      0|    154|   361|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |      1|     51|   361|
|Birth     |COHORTS        |GUATEMALA   |Early term        |      0|     82|   361|
|Birth     |COHORTS        |GUATEMALA   |Early term        |      1|     26|   361|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |      0|     34|   361|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |      1|     14|   361|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |      0|    968|  2875|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |      1|    172|  2875|
|Birth     |COHORTS        |PHILIPPINES |Early term        |      0|    955|  2875|
|Birth     |COHORTS        |PHILIPPINES |Early term        |      1|    170|  2875|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |      0|    505|  2875|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |      1|    105|  2875|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |      0|   7939| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |      1|    985| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |      0|   4058| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |      1|    507| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |      0|   3492| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |      1|    413| 17394|
|Birth     |Keneba         |GAMBIA      |Full or late term |      0|    328|   922|
|Birth     |Keneba         |GAMBIA      |Full or late term |      1|    110|   922|
|Birth     |Keneba         |GAMBIA      |Early term        |      0|    254|   922|
|Birth     |Keneba         |GAMBIA      |Early term        |      1|    102|   922|
|Birth     |Keneba         |GAMBIA      |Preterm           |      0|    101|   922|
|Birth     |Keneba         |GAMBIA      |Preterm           |      1|     27|   922|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |      0|    145|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |      1|     60|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |      0|    162|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |      1|     53|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |      0|    228|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |      1|     59|   707|
|Birth     |PROBIT         |BELARUS     |Full or late term |      0|   5605| 13817|
|Birth     |PROBIT         |BELARUS     |Full or late term |      1|   1515| 13817|
|Birth     |PROBIT         |BELARUS     |Early term        |      0|   4950| 13817|
|Birth     |PROBIT         |BELARUS     |Early term        |      1|   1292| 13817|
|Birth     |PROBIT         |BELARUS     |Preterm           |      0|    356| 13817|
|Birth     |PROBIT         |BELARUS     |Preterm           |      1|     99| 13817|
|Birth     |Vellore Crypto |INDIA       |Full or late term |      0|    149|   331|
|Birth     |Vellore Crypto |INDIA       |Full or late term |      1|     53|   331|
|Birth     |Vellore Crypto |INDIA       |Early term        |      0|     59|   331|
|Birth     |Vellore Crypto |INDIA       |Early term        |      1|     23|   331|
|Birth     |Vellore Crypto |INDIA       |Preterm           |      0|     32|   331|
|Birth     |Vellore Crypto |INDIA       |Preterm           |      1|     15|   331|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |      0|    170|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |      1|     24|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |      0|     89|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |      1|     11|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |      0|     41|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |      1|      8|   343|
|6 months  |COHORTS        |INDIA       |Full or late term |      0|    429|  1202|
|6 months  |COHORTS        |INDIA       |Full or late term |      1|     67|  1202|
|6 months  |COHORTS        |INDIA       |Early term        |      0|    283|  1202|
|6 months  |COHORTS        |INDIA       |Early term        |      1|     45|  1202|
|6 months  |COHORTS        |INDIA       |Preterm           |      0|    342|  1202|
|6 months  |COHORTS        |INDIA       |Preterm           |      1|     36|  1202|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |      0|    243|   456|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |      1|      8|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |      0|    128|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |      1|      5|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |      0|     71|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |      1|      1|   456|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |      0|    996|  2682|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |      1|     56|  2682|
|6 months  |COHORTS        |PHILIPPINES |Early term        |      0|    996|  2682|
|6 months  |COHORTS        |PHILIPPINES |Early term        |      1|     65|  2682|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |      0|    530|  2682|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |      1|     39|  2682|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |      0|   7901| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |      1|    700| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |      0|   3799| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |      1|    379| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |      0|   3131| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |      1|    297| 16207|
|6 months  |Keneba         |GAMBIA      |Full or late term |      0|    549|  1218|
|6 months  |Keneba         |GAMBIA      |Full or late term |      1|     42|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |      0|    446|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |      1|     18|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |      0|    152|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |      1|     11|  1218|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |      0|    203|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |      1|      6|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |      0|    200|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |      1|      7|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |      0|    291|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |      1|      8|   715|
|6 months  |PROBIT         |BELARUS     |Full or late term |      0|   7996| 15757|
|6 months  |PROBIT         |BELARUS     |Full or late term |      1|     45| 15757|
|6 months  |PROBIT         |BELARUS     |Early term        |      0|   7108| 15757|
|6 months  |PROBIT         |BELARUS     |Early term        |      1|     58| 15757|
|6 months  |PROBIT         |BELARUS     |Preterm           |      0|    545| 15757|
|6 months  |PROBIT         |BELARUS     |Preterm           |      1|      5| 15757|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |      0|   1126|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |      1|     48|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |      0|    431|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |      1|     19|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |      0|    288|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |      1|     15|  1927|
|6 months  |Vellore Crypto |INDIA       |Full or late term |      0|    215|   392|
|6 months  |Vellore Crypto |INDIA       |Full or late term |      1|     28|   392|
|6 months  |Vellore Crypto |INDIA       |Early term        |      0|     80|   392|
|6 months  |Vellore Crypto |INDIA       |Early term        |      1|     15|   392|
|6 months  |Vellore Crypto |INDIA       |Preterm           |      0|     46|   392|
|6 months  |Vellore Crypto |INDIA       |Preterm           |      1|      8|   392|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |      0|    182|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |      1|     14|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |      0|     98|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |      1|      4|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |      0|     45|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |      1|      4|   347|
|24 months |COHORTS        |INDIA       |Full or late term |      0|    375|   989|
|24 months |COHORTS        |INDIA       |Full or late term |      1|     34|   989|
|24 months |COHORTS        |INDIA       |Early term        |      0|    247|   989|
|24 months |COHORTS        |INDIA       |Early term        |      1|     24|   989|
|24 months |COHORTS        |INDIA       |Preterm           |      0|    286|   989|
|24 months |COHORTS        |INDIA       |Preterm           |      1|     23|   989|
|24 months |COHORTS        |GUATEMALA   |Full or late term |      0|    260|   493|
|24 months |COHORTS        |GUATEMALA   |Full or late term |      1|      8|   493|
|24 months |COHORTS        |GUATEMALA   |Early term        |      0|    140|   493|
|24 months |COHORTS        |GUATEMALA   |Early term        |      1|      5|   493|
|24 months |COHORTS        |GUATEMALA   |Preterm           |      0|     76|   493|
|24 months |COHORTS        |GUATEMALA   |Preterm           |      1|      4|   493|
|24 months |COHORTS        |PHILIPPINES |Full or late term |      0|    882|  2426|
|24 months |COHORTS        |PHILIPPINES |Full or late term |      1|     70|  2426|
|24 months |COHORTS        |PHILIPPINES |Early term        |      0|    898|  2426|
|24 months |COHORTS        |PHILIPPINES |Early term        |      1|     60|  2426|
|24 months |COHORTS        |PHILIPPINES |Preterm           |      0|    480|  2426|
|24 months |COHORTS        |PHILIPPINES |Preterm           |      1|     36|  2426|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |      0|   3387|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |      1|    958|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |      0|   1679|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |      1|    456|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |      0|   1439|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |      1|    399|  8318|
|24 months |Keneba         |GAMBIA      |Full or late term |      0|    449|  1032|
|24 months |Keneba         |GAMBIA      |Full or late term |      1|     59|  1032|
|24 months |Keneba         |GAMBIA      |Early term        |      0|    356|  1032|
|24 months |Keneba         |GAMBIA      |Early term        |      1|     40|  1032|
|24 months |Keneba         |GAMBIA      |Preterm           |      0|    110|  1032|
|24 months |Keneba         |GAMBIA      |Preterm           |      1|     18|  1032|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |      0|    138|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |      1|     12|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |      0|    138|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |      1|     10|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |      0|    193|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |      1|     23|   514|
|24 months |PROBIT         |BELARUS     |Full or late term |      0|   1975|  3970|
|24 months |PROBIT         |BELARUS     |Full or late term |      1|     24|  3970|
|24 months |PROBIT         |BELARUS     |Early term        |      0|   1820|  3970|
|24 months |PROBIT         |BELARUS     |Early term        |      1|      8|  3970|
|24 months |PROBIT         |BELARUS     |Preterm           |      0|    143|  3970|
|24 months |PROBIT         |BELARUS     |Preterm           |      1|      0|  3970|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |      0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      1|      0|     6|
|24 months |Vellore Crypto |INDIA       |Full or late term |      0|    228|   393|
|24 months |Vellore Crypto |INDIA       |Full or late term |      1|     15|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |      0|     89|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |      1|      6|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |      0|     48|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |      1|      7|   393|


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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


