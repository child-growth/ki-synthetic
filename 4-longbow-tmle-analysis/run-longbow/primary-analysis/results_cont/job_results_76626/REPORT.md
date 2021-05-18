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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country     |gagebrth          | n_cell|     n|
|:---------|:--------------|:-----------|:-----------------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |     52|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |     23|    83|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |      8|    83|
|Birth     |COHORTS        |INDIA       |Full or late term |    456|  1111|
|Birth     |COHORTS        |INDIA       |Early term        |    297|  1111|
|Birth     |COHORTS        |INDIA       |Preterm           |    358|  1111|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |    205|   361|
|Birth     |COHORTS        |GUATEMALA   |Early term        |    108|   361|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |     48|   361|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |   1140|  2875|
|Birth     |COHORTS        |PHILIPPINES |Early term        |   1125|  2875|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |    610|  2875|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |   8924| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |   4565| 17394|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |   3905| 17394|
|Birth     |Keneba         |GAMBIA      |Full or late term |    438|   922|
|Birth     |Keneba         |GAMBIA      |Early term        |    356|   922|
|Birth     |Keneba         |GAMBIA      |Preterm           |    128|   922|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |    205|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |    215|   707|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |    287|   707|
|Birth     |PROBIT         |BELARUS     |Full or late term |   7120| 13817|
|Birth     |PROBIT         |BELARUS     |Early term        |   6242| 13817|
|Birth     |PROBIT         |BELARUS     |Preterm           |    455| 13817|
|Birth     |Vellore Crypto |INDIA       |Full or late term |    202|   331|
|Birth     |Vellore Crypto |INDIA       |Early term        |     82|   331|
|Birth     |Vellore Crypto |INDIA       |Preterm           |     47|   331|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |    194|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |    100|   343|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |     49|   343|
|6 months  |COHORTS        |INDIA       |Full or late term |    496|  1202|
|6 months  |COHORTS        |INDIA       |Early term        |    328|  1202|
|6 months  |COHORTS        |INDIA       |Preterm           |    378|  1202|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |    251|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |    133|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |     72|   456|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |   1052|  2682|
|6 months  |COHORTS        |PHILIPPINES |Early term        |   1061|  2682|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |    569|  2682|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |   8601| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |   4178| 16207|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |   3428| 16207|
|6 months  |Keneba         |GAMBIA      |Full or late term |    591|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |    464|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |    163|  1218|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |    209|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |    207|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |    299|   715|
|6 months  |PROBIT         |BELARUS     |Full or late term |   8041| 15757|
|6 months  |PROBIT         |BELARUS     |Early term        |   7166| 15757|
|6 months  |PROBIT         |BELARUS     |Preterm           |    550| 15757|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |   1174|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |    450|  1927|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |    303|  1927|
|6 months  |Vellore Crypto |INDIA       |Full or late term |    243|   392|
|6 months  |Vellore Crypto |INDIA       |Early term        |     95|   392|
|6 months  |Vellore Crypto |INDIA       |Preterm           |     54|   392|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |    196|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |    102|   347|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |     49|   347|
|24 months |COHORTS        |INDIA       |Full or late term |    409|   989|
|24 months |COHORTS        |INDIA       |Early term        |    271|   989|
|24 months |COHORTS        |INDIA       |Preterm           |    309|   989|
|24 months |COHORTS        |GUATEMALA   |Full or late term |    268|   493|
|24 months |COHORTS        |GUATEMALA   |Early term        |    145|   493|
|24 months |COHORTS        |GUATEMALA   |Preterm           |     80|   493|
|24 months |COHORTS        |PHILIPPINES |Full or late term |    952|  2426|
|24 months |COHORTS        |PHILIPPINES |Early term        |    958|  2426|
|24 months |COHORTS        |PHILIPPINES |Preterm           |    516|  2426|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |   4345|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |   2135|  8318|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |   1838|  8318|
|24 months |Keneba         |GAMBIA      |Full or late term |    508|  1032|
|24 months |Keneba         |GAMBIA      |Early term        |    396|  1032|
|24 months |Keneba         |GAMBIA      |Preterm           |    128|  1032|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |    150|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |    148|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |    216|   514|
|24 months |PROBIT         |BELARUS     |Full or late term |   1999|  3970|
|24 months |PROBIT         |BELARUS     |Early term        |   1828|  3970|
|24 months |PROBIT         |BELARUS     |Preterm           |    143|  3970|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      2|     6|
|24 months |Vellore Crypto |INDIA       |Full or late term |    243|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |     95|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |     55|   393|


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


