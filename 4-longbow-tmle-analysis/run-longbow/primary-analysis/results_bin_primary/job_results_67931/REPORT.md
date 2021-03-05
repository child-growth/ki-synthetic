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

**Outcome Variable:** ever_stunted

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

|agecat      |studyid        |country                      |parity | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            0|     54|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            1|    159|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |2      |            0|     44|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |2      |            1|    148|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |            0|    223|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |            1|    732|  1360|
|0-24 months |COHORTS        |INDIA                        |1      |            0|    511|  4630|
|0-24 months |COHORTS        |INDIA                        |1      |            1|    301|  4630|
|0-24 months |COHORTS        |INDIA                        |2      |            0|    797|  4630|
|0-24 months |COHORTS        |INDIA                        |2      |            1|    388|  4630|
|0-24 months |COHORTS        |INDIA                        |3+     |            0|   1511|  4630|
|0-24 months |COHORTS        |INDIA                        |3+     |            1|   1122|  4630|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            0|    269|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            1|    409|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |            0|    242|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |            1|    448|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |            0|    448|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |            1|   1242|  3058|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            0|     74|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            1|    137|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            0|     74|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            1|    107|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |            0|    104|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |            1|    202|   698|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            0|   4760| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            1|   5492| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            0|   4853| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            1|   4146| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |            0|   4128| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |            1|   3848| 27227|
|0-24 months |Keneba         |GAMBIA                       |1      |            0|    119|  1990|
|0-24 months |Keneba         |GAMBIA                       |1      |            1|    122|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |            0|    110|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |            1|    104|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |            0|    632|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |            1|    903|  1990|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            0|    154|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            1|    117|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            0|    134|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            1|    110|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |            0|    107|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |            1|     78|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |            0|    162|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |            1|    290|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |            0|    122|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |            1|    238|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |            0|    189|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |            1|    532|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |            0|     13|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |            1|      8|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |            0|     19|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |            1|     58|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |            0|     40|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |            1|    280|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    550|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|    271|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            0|    494|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            1|    277|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            0|    495|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            1|    270|  2357|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            0|   3636| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            1|   2433| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |            0|   2463| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |            1|   1749| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |            0|   2104| 14073|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |            1|   1688| 14073|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |            0|    106|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |            1|     53|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |2      |            0|    108|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |2      |            1|     50|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |3+     |            0|    522|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |3+     |            1|    252|  1091|
|0-6 months  |COHORTS        |INDIA                        |1      |            0|    599|  4473|
|0-6 months  |COHORTS        |INDIA                        |1      |            1|    166|  4473|
|0-6 months  |COHORTS        |INDIA                        |2      |            0|    973|  4473|
|0-6 months  |COHORTS        |INDIA                        |2      |            1|    171|  4473|
|0-6 months  |COHORTS        |INDIA                        |3+     |            0|   2050|  4473|
|0-6 months  |COHORTS        |INDIA                        |3+     |            1|    514|  4473|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |            0|    526|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |            1|    152|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |2      |            0|    537|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |2      |            1|    153|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+     |            0|   1264|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+     |            1|    426|  3058|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |            0|    128|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |            1|     83|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |            0|    131|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |            1|     50|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+     |            0|    217|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+     |            1|     89|   698|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |            0|   5393| 27161|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |            1|   4817| 27161|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |            0|   5625| 27161|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |            1|   3355| 27161|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+     |            0|   4926| 27161|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+     |            1|   3045| 27161|
|0-6 months  |Keneba         |GAMBIA                       |1      |            0|    149|  1853|
|0-6 months  |Keneba         |GAMBIA                       |1      |            1|     86|  1853|
|0-6 months  |Keneba         |GAMBIA                       |2      |            0|    150|  1853|
|0-6 months  |Keneba         |GAMBIA                       |2      |            1|     55|  1853|
|0-6 months  |Keneba         |GAMBIA                       |3+     |            0|    973|  1853|
|0-6 months  |Keneba         |GAMBIA                       |3+     |            1|    440|  1853|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |            0|    201|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |            1|     70|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |            0|    182|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |            1|     62|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+     |            0|    149|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+     |            1|     36|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |1      |            0|    249|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |1      |            1|    202|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |2      |            0|    223|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |2      |            1|    136|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+     |            0|    407|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+     |            1|    313|  1530|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1      |            0|     14|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1      |            1|      6|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2      |            0|     46|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2      |            1|     31|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+     |            0|    194|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+     |            1|    125|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    647|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|    174|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            0|    630|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            1|    141|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            0|    621|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            1|    144|  2357|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |            0|   4497| 14056|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |            1|   1565| 14056|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2      |            0|   3160| 14056|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2      |            1|   1047| 14056|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+     |            0|   2763| 14056|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+     |            1|   1024| 14056|
|6-24 months |COHORTS        |GUATEMALA                    |1      |            0|     30|   895|
|6-24 months |COHORTS        |GUATEMALA                    |1      |            1|    106|   895|
|6-24 months |COHORTS        |GUATEMALA                    |2      |            0|     29|   895|
|6-24 months |COHORTS        |GUATEMALA                    |2      |            1|     98|   895|
|6-24 months |COHORTS        |GUATEMALA                    |3+     |            0|    152|   895|
|6-24 months |COHORTS        |GUATEMALA                    |3+     |            1|    480|   895|
|6-24 months |COHORTS        |INDIA                        |1      |            0|    463|  3548|
|6-24 months |COHORTS        |INDIA                        |1      |            1|    135|  3548|
|6-24 months |COHORTS        |INDIA                        |2      |            0|    729|  3548|
|6-24 months |COHORTS        |INDIA                        |2      |            1|    217|  3548|
|6-24 months |COHORTS        |INDIA                        |3+     |            0|   1396|  3548|
|6-24 months |COHORTS        |INDIA                        |3+     |            1|    608|  3548|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |            0|    210|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |            1|    257|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |2      |            0|    190|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |2      |            1|    295|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |3+     |            0|    353|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |3+     |            1|    816|  2121|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |            0|     48|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |            1|     54|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |            0|     51|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |            1|     57|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |3+     |            0|     74|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |3+     |            1|    113|   397|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |            0|   2931| 10493|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |            1|    675| 10493|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |            0|   3001| 10493|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |            1|    791| 10493|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+     |            0|   2292| 10493|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+     |            1|    803| 10493|
|6-24 months |Keneba         |GAMBIA                       |1      |            0|    109|  1365|
|6-24 months |Keneba         |GAMBIA                       |1      |            1|     36|  1365|
|6-24 months |Keneba         |GAMBIA                       |2      |            0|    102|  1365|
|6-24 months |Keneba         |GAMBIA                       |2      |            1|     49|  1365|
|6-24 months |Keneba         |GAMBIA                       |3+     |            0|    606|  1365|
|6-24 months |Keneba         |GAMBIA                       |3+     |            1|    463|  1365|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |            0|    116|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |            1|     47|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |            0|    116|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |            1|     48|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |3+     |            0|     87|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |3+     |            1|     42|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |1      |            0|    146|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |1      |            1|     88|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |2      |            0|    100|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |2      |            1|    102|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |3+     |            0|    158|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |3+     |            1|    219|   813|
|6-24 months |SAS-FoodSuppl  |INDIA                        |1      |            0|      2|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |1      |            1|      2|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |2      |            0|     19|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |2      |            1|     27|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |3+     |            0|     38|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |3+     |            1|    155|   243|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    424|  1577|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     97|  1577|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            0|    391|  1577|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            1|    136|  1577|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            0|    403|  1577|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            1|    126|  1577|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            0|   2670|  8496|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            1|    868|  8496|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2      |            0|   1911|  8496|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2      |            1|    702|  8496|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |            0|   1681|  8496|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |            1|    664|  8496|


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
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6b6c31e8-1e76-4288-94e8-87afd2146d57/4c867b63-7ab9-495c-8566-c8dab04d935a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b6c31e8-1e76-4288-94e8-87afd2146d57/4c867b63-7ab9-495c-8566-c8dab04d935a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b6c31e8-1e76-4288-94e8-87afd2146d57/4c867b63-7ab9-495c-8566-c8dab04d935a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b6c31e8-1e76-4288-94e8-87afd2146d57/4c867b63-7ab9-495c-8566-c8dab04d935a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.7642912| 0.6870494| 0.8415329|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |NA             | 0.8129997| 0.7193514| 0.9066480|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.7592148| 0.7257242| 0.7927055|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.3904697| 0.3429812| 0.4379581|
|0-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.3597065| 0.3223743| 0.3970387|
|0-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.3964367| 0.3749036| 0.4179699|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.5842270| 0.5338542| 0.6345998|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.6360323| 0.5770183| 0.6950463|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.7302795| 0.7053814| 0.7551776|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5983973| 0.4827510| 0.7140436|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.5883954| 0.4508629| 0.7259279|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.5859827| 0.5211508| 0.6508146|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.5484890| 0.5302451| 0.5667329|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.4713369| 0.4556400| 0.4870339|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.4761417| 0.4581494| 0.4941341|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.4666973| 0.3877731| 0.5456216|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.4778322| 0.3839796| 0.5716848|
|0-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.5674050| 0.5341156| 0.6006944|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.4685669| 0.3965944| 0.5405395|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.4469976| 0.3627771| 0.5312181|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.3488834| 0.2661278| 0.4316390|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.6301491| 0.5810218| 0.6792764|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.6588958| 0.5803584| 0.7374332|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.7529745| 0.7149185| 0.7910304|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.3809524| 0.1730038| 0.5889009|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2                  |NA             | 0.7532468| 0.6568366| 0.8496569|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+                 |NA             | 0.8750000| 0.8387213| 0.9112787|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3344483| 0.2917876| 0.3771089|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.3530394| 0.3106384| 0.3954404|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.3756152| 0.3319284| 0.4193020|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.4184041| 0.3977508| 0.4390575|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.4108838| 0.3881318| 0.4336359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.4446337| 0.4225806| 0.4666868|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             | 0.4157523| 0.3076558| 0.5238488|
|0-6 months  |COHORTS        |GUATEMALA                    |2                  |NA             | 0.4081426| 0.2816291| 0.5346562|
|0-6 months  |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.3332574| 0.2952676| 0.3712473|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | 0.2208379| 0.1808838| 0.2607920|
|0-6 months  |COHORTS        |INDIA                        |2                  |NA             | 0.1650513| 0.1351048| 0.1949979|
|0-6 months  |COHORTS        |INDIA                        |3+                 |NA             | 0.1917768| 0.1746127| 0.2089410|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.2679214| 0.2164617| 0.3193810|
|0-6 months  |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.2374884| 0.1857475| 0.2892294|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.2393763| 0.2142591| 0.2644935|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.3640678| 0.2573421| 0.4707935|
|0-6 months  |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.2724316| 0.1609256| 0.3839375|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.2024817| 0.1561433| 0.2488201|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.5015952| 0.4835361| 0.5196543|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.3851553| 0.3698023| 0.4005083|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.3558425| 0.3386834| 0.3730017|
|0-6 months  |Keneba         |GAMBIA                       |1                  |NA             | 0.2995177| 0.2313607| 0.3676746|
|0-6 months  |Keneba         |GAMBIA                       |2                  |NA             | 0.3092192| 0.2129788| 0.4054596|
|0-6 months  |Keneba         |GAMBIA                       |3+                 |NA             | 0.2898905| 0.2609998| 0.3187812|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.2648144| 0.1908210| 0.3388077|
|0-6 months  |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.2663281| 0.1842260| 0.3484303|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.1610635| 0.0986282| 0.2234988|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.4841829| 0.4004950| 0.5678708|
|0-6 months  |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.3905335| 0.3228349| 0.4582320|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.4246795| 0.3814931| 0.4678659|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.3000000| 0.0989216| 0.5010784|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2                  |NA             | 0.4025974| 0.2929258| 0.5122691|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+                 |NA             | 0.3918495| 0.3382155| 0.4454836|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2200485| 0.1827376| 0.2573593|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.1767624| 0.1436969| 0.2098279|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.1970289| 0.1580529| 0.2360050|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2708346| 0.2516035| 0.2900657|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.2499049| 0.2301402| 0.2696696|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.2798154| 0.2595188| 0.3001120|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.7391941| 0.6334494| 0.8449388|
|6-24 months |COHORTS        |GUATEMALA                    |2                  |NA             | 0.8028994| 0.6924463| 0.9133524|
|6-24 months |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.7571736| 0.7165069| 0.7978404|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.2514185| 0.2020065| 0.3008305|
|6-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.2545813| 0.2170985| 0.2920642|
|6-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.2742545| 0.2514198| 0.2970892|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.5017577| 0.4399432| 0.5635723|
|6-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.5982161| 0.5353868| 0.6610453|
|6-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.7004769| 0.6701795| 0.7307743|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5976564| 0.4647398| 0.7305730|
|6-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.5376701| 0.3717905| 0.7035497|
|6-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.5622778| 0.4757714| 0.6487842|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1827136| 0.1608630| 0.2045642|
|6-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.2208898| 0.1991361| 0.2426435|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.2682897| 0.2397687| 0.2968106|
|6-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.2588725| 0.1655318| 0.3522132|
|6-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.2689584| 0.1760928| 0.3618241|
|6-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.4205385| 0.3837951| 0.4572820|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.2565994| 0.1784040| 0.3347947|
|6-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.3103502| 0.2205025| 0.4001979|
|6-24 months |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.2936560| 0.1990086| 0.3883034|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.3167477| 0.2290157| 0.4044797|
|6-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.4911214| 0.4320754| 0.5501674|
|6-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.6131175| 0.5721558| 0.6540792|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1956805| 0.1515050| 0.2398560|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.2451041| 0.1967102| 0.2934979|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.2724271| 0.2273458| 0.3175085|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2483155| 0.2223266| 0.2743044|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.2657104| 0.2364789| 0.2949418|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.2883366| 0.2597028| 0.3169704|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7639706| 0.7413939| 0.7865473|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3911447| 0.3770865| 0.4052029|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6863963| 0.6699497| 0.7028430|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.6389685| 0.6033115| 0.6746254|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4953171| 0.4874955| 0.5031388|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.5673367| 0.5455633| 0.5891101|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6914547| 0.6510509| 0.7318584|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.8277512| 0.7915095| 0.8639929|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3470513| 0.3278294| 0.3662733|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4171108| 0.4089639| 0.4252576|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3253896| 0.2975756| 0.3532035|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.1902526| 0.1787489| 0.2017563|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2390451| 0.2239262| 0.2541640|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3180516| 0.2834770| 0.3526261|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4129818| 0.4055453| 0.4204184|
|0-6 months  |Keneba         |GAMBIA                       |NA                 |NA             | 0.3135456| 0.2924164| 0.3346748|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4254902| 0.3977202| 0.4532601|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3894231| 0.3425088| 0.4363374|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1947391| 0.1787488| 0.2107293|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2586796| 0.2514399| 0.2659192|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7642458| 0.7364214| 0.7920702|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.2705750| 0.2559548| 0.2851951|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6449788| 0.6246093| 0.6653483|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5642317| 0.5153938| 0.6130696|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2162394| 0.2068628| 0.2256160|
|6-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.4014652| 0.3754511| 0.4274793|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.5030750| 0.4588491| 0.5473009|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2276474| 0.2069456| 0.2483493|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2629473| 0.2535857| 0.2723089|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |1              | 1.0637304| 0.9127986| 1.2396188|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |1              | 0.9933581| 0.8899173| 1.1088225|
|0-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |2                  |1              | 0.9212150| 0.7856571| 1.0801621|
|0-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.0152817| 0.8893000| 1.1591105|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 1.0886733| 0.9598951| 1.2347282|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.2499928| 1.1400680| 1.3705164|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 0.9832854| 0.7264607| 1.3309050|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 0.9792535| 0.7836538| 1.2236748|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.8593371| 0.8217674| 0.8986244|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.8680972| 0.8271230| 0.9111011|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 1.0238589| 0.7903008| 1.3264406|
|0-24 months |Keneba         |GAMBIA                       |3+                 |1              | 1.2157880| 1.0167425| 1.4538002|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |1              | 0.9539674| 0.7502954| 1.2129273|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |1              | 0.7445754| 0.5633071| 0.9841746|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 1.0456189| 0.9109091| 1.2002502|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 1.1949148| 1.1082086| 1.2884048|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2                  |1              | 1.9772727| 1.1286797| 3.4638767|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+                 |1              | 2.2968750| 1.3285819| 3.9708764|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 1.0555875| 0.8864616| 1.2569806|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 1.1230891| 0.9453840| 1.3341977|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 0.9820262| 0.9120615| 1.0573580|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 1.0626895| 0.9911666| 1.1393736|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |2                  |1              | 0.9816966| 0.6562816| 1.4684673|
|0-6 months  |COHORTS        |GUATEMALA                    |3+                 |1              | 0.8015768| 0.6041443| 1.0635297|
|0-6 months  |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |2                  |1              | 0.7473869| 0.5787872| 0.9650992|
|0-6 months  |COHORTS        |INDIA                        |3+                 |1              | 0.8684055| 0.7101233| 1.0619679|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |2                  |1              | 0.8864110| 0.6638175| 1.1836454|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+                 |1              | 0.8934574| 0.7185285| 1.1109735|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |2                  |1              | 0.7482990| 0.4527790| 1.2366992|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+                 |1              | 0.5561649| 0.3831104| 0.8073896|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.7678608| 0.7286988| 0.8091275|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.7094217| 0.6694341| 0.7517979|
|0-6 months  |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Keneba         |GAMBIA                       |2                  |1              | 1.0323906| 0.7019383| 1.5184101|
|0-6 months  |Keneba         |GAMBIA                       |3+                 |1              | 0.9678577| 0.7549754| 1.2407670|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |2                  |1              | 1.0057164| 0.6640253| 1.5232334|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+                 |1              | 0.6082129| 0.3773646| 0.9802797|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |2                  |1              | 0.8065825| 0.6054764| 1.0744851|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+                 |1              | 0.8771056| 0.7206834| 1.0674787|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2                  |1              | 1.3419913| 0.6509327| 2.7667081|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+                 |1              | 1.3061651| 0.6590218| 2.5887871|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.8032885| 0.6244621| 1.0333251|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 0.8953888| 0.6905346| 1.1610152|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 0.9227216| 0.8298480| 1.0259892|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 1.0331597| 0.9336642| 1.1432579|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |2                  |1              | 1.0861821| 0.8908955| 1.3242760|
|6-24 months |COHORTS        |GUATEMALA                    |3+                 |1              | 1.0243231| 0.8794705| 1.1930336|
|6-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |2                  |1              | 1.0125799| 0.7928437| 1.2932158|
|6-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.0908287| 0.8818917| 1.3492670|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 1.1922408| 1.0152293| 1.4001154|
|6-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.3960460| 1.2262465| 1.5893578|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 0.8996308| 0.6153917| 1.3151552|
|6-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 0.9408046| 0.7179520| 1.2328307|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 1.2089399| 1.0334178| 1.4142738|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 1.4683618| 1.2485735| 1.7268399|
|6-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Keneba         |GAMBIA                       |2                  |1              | 1.0389610| 0.6308006| 1.7112222|
|6-24 months |Keneba         |GAMBIA                       |3+                 |1              | 1.6245005| 1.1210688| 2.3540055|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |2                  |1              | 1.2094738| 0.7958751| 1.8380108|
|6-24 months |PROVIDE        |BANGLADESH                   |3+                 |1              | 1.1444143| 0.7359107| 1.7796780|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 1.5505129| 1.1612930| 2.0701841|
|6-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 1.9356654| 1.5429801| 2.4282884|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 1.2525728| 0.9281742| 1.6903493|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 1.3922037| 1.0523676| 1.8417815|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.0700514| 0.9194212| 1.2453596|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 1.1611702| 1.0053296| 1.3411684|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | -0.0003206| -0.0749781|  0.0743369|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0006750| -0.0448412|  0.0461912|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.1021694|  0.0547804|  0.1495583|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.0405711| -0.0691556|  0.1502979|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0531718| -0.0697867| -0.0365570|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.1006393|  0.0227332|  0.1785455|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0328527| -0.0955734|  0.0298680|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0613056|  0.0100127|  0.1125985|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |NA             |  0.4467988|  0.2462717|  0.6473259|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0126031| -0.0258831|  0.0510892|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0012934| -0.0204158|  0.0178290|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             | -0.0903628| -0.1953427|  0.0146172|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | -0.0305853| -0.0686954|  0.0075248|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | -0.0288762| -0.0781632|  0.0204108|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0460162| -0.1460848|  0.0540524|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0886133| -0.1050982| -0.0721285|
|0-6 months  |Keneba         |GAMBIA                       |1                  |NA             |  0.0140279| -0.0532797|  0.0813356|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0248144| -0.0910760|  0.0414473|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.0586927| -0.1384104|  0.0210250|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |NA             |  0.0894231| -0.1074162|  0.2862624|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0253094| -0.0586621|  0.0080433|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0121550| -0.0300230|  0.0057130|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             |  0.0250517| -0.0776131|  0.1277166|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0191565| -0.0285458|  0.0668588|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.1432210|  0.0850020|  0.2014401|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0334246| -0.1593870|  0.0925377|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0335258|  0.0123182|  0.0547334|
|6-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.1425927|  0.0501073|  0.2350781|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.0438392| -0.0252180|  0.1128964|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.1863274|  0.1246047|  0.2480501|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0319669| -0.0086088|  0.0725427|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0146318| -0.0098466|  0.0391101|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | -0.0004196| -0.1030753|  0.0926826|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0017258| -0.1216938|  0.1115655|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.1488489|  0.0767790|  0.2152928|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.0634948| -0.1250606|  0.2204490|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.1073491| -0.1414797| -0.0742390|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.1773891|  0.0284903|  0.3034669|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0753995| -0.2297536|  0.0595806|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0886618|  0.0137214|  0.1579079|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |NA             |  0.5397743|  0.2142753|  0.7304301|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0363148| -0.0811860|  0.1410458|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0031008| -0.0500106|  0.0417133|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             | -0.2777064| -0.6464187|  0.0084335|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | -0.1607614| -0.3795246|  0.0233107|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | -0.1207982| -0.3473941|  0.0676902|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.1446816| -0.5067766|  0.1303979|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.2145696| -0.2553573| -0.1751071|
|0-6 months  |Keneba         |GAMBIA                       |1                  |NA             |  0.0447397| -0.1955460|  0.2367318|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.1033931| -0.4171857|  0.1409196|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.1379414| -0.3421500|  0.0351969|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |NA             |  0.2296296| -0.4847259|  0.6002828|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.1299657| -0.3150025|  0.0290342|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0469888| -0.1184155|  0.0198763|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             |  0.0327797| -0.1113055|  0.1581836|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0707991| -0.1232273|  0.2313094|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.2220554|  0.1259844|  0.3075664|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0592392| -0.3081277|  0.1422951|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.1550401|  0.0519347|  0.2469325|
|6-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.3551807|  0.0801886|  0.5479596|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             |  0.1459174| -0.1170560|  0.3469825|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.3703769|  0.2165570|  0.4939960|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.1404229| -0.0570497|  0.3010047|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0556453| -0.0421587|  0.1442706|
