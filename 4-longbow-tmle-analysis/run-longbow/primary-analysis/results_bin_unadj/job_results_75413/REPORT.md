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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mage    | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            0|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            1|    240|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            1|     66|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            1|     39|   373|
|0-24 months |COHORTS        |INDIA        |[20-30) |            0|   2349|  6164|
|0-24 months |COHORTS        |INDIA        |[20-30) |            1|   1383|  6164|
|0-24 months |COHORTS        |INDIA        |<20     |            0|    638|  6164|
|0-24 months |COHORTS        |INDIA        |<20     |            1|    349|  6164|
|0-24 months |COHORTS        |INDIA        |>=30    |            0|    914|  6164|
|0-24 months |COHORTS        |INDIA        |>=30    |            1|    531|  6164|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |            0|    135|  1358|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |            1|    465|  1358|
|0-24 months |COHORTS        |GUATEMALA    |<20     |            0|     60|  1358|
|0-24 months |COHORTS        |GUATEMALA    |<20     |            1|    210|  1358|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |            0|    125|  1358|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |            1|    363|  1358|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |            0|    492|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |            1|   1095|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |            0|    147|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |            1|    380|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |            0|    320|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |            1|    624|  3058|
|0-24 months |EE             |PAKISTAN     |[20-30) |            0|     26|   378|
|0-24 months |EE             |PAKISTAN     |[20-30) |            1|    132|   378|
|0-24 months |EE             |PAKISTAN     |<20     |            0|      0|   378|
|0-24 months |EE             |PAKISTAN     |<20     |            1|      2|   378|
|0-24 months |EE             |PAKISTAN     |>=30    |            0|     15|   378|
|0-24 months |EE             |PAKISTAN     |>=30    |            1|    203|   378|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |            0|    135|   698|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |            1|    284|   698|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |            0|     73|   698|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |            1|     99|   698|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |            0|     44|   698|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |            1|     63|   698|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            0|     64|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            1|     90|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |            0|     34|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |            1|     27|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            0|     44|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            1|     40|   299|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            0|    962|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            1|    522|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            0|    345|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            1|    227|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            0|    758|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            1|    415|  3229|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            0|   6398| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            1|   6116| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |            0|   6142| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |            1|   6160| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |            0|   1197| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |            1|   1205| 27218|
|0-24 months |Keneba         |GAMBIA       |[20-30) |            0|    442|  2910|
|0-24 months |Keneba         |GAMBIA       |[20-30) |            1|    476|  2910|
|0-24 months |Keneba         |GAMBIA       |<20     |            0|    137|  2910|
|0-24 months |Keneba         |GAMBIA       |<20     |            1|    125|  2910|
|0-24 months |Keneba         |GAMBIA       |>=30    |            0|    838|  2910|
|0-24 months |Keneba         |GAMBIA       |>=30    |            1|    892|  2910|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |            0|    158|   761|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |            1|    243|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |            0|     46|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |            1|    108|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |            0|     73|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |            1|    133|   761|
|0-24 months |MAL-ED         |INDIA        |[20-30) |            0|     64|   251|
|0-24 months |MAL-ED         |INDIA        |[20-30) |            1|     97|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |            0|     16|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |            1|     23|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |            0|     19|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |            1|     32|   251|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |            0|     61|   265|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |            1|     95|   265|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |            0|     11|   265|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |            1|     27|   265|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |            0|     31|   265|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |            1|     40|   265|
|0-24 months |MAL-ED         |PERU         |[20-30) |            0|     50|   303|
|0-24 months |MAL-ED         |PERU         |[20-30) |            1|    102|   303|
|0-24 months |MAL-ED         |PERU         |<20     |            0|     18|   303|
|0-24 months |MAL-ED         |PERU         |<20     |            1|     29|   303|
|0-24 months |MAL-ED         |PERU         |>=30    |            0|     47|   303|
|0-24 months |MAL-ED         |PERU         |>=30    |            1|     57|   303|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |            0|     99|   240|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |            1|     48|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |            0|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |            1|      7|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |            0|     55|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |            1|     29|   240|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |            0|     92|   233|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |            1|     34|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |            0|     21|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |            1|      8|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |            0|     57|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |            1|     21|   233|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |            0|     17|   262|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |            1|     95|   262|
|0-24 months |MAL-ED         |TANZANIA     |<20     |            0|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |<20     |            1|     10|   262|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |            0|     19|   262|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |            1|    117|   262|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            0|     56|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            1|     80|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |            0|     25|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |            1|     19|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            0|     57|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            1|     77|   314|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            0|    133|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            1|    245|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |            0|     39|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |            1|     77|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |            0|     39|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |            1|     95|   628|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            0|    261|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            1|    255|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |            0|     40|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |            1|     27|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            0|     95|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            1|     80|   758|
|0-24 months |PROBIT         |BELARUS      |[20-30) |            0|  10560| 16897|
|0-24 months |PROBIT         |BELARUS      |[20-30) |            1|   1529| 16897|
|0-24 months |PROBIT         |BELARUS      |<20     |            0|   1574| 16897|
|0-24 months |PROBIT         |BELARUS      |<20     |            1|    239| 16897|
|0-24 months |PROBIT         |BELARUS      |>=30    |            0|   2610| 16897|
|0-24 months |PROBIT         |BELARUS      |>=30    |            1|    385| 16897|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |            0|    262|   700|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |            1|    195|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |            0|     41|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |            1|     29|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |            0|     92|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |            1|     81|   700|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |            0|    357|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |            1|    773|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |            0|     64|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |            1|    165|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |            0|     51|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |            1|    121|  1531|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            0|     41|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            1|    223|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |            0|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |            1|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            0|     27|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            1|    101|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            0|    852|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            1|    444|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |            0|    229|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |            1|    154|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            0|    483|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            1|    231|  2393|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |            0|    101|   410|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |            1|    180|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |            0|     24|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |            1|     30|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |            0|     22|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |            1|     53|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            0|   5670| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            1|   4014| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            0|   1501| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            1|   1111| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            0|   1019| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            1|    737| 14052|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |            0|    129|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |            1|    134|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |            0|     35|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |            1|     31|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |            0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |            1|     23|   368|
|0-6 months  |COHORTS        |INDIA        |[20-30) |            0|   2957|  5956|
|0-6 months  |COHORTS        |INDIA        |[20-30) |            1|    652|  5956|
|0-6 months  |COHORTS        |INDIA        |<20     |            0|    779|  5956|
|0-6 months  |COHORTS        |INDIA        |<20     |            1|    179|  5956|
|0-6 months  |COHORTS        |INDIA        |>=30    |            0|   1131|  5956|
|0-6 months  |COHORTS        |INDIA        |>=30    |            1|    258|  5956|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |            0|    321|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |            1|    156|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |            0|    143|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |            1|     82|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |            0|    269|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |            1|    117|  1088|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |            0|   1205|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |            1|    382|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |            0|    402|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |            1|    125|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |            0|    720|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |            1|    224|  3058|
|0-6 months  |EE             |PAKISTAN     |[20-30) |            0|     52|   378|
|0-6 months  |EE             |PAKISTAN     |[20-30) |            1|    106|   378|
|0-6 months  |EE             |PAKISTAN     |<20     |            0|      0|   378|
|0-6 months  |EE             |PAKISTAN     |<20     |            1|      2|   378|
|0-6 months  |EE             |PAKISTAN     |>=30    |            0|     43|   378|
|0-6 months  |EE             |PAKISTAN     |>=30    |            1|    175|   378|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |            0|    275|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |            1|    144|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |            0|    126|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |            1|     46|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |            0|     75|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |            1|     32|   698|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |            0|     94|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |            1|     47|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |            0|     43|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |            1|     13|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |            0|     54|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |            1|     28|   279|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |            0|   7372| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |            1|   5117| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |            0|   7211| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |            1|   5056| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |            0|   1357| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |            1|   1039| 27152|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |            0|    542|  2462|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |            1|    243|  2462|
|0-6 months  |Keneba         |GAMBIA       |<20     |            0|    162|  2462|
|0-6 months  |Keneba         |GAMBIA       |<20     |            1|     58|  2462|
|0-6 months  |Keneba         |GAMBIA       |>=30    |            0|    988|  2462|
|0-6 months  |Keneba         |GAMBIA       |>=30    |            1|    469|  2462|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |            0|     73|   244|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |            1|     41|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |            0|     34|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |            1|     25|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |            0|     46|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |            1|     25|   244|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |            0|    104|   251|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |            1|     57|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |            0|     28|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |            1|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |            0|     32|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |            1|     19|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |            0|    100|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |            1|     56|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |            0|     22|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |            1|     16|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |            0|     48|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |            1|     23|   265|
|0-6 months  |MAL-ED         |PERU         |[20-30) |            0|     86|   303|
|0-6 months  |MAL-ED         |PERU         |[20-30) |            1|     66|   303|
|0-6 months  |MAL-ED         |PERU         |<20     |            0|     22|   303|
|0-6 months  |MAL-ED         |PERU         |<20     |            1|     25|   303|
|0-6 months  |MAL-ED         |PERU         |>=30    |            0|     66|   303|
|0-6 months  |MAL-ED         |PERU         |>=30    |            1|     38|   303|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |            0|    121|   240|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |            1|     26|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |            0|      7|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |            1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |            0|     69|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |            1|     15|   240|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |            0|     98|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |            1|     28|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |            0|     21|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |            1|      8|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |            0|     62|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |            1|     16|   233|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |            0|     69|   262|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |            1|     43|   262|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |            0|     11|   262|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |            1|      3|   262|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |            0|     73|   262|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |            1|     63|   262|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |            0|     80|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |            1|     56|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |            0|     36|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |            1|      8|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |            0|     82|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |            1|     52|   314|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |            0|    253|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |            1|    125|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |            0|     77|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |            1|     39|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |            0|     78|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |            1|     56|   628|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |            0|    349|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |            1|    167|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |            0|     50|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |            1|     17|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |            0|    130|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |            1|     45|   758|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |            0|  11255| 16892|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |            1|    830| 16892|
|0-6 months  |PROBIT         |BELARUS      |<20     |            0|   1685| 16892|
|0-6 months  |PROBIT         |BELARUS      |<20     |            1|    128| 16892|
|0-6 months  |PROBIT         |BELARUS      |>=30    |            0|   2793| 16892|
|0-6 months  |PROBIT         |BELARUS      |>=30    |            1|    201| 16892|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |            0|    350|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |            1|    107|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |            0|     56|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |            1|     14|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |            0|    126|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |            1|     47|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |            0|    652|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |            1|    475|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |            0|    124|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |            1|    105|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |            0|    102|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |            1|     70|  1528|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |            0|    163|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |            1|     99|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |            0|     16|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |            1|     10|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |            0|     75|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |            1|     53|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |            0|   1035|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |            1|    261|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |            0|    308|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |            1|     75|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |            0|    583|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |            1|    131|  2393|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |            0|    157|   410|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |            1|    124|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |            0|     34|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |            1|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |            0|     45|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |            1|     30|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |            0|   7214| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |            1|   2458| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |            0|   1893| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |            1|    717| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |            0|   1299| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |            1|    454| 14035|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            0|     26|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            1|    106|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            0|      1|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            1|     35|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            0|      1|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            1|     16|   185|
|6-24 months |COHORTS        |INDIA        |[20-30) |            0|   2151|  4765|
|6-24 months |COHORTS        |INDIA        |[20-30) |            1|    731|  4765|
|6-24 months |COHORTS        |INDIA        |<20     |            0|    592|  4765|
|6-24 months |COHORTS        |INDIA        |<20     |            1|    170|  4765|
|6-24 months |COHORTS        |INDIA        |>=30    |            0|    848|  4765|
|6-24 months |COHORTS        |INDIA        |>=30    |            1|    273|  4765|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |            0|     87|   894|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |            1|    309|   894|
|6-24 months |COHORTS        |GUATEMALA    |<20     |            0|     37|   894|
|6-24 months |COHORTS        |GUATEMALA    |<20     |            1|    128|   894|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |            0|     87|   894|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |            1|    246|   894|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |            0|    394|  2121|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |            1|    713|  2121|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |            0|    114|  2121|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |            1|    255|  2121|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |            0|    245|  2121|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |            1|    400|  2121|
|6-24 months |EE             |PAKISTAN     |[20-30) |            0|     25|    93|
|6-24 months |EE             |PAKISTAN     |[20-30) |            1|     26|    93|
|6-24 months |EE             |PAKISTAN     |<20     |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |<20     |            1|      0|    93|
|6-24 months |EE             |PAKISTAN     |>=30    |            0|     14|    93|
|6-24 months |EE             |PAKISTAN     |>=30    |            1|     28|    93|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |            0|     89|   397|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |            1|    140|   397|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |            0|     51|   397|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |            1|     53|   397|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |            0|     33|   397|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |            1|     31|   397|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            0|     51|   186|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            1|     43|   186|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |            0|     27|   186|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |            1|     14|   186|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            0|     39|   186|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            1|     12|   186|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            0|    962|  3229|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            1|    522|  3229|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            0|    345|  3229|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            1|    227|  3229|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            0|    758|  3229|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            1|    415|  3229|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            0|   3720| 10492|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            1|    999| 10492|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |            0|   3892| 10492|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |            1|   1104| 10492|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |            0|    611| 10492|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |            1|    166| 10492|
|6-24 months |Keneba         |GAMBIA       |[20-30) |            0|    404|  2012|
|6-24 months |Keneba         |GAMBIA       |[20-30) |            1|    233|  2012|
|6-24 months |Keneba         |GAMBIA       |<20     |            0|    126|  2012|
|6-24 months |Keneba         |GAMBIA       |<20     |            1|     67|  2012|
|6-24 months |Keneba         |GAMBIA       |>=30    |            0|    759|  2012|
|6-24 months |Keneba         |GAMBIA       |>=30    |            1|    423|  2012|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |            0|    152|   659|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |            1|    202|   659|
|6-24 months |LCNI-5         |MALAWI       |<20     |            0|     43|   659|
|6-24 months |LCNI-5         |MALAWI       |<20     |            1|     83|   659|
|6-24 months |LCNI-5         |MALAWI       |>=30    |            0|     71|   659|
|6-24 months |LCNI-5         |MALAWI       |>=30    |            1|    108|   659|
|6-24 months |MAL-ED         |INDIA        |[20-30) |            0|     57|   154|
|6-24 months |MAL-ED         |INDIA        |[20-30) |            1|     40|   154|
|6-24 months |MAL-ED         |INDIA        |<20     |            0|     14|   154|
|6-24 months |MAL-ED         |INDIA        |<20     |            1|     12|   154|
|6-24 months |MAL-ED         |INDIA        |>=30    |            0|     18|   154|
|6-24 months |MAL-ED         |INDIA        |>=30    |            1|     13|   154|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |            0|     53|   158|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |            1|     39|   158|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |            0|     11|   158|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |            1|     11|   158|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |            0|     27|   158|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |            1|     17|   158|
|6-24 months |MAL-ED         |PERU         |[20-30) |            0|     36|   149|
|6-24 months |MAL-ED         |PERU         |[20-30) |            1|     36|   149|
|6-24 months |MAL-ED         |PERU         |<20     |            0|     17|   149|
|6-24 months |MAL-ED         |PERU         |<20     |            1|      4|   149|
|6-24 months |MAL-ED         |PERU         |>=30    |            0|     37|   149|
|6-24 months |MAL-ED         |PERU         |>=30    |            1|     19|   149|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |            0|     97|   194|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |            1|     22|   194|
|6-24 months |MAL-ED         |NEPAL        |<20     |            0|      2|   194|
|6-24 months |MAL-ED         |NEPAL        |<20     |            1|      5|   194|
|6-24 months |MAL-ED         |NEPAL        |>=30    |            0|     54|   194|
|6-24 months |MAL-ED         |NEPAL        |>=30    |            1|     14|   194|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |            0|     79|   163|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |            1|      6|   163|
|6-24 months |MAL-ED         |BRAZIL       |<20     |            0|     18|   163|
|6-24 months |MAL-ED         |BRAZIL       |<20     |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |            0|     55|   163|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |            1|      5|   163|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |            0|     15|   144|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |            1|     52|   144|
|6-24 months |MAL-ED         |TANZANIA     |<20     |            0|      1|   144|
|6-24 months |MAL-ED         |TANZANIA     |<20     |            1|      7|   144|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |            0|     15|   144|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |            1|     54|   144|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            0|     43|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            1|     24|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |            0|     17|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |            1|     11|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            0|     38|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            1|     25|   158|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            0|     95|   344|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            1|    120|   344|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |            0|     28|   344|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |            1|     38|   344|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |            0|     24|   344|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |            1|     39|   344|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            0|    246|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            1|     88|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |            0|     35|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |            1|     10|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            0|     92|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            1|     35|   506|
|6-24 months |PROBIT         |BELARUS      |[20-30) |            0|  10355| 15467|
|6-24 months |PROBIT         |BELARUS      |[20-30) |            1|    699| 15467|
|6-24 months |PROBIT         |BELARUS      |<20     |            0|   1550| 15467|
|6-24 months |PROBIT         |BELARUS      |<20     |            1|    111| 15467|
|6-24 months |PROBIT         |BELARUS      |>=30    |            0|   2568| 15467|
|6-24 months |PROBIT         |BELARUS      |>=30    |            1|    184| 15467|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |            0|    212|   456|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |            1|     88|   456|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |            0|     32|   456|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |            1|     15|   456|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |            0|     75|   456|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |            1|     34|   456|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |            0|    304|   813|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |            1|    298|   813|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |            0|     55|   813|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |            1|     60|   813|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |            0|     45|   813|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |            1|     51|   813|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            0|     35|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            1|    124|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |            0|      3|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |            1|     12|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            0|     21|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            1|     48|   243|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            0|    667|  1600|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            1|    183|  1600|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |            0|    183|  1600|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |            1|     79|  1600|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            0|    388|  1600|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            1|    100|  1600|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |            0|    101|   236|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |            1|     56|   236|
|6-24 months |Vellore Crypto |INDIA        |<20     |            0|     24|   236|
|6-24 months |Vellore Crypto |INDIA        |<20     |            1|     10|   236|
|6-24 months |Vellore Crypto |INDIA        |>=30    |            0|     22|   236|
|6-24 months |Vellore Crypto |INDIA        |>=30    |            1|     23|   236|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            0|   4352|  8486|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            1|   1556|  8486|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            0|   1087|  8486|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            1|    394|  8486|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            0|    814|  8486|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            1|    283|  8486|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


