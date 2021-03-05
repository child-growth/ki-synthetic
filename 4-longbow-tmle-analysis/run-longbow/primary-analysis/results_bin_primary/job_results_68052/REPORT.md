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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country                      |parity | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-----------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |1      |           0|    162|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |1      |           1|     46|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |2      |           0|    132|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |2      |           1|     55|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |           0|    705|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |           1|    241|  1341|
|0-24 months |COHORTS        |INDIA                        |1      |           0|    560|  4624|
|0-24 months |COHORTS        |INDIA                        |1      |           1|    250|  4624|
|0-24 months |COHORTS        |INDIA                        |2      |           0|    821|  4624|
|0-24 months |COHORTS        |INDIA                        |2      |           1|    363|  4624|
|0-24 months |COHORTS        |INDIA                        |3+     |           0|   1681|  4624|
|0-24 months |COHORTS        |INDIA                        |3+     |           1|    949|  4624|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |           0|    394|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |           1|    283|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |           0|    424|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |           1|    258|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |           0|    998|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |           1|    688|  3045|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |           0|     89|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |           1|    114|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |           0|     78|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |           1|    102|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |           0|    114|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |           1|    189|   686|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |           0|   7422| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |           1|   2704| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |           0|   6779| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |           1|   2155| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |           0|   5800| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |           1|   2096| 26956|
|0-24 months |Keneba         |GAMBIA                       |1      |           0|    131|  1990|
|0-24 months |Keneba         |GAMBIA                       |1      |           1|    109|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |           0|    118|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |           1|     96|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |           0|    771|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |           1|    765|  1990|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |           0|    163|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |           1|    108|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |           0|    170|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |           1|     74|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |           0|    121|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |           1|     64|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |           0|    273|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |           1|    175|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |           0|    219|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |           1|    135|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |           0|    393|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |           1|    318|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |           0|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |           1|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |           0|     51|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |           1|     26|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |           0|    158|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |           1|    162|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|    624|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|    197|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |           0|    583|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |           1|    188|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |           0|    592|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |           1|    173|  2357|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           0|   4509| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           1|   1497| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |           0|   3250| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |           1|    928| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |           0|   2885| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |           1|    876| 13945|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |           0|    122|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |           1|     30|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |2      |           0|    115|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |2      |           1|     34|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |3+     |           0|    613|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |3+     |           1|    149|  1063|
|0-6 months  |COHORTS        |INDIA                        |1      |           0|    562|  4444|
|0-6 months  |COHORTS        |INDIA                        |1      |           1|    197|  4444|
|0-6 months  |COHORTS        |INDIA                        |2      |           0|    878|  4444|
|0-6 months  |COHORTS        |INDIA                        |2      |           1|    259|  4444|
|0-6 months  |COHORTS        |INDIA                        |3+     |           0|   1922|  4444|
|0-6 months  |COHORTS        |INDIA                        |3+     |           1|    626|  4444|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |           0|    477|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |           1|    199|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |2      |           0|    527|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |2      |           1|    155|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+     |           0|   1323|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+     |           1|    363|  3044|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |           0|    124|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |           1|     79|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |           0|    111|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |           1|     69|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+     |           0|    193|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+     |           1|    110|   686|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |           0|   8185| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |           1|   1878| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |           0|   7474| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |           1|   1440| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+     |           0|   6468| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+     |           1|   1414| 26859|
|0-6 months  |Keneba         |GAMBIA                       |1      |           0|    155|  1851|
|0-6 months  |Keneba         |GAMBIA                       |1      |           1|     79|  1851|
|0-6 months  |Keneba         |GAMBIA                       |2      |           0|    153|  1851|
|0-6 months  |Keneba         |GAMBIA                       |2      |           1|     52|  1851|
|0-6 months  |Keneba         |GAMBIA                       |3+     |           0|    992|  1851|
|0-6 months  |Keneba         |GAMBIA                       |3+     |           1|    420|  1851|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |           0|    192|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |           1|     79|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |           0|    187|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |           1|     57|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+     |           0|    140|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+     |           1|     45|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |1      |           0|    349|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |1      |           1|     96|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |2      |           0|    275|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |2      |           1|     77|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+     |           0|    550|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+     |           1|    158|  1505|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1      |           0|     14|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1      |           1|      7|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2      |           0|     65|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2      |           1|     12|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+     |           0|    261|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+     |           1|     59|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|    700|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|    121|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |           0|    663|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |           1|    108|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |           0|    665|  2357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |           1|    100|  2357|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |           0|   4732| 13852|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |           1|   1229| 13852|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2      |           0|   3496| 13852|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2      |           1|    659| 13852|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+     |           0|   3115| 13852|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+     |           1|    621| 13852|
|6-24 months |COHORTS        |GUATEMALA                    |1      |           0|    163|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |1      |           1|     19|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |2      |           0|    147|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |2      |           1|     24|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |3+     |           0|    749|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |3+     |           1|    111|  1213|
|6-24 months |COHORTS        |INDIA                        |1      |           0|    680|  4339|
|6-24 months |COHORTS        |INDIA                        |1      |           1|     73|  4339|
|6-24 months |COHORTS        |INDIA                        |2      |           0|    972|  4339|
|6-24 months |COHORTS        |INDIA                        |2      |           1|    133|  4339|
|6-24 months |COHORTS        |INDIA                        |3+     |           0|   2071|  4339|
|6-24 months |COHORTS        |INDIA                        |3+     |           1|    410|  4339|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |           0|    469|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |           1|    139|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |2      |           0|    468|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |2      |           1|    157|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |3+     |           0|   1123|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |3+     |           1|    453|  2809|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |           0|     90|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |           1|     77|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |           0|     90|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |           1|     62|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |3+     |           0|    131|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |3+     |           1|    140|   590|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |           0|   5546| 17298|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |           1|   1080| 17298|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |           0|   4943| 17298|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |           1|    900| 17298|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+     |           0|   3972| 17298|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+     |           1|    857| 17298|
|6-24 months |Keneba         |GAMBIA                       |1      |           0|    169|  1924|
|6-24 months |Keneba         |GAMBIA                       |1      |           1|     58|  1924|
|6-24 months |Keneba         |GAMBIA                       |2      |           0|    140|  1924|
|6-24 months |Keneba         |GAMBIA                       |2      |           1|     58|  1924|
|6-24 months |Keneba         |GAMBIA                       |3+     |           0|    973|  1924|
|6-24 months |Keneba         |GAMBIA                       |3+     |           1|    526|  1924|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |           0|    189|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |           1|     38|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |           0|    189|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |           1|     35|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |3+     |           0|    138|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |3+     |           1|     26|   615|
|6-24 months |SAS-CompFeed   |INDIA                        |1      |           0|    303|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |1      |           1|    114|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |2      |           0|    237|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |2      |           1|     84|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |3+     |           0|    424|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |3+     |           1|    227|  1389|
|6-24 months |SAS-FoodSuppl  |INDIA                        |1      |           0|      3|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |1      |           1|      4|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |2      |           0|     59|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |2      |           1|     18|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |3+     |           0|    197|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |3+     |           1|    121|   402|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|    567|  1987|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|    106|  1987|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |           0|    541|  1987|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |           1|    111|  1987|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |           0|    561|  1987|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |           1|    101|  1987|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           0|   4104| 10814|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           1|    366| 10814|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2      |           0|   2934| 10814|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2      |           1|    354| 10814|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |           0|   2739| 10814|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |           1|    317| 10814|


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
![](/tmp/820d73b8-c851-4513-b8bb-4aefe64d6c71/0996d441-13b3-4311-8931-c68cde57bbd6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/820d73b8-c851-4513-b8bb-4aefe64d6c71/0996d441-13b3-4311-8931-c68cde57bbd6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/820d73b8-c851-4513-b8bb-4aefe64d6c71/0996d441-13b3-4311-8931-c68cde57bbd6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/820d73b8-c851-4513-b8bb-4aefe64d6c71/0996d441-13b3-4311-8931-c68cde57bbd6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.2817272| 0.1842253| 0.3792291|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |NA             | 0.2858692| 0.1721784| 0.3995600|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.2394712| 0.2084713| 0.2704711|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.3173033| 0.2707988| 0.3638079|
|0-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.3274238| 0.2894032| 0.3654444|
|0-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.3421841| 0.3210444| 0.3633238|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.3722469| 0.3193364| 0.4251574|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.3753072| 0.3163714| 0.4342430|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.4117426| 0.3798674| 0.4436178|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5166927| 0.4093507| 0.6240347|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.5593409| 0.4230510| 0.6956308|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.6309573| 0.5712839| 0.6906306|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2799074| 0.2631779| 0.2966369|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.2421533| 0.2264253| 0.2578813|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.2291389| 0.2142200| 0.2440578|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.4444559| 0.3733779| 0.5155339|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.5070129| 0.4085944| 0.6054314|
|0-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.4612404| 0.4298488| 0.4926320|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.4017169| 0.3274316| 0.4760022|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.2888674| 0.2123858| 0.3653490|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.3165969| 0.2325913| 0.4006025|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.4034414| 0.3092059| 0.4976768|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.3800184| 0.2838907| 0.4761462|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.4380589| 0.3825851| 0.4935328|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.4285714| 0.2166616| 0.6404813|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2                  |NA             | 0.3376623| 0.2319066| 0.4434181|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+                 |NA             | 0.5062500| 0.4514060| 0.5610940|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2604741| 0.2184997| 0.3024485|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.2515026| 0.2112119| 0.2917934|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.2556391| 0.2147815| 0.2964967|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2511446| 0.2330739| 0.2692153|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.2225483| 0.2032327| 0.2418640|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.2243801| 0.2044639| 0.2442962|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             | 0.1982060| 0.1133239| 0.2830882|
|0-6 months  |COHORTS        |GUATEMALA                    |2                  |NA             | 0.2038218| 0.0956540| 0.3119897|
|0-6 months  |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.2010256| 0.1658850| 0.2361662|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | 0.2665623| 0.2232980| 0.3098267|
|0-6 months  |COHORTS        |INDIA                        |2                  |NA             | 0.2306358| 0.1968084| 0.2644632|
|0-6 months  |COHORTS        |INDIA                        |3+                 |NA             | 0.2362356| 0.2168723| 0.2555989|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.2742344| 0.2286511| 0.3198177|
|0-6 months  |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.2338101| 0.1818467| 0.2857734|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.2287714| 0.1994858| 0.2580571|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.3957378| 0.2855385| 0.5059370|
|0-6 months  |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.3951650| 0.2622884| 0.5280415|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.3815960| 0.3186132| 0.4445788|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2131612| 0.1979512| 0.2283712|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.1575743| 0.1446133| 0.1705352|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.1510936| 0.1389421| 0.1632452|
|0-6 months  |Keneba         |GAMBIA                       |1                  |NA             | 0.5097094| 0.4345584| 0.5848603|
|0-6 months  |Keneba         |GAMBIA                       |2                  |NA             | 0.2683020| 0.1743688| 0.3622352|
|0-6 months  |Keneba         |GAMBIA                       |3+                 |NA             | 0.2825463| 0.2535266| 0.3115661|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.3092644| 0.2383942| 0.3801346|
|0-6 months  |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.2111442| 0.1433552| 0.2789331|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.1963302| 0.1157863| 0.2768741|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.2188057| 0.1499830| 0.2876284|
|0-6 months  |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.2173654| 0.1513161| 0.2834147|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.2128722| 0.1761266| 0.2496178|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.3333333| 0.1314724| 0.5351943|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2                  |NA             | 0.1558442| 0.0747332| 0.2369551|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+                 |NA             | 0.1843750| 0.1418358| 0.2269142|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1626282| 0.1289627| 0.1962938|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.1396238| 0.1085319| 0.1707157|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.1454242| 0.1123811| 0.1784673|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2119854| 0.1943224| 0.2296485|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.1611713| 0.1437191| 0.1786235|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.1424124| 0.1262391| 0.1585858|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.1040278| 0.0593354| 0.1487203|
|6-24 months |COHORTS        |GUATEMALA                    |2                  |NA             | 0.1372576| 0.0846882| 0.1898270|
|6-24 months |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.1287311| 0.1063042| 0.1511579|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.0856935| 0.0576843| 0.1137026|
|6-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.1256106| 0.0991053| 0.1521158|
|6-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.1521021| 0.1361038| 0.1681004|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.1897876| 0.1442780| 0.2352973|
|6-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.2607998| 0.2056417| 0.3159580|
|6-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.2886526| 0.2588810| 0.3184242|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.4146275| 0.2947977| 0.5344574|
|6-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.3614896| 0.2372565| 0.4857227|
|6-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.4897423| 0.4168437| 0.5626409|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1585902| 0.1439524| 0.1732280|
|6-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.1579398| 0.1438347| 0.1720449|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.1546618| 0.1391038| 0.1702198|
|6-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.1896511| 0.1350766| 0.2442256|
|6-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.2757636| 0.1869082| 0.3646190|
|6-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.3196913| 0.2919073| 0.3474753|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1616527| 0.1133521| 0.2099533|
|6-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.1612515| 0.1121958| 0.2103073|
|6-24 months |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.1611720| 0.1038606| 0.2184834|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.3038184| 0.2430044| 0.3646325|
|6-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.2819978| 0.2014812| 0.3625145|
|6-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.3569169| 0.3177774| 0.3960564|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1768404| 0.1375384| 0.2161424|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.1715767| 0.1321274| 0.2110260|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.1657152| 0.1311225| 0.2003078|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0876059| 0.0736675| 0.1015442|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.1131243| 0.0950855| 0.1311630|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.1267507| 0.1069294| 0.1465721|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2550336| 0.2316956| 0.2783715|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3378028| 0.3241691| 0.3514364|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4036125| 0.3861835| 0.4210415|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5903790| 0.5535526| 0.6272054|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580131| 0.2515484| 0.2644777|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.4874372| 0.4654705| 0.5094038|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4150694| 0.3581204| 0.4720184|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4712919| 0.4233811| 0.5192026|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2367416| 0.2195770| 0.2539062|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2367157| 0.2296604| 0.2437709|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2003763| 0.1763021| 0.2244505|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.2434743| 0.2308547| 0.2560940|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2355453| 0.2204685| 0.2506222|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3760933| 0.3398180| 0.4123685|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1761793| 0.1705546| 0.1818041|
|0-6 months  |Keneba         |GAMBIA                       |NA                 |NA             | 0.2976769| 0.2768415| 0.3185124|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2199336| 0.1753445| 0.2645227|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1866029| 0.1492099| 0.2239959|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1395842| 0.1255905| 0.1535779|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1811291| 0.1747154| 0.1875428|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1269580| 0.1082147| 0.1457012|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1419682| 0.1315821| 0.1523542|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2666429| 0.2502871| 0.2829988|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.4728814| 0.4325613| 0.5132014|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1640074| 0.1578946| 0.1701202|
|6-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.3336798| 0.3126050| 0.3547547|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3059755| 0.2638053| 0.3481458|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1600403| 0.1439152| 0.1761654|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0958942| 0.0903444| 0.1014441|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |1              | 1.0147023| 0.5990264| 1.7188237|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |1              | 0.8500111| 0.5874486| 1.2299270|
|0-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |2                  |1              | 1.0318951| 0.8559749| 1.2439706|
|0-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.0784131| 0.9199340| 1.2641939|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 1.0082210| 0.8158496| 1.2459522|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.1061008| 0.9408235| 1.3004129|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 1.0825407| 0.7857499| 1.4914344|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 1.2211460| 0.9719295| 1.5342652|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.8651193| 0.7955123| 0.9408169|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.8186240| 0.7500289| 0.8934925|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 1.1407496| 0.8870383| 1.4670276|
|0-24 months |Keneba         |GAMBIA                       |3+                 |1              | 1.0377642| 0.8722163| 1.2347334|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |1              | 0.7190820| 0.5211092| 0.9922659|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |1              | 0.7881094| 0.5706947| 1.0883514|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 0.9419421| 0.7406313| 1.1979712|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 1.0858057| 0.8594407| 1.3717922|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2                  |1              | 0.7878788| 0.4387984| 1.4146657|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+                 |1              | 1.1812500| 0.7120467| 1.9596350|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.9655572| 0.7694778| 1.2116019|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 0.9814378| 0.7820465| 1.2316660|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 0.8861363| 0.7917234| 0.9918079|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 0.8934298| 0.7970051| 1.0015203|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |2                  |1              | 1.0283331| 0.5201734| 2.0329163|
|0-6 months  |COHORTS        |GUATEMALA                    |3+                 |1              | 1.0142254| 0.6387991| 1.6102920|
|0-6 months  |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |2                  |1              | 0.8652226| 0.6952440| 1.0767588|
|0-6 months  |COHORTS        |INDIA                        |3+                 |1              | 0.8862302| 0.7389239| 1.0629024|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |2                  |1              | 0.8525921| 0.6459654| 1.1253130|
|0-6 months  |COHORTS        |PHILIPPINES                  |3+                 |1              | 0.8342186| 0.6763276| 1.0289698|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |2                  |1              | 0.9985526| 0.6452236| 1.5453671|
|0-6 months  |GMS-Nepal      |NEPAL                        |3+                 |1              | 0.9642648| 0.6975973| 1.3328703|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.7392259| 0.6662874| 0.8201491|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.7088234| 0.6353890| 0.7907450|
|0-6 months  |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Keneba         |GAMBIA                       |2                  |1              | 0.5263824| 0.3600343| 0.7695888|
|0-6 months  |Keneba         |GAMBIA                       |3+                 |1              | 0.5543283| 0.4632969| 0.6632460|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |2                  |1              | 0.6827302| 0.4605713| 1.0120484|
|0-6 months  |PROVIDE        |BANGLADESH                   |3+                 |1              | 0.6348295| 0.3969644| 1.0152257|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |2                  |1              | 0.9934175| 0.6907780| 1.4286476|
|0-6 months  |SAS-CompFeed   |INDIA                        |3+                 |1              | 0.9728822| 0.7650008| 1.2372532|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |2                  |1              | 0.4675325| 0.2103901| 1.0389588|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |3+                 |1              | 0.5531250| 0.2893215| 1.0574646|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.8585459| 0.6335738| 1.1634021|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 0.8942124| 0.6574957| 1.2161536|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 0.7602942| 0.6632035| 0.8715986|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 0.6718030| 0.5835472| 0.7734067|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |2                  |1              | 1.3194315| 0.7423589| 2.3450914|
|6-24 months |COHORTS        |GUATEMALA                    |3+                 |1              | 1.2374674| 0.7783665| 1.9673578|
|6-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |2                  |1              | 1.4658127| 0.9937902| 2.1620328|
|6-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.7749558| 1.2595610| 2.5012429|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 1.3741668| 0.9986549| 1.8908779|
|6-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.5209242| 1.1719059| 1.9738876|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 0.8718417| 0.5568274| 1.3650694|
|6-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 1.1811620| 0.8530836| 1.6354126|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.9958986| 0.8786636| 1.1287756|
|6-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.9752289| 0.8500417| 1.1188526|
|6-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Keneba         |GAMBIA                       |2                  |1              | 1.4540573| 0.9438629| 2.2400317|
|6-24 months |Keneba         |GAMBIA                       |3+                 |1              | 1.6856811| 1.2476043| 2.2775820|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |2                  |1              | 0.9975181| 0.6511245| 1.5281904|
|6-24 months |PROVIDE        |BANGLADESH                   |3+                 |1              | 0.9970262| 0.6264065| 1.5869266|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 0.9281787| 0.7733535| 1.1139998|
|6-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 1.1747703| 0.9634112| 1.4324985|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.9702349| 0.7047045| 1.3358162|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 0.9370888| 0.6906833| 1.2714010|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.2912867| 1.0310085| 1.6172722|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 1.4468295| 1.1576464| 1.8082512|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | -0.0266936| -0.1215716|  0.0681844|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0204994| -0.0242144|  0.0652133|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.0313656| -0.0191184|  0.0818495|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.0736863| -0.0274143|  0.1747869|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0218944| -0.0372540| -0.0065347|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.0429813| -0.0274452|  0.1134079|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0502884| -0.1151484|  0.0145717|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0116280| -0.0536929|  0.0769489|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |NA             |  0.0427204| -0.1638931|  0.2493340|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0237325| -0.0617344|  0.0142695|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0144289| -0.0310724|  0.0022146|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             |  0.0021703| -0.0800291|  0.0843697|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | -0.0230880| -0.0644189|  0.0182429|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | -0.0386891| -0.0814918|  0.0041136|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0196445| -0.1236319|  0.0843430|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0369819| -0.0511403| -0.0228234|
|0-6 months  |Keneba         |GAMBIA                       |1                  |NA             | -0.2120324| -0.2860653| -0.1379996|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0506930| -0.1125259|  0.0111399|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0011278| -0.0465953|  0.0488510|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |NA             | -0.1467305| -0.3417992|  0.0483382|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0230440| -0.0530842|  0.0069962|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0308563| -0.0471382| -0.0145745|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             |  0.0229301| -0.0189343|  0.0647946|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0562747|  0.0286948|  0.0838547|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.0768553|  0.0328848|  0.1208258|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.0582538| -0.0552906|  0.1717982|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0054172| -0.0080249|  0.0188592|
|6-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.1440287|  0.0889385|  0.1991189|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0006771| -0.0388900|  0.0375357|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0021571| -0.0397119|  0.0440261|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0168001| -0.0523398|  0.0187395|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0082884| -0.0047736|  0.0213503|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | -0.1046670| -0.5472919|  0.2113387|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0606846| -0.0814366|  0.1841283|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.0777121| -0.0561828|  0.1946327|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.1248119| -0.0644823|  0.2804443|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0848575| -0.1460675| -0.0269167|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.0881781| -0.0678576|  0.2214139|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.1430969| -0.3438363|  0.0276564|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0280147| -0.1437010|  0.1739489|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1                  |NA             |  0.0906454| -0.4727690|  0.4385231|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.1002463| -0.2731091|  0.0491453|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0609547| -0.1336739|  0.0071000|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             |  0.0108310| -0.4974823|  0.3465997|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | -0.0948272| -0.2785091|  0.0624653|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | -0.1642532| -0.3610991|  0.0041243|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | -0.0522329| -0.3685032|  0.1909451|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.2099104| -0.2933351| -0.1318669|
|0-6 months  |Keneba         |GAMBIA                       |1                  |NA             | -0.7122904| -0.9905683| -0.4729153|
|0-6 months  |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.1960503| -0.4612203|  0.0209989|
|0-6 months  |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0051281| -0.2374890|  0.2001787|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |1                  |NA             | -0.7863248| -2.2032501|  0.0038379|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.1650905| -0.4013953|  0.0313683|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.1703556| -0.2638280| -0.0837964|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             |  0.1806119| -0.2242685|  0.4515934|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.3963897|  0.1701087|  0.5609722|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             |  0.2882331|  0.1034791|  0.4349132|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.1231891| -0.1530805|  0.3332665|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0330300| -0.0524831|  0.1115953|
|6-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.4316375|  0.2449478|  0.5721674|
|6-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0042064| -0.2719838|  0.2071986|
|6-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0070498| -0.1397218|  0.1349204|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.1049745| -0.3509933|  0.0962437|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0864323| -0.0602788|  0.2128429|
