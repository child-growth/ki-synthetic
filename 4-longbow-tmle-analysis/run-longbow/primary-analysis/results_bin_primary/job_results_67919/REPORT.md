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

|agecat      |studyid        |country                      |mage    | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |            0|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |            1|    274|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |            0|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |            1|     31|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |            0|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |            1|     40|   373|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |            0|    151|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |            1|    510|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |            0|     52|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |            1|    150|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |            0|    118|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |            1|    379|  1360|
|0-24 months |COHORTS        |INDIA                        |[20-30) |            0|   2274|  5313|
|0-24 months |COHORTS        |INDIA                        |[20-30) |            1|   1328|  5313|
|0-24 months |COHORTS        |INDIA                        |<20     |            0|    248|  5313|
|0-24 months |COHORTS        |INDIA                        |<20     |            1|    179|  5313|
|0-24 months |COHORTS        |INDIA                        |>=30    |            0|    731|  5313|
|0-24 months |COHORTS        |INDIA                        |>=30    |            1|    553|  5313|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |            0|    607|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |            1|   1220|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |            0|    103|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |            1|    275|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |            0|    249|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |            1|    604|  3058|
|0-24 months |EE             |PAKISTAN                     |[20-30) |            0|     20|   377|
|0-24 months |EE             |PAKISTAN                     |[20-30) |            1|    142|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |            0|      0|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |            1|      1|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |            0|     21|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |            1|    193|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |            0|    166|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |            1|    281|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |            0|     47|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |            1|    102|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |            0|     39|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |            1|     63|   698|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |            0|     80|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |            1|     95|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |            0|     18|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |            1|     29|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |            0|     27|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |            1|     32|   281|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |            0|   1135|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |            1|    608|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |            0|    232|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |            1|    171|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |            0|    679|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |            1|    353|  3178|
|0-24 months |IRC            |INDIA                        |[20-30) |            0|    124|   410|
|0-24 months |IRC            |INDIA                        |[20-30) |            1|    220|   410|
|0-24 months |IRC            |INDIA                        |<20     |            0|      8|   410|
|0-24 months |IRC            |INDIA                        |<20     |            1|     29|   410|
|0-24 months |IRC            |INDIA                        |>=30    |            0|     15|   410|
|0-24 months |IRC            |INDIA                        |>=30    |            1|     14|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |            0|   6864| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |            1|   5837| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |            0|   5643| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |            1|   6542| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |            0|   1229| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |            1|   1101| 27216|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |            0|    732|  2859|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |            1|    705|  2859|
|0-24 months |Keneba         |GAMBIA                       |<20     |            0|    206|  2859|
|0-24 months |Keneba         |GAMBIA                       |<20     |            1|    189|  2859|
|0-24 months |Keneba         |GAMBIA                       |>=30    |            0|    439|  2859|
|0-24 months |Keneba         |GAMBIA                       |>=30    |            1|    588|  2859|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |            0|    135|   670|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |            1|    229|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |            0|     42|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |            1|     66|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |            0|     66|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |            1|    132|   670|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |            0|     77|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |            1|    105|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |            0|      8|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |            1|     29|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |            0|     18|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |            1|     28|   265|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |            0|     99|   233|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |            1|     40|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |            0|     32|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |            1|     11|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |            0|     39|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |            1|     12|   233|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |            0|     75|   249|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |            1|    119|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |            0|     13|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |            1|     21|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |            0|     11|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |            1|     10|   249|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |            0|    126|   240|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |            1|     63|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |            0|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |            1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |            0|     28|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |            1|     18|   240|
|0-24 months |MAL-ED         |PERU                         |[20-30) |            0|     61|   303|
|0-24 months |MAL-ED         |PERU                         |[20-30) |            1|     92|   303|
|0-24 months |MAL-ED         |PERU                         |<20     |            0|     29|   303|
|0-24 months |MAL-ED         |PERU                         |<20     |            1|     54|   303|
|0-24 months |MAL-ED         |PERU                         |>=30    |            0|     25|   303|
|0-24 months |MAL-ED         |PERU                         |>=30    |            1|     42|   303|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |            0|     73|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |            1|     88|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |            0|     20|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |            1|     28|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |            0|     45|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |            1|     60|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|     21|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|    119|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            0|      2|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            1|     14|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|     17|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|     89|   262|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |            0|    140|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |            1|    282|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |            0|     26|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |            1|     47|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |            0|     45|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |            1|     87|   627|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |            0|    263|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |            1|    231|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |            0|     72|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |            1|     64|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |            0|     61|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |            1|     67|   758|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |            0|  10591| 16897|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |            1|   1538| 16897|
|0-24 months |PROBIT         |BELARUS                      |<20     |            0|   1460| 16897|
|0-24 months |PROBIT         |BELARUS                      |<20     |            1|    285| 16897|
|0-24 months |PROBIT         |BELARUS                      |>=30    |            0|   2693| 16897|
|0-24 months |PROBIT         |BELARUS                      |>=30    |            1|    330| 16897|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |            0|    284|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |            1|    209|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |            0|     46|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |            1|     39|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |            0|     65|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |            1|     57|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |            0|    368|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |            1|    799|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |            0|     61|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |            1|    132|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |            0|     44|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |            1|    129|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |            0|     48|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |            1|    242|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |            0|      8|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |            1|     28|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |            0|     16|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |            1|     76|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|   1012|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|    559|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            0|    109|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            1|     58|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|    433|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|    205|  2376|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |            0|   5588| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |            1|   3846| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |            0|   1231| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |            1|   1012| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |            0|   1360| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |            1|    997| 14034|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30) |            0|    139|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30) |            1|    153|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20     |            0|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20     |            1|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30    |            0|     24|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30    |            1|     18|   368|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30) |            0|    372|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30) |            1|    159|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |<20     |            0|    100|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |<20     |            1|     49|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30    |            0|    264|  1091|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30    |            1|    147|  1091|
|0-6 months  |COHORTS        |INDIA                        |[20-30) |            0|   2841|  5135|
|0-6 months  |COHORTS        |INDIA                        |[20-30) |            1|    642|  5135|
|0-6 months  |COHORTS        |INDIA                        |<20     |            0|    308|  5135|
|0-6 months  |COHORTS        |INDIA                        |<20     |            1|     95|  5135|
|0-6 months  |COHORTS        |INDIA                        |>=30    |            0|   1009|  5135|
|0-6 months  |COHORTS        |INDIA                        |>=30    |            1|    240|  5135|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30) |            0|   1440|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30) |            1|    387|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20     |            0|    265|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20     |            1|    113|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30    |            0|    622|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30    |            1|    231|  3058|
|0-6 months  |EE             |PAKISTAN                     |[20-30) |            0|     43|   377|
|0-6 months  |EE             |PAKISTAN                     |[20-30) |            1|    119|   377|
|0-6 months  |EE             |PAKISTAN                     |<20     |            0|      0|   377|
|0-6 months  |EE             |PAKISTAN                     |<20     |            1|      1|   377|
|0-6 months  |EE             |PAKISTAN                     |>=30    |            0|     52|   377|
|0-6 months  |EE             |PAKISTAN                     |>=30    |            1|    162|   377|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30) |            0|    323|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30) |            1|    124|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20     |            0|     81|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20     |            1|     68|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30    |            0|     72|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30    |            1|     30|   698|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30) |            0|    118|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30) |            1|     46|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<20     |            0|     25|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<20     |            1|     21|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=30    |            0|     37|   264|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=30    |            1|     17|   264|
|0-6 months  |IRC            |INDIA                        |[20-30) |            0|    200|   410|
|0-6 months  |IRC            |INDIA                        |[20-30) |            1|    144|   410|
|0-6 months  |IRC            |INDIA                        |<20     |            0|     17|   410|
|0-6 months  |IRC            |INDIA                        |<20     |            1|     20|   410|
|0-6 months  |IRC            |INDIA                        |>=30    |            0|     19|   410|
|0-6 months  |IRC            |INDIA                        |>=30    |            1|     10|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30) |            0|   7952| 27150|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30) |            1|   4726| 27150|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20     |            0|   6583| 27150|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20     |            1|   5562| 27150|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30    |            0|   1403| 27150|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30    |            1|    924| 27150|
|0-6 months  |Keneba         |GAMBIA                       |[20-30) |            0|    814|  2443|
|0-6 months  |Keneba         |GAMBIA                       |[20-30) |            1|    358|  2443|
|0-6 months  |Keneba         |GAMBIA                       |<20     |            0|    252|  2443|
|0-6 months  |Keneba         |GAMBIA                       |<20     |            1|    107|  2443|
|0-6 months  |Keneba         |GAMBIA                       |>=30    |            0|    613|  2443|
|0-6 months  |Keneba         |GAMBIA                       |>=30    |            1|    299|  2443|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30) |            0|     71|   220|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30) |            1|     45|   220|
|0-6 months  |LCNI-5         |MALAWI                       |<20     |            0|     29|   220|
|0-6 months  |LCNI-5         |MALAWI                       |<20     |            1|     10|   220|
|0-6 months  |LCNI-5         |MALAWI                       |>=30    |            0|     42|   220|
|0-6 months  |LCNI-5         |MALAWI                       |>=30    |            1|     23|   220|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30) |            0|    122|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30) |            1|     60|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20     |            0|     22|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20     |            1|     15|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30    |            0|     26|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30    |            1|     20|   265|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30) |            0|    104|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30) |            1|     35|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |<20     |            0|     36|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |<20     |            1|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |>=30    |            0|     41|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |>=30    |            1|     10|   233|
|0-6 months  |MAL-ED         |INDIA                        |[20-30) |            0|    126|   249|
|0-6 months  |MAL-ED         |INDIA                        |[20-30) |            1|     68|   249|
|0-6 months  |MAL-ED         |INDIA                        |<20     |            0|     20|   249|
|0-6 months  |MAL-ED         |INDIA                        |<20     |            1|     14|   249|
|0-6 months  |MAL-ED         |INDIA                        |>=30    |            0|     18|   249|
|0-6 months  |MAL-ED         |INDIA                        |>=30    |            1|      3|   249|
|0-6 months  |MAL-ED         |NEPAL                        |[20-30) |            0|    157|   240|
|0-6 months  |MAL-ED         |NEPAL                        |[20-30) |            1|     32|   240|
|0-6 months  |MAL-ED         |NEPAL                        |<20     |            0|      2|   240|
|0-6 months  |MAL-ED         |NEPAL                        |<20     |            1|      3|   240|
|0-6 months  |MAL-ED         |NEPAL                        |>=30    |            0|     38|   240|
|0-6 months  |MAL-ED         |NEPAL                        |>=30    |            1|      8|   240|
|0-6 months  |MAL-ED         |PERU                         |[20-30) |            0|     88|   303|
|0-6 months  |MAL-ED         |PERU                         |[20-30) |            1|     65|   303|
|0-6 months  |MAL-ED         |PERU                         |<20     |            0|     47|   303|
|0-6 months  |MAL-ED         |PERU                         |<20     |            1|     36|   303|
|0-6 months  |MAL-ED         |PERU                         |>=30    |            0|     39|   303|
|0-6 months  |MAL-ED         |PERU                         |>=30    |            1|     28|   303|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30) |            0|    103|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30) |            1|     58|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20     |            0|     28|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20     |            1|     20|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30    |            0|     67|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30    |            1|     38|   314|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|     75|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|     65|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            0|     11|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            1|      5|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|     67|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|     39|   262|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30) |            0|    264|   627|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30) |            1|    158|   627|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20     |            0|     56|   627|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20     |            1|     17|   627|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30    |            0|     89|   627|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30    |            1|     43|   627|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30) |            0|    347|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30) |            1|    147|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20     |            0|     90|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20     |            1|     46|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30    |            0|     92|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30    |            1|     36|   758|
|0-6 months  |PROBIT         |BELARUS                      |[20-30) |            0|  11319| 16892|
|0-6 months  |PROBIT         |BELARUS                      |[20-30) |            1|    808| 16892|
|0-6 months  |PROBIT         |BELARUS                      |<20     |            0|   1577| 16892|
|0-6 months  |PROBIT         |BELARUS                      |<20     |            1|    167| 16892|
|0-6 months  |PROBIT         |BELARUS                      |>=30    |            0|   2837| 16892|
|0-6 months  |PROBIT         |BELARUS                      |>=30    |            1|    184| 16892|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30) |            0|    379|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30) |            1|    114|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20     |            0|     61|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20     |            1|     24|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30    |            0|     92|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30    |            1|     30|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30) |            0|    674|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30) |            1|    490|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20     |            0|    109|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20     |            1|     84|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30    |            0|     96|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30    |            1|     77|  1530|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30) |            0|    171|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30) |            1|    118|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20     |            0|     20|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20     |            1|     16|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30    |            0|     63|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30    |            1|     28|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|   1250|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|    321|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            0|    134|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            1|     33|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|    530|  2376|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|    108|  2376|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30) |            0|   7025| 14017|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30) |            1|   2399| 14017|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20     |            0|   1612| 14017|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20     |            1|    627| 14017|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30    |            0|   1753| 14017|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30    |            1|    601| 14017|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |            0|     22|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |            1|    121|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |            0|      3|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |            1|     14|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |            0|      3|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |            1|     22|   185|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30) |            0|     94|   895|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30) |            1|    351|   895|
|6-24 months |COHORTS        |GUATEMALA                    |<20     |            0|     30|   895|
|6-24 months |COHORTS        |GUATEMALA                    |<20     |            1|    101|   895|
|6-24 months |COHORTS        |GUATEMALA                    |>=30    |            0|     87|   895|
|6-24 months |COHORTS        |GUATEMALA                    |>=30    |            1|    232|   895|
|6-24 months |COHORTS        |INDIA                        |[20-30) |            0|   2088|  4062|
|6-24 months |COHORTS        |INDIA                        |[20-30) |            1|    686|  4062|
|6-24 months |COHORTS        |INDIA                        |<20     |            0|    209|  4062|
|6-24 months |COHORTS        |INDIA                        |<20     |            1|     84|  4062|
|6-24 months |COHORTS        |INDIA                        |>=30    |            0|    682|  4062|
|6-24 months |COHORTS        |INDIA                        |>=30    |            1|    313|  4062|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30) |            0|    480|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30) |            1|    833|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |<20     |            0|     75|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |<20     |            1|    162|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30    |            0|    198|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30    |            1|    373|  2121|
|6-24 months |EE             |PAKISTAN                     |[20-30) |            0|     19|    93|
|6-24 months |EE             |PAKISTAN                     |[20-30) |            1|     23|    93|
|6-24 months |EE             |PAKISTAN                     |<20     |            0|      0|    93|
|6-24 months |EE             |PAKISTAN                     |<20     |            1|      0|    93|
|6-24 months |EE             |PAKISTAN                     |>=30    |            0|     20|    93|
|6-24 months |EE             |PAKISTAN                     |>=30    |            1|     31|    93|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30) |            0|    112|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30) |            1|    157|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |<20     |            0|     33|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |<20     |            1|     34|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30    |            0|     28|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30    |            1|     33|   397|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |            0|     72|   184|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |            1|     49|   184|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<20     |            0|     15|   184|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<20     |            1|      8|   184|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |            0|     25|   184|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |            1|     15|   184|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |            0|   1135|  3178|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |            1|    608|  3178|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |            0|    232|  3178|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |            1|    171|  3178|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |            0|    679|  3178|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |            1|    353|  3178|
|6-24 months |IRC            |INDIA                        |[20-30) |            0|    124|   236|
|6-24 months |IRC            |INDIA                        |[20-30) |            1|     76|   236|
|6-24 months |IRC            |INDIA                        |<20     |            0|      8|   236|
|6-24 months |IRC            |INDIA                        |<20     |            1|      9|   236|
|6-24 months |IRC            |INDIA                        |>=30    |            0|     15|   236|
|6-24 months |IRC            |INDIA                        |>=30    |            1|      4|   236|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |            0|   3995| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |            1|   1111| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20     |            0|   3635| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20     |            1|    980| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30    |            0|    590| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30    |            1|    177| 10488|
|6-24 months |Keneba         |GAMBIA                       |[20-30) |            0|    657|  1972|
|6-24 months |Keneba         |GAMBIA                       |[20-30) |            1|    347|  1972|
|6-24 months |Keneba         |GAMBIA                       |<20     |            0|    185|  1972|
|6-24 months |Keneba         |GAMBIA                       |<20     |            1|     82|  1972|
|6-24 months |Keneba         |GAMBIA                       |>=30    |            0|    412|  1972|
|6-24 months |Keneba         |GAMBIA                       |>=30    |            1|    289|  1972|
|6-24 months |LCNI-5         |MALAWI                       |[20-30) |            0|    128|   581|
|6-24 months |LCNI-5         |MALAWI                       |[20-30) |            1|    184|   581|
|6-24 months |LCNI-5         |MALAWI                       |<20     |            0|     40|   581|
|6-24 months |LCNI-5         |MALAWI                       |<20     |            1|     56|   581|
|6-24 months |LCNI-5         |MALAWI                       |>=30    |            0|     64|   581|
|6-24 months |LCNI-5         |MALAWI                       |>=30    |            1|    109|   581|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30) |            0|     67|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30) |            1|     45|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |<20     |            0|      7|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |<20     |            1|     14|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30    |            0|     17|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30    |            1|      8|   158|
|6-24 months |MAL-ED         |BRAZIL                       |[20-30) |            0|     90|   163|
|6-24 months |MAL-ED         |BRAZIL                       |[20-30) |            1|      5|   163|
|6-24 months |MAL-ED         |BRAZIL                       |<20     |            0|     26|   163|
|6-24 months |MAL-ED         |BRAZIL                       |<20     |            1|      4|   163|
|6-24 months |MAL-ED         |BRAZIL                       |>=30    |            0|     36|   163|
|6-24 months |MAL-ED         |BRAZIL                       |>=30    |            1|      2|   163|
|6-24 months |MAL-ED         |INDIA                        |[20-30) |            0|     65|   154|
|6-24 months |MAL-ED         |INDIA                        |[20-30) |            1|     51|   154|
|6-24 months |MAL-ED         |INDIA                        |<20     |            0|     13|   154|
|6-24 months |MAL-ED         |INDIA                        |<20     |            1|      7|   154|
|6-24 months |MAL-ED         |INDIA                        |>=30    |            0|     11|   154|
|6-24 months |MAL-ED         |INDIA                        |>=30    |            1|      7|   154|
|6-24 months |MAL-ED         |NEPAL                        |[20-30) |            0|    123|   194|
|6-24 months |MAL-ED         |NEPAL                        |[20-30) |            1|     31|   194|
|6-24 months |MAL-ED         |NEPAL                        |<20     |            0|      2|   194|
|6-24 months |MAL-ED         |NEPAL                        |<20     |            1|      0|   194|
|6-24 months |MAL-ED         |NEPAL                        |>=30    |            0|     28|   194|
|6-24 months |MAL-ED         |NEPAL                        |>=30    |            1|     10|   194|
|6-24 months |MAL-ED         |PERU                         |[20-30) |            0|     46|   149|
|6-24 months |MAL-ED         |PERU                         |[20-30) |            1|     27|   149|
|6-24 months |MAL-ED         |PERU                         |<20     |            0|     24|   149|
|6-24 months |MAL-ED         |PERU                         |<20     |            1|     18|   149|
|6-24 months |MAL-ED         |PERU                         |>=30    |            0|     20|   149|
|6-24 months |MAL-ED         |PERU                         |>=30    |            1|     14|   149|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |            0|     46|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |            1|     30|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |            0|     14|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |            1|      8|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |            0|     38|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |            1|     22|   158|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|     15|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|     54|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            0|      0|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |            1|      9|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|     16|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|     50|   144|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |            0|     95|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |            1|    124|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20     |            0|     16|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20     |            1|     30|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30    |            0|     36|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30    |            1|     44|   345|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |            0|    246|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |            1|     84|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20     |            0|     70|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20     |            1|     18|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |            0|     57|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |            1|     31|   506|
|6-24 months |PROBIT         |BELARUS                      |[20-30) |            0|  10376| 15467|
|6-24 months |PROBIT         |BELARUS                      |[20-30) |            1|    730| 15467|
|6-24 months |PROBIT         |BELARUS                      |<20     |            0|   1433| 15467|
|6-24 months |PROBIT         |BELARUS                      |<20     |            1|    118| 15467|
|6-24 months |PROBIT         |BELARUS                      |>=30    |            0|   2664| 15467|
|6-24 months |PROBIT         |BELARUS                      |>=30    |            1|    146| 15467|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30) |            0|    235|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30) |            1|     95|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |<20     |            0|     29|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |<20     |            1|     15|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30    |            0|     55|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30    |            1|     27|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30) |            0|    313|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30) |            1|    309|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |<20     |            0|     55|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |<20     |            1|     48|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30    |            0|     36|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30    |            1|     52|   813|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |            0|     40|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |            1|    124|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20     |            0|      8|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20     |            1|     12|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |            0|     11|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |            1|     48|   243|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            0|    783|  1591|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |            1|    238|  1591|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            0|     90|  1591|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |            1|     25|  1591|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            0|    358|  1591|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |            1|     97|  1591|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |            0|   4259|  8476|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |            1|   1447|  8476|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |            0|    900|  8476|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |            1|    385|  8476|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |            0|   1089|  8476|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |            1|    396|  8476|


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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/920f10d5-07ff-4b18-8c5a-cbbf8441fc06/00716c2a-8672-4fec-b514-7c796f58e5d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/920f10d5-07ff-4b18-8c5a-cbbf8441fc06/00716c2a-8672-4fec-b514-7c796f58e5d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/920f10d5-07ff-4b18-8c5a-cbbf8441fc06/00716c2a-8672-4fec-b514-7c796f58e5d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/920f10d5-07ff-4b18-8c5a-cbbf8441fc06/00716c2a-8672-4fec-b514-7c796f58e5d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.7714213| 0.7382868| 0.8045558|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.7408399| 0.6719787| 0.8097010|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.7551390| 0.7165948| 0.7936833|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.3833333| 0.3673455| 0.3993211|
|0-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.4090420| 0.3623338| 0.4557501|
|0-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.3870306| 0.3602765| 0.4137847|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.6762925| 0.6550064| 0.6975787|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.7070255| 0.6617841| 0.7522669|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.7010016| 0.6717018| 0.7303015|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.6318501| 0.5868224| 0.6768777|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.6967205| 0.6195376| 0.7739033|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.5452856| 0.4516278| 0.6389434|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | 0.5371636| 0.4634705| 0.6108567|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20                |NA             | 0.5977394| 0.4565848| 0.7388940|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |NA             | 0.5187810| 0.3900676| 0.6474943|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.3455169| 0.2556098| 0.4354240|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.3960692| 0.3377722| 0.4543661|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.3558881| 0.3121784| 0.3995979|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | 0.6395349| 0.5887350| 0.6903348|
|0-24 months |IRC            |INDIA                        |<20                |NA             | 0.7837838| 0.6509771| 0.9165904|
|0-24 months |IRC            |INDIA                        |>=30               |NA             | 0.4827586| 0.3006666| 0.6648507|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.4643326| 0.4536813| 0.4749838|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.5347292| 0.5238865| 0.5455719|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.4747428| 0.4507903| 0.4986953|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.5001650| 0.4744680| 0.5258621|
|0-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.4862801| 0.4347742| 0.5377860|
|0-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.5459476| 0.5156495| 0.5762457|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             | 0.6293118| 0.5802642| 0.6783593|
|0-24 months |LCNI-5         |MALAWI                       |<20                |NA             | 0.6073589| 0.5152300| 0.6994878|
|0-24 months |LCNI-5         |MALAWI                       |>=30               |NA             | 0.6647429| 0.5995804| 0.7299055|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.5769231| 0.5050110| 0.6488352|
|0-24 months |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.7837838| 0.6508882| 0.9166793|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.6086957| 0.4673939| 0.7499974|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30)            |NA             | 0.2893725| 0.2114215| 0.3673236|
|0-24 months |MAL-ED         |BRAZIL                       |<20                |NA             | 0.2807502| 0.1420154| 0.4194849|
|0-24 months |MAL-ED         |BRAZIL                       |>=30               |NA             | 0.2175986| 0.1007303| 0.3344670|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | 0.6089571| 0.5407661| 0.6771481|
|0-24 months |MAL-ED         |INDIA                        |<20                |NA             | 0.6762970| 0.5086045| 0.8439894|
|0-24 months |MAL-ED         |INDIA                        |>=30               |NA             | 0.4889043| 0.2540948| 0.7237138|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             | 0.5995228| 0.5217662| 0.6772794|
|0-24 months |MAL-ED         |PERU                         |<20                |NA             | 0.6536578| 0.5521308| 0.7551848|
|0-24 months |MAL-ED         |PERU                         |>=30               |NA             | 0.6202133| 0.5010240| 0.7394027|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.5441704| 0.4678356| 0.6205052|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.5477560| 0.3993661| 0.6961459|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.5761749| 0.4777537| 0.6745961|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.6716155| 0.6272424| 0.7159886|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.6142586| 0.5030958| 0.7254213|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.6646738| 0.5850355| 0.7443122|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.4704217| 0.4266863| 0.5141571|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.4538230| 0.3654948| 0.5421512|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.5152353| 0.4288960| 0.6015746|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.1283706| 0.1119011| 0.1448401|
|0-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.1512855| 0.1168882| 0.1856829|
|0-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.1164641| 0.0948093| 0.1381190|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.4293222| 0.3859802| 0.4726642|
|0-24 months |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.4226137| 0.3176185| 0.5276090|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.4739746| 0.3899307| 0.5580185|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.6893539| 0.6404306| 0.7382772|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.6959665| 0.6436378| 0.7482953|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.7208321| 0.6640130| 0.7776513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.8344828| 0.7916575| 0.8773080|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.7777778| 0.6418092| 0.9137463|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.8260870| 0.7485421| 0.9036319|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.3534321| 0.3296684| 0.3771959|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.3057755| 0.2339331| 0.3776180|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.3384434| 0.3010423| 0.3758444|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.4118608| 0.4016610| 0.4220606|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.4438878| 0.4214140| 0.4663615|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.4188580| 0.3965712| 0.4411448|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | 0.5247651| 0.4673021| 0.5822281|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20                |NA             | 0.5311562| 0.3651371| 0.6971753|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30               |NA             | 0.4470992| 0.3048289| 0.5893696|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.2999366| 0.2589432| 0.3409299|
|0-6 months  |COHORTS        |GUATEMALA                    |<20                |NA             | 0.3573274| 0.2696444| 0.4450104|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.3515191| 0.3037365| 0.3993017|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |NA             | 0.1910226| 0.1777601| 0.2042852|
|0-6 months  |COHORTS        |INDIA                        |<20                |NA             | 0.2260878| 0.1833599| 0.2688156|
|0-6 months  |COHORTS        |INDIA                        |>=30               |NA             | 0.1749350| 0.1536964| 0.1961735|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.2138558| 0.1950583| 0.2326533|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.2656435| 0.2223609| 0.3089260|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.2652649| 0.2366500| 0.2938799|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.2803868| 0.2382903| 0.3224833|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.4785237| 0.3954127| 0.5616347|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.2627485| 0.1776262| 0.3478708|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | 0.2808090| 0.2115551| 0.3500629|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<20                |NA             | 0.4259171| 0.2758998| 0.5759343|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=30               |NA             | 0.3025892| 0.1749120| 0.4302665|
|0-6 months  |IRC            |INDIA                        |[20-30)            |NA             | 0.4200227| 0.3677665| 0.4722789|
|0-6 months  |IRC            |INDIA                        |<20                |NA             | 0.5245621| 0.3634220| 0.6857023|
|0-6 months  |IRC            |INDIA                        |>=30               |NA             | 0.3331124| 0.1561495| 0.5100753|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.3773985| 0.3672635| 0.3875335|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.4561793| 0.4453598| 0.4669988|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.4032110| 0.3791605| 0.4272615|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.3066131| 0.2798252| 0.3334009|
|0-6 months  |Keneba         |GAMBIA                       |<20                |NA             | 0.2991540| 0.2473694| 0.3509385|
|0-6 months  |Keneba         |GAMBIA                       |>=30               |NA             | 0.3157692| 0.2855240| 0.3460143|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30)            |NA             | 0.3893947| 0.3004519| 0.4783375|
|0-6 months  |LCNI-5         |MALAWI                       |<20                |NA             | 0.2894707| 0.1494450| 0.4294964|
|0-6 months  |LCNI-5         |MALAWI                       |>=30               |NA             | 0.3654535| 0.2468290| 0.4840779|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.3309916| 0.2627811| 0.3992021|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.4657269| 0.3063687| 0.6250851|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.4757511| 0.3309217| 0.6205806|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30)            |NA             | 0.2517986| 0.1794865| 0.3241106|
|0-6 months  |MAL-ED         |BRAZIL                       |<20                |NA             | 0.1627907| 0.0522099| 0.2733715|
|0-6 months  |MAL-ED         |BRAZIL                       |>=30               |NA             | 0.1960784| 0.0868794| 0.3052774|
|0-6 months  |MAL-ED         |PERU                         |[20-30)            |NA             | 0.4267287| 0.3480302| 0.5054273|
|0-6 months  |MAL-ED         |PERU                         |<20                |NA             | 0.4484037| 0.3411616| 0.5556458|
|0-6 months  |MAL-ED         |PERU                         |>=30               |NA             | 0.4233645| 0.2972982| 0.5494309|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.3433170| 0.2704494| 0.4161846|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.4041658| 0.2431745| 0.5651572|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.3852288| 0.2907070| 0.4797505|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.4642857| 0.3815156| 0.5470559|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.3125000| 0.0849484| 0.5400516|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.3679245| 0.2759454| 0.4599037|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.3754888| 0.3296072| 0.4213703|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.2229947| 0.1262732| 0.3197162|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.3226651| 0.2442856| 0.4010445|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.3000556| 0.2596519| 0.3404594|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.3189018| 0.2368042| 0.4009994|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.2966831| 0.2125425| 0.3808237|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.0677949| 0.0570388| 0.0785509|
|0-6 months  |PROBIT         |BELARUS                      |<20                |NA             | 0.0959363| 0.0639958| 0.1278768|
|0-6 months  |PROBIT         |BELARUS                      |>=30               |NA             | 0.0646235| 0.0506156| 0.0786313|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.2357862| 0.1985908| 0.2729815|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.2529999| 0.1553010| 0.3506989|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.2505970| 0.1750899| 0.3261040|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.4252859| 0.3905337| 0.4600381|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.4444347| 0.3873451| 0.5015242|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.4281108| 0.3383876| 0.5178341|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.4086881| 0.3524713| 0.4649048|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.4926966| 0.3200775| 0.6653158|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.3207835| 0.2290109| 0.4125561|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.2036064| 0.1835459| 0.2236669|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.1824848| 0.1213939| 0.2435757|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.1709128| 0.1411862| 0.2006395|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.2560681| 0.2469264| 0.2652099|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.2768590| 0.2567581| 0.2969599|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.2555006| 0.2354103| 0.2755909|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.7874326| 0.7489083| 0.8259569|
|6-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.7581366| 0.6798532| 0.8364199|
|6-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.7265045| 0.6771075| 0.7759015|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.2595510| 0.2431229| 0.2759792|
|6-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.2858893| 0.2324792| 0.3392994|
|6-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.2751830| 0.2473786| 0.3029875|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.6388784| 0.6131206| 0.6646363|
|6-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.6799968| 0.6210286| 0.7389650|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.6559505| 0.6183363| 0.6935648|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.5899758| 0.5305057| 0.6494459|
|6-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.5186513| 0.3808176| 0.6564850|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.4291216| 0.3138069| 0.5444363|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | 0.4049587| 0.3172550| 0.4926623|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<20                |NA             | 0.3478261| 0.1526483| 0.5430038|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |NA             | 0.3750000| 0.2245622| 0.5254378|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.3465931| 0.2598227| 0.4333635|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.3929355| 0.3347873| 0.4510837|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.3568205| 0.3131221| 0.4005188|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.2191782| 0.2055854| 0.2327711|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.2134960| 0.1995603| 0.2274317|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.2095413| 0.1791665| 0.2399160|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.3506969| 0.3211520| 0.3802417|
|6-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.3272766| 0.2704362| 0.3841170|
|6-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.4005471| 0.3637265| 0.4373676|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             | 0.5910109| 0.5369666| 0.6450553|
|6-24 months |LCNI-5         |MALAWI                       |<20                |NA             | 0.5689722| 0.4681672| 0.6697773|
|6-24 months |LCNI-5         |MALAWI                       |>=30               |NA             | 0.6353490| 0.5637135| 0.7069845|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.4017857| 0.3107014| 0.4928700|
|6-24 months |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.6666667| 0.4644062| 0.8689271|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.3200000| 0.1365633| 0.5034367|
|6-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | 0.4396552| 0.3490365| 0.5302738|
|6-24 months |MAL-ED         |INDIA                        |<20                |NA             | 0.3500000| 0.1402807| 0.5597193|
|6-24 months |MAL-ED         |INDIA                        |>=30               |NA             | 0.3888889| 0.1629457| 0.6148321|
|6-24 months |MAL-ED         |PERU                         |[20-30)            |NA             | 0.3759896| 0.2624711| 0.4895082|
|6-24 months |MAL-ED         |PERU                         |<20                |NA             | 0.3927131| 0.2465805| 0.5388457|
|6-24 months |MAL-ED         |PERU                         |>=30               |NA             | 0.4114986| 0.2312253| 0.5917719|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.3947368| 0.2844951| 0.5049786|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.3636364| 0.1619847| 0.5652880|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.3666667| 0.2443451| 0.4889882|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.5660646| 0.5008082| 0.6313211|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.6448849| 0.5081204| 0.7816495|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.5505667| 0.4409546| 0.6601788|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.2586638| 0.2118466| 0.3054809|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.2073003| 0.1203257| 0.2942748|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.3372269| 0.2374286| 0.4370252|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.0667242| 0.0537011| 0.0797473|
|6-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.0584237| 0.0393304| 0.0775171|
|6-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.0561461| 0.0420449| 0.0702473|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.2901772| 0.2412640| 0.3390904|
|6-24 months |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.3081412| 0.1753183| 0.4409641|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.3417144| 0.2427287| 0.4407002|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.4956969| 0.4444685| 0.5469254|
|6-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.4849519| 0.4177635| 0.5521403|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.5987121| 0.5143736| 0.6830506|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.7560976| 0.6902380| 0.8219571|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.6000000| 0.3848536| 0.8151464|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.8135593| 0.7139769| 0.9131417|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.2315809| 0.2054322| 0.2577297|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.2012945| 0.1236869| 0.2789020|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.2253038| 0.1863383| 0.2642693|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.2578380| 0.2461488| 0.2695272|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.2839914| 0.2565373| 0.3114456|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.2759663| 0.2497856| 0.3021471|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7639706| 0.7413939| 0.7865473|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3877282| 0.3746257| 0.4008307|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6863963| 0.6699496| 0.7028430|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.6389685| 0.6033115| 0.6746254|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.5551601| 0.4969525| 0.6133678|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3561989| 0.3061990| 0.4061987|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6414634| 0.5949863| 0.6879405|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4952969| 0.4874720| 0.5031218|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.5183631| 0.5000444| 0.5366817|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6373134| 0.6008819| 0.6737450|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.6113208| 0.5525209| 0.6701206|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2703863| 0.2132328| 0.3275398|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.6024096| 0.5415000| 0.6633193|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6204620| 0.5657315| 0.6751926|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.5605096| 0.5055248| 0.6154943|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.6634769| 0.6264616| 0.7004922|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1274191| 0.1115552| 0.1432829|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6914547| 0.6510509| 0.7318584|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.8277512| 0.7915095| 0.8639929|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3459596| 0.3268289| 0.3650903|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4172011| 0.4090427| 0.4253595|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5108696| 0.4597270| 0.5620121|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3253896| 0.2975756| 0.3532035|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.1902629| 0.1795262| 0.2009996|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2390451| 0.2239262| 0.2541640|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3180516| 0.2834770| 0.3526261|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3181818| 0.2618904| 0.3744732|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.4243902| 0.3764905| 0.4722900|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4129650| 0.4055288| 0.4204012|
|0-6 months  |Keneba         |GAMBIA                       |NA                 |NA             | 0.3127302| 0.2943427| 0.3311178|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3545455| 0.2911884| 0.4179025|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3584906| 0.3006428| 0.4163383|
|0-6 months  |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2231760| 0.1695976| 0.2767543|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4257426| 0.3699763| 0.4815088|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3694268| 0.3159570| 0.4228965|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4160305| 0.3562327| 0.4758284|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3476874| 0.3103810| 0.3849938|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0686124| 0.0577768| 0.0794479|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4254902| 0.3977202| 0.4532601|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3894231| 0.3425088| 0.4363374|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1944444| 0.1785274| 0.2103615|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2587572| 0.2515068| 0.2660076|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7642458| 0.7364214| 0.7920702|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.2666174| 0.2530174| 0.2802175|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6449788| 0.6246093| 0.6653483|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5642317| 0.5153938| 0.6130696|
|6-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3913043| 0.3205945| 0.4620142|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.3561989| 0.3061990| 0.4061987|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2162471| 0.2068695| 0.2256248|
|6-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.3640974| 0.3428547| 0.3853400|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6006885| 0.5608305| 0.6405464|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.4240506| 0.3467471| 0.5013542|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4220779| 0.3438191| 0.5003367|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.3959732| 0.3171819| 0.4747644|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3797468| 0.3038314| 0.4556622|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0642659| 0.0526827| 0.0758490|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.5030750| 0.4588491| 0.5473009|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.7572016| 0.7031798| 0.8112234|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2262728| 0.2057063| 0.2468392|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2628598| 0.2534882| 0.2722315|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 0.9603570| 0.8672420| 1.0634697|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 0.9788932| 0.9164159| 1.0456299|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 1.0670662| 0.9454598| 1.2043138|
|0-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.0096451| 0.9322109| 1.0935114|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.0454432| 0.9742043| 1.1218916|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.0365361| 0.9847621| 1.0910321|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.1026674| 0.9666843| 1.2577792|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 0.8629984| 0.7171428| 1.0385188|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20                |[20-30)        | 1.1127698| 0.8472031| 1.4615819|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |[20-30)        | 0.9657784| 0.7279228| 1.2813555|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.1463091| 0.8472462| 1.5509360|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.0300165| 0.7803040| 1.3596420|
|0-24 months |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |<20                |[20-30)        | 1.2255528| 1.0163873| 1.4777631|
|0-24 months |IRC            |INDIA                        |>=30               |[20-30)        | 0.7548589| 0.5134061| 1.1098662|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.1516082| 1.1204042| 1.1836814|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.0224198| 0.9692710| 1.0784829|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 0.9722392| 0.8647710| 1.0930629|
|0-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.0915350| 1.0132156| 1.1759083|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |<20                |[20-30)        | 0.9651161| 0.8144624| 1.1436367|
|0-24 months |LCNI-5         |MALAWI                       |>=30               |[20-30)        | 1.0563015| 0.9332186| 1.1956179|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 1.3585586| 1.1007380| 1.6767671|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 1.0550725| 0.8106836| 1.3731349|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BRAZIL                       |<20                |[20-30)        | 0.9702032| 0.5520015| 1.7052386|
|0-24 months |MAL-ED         |BRAZIL                       |>=30               |[20-30)        | 0.7519671| 0.4118013| 1.3731249|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |<20                |[20-30)        | 1.1105823| 0.8477149| 1.4549621|
|0-24 months |MAL-ED         |INDIA                        |>=30               |[20-30)        | 0.8028551| 0.4903255| 1.3145886|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |<20                |[20-30)        | 1.0902969| 0.8918078| 1.3329636|
|0-24 months |MAL-ED         |PERU                         |>=30               |[20-30)        | 1.0345117| 0.8210983| 1.3033938|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 1.0065892| 0.7435873| 1.3626130|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 1.0588133| 0.8509232| 1.3174934|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.9145985| 0.7552725| 1.1075346|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 0.9896642| 0.8644668| 1.1329936|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 0.9647153| 0.7780386| 1.1961817|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.0952627| 0.9071778| 1.3223432|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 1.1785060| 0.9647641| 1.4396021|
|0-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.9072490| 0.7659482| 1.0746167|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 0.9843743| 0.7543349| 1.2845658|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.1040068| 0.9036206| 1.3488305|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 1.0095926| 0.9099840| 1.1201044|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 1.0456634| 0.9585725| 1.1406670|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 0.9320478| 0.7768057| 1.1183144|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 0.9899389| 0.8895009| 1.1017178|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 0.8651605| 0.6777320| 1.1044230|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 0.9575909| 0.8421389| 1.0888706|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 1.0777617| 1.0190526| 1.1398531|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 1.0169893| 0.9594160| 1.0780176|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |<20                |[20-30)        | 1.0121791| 0.7263273| 1.4105300|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |>=30               |[20-30)        | 0.8519988| 0.6082857| 1.1933569|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 1.1913434| 0.9015548| 1.5742793|
|0-6 months  |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 1.1719781| 0.9687235| 1.4178789|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |<20                |[20-30)        | 1.1835654| 0.9679529| 1.4472059|
|0-6 months  |COHORTS        |INDIA                        |>=30               |[20-30)        | 0.9157814| 0.7967095| 1.0526492|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.2421617| 1.0339443| 1.4923102|
|0-6 months  |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.2403917| 1.0810988| 1.4231553|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.7066558| 1.3574510| 2.1456936|
|0-6 months  |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 0.9370931| 0.6559470| 1.3387416|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |<20                |[20-30)        | 1.5167500| 0.9858870| 2.3334628|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |>=30               |[20-30)        | 1.0775624| 0.6616643| 1.7548789|
|0-6 months  |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |<20                |[20-30)        | 1.2488900| 0.8969779| 1.7388679|
|0-6 months  |IRC            |INDIA                        |>=30               |[20-30)        | 0.7930818| 0.4596988| 1.3682411|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.2087470| 1.1696199| 1.2491830|
|0-6 months  |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.0683959| 1.0028878| 1.1381828|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Keneba         |GAMBIA                       |<20                |[20-30)        | 0.9756725| 0.8039472| 1.1840788|
|0-6 months  |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.0298620| 0.9054217| 1.1714053|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |LCNI-5         |MALAWI                       |<20                |[20-30)        | 0.7433863| 0.4348031| 1.2709735|
|0-6 months  |LCNI-5         |MALAWI                       |>=30               |[20-30)        | 0.9385168| 0.6306968| 1.3965727|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 1.4070655| 0.9460861| 2.0926567|
|0-6 months  |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 1.4373510| 1.0009919| 2.0639307|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BRAZIL                       |<20                |[20-30)        | 0.6465116| 0.3092336| 1.3516553|
|0-6 months  |MAL-ED         |BRAZIL                       |>=30               |[20-30)        | 0.7787115| 0.4161478| 1.4571545|
|0-6 months  |MAL-ED         |PERU                         |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |PERU                         |<20                |[20-30)        | 1.0507934| 0.7768293| 1.4213762|
|0-6 months  |MAL-ED         |PERU                         |>=30               |[20-30)        | 0.9921162| 0.6991190| 1.4079072|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 1.1772381| 0.7494363| 1.8492424|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 1.1220790| 0.8136136| 1.5474928|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 0.6730769| 0.3180438| 1.4244346|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 0.7924528| 0.5829399| 1.0772662|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.5938785| 0.3792533| 0.9299633|
|0-6 months  |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 0.8593201| 0.6561596| 1.1253835|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 1.0628089| 0.7950704| 1.4207078|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 0.9887603| 0.7232879| 1.3516705|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT         |BELARUS                      |<20                |[20-30)        | 1.4150970| 1.0460700| 1.9143074|
|0-6 months  |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.9532207| 0.7979413| 1.1387174|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 1.0730059| 0.7072385| 1.6279397|
|0-6 months  |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.0628146| 0.7579250| 1.4903518|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 1.0450256| 0.8853456| 1.2335053|
|0-6 months  |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 1.0066424| 0.7964428| 1.2723185|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 1.2055567| 0.8281505| 1.7549552|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 0.7849104| 0.5735113| 1.0742322|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 0.8962627| 0.6326789| 1.2696596|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 0.8394278| 0.6878319| 1.0244349|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 1.0811928| 0.9974234| 1.1719976|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 0.9977838| 0.9155319| 1.0874252|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 0.9627955| 0.8592236| 1.0788520|
|6-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 0.9226244| 0.8490083| 1.0026235|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 1.1014762| 0.9049547| 1.3406747|
|6-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.0602270| 0.9421998| 1.1930393|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.0643603| 0.9679122| 1.1704190|
|6-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.0267220| 0.9583362| 1.0999877|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 0.8791060| 0.6615492| 1.1682085|
|6-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 0.7273546| 0.5468013| 0.9675264|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Guatemala BSC  |GUATEMALA                    |<20                |[20-30)        | 0.8589175| 0.4706868| 1.5673676|
|6-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |[20-30)        | 0.9260204| 0.5869864| 1.4608750|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.1337085| 0.8451750| 1.5207441|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.0295083| 0.7865420| 1.3475280|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 0.9740747| 0.8934108| 1.0620216|
|6-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 0.9560313| 0.8209387| 1.1133545|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 0.9332179| 0.7703597| 1.1305052|
|6-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.1421462| 1.0094113| 1.2923354|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |<20                |[20-30)        | 0.9627102| 0.7893242| 1.1741828|
|6-24 months |LCNI-5         |MALAWI                       |>=30               |[20-30)        | 1.0750207| 0.9309707| 1.2413597|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 1.6592593| 1.1361428| 2.4232354|
|6-24 months |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 0.7964444| 0.4299716| 1.4752689|
|6-24 months |MAL-ED         |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |<20                |[20-30)        | 0.7960784| 0.4224373| 1.5002011|
|6-24 months |MAL-ED         |INDIA                        |>=30               |[20-30)        | 0.8845316| 0.4775097| 1.6384927|
|6-24 months |MAL-ED         |PERU                         |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |PERU                         |<20                |[20-30)        | 1.0444785| 0.6453751| 1.6903898|
|6-24 months |MAL-ED         |PERU                         |>=30               |[20-30)        | 1.0944413| 0.6438640| 1.8603336|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 0.9212121| 0.4951164| 1.7140046|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 0.9288889| 0.6011930| 1.4352039|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 1.1392426| 0.8968887| 1.4470844|
|6-24 months |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 0.9726216| 0.7742525| 1.2218143|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 0.8014275| 0.5077764| 1.2648996|
|6-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.3037269| 0.9242234| 1.8390615|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 0.8755998| 0.6594759| 1.1625521|
|6-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.8414652| 0.6613573| 1.0706221|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 1.0619072| 0.6707904| 1.6810718|
|6-24 months |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.1776062| 0.8452228| 1.6406993|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.9783235| 0.8046452| 1.1894893|
|6-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 1.2078188| 1.0640060| 1.3710697|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 0.7935484| 0.5486766| 1.1477053|
|6-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 1.0759978| 0.9259047| 1.2504217|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 0.8692187| 0.5817193| 1.2988070|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 0.9728945| 0.7920892| 1.1949711|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 1.1014334| 0.9901596| 1.2252120|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 1.0703090| 0.9637818| 1.1886106|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0074507| -0.0319513|  0.0170499|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0043949| -0.0048133|  0.0136031|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0101038| -0.0026764|  0.0228840|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0071184| -0.0196429|  0.0338797|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.0179966| -0.0272756|  0.0632687|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0106820| -0.0364629|  0.0578268|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             |  0.0019285| -0.0183280|  0.0221851|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0309643|  0.0239241|  0.0380046|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0181980|  0.0003182|  0.0360779|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0080017| -0.0246378|  0.0406412|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0343977| -0.0046598|  0.0734552|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30)            |NA             | -0.0189863| -0.0681175|  0.0301449|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | -0.0065474| -0.0392784|  0.0261835|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             |  0.0209392| -0.0330252|  0.0749037|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             |  0.0163392| -0.0368281|  0.0695064|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0081386| -0.0333138|  0.0170366|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0071509| -0.0185067|  0.0328085|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0009515| -0.0050411|  0.0031380|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0063921| -0.0163416|  0.0291258|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0021008| -0.0117798|  0.0159813|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | -0.0067316| -0.0312810|  0.0178179|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0074725| -0.0211600|  0.0062149|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0053403| -0.0007821|  0.0114627|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0138955| -0.0404737|  0.0126827|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0254530| -0.0052927|  0.0561987|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |NA             | -0.0007597| -0.0085649|  0.0070455|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0251893|  0.0127896|  0.0375891|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0376648|  0.0106494|  0.0646802|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.0373728| -0.0077869|  0.0825325|
|0-6 months  |IRC            |INDIA                        |[20-30)            |NA             |  0.0043675| -0.0167306|  0.0254657|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0355665|  0.0286024|  0.0425307|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0061172| -0.0132689|  0.0255032|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30)            |NA             | -0.0348492| -0.0949736|  0.0252751|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0274989| -0.0110659|  0.0660638|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30)            |NA             | -0.0286226| -0.0717589|  0.0145137|
|0-6 months  |MAL-ED         |PERU                         |[20-30)            |NA             | -0.0009862| -0.0568401|  0.0548678|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             |  0.0261098| -0.0256490|  0.0778685|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0482552| -0.1039787|  0.0074683|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0278014| -0.0526115| -0.0029912|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0020552| -0.0221070|  0.0262173|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |NA             |  0.0008175| -0.0019097|  0.0035446|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0042138| -0.0165415|  0.0249691|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0002043| -0.0174495|  0.0178581|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | -0.0192650| -0.0490775|  0.0105475|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0091619| -0.0205321|  0.0022082|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0026891| -0.0028762|  0.0082544|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0231868| -0.0514535|  0.0050799|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0070664| -0.0026046|  0.0167374|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0061003| -0.0092526|  0.0214533|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | -0.0257441| -0.0604485|  0.0089604|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | -0.0136543| -0.0644013|  0.0370926|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0096058| -0.0345724|  0.0537840|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | -0.0029311| -0.0122773|  0.0064151|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0134005| -0.0074368|  0.0342378|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0096775| -0.0266614|  0.0460164|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0222649| -0.0278377|  0.0723675|
|6-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | -0.0175773| -0.0619084|  0.0267539|
|6-24 months |MAL-ED         |PERU                         |[20-30)            |NA             |  0.0199835| -0.0635589|  0.1035259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0149900| -0.0938865|  0.0639065|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             |  0.0078484| -0.0306548|  0.0463516|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0041821| -0.0237382|  0.0321024|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0024584| -0.0057195|  0.0008028|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0102614| -0.0151398|  0.0356626|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0073781| -0.0105915|  0.0253477|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0011041| -0.0363276|  0.0385358|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0053081| -0.0207257|  0.0101094|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0050218| -0.0021073|  0.0121510|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0097526| -0.0423420|  0.0218178|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0113351| -0.0127033|  0.0348029|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0147201| -0.0040961|  0.0331836|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0111405| -0.0316595|  0.0521649|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.0324169| -0.0527382|  0.1106839|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0299888| -0.1153032|  0.1563534|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             |  0.0030065| -0.0290797|  0.0340921|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0625167|  0.0481354|  0.0766808|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0351067| -0.0000432|  0.0690211|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0125553| -0.0400197|  0.0624726|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0562678| -0.0103161|  0.1184636|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30)            |NA             | -0.0702191| -0.2677413|  0.0965279|
|0-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | -0.0108688| -0.0667387|  0.0420751|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             |  0.0337478| -0.0573933|  0.1170331|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             |  0.0291506| -0.0705283|  0.1195481|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0122666| -0.0509508|  0.0249936|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0149734| -0.0402486|  0.0672638|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0074678| -0.0400723|  0.0241146|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0146703| -0.0389352|  0.0655100|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0030382| -0.0173320|  0.0230006|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | -0.0081324| -0.0382500|  0.0211116|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0215994| -0.0619311|  0.0172004|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0128003| -0.0019864|  0.0273689|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0271997| -0.0806611|  0.0236169|
|0-6 months  |COHORTS        |GUATEMALA                    |[20-30)            |NA             |  0.0782232| -0.0213739|  0.1681082|
|0-6 months  |COHORTS        |INDIA                        |[20-30)            |NA             | -0.0039930| -0.0458668|  0.0362043|
|0-6 months  |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.1053748|  0.0520619|  0.1556894|
|0-6 months  |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.1184236|  0.0293443|  0.1993278|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.1174574| -0.0363315|  0.2484245|
|0-6 months  |IRC            |INDIA                        |[20-30)            |NA             |  0.0102913| -0.0407014|  0.0587855|
|0-6 months  |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0861248|  0.0690483|  0.1028880|
|0-6 months  |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0195605| -0.0444485|  0.0796468|
|0-6 months  |LCNI-5         |MALAWI                       |[20-30)            |NA             | -0.0982927| -0.2819702|  0.0590680|
|0-6 months  |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0767076| -0.0376216|  0.1784395|
|0-6 months  |MAL-ED         |BRAZIL                       |[20-30)            |NA             | -0.1282512| -0.3380526|  0.0486541|
|0-6 months  |MAL-ED         |PERU                         |[20-30)            |NA             | -0.0023164| -0.1424835|  0.1206542|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             |  0.0706764| -0.0804853|  0.2006904|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.1159895| -0.2589886|  0.0107674|
|0-6 months  |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0799608| -0.1537955| -0.0108509|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0068027| -0.0764763|  0.0836391|
|0-6 months  |PROBIT         |BELARUS                      |[20-30)            |NA             |  0.0119144| -0.0283851|  0.0506347|
|0-6 months  |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0175576| -0.0727815|  0.1002892|
|0-6 months  |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0004801| -0.0418876|  0.0411250|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | -0.0494706| -0.1289752|  0.0244352|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0471185| -0.1071684|  0.0096745|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0103924| -0.0113530|  0.0316702|
|6-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0303394| -0.0680795|  0.0060671|
|6-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0265038| -0.0104335|  0.0620910|
|6-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0094582| -0.0146421|  0.0329861|
|6-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | -0.0456267| -0.1091786|  0.0142838|
|6-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | -0.0348944| -0.1731146|  0.0870403|
|6-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0269675| -0.1083432|  0.1457590|
|6-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | -0.0135544| -0.0576802|  0.0287305|
|6-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0368047| -0.0221703|  0.0923770|
|6-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0161107| -0.0462978|  0.0747968|
|6-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0525053| -0.0735034|  0.1637230|
|6-24 months |MAL-ED         |INDIA                        |[20-30)            |NA             | -0.0416446| -0.1523167|  0.0583983|
|6-24 months |MAL-ED         |PERU                         |[20-30)            |NA             |  0.0504668| -0.1858009|  0.2396588|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0394737| -0.2695024|  0.1488748|
|6-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             |  0.0136753| -0.0557752|  0.0785572|
|6-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0159108| -0.0962110|  0.1165647|
|6-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0382532| -0.0883411|  0.0095296|
|6-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0341548| -0.0542847|  0.1151755|
|6-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             |  0.0146660| -0.0220224|  0.0500374|
|6-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0014581| -0.0492208|  0.0496892|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0234590| -0.0938681|  0.0424181|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0191045| -0.0083937|  0.0458529|
