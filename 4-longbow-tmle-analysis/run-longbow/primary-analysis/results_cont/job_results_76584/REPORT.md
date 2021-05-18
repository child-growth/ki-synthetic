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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
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
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |     57|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |     23|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |      9|    89|
|Birth     |COHORTS        |INDIA       |Full or late term |    495|  1200|
|Birth     |COHORTS        |INDIA       |Early term        |    326|  1200|
|Birth     |COHORTS        |INDIA       |Preterm           |    379|  1200|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |    237|   411|
|Birth     |COHORTS        |GUATEMALA   |Early term        |    121|   411|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |     53|   411|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |   1191|  3023|
|Birth     |COHORTS        |PHILIPPINES |Early term        |   1190|  3023|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |    642|  3023|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |  11070| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |   5639| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |   4966| 21675|
|Birth     |Keneba         |GAMBIA      |Full or late term |    466|   978|
|Birth     |Keneba         |GAMBIA      |Early term        |    380|   978|
|Birth     |Keneba         |GAMBIA      |Preterm           |    132|   978|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |    212|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |    219|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |    301|   732|
|Birth     |PROBIT         |BELARUS     |Full or late term |   7153| 13893|
|Birth     |PROBIT         |BELARUS     |Early term        |   6282| 13893|
|Birth     |PROBIT         |BELARUS     |Preterm           |    458| 13893|
|Birth     |Vellore Crypto |INDIA       |Full or late term |    231|   375|
|Birth     |Vellore Crypto |INDIA       |Early term        |     92|   375|
|Birth     |Vellore Crypto |INDIA       |Preterm           |     52|   375|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |    196|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |    100|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |     48|   344|
|6 months  |COHORTS        |INDIA       |Full or late term |    496|  1204|
|6 months  |COHORTS        |INDIA       |Early term        |    327|  1204|
|6 months  |COHORTS        |INDIA       |Preterm           |    381|  1204|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |    251|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |    133|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |     72|   456|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |   1054|  2685|
|6 months  |COHORTS        |PHILIPPINES |Early term        |   1062|  2685|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |    569|  2685|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |   8613| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |   4184| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |   3437| 16234|
|6 months  |Keneba         |GAMBIA      |Full or late term |    592|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |    463|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |    163|  1218|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |    209|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |    207|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |    299|   715|
|6 months  |PROBIT         |BELARUS     |Full or late term |   8041| 15760|
|6 months  |PROBIT         |BELARUS     |Early term        |   7167| 15760|
|6 months  |PROBIT         |BELARUS     |Preterm           |    552| 15760|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |   1175|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |    450|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |    303|  1928|
|6 months  |Vellore Crypto |INDIA       |Full or late term |    241|   391|
|6 months  |Vellore Crypto |INDIA       |Early term        |     95|   391|
|6 months  |Vellore Crypto |INDIA       |Preterm           |     55|   391|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |    195|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |    102|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |     49|   346|
|24 months |COHORTS        |INDIA       |Full or late term |    411|   994|
|24 months |COHORTS        |INDIA       |Early term        |    272|   994|
|24 months |COHORTS        |INDIA       |Preterm           |    311|   994|
|24 months |COHORTS        |GUATEMALA   |Full or late term |    266|   487|
|24 months |COHORTS        |GUATEMALA   |Early term        |    142|   487|
|24 months |COHORTS        |GUATEMALA   |Preterm           |     79|   487|
|24 months |COHORTS        |PHILIPPINES |Full or late term |    953|  2422|
|24 months |COHORTS        |PHILIPPINES |Early term        |    955|  2422|
|24 months |COHORTS        |PHILIPPINES |Preterm           |    514|  2422|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |   4355|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |   2145|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |   1846|  8346|
|24 months |Keneba         |GAMBIA      |Full or late term |    508|  1031|
|24 months |Keneba         |GAMBIA      |Early term        |    395|  1031|
|24 months |Keneba         |GAMBIA      |Preterm           |    128|  1031|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |    150|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |    148|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |    216|   514|
|24 months |PROBIT         |BELARUS     |Full or late term |   2036|  4035|
|24 months |PROBIT         |BELARUS     |Early term        |   1851|  4035|
|24 months |PROBIT         |BELARUS     |Preterm           |    148|  4035|
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


