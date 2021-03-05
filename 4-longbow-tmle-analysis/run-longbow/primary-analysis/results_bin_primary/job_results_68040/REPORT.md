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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mage    | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |           0|    118|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |           1|    178|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |           0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |           1|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |           0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |           1|     25|   373|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |           0|    492|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |           1|    163|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |           0|    146|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |           1|     50|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |           0|    361|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |           1|    129|  1341|
|0-24 months |COHORTS        |INDIA                        |[20-30) |           0|   2449|  5305|
|0-24 months |COHORTS        |INDIA                        |[20-30) |           1|   1148|  5305|
|0-24 months |COHORTS        |INDIA                        |<20     |           0|    274|  5305|
|0-24 months |COHORTS        |INDIA                        |<20     |           1|    152|  5305|
|0-24 months |COHORTS        |INDIA                        |>=30    |           0|    800|  5305|
|0-24 months |COHORTS        |INDIA                        |>=30    |           1|    482|  5305|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |           0|   1106|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |           1|    714|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |           0|    208|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |           1|    169|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |           0|    502|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |           1|    346|  3045|
|0-24 months |EE             |PAKISTAN                     |[20-30) |           0|     73|   377|
|0-24 months |EE             |PAKISTAN                     |[20-30) |           1|     89|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |           0|      0|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |           1|      1|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |           0|     81|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |           1|    133|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |           0|    190|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |           1|    254|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |           0|     55|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |           1|     86|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |           0|     36|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |           1|     65|   686|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |           0|    159|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |           1|     16|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |           0|     41|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |           1|      6|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |           0|     51|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |           1|      8|   281|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |           0|   1381|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |           1|    362|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |           0|    314|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |           1|     89|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |           0|    761|  3179|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |           1|    272|  3179|
|0-24 months |IRC            |INDIA                        |[20-30) |           0|    114|   410|
|0-24 months |IRC            |INDIA                        |[20-30) |           1|    230|   410|
|0-24 months |IRC            |INDIA                        |<20     |           0|     16|   410|
|0-24 months |IRC            |INDIA                        |<20     |           1|     21|   410|
|0-24 months |IRC            |INDIA                        |>=30    |           0|     11|   410|
|0-24 months |IRC            |INDIA                        |>=30    |           1|     18|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |           0|   9437| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |           1|   3153| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |           0|   8927| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |           1|   3124| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |           0|   1627| 26945|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |           1|    677| 26945|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |           0|    855|  2864|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |           1|    588|  2864|
|0-24 months |Keneba         |GAMBIA                       |<20     |           0|    235|  2864|
|0-24 months |Keneba         |GAMBIA                       |<20     |           1|    159|  2864|
|0-24 months |Keneba         |GAMBIA                       |>=30    |           0|    503|  2864|
|0-24 months |Keneba         |GAMBIA                       |>=30    |           1|    524|  2864|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |           0|    337|   670|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |           1|     27|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |           0|     99|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |           1|      9|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |           0|    180|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |           1|     18|   670|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |           0|    130|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |           1|     50|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |           0|     18|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |           1|     19|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |           0|     28|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |           1|     18|   263|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |           0|    127|   233|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |           1|     12|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |           0|     40|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |           1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |           0|     46|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |           1|      5|   233|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |           0|     99|   249|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |           1|     95|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |           0|     15|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |           1|     19|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |           0|     16|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |           1|      5|   249|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |           0|    130|   240|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |           1|     59|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |           0|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |           1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |           0|     34|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |           1|     12|   240|
|0-24 months |MAL-ED         |PERU                         |[20-30) |           0|    139|   302|
|0-24 months |MAL-ED         |PERU                         |[20-30) |           1|     14|   302|
|0-24 months |MAL-ED         |PERU                         |<20     |           0|     74|   302|
|0-24 months |MAL-ED         |PERU                         |<20     |           1|      8|   302|
|0-24 months |MAL-ED         |PERU                         |>=30    |           0|     62|   302|
|0-24 months |MAL-ED         |PERU                         |>=30    |           1|      5|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |           0|    123|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |           1|     36|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |           0|     38|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |           1|     10|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |           0|     87|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |           1|     18|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |           0|    123|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |           1|     16|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |           0|     13|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |           1|      3|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |           0|     89|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |           1|     17|   261|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |           0|    215|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |           1|    202|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |           0|     47|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |           1|     26|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |           0|     63|   622|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |           1|     69|   622|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |           0|    331|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |           1|    163|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |           0|     90|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |           1|     46|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |           0|     87|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |           1|     41|   758|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |           0|   8998| 16898|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |           1|   3132| 16898|
|0-24 months |PROBIT         |BELARUS                      |<20     |           0|   1300| 16898|
|0-24 months |PROBIT         |BELARUS                      |<20     |           1|    445| 16898|
|0-24 months |PROBIT         |BELARUS                      |>=30    |           0|   2284| 16898|
|0-24 months |PROBIT         |BELARUS                      |>=30    |           1|    739| 16898|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |           0|    330|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |           1|    163|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |           0|     47|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |           1|     38|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |           0|     77|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |           1|     45|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |           0|    670|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |           1|    482|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |           0|    126|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |           1|     66|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |           0|     89|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |           1|     80|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |           0|    161|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |           1|    129|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |           0|     20|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |           1|     16|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |           0|     40|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |           1|     52|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |           0|   1204|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |           1|    367|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |           0|    127|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |           1|     40|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |           0|    482|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |           1|    156|  2376|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |           0|   7174| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |           1|   2177| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |           0|   1650| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |           1|    568| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |           0|   1794| 13908|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |           1|    545| 13908|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30) |           0|    139|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30) |           1|    153|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20     |           0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20     |           1|     18|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30    |           0|     23|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30    |           1|     19|   368|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30) |           0|    426|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30) |           1|     98|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |<20     |           0|    101|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |<20     |           1|     36|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30    |           0|    323|  1063|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30    |           1|     79|  1063|
|0-6 months  |COHORTS        |INDIA                        |[20-30) |           0|   2637|  5102|
|0-6 months  |COHORTS        |INDIA                        |[20-30) |           1|    825|  5102|
|0-6 months  |COHORTS        |INDIA                        |<20     |           0|    288|  5102|
|0-6 months  |COHORTS        |INDIA                        |<20     |           1|    112|  5102|
|0-6 months  |COHORTS        |INDIA                        |>=30    |           0|    901|  5102|
|0-6 months  |COHORTS        |INDIA                        |>=30    |           1|    339|  5102|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30) |           0|   1400|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30) |           1|    419|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20     |           0|    277|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20     |           1|    100|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30    |           0|    650|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30    |           1|    198|  3044|
|0-6 months  |EE             |PAKISTAN                     |[20-30) |           0|    121|   377|
|0-6 months  |EE             |PAKISTAN                     |[20-30) |           1|     41|   377|
|0-6 months  |EE             |PAKISTAN                     |<20     |           0|      0|   377|
|0-6 months  |EE             |PAKISTAN                     |<20     |           1|      1|   377|
|0-6 months  |EE             |PAKISTAN                     |>=30    |           0|    132|   377|
|0-6 months  |EE             |PAKISTAN                     |>=30    |           1|     82|   377|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30) |           0|    283|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30) |           1|    161|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20     |           0|     81|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20     |           1|     60|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30    |           0|     64|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30    |           1|     37|   686|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30) |           0|    163|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30) |           1|      1|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<20     |           0|     43|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<20     |           1|      3|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=30    |           0|     49|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=30    |           1|      5|   264|
|0-6 months  |IRC            |INDIA                        |[20-30) |           0|    157|   410|
|0-6 months  |IRC            |INDIA                        |[20-30) |           1|    187|   410|
|0-6 months  |IRC            |INDIA                        |<20     |           0|     17|   410|
|0-6 months  |IRC            |INDIA                        |<20     |           1|     20|   410|
|0-6 months  |IRC            |INDIA                        |>=30    |           0|     13|   410|
|0-6 months  |IRC            |INDIA                        |>=30    |           1|     16|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30) |           0|  10373| 26848|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30) |           1|   2180| 26848|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20     |           0|   9942| 26848|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20     |           1|   2054| 26848|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30    |           0|   1802| 26848|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30    |           1|    497| 26848|
|0-6 months  |Keneba         |GAMBIA                       |[20-30) |           0|    887|  2444|
|0-6 months  |Keneba         |GAMBIA                       |[20-30) |           1|    287|  2444|
|0-6 months  |Keneba         |GAMBIA                       |<20     |           0|    254|  2444|
|0-6 months  |Keneba         |GAMBIA                       |<20     |           1|    104|  2444|
|0-6 months  |Keneba         |GAMBIA                       |>=30    |           0|    631|  2444|
|0-6 months  |Keneba         |GAMBIA                       |>=30    |           1|    281|  2444|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30) |           0|    115|   220|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30) |           1|      1|   220|
|0-6 months  |LCNI-5         |MALAWI                       |<20     |           0|     39|   220|
|0-6 months  |LCNI-5         |MALAWI                       |<20     |           1|      0|   220|
|0-6 months  |LCNI-5         |MALAWI                       |>=30    |           0|     63|   220|
|0-6 months  |LCNI-5         |MALAWI                       |>=30    |           1|      2|   220|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30) |           0|    147|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30) |           1|     33|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20     |           0|     23|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20     |           1|     14|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30    |           0|     33|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30    |           1|     13|   263|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30) |           0|    131|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30) |           1|      8|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |<20     |           0|     40|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |<20     |           1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |>=30    |           0|     47|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |>=30    |           1|      4|   233|
|0-6 months  |MAL-ED         |INDIA                        |[20-30) |           0|    129|   249|
|0-6 months  |MAL-ED         |INDIA                        |[20-30) |           1|     65|   249|
|0-6 months  |MAL-ED         |INDIA                        |<20     |           0|     22|   249|
|0-6 months  |MAL-ED         |INDIA                        |<20     |           1|     12|   249|
|0-6 months  |MAL-ED         |INDIA                        |>=30    |           0|     17|   249|
|0-6 months  |MAL-ED         |INDIA                        |>=30    |           1|      4|   249|
|0-6 months  |MAL-ED         |NEPAL                        |[20-30) |           0|    151|   240|
|0-6 months  |MAL-ED         |NEPAL                        |[20-30) |           1|     38|   240|
|0-6 months  |MAL-ED         |NEPAL                        |<20     |           0|      3|   240|
|0-6 months  |MAL-ED         |NEPAL                        |<20     |           1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL                        |>=30    |           0|     38|   240|
|0-6 months  |MAL-ED         |NEPAL                        |>=30    |           1|      8|   240|
|0-6 months  |MAL-ED         |PERU                         |[20-30) |           0|    148|   302|
|0-6 months  |MAL-ED         |PERU                         |[20-30) |           1|      5|   302|
|0-6 months  |MAL-ED         |PERU                         |<20     |           0|     79|   302|
|0-6 months  |MAL-ED         |PERU                         |<20     |           1|      3|   302|
|0-6 months  |MAL-ED         |PERU                         |>=30    |           0|     64|   302|
|0-6 months  |MAL-ED         |PERU                         |>=30    |           1|      3|   302|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30) |           0|    140|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30) |           1|     19|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20     |           0|     41|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20     |           1|      7|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30    |           0|     96|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30    |           1|      9|   312|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |           0|    138|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |           0|     15|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |           0|     95|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |           1|     11|   261|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30) |           0|    258|   620|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30) |           1|    158|   620|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20     |           0|     52|   620|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20     |           1|     20|   620|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30    |           0|     88|   620|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30    |           1|     44|   620|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30) |           0|    368|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30) |           1|    126|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20     |           0|     99|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20     |           1|     37|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30    |           0|     96|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30    |           1|     32|   758|
|0-6 months  |PROBIT         |BELARUS                      |[20-30) |           0|   9065| 16895|
|0-6 months  |PROBIT         |BELARUS                      |[20-30) |           1|   3064| 16895|
|0-6 months  |PROBIT         |BELARUS                      |<20     |           0|   1311| 16895|
|0-6 months  |PROBIT         |BELARUS                      |<20     |           1|    433| 16895|
|0-6 months  |PROBIT         |BELARUS                      |>=30    |           0|   2295| 16895|
|0-6 months  |PROBIT         |BELARUS                      |>=30    |           1|    727| 16895|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30) |           0|    369|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30) |           1|    124|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20     |           0|     62|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20     |           1|     23|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30    |           0|     88|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30    |           1|     34|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30) |           0|    889|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30) |           1|    257|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20     |           0|    160|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20     |           1|     31|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30    |           0|    125|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30    |           1|     43|  1505|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30) |           0|    243|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30) |           1|     47|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20     |           0|     29|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20     |           1|      7|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30    |           0|     68|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30    |           1|     24|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |           0|   1352|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |           1|    219|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |           0|    142|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |           1|     25|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |           0|    550|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |           1|     88|  2376|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30) |           0|   7635| 13815|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30) |           1|   1662| 13815|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20     |           0|   1757| 13815|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20     |           1|    441| 13815|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30    |           0|   1924| 13815|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30    |           1|    396| 13815|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |           0|    224|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |           1|     72|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |           0|     22|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |           1|     12|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |           0|     28|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |           1|     15|   373|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30) |           0|    512|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30) |           1|     79|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |<20     |           0|    156|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |<20     |           1|     16|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |>=30    |           0|    391|  1213|
|6-24 months |COHORTS        |GUATEMALA                    |>=30    |           1|     59|  1213|
|6-24 months |COHORTS        |INDIA                        |[20-30) |           0|   2960|  4957|
|6-24 months |COHORTS        |INDIA                        |[20-30) |           1|    405|  4957|
|6-24 months |COHORTS        |INDIA                        |<20     |           0|    319|  4957|
|6-24 months |COHORTS        |INDIA                        |<20     |           1|     58|  4957|
|6-24 months |COHORTS        |INDIA                        |>=30    |           0|   1025|  4957|
|6-24 months |COHORTS        |INDIA                        |>=30    |           1|    190|  4957|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30) |           0|   1259|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30) |           1|    414|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |<20     |           0|    232|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |<20     |           1|    114|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30    |           0|    569|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30    |           1|    221|  2809|
|6-24 months |EE             |PAKISTAN                     |[20-30) |           0|     94|   371|
|6-24 months |EE             |PAKISTAN                     |[20-30) |           1|     66|   371|
|6-24 months |EE             |PAKISTAN                     |<20     |           0|      1|   371|
|6-24 months |EE             |PAKISTAN                     |<20     |           1|      0|   371|
|6-24 months |EE             |PAKISTAN                     |>=30    |           0|    118|   371|
|6-24 months |EE             |PAKISTAN                     |>=30    |           1|     92|   371|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30) |           0|    207|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30) |           1|    175|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |<20     |           0|     65|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |<20     |           1|     54|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30    |           0|     39|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30    |           1|     50|   590|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |           0|    150|   265|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |           1|     16|   265|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<20     |           0|     38|   265|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<20     |           1|      4|   265|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |           0|     54|   265|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |           1|      3|   265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |           0|   1381|  3179|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |           1|    362|  3179|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |           0|    314|  3179|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |           1|     89|  3179|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |           0|    761|  3179|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |           1|    272|  3179|
|6-24 months |IRC            |INDIA                        |[20-30) |           0|    235|   410|
|6-24 months |IRC            |INDIA                        |[20-30) |           1|    109|   410|
|6-24 months |IRC            |INDIA                        |<20     |           0|     28|   410|
|6-24 months |IRC            |INDIA                        |<20     |           1|      9|   410|
|6-24 months |IRC            |INDIA                        |>=30    |           0|     20|   410|
|6-24 months |IRC            |INDIA                        |>=30    |           1|      9|   410|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |           0|   6609| 17292|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |           1|   1248| 17292|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20     |           0|   6824| 17292|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20     |           1|   1359| 17292|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30    |           0|   1022| 17292|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30    |           1|    230| 17292|
|6-24 months |Keneba         |GAMBIA                       |[20-30) |           0|    941|  2689|
|6-24 months |Keneba         |GAMBIA                       |[20-30) |           1|    398|  2689|
|6-24 months |Keneba         |GAMBIA                       |<20     |           0|    275|  2689|
|6-24 months |Keneba         |GAMBIA                       |<20     |           1|     89|  2689|
|6-24 months |Keneba         |GAMBIA                       |>=30    |           0|    612|  2689|
|6-24 months |Keneba         |GAMBIA                       |>=30    |           1|    374|  2689|
|6-24 months |LCNI-5         |MALAWI                       |[20-30) |           0|    330|   659|
|6-24 months |LCNI-5         |MALAWI                       |[20-30) |           1|     27|   659|
|6-24 months |LCNI-5         |MALAWI                       |<20     |           0|     97|   659|
|6-24 months |LCNI-5         |MALAWI                       |<20     |           1|      9|   659|
|6-24 months |LCNI-5         |MALAWI                       |>=30    |           0|    180|   659|
|6-24 months |LCNI-5         |MALAWI                       |>=30    |           1|     16|   659|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30) |           0|    137|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30) |           1|     26|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |<20     |           0|     27|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |<20     |           1|      8|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30    |           0|     33|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30    |           1|      9|   240|
|6-24 months |MAL-ED         |BRAZIL                       |[20-30) |           0|    120|   207|
|6-24 months |MAL-ED         |BRAZIL                       |[20-30) |           1|      4|   207|
|6-24 months |MAL-ED         |BRAZIL                       |<20     |           0|     35|   207|
|6-24 months |MAL-ED         |BRAZIL                       |<20     |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL                       |>=30    |           0|     46|   207|
|6-24 months |MAL-ED         |BRAZIL                       |>=30    |           1|      1|   207|
|6-24 months |MAL-ED         |INDIA                        |[20-30) |           0|    127|   233|
|6-24 months |MAL-ED         |INDIA                        |[20-30) |           1|     51|   233|
|6-24 months |MAL-ED         |INDIA                        |<20     |           0|     23|   233|
|6-24 months |MAL-ED         |INDIA                        |<20     |           1|     11|   233|
|6-24 months |MAL-ED         |INDIA                        |>=30    |           0|     19|   233|
|6-24 months |MAL-ED         |INDIA                        |>=30    |           1|      2|   233|
|6-24 months |MAL-ED         |NEPAL                        |[20-30) |           0|    153|   235|
|6-24 months |MAL-ED         |NEPAL                        |[20-30) |           1|     31|   235|
|6-24 months |MAL-ED         |NEPAL                        |<20     |           0|      4|   235|
|6-24 months |MAL-ED         |NEPAL                        |<20     |           1|      1|   235|
|6-24 months |MAL-ED         |NEPAL                        |>=30    |           0|     42|   235|
|6-24 months |MAL-ED         |NEPAL                        |>=30    |           1|      4|   235|
|6-24 months |MAL-ED         |PERU                         |[20-30) |           0|    124|   270|
|6-24 months |MAL-ED         |PERU                         |[20-30) |           1|     10|   270|
|6-24 months |MAL-ED         |PERU                         |<20     |           0|     69|   270|
|6-24 months |MAL-ED         |PERU                         |<20     |           1|      6|   270|
|6-24 months |MAL-ED         |PERU                         |>=30    |           0|     59|   270|
|6-24 months |MAL-ED         |PERU                         |>=30    |           1|      2|   270|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |           0|    102|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |           1|     20|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |           0|     37|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |           1|      5|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |           0|     83|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |           1|     12|   259|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |           0|    113|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |           1|     15|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |           0|     12|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |           1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |           0|     92|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |           1|     11|   245|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |           0|    258|   540|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |           1|    102|   540|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20     |           0|     49|   540|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20     |           1|     12|   540|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30    |           0|     75|   540|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30    |           1|     44|   540|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |           0|    413|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |           1|     61|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20     |           0|    114|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20     |           1|     19|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |           0|    107|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |           1|     16|   730|
|6-24 months |PROBIT         |BELARUS                      |[20-30) |           0|  11784| 16598|
|6-24 months |PROBIT         |BELARUS                      |[20-30) |           1|    110| 16598|
|6-24 months |PROBIT         |BELARUS                      |<20     |           0|   1700| 16598|
|6-24 months |PROBIT         |BELARUS                      |<20     |           1|     15| 16598|
|6-24 months |PROBIT         |BELARUS                      |>=30    |           0|   2975| 16598|
|6-24 months |PROBIT         |BELARUS                      |>=30    |           1|     14| 16598|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30) |           0|    372|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30) |           1|     63|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |<20     |           0|     50|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |<20     |           1|     18|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30    |           0|     94|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30    |           1|     18|   615|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30) |           0|    737|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30) |           1|    320|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |<20     |           0|    130|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |<20     |           1|     52|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30    |           0|     97|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30    |           1|     53|  1389|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |           0|    180|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |           1|     99|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20     |           0|     26|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20     |           1|     10|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |           0|     53|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |           1|     34|   402|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |           0|   1100|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |           1|    207|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |           0|    120|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |           1|     21|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |           0|    461|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |           1|     94|  2003|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |           0|   6515| 10789|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |           1|    679| 10789|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |           0|   1534| 10789|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |           1|    169| 10789|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |           0|   1705| 10789|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |           1|    187| 10789|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/62588be4-c46f-46da-b6df-12a45a86247f/4bdaa90a-249e-42c5-b192-845e49bf73fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/62588be4-c46f-46da-b6df-12a45a86247f/4bdaa90a-249e-42c5-b192-845e49bf73fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/62588be4-c46f-46da-b6df-12a45a86247f/4bdaa90a-249e-42c5-b192-845e49bf73fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/62588be4-c46f-46da-b6df-12a45a86247f/4bdaa90a-249e-42c5-b192-845e49bf73fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | 0.6013514| 0.5454986| 0.6572041|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |NA             | 0.7352941| 0.5868018| 0.8837864|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |NA             | 0.5813953| 0.4337450| 0.7290457|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.2432727| 0.2093567| 0.2771886|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.2666704| 0.1974223| 0.3359185|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.2743458| 0.2315020| 0.3171896|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.3251740| 0.3096793| 0.3406686|
|0-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.3516127| 0.3030638| 0.4001615|
|0-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.3547805| 0.3276432| 0.3819178|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.3944519| 0.3717714| 0.4171325|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.4413199| 0.3897813| 0.4928585|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.4029021| 0.3697517| 0.4360525|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.5724529| 0.5258854| 0.6190204|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.6221346| 0.5377213| 0.7065479|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.5706283| 0.4777452| 0.6635114|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | 0.0914286| 0.0486503| 0.1342069|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20                |NA             | 0.1276596| 0.0320849| 0.2232343|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |NA             | 0.1355932| 0.0480799| 0.2231066|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.2057700| 0.1732475| 0.2382925|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.2110457| 0.1566325| 0.2654590|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.2705435| 0.2343881| 0.3066989|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | 0.6692416| 0.6193466| 0.7191365|
|0-24 months |IRC            |INDIA                        |<20                |NA             | 0.5574111| 0.3898979| 0.7249243|
|0-24 months |IRC            |INDIA                        |>=30               |NA             | 0.6269630| 0.4389156| 0.8150104|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.2500215| 0.2409273| 0.2591157|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.2620801| 0.2524883| 0.2716719|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.2858396| 0.2646127| 0.3070666|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.4122854| 0.3864095| 0.4381614|
|0-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.4032303| 0.3521440| 0.4543166|
|0-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.5003202| 0.4692987| 0.5313417|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             | 0.0741758| 0.0472346| 0.1011170|
|0-24 months |LCNI-5         |MALAWI                       |<20                |NA             | 0.0833333| 0.0311688| 0.1354979|
|0-24 months |LCNI-5         |MALAWI                       |>=30               |NA             | 0.0909091| 0.0508365| 0.1309817|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.2774839| 0.2120043| 0.3429634|
|0-24 months |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.5526317| 0.3882739| 0.7169895|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.4132132| 0.2680575| 0.5583689|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | 0.4896907| 0.4192054| 0.5601761|
|0-24 months |MAL-ED         |INDIA                        |<20                |NA             | 0.5588235| 0.3915890| 0.7260581|
|0-24 months |MAL-ED         |INDIA                        |>=30               |NA             | 0.2380952| 0.0555637| 0.4206268|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             | 0.0915033| 0.0457415| 0.1372650|
|0-24 months |MAL-ED         |PERU                         |<20                |NA             | 0.0975610| 0.0332317| 0.1618902|
|0-24 months |MAL-ED         |PERU                         |>=30               |NA             | 0.0746269| 0.0115984| 0.1376554|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.2262887| 0.1607217| 0.2918557|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.2019724| 0.0814444| 0.3225004|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.1697655| 0.0972174| 0.2423135|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.4865544| 0.4386237| 0.5344851|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.3383921| 0.2293390| 0.4474453|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.5296580| 0.4432694| 0.6160466|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.3311761| 0.2894700| 0.3728823|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.3097100| 0.2285409| 0.3908792|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.3519019| 0.2664056| 0.4373983|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.2583772| 0.1969624| 0.3197921|
|0-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.2528572| 0.1892557| 0.3164587|
|0-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.2480365| 0.1933508| 0.3027223|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.3351220| 0.2936358| 0.3766082|
|0-24 months |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.4067509| 0.2973639| 0.5161379|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.3772327| 0.2920591| 0.4624063|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.4198819| 0.3666796| 0.4730842|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.3664692| 0.2866489| 0.4462895|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.4366400| 0.3310219| 0.5422582|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.4464061| 0.3890792| 0.5037330|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.4680361| 0.2987472| 0.6373250|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.5807710| 0.4782712| 0.6832708|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.2295403| 0.2086357| 0.2504449|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.2386728| 0.1692178| 0.3081278|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.2545372| 0.2193575| 0.2897169|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.2340613| 0.2250537| 0.2430690|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.2477808| 0.2281292| 0.2674323|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.2449007| 0.2244613| 0.2653401|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | 0.5230591| 0.4655334| 0.5805848|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20                |NA             | 0.5469025| 0.3747222| 0.7190827|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30               |NA             | 0.4402829| 0.2839736| 0.5965923|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.1872686| 0.1533577| 0.2211795|
|0-6 months  |COHORTS        |GUATEMALA                    |<20                |NA             | 0.2631232| 0.1824183| 0.3438281|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.1932408| 0.1535116| 0.2329701|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |NA             | 0.2390627| 0.2246692| 0.2534563|
|0-6 months  |COHORTS        |INDIA                        |<20                |NA             | 0.2649305| 0.2206156| 0.3092455|
|0-6 months  |COHORTS        |INDIA                        |>=30               |NA             | 0.2655944| 0.2399805| 0.2912084|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.2299799| 0.2104960| 0.2494638|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.2526953| 0.2073268| 0.2980638|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.2319750| 0.2035043| 0.2604457|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.3615280| 0.3164633| 0.4065926|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.4298109| 0.3435240| 0.5160979|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.3097755| 0.2264925| 0.3930585|
|0-6 months  |IRC            |INDIA                        |[20-30)            |NA             | 0.5436589| 0.4908715| 0.5964462|
|0-6 months  |IRC            |INDIA                        |<20                |NA             | 0.5360061| 0.3704404| 0.7015718|
|0-6 months  |IRC            |INDIA                        |>=30               |NA             | 0.5655996| 0.3841381| 0.7470611|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.1727845| 0.1647596| 0.1808095|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.1739623| 0.1654511| 0.1824735|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.2131271| 0.1936965| 0.2325577|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.2437085| 0.2185922| 0.2688249|
|0-6 months  |Keneba         |GAMBIA                       |<20                |NA             | 0.2949313| 0.2432764| 0.3465862|
|0-6 months  |Keneba         |GAMBIA                       |>=30               |NA             | 0.3019309| 0.2717169| 0.3321450|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.1826581| 0.1258437| 0.2394725|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.3712510| 0.2080235| 0.5344785|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.2820675| 0.1474580| 0.4166770|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.1194969| 0.0689970| 0.1699967|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.1458333| 0.0458277| 0.2458389|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.0857143| 0.0320830| 0.1393456|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.3816199| 0.3349379| 0.4283020|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.2597562| 0.1545014| 0.3650109|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.3380092| 0.2570572| 0.4189611|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.2558236| 0.2172643| 0.2943829|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.2647603| 0.1883018| 0.3412188|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.2658657| 0.1858657| 0.3458657|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.2529210| 0.1912562| 0.3145859|
|0-6 months  |PROBIT         |BELARUS                      |<20                |NA             | 0.2439355| 0.1809427| 0.3069283|
|0-6 months  |PROBIT         |BELARUS                      |>=30               |NA             | 0.2456777| 0.1905132| 0.3008422|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.2522616| 0.2139529| 0.2905704|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.2603329| 0.1652231| 0.3554428|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.2894563| 0.2089455| 0.3699670|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.2243989| 0.1861188| 0.2626789|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.1722272| 0.1213179| 0.2231366|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.2602571| 0.1669544| 0.3535598|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.1620690| 0.1196047| 0.2045332|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.1944444| 0.0650062| 0.3238826|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.2608696| 0.1710344| 0.3507048|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.1373257| 0.1202190| 0.1544324|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.1604073| 0.1015612| 0.2192534|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.1469843| 0.1184676| 0.1755011|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.1771012| 0.1691216| 0.1850807|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.1995688| 0.1810553| 0.2180824|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.1792912| 0.1607400| 0.1978425|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | 0.2435589| 0.1944697| 0.2926480|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |NA             | 0.3521534| 0.1791002| 0.5252065|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |NA             | 0.3414679| 0.1964518| 0.4864840|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.1324881| 0.1049371| 0.1600390|
|6-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.0954031| 0.0503898| 0.1404163|
|6-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.1343493| 0.1026638| 0.1660348|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.1265826| 0.1150775| 0.1380877|
|6-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.1532933| 0.1130670| 0.1935196|
|6-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.1395208| 0.1196912| 0.1593503|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.2537309| 0.2325481| 0.2749138|
|6-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.3172580| 0.2653824| 0.3691337|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.2679644| 0.2372929| 0.2986359|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.4625252| 0.4117651| 0.5132853|
|6-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.4763513| 0.3798057| 0.5728968|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.4907553| 0.3940763| 0.5874344|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.2062796| 0.1736088| 0.2389505|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.2122414| 0.1580672| 0.2664156|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.2695959| 0.2328332| 0.3063586|
|6-24 months |IRC            |INDIA                        |[20-30)            |NA             | 0.3168605| 0.2676352| 0.3660857|
|6-24 months |IRC            |INDIA                        |<20                |NA             | 0.2432432| 0.1048305| 0.3816560|
|6-24 months |IRC            |INDIA                        |>=30               |NA             | 0.3103448| 0.1417603| 0.4789293|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.1605290| 0.1514899| 0.1695681|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.1675828| 0.1578396| 0.1773261|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.1773906| 0.1559134| 0.1988678|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.2986217| 0.2735583| 0.3236851|
|6-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.2355065| 0.1886576| 0.2823554|
|6-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.3848164| 0.3535284| 0.4161043|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             | 0.0756303| 0.0481820| 0.1030785|
|6-24 months |LCNI-5         |MALAWI                       |<20                |NA             | 0.0849057| 0.0318018| 0.1380095|
|6-24 months |LCNI-5         |MALAWI                       |>=30               |NA             | 0.0816327| 0.0432716| 0.1199937|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.1595092| 0.1031817| 0.2158367|
|6-24 months |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.2285714| 0.0891660| 0.3679768|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.2142857| 0.0899319| 0.3386395|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.1639344| 0.0981136| 0.2297553|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.1190476| 0.0209180| 0.2171772|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.1263158| 0.0593840| 0.1932476|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.2843605| 0.2378622| 0.3308587|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.1969518| 0.0946178| 0.2992859|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.3676762| 0.2800709| 0.4552815|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.1278649| 0.0976776| 0.1580521|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.1413516| 0.0812277| 0.2014754|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.1273337| 0.0671812| 0.1874863|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.0091318| 0.0046049| 0.0136586|
|6-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.0076831| 0.0014652| 0.0139010|
|6-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.0050368| 0.0020599| 0.0080137|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.1461687| 0.1130886| 0.1792488|
|6-24 months |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.2839037| 0.1770010| 0.3908064|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.1674258| 0.0994242| 0.2354274|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.3052279| 0.2645358| 0.3459201|
|6-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.2852420| 0.2277146| 0.3427694|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.3288642| 0.2491292| 0.4085992|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.3541896| 0.2978772| 0.4105021|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.2722479| 0.1220276| 0.4224683|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.3794471| 0.2743572| 0.4845371|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.1559465| 0.1360623| 0.1758308|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.1448601| 0.0834707| 0.2062495|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.1815886| 0.1484880| 0.2146892|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.0971402| 0.0898680| 0.1044123|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.0866481| 0.0724638| 0.1008325|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.1060828| 0.0902759| 0.1218898|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6112601| 0.5617242| 0.6607959|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2550336| 0.2316956| 0.2783715|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3359095| 0.3231988| 0.3486203|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4036125| 0.3861835| 0.4210415|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5903790| 0.5535526| 0.6272054|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.1067616| 0.0705906| 0.1429325|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2274300| 0.2005343| 0.2543257|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6560976| 0.6100625| 0.7021326|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580813| 0.2516131| 0.2645495|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.4437849| 0.4255860| 0.4619838|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0805970| 0.0599695| 0.1012246|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3307985| 0.2738270| 0.3877700|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4779116| 0.4157435| 0.5400798|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.0894040| 0.0571706| 0.1216374|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2051282| 0.1602507| 0.2500058|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.4774920| 0.4382065| 0.5167774|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2554148| 0.1971257| 0.3137039|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4150694| 0.3581204| 0.4720184|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4712919| 0.4233811| 0.5192026|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2369529| 0.2198518| 0.2540539|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2365545| 0.2294916| 0.2436174|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5163043| 0.4651769| 0.5674318|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2003763| 0.1763021| 0.2244505|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.2500980| 0.2382136| 0.2619824|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2355453| 0.2204685| 0.2506222|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3760933| 0.3398180| 0.4123685|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.5439024| 0.4956326| 0.5921723|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1762142| 0.1705882| 0.1818403|
|0-6 months  |Keneba         |GAMBIA                       |NA                 |NA             | 0.2749591| 0.2572539| 0.2926643|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2281369| 0.1773250| 0.2789488|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1121795| 0.0771053| 0.1472536|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3580645| 0.3202961| 0.3958330|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2500148| 0.1915461| 0.3084835|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2199336| 0.1753445| 0.2645227|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1866029| 0.1492099| 0.2239959|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1397306| 0.1257869| 0.1536744|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1808903| 0.1744713| 0.1873093|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2654155| 0.2205451| 0.3102860|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1269580| 0.1082147| 0.1457012|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1317329| 0.1223171| 0.1411487|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2666429| 0.2502871| 0.2829988|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.4728814| 0.4325613| 0.5132014|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.2274300| 0.2005343| 0.2543257|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3097561| 0.2649438| 0.3545684|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1640643| 0.1579507| 0.1701779|
|6-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.3201934| 0.3025561| 0.3378307|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0789074| 0.0583085| 0.0995064|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.1791667| 0.1305478| 0.2277856|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1428571| 0.1001583| 0.1855560|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2925926| 0.2541847| 0.3310005|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0083745| 0.0044130| 0.0123360|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3059755| 0.2638053| 0.3481458|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3557214| 0.3088651| 0.4025777|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1607589| 0.1446692| 0.1768485|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0959310| 0.0903738| 0.1014883|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |[20-30)        | 1.2227363| 0.9790304| 1.5271068|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |[20-30)        | 0.9668147| 0.7377441| 1.2670121|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 1.0961791| 0.8173695| 1.4700923|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 1.1277297| 0.9157967| 1.3887082|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 1.0813064| 0.9344350| 1.2512626|
|0-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.0910482| 0.9972021| 1.1937261|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.1188180| 0.9823019| 1.2743064|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.0214226| 0.9239078| 1.1292297|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.0867874| 0.9276080| 1.2732823|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 0.9968126| 0.8310212| 1.1956800|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20                |[20-30)        | 1.3962766| 0.5775036| 3.3758896|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |[20-30)        | 1.4830508| 0.6682686| 3.2912512|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.0256389| 0.7914523| 1.3291202|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.3147858| 1.1144002| 1.5512036|
|0-24 months |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |<20                |[20-30)        | 0.8328997| 0.6110200| 1.1353505|
|0-24 months |IRC            |INDIA                        |>=30               |[20-30)        | 0.9368261| 0.6877361| 1.2761336|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.0482303| 0.9992858| 1.0995721|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.1432602| 1.0552094| 1.2386582|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 0.9780366| 0.8490638| 1.1266004|
|0-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.2135286| 1.1114340| 1.3250015|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |<20                |[20-30)        | 1.1234568| 0.5448171| 2.3166587|
|0-24 months |LCNI-5         |MALAWI                       |>=30               |[20-30)        | 1.2255892| 0.6922989| 2.1696826|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 1.9915814| 1.3614019| 2.9134647|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 1.4891431| 0.9776492| 2.2682443|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |<20                |[20-30)        | 1.1411765| 0.8187157| 1.5906423|
|0-24 months |MAL-ED         |INDIA                        |>=30               |[20-30)        | 0.4862155| 0.2228779| 1.0606955|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |<20                |[20-30)        | 1.0662021| 0.4660440| 2.4392264|
|0-24 months |MAL-ED         |PERU                         |>=30               |[20-30)        | 0.8155650| 0.3056183| 2.1763956|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 0.8925432| 0.4597196| 1.7328681|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 0.7502164| 0.4474411| 1.2578742|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.6954867| 0.4970672| 0.9731114|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 1.0885894| 0.8996361| 1.3172292|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 0.9351822| 0.6996966| 1.2499214|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.0625824| 0.8091647| 1.3953665|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 0.9786357| 0.8445705| 1.1339821|
|0-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.9599783| 0.8760214| 1.0519815|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 1.2137398| 0.9029163| 1.6315623|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.1256578| 0.8713412| 1.4542013|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.8727912| 0.7424432| 1.0260240|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 1.0399116| 0.9059128| 1.1937308|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 1.0484536| 0.7147112| 1.5380408|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 1.3009926| 1.0455054| 1.6189124|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 1.0397860| 0.7666369| 1.4102568|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 1.1088998| 0.9399365| 1.3082361|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 1.0586147| 0.9693548| 1.1560938|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 1.0463099| 0.9545177| 1.1469295|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20                |[20-30)        | 1.0455844| 0.7490285| 1.4595530|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30               |[20-30)        | 0.8417461| 0.5803037| 1.2209752|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 1.4050577| 0.9839777| 2.0063330|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 1.0318911| 0.7845092| 1.3572808|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |<20                |[20-30)        | 1.1082050| 0.9276659| 1.3238800|
|0-6 months  |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.1109822| 0.9915835| 1.2447579|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.0987713| 0.9009709| 1.3399971|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.0086750| 0.8689210| 1.1709067|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.1888733| 0.9391177| 1.5050507|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 0.8568507| 0.6364093| 1.1536494|
|0-6 months  |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |<20                |[20-30)        | 0.9859236| 0.7131899| 1.3629545|
|0-6 months  |IRC            |INDIA                        |>=30               |[20-30)        | 1.0403576| 0.7439891| 1.4547845|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.0068164| 0.9454249| 1.0721945|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.2334847| 1.1215072| 1.3566425|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Keneba         |GAMBIA                       |<20                |[20-30)        | 1.2101804| 0.9876093| 1.4829109|
|0-6 months  |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.2389018| 1.0734146| 1.4299021|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 2.0324914| 1.1860644| 3.4829653|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 1.5442377| 0.8731704| 2.7310475|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 1.2203947| 0.5453440| 2.7310530|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 0.7172932| 0.3371203| 1.5261896|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.6806672| 0.4459996| 1.0388078|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 0.8857220| 0.6772497| 1.1583667|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 1.0349331| 0.7471984| 1.4334701|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.0392538| 0.7426369| 1.4543427|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT         |BELARUS                      |<20                |[20-30)        | 0.9644731| 0.8305970| 1.1199273|
|0-6 months  |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.9713613| 0.8820592| 1.0697047|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 1.0319957| 0.6947082| 1.5330394|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.1474446| 0.8365724| 1.5738374|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.7675049| 0.6460252| 0.9118278|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 1.1597969| 0.8857511| 1.5186308|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 1.1997636| 0.5866857| 2.4534990|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 1.6096207| 1.0442361| 2.4811236|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 1.1680791| 0.7928311| 1.7209323|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 1.0703334| 0.8500215| 1.3477466|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 1.1268636| 1.0164615| 1.2492570|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 1.0123664| 0.9043686| 1.1332610|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |[20-30)        | 1.4458656| 0.8508426| 2.4570082|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |[20-30)        | 1.4019932| 0.8768958| 2.2415260|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 0.7200880| 0.4299382| 1.2060495|
|6-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 1.0140481| 0.7406012| 1.3884577|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 1.2110136| 0.9175078| 1.5984103|
|6-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.1022110| 0.9317048| 1.3039205|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.2503719| 1.0411072| 1.5016993|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.0560966| 0.9170742| 1.2161939|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.0298926| 0.8180752| 1.2965542|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 1.0610348| 0.8474077| 1.3285162|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.0289013| 0.7966594| 1.3288464|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.3069438| 1.1047354| 1.5461640|
|6-24 months |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA                        |<20                |[20-30)        | 0.7676667| 0.4256000| 1.3846622|
|6-24 months |IRC            |INDIA                        |>=30               |[20-30)        | 0.9794369| 0.5566759| 1.7232588|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.0439410| 0.9645746| 1.1298378|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.1050378| 0.9639897| 1.2667237|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 0.7886449| 0.6354707| 0.9787403|
|6-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.2886415| 1.1464478| 1.4484714|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |<20                |[20-30)        | 1.1226415| 0.5447478| 2.3135918|
|6-24 months |LCNI-5         |MALAWI                       |>=30               |[20-30)        | 1.0793651| 0.5960802| 1.9544837|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 1.4329670| 0.7082161| 2.8993899|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 1.3434066| 0.6810587| 2.6499056|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 0.7261905| 0.2903065| 1.8165373|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 0.7705263| 0.3963351| 1.4980020|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.6926133| 0.4021327| 1.1929225|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 1.2929931| 0.9689964| 1.7253224|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 1.1054762| 0.6794740| 1.7985642|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 0.9958463| 0.5872746| 1.6886647|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 0.8413612| 0.4622185| 1.5315021|
|6-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.5515704| 0.2868469| 1.0606002|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 1.9423023| 1.2522188| 3.0126829|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.1454291| 0.7195935| 1.8232624|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.9345212| 0.8113748| 1.0763581|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 1.0774380| 0.8844328| 1.3125619|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 0.7686502| 0.4328810| 1.3648629|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 1.0713107| 0.7782306| 1.4747642|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 0.9289086| 0.5968007| 1.4458282|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 1.1644283| 0.9323596| 1.4542601|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 0.8919911| 0.7451693| 1.0677413|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 1.0920596| 0.9244996| 1.2899888|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             |  0.0099087| -0.0150357| 0.0348531|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0117609| -0.0132059| 0.0367277|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0107356|  0.0015827| 0.0198884|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0091605| -0.0054102| 0.0237313|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0179261| -0.0095910| 0.0454432|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.0153330| -0.0139754| 0.0446414|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0216600|  0.0067336| 0.0365864|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | -0.0131440| -0.0341856| 0.0078975|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0080598|  0.0017744| 0.0143452|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0314995|  0.0129464| 0.0500526|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0064212| -0.0126225| 0.0254649|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0533146|  0.0128239| 0.0938054|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | -0.0117791| -0.0448166| 0.0212585|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             | -0.0020993| -0.0338995| 0.0297009|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0211605| -0.0654283| 0.0231073|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0090625| -0.0366667| 0.0185418|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | -0.0013608| -0.0259648| 0.0232431|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0029624| -0.0093730| 0.0034482|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0163066| -0.0068805| 0.0394937|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0048125| -0.0140309| 0.0044059|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0248858| -0.0071505| 0.0569220|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0074126| -0.0049762| 0.0198013|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0024932| -0.0031061| 0.0080924|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0067548| -0.0330803| 0.0195707|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0131077| -0.0119542| 0.0381695|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0110353|  0.0024323| 0.0196382|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0055654| -0.0070405| 0.0181714|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0145653| -0.0126366| 0.0417672|
|0-6 months  |IRC            |INDIA                        |[20-30)            |NA             |  0.0002436| -0.0210260| 0.0215131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0034297| -0.0021824| 0.0090418|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0312506|  0.0123746| 0.0501265|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0454788|  0.0079339| 0.0830237|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0073174| -0.0416853| 0.0270505|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0235554| -0.0496072| 0.0024964|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0014323| -0.0215090| 0.0243736|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0029062| -0.0094282| 0.0036158|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0063098| -0.0150288| 0.0276484|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0044653| -0.0143501| 0.0054195|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0245339| -0.0019120| 0.0509798|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0024049| -0.0076630| 0.0124728|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0037892| -0.0010446| 0.0086229|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             |  0.0218567| -0.0027427| 0.0464560|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0055301| -0.0248808| 0.0138206|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0051503| -0.0019596| 0.0122601|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0129120| -0.0010892| 0.0269132|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0103562| -0.0198232| 0.0405355|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0211504|  0.0060564| 0.0362443|
|6-24 months |IRC            |INDIA                        |[20-30)            |NA             | -0.0071044| -0.0262133| 0.0120045|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0035353| -0.0033272| 0.0103978|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0215716|  0.0033091| 0.0398342|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0032772| -0.0157344| 0.0222887|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0196575| -0.0153694| 0.0546844|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0210773| -0.0666196| 0.0244650|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             |  0.0082321| -0.0189913| 0.0354555|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0036420| -0.0145675| 0.0218515|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0007572| -0.0016955| 0.0001810|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0148069| -0.0050152| 0.0346291|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0007476| -0.0085794| 0.0100746|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0015318| -0.0297017| 0.0327653|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0048123| -0.0071796| 0.0168043|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | -0.0012091| -0.0057730| 0.0033548|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             |  0.0162103| -0.0255022| 0.0562261|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0461151| -0.0570106| 0.1391795|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0319597|  0.0043252| 0.0588272|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0226964| -0.0140899| 0.0581483|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0303637| -0.0174783| 0.0759562|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.1436190| -0.1752619| 0.3759788|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0952381|  0.0244939| 0.1608519|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | -0.0200336| -0.0526998| 0.0116189|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0312297|  0.0065403| 0.0553054|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0709791|  0.0281381| 0.1119316|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0796703| -0.1887603| 0.2874874|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.1611695|  0.0299050| 0.2746725|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | -0.0246470| -0.0962308| 0.0422625|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             | -0.0234810| -0.4486935| 0.2769255|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.1031573| -0.3407043| 0.0923009|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0189793| -0.0784901| 0.0372477|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | -0.0041261| -0.0815641| 0.0677676|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0115984| -0.0359223| 0.0121544|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0464008| -0.0218812| 0.1101203|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0115945| -0.0348642| 0.0111520|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0528033| -0.0178317| 0.1185364|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0312828| -0.0224388| 0.0821818|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0105395| -0.0134176| 0.0339302|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0130829| -0.0653924| 0.0366582|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0654153| -0.0682664| 0.1823682|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0441237|  0.0091185| 0.0778923|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0236279| -0.0313789| 0.0757010|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0387280| -0.0364430| 0.1084470|
|0-6 months  |IRC            |INDIA                        |[20-30)            |NA             |  0.0004478| -0.0394327| 0.0387983|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0194633| -0.0129270| 0.0508178|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.1136553|  0.0423159| 0.1796804|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.1993488|  0.0202252| 0.3457247|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0652291| -0.4195344| 0.2006442|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0657853| -0.1411581| 0.0046091|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0055677| -0.0877281| 0.0908614|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0116242| -0.0369234| 0.0130576|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0244025| -0.0616757| 0.1035016|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0203030| -0.0693779| 0.0265199|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.1314766| -0.0207230| 0.2609817|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0172110| -0.0575498| 0.0866867|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0209474| -0.0061422| 0.0473076|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             |  0.0823489| -0.0148756| 0.1702594|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0435586| -0.2074850| 0.0981134|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0390963| -0.0163454| 0.0915136|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0484243| -0.0055479| 0.0994996|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0219001| -0.0441101| 0.0837371|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0929972|  0.0215124| 0.1592596|
|6-24 months |IRC            |INDIA                        |[20-30)            |NA             | -0.0229354| -0.0865158| 0.0369245|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0215483| -0.0211672| 0.0624770|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0673707|  0.0085267| 0.1227223|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0415320| -0.2321283| 0.2544113|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.1097161| -0.1071782| 0.2841211|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.1475410| -0.5125291| 0.1293719|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             |  0.0281350| -0.0694815| 0.1168416|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0276943| -0.1210823| 0.1567271|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0904230| -0.1914142| 0.0020075|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0919826| -0.0388033| 0.2063024|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0024433| -0.0284194| 0.0323797|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0043061| -0.0874869| 0.0883510|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             |  0.0299350| -0.0476077| 0.1017381|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | -0.0126040| -0.0613025| 0.0338600|
