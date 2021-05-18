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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mbmi          | swasted| n_cell|     n|
|:---------|:--------------|:------------|:-------------|-------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |       0|  10472| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |       1|    213| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |       0|   7021| 17836|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |       1|    130| 17836|
|Birth     |MAL-ED         |INDIA        |Normal weight |       0|     36|    43|
|Birth     |MAL-ED         |INDIA        |Normal weight |       1|      0|    43|
|Birth     |MAL-ED         |INDIA        |Underweight   |       0|      7|    43|
|Birth     |MAL-ED         |INDIA        |Underweight   |       1|      0|    43|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |       0|    171|   202|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |       1|      7|   202|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |       0|     23|   202|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |       1|      1|   202|
|Birth     |MAL-ED         |PERU         |Normal weight |       0|    214|   218|
|Birth     |MAL-ED         |PERU         |Normal weight |       1|      0|   218|
|Birth     |MAL-ED         |PERU         |Underweight   |       0|      4|   218|
|Birth     |MAL-ED         |PERU         |Underweight   |       1|      0|   218|
|Birth     |MAL-ED         |NEPAL        |Normal weight |       0|     25|    26|
|Birth     |MAL-ED         |NEPAL        |Normal weight |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |Underweight   |       0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |Underweight   |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |       0|     54|    60|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |       1|      0|    60|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |       0|      6|    60|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |       1|      0|    60|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |       0|    101|   111|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |       1|      0|   111|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |       0|     10|   111|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |       1|      0|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |       0|     93|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |       1|      0|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |       0|      5|    98|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |       1|      0|    98|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |       0|    462|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |       1|     31|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |       0|     75|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |       1|      7|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |       0|    612|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |       1|     44|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |       0|     45|   704|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |       1|      3|   704|
|Birth     |PROBIT         |BELARUS      |Normal weight |       0|  12239| 13638|
|Birth     |PROBIT         |BELARUS      |Normal weight |       1|    861| 13638|
|Birth     |PROBIT         |BELARUS      |Underweight   |       0|    491| 13638|
|Birth     |PROBIT         |BELARUS      |Underweight   |       1|     47| 13638|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |       0|    399|   509|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |       1|     10|   509|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |       0|     99|   509|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |       1|      1|   509|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |       0|    694|   998|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |       1|     16|   998|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |       0|    277|   998|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |       1|     11|   998|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |       0|   7917|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |       1|    469|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |       0|    431|  8856|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |       1|     39|  8856|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |       0|   9949| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |       1|    128| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |       0|   6485| 16660|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |       1|     98| 16660|
|6 months  |LCNI-5         |MALAWI       |Normal weight |       0|    674|   835|
|6 months  |LCNI-5         |MALAWI       |Normal weight |       1|      0|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |       0|    161|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |       1|      0|   835|
|6 months  |MAL-ED         |INDIA        |Normal weight |       0|    175|   227|
|6 months  |MAL-ED         |INDIA        |Normal weight |       1|      4|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |       0|     46|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |       1|      2|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |       0|    195|   228|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |       1|      1|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |       0|     32|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |       1|      0|   228|
|6 months  |MAL-ED         |PERU         |Normal weight |       0|    257|   261|
|6 months  |MAL-ED         |PERU         |Normal weight |       1|      0|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |       0|      4|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |       1|      0|   261|
|6 months  |MAL-ED         |NEPAL        |Normal weight |       0|    232|   234|
|6 months  |MAL-ED         |NEPAL        |Normal weight |       1|      0|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |       0|      2|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |       1|      0|   234|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |       0|    183|   198|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |       1|      0|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |       0|     15|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |       1|      0|   198|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |       0|    221|   240|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |       1|      0|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |       0|     19|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |       1|      0|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |       0|    220|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |       1|      2|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |       0|     10|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |       1|      1|   233|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |       0|    449|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |       1|      5|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |       0|     82|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |       1|      1|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |       0|    660|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |       1|      0|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |       0|     51|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |       1|      0|   711|
|6 months  |PROBIT         |BELARUS      |Normal weight |       0|  12540| 13075|
|6 months  |PROBIT         |BELARUS      |Normal weight |       1|      6| 13075|
|6 months  |PROBIT         |BELARUS      |Underweight   |       0|    529| 13075|
|6 months  |PROBIT         |BELARUS      |Underweight   |       1|      0| 13075|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |       0|    477|   586|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |       1|      2|   586|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |       0|    104|   586|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |       1|      3|   586|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |       0|    842|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |       1|     28|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |       0|    344|  1224|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |       1|     10|  1224|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |       0|   1938|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |       1|     11|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |       0|     43|  1993|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |       1|      1|  1993|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |       0|   6690|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |       1|     57|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |       0|    368|  7121|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |       1|      6|  7121|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |       0|   4970|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |       1|    181|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |       0|   3244|  8543|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |       1|    148|  8543|
|24 months |LCNI-5         |MALAWI       |Normal weight |       0|    453|   561|
|24 months |LCNI-5         |MALAWI       |Normal weight |       1|      0|   561|
|24 months |LCNI-5         |MALAWI       |Underweight   |       0|    107|   561|
|24 months |LCNI-5         |MALAWI       |Underweight   |       1|      1|   561|
|24 months |MAL-ED         |INDIA        |Normal weight |       0|    172|   218|
|24 months |MAL-ED         |INDIA        |Normal weight |       1|      0|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |       0|     44|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |       1|      2|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |       0|    169|   199|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |       1|      0|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |       0|     30|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |       1|      0|   199|
|24 months |MAL-ED         |PERU         |Normal weight |       0|    185|   190|
|24 months |MAL-ED         |PERU         |Normal weight |       1|      1|   190|
|24 months |MAL-ED         |PERU         |Underweight   |       0|      4|   190|
|24 months |MAL-ED         |PERU         |Underweight   |       1|      0|   190|
|24 months |MAL-ED         |NEPAL        |Normal weight |       0|    224|   226|
|24 months |MAL-ED         |NEPAL        |Normal weight |       1|      0|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |       0|      2|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |       1|      0|   226|
|24 months |MAL-ED         |BRAZIL       |Normal weight |       0|    147|   159|
|24 months |MAL-ED         |BRAZIL       |Normal weight |       1|      1|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |       0|     11|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |       1|      0|   159|
|24 months |MAL-ED         |TANZANIA     |Normal weight |       0|    190|   208|
|24 months |MAL-ED         |TANZANIA     |Normal weight |       1|      0|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |       0|     18|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |       1|      0|   208|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |       0|    208|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |       1|      0|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |       0|     10|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |       1|      0|   218|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |       0|    354|   428|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |       1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |       0|     64|   428|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |       1|      6|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |       0|    471|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |       1|      4|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |       0|     35|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |       1|      0|   510|
|24 months |PROBIT         |BELARUS      |Normal weight |       0|   3782|  3935|
|24 months |PROBIT         |BELARUS      |Normal weight |       1|      5|  3935|
|24 months |PROBIT         |BELARUS      |Underweight   |       0|    146|  3935|
|24 months |PROBIT         |BELARUS      |Underweight   |       1|      2|  3935|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |       0|    456|   563|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |       1|      5|   563|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |       0|     98|   563|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |       1|      4|   563|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |       0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |       0|    316|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |       1|     25|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |       0|     23|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |       1|      3|   367|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


