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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country     |parity | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:-----------|:------|-----------:|------:|----:|
|0-24 months |COHORTS        |INDIA       |1      |           0|    228| 1677|
|0-24 months |COHORTS        |INDIA       |1      |           1|     68| 1677|
|0-24 months |COHORTS        |INDIA       |2      |           0|    310| 1677|
|0-24 months |COHORTS        |INDIA       |2      |           1|    106| 1677|
|0-24 months |COHORTS        |INDIA       |3+     |           0|    730| 1677|
|0-24 months |COHORTS        |INDIA       |3+     |           1|    235| 1677|
|0-24 months |COHORTS        |GUATEMALA   |1      |           0|     34|  378|
|0-24 months |COHORTS        |GUATEMALA   |1      |           1|     22|  378|
|0-24 months |COHORTS        |GUATEMALA   |2      |           0|     22|  378|
|0-24 months |COHORTS        |GUATEMALA   |2      |           1|     26|  378|
|0-24 months |COHORTS        |GUATEMALA   |3+     |           0|    156|  378|
|0-24 months |COHORTS        |GUATEMALA   |3+     |           1|    118|  378|
|0-24 months |COHORTS        |PHILIPPINES |1      |           0|    164| 1688|
|0-24 months |COHORTS        |PHILIPPINES |1      |           1|    233| 1688|
|0-24 months |COHORTS        |PHILIPPINES |2      |           0|    135| 1688|
|0-24 months |COHORTS        |PHILIPPINES |2      |           1|    249| 1688|
|0-24 months |COHORTS        |PHILIPPINES |3+     |           0|    365| 1688|
|0-24 months |COHORTS        |PHILIPPINES |3+     |           1|    542| 1688|
|0-24 months |GMS-Nepal      |NEPAL       |1      |           0|     79|  643|
|0-24 months |GMS-Nepal      |NEPAL       |1      |           1|    107|  643|
|0-24 months |GMS-Nepal      |NEPAL       |2      |           0|     66|  643|
|0-24 months |GMS-Nepal      |NEPAL       |2      |           1|     90|  643|
|0-24 months |GMS-Nepal      |NEPAL       |3+     |           0|    151|  643|
|0-24 months |GMS-Nepal      |NEPAL       |3+     |           1|    150|  643|
|0-24 months |JiVitA-3       |BANGLADESH  |1      |           0|   1641| 7571|
|0-24 months |JiVitA-3       |BANGLADESH  |1      |           1|   1215| 7571|
|0-24 months |JiVitA-3       |BANGLADESH  |2      |           0|   1440| 7571|
|0-24 months |JiVitA-3       |BANGLADESH  |2      |           1|   1006| 7571|
|0-24 months |JiVitA-3       |BANGLADESH  |3+     |           0|   1294| 7571|
|0-24 months |JiVitA-3       |BANGLADESH  |3+     |           1|    975| 7571|
|0-24 months |Keneba         |GAMBIA      |1      |           0|     25| 1173|
|0-24 months |Keneba         |GAMBIA      |1      |           1|     41| 1173|
|0-24 months |Keneba         |GAMBIA      |2      |           0|     37| 1173|
|0-24 months |Keneba         |GAMBIA      |2      |           1|     86| 1173|
|0-24 months |Keneba         |GAMBIA      |3+     |           0|    388| 1173|
|0-24 months |Keneba         |GAMBIA      |3+     |           1|    596| 1173|
|0-24 months |PROVIDE        |BANGLADESH  |1      |           0|     47|  308|
|0-24 months |PROVIDE        |BANGLADESH  |1      |           1|     67|  308|
|0-24 months |PROVIDE        |BANGLADESH  |2      |           0|     47|  308|
|0-24 months |PROVIDE        |BANGLADESH  |2      |           1|     66|  308|
|0-24 months |PROVIDE        |BANGLADESH  |3+     |           0|     35|  308|
|0-24 months |PROVIDE        |BANGLADESH  |3+     |           1|     46|  308|
|0-24 months |SAS-CompFeed   |INDIA       |1      |           0|    161|  814|
|0-24 months |SAS-CompFeed   |INDIA       |1      |           1|     90|  814|
|0-24 months |SAS-CompFeed   |INDIA       |2      |           0|    120|  814|
|0-24 months |SAS-CompFeed   |INDIA       |2      |           1|     67|  814|
|0-24 months |SAS-CompFeed   |INDIA       |3+     |           0|    223|  814|
|0-24 months |SAS-CompFeed   |INDIA       |3+     |           1|    153|  814|
|0-24 months |SAS-FoodSuppl  |INDIA       |1      |           0|     11|  234|
|0-24 months |SAS-FoodSuppl  |INDIA       |1      |           1|      0|  234|
|0-24 months |SAS-FoodSuppl  |INDIA       |2      |           0|     38|  234|
|0-24 months |SAS-FoodSuppl  |INDIA       |2      |           1|      2|  234|
|0-24 months |SAS-FoodSuppl  |INDIA       |3+     |           0|    172|  234|
|0-24 months |SAS-FoodSuppl  |INDIA       |3+     |           1|     11|  234|
|0-24 months |TanzaniaChild2 |TANZANIA    |1      |           0|     85|  712|
|0-24 months |TanzaniaChild2 |TANZANIA    |1      |           1|    168|  712|
|0-24 months |TanzaniaChild2 |TANZANIA    |2      |           0|     94|  712|
|0-24 months |TanzaniaChild2 |TANZANIA    |2      |           1|    134|  712|
|0-24 months |TanzaniaChild2 |TANZANIA    |3+     |           0|     87|  712|
|0-24 months |TanzaniaChild2 |TANZANIA    |3+     |           1|    144|  712|
|0-24 months |ZVITAMBO       |ZIMBABWE    |1      |           0|    767| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE    |1      |           1|    859| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE    |2      |           0|    544| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE    |2      |           1|    630| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE    |3+     |           0|    339| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE    |3+     |           1|    475| 3614|
|0-6 months  |COHORTS        |INDIA       |1      |           0|    139| 1145|
|0-6 months  |COHORTS        |INDIA       |1      |           1|     68| 1145|
|0-6 months  |COHORTS        |INDIA       |2      |           0|    184| 1145|
|0-6 months  |COHORTS        |INDIA       |2      |           1|    106| 1145|
|0-6 months  |COHORTS        |INDIA       |3+     |           0|    413| 1145|
|0-6 months  |COHORTS        |INDIA       |3+     |           1|    235| 1145|
|0-6 months  |COHORTS        |GUATEMALA   |1      |           0|     15|  213|
|0-6 months  |COHORTS        |GUATEMALA   |1      |           1|     21|  213|
|0-6 months  |COHORTS        |GUATEMALA   |2      |           0|      6|  213|
|0-6 months  |COHORTS        |GUATEMALA   |2      |           1|     26|  213|
|0-6 months  |COHORTS        |GUATEMALA   |3+     |           0|     34|  213|
|0-6 months  |COHORTS        |GUATEMALA   |3+     |           1|    111|  213|
|0-6 months  |COHORTS        |PHILIPPINES |1      |           0|     40|  752|
|0-6 months  |COHORTS        |PHILIPPINES |1      |           1|    132|  752|
|0-6 months  |COHORTS        |PHILIPPINES |2      |           0|     36|  752|
|0-6 months  |COHORTS        |PHILIPPINES |2      |           1|    133|  752|
|0-6 months  |COHORTS        |PHILIPPINES |3+     |           0|    122|  752|
|0-6 months  |COHORTS        |PHILIPPINES |3+     |           1|    289|  752|
|0-6 months  |GMS-Nepal      |NEPAL       |1      |           0|     24|  263|
|0-6 months  |GMS-Nepal      |NEPAL       |1      |           1|     48|  263|
|0-6 months  |GMS-Nepal      |NEPAL       |2      |           0|     25|  263|
|0-6 months  |GMS-Nepal      |NEPAL       |2      |           1|     45|  263|
|0-6 months  |GMS-Nepal      |NEPAL       |3+     |           0|     55|  263|
|0-6 months  |GMS-Nepal      |NEPAL       |3+     |           1|     66|  263|
|0-6 months  |JiVitA-3       |BANGLADESH  |1      |           0|    566| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH  |1      |           1|   1215| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH  |2      |           0|    487| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH  |2      |           1|   1006| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH  |3+     |           0|    485| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH  |3+     |           1|    975| 4734|
|0-6 months  |Keneba         |GAMBIA      |1      |           0|      3|  482|
|0-6 months  |Keneba         |GAMBIA      |1      |           1|     27|  482|
|0-6 months  |Keneba         |GAMBIA      |2      |           0|      7|  482|
|0-6 months  |Keneba         |GAMBIA      |2      |           1|     34|  482|
|0-6 months  |Keneba         |GAMBIA      |3+     |           0|     87|  482|
|0-6 months  |Keneba         |GAMBIA      |3+     |           1|    324|  482|
|0-6 months  |PROVIDE        |BANGLADESH  |1      |           0|     12|  185|
|0-6 months  |PROVIDE        |BANGLADESH  |1      |           1|     52|  185|
|0-6 months  |PROVIDE        |BANGLADESH  |2      |           0|     18|  185|
|0-6 months  |PROVIDE        |BANGLADESH  |2      |           1|     58|  185|
|0-6 months  |PROVIDE        |BANGLADESH  |3+     |           0|     10|  185|
|0-6 months  |PROVIDE        |BANGLADESH  |3+     |           1|     35|  185|
|0-6 months  |SAS-CompFeed   |INDIA       |1      |           0|     58|  341|
|0-6 months  |SAS-CompFeed   |INDIA       |1      |           1|     52|  341|
|0-6 months  |SAS-CompFeed   |INDIA       |2      |           0|     40|  341|
|0-6 months  |SAS-CompFeed   |INDIA       |2      |           1|     39|  341|
|0-6 months  |SAS-CompFeed   |INDIA       |3+     |           0|     68|  341|
|0-6 months  |SAS-CompFeed   |INDIA       |3+     |           1|     84|  341|
|0-6 months  |SAS-FoodSuppl  |INDIA       |1      |           0|      3|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA       |1      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA       |2      |           0|     11|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA       |2      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA       |3+     |           0|     64|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA       |3+     |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA    |1      |           0|     33|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA    |1      |           1|     91|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA    |2      |           0|     38|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA    |2      |           1|     76|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA    |3+     |           0|     30|  339|
|0-6 months  |TanzaniaChild2 |TANZANIA    |3+     |           1|     71|  339|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |1      |           0|    314| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |1      |           1|    824| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |2      |           0|    201| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |2      |           1|    602| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |3+     |           0|    121| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE    |3+     |           1|    457| 2519|
|6-24 months |COHORTS        |INDIA       |1      |           0|     89|  532|
|6-24 months |COHORTS        |INDIA       |1      |           1|      0|  532|
|6-24 months |COHORTS        |INDIA       |2      |           0|    126|  532|
|6-24 months |COHORTS        |INDIA       |2      |           1|      0|  532|
|6-24 months |COHORTS        |INDIA       |3+     |           0|    317|  532|
|6-24 months |COHORTS        |INDIA       |3+     |           1|      0|  532|
|6-24 months |COHORTS        |GUATEMALA   |1      |           0|     19|  165|
|6-24 months |COHORTS        |GUATEMALA   |1      |           1|      1|  165|
|6-24 months |COHORTS        |GUATEMALA   |2      |           0|     16|  165|
|6-24 months |COHORTS        |GUATEMALA   |2      |           1|      0|  165|
|6-24 months |COHORTS        |GUATEMALA   |3+     |           0|    122|  165|
|6-24 months |COHORTS        |GUATEMALA   |3+     |           1|      7|  165|
|6-24 months |COHORTS        |PHILIPPINES |1      |           0|    124|  936|
|6-24 months |COHORTS        |PHILIPPINES |1      |           1|    101|  936|
|6-24 months |COHORTS        |PHILIPPINES |2      |           0|     99|  936|
|6-24 months |COHORTS        |PHILIPPINES |2      |           1|    116|  936|
|6-24 months |COHORTS        |PHILIPPINES |3+     |           0|    243|  936|
|6-24 months |COHORTS        |PHILIPPINES |3+     |           1|    253|  936|
|6-24 months |GMS-Nepal      |NEPAL       |1      |           0|     55|  380|
|6-24 months |GMS-Nepal      |NEPAL       |1      |           1|     59|  380|
|6-24 months |GMS-Nepal      |NEPAL       |2      |           0|     41|  380|
|6-24 months |GMS-Nepal      |NEPAL       |2      |           1|     45|  380|
|6-24 months |GMS-Nepal      |NEPAL       |3+     |           0|     96|  380|
|6-24 months |GMS-Nepal      |NEPAL       |3+     |           1|     84|  380|
|6-24 months |JiVitA-3       |BANGLADESH  |1      |           0|   1075| 2837|
|6-24 months |JiVitA-3       |BANGLADESH  |1      |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH  |2      |           0|    953| 2837|
|6-24 months |JiVitA-3       |BANGLADESH  |2      |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH  |3+     |           0|    809| 2837|
|6-24 months |JiVitA-3       |BANGLADESH  |3+     |           1|      0| 2837|
|6-24 months |Keneba         |GAMBIA      |1      |           0|     22|  691|
|6-24 months |Keneba         |GAMBIA      |1      |           1|     14|  691|
|6-24 months |Keneba         |GAMBIA      |2      |           0|     30|  691|
|6-24 months |Keneba         |GAMBIA      |2      |           1|     52|  691|
|6-24 months |Keneba         |GAMBIA      |3+     |           0|    301|  691|
|6-24 months |Keneba         |GAMBIA      |3+     |           1|    272|  691|
|6-24 months |PROVIDE        |BANGLADESH  |1      |           0|     35|  123|
|6-24 months |PROVIDE        |BANGLADESH  |1      |           1|     15|  123|
|6-24 months |PROVIDE        |BANGLADESH  |2      |           0|     29|  123|
|6-24 months |PROVIDE        |BANGLADESH  |2      |           1|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH  |3+     |           0|     25|  123|
|6-24 months |PROVIDE        |BANGLADESH  |3+     |           1|     11|  123|
|6-24 months |SAS-CompFeed   |INDIA       |1      |           0|    103|  473|
|6-24 months |SAS-CompFeed   |INDIA       |1      |           1|     38|  473|
|6-24 months |SAS-CompFeed   |INDIA       |2      |           0|     80|  473|
|6-24 months |SAS-CompFeed   |INDIA       |2      |           1|     28|  473|
|6-24 months |SAS-CompFeed   |INDIA       |3+     |           0|    155|  473|
|6-24 months |SAS-CompFeed   |INDIA       |3+     |           1|     69|  473|
|6-24 months |SAS-FoodSuppl  |INDIA       |1      |           0|      8|  156|
|6-24 months |SAS-FoodSuppl  |INDIA       |1      |           1|      0|  156|
|6-24 months |SAS-FoodSuppl  |INDIA       |2      |           0|     27|  156|
|6-24 months |SAS-FoodSuppl  |INDIA       |2      |           1|      2|  156|
|6-24 months |SAS-FoodSuppl  |INDIA       |3+     |           0|    108|  156|
|6-24 months |SAS-FoodSuppl  |INDIA       |3+     |           1|     11|  156|
|6-24 months |TanzaniaChild2 |TANZANIA    |1      |           0|     52|  373|
|6-24 months |TanzaniaChild2 |TANZANIA    |1      |           1|     77|  373|
|6-24 months |TanzaniaChild2 |TANZANIA    |2      |           0|     56|  373|
|6-24 months |TanzaniaChild2 |TANZANIA    |2      |           1|     58|  373|
|6-24 months |TanzaniaChild2 |TANZANIA    |3+     |           0|     57|  373|
|6-24 months |TanzaniaChild2 |TANZANIA    |3+     |           1|     73|  373|
|6-24 months |ZVITAMBO       |ZIMBABWE    |1      |           0|    453| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE    |1      |           1|     35| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE    |2      |           0|    343| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE    |2      |           1|     28| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE    |3+     |           0|    218| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE    |3+     |           1|     18| 1095|


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
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


