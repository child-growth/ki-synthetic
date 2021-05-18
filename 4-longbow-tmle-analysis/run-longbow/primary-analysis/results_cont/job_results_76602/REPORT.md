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
|Birth     |COHORTS        |INDIA       |1      |    758|  4149|
|Birth     |COHORTS        |INDIA       |2      |   1060|  4149|
|Birth     |COHORTS        |INDIA       |3+     |   2331|  4149|
|Birth     |COHORTS        |GUATEMALA   |1      |    129|   846|
|Birth     |COHORTS        |GUATEMALA   |2      |    131|   846|
|Birth     |COHORTS        |GUATEMALA   |3+     |    586|   846|
|Birth     |COHORTS        |PHILIPPINES |1      |    702|  3049|
|Birth     |COHORTS        |PHILIPPINES |2      |    718|  3049|
|Birth     |COHORTS        |PHILIPPINES |3+     |   1629|  3049|
|Birth     |GMS-Nepal      |NEPAL       |1      |    199|   696|
|Birth     |GMS-Nepal      |NEPAL       |2      |    184|   696|
|Birth     |GMS-Nepal      |NEPAL       |3+     |    313|   696|
|Birth     |JiVitA-3       |BANGLADESH  |1      |   8485| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |2      |   7328| 22453|
|Birth     |JiVitA-3       |BANGLADESH  |3+     |   6640| 22453|
|Birth     |Keneba         |GAMBIA      |1      |     48|  1110|
|Birth     |Keneba         |GAMBIA      |2      |     90|  1110|
|Birth     |Keneba         |GAMBIA      |3+     |    972|  1110|
|Birth     |PROVIDE        |BANGLADESH  |1      |    213|   539|
|Birth     |PROVIDE        |BANGLADESH  |2      |    204|   539|
|Birth     |PROVIDE        |BANGLADESH  |3+     |    122|   539|
|Birth     |SAS-CompFeed   |INDIA       |1      |    397|  1251|
|Birth     |SAS-CompFeed   |INDIA       |2      |    269|  1251|
|Birth     |SAS-CompFeed   |INDIA       |3+     |    585|  1251|
|Birth     |ZVITAMBO       |ZIMBABWE    |1      |   6380| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |2      |   4472| 13870|
|Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3018| 13870|
|6 months  |COHORTS        |INDIA       |1      |    797|  4290|
|6 months  |COHORTS        |INDIA       |2      |   1054|  4290|
|6 months  |COHORTS        |INDIA       |3+     |   2439|  4290|
|6 months  |COHORTS        |GUATEMALA   |1      |    142|   956|
|6 months  |COHORTS        |GUATEMALA   |2      |    143|   956|
|6 months  |COHORTS        |GUATEMALA   |3+     |    671|   956|
|6 months  |COHORTS        |PHILIPPINES |1      |    618|  2707|
|6 months  |COHORTS        |PHILIPPINES |2      |    643|  2707|
|6 months  |COHORTS        |PHILIPPINES |3+     |   1446|  2707|
|6 months  |GMS-Nepal      |NEPAL       |1      |    156|   564|
|6 months  |GMS-Nepal      |NEPAL       |2      |    147|   564|
|6 months  |GMS-Nepal      |NEPAL       |3+     |    261|   564|
|6 months  |JiVitA-3       |BANGLADESH  |1      |   6507| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |2      |   5537| 16810|
|6 months  |JiVitA-3       |BANGLADESH  |3+     |   4766| 16810|
|6 months  |Keneba         |GAMBIA      |1      |     68|  1418|
|6 months  |Keneba         |GAMBIA      |2      |    121|  1418|
|6 months  |Keneba         |GAMBIA      |3+     |   1229|  1418|
|6 months  |PROVIDE        |BANGLADESH  |1      |    242|   604|
|6 months  |PROVIDE        |BANGLADESH  |2      |    209|   604|
|6 months  |PROVIDE        |BANGLADESH  |3+     |    153|   604|
|6 months  |SAS-CompFeed   |INDIA       |1      |    409|  1334|
|6 months  |SAS-CompFeed   |INDIA       |2      |    305|  1334|
|6 months  |SAS-CompFeed   |INDIA       |3+     |    620|  1334|
|6 months  |SAS-FoodSuppl  |INDIA       |1      |     21|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |2      |     62|   380|
|6 months  |SAS-FoodSuppl  |INDIA       |3+     |    297|   380|
|6 months  |TanzaniaChild2 |TANZANIA    |1      |    720|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  2022|
|6 months  |TanzaniaChild2 |TANZANIA    |3+     |    645|  2022|
|6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3795|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2838|  8667|
|6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   2034|  8667|
|24 months |COHORTS        |INDIA       |1      |    593|  3305|
|24 months |COHORTS        |INDIA       |2      |    828|  3305|
|24 months |COHORTS        |INDIA       |3+     |   1884|  3305|
|24 months |COHORTS        |GUATEMALA   |1      |    163|  1058|
|24 months |COHORTS        |GUATEMALA   |2      |    158|  1058|
|24 months |COHORTS        |GUATEMALA   |3+     |    737|  1058|
|24 months |COHORTS        |PHILIPPINES |1      |    540|  2444|
|24 months |COHORTS        |PHILIPPINES |2      |    591|  2444|
|24 months |COHORTS        |PHILIPPINES |3+     |   1313|  2444|
|24 months |GMS-Nepal      |NEPAL       |1      |    134|   488|
|24 months |GMS-Nepal      |NEPAL       |2      |    132|   488|
|24 months |GMS-Nepal      |NEPAL       |3+     |    222|   488|
|24 months |JiVitA-3       |BANGLADESH  |1      |   3294|  8631|
|24 months |JiVitA-3       |BANGLADESH  |2      |   2797|  8631|
|24 months |JiVitA-3       |BANGLADESH  |3+     |   2540|  8631|
|24 months |Keneba         |GAMBIA      |1      |     52|  1194|
|24 months |Keneba         |GAMBIA      |2      |    102|  1194|
|24 months |Keneba         |GAMBIA      |3+     |   1040|  1194|
|24 months |PROVIDE        |BANGLADESH  |1      |    230|   578|
|24 months |PROVIDE        |BANGLADESH  |2      |    203|   578|
|24 months |PROVIDE        |BANGLADESH  |3+     |    145|   578|
|24 months |TanzaniaChild2 |TANZANIA    |1      |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA    |2      |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |3+     |      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE    |1      |    694|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |2      |    553|  1638|
|24 months |ZVITAMBO       |ZIMBABWE    |3+     |    391|  1638|


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


