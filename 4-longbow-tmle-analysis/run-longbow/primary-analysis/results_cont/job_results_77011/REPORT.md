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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid       |country      |fage    | n_cell|     n|
|:---------|:-------------|:------------|:-------|------:|-----:|
|Birth     |COHORTS       |GUATEMALA    |>=38    |    280|   747|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |    160|   747|
|Birth     |COHORTS       |GUATEMALA    |<32     |    307|   747|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |    309|  2793|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |    534|  2793|
|Birth     |COHORTS       |PHILIPPINES  |<32     |   1950|  2793|
|Birth     |MAL-ED        |INDIA        |>=38    |     13|    26|
|Birth     |MAL-ED        |INDIA        |[32-38) |      5|    26|
|Birth     |MAL-ED        |INDIA        |<32     |      8|    26|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |     66|   133|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |     49|   133|
|Birth     |MAL-ED        |BANGLADESH   |<32     |     18|   133|
|Birth     |MAL-ED        |PERU         |>=38    |     33|    75|
|Birth     |MAL-ED        |PERU         |[32-38) |     22|    75|
|Birth     |MAL-ED        |PERU         |<32     |     20|    75|
|Birth     |MAL-ED        |NEPAL        |>=38    |      3|     9|
|Birth     |MAL-ED        |NEPAL        |[32-38) |      5|     9|
|Birth     |MAL-ED        |NEPAL        |<32     |      1|     9|
|Birth     |MAL-ED        |BRAZIL       |>=38    |      5|    20|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |     11|    20|
|Birth     |MAL-ED        |BRAZIL       |<32     |      4|    20|
|Birth     |MAL-ED        |TANZANIA     |>=38    |     15|    39|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |     12|    39|
|Birth     |MAL-ED        |TANZANIA     |<32     |     12|    39|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |     23|    29|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |      4|    29|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |      2|    29|
|Birth     |PROBIT        |BELARUS      |>=38    |    610| 13335|
|Birth     |PROBIT        |BELARUS      |[32-38) |   2111| 13335|
|Birth     |PROBIT        |BELARUS      |<32     |  10614| 13335|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |     37|  1103|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |    129|  1103|
|Birth     |SAS-CompFeed  |INDIA        |<32     |    937|  1103|
|6 months  |COHORTS       |GUATEMALA    |>=38    |    348|   946|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |    217|   946|
|6 months  |COHORTS       |GUATEMALA    |<32     |    381|   946|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |    303|  2613|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |    514|  2613|
|6 months  |COHORTS       |PHILIPPINES  |<32     |   1796|  2613|
|6 months  |LCNI-5        |MALAWI       |>=38    |     30|   106|
|6 months  |LCNI-5        |MALAWI       |[32-38) |     18|   106|
|6 months  |LCNI-5        |MALAWI       |<32     |     58|   106|
|6 months  |MAL-ED        |INDIA        |>=38    |     50|   166|
|6 months  |MAL-ED        |INDIA        |[32-38) |     58|   166|
|6 months  |MAL-ED        |INDIA        |<32     |     58|   166|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |     78|   160|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |     57|   160|
|6 months  |MAL-ED        |BANGLADESH   |<32     |     25|   160|
|6 months  |MAL-ED        |PERU         |>=38    |     44|    95|
|6 months  |MAL-ED        |PERU         |[32-38) |     25|    95|
|6 months  |MAL-ED        |PERU         |<32     |     26|    95|
|6 months  |MAL-ED        |NEPAL        |>=38    |     28|    78|
|6 months  |MAL-ED        |NEPAL        |[32-38) |     35|    78|
|6 months  |MAL-ED        |NEPAL        |<32     |     15|    78|
|6 months  |MAL-ED        |BRAZIL       |>=38    |     35|    92|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |     27|    92|
|6 months  |MAL-ED        |BRAZIL       |<32     |     30|    92|
|6 months  |MAL-ED        |TANZANIA     |>=38    |     46|    90|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |     25|    90|
|6 months  |MAL-ED        |TANZANIA     |<32     |     19|    90|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |     65|    86|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |     15|    86|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |      6|    86|
|6 months  |PROBIT        |BELARUS      |>=38    |    716| 15199|
|6 months  |PROBIT        |BELARUS      |[32-38) |   2376| 15199|
|6 months  |PROBIT        |BELARUS      |<32     |  12107| 15199|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |     47|  1334|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |    151|  1334|
|6 months  |SAS-CompFeed  |INDIA        |<32     |   1136|  1334|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |     51|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |    100|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |    229|   380|
|24 months |COHORTS       |GUATEMALA    |>=38    |    370|  1058|
|24 months |COHORTS       |GUATEMALA    |[32-38) |    237|  1058|
|24 months |COHORTS       |GUATEMALA    |<32     |    451|  1058|
|24 months |COHORTS       |PHILIPPINES  |>=38    |    275|  2369|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |    454|  2369|
|24 months |COHORTS       |PHILIPPINES  |<32     |   1640|  2369|
|24 months |LCNI-5        |MALAWI       |>=38    |     23|    74|
|24 months |LCNI-5        |MALAWI       |[32-38) |     11|    74|
|24 months |LCNI-5        |MALAWI       |<32     |     40|    74|
|24 months |MAL-ED        |INDIA        |>=38    |     49|   164|
|24 months |MAL-ED        |INDIA        |[32-38) |     58|   164|
|24 months |MAL-ED        |INDIA        |<32     |     57|   164|
|24 months |MAL-ED        |BANGLADESH   |>=38    |     74|   154|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |     56|   154|
|24 months |MAL-ED        |BANGLADESH   |<32     |     24|   154|
|24 months |MAL-ED        |PERU         |>=38    |     37|    83|
|24 months |MAL-ED        |PERU         |[32-38) |     21|    83|
|24 months |MAL-ED        |PERU         |<32     |     25|    83|
|24 months |MAL-ED        |NEPAL        |>=38    |     27|    76|
|24 months |MAL-ED        |NEPAL        |[32-38) |     35|    76|
|24 months |MAL-ED        |NEPAL        |<32     |     14|    76|
|24 months |MAL-ED        |BRAZIL       |>=38    |     34|    84|
|24 months |MAL-ED        |BRAZIL       |[32-38) |     24|    84|
|24 months |MAL-ED        |BRAZIL       |<32     |     26|    84|
|24 months |MAL-ED        |TANZANIA     |>=38    |     46|    87|
|24 months |MAL-ED        |TANZANIA     |[32-38) |     23|    87|
|24 months |MAL-ED        |TANZANIA     |<32     |     18|    87|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |     64|    86|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |     15|    86|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |      7|    86|
|24 months |PROBIT        |BELARUS      |>=38    |    181|  3848|
|24 months |PROBIT        |BELARUS      |[32-38) |    589|  3848|
|24 months |PROBIT        |BELARUS      |<32     |   3078|  3848|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


