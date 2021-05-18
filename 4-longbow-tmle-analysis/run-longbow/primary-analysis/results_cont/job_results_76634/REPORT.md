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
|Birth     |COHORTS       |GUATEMALA    |>=38    |    222|   741|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |    186|   741|
|Birth     |COHORTS       |GUATEMALA    |<32     |    333|   741|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |    380|  2785|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |    511|  2785|
|Birth     |COHORTS       |PHILIPPINES  |<32     |   1894|  2785|
|Birth     |MAL-ED        |INDIA        |>=38    |     13|    30|
|Birth     |MAL-ED        |INDIA        |[32-38) |      7|    30|
|Birth     |MAL-ED        |INDIA        |<32     |     10|    30|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |     71|   109|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |     23|   109|
|Birth     |MAL-ED        |BANGLADESH   |<32     |     15|   109|
|Birth     |MAL-ED        |PERU         |>=38    |     35|    81|
|Birth     |MAL-ED        |PERU         |[32-38) |     19|    81|
|Birth     |MAL-ED        |PERU         |<32     |     27|    81|
|Birth     |MAL-ED        |NEPAL        |>=38    |      4|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |      4|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |      2|    10|
|Birth     |MAL-ED        |BRAZIL       |>=38    |      6|    16|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |      5|    16|
|Birth     |MAL-ED        |BRAZIL       |<32     |      5|    16|
|Birth     |MAL-ED        |TANZANIA     |>=38    |     18|    42|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |     14|    42|
|Birth     |MAL-ED        |TANZANIA     |<32     |     10|    42|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |     28|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |     11|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |      5|    44|
|Birth     |PROBIT        |BELARUS      |>=38    |    654| 13315|
|Birth     |PROBIT        |BELARUS      |[32-38) |   2070| 13315|
|Birth     |PROBIT        |BELARUS      |<32     |  10591| 13315|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |     46|  1103|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |    147|  1103|
|Birth     |SAS-CompFeed  |INDIA        |<32     |    910|  1103|
|6 months  |COHORTS       |GUATEMALA    |>=38    |    274|   938|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |    237|   938|
|6 months  |COHORTS       |GUATEMALA    |<32     |    427|   938|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |    355|  2601|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |    471|  2601|
|6 months  |COHORTS       |PHILIPPINES  |<32     |   1775|  2601|
|6 months  |LCNI-5        |MALAWI       |>=38    |     19|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |      8|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |     23|    50|
|6 months  |MAL-ED        |INDIA        |>=38    |     59|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |     51|   154|
|6 months  |MAL-ED        |INDIA        |<32     |     44|   154|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |     76|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |     30|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |     16|   122|
|6 months  |MAL-ED        |PERU         |>=38    |     41|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |     27|    97|
|6 months  |MAL-ED        |PERU         |<32     |     29|    97|
|6 months  |MAL-ED        |NEPAL        |>=38    |     37|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |     31|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |     17|    85|
|6 months  |MAL-ED        |BRAZIL       |>=38    |     34|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |     14|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |     16|    64|
|6 months  |MAL-ED        |TANZANIA     |>=38    |     50|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |     26|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |     18|    94|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |     72|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |     24|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |      7|   103|
|6 months  |PROBIT        |BELARUS      |>=38    |    727| 15172|
|6 months  |PROBIT        |BELARUS      |[32-38) |   2369| 15172|
|6 months  |PROBIT        |BELARUS      |<32     |  12076| 15172|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |     57|  1334|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |    180|  1334|
|6 months  |SAS-CompFeed  |INDIA        |<32     |   1097|  1334|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |     65|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |     89|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |    226|   380|
|24 months |COHORTS       |GUATEMALA    |>=38    |    323|  1052|
|24 months |COHORTS       |GUATEMALA    |[32-38) |    254|  1052|
|24 months |COHORTS       |GUATEMALA    |<32     |    475|  1052|
|24 months |COHORTS       |PHILIPPINES  |>=38    |    326|  2355|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |    427|  2355|
|24 months |COHORTS       |PHILIPPINES  |<32     |   1602|  2355|
|24 months |LCNI-5        |MALAWI       |>=38    |     12|    35|
|24 months |LCNI-5        |MALAWI       |[32-38) |      5|    35|
|24 months |LCNI-5        |MALAWI       |<32     |     18|    35|
|24 months |MAL-ED        |INDIA        |>=38    |     56|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |     48|   147|
|24 months |MAL-ED        |INDIA        |<32     |     43|   147|
|24 months |MAL-ED        |BANGLADESH   |>=38    |     68|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |     23|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |     15|   106|
|24 months |MAL-ED        |PERU         |>=38    |     30|    70|
|24 months |MAL-ED        |PERU         |[32-38) |     19|    70|
|24 months |MAL-ED        |PERU         |<32     |     21|    70|
|24 months |MAL-ED        |NEPAL        |>=38    |     35|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |     30|    81|
|24 months |MAL-ED        |NEPAL        |<32     |     16|    81|
|24 months |MAL-ED        |BRAZIL       |>=38    |     29|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |      8|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |     14|    51|
|24 months |MAL-ED        |TANZANIA     |>=38    |     46|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |     20|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |     17|    83|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |     66|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |     23|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |      7|    96|
|24 months |PROBIT        |BELARUS      |>=38    |    183|  3820|
|24 months |PROBIT        |BELARUS      |[32-38) |    590|  3820|
|24 months |PROBIT        |BELARUS      |<32     |   3047|  3820|


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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


