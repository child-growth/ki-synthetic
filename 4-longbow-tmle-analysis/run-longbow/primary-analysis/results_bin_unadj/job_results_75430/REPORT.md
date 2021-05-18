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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country      |mage    | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |             0|    110|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |             1|    156|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |             0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |             1|     49|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |             0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |             1|     32|   373|
|0-24 months |COHORTS        |INDIA        |[20-30) |             0|   3289|  6164|
|0-24 months |COHORTS        |INDIA        |[20-30) |             1|    443|  6164|
|0-24 months |COHORTS        |INDIA        |<20     |             0|    853|  6164|
|0-24 months |COHORTS        |INDIA        |<20     |             1|    134|  6164|
|0-24 months |COHORTS        |INDIA        |>=30    |             0|   1258|  6164|
|0-24 months |COHORTS        |INDIA        |>=30    |             1|    187|  6164|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |             0|    317|  1358|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |             1|    283|  1358|
|0-24 months |COHORTS        |GUATEMALA    |<20     |             0|    142|  1358|
|0-24 months |COHORTS        |GUATEMALA    |<20     |             1|    128|  1358|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |             0|    269|  1358|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |             1|    219|  1358|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |             0|   1018|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |             1|    569|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |             0|    333|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |             1|    194|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |             0|    618|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |             1|    326|  3058|
|0-24 months |EE             |PAKISTAN     |[20-30) |             0|     76|   378|
|0-24 months |EE             |PAKISTAN     |[20-30) |             1|     82|   378|
|0-24 months |EE             |PAKISTAN     |<20     |             0|      0|   378|
|0-24 months |EE             |PAKISTAN     |<20     |             1|      2|   378|
|0-24 months |EE             |PAKISTAN     |>=30    |             0|     75|   378|
|0-24 months |EE             |PAKISTAN     |>=30    |             1|    143|   378|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |             0|    317|   698|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |             1|    102|   698|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |             0|    134|   698|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |             1|     38|   698|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |             0|     78|   698|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |             1|     29|   698|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |             0|    124|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |             1|     30|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |             0|     53|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |             1|      8|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |             0|     69|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |             1|     15|   299|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |             0|   1320|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |             1|    164|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |             0|    510|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |             1|     62|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |             0|   1052|  3229|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |             1|    121|  3229|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |             0|  10233| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |             1|   2281| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |             0|  10034| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |             1|   2268| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |             0|   1932| 27218|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |             1|    470| 27218|
|0-24 months |Keneba         |GAMBIA       |[20-30) |             0|    733|  2910|
|0-24 months |Keneba         |GAMBIA       |[20-30) |             1|    185|  2910|
|0-24 months |Keneba         |GAMBIA       |<20     |             0|    220|  2910|
|0-24 months |Keneba         |GAMBIA       |<20     |             1|     42|  2910|
|0-24 months |Keneba         |GAMBIA       |>=30    |             0|   1339|  2910|
|0-24 months |Keneba         |GAMBIA       |>=30    |             1|    391|  2910|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |             0|    330|   761|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |             1|     71|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |             0|    114|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |             1|     40|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |             0|    157|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |             1|     49|   761|
|0-24 months |MAL-ED         |INDIA        |[20-30) |             0|    125|   251|
|0-24 months |MAL-ED         |INDIA        |[20-30) |             1|     36|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |             0|     30|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |             1|      9|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |             0|     37|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |             1|     14|   251|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |             0|    121|   265|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |             1|     35|   265|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |             0|     28|   265|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |             1|     10|   265|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |             0|     58|   265|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |             1|     13|   265|
|0-24 months |MAL-ED         |PERU         |[20-30) |             0|    116|   303|
|0-24 months |MAL-ED         |PERU         |[20-30) |             1|     36|   303|
|0-24 months |MAL-ED         |PERU         |<20     |             0|     36|   303|
|0-24 months |MAL-ED         |PERU         |<20     |             1|     11|   303|
|0-24 months |MAL-ED         |PERU         |>=30    |             0|     87|   303|
|0-24 months |MAL-ED         |PERU         |>=30    |             1|     17|   303|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |             0|    133|   240|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |             1|     14|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |             0|      7|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |             0|     79|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |             1|      5|   240|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |             0|    114|   233|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |             1|     12|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |             0|     25|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |             1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |             0|     72|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |             1|      6|   233|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |             0|     56|   262|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |             1|     56|   262|
|0-24 months |MAL-ED         |TANZANIA     |<20     |             0|     10|   262|
|0-24 months |MAL-ED         |TANZANIA     |<20     |             1|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |             0|     59|   262|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |             1|     77|   262|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |             0|     98|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |             1|     38|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |             0|     38|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |             1|      6|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |             0|    105|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |             1|     29|   314|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |             0|    265|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |             1|    113|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |             0|     86|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |             1|     30|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |             0|     81|   628|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |             1|     53|   628|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |             0|    443|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |             1|     73|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |             0|     62|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |             1|      5|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |             0|    154|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |             1|     21|   758|
|0-24 months |PROBIT         |BELARUS      |[20-30) |             0|  11752| 16897|
|0-24 months |PROBIT         |BELARUS      |[20-30) |             1|    337| 16897|
|0-24 months |PROBIT         |BELARUS      |<20     |             0|   1762| 16897|
|0-24 months |PROBIT         |BELARUS      |<20     |             1|     51| 16897|
|0-24 months |PROBIT         |BELARUS      |>=30    |             0|   2916| 16897|
|0-24 months |PROBIT         |BELARUS      |>=30    |             1|     79| 16897|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |             0|    393|   700|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |             1|     64|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |             0|     62|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |             1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |             0|    150|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |             1|     23|   700|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |             0|    768|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |             1|    362|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |             0|    140|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |             1|     89|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |             0|    117|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |             1|     55|  1531|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |             0|    137|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |             1|    127|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |             0|     15|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |             1|     11|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |             0|     65|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |             1|     63|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |             0|   1156|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |             1|    140|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |             0|    349|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |             1|     34|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |             0|    649|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |             1|     65|  2393|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |             0|    206|   410|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |             1|     75|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |             0|     40|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |             1|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |             0|     62|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |             1|     13|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |             0|   8076| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |             1|   1608| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |             0|   2151| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |             1|    461| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |             0|   1463| 14052|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |             1|    293| 14052|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |             0|    205|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |             1|     58|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |             0|     48|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |             1|     18|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |             0|     24|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |             1|     15|   368|
|0-6 months  |COHORTS        |INDIA        |[20-30) |             0|   3427|  5956|
|0-6 months  |COHORTS        |INDIA        |[20-30) |             1|    182|  5956|
|0-6 months  |COHORTS        |INDIA        |<20     |             0|    910|  5956|
|0-6 months  |COHORTS        |INDIA        |<20     |             1|     48|  5956|
|0-6 months  |COHORTS        |INDIA        |>=30    |             0|   1331|  5956|
|0-6 months  |COHORTS        |INDIA        |>=30    |             1|     58|  5956|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |             0|    432|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |             1|     45|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |             0|    200|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |             1|     25|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |             0|    346|  1088|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |             1|     40|  1088|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |             0|   1481|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |             1|    106|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |             0|    496|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |             1|     31|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |             0|    890|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |             1|     54|  3058|
|0-6 months  |EE             |PAKISTAN     |[20-30) |             0|    103|   378|
|0-6 months  |EE             |PAKISTAN     |[20-30) |             1|     55|   378|
|0-6 months  |EE             |PAKISTAN     |<20     |             0|      0|   378|
|0-6 months  |EE             |PAKISTAN     |<20     |             1|      2|   378|
|0-6 months  |EE             |PAKISTAN     |>=30    |             0|    115|   378|
|0-6 months  |EE             |PAKISTAN     |>=30    |             1|    103|   378|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |             0|    379|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |             1|     40|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |             0|    160|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |             1|     12|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |             0|     99|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |             1|      8|   698|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |             0|    125|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |             1|     16|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |             0|     55|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |             1|      1|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |             0|     74|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |             1|      8|   279|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |             0|  10649| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |             1|   1840| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |             0|  10496| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |             1|   1771| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |             0|   2006| 27152|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |             1|    390| 27152|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |             0|    700|  2462|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |             1|     85|  2462|
|0-6 months  |Keneba         |GAMBIA       |<20     |             0|    201|  2462|
|0-6 months  |Keneba         |GAMBIA       |<20     |             1|     19|  2462|
|0-6 months  |Keneba         |GAMBIA       |>=30    |             0|   1274|  2462|
|0-6 months  |Keneba         |GAMBIA       |>=30    |             1|    183|  2462|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |             0|    106|   244|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |             1|      8|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |             0|     55|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |             1|      4|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |             0|     65|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |             1|      6|   244|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |             0|    147|   251|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |             1|     14|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |             0|     38|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |             1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |             0|     45|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |             1|      6|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |             0|    144|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |             1|     12|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |             0|     34|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |             1|      4|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |             0|     66|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |             1|      5|   265|
|0-6 months  |MAL-ED         |PERU         |[20-30) |             0|    132|   303|
|0-6 months  |MAL-ED         |PERU         |[20-30) |             1|     20|   303|
|0-6 months  |MAL-ED         |PERU         |<20     |             0|     41|   303|
|0-6 months  |MAL-ED         |PERU         |<20     |             1|      6|   303|
|0-6 months  |MAL-ED         |PERU         |>=30    |             0|     92|   303|
|0-6 months  |MAL-ED         |PERU         |>=30    |             1|     12|   303|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |             0|    141|   240|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |             1|      6|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |             0|      8|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |             1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |             0|     81|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |             1|      3|   240|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |             0|    117|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |             1|      9|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |             0|     25|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |             1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |             0|     74|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |             1|      4|   233|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |             0|     99|   262|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |             1|     13|   262|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |             0|     14|   262|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |             1|      0|   262|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |             0|    111|   262|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |             1|     25|   262|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |             0|    122|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |             1|     14|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |             0|     41|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |             1|      3|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |             0|    122|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |             1|     12|   314|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |             0|    343|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |             1|     35|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |             0|    108|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |             1|      8|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |             0|    118|   628|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |             1|     16|   628|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |             0|    479|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |             1|     37|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |             0|     65|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |             1|      2|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |             0|    167|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |             1|      8|   758|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |             0|  11951| 16892|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |             1|    134| 16892|
|0-6 months  |PROBIT         |BELARUS      |<20     |             0|   1790| 16892|
|0-6 months  |PROBIT         |BELARUS      |<20     |             1|     23| 16892|
|0-6 months  |PROBIT         |BELARUS      |>=30    |             0|   2966| 16892|
|0-6 months  |PROBIT         |BELARUS      |>=30    |             1|     28| 16892|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |             0|    432|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |             1|     25|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |             0|     70|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |             1|      0|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |             0|    167|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |             1|      6|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |             0|    962|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |             1|    165|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |             0|    194|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |             1|     35|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |             0|    144|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |             1|     28|  1528|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |             0|    234|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |             1|     28|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |             0|     23|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |             1|      3|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |             0|    109|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |             1|     19|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |             0|   1226|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |             1|     70|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |             0|    370|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |             1|     13|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |             0|    692|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |             1|     22|  2393|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |             0|    237|   410|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |             1|     44|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |             0|     44|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |             1|     10|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |             0|     67|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |             1|      8|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |             0|   8817| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |             1|    855| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |             0|   2358| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |             1|    252| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |             0|   1581| 14035|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |             1|    172| 14035|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


