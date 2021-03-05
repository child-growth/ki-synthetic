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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |meducyrs | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |            0|     17|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |            1|    141|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |            0|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |            1|    101|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |            0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |            1|    103|   373|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            0|     65|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            1|    220|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            0|    132|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            1|    504|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            0|    117|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            1|    303|  1341|
|0-24 months |COHORTS        |INDIA                        |High     |            0|    648|  5852|
|0-24 months |COHORTS        |INDIA                        |High     |            1|    145|  5852|
|0-24 months |COHORTS        |INDIA                        |Low      |            0|    931|  5852|
|0-24 months |COHORTS        |INDIA                        |Low      |            1|   1025|  5852|
|0-24 months |COHORTS        |INDIA                        |Medium   |            0|   2039|  5852|
|0-24 months |COHORTS        |INDIA                        |Medium   |            1|   1064|  5852|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            0|    495|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            1|    678|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            0|    177|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            1|    726|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            0|    287|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            1|    695|  3058|
|0-24 months |EE             |PAKISTAN                     |High     |            0|      3|   376|
|0-24 months |EE             |PAKISTAN                     |High     |            1|     12|   376|
|0-24 months |EE             |PAKISTAN                     |Low      |            0|     31|   376|
|0-24 months |EE             |PAKISTAN                     |Low      |            1|    297|   376|
|0-24 months |EE             |PAKISTAN                     |Medium   |            0|      7|   376|
|0-24 months |EE             |PAKISTAN                     |Medium   |            1|     26|   376|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            0|     43|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            1|     42|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            0|    158|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            1|    328|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            0|     50|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            1|     74|   695|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |            0|     60|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |            1|     58|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |            0|     27|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |            1|     49|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |            0|     39|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |            1|     49|   282|
|0-24 months |IRC            |INDIA                        |High     |            0|     53|   410|
|0-24 months |IRC            |INDIA                        |High     |            1|     71|   410|
|0-24 months |IRC            |INDIA                        |Low      |            0|     51|   410|
|0-24 months |IRC            |INDIA                        |Low      |            1|     96|   410|
|0-24 months |IRC            |INDIA                        |Medium   |            0|     43|   410|
|0-24 months |IRC            |INDIA                        |Medium   |            1|     96|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            0|   5324| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            1|   3703| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            0|   4472| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            1|   5395| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            0|   3928| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            1|   4371| 27193|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            0|    946|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            1|    955|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            0|    630|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            1|   1155|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            0|    688|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            1|   1045|  5419|
|0-24 months |LCNI-5         |MALAWI                       |High     |            0|    125|   814|
|0-24 months |LCNI-5         |MALAWI                       |High     |            1|    173|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            0|     84|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            1|    177|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            0|     86|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            1|    169|   814|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            0|     36|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            1|     42|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            0|     25|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            1|     45|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            0|     25|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            1|     41|   214|
|0-24 months |MAL-ED         |BRAZIL                       |High     |            0|     57|   232|
|0-24 months |MAL-ED         |BRAZIL                       |High     |            1|     22|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |            0|     45|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |            1|     18|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |            0|     67|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |            1|     23|   232|
|0-24 months |MAL-ED         |INDIA                        |High     |            0|     27|   220|
|0-24 months |MAL-ED         |INDIA                        |High     |            1|     36|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |            0|     29|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |            1|     47|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            0|     33|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            1|     48|   220|
|0-24 months |MAL-ED         |NEPAL                        |High     |            0|     40|   225|
|0-24 months |MAL-ED         |NEPAL                        |High     |            1|     13|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            0|     56|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            1|     40|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            0|     53|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            1|     23|   225|
|0-24 months |MAL-ED         |PERU                         |High     |            0|     38|   302|
|0-24 months |MAL-ED         |PERU                         |High     |            1|     53|   302|
|0-24 months |MAL-ED         |PERU                         |Low      |            0|     37|   302|
|0-24 months |MAL-ED         |PERU                         |Low      |            1|     67|   302|
|0-24 months |MAL-ED         |PERU                         |Medium   |            0|     40|   302|
|0-24 months |MAL-ED         |PERU                         |Medium   |            1|     67|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            0|     47|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            1|     48|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     62|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            1|     88|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     29|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|     40|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|      4|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|      7|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     11|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     53|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|     22|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    120|   217|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |            0|     76|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |            1|    103|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |            0|     65|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |            1|    165|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |            0|     70|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |            1|    150|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            0|    157|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            1|     97|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            0|    117|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            1|    125|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            0|    122|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            1|    140|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |            0|   2578| 16897|
|0-24 months |PROBIT         |BELARUS                      |High     |            1|    262| 16897|
|0-24 months |PROBIT         |BELARUS                      |Low      |            0|   5135| 16897|
|0-24 months |PROBIT         |BELARUS                      |Low      |            1|    965| 16897|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            0|   7031| 16897|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            1|    926| 16897|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            0|    147|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            1|     88|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            0|    112|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            1|    102|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            0|    136|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            1|    115|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            0|    145|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            1|    178|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            0|    158|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            1|    538|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            0|    170|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            1|    344|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            0|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            1|     34|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            0|     54|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            1|    278|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            0|     11|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            1|     34|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    426|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|    195|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     50|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     32|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|   1083|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    600|  2386|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            0|   4699| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            1|   2925| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   1610| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            1|   1349| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   1880| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|   1591| 14054|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High     |            0|     80|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High     |            1|     77|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low      |            0|     51|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low      |            1|     53|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium   |            0|     49|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium   |            1|     58|   368|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |            0|    164|  1078|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |            1|     60|  1078|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |            0|    322|  1078|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |            1|    192|  1078|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |            0|    245|  1078|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |            1|     95|  1078|
|0-6 months  |COHORTS        |INDIA                        |High     |            0|    676|  5662|
|0-6 months  |COHORTS        |INDIA                        |High     |            1|     77|  5662|
|0-6 months  |COHORTS        |INDIA                        |Low      |            0|   1436|  5662|
|0-6 months  |COHORTS        |INDIA                        |Low      |            1|    473|  5662|
|0-6 months  |COHORTS        |INDIA                        |Medium   |            0|   2483|  5662|
|0-6 months  |COHORTS        |INDIA                        |Medium   |            1|    517|  5662|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |            0|    954|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |            1|    219|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |            0|    638|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |            1|    265|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |            0|    735|  3058|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |            1|    247|  3058|
|0-6 months  |EE             |PAKISTAN                     |High     |            0|      3|   376|
|0-6 months  |EE             |PAKISTAN                     |High     |            1|     12|   376|
|0-6 months  |EE             |PAKISTAN                     |Low      |            0|     79|   376|
|0-6 months  |EE             |PAKISTAN                     |Low      |            1|    249|   376|
|0-6 months  |EE             |PAKISTAN                     |Medium   |            0|     13|   376|
|0-6 months  |EE             |PAKISTAN                     |Medium   |            1|     20|   376|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |            0|     66|   695|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |            1|     19|   695|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |            0|    317|   695|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |            1|    169|   695|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |            0|     90|   695|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |            1|     34|   695|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High     |            0|     74|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High     |            1|     38|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Low      |            0|     52|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Low      |            1|     22|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Medium   |            0|     55|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Medium   |            1|     24|   265|
|0-6 months  |IRC            |INDIA                        |High     |            0|     82|   410|
|0-6 months  |IRC            |INDIA                        |High     |            1|     42|   410|
|0-6 months  |IRC            |INDIA                        |Low      |            0|     84|   410|
|0-6 months  |IRC            |INDIA                        |Low      |            1|     63|   410|
|0-6 months  |IRC            |INDIA                        |Medium   |            0|     70|   410|
|0-6 months  |IRC            |INDIA                        |Medium   |            1|     69|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |            0|   6011| 27127|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |            1|   2984| 27127|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |            0|   5327| 27127|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |            1|   4520| 27127|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |            0|   4585| 27127|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |            1|   3700| 27127|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |            0|   1271|  5111|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |            1|    525|  5111|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |            0|   1002|  5111|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |            1|    678|  5111|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |            0|   1062|  5111|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |            1|    573|  5111|
|0-6 months  |LCNI-5         |MALAWI                       |High     |            0|     65|   267|
|0-6 months  |LCNI-5         |MALAWI                       |High     |            1|     22|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |            0|     49|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |            1|     43|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |            0|     58|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |            1|     30|   267|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |            0|     58|   214|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |            1|     20|   214|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |            0|     42|   214|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |            1|     28|   214|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |            0|     41|   214|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |            1|     25|   214|
|0-6 months  |MAL-ED         |BRAZIL                       |High     |            0|     60|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |High     |            1|     19|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Low      |            0|     49|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Low      |            1|     14|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Medium   |            0|     71|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Medium   |            1|     19|   232|
|0-6 months  |MAL-ED         |INDIA                        |High     |            0|     44|   220|
|0-6 months  |MAL-ED         |INDIA                        |High     |            1|     19|   220|
|0-6 months  |MAL-ED         |INDIA                        |Low      |            0|     52|   220|
|0-6 months  |MAL-ED         |INDIA                        |Low      |            1|     24|   220|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |            0|     52|   220|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |            1|     29|   220|
|0-6 months  |MAL-ED         |NEPAL                        |High     |            0|     46|   225|
|0-6 months  |MAL-ED         |NEPAL                        |High     |            1|      7|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |            0|     76|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |            1|     20|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |            0|     63|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |            1|     13|   225|
|0-6 months  |MAL-ED         |PERU                         |High     |            0|     50|   302|
|0-6 months  |MAL-ED         |PERU                         |High     |            1|     41|   302|
|0-6 months  |MAL-ED         |PERU                         |Low      |            0|     60|   302|
|0-6 months  |MAL-ED         |PERU                         |Low      |            1|     44|   302|
|0-6 months  |MAL-ED         |PERU                         |Medium   |            0|     64|   302|
|0-6 months  |MAL-ED         |PERU                         |Medium   |            1|     43|   302|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |            0|     59|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |            1|     36|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     99|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |            1|     51|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     40|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|     29|   314|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|     10|   217|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|      1|   217|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     38|   217|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     26|   217|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|     82|   217|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|     60|   217|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High     |            0|    126|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High     |            1|     53|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low      |            0|    146|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low      |            1|     84|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium   |            0|    137|   629|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium   |            1|     83|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |            0|    195|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |            1|     59|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |            0|    166|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |            1|     76|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |            0|    168|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |            1|     94|   758|
|0-6 months  |PROBIT         |BELARUS                      |High     |            0|   2698| 16892|
|0-6 months  |PROBIT         |BELARUS                      |High     |            1|    142| 16892|
|0-6 months  |PROBIT         |BELARUS                      |Low      |            0|   5576| 16892|
|0-6 months  |PROBIT         |BELARUS                      |Low      |            1|    521| 16892|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |            0|   7459| 16892|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |            1|    496| 16892|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |            0|    184|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |            1|     51|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |            0|    162|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |            1|     52|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |            0|    186|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |            1|     65|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |            0|    228|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |            1|     95|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |            0|    350|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |            1|    345|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |            0|    301|  1530|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |            1|    211|  1530|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |            0|     26|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |            1|     14|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |            0|    201|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |            1|    130|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |            0|     27|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |            1|     18|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    503|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|    118|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     65|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     17|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|   1353|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    330|  2386|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |            0|   5759| 14037|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |            1|   1858| 14037|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   2147| 14037|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |            1|    807| 14037|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   2499| 14037|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|    967| 14037|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High     |            0|     17|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High     |            1|     64|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |            0|      5|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |            1|     48|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |            0|      6|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |            1|     45|   185|
|6-24 months |COHORTS        |GUATEMALA                    |High     |            0|     30|   887|
|6-24 months |COHORTS        |GUATEMALA                    |High     |            1|    160|   887|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |            0|     89|   887|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |            1|    312|   887|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |            0|     88|   887|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |            1|    208|   887|
|6-24 months |COHORTS        |INDIA                        |High     |            0|    607|  4497|
|6-24 months |COHORTS        |INDIA                        |High     |            1|     68|  4497|
|6-24 months |COHORTS        |INDIA                        |Low      |            0|    821|  4497|
|6-24 months |COHORTS        |INDIA                        |Low      |            1|    552|  4497|
|6-24 months |COHORTS        |INDIA                        |Medium   |            0|   1902|  4497|
|6-24 months |COHORTS        |INDIA                        |Medium   |            1|    547|  4497|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |            0|    394|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |            1|    459|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |            0|    136|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |            1|    461|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |            0|    223|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |            1|    448|  2121|
|6-24 months |EE             |PAKISTAN                     |High     |            0|      3|    93|
|6-24 months |EE             |PAKISTAN                     |High     |            1|      0|    93|
|6-24 months |EE             |PAKISTAN                     |Low      |            0|     29|    93|
|6-24 months |EE             |PAKISTAN                     |Low      |            1|     48|    93|
|6-24 months |EE             |PAKISTAN                     |Medium   |            0|      7|    93|
|6-24 months |EE             |PAKISTAN                     |Medium   |            1|      6|    93|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |            0|     33|   394|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |            1|     23|   394|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |            0|    105|   394|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |            1|    159|   394|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |            0|     34|   394|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |            1|     40|   394|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High     |            0|     54|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High     |            1|     20|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Low      |            0|     22|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Low      |            1|     27|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |            0|     37|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |            1|     25|   185|
|6-24 months |IRC            |INDIA                        |High     |            0|     53|   236|
|6-24 months |IRC            |INDIA                        |High     |            1|     29|   236|
|6-24 months |IRC            |INDIA                        |Low      |            0|     51|   236|
|6-24 months |IRC            |INDIA                        |Low      |            1|     33|   236|
|6-24 months |IRC            |INDIA                        |Medium   |            0|     43|   236|
|6-24 months |IRC            |INDIA                        |Medium   |            1|     27|   236|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |            0|   3432| 10484|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |            1|    719| 10484|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |            0|   2365| 10484|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |            1|    875| 10484|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            0|   2422| 10484|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            1|    671| 10484|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |            0|    943|  3639|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |            1|    430|  3639|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |            0|    630|  3639|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |            1|    477|  3639|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            0|    687|  3639|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            1|    472|  3639|
|6-24 months |LCNI-5         |MALAWI                       |High     |            0|    120|   708|
|6-24 months |LCNI-5         |MALAWI                       |High     |            1|    151|   708|
|6-24 months |LCNI-5         |MALAWI                       |Low      |            0|     82|   708|
|6-24 months |LCNI-5         |MALAWI                       |Low      |            1|    134|   708|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |            0|     82|   708|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |            1|    139|   708|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |            0|     31|   130|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |            1|     22|   130|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |            0|     21|   130|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |            1|     17|   130|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |            0|     23|   130|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |            1|     16|   130|
|6-24 months |MAL-ED         |BRAZIL                       |High     |            0|     51|   162|
|6-24 months |MAL-ED         |BRAZIL                       |High     |            1|      3|   162|
|6-24 months |MAL-ED         |BRAZIL                       |Low      |            0|     39|   162|
|6-24 months |MAL-ED         |BRAZIL                       |Low      |            1|      4|   162|
|6-24 months |MAL-ED         |BRAZIL                       |Medium   |            0|     61|   162|
|6-24 months |MAL-ED         |BRAZIL                       |Medium   |            1|      4|   162|
|6-24 months |MAL-ED         |INDIA                        |High     |            0|     25|   140|
|6-24 months |MAL-ED         |INDIA                        |High     |            1|     17|   140|
|6-24 months |MAL-ED         |INDIA                        |Low      |            0|     27|   140|
|6-24 months |MAL-ED         |INDIA                        |Low      |            1|     23|   140|
|6-24 months |MAL-ED         |INDIA                        |Medium   |            0|     29|   140|
|6-24 months |MAL-ED         |INDIA                        |Medium   |            1|     19|   140|
|6-24 months |MAL-ED         |NEPAL                        |High     |            0|     39|   182|
|6-24 months |MAL-ED         |NEPAL                        |High     |            1|      6|   182|
|6-24 months |MAL-ED         |NEPAL                        |Low      |            0|     55|   182|
|6-24 months |MAL-ED         |NEPAL                        |Low      |            1|     20|   182|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |            0|     52|   182|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |            1|     10|   182|
|6-24 months |MAL-ED         |PERU                         |High     |            0|     29|   149|
|6-24 months |MAL-ED         |PERU                         |High     |            1|     12|   149|
|6-24 months |MAL-ED         |PERU                         |Low      |            0|     28|   149|
|6-24 months |MAL-ED         |PERU                         |Low      |            1|     23|   149|
|6-24 months |MAL-ED         |PERU                         |Medium   |            0|     33|   149|
|6-24 months |MAL-ED         |PERU                         |Medium   |            1|     24|   149|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            0|     31|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            1|     12|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     47|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            1|     37|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     20|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|     11|   158|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|      2|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|      6|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|      9|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     27|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|     17|   121|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|     60|   121|
|6-24 months |NIH-Birth      |BANGLADESH                   |High     |            0|     61|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |High     |            1|     50|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low      |            0|     38|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low      |            1|     81|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium   |            0|     48|   345|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium   |            1|     67|   345|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |            0|    150|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |            1|     38|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            0|    109|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            1|     49|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            0|    114|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            1|     46|   506|
|6-24 months |PROBIT         |BELARUS                      |High     |            0|   2520| 15467|
|6-24 months |PROBIT         |BELARUS                      |High     |            1|    120| 15467|
|6-24 months |PROBIT         |BELARUS                      |Low      |            0|   5021| 15467|
|6-24 months |PROBIT         |BELARUS                      |Low      |            1|    444| 15467|
|6-24 months |PROBIT         |BELARUS                      |Medium   |            0|   6932| 15467|
|6-24 months |PROBIT         |BELARUS                      |Medium   |            1|    430| 15467|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |            0|    126|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |            1|     37|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |            0|     86|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |            1|     50|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |            0|    107|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |            1|     50|   456|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |            0|    130|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |            1|     83|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |            0|    124|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |            1|    193|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |            0|    150|   813|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |            1|    133|   813|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |            0|      7|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |            1|     20|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            0|     44|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            1|    148|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            0|      8|   243|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            1|     16|   243|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    328|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|     77|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     40|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     15|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|    867|  1597|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    270|  1597|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            0|   3634|  8483|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            1|   1067|  8483|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   1193|  8483|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            1|    542|  8483|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   1423|  8483|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|    624|  8483|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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
![](/tmp/e3489489-91ac-4bb6-86fc-2bf864cd2f40/6287613b-cc64-4372-ad63-148b3ee3fb42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3489489-91ac-4bb6-86fc-2bf864cd2f40/6287613b-cc64-4372-ad63-148b3ee3fb42/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3489489-91ac-4bb6-86fc-2bf864cd2f40/6287613b-cc64-4372-ad63-148b3ee3fb42/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3489489-91ac-4bb6-86fc-2bf864cd2f40/6287613b-cc64-4372-ad63-148b3ee3fb42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.8924051| 0.8440236| 0.9407866|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.9528302| 0.9124175| 0.9932429|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.9449541| 0.9020810| 0.9878273|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.7887911| 0.7354308| 0.8421514|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.7771523| 0.7431980| 0.8111067|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.7435514| 0.7007371| 0.7863658|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.2450144| 0.2155363| 0.2744925|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.4802193| 0.4574744| 0.5029641|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.3546179| 0.3381186| 0.3711172|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.6557478| 0.6267474| 0.6847482|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.7578374| 0.7242413| 0.7914336|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.7032219| 0.6719837| 0.7344601|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.4934298| 0.3952072| 0.5916524|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.6510312| 0.6075431| 0.6945193|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.6332769| 0.5380922| 0.7284616|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | 0.4946683| 0.4048609| 0.5844757|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low                |NA             | 0.6461703| 0.5414913| 0.7508494|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |NA             | 0.5332561| 0.4292640| 0.6372482|
|0-24 months |IRC            |INDIA                        |High               |NA             | 0.5611130| 0.4782072| 0.6440188|
|0-24 months |IRC            |INDIA                        |Low                |NA             | 0.6398716| 0.5638310| 0.7159122|
|0-24 months |IRC            |INDIA                        |Medium             |NA             | 0.6790705| 0.6071469| 0.7509941|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.4888206| 0.4746236| 0.5030176|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.5187145| 0.5060162| 0.5314129|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.5016304| 0.4898068| 0.5134540|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.5482659| 0.5185320| 0.5779999|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.6173404| 0.5823841| 0.6522968|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.6016470| 0.5744016| 0.6288924|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.6070507| 0.5501005| 0.6640008|
|0-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.6442389| 0.5869537| 0.7015241|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.6580532| 0.5985510| 0.7175553|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.5932414| 0.4885760| 0.6979067|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.5902408| 0.4902104| 0.6902712|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.6120770| 0.4915170| 0.7326371|
|0-24 months |MAL-ED         |BRAZIL                       |High               |NA             | 0.2880696| 0.1874547| 0.3886845|
|0-24 months |MAL-ED         |BRAZIL                       |Low                |NA             | 0.2803451| 0.1659318| 0.3947584|
|0-24 months |MAL-ED         |BRAZIL                       |Medium             |NA             | 0.2475098| 0.1558083| 0.3392113|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.5913384| 0.4696573| 0.7130195|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.5997233| 0.4972377| 0.7022089|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.5696385| 0.4648849| 0.6743921|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.2572113| 0.1383148| 0.3761079|
|0-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.4119569| 0.3136700| 0.5102437|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.3117553| 0.2082111| 0.4152995|
|0-24 months |MAL-ED         |PERU                         |High               |NA             | 0.5815965| 0.4805885| 0.6826046|
|0-24 months |MAL-ED         |PERU                         |Low                |NA             | 0.6405650| 0.5487510| 0.7323790|
|0-24 months |MAL-ED         |PERU                         |Medium             |NA             | 0.6255572| 0.5373789| 0.7137355|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.5246042| 0.4259910| 0.6232174|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.5778942| 0.4998888| 0.6558995|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.5823062| 0.4691355| 0.6954768|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.6248327| 0.5540298| 0.6956356|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.6949163| 0.6379835| 0.7518492|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.6795659| 0.6205704| 0.7385614|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.4924979| 0.4333420| 0.5516537|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.4589031| 0.3993905| 0.5184156|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.4903161| 0.4328305| 0.5478017|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0954040| 0.0777878| 0.1130203|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.1399040| 0.1215719| 0.1582360|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.1194739| 0.1031370| 0.1358108|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.4447045| 0.3827320| 0.5066771|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.4127172| 0.3470893| 0.4783452|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.4411138| 0.3752320| 0.5069957|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.6238681| 0.5709129| 0.6768233|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.7356453| 0.6837172| 0.7875733|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.6875634| 0.6616505| 0.7134764|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.8292683| 0.7139546| 0.9445820|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.8373494| 0.7976046| 0.8770942|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.7555556| 0.6298411| 0.8812700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.3369102| 0.3003346| 0.3734858|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.3613977| 0.2576803| 0.4651151|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.3498507| 0.3271285| 0.3725729|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.4028319| 0.3909242| 0.4147396|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.4419291| 0.4226158| 0.4612424|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.4455534| 0.4288803| 0.4622265|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.4906618| 0.4144842| 0.5668394|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.5017412| 0.4061777| 0.5973046|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.5394581| 0.4423286| 0.6365877|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             | 0.2972988| 0.2375344| 0.3570632|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |NA             | 0.3518996| 0.3123428| 0.3914564|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.3125097| 0.2645351| 0.3604843|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             | 0.1606038| 0.1392759| 0.1819317|
|0-6 months  |COHORTS        |INDIA                        |Low                |NA             | 0.2070412| 0.1915674| 0.2225150|
|0-6 months  |COHORTS        |INDIA                        |Medium             |NA             | 0.1825960| 0.1701438| 0.1950482|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2363821| 0.2090386| 0.2637257|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.2426186| 0.2128627| 0.2723745|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.2501481| 0.2223739| 0.2779222|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | 0.2844856| 0.2161685| 0.3528027|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.3412047| 0.3016081| 0.3808013|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.2586904| 0.1957483| 0.3216325|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High               |NA             | 0.3343316| 0.2464409| 0.4222223|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Low                |NA             | 0.2822551| 0.1806707| 0.3838395|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Medium             |NA             | 0.3088613| 0.2020808| 0.4156418|
|0-6 months  |IRC            |INDIA                        |High               |NA             | 0.3399939| 0.2640701| 0.4159176|
|0-6 months  |IRC            |INDIA                        |Low                |NA             | 0.4289645| 0.3531463| 0.5047826|
|0-6 months  |IRC            |INDIA                        |Medium             |NA             | 0.5015441| 0.4242559| 0.5788323|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.4042366| 0.3914994| 0.4169739|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.4347599| 0.4229725| 0.4465473|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.4221003| 0.4110022| 0.4331985|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.3182262| 0.2911225| 0.3453299|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.3663226| 0.3405185| 0.3921268|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.3499188| 0.3238433| 0.3759943|
|0-6 months  |LCNI-5         |MALAWI                       |High               |NA             | 0.2637979| 0.1690427| 0.3585531|
|0-6 months  |LCNI-5         |MALAWI                       |Low                |NA             | 0.4652784| 0.3601394| 0.5704173|
|0-6 months  |LCNI-5         |MALAWI                       |Medium             |NA             | 0.3312368| 0.2313936| 0.4310800|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             | 0.2656740| 0.1680676| 0.3632804|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.3868715| 0.2741513| 0.4995918|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.3838436| 0.2642904| 0.5033968|
|0-6 months  |MAL-ED         |BRAZIL                       |High               |NA             | 0.2472980| 0.1510567| 0.3435393|
|0-6 months  |MAL-ED         |BRAZIL                       |Low                |NA             | 0.2236447| 0.1190737| 0.3282157|
|0-6 months  |MAL-ED         |BRAZIL                       |Medium             |NA             | 0.2060614| 0.1201717| 0.2919512|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | 0.3190250| 0.2031878| 0.4348622|
|0-6 months  |MAL-ED         |INDIA                        |Low                |NA             | 0.3198858| 0.2146451| 0.4251264|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |NA             | 0.3698549| 0.2634882| 0.4762215|
|0-6 months  |MAL-ED         |NEPAL                        |High               |NA             | 0.1320755| 0.0407211| 0.2234299|
|0-6 months  |MAL-ED         |NEPAL                        |Low                |NA             | 0.2083333| 0.1269135| 0.2897532|
|0-6 months  |MAL-ED         |NEPAL                        |Medium             |NA             | 0.1710526| 0.0862056| 0.2558997|
|0-6 months  |MAL-ED         |PERU                         |High               |NA             | 0.4393227| 0.3382881| 0.5403573|
|0-6 months  |MAL-ED         |PERU                         |Low                |NA             | 0.4236233| 0.3347051| 0.5125414|
|0-6 months  |MAL-ED         |PERU                         |Medium             |NA             | 0.4081580| 0.3198545| 0.4964615|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.3975415| 0.3015666| 0.4935165|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.3393811| 0.2655358| 0.4132263|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.4203297| 0.3041028| 0.5365567|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.3314155| 0.2702695| 0.3925616|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.3251072| 0.2744531| 0.3757613|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.3745802| 0.3148471| 0.4343133|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.2859203| 0.2399629| 0.3318777|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.2941676| 0.2443392| 0.3439961|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.3194578| 0.2715186| 0.3673970|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             | 0.0508323| 0.0360189| 0.0656456|
|0-6 months  |PROBIT         |BELARUS                      |Low                |NA             | 0.0713818| 0.0567782| 0.0859853|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |NA             | 0.0684626| 0.0557944| 0.0811308|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             | 0.2500459| 0.2027395| 0.2973523|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.2341155| 0.1831333| 0.2850976|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.2362612| 0.1870345| 0.2854878|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             | 0.3403043| 0.2589190| 0.4216895|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.4486178| 0.4143277| 0.4829080|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.4362621| 0.3993982| 0.4731260|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.2738496| 0.1196780| 0.4280213|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.3897277| 0.3374026| 0.4420529|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.3617709| 0.2257622| 0.4977796|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.2014852| 0.1703643| 0.2326060|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.2035177| 0.1125678| 0.2944677|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1934041| 0.1744972| 0.2123110|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.2562970| 0.2458864| 0.2667075|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.2602639| 0.2449931| 0.2755347|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.2670275| 0.2534511| 0.2806039|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.7901235| 0.7012009| 0.8790460|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.9056604| 0.8267531| 0.9845676|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.8823529| 0.7936881| 0.9710178|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.8415161| 0.7896925| 0.8933396|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.7682344| 0.7268862| 0.8095825|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.7181792| 0.6676127| 0.7687457|
|6-24 months |COHORTS        |INDIA                        |High               |NA             | 0.1070511| 0.0811630| 0.1329391|
|6-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.3723851| 0.3449909| 0.3997792|
|6-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.2255835| 0.2084231| 0.2427439|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.6114250| 0.5774919| 0.6453580|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.7215528| 0.6803930| 0.7627127|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.6615056| 0.6198804| 0.7031307|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.4699126| 0.3451331| 0.5946922|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.6049257| 0.5461142| 0.6637371|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.5347546| 0.4089145| 0.6605948|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | 0.2665700| 0.1631995| 0.3699405|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Low                |NA             | 0.5618771| 0.4268101| 0.6969440|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |NA             | 0.3837155| 0.2615396| 0.5058914|
|6-24 months |IRC            |INDIA                        |High               |NA             | 0.3571107| 0.2520172| 0.4622041|
|6-24 months |IRC            |INDIA                        |Low                |NA             | 0.3874484| 0.2822847| 0.4926122|
|6-24 months |IRC            |INDIA                        |Medium             |NA             | 0.3878879| 0.2727471| 0.5030288|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.2160654| 0.1947887| 0.2373421|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.2562496| 0.2342663| 0.2782328|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.2119371| 0.1928569| 0.2310172|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.3485886| 0.3065512| 0.3906260|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.4157343| 0.3741364| 0.4573321|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.4100237| 0.3754536| 0.4445939|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.5694014| 0.5104507| 0.6283522|
|6-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.5875473| 0.5228994| 0.6521952|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.6279800| 0.5607497| 0.6952103|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.4516633| 0.3139001| 0.5894265|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.4400570| 0.2727433| 0.6073707|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.3762791| 0.2259215| 0.5266367|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.4070037| 0.2579201| 0.5560872|
|6-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.4581243| 0.3203318| 0.5959168|
|6-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.4078931| 0.2645117| 0.5512746|
|6-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.1333333| 0.0337392| 0.2329274|
|6-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.2666667| 0.1663094| 0.3670240|
|6-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.1612903| 0.0694870| 0.2530937|
|6-24 months |MAL-ED         |PERU                         |High               |NA             | 0.3442328| 0.1986244| 0.4898411|
|6-24 months |MAL-ED         |PERU                         |Low                |NA             | 0.4755699| 0.3395145| 0.6116252|
|6-24 months |MAL-ED         |PERU                         |Medium             |NA             | 0.4364651| 0.3061457| 0.5667845|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.2588698| 0.1208628| 0.3968768|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.4316850| 0.3240475| 0.5393224|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.3401925| 0.1687510| 0.5116340|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.4864258| 0.3950926| 0.5777589|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.6767937| 0.5933847| 0.7602026|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.5591204| 0.4686827| 0.6495581|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.2104335| 0.1528633| 0.2680037|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.2873705| 0.2157634| 0.3589775|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.2807154| 0.2109725| 0.3504583|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0451642| 0.0311175| 0.0592109|
|6-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0789920| 0.0645455| 0.0934385|
|6-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0565101| 0.0441725| 0.0688477|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.2561019| 0.1890691| 0.3231348|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.3389562| 0.2590909| 0.4188215|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.3028485| 0.2309200| 0.3747770|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.4371470| 0.3742997| 0.4999943|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.5703974| 0.4922945| 0.6485003|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.4846707| 0.4227986| 0.5465428|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.7407407| 0.5751020| 0.9063795|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.7708333| 0.7112604| 0.8304063|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.6666667| 0.4776798| 0.8556536|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.1854742| 0.1477516| 0.2231967|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.2666186| 0.1572228| 0.3760145|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.2369491| 0.2122035| 0.2616947|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.2399544| 0.2262437| 0.2536651|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.3071041| 0.2817682| 0.3324400|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.2995379| 0.2776609| 0.3214149|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.9249330| 0.8981563| 0.9517096|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7658464| 0.7431730| 0.7885198|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3817498| 0.3693017| 0.3941980|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6863963| 0.6699497| 0.7028430|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.6388489| 0.6031124| 0.6745854|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.5531915| 0.4950624| 0.6113206|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6414634| 0.5949863| 0.6879405|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4953113| 0.4874769| 0.5031456|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.5822107| 0.5661650| 0.5982565|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6375921| 0.6045496| 0.6706347|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.5981308| 0.5322895| 0.6639722|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2715517| 0.2141972| 0.3289063|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.5954545| 0.5304515| 0.6604576|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3377778| 0.2758420| 0.3997135|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6192053| 0.5643489| 0.6740617|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.5605096| 0.5055248| 0.6154943|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.6645469| 0.6276196| 0.7014742|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1274191| 0.1115552| 0.1432829|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6914547| 0.6510509| 0.7318584|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.8277512| 0.7915095| 0.8639929|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3466052| 0.3275063| 0.3657041|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4173189| 0.4091660| 0.4254718|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5108696| 0.4597270| 0.5620121|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3218924| 0.2939898| 0.3497950|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.1884493| 0.1782621| 0.1986366|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2390451| 0.2239262| 0.2541640|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3194245| 0.2847356| 0.3541134|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3169811| 0.2608532| 0.3731091|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.4243902| 0.3764905| 0.4722900|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4130202| 0.4055695| 0.4204710|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3474858| 0.3322499| 0.3627218|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3558052| 0.2982716| 0.4133389|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3411215| 0.2774543| 0.4047887|
|0-6 months  |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2241379| 0.1703615| 0.2779144|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3272727| 0.2651285| 0.3894169|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1777778| 0.1277101| 0.2278455|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4238411| 0.3680149| 0.4796672|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3694268| 0.3159570| 0.4228965|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3497615| 0.3124631| 0.3870600|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0686124| 0.0577768| 0.0794479|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4254902| 0.3977202| 0.4532601|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3894231| 0.3425088| 0.4363374|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1948868| 0.1789895| 0.2107841|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2587447| 0.2514996| 0.2659899|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.8486486| 0.7968646| 0.9004327|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7666291| 0.7387777| 0.7944805|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.2595063| 0.2466928| 0.2723199|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6449788| 0.6246093| 0.6653483|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5634518| 0.5144179| 0.6124857|
|6-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3891892| 0.3187405| 0.4596379|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3771186| 0.3151523| 0.4390850|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2160435| 0.2066720| 0.2254150|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3789503| 0.3603576| 0.3975429|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.5988701| 0.5627418| 0.6349983|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.4230769| 0.3378215| 0.5083323|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4214286| 0.3393403| 0.5035169|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1978022| 0.1397705| 0.2558339|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.3959732| 0.3171819| 0.4747644|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3797468| 0.3038314| 0.4556622|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628458| 0.2244546| 0.3012371|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0642659| 0.0526827| 0.0758490|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.5030750| 0.4588491| 0.5473009|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.7572016| 0.7031798| 0.8112234|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2266750| 0.2061344| 0.2472157|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2632323| 0.2538603| 0.2726044|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.0677104| 0.9966880| 1.1437938|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.0588848| 0.9866120| 1.1364517|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9852448| 0.9096278| 1.0671478|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.9426468| 0.8633228| 1.0292592|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 1.9599637| 1.7266283| 2.2248320|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.4473350| 1.2773879| 1.6398924|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1556843| 1.0865436| 1.2292247|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.0723970| 1.0085734| 1.1402594|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.3193998| 1.0743784| 1.6203005|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.2834185| 1.0043888| 1.6399655|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low                |High           | 1.3062699| 1.0242799| 1.6658934|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |High           | 1.0780074| 0.8253469| 1.4080139|
|0-24 months |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |Low                |High           | 1.1403614| 0.9470736| 1.3730971|
|0-24 months |IRC            |INDIA                        |Medium             |High           | 1.2102205| 1.0147434| 1.4433537|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0611552| 1.0256186| 1.0979231|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0262055| 0.9940343| 1.0594180|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1259872| 1.0462070| 1.2118513|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0973635| 1.0256630| 1.1740762|
|0-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |Low                |High           | 1.0612605| 0.9341119| 1.2057162|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 1.0840169| 0.9527173| 1.2334116|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 0.9949421| 0.7902042| 1.2527266|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.0317504| 0.7985055| 1.3331267|
|0-24 months |MAL-ED         |BRAZIL                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BRAZIL                       |Low                |High           | 0.9731852| 0.5680347| 1.6673093|
|0-24 months |MAL-ED         |BRAZIL                       |Medium             |High           | 0.8592014| 0.5163552| 1.4296883|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.0141795| 0.7812859| 1.3164964|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 0.9633038| 0.7350898| 1.2623685|
|0-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |NEPAL                        |Low                |High           | 1.6016279| 0.9524629| 2.6932410|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 1.2120589| 0.6872240| 2.1377118|
|0-24 months |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |Low                |High           | 1.1013907| 0.8821953| 1.3750486|
|0-24 months |MAL-ED         |PERU                         |Medium             |High           | 1.0755862| 0.8648514| 1.3376699|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.1015813| 0.8771858| 1.3833802|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.1099914| 0.8509844| 1.4478303|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.1121638| 0.9707499| 1.2741782|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.0875966| 0.9469641| 1.2491142|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 0.9317869| 0.7882131| 1.1015128|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 0.9955700| 0.8514532| 1.1640799|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.4664369| 1.2420804| 1.7313188|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.2522940| 1.0409949| 1.5064822|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 0.9280707| 0.7586446| 1.1353342|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.9919256| 0.8144653| 1.2080520|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.1791680| 1.0636439| 1.3072393|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.1020975| 1.0315727| 1.1774438|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.0097449| 0.8717655| 1.1695630|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 0.9111111| 0.7334960| 1.1317356|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0726827| 0.7897147| 1.4570428|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.0384094| 0.9160737| 1.1770822|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.0970559| 1.0426106| 1.1543442|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.1060529| 1.0565427| 1.1578832|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.0225805| 0.8025808| 1.3028854|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.0994500| 0.8696665| 1.3899470|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |High           | 1.1836563| 0.9483307| 1.4773774|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |High           | 1.0511636| 0.8238183| 1.3412484|
|0-6 months  |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |Low                |High           | 1.2891425| 1.1193716| 1.4846621|
|0-6 months  |COHORTS        |INDIA                        |Medium             |High           | 1.1369344| 0.9922457| 1.3027215|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |High           | 1.0263831| 0.8729766| 1.2067475|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.0582359| 0.9083734| 1.2328226|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |High           | 1.1993743| 0.9399428| 1.5304108|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.9093270| 0.6610765| 1.2508015|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Low                |High           | 0.8442369| 0.5403756| 1.3189639|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Medium             |High           | 0.9238172| 0.5991192| 1.4244881|
|0-6 months  |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |Low                |High           | 1.2616830| 0.9622232| 1.6543397|
|0-6 months  |IRC            |INDIA                        |Medium             |High           | 1.4751563| 1.1391405| 1.9102878|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0755083| 1.0375493| 1.1148561|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0441912| 1.0085440| 1.0810983|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1511389| 1.0404330| 1.2736244|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0995913| 0.9866002| 1.2255228|
|0-6 months  |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |LCNI-5         |MALAWI                       |Low                |High           | 1.7637683| 1.1525196| 2.6991981|
|0-6 months  |LCNI-5         |MALAWI                       |Medium             |High           | 1.2556462| 0.7843270| 2.0101914|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |High           | 1.4561890| 0.9159602| 2.3150422|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.4447918| 0.8924997| 2.3388504|
|0-6 months  |MAL-ED         |BRAZIL                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BRAZIL                       |Low                |High           | 0.9043529| 0.4921285| 1.6618714|
|0-6 months  |MAL-ED         |BRAZIL                       |Medium             |High           | 0.8332514| 0.4715101| 1.4725198|
|0-6 months  |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA                        |Low                |High           | 1.0026982| 0.6143020| 1.6366604|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |High           | 1.1593289| 0.7286726| 1.8445094|
|0-6 months  |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |NEPAL                        |Low                |High           | 1.5773810| 0.7127023| 3.4911219|
|0-6 months  |MAL-ED         |NEPAL                        |Medium             |High           | 1.2951128| 0.5529097| 3.0336187|
|0-6 months  |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |PERU                         |Low                |High           | 0.9642645| 0.7118881| 1.3061124|
|0-6 months  |MAL-ED         |PERU                         |Medium             |High           | 0.9290620| 0.6834124| 1.2630093|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 0.8536996| 0.6210935| 1.1734192|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.0573228| 0.7356007| 1.5197530|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low                |High           | 0.9809655| 0.7873286| 1.2222257|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.1302433| 0.8991759| 1.4206897|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.0288450| 0.8336274| 1.2697783|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.1172968| 0.9197298| 1.3573032|
|0-6 months  |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT         |BELARUS                      |Low                |High           | 1.4042603| 1.0621567| 1.8565501|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |High           | 1.3468332| 0.9671979| 1.8754794|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |High           | 0.9362900| 0.7197174| 1.2180322|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.9448712| 0.7287926| 1.2250147|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |High           | 1.3182844| 1.0276801| 1.6910650|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.2819766| 1.0334086| 1.5903333|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.4231450| 0.7969692| 2.5413050|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.3210568| 0.6729175| 2.5934696|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0100880| 0.6296906| 1.6202842|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 0.9598924| 0.8003427| 1.1512487|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.0154779| 0.9498068| 1.0856896|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0418676| 0.9807650| 1.1067770|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.1462264| 0.9941655| 1.3215456|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.1167279| 0.9603354| 1.2985893|
|6-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9129171| 0.8415085| 0.9903852|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.8534350| 0.7776776| 0.9365722|
|6-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |Low                |High           | 3.4785746| 2.7030198| 4.4766528|
|6-24 months |COHORTS        |INDIA                        |Medium             |High           | 2.1072514| 1.6368375| 2.7128584|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1801167| 1.0908266| 1.2767157|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.0819081| 0.9958585| 1.1753930|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.2873152| 0.9729256| 1.7032962|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.1379874| 0.8010386| 1.6166702|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Low                |High           | 2.1078031| 1.3375982| 3.3215012|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |High           | 1.4394550| 0.8747707| 2.3686556|
|6-24 months |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA                        |Low                |High           | 1.0849535| 0.7270838| 1.6189660|
|6-24 months |IRC            |INDIA                        |Medium             |High           | 1.0861841| 0.7145576| 1.6510859|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.1859815| 1.0458200| 1.3449274|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9808930| 0.8675731| 1.1090145|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1926216| 1.0223893| 1.3911984|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.1762398| 1.0155360| 1.3623743|
|6-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |Low                |High           | 1.0318683| 0.8889566| 1.1977550|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 1.1028775| 0.9512240| 1.2787090|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 0.9743032| 0.5985057| 1.5860615|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 0.8330966| 0.5071746| 1.3684634|
|6-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.1256024| 0.6991169| 1.8122587|
|6-24 months |MAL-ED         |INDIA                        |Medium             |High           | 1.0021853| 0.6033299| 1.6647202|
|6-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |NEPAL                        |Low                |High           | 2.0000000| 0.8665299| 4.6161130|
|6-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 1.2096774| 0.4729589| 3.0939677|
|6-24 months |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |PERU                         |Low                |High           | 1.3815357| 0.8267301| 2.3086627|
|6-24 months |MAL-ED         |PERU                         |Medium             |High           | 1.2679360| 0.7545829| 2.1305301|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.6675757| 0.9235753| 3.0109172|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.3141454| 0.6312251| 2.7359149|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.3913606| 1.1147645| 1.7365860|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.1494465| 0.9013475| 1.4658356|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.3656117| 0.9436191| 1.9763222|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.3339863| 0.9237951| 1.9263139|
|6-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.7489962| 1.2822823| 2.3855807|
|6-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.2512155| 0.9347285| 1.6748609|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.3235207| 0.9354180| 1.8726462|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.1825311| 0.8337195| 1.6772785|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.3048182| 1.0907274| 1.5609312|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.1087132| 0.8856382| 1.3879764|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.0406250| 0.8213800| 1.3183914|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 0.9000000| 0.6272441| 1.2913632|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.4374972| 0.9093328| 2.2724333|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.2775314| 1.0162596| 1.6059739|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.2798436| 1.1582214| 1.4142370|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.2483118| 1.1382796| 1.3689802|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0325279| -0.0002546|  0.0653104|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0229447| -0.0713634|  0.0254740|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.1367355|  0.1082942|  0.1651767|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0306486|  0.0070435|  0.0542536|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.1454191|  0.0520668|  0.2387715|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             |  0.0585232| -0.0097713|  0.1268177|
|0-24 months |IRC            |INDIA                        |High               |NA             |  0.0803504|  0.0136342|  0.1470665|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0064907| -0.0049785|  0.0179599|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0339448|  0.0093057|  0.0585839|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0305415| -0.0142308|  0.0753138|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0048895| -0.0730437|  0.0828227|
|0-24 months |MAL-ED         |BRAZIL                       |High               |NA             | -0.0165179| -0.0980680|  0.0650321|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0041161| -0.0957108|  0.1039431|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.0805664| -0.0259688|  0.1871017|
|0-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0376088| -0.0453044|  0.1205220|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0359054| -0.0451499|  0.1169606|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0397142| -0.0184764|  0.0979048|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | -0.0149253| -0.0630472|  0.0331965|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0320150|  0.0163189|  0.0477112|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | -0.0089902| -0.0602107|  0.0422303|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0675866|  0.0214808|  0.1136924|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | -0.0015171| -0.1110714|  0.1080373|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0096950| -0.0219011|  0.0412911|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0144870|  0.0056417|  0.0233323|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0202078| -0.0371857|  0.0776013|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             |  0.0245936| -0.0288280|  0.0780152|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             |  0.0278455|  0.0080810|  0.0476100|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0026630| -0.0205622|  0.0258882|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0349388| -0.0263751|  0.0962528|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High               |NA             | -0.0173505| -0.0838781|  0.0491772|
|0-6 months  |IRC            |INDIA                        |High               |NA             |  0.0843964|  0.0225866|  0.1462061|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0087836| -0.0016164|  0.0191836|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0292596|  0.0057795|  0.0527397|
|0-6 months  |LCNI-5         |MALAWI                       |High               |NA             |  0.0920073|  0.0101237|  0.1738910|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0754475| -0.0055484|  0.1564435|
|0-6 months  |MAL-ED         |BRAZIL                       |High               |NA             | -0.0231601| -0.1005455|  0.0542253|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             |  0.0082478| -0.0908319|  0.1073274|
|0-6 months  |MAL-ED         |NEPAL                        |High               |NA             |  0.0457023| -0.0374883|  0.1288929|
|0-6 months  |MAL-ED         |PERU                         |High               |NA             | -0.0154816| -0.0969412|  0.0659780|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0281148| -0.1066564|  0.0504269|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0183460| -0.0313763|  0.0680683|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0161905| -0.0181071|  0.0504882|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.0177801|  0.0023571|  0.0332030|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             | -0.0100459| -0.0462073|  0.0261155|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0851859|  0.0213083|  0.1490635|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.1155734| -0.0319822|  0.2631291|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0065983| -0.0334094|  0.0202128|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0024478| -0.0051001|  0.0099956|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0585252| -0.0020112|  0.1190616|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0748870| -0.1226602| -0.0271137|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.1524553|  0.1263258|  0.1785848|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0335538|  0.0065580|  0.0605497|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0935392| -0.0229372|  0.2100155|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             |  0.1226192|  0.0388219|  0.2064165|
|6-24 months |IRC            |INDIA                        |High               |NA             |  0.0200080| -0.0654829|  0.1054988|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0000219| -0.0188451|  0.0188013|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0303617| -0.0061218|  0.0668451|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0294686| -0.0165248|  0.0754620|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | -0.0285864| -0.1365820|  0.0794093|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0144249| -0.1111107|  0.1399605|
|6-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.0644689| -0.0270826|  0.1560203|
|6-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0517404| -0.0775753|  0.1810561|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.1208770| -0.0012922|  0.2430463|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0874873|  0.0130957|  0.1618788|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0524124|  0.0044100|  0.1004147|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0191017|  0.0081500|  0.0300533|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0443367| -0.0114956|  0.1001689|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0659280|  0.0116985|  0.1201575|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0164609| -0.1392877|  0.1722095|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0412008|  0.0077130|  0.0746886|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0232779|  0.0125904|  0.0339655|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0351679| -0.0012783|  0.0702874|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0299600| -0.0951746|  0.0313713|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.3581808|  0.2799148|  0.4279401|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0446514|  0.0095989|  0.0784633|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.2276268|  0.0668866|  0.3606775|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             |  0.1057919| -0.0272011|  0.2215661|
|0-24 months |IRC            |INDIA                        |High               |NA             |  0.1252611|  0.0139440|  0.2240114|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0131043| -0.0103362|  0.0360010|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0583033|  0.0149447|  0.0997534|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0479013| -0.0251538|  0.1157503|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0081746| -0.1311238|  0.1303183|
|0-24 months |MAL-ED         |BRAZIL                       |High               |NA             | -0.0608278| -0.4079893|  0.2007356|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0069126| -0.1757620|  0.1612056|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.2385190| -0.1515602|  0.4964629|
|0-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0607372| -0.0835221|  0.1857899|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0640584| -0.0925886|  0.1982466|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0597613| -0.0323019|  0.1436142|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | -0.0312525| -0.1371945|  0.0648199|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.2512578|  0.1268378|  0.3579487|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | -0.0206334| -0.1453101|  0.0904713|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0977455|  0.0298629|  0.1608783|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | -0.0018328| -0.1433253|  0.1221493|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0279713| -0.0675776|  0.1149686|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0347145|  0.0132874|  0.0556763|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0395556| -0.0796212|  0.1455768|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             |  0.0764031| -0.1054002|  0.2283056|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             |  0.1477613|  0.0366990|  0.2460188|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0111401| -0.0909315|  0.1036616|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             |  0.1093806| -0.1042574|  0.2816866|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High               |NA             | -0.0547366| -0.2869919|  0.1356051|
|0-6 months  |IRC            |INDIA                        |High               |NA             |  0.1988650|  0.0386618|  0.3323710|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0212667| -0.0042397|  0.0461254|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0842037|  0.0142398|  0.1492018|
|0-6 months  |LCNI-5         |MALAWI                       |High               |NA             |  0.2585891| -0.0101717|  0.4558448|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.2211749| -0.0554016|  0.4252723|
|0-6 months  |MAL-ED         |BRAZIL                       |High               |NA             | -0.1033296| -0.5083728|  0.1929473|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             |  0.0252015| -0.3297363|  0.2853980|
|0-6 months  |MAL-ED         |NEPAL                        |High               |NA             |  0.2570755| -0.3875966|  0.6022354|
|0-6 months  |MAL-ED         |PERU                         |High               |NA             | -0.0365270| -0.2474756|  0.1387502|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | -0.0761038| -0.3112187|  0.1168526|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0524528| -0.1008354|  0.1843961|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0535914| -0.0668009|  0.1603970|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.2591381|  0.0143809|  0.4431151|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             | -0.0418579| -0.2042878|  0.0986640|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             |  0.2002065|  0.0266616|  0.3428086|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.2967812| -0.2072890|  0.5903908|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0338572| -0.1810459|  0.0949880|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0094602| -0.0201432|  0.0382045|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0689628| -0.0064293|  0.1387073|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0976834| -0.1624318| -0.0365416|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.5874819|  0.4779403|  0.6740389|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0520231|  0.0091842|  0.0930099|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.1660109| -0.0685793|  0.3491005|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             |  0.3150632|  0.0603216|  0.5007457|
|6-24 months |IRC            |INDIA                        |High               |NA             |  0.0530549| -0.2031806|  0.2547212|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0001015| -0.0911360|  0.0833379|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0801205| -0.0217524|  0.1718363|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0492071| -0.0308952|  0.1230852|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | -0.0675677| -0.3563494|  0.1597291|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0342285| -0.3146844|  0.2905411|
|6-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.3259259| -0.3262663|  0.6574022|
|6-24 months |MAL-ED         |PERU                         |High               |NA             |  0.1306664| -0.2640058|  0.4021065|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.3183096| -0.0938662|  0.5751749|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.1524400|  0.0113583|  0.2733889|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.1994034| -0.0040389|  0.3616234|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.2972290|  0.1089696|  0.4457124|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.1475731| -0.0593283|  0.3140638|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.1310500|  0.0181732|  0.2309498|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0217391| -0.2072103|  0.2072679|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.1817616|  0.0204768|  0.3164899|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0884311|  0.0470159|  0.1280466|
