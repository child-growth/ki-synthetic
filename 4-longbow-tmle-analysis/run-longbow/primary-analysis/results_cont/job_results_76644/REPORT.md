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
|Birth     |COHORTS        |INDIA       |1      |    702|  3870|
|Birth     |COHORTS        |INDIA       |2      |    978|  3870|
|Birth     |COHORTS        |INDIA       |3+     |   2190|  3870|
|Birth     |COHORTS        |GUATEMALA   |1      |    115|   751|
|Birth     |COHORTS        |GUATEMALA   |2      |    120|   751|
|Birth     |COHORTS        |GUATEMALA   |3+     |    516|   751|
|Birth     |COHORTS        |PHILIPPINES |1      |    677|  2898|
|Birth     |COHORTS        |PHILIPPINES |2      |    678|  2898|
|Birth     |COHORTS        |PHILIPPINES |3+     |   1543|  2898|
|Birth     |GMS-Nepal      |NEPAL       |1      |    182|   641|
|Birth     |GMS-Nepal      |NEPAL       |2      |    169|   641|
|Birth     |GMS-Nepal      |NEPAL       |3+     |    290|   641|
|Birth     |JiVitA-3       |BANGLADESH  |1      |   6825| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |2      |   5837| 18012|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |   5350| 18012|
|Birth     |Keneba         |GAMBIA      |1      |     45|  1054|
|Birth     |Keneba         |GAMBIA      |2      |     87|  1054|
|Birth     |Keneba         |GAMBIA      |3+     |    922|  1054|
|Birth     |PROVIDE        |BANGLADESH  |1      |    209|   532|
|Birth     |PROVIDE        |BANGLADESH  |2      |    202|   532|
|Birth     |PROVIDE        |BANGLADESH  |3+     |    121|   532|
|Birth     |SAS-CompFeed   |INDIA       |1      |    347|  1103|
|Birth     |SAS-CompFeed   |INDIA       |2      |    246|  1103|
|Birth     |SAS-CompFeed   |INDIA       |3+     |    510|  1103|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5919| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |   4167| 12913|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   2827| 12913|
|6 months  |COHORTS        |INDIA       |1      |    797|  4284|
|6 months  |COHORTS        |INDIA       |2      |   1052|  4284|
|6 months  |COHORTS        |INDIA       |3+     |   2435|  4284|
|6 months  |COHORTS        |GUATEMALA   |1      |    142|   958|
|6 months  |COHORTS        |GUATEMALA   |2      |    145|   958|
|6 months  |COHORTS        |GUATEMALA   |3+     |    671|   958|
|6 months  |COHORTS        |PHILIPPINES |1      |    618|  2705|
|6 months  |COHORTS        |PHILIPPINES |2      |    643|  2705|
|6 months  |COHORTS        |PHILIPPINES |3+     |   1444|  2705|
|6 months  |GMS-Nepal      |NEPAL       |1      |    156|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |    147|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |    261|   564|
|6 months  |JiVitA-3       |BANGLADESH  |1      |   6498| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |2      |   5529| 16783|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |   4756| 16783|
|6 months  |Keneba         |GAMBIA      |1      |     68|  1418|
|6 months  |Keneba         |GAMBIA      |2      |    121|  1418|
|6 months  |Keneba         |GAMBIA      |3+     |   1229|  1418|
|6 months  |PROVIDE        |BANGLADESH  |1      |    241|   603|
|6 months  |PROVIDE        |BANGLADESH  |2      |    209|   603|
|6 months  |PROVIDE        |BANGLADESH  |3+     |    153|   603|
|6 months  |SAS-CompFeed   |INDIA       |1      |    409|  1332|
|6 months  |SAS-CompFeed   |INDIA       |2      |    303|  1332|
|6 months  |SAS-CompFeed   |INDIA       |3+     |    620|  1332|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |     21|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |     62|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |    297|   380|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |    719|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  2021|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |    645|  2021|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3722|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2794|  8503|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   1987|  8503|
|24 months |COHORTS        |INDIA       |1      |    589|  3282|
|24 months |COHORTS        |INDIA       |2      |    823|  3282|
|24 months |COHORTS        |INDIA       |3+     |   1870|  3282|
|24 months |COHORTS        |GUATEMALA   |1      |    165|  1070|
|24 months |COHORTS        |GUATEMALA   |2      |    161|  1070|
|24 months |COHORTS        |GUATEMALA   |3+     |    744|  1070|
|24 months |COHORTS        |PHILIPPINES |1      |    539|  2448|
|24 months |COHORTS        |PHILIPPINES |2      |    592|  2448|
|24 months |COHORTS        |PHILIPPINES |3+     |   1317|  2448|
|24 months |GMS-Nepal      |NEPAL       |1      |    134|   487|
|24 months |GMS-Nepal      |NEPAL       |2      |    131|   487|
|24 months |GMS-Nepal      |NEPAL       |3+     |    222|   487|
|24 months |JiVitA-3       |BANGLADESH  |1      |   3284|  8602|
|24 months |JiVitA-3       |BANGLADESH  |2      |   2788|  8602|
|24 months |JiVitA-3       |BANGLADESH  |3+     |   2530|  8602|
|24 months |Keneba         |GAMBIA      |1      |     52|  1196|
|24 months |Keneba         |GAMBIA      |2      |    103|  1196|
|24 months |Keneba         |GAMBIA      |3+     |   1041|  1196|
|24 months |PROVIDE        |BANGLADESH  |1      |    231|   579|
|24 months |PROVIDE        |BANGLADESH  |2      |    203|   579|
|24 months |PROVIDE        |BANGLADESH  |3+     |    145|   579|
|24 months |TanzaniaChild2 |TANZANIA    |1      |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |    169|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |    148|   432|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |    115|   432|


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


