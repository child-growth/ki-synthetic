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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country     |parity | ever_swasted| n_cell|     n|
|:-----------|:--------------|:-----------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA       |1      |            0|    762|  4637|
|0-24 months |COHORTS        |INDIA       |1      |            1|     93|  4637|
|0-24 months |COHORTS        |INDIA       |2      |            0|   1034|  4637|
|0-24 months |COHORTS        |INDIA       |2      |            1|    119|  4637|
|0-24 months |COHORTS        |INDIA       |3+     |            0|   2352|  4637|
|0-24 months |COHORTS        |INDIA       |3+     |            1|    277|  4637|
|0-24 months |COHORTS        |GUATEMALA   |1      |            0|    177|  1335|
|0-24 months |COHORTS        |GUATEMALA   |1      |            1|     16|  1335|
|0-24 months |COHORTS        |GUATEMALA   |2      |            0|    185|  1335|
|0-24 months |COHORTS        |GUATEMALA   |2      |            1|     15|  1335|
|0-24 months |COHORTS        |GUATEMALA   |3+     |            0|    876|  1335|
|0-24 months |COHORTS        |GUATEMALA   |3+     |            1|     66|  1335|
|0-24 months |COHORTS        |PHILIPPINES |1      |            0|    608|  3044|
|0-24 months |COHORTS        |PHILIPPINES |1      |            1|     95|  3044|
|0-24 months |COHORTS        |PHILIPPINES |2      |            0|    631|  3044|
|0-24 months |COHORTS        |PHILIPPINES |2      |            1|     84|  3044|
|0-24 months |COHORTS        |PHILIPPINES |3+     |            0|   1423|  3044|
|0-24 months |COHORTS        |PHILIPPINES |3+     |            1|    203|  3044|
|0-24 months |GMS-Nepal      |NEPAL       |1      |            0|    141|   686|
|0-24 months |GMS-Nepal      |NEPAL       |1      |            1|     54|   686|
|0-24 months |GMS-Nepal      |NEPAL       |2      |            0|    138|   686|
|0-24 months |GMS-Nepal      |NEPAL       |2      |            1|     46|   686|
|0-24 months |GMS-Nepal      |NEPAL       |3+     |            0|    230|   686|
|0-24 months |GMS-Nepal      |NEPAL       |3+     |            1|     77|   686|
|0-24 months |JiVitA-3       |BANGLADESH  |1      |            0|   9588| 26952|
|0-24 months |JiVitA-3       |BANGLADESH  |1      |            1|    627| 26952|
|0-24 months |JiVitA-3       |BANGLADESH  |2      |            0|   8296| 26952|
|0-24 months |JiVitA-3       |BANGLADESH  |2      |            1|    518| 26952|
|0-24 months |JiVitA-3       |BANGLADESH  |3+     |            0|   7423| 26952|
|0-24 months |JiVitA-3       |BANGLADESH  |3+     |            1|    500| 26952|
|0-24 months |Keneba         |GAMBIA      |1      |            0|     73|  1975|
|0-24 months |Keneba         |GAMBIA      |1      |            1|     17|  1975|
|0-24 months |Keneba         |GAMBIA      |2      |            0|    146|  1975|
|0-24 months |Keneba         |GAMBIA      |2      |            1|     26|  1975|
|0-24 months |Keneba         |GAMBIA      |3+     |            0|   1421|  1975|
|0-24 months |Keneba         |GAMBIA      |3+     |            1|    292|  1975|
|0-24 months |PROVIDE        |BANGLADESH  |1      |            0|    266|   700|
|0-24 months |PROVIDE        |BANGLADESH  |1      |            1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH  |2      |            0|    239|   700|
|0-24 months |PROVIDE        |BANGLADESH  |2      |            1|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH  |3+     |            0|    153|   700|
|0-24 months |PROVIDE        |BANGLADESH  |3+     |            1|     16|   700|
|0-24 months |SAS-CompFeed   |INDIA       |1      |            0|    400|  1511|
|0-24 months |SAS-CompFeed   |INDIA       |1      |            1|     66|  1511|
|0-24 months |SAS-CompFeed   |INDIA       |2      |            0|    285|  1511|
|0-24 months |SAS-CompFeed   |INDIA       |2      |            1|     60|  1511|
|0-24 months |SAS-CompFeed   |INDIA       |3+     |            0|    603|  1511|
|0-24 months |SAS-CompFeed   |INDIA       |3+     |            1|     97|  1511|
|0-24 months |SAS-FoodSuppl  |INDIA       |1      |            0|     20|   418|
|0-24 months |SAS-FoodSuppl  |INDIA       |1      |            1|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA       |2      |            0|     55|   418|
|0-24 months |SAS-FoodSuppl  |INDIA       |2      |            1|     13|   418|
|0-24 months |SAS-FoodSuppl  |INDIA       |3+     |            0|    272|   418|
|0-24 months |SAS-FoodSuppl  |INDIA       |3+     |            1|     55|   418|
|0-24 months |TanzaniaChild2 |TANZANIA    |1      |            0|    787|  2388|
|0-24 months |TanzaniaChild2 |TANZANIA    |1      |            1|     56|  2388|
|0-24 months |TanzaniaChild2 |TANZANIA    |2      |            0|    741|  2388|
|0-24 months |TanzaniaChild2 |TANZANIA    |2      |            1|     53|  2388|
|0-24 months |TanzaniaChild2 |TANZANIA    |3+     |            0|    702|  2388|
|0-24 months |TanzaniaChild2 |TANZANIA    |3+     |            1|     49|  2388|
|0-24 months |ZVITAMBO       |ZIMBABWE    |1      |            0|   5819| 13940|
|0-24 months |ZVITAMBO       |ZIMBABWE    |1      |            1|    586| 13940|
|0-24 months |ZVITAMBO       |ZIMBABWE    |2      |            0|   4080| 13940|
|0-24 months |ZVITAMBO       |ZIMBABWE    |2      |            1|    414| 13940|
|0-24 months |ZVITAMBO       |ZIMBABWE    |3+     |            0|   2755| 13940|
|0-24 months |ZVITAMBO       |ZIMBABWE    |3+     |            1|    286| 13940|
|0-6 months  |COHORTS        |INDIA       |1      |            0|    753|  4454|
|0-6 months  |COHORTS        |INDIA       |1      |            1|     72|  4454|
|0-6 months  |COHORTS        |INDIA       |2      |            0|   1037|  4454|
|0-6 months  |COHORTS        |INDIA       |2      |            1|     79|  4454|
|0-6 months  |COHORTS        |INDIA       |3+     |            0|   2319|  4454|
|0-6 months  |COHORTS        |INDIA       |3+     |            1|    194|  4454|
|0-6 months  |COHORTS        |GUATEMALA   |1      |            0|    148|  1058|
|0-6 months  |COHORTS        |GUATEMALA   |1      |            1|     10|  1058|
|0-6 months  |COHORTS        |GUATEMALA   |2      |            0|    149|  1058|
|0-6 months  |COHORTS        |GUATEMALA   |2      |            1|     14|  1058|
|0-6 months  |COHORTS        |GUATEMALA   |3+     |            0|    694|  1058|
|0-6 months  |COHORTS        |GUATEMALA   |3+     |            1|     43|  1058|
|0-6 months  |COHORTS        |PHILIPPINES |1      |            0|    655|  3043|
|0-6 months  |COHORTS        |PHILIPPINES |1      |            1|     48|  3043|
|0-6 months  |COHORTS        |PHILIPPINES |2      |            0|    668|  3043|
|0-6 months  |COHORTS        |PHILIPPINES |2      |            1|     47|  3043|
|0-6 months  |COHORTS        |PHILIPPINES |3+     |            0|   1509|  3043|
|0-6 months  |COHORTS        |PHILIPPINES |3+     |            1|    116|  3043|
|0-6 months  |GMS-Nepal      |NEPAL       |1      |            0|    165|   686|
|0-6 months  |GMS-Nepal      |NEPAL       |1      |            1|     30|   686|
|0-6 months  |GMS-Nepal      |NEPAL       |2      |            0|    167|   686|
|0-6 months  |GMS-Nepal      |NEPAL       |2      |            1|     17|   686|
|0-6 months  |GMS-Nepal      |NEPAL       |3+     |            0|    275|   686|
|0-6 months  |GMS-Nepal      |NEPAL       |3+     |            1|     32|   686|
|0-6 months  |JiVitA-3       |BANGLADESH  |1      |            0|   9759| 26855|
|0-6 months  |JiVitA-3       |BANGLADESH  |1      |            1|    416| 26855|
|0-6 months  |JiVitA-3       |BANGLADESH  |2      |            0|   8433| 26855|
|0-6 months  |JiVitA-3       |BANGLADESH  |2      |            1|    357| 26855|
|0-6 months  |JiVitA-3       |BANGLADESH  |3+     |            0|   7552| 26855|
|0-6 months  |JiVitA-3       |BANGLADESH  |3+     |            1|    338| 26855|
|0-6 months  |Keneba         |GAMBIA      |1      |            0|     74|  1681|
|0-6 months  |Keneba         |GAMBIA      |1      |            1|      6|  1681|
|0-6 months  |Keneba         |GAMBIA      |2      |            0|    141|  1681|
|0-6 months  |Keneba         |GAMBIA      |2      |            1|      6|  1681|
|0-6 months  |Keneba         |GAMBIA      |3+     |            0|   1319|  1681|
|0-6 months  |Keneba         |GAMBIA      |3+     |            1|    135|  1681|
|0-6 months  |PROVIDE        |BANGLADESH  |1      |            0|    270|   700|
|0-6 months  |PROVIDE        |BANGLADESH  |1      |            1|      7|   700|
|0-6 months  |PROVIDE        |BANGLADESH  |2      |            0|    243|   700|
|0-6 months  |PROVIDE        |BANGLADESH  |2      |            1|     11|   700|
|0-6 months  |PROVIDE        |BANGLADESH  |3+     |            0|    158|   700|
|0-6 months  |PROVIDE        |BANGLADESH  |3+     |            1|     11|   700|
|0-6 months  |SAS-CompFeed   |INDIA       |1      |            0|    428|  1503|
|0-6 months  |SAS-CompFeed   |INDIA       |1      |            1|     35|  1503|
|0-6 months  |SAS-CompFeed   |INDIA       |2      |            0|    315|  1503|
|0-6 months  |SAS-CompFeed   |INDIA       |2      |            1|     26|  1503|
|0-6 months  |SAS-CompFeed   |INDIA       |3+     |            0|    660|  1503|
|0-6 months  |SAS-CompFeed   |INDIA       |3+     |            1|     39|  1503|
|0-6 months  |SAS-FoodSuppl  |INDIA       |1      |            0|     22|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA       |1      |            1|      1|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA       |2      |            0|     62|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA       |2      |            1|      6|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA       |3+     |            0|    314|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA       |3+     |            1|     13|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA    |1      |            0|    816|  2388|
|0-6 months  |TanzaniaChild2 |TANZANIA    |1      |            1|     27|  2388|
|0-6 months  |TanzaniaChild2 |TANZANIA    |2      |            0|    766|  2388|
|0-6 months  |TanzaniaChild2 |TANZANIA    |2      |            1|     28|  2388|
|0-6 months  |TanzaniaChild2 |TANZANIA    |3+     |            0|    727|  2388|
|0-6 months  |TanzaniaChild2 |TANZANIA    |3+     |            1|     24|  2388|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |1      |            0|   5930| 13847|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |1      |            1|    433| 13847|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |2      |            0|   4160| 13847|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |2      |            1|    300| 13847|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |3+     |            0|   2804| 13847|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |3+     |            1|    220| 13847|
|6-24 months |COHORTS        |INDIA       |1      |            0|    782|  4349|
|6-24 months |COHORTS        |INDIA       |1      |            1|     23|  4349|
|6-24 months |COHORTS        |INDIA       |2      |            0|   1029|  4349|
|6-24 months |COHORTS        |INDIA       |2      |            1|     40|  4349|
|6-24 months |COHORTS        |INDIA       |3+     |            0|   2387|  4349|
|6-24 months |COHORTS        |INDIA       |3+     |            1|     88|  4349|
|6-24 months |COHORTS        |GUATEMALA   |1      |            0|    173|  1208|
|6-24 months |COHORTS        |GUATEMALA   |1      |            1|      6|  1208|
|6-24 months |COHORTS        |GUATEMALA   |2      |            0|    177|  1208|
|6-24 months |COHORTS        |GUATEMALA   |2      |            1|      1|  1208|
|6-24 months |COHORTS        |GUATEMALA   |3+     |            0|    828|  1208|
|6-24 months |COHORTS        |GUATEMALA   |3+     |            1|     23|  1208|
|6-24 months |COHORTS        |PHILIPPINES |1      |            0|    598|  2808|
|6-24 months |COHORTS        |PHILIPPINES |1      |            1|     49|  2808|
|6-24 months |COHORTS        |PHILIPPINES |2      |            0|    629|  2808|
|6-24 months |COHORTS        |PHILIPPINES |2      |            1|     38|  2808|
|6-24 months |COHORTS        |PHILIPPINES |3+     |            0|   1393|  2808|
|6-24 months |COHORTS        |PHILIPPINES |3+     |            1|    101|  2808|
|6-24 months |GMS-Nepal      |NEPAL       |1      |            0|    133|   590|
|6-24 months |GMS-Nepal      |NEPAL       |1      |            1|     29|   590|
|6-24 months |GMS-Nepal      |NEPAL       |2      |            0|    125|   590|
|6-24 months |GMS-Nepal      |NEPAL       |2      |            1|     31|   590|
|6-24 months |GMS-Nepal      |NEPAL       |3+     |            0|    220|   590|
|6-24 months |GMS-Nepal      |NEPAL       |3+     |            1|     52|   590|
|6-24 months |JiVitA-3       |BANGLADESH  |1      |            0|   6494| 17297|
|6-24 months |JiVitA-3       |BANGLADESH  |1      |            1|    219| 17297|
|6-24 months |JiVitA-3       |BANGLADESH  |2      |            0|   5524| 17297|
|6-24 months |JiVitA-3       |BANGLADESH  |2      |            1|    170| 17297|
|6-24 months |JiVitA-3       |BANGLADESH  |3+     |            0|   4726| 17297|
|6-24 months |JiVitA-3       |BANGLADESH  |3+     |            1|    164| 17297|
|6-24 months |Keneba         |GAMBIA      |1      |            0|     74|  1855|
|6-24 months |Keneba         |GAMBIA      |1      |            1|     13|  1855|
|6-24 months |Keneba         |GAMBIA      |2      |            0|    139|  1855|
|6-24 months |Keneba         |GAMBIA      |2      |            1|     20|  1855|
|6-24 months |Keneba         |GAMBIA      |3+     |            0|   1440|  1855|
|6-24 months |Keneba         |GAMBIA      |3+     |            1|    169|  1855|
|6-24 months |PROVIDE        |BANGLADESH  |1      |            0|    239|   615|
|6-24 months |PROVIDE        |BANGLADESH  |1      |            1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH  |2      |            0|    210|   615|
|6-24 months |PROVIDE        |BANGLADESH  |2      |            1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH  |3+     |            0|    153|   615|
|6-24 months |PROVIDE        |BANGLADESH  |3+     |            1|      5|   615|
|6-24 months |SAS-CompFeed   |INDIA       |1      |            0|    397|  1387|
|6-24 months |SAS-CompFeed   |INDIA       |1      |            1|     33|  1387|
|6-24 months |SAS-CompFeed   |INDIA       |2      |            0|    283|  1387|
|6-24 months |SAS-CompFeed   |INDIA       |2      |            1|     36|  1387|
|6-24 months |SAS-CompFeed   |INDIA       |3+     |            0|    573|  1387|
|6-24 months |SAS-CompFeed   |INDIA       |3+     |            1|     65|  1387|
|6-24 months |SAS-FoodSuppl  |INDIA       |1      |            0|     18|   402|
|6-24 months |SAS-FoodSuppl  |INDIA       |1      |            1|      2|   402|
|6-24 months |SAS-FoodSuppl  |INDIA       |2      |            0|     59|   402|
|6-24 months |SAS-FoodSuppl  |INDIA       |2      |            1|      7|   402|
|6-24 months |SAS-FoodSuppl  |INDIA       |3+     |            0|    274|   402|
|6-24 months |SAS-FoodSuppl  |INDIA       |3+     |            1|     42|   402|
|6-24 months |TanzaniaChild2 |TANZANIA    |1      |            0|    683|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA    |1      |            1|     31|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA    |2      |            0|    625|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA    |2      |            1|     27|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA    |3+     |            0|    620|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA    |3+     |            1|     25|  2011|
|6-24 months |ZVITAMBO       |ZIMBABWE    |1      |            0|   4685| 10812|
|6-24 months |ZVITAMBO       |ZIMBABWE    |1      |            1|    163| 10812|
|6-24 months |ZVITAMBO       |ZIMBABWE    |2      |            0|   3423| 10812|
|6-24 months |ZVITAMBO       |ZIMBABWE    |2      |            1|    123| 10812|
|6-24 months |ZVITAMBO       |ZIMBABWE    |3+     |            0|   2348| 10812|
|6-24 months |ZVITAMBO       |ZIMBABWE    |3+     |            1|     70| 10812|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


