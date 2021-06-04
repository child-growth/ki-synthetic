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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country     |parity | n_cell|     n|
|:---------|:--------------|:-----------|:------|------:|-----:|
|Birth     |COHORTS        |INDIA       |1      |    641|  3855|
|Birth     |COHORTS        |INDIA       |2      |    982|  3855|
|Birth     |COHORTS        |INDIA       |3+     |   2232|  3855|
|Birth     |COHORTS        |GUATEMALA   |1      |     94|   756|
|Birth     |COHORTS        |GUATEMALA   |2      |    118|   756|
|Birth     |COHORTS        |GUATEMALA   |3+     |    544|   756|
|Birth     |COHORTS        |PHILIPPINES |1      |    640|  2899|
|Birth     |COHORTS        |PHILIPPINES |2      |    657|  2899|
|Birth     |COHORTS        |PHILIPPINES |3+     |   1602|  2899|
|Birth     |GMS-Nepal      |NEPAL       |1      |    185|   641|
|Birth     |GMS-Nepal      |NEPAL       |2      |    169|   641|
|Birth     |GMS-Nepal      |NEPAL       |3+     |    287|   641|
|Birth     |JiVitA-3       |BANGLADESH  |1      |   5520| 18014|
|Birth     |JiVitA-3       |BANGLADESH  |2      |   6303| 18014|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |   6191| 18014|
|Birth     |Keneba         |GAMBIA      |1      |    146|  1338|
|Birth     |Keneba         |GAMBIA      |2      |    142|  1338|
|Birth     |Keneba         |GAMBIA      |3+     |   1050|  1338|
|Birth     |PROVIDE        |BANGLADESH  |1      |    202|   532|
|Birth     |PROVIDE        |BANGLADESH  |2      |    182|   532|
|Birth     |PROVIDE        |BANGLADESH  |3+     |    148|   532|
|Birth     |SAS-CompFeed   |INDIA       |1      |    304|  1103|
|Birth     |SAS-CompFeed   |INDIA       |2      |    258|  1103|
|Birth     |SAS-CompFeed   |INDIA       |3+     |    541|  1103|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5561| 12916|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |   3882| 12916|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3473| 12916|
|6 months  |COHORTS        |INDIA       |1      |    741|  4285|
|6 months  |COHORTS        |INDIA       |2      |   1093|  4285|
|6 months  |COHORTS        |INDIA       |3+     |   2451|  4285|
|6 months  |COHORTS        |GUATEMALA   |1      |    132|   963|
|6 months  |COHORTS        |GUATEMALA   |2      |    139|   963|
|6 months  |COHORTS        |GUATEMALA   |3+     |    692|   963|
|6 months  |COHORTS        |PHILIPPINES |1      |    574|  2706|
|6 months  |COHORTS        |PHILIPPINES |2      |    607|  2706|
|6 months  |COHORTS        |PHILIPPINES |3+     |   1525|  2706|
|6 months  |GMS-Nepal      |NEPAL       |1      |    153|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |    149|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |    262|   564|
|6 months  |JiVitA-3       |BANGLADESH  |1      |   6398| 16784|
|6 months  |JiVitA-3       |BANGLADESH  |2      |   5685| 16784|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |   4701| 16784|
|6 months  |Keneba         |GAMBIA      |1      |    195|  1623|
|6 months  |Keneba         |GAMBIA      |2      |    164|  1623|
|6 months  |Keneba         |GAMBIA      |3+     |   1264|  1623|
|6 months  |PROVIDE        |BANGLADESH  |1      |    218|   603|
|6 months  |PROVIDE        |BANGLADESH  |2      |    222|   603|
|6 months  |PROVIDE        |BANGLADESH  |3+     |    163|   603|
|6 months  |SAS-CompFeed   |INDIA       |1      |    392|  1334|
|6 months  |SAS-CompFeed   |INDIA       |2      |    302|  1334|
|6 months  |SAS-CompFeed   |INDIA       |3+     |    640|  1334|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |     72|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |    301|   380|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |    679|  1994|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  1994|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |    658|  1994|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3392|  8504|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2587|  8504|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   2525|  8504|
|24 months |COHORTS        |INDIA       |1      |    561|  3354|
|24 months |COHORTS        |INDIA       |2      |    837|  3354|
|24 months |COHORTS        |INDIA       |3+     |   1956|  3354|
|24 months |COHORTS        |GUATEMALA   |1      |    167|  1076|
|24 months |COHORTS        |GUATEMALA   |2      |    151|  1076|
|24 months |COHORTS        |GUATEMALA   |3+     |    758|  1076|
|24 months |COHORTS        |PHILIPPINES |1      |    523|  2449|
|24 months |COHORTS        |PHILIPPINES |2      |    544|  2449|
|24 months |COHORTS        |PHILIPPINES |3+     |   1382|  2449|
|24 months |GMS-Nepal      |NEPAL       |1      |    130|   487|
|24 months |GMS-Nepal      |NEPAL       |2      |    130|   487|
|24 months |GMS-Nepal      |NEPAL       |3+     |    227|   487|
|24 months |JiVitA-3       |BANGLADESH  |1      |   3166|  8603|
|24 months |JiVitA-3       |BANGLADESH  |2      |   2909|  8603|
|24 months |JiVitA-3       |BANGLADESH  |3+     |   2528|  8603|
|24 months |Keneba         |GAMBIA      |1      |    137|  1376|
|24 months |Keneba         |GAMBIA      |2      |    139|  1376|
|24 months |Keneba         |GAMBIA      |3+     |   1100|  1376|
|24 months |PROVIDE        |BANGLADESH  |1      |    211|   579|
|24 months |PROVIDE        |BANGLADESH  |2      |    213|   579|
|24 months |PROVIDE        |BANGLADESH  |3+     |    155|   579|
|24 months |TanzaniaChild2 |TANZANIA    |1      |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |      4|     6|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |    161|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |    123|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |    148|   432|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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


