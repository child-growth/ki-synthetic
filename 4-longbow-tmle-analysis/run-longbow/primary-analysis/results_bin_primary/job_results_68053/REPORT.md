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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |meducyrs | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |           0|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |           1|     89|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |           0|     38|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |           1|     68|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |           0|     38|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |           1|     71|   373|
|0-24 months |COHORTS        |GUATEMALA                    |High     |           0|    218|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |High     |           1|     62|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |           0|    465|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |           1|    162|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |           0|    300|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |           1|    115|  1322|
|0-24 months |COHORTS        |INDIA                        |High     |           0|    596|  5844|
|0-24 months |COHORTS        |INDIA                        |High     |           1|    197|  5844|
|0-24 months |COHORTS        |INDIA                        |Low      |           0|   1175|  5844|
|0-24 months |COHORTS        |INDIA                        |Low      |           1|    776|  5844|
|0-24 months |COHORTS        |INDIA                        |Medium   |           0|   2127|  5844|
|0-24 months |COHORTS        |INDIA                        |Medium   |           1|    973|  5844|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |           0|    727|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |           1|    441|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |           0|    496|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |           1|    405|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |           0|    593|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |           1|    383|  3045|
|0-24 months |EE             |PAKISTAN                     |High     |           0|      7|   377|
|0-24 months |EE             |PAKISTAN                     |High     |           1|      8|   377|
|0-24 months |EE             |PAKISTAN                     |Low      |           0|    129|   377|
|0-24 months |EE             |PAKISTAN                     |Low      |           1|    200|   377|
|0-24 months |EE             |PAKISTAN                     |Medium   |           0|     18|   377|
|0-24 months |EE             |PAKISTAN                     |Medium   |           1|     15|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |           0|     39|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |           1|     45|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |           0|    194|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |           1|    286|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |           0|     47|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |           1|     72|   683|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |           0|    105|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |           1|     13|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |           0|     65|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |           1|     11|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |           0|     82|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |           1|      6|   282|
|0-24 months |IRC            |INDIA                        |High     |           0|     41|   410|
|0-24 months |IRC            |INDIA                        |High     |           1|     83|   410|
|0-24 months |IRC            |INDIA                        |Low      |           0|     50|   410|
|0-24 months |IRC            |INDIA                        |Low      |           1|     97|   410|
|0-24 months |IRC            |INDIA                        |Medium   |           0|     50|   410|
|0-24 months |IRC            |INDIA                        |Medium   |           1|     89|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |           0|   6819| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |           1|   2165| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |           0|   7049| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |           1|   2685| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           0|   6107| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           1|   2097| 26922|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |           0|   1387|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |           1|    514|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |           0|   1160|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |           1|    626|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           0|   1190|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           1|    543|  5420|
|0-24 months |LCNI-5         |MALAWI                       |High     |           0|    287|   814|
|0-24 months |LCNI-5         |MALAWI                       |High     |           1|     11|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |           0|    235|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |           1|     26|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |           0|    227|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |           1|     28|   814|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |           0|     59|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |           1|     19|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |           0|     46|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |           1|     24|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |           0|     44|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |           1|     21|   213|
|0-24 months |MAL-ED         |BRAZIL                       |High     |           0|     76|   232|
|0-24 months |MAL-ED         |BRAZIL                       |High     |           1|      3|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |           0|     55|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |           1|      8|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |           0|     81|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |           1|      9|   232|
|0-24 months |MAL-ED         |INDIA                        |High     |           0|     38|   220|
|0-24 months |MAL-ED         |INDIA                        |High     |           1|     25|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |           0|     34|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |           1|     42|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |           0|     44|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |           1|     37|   220|
|0-24 months |MAL-ED         |NEPAL                        |High     |           0|     39|   225|
|0-24 months |MAL-ED         |NEPAL                        |High     |           1|     14|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |           0|     66|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |           1|     30|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |           0|     50|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |           1|     26|   225|
|0-24 months |MAL-ED         |PERU                         |High     |           0|     87|   301|
|0-24 months |MAL-ED         |PERU                         |High     |           1|      3|   301|
|0-24 months |MAL-ED         |PERU                         |Low      |           0|     92|   301|
|0-24 months |MAL-ED         |PERU                         |Low      |           1|     12|   301|
|0-24 months |MAL-ED         |PERU                         |Medium   |           0|     95|   301|
|0-24 months |MAL-ED         |PERU                         |Medium   |           1|     12|   301|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           0|     79|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           1|     16|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           0|    116|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           1|     32|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           0|     53|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           1|     16|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           0|      7|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           1|      4|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     54|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           1|     10|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|    124|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|     17|   216|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |           0|    106|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |           1|     72|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |           0|    106|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |           1|    122|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |           0|    114|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |           1|    104|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |           0|    167|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |           1|     87|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           0|    164|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           1|     78|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           0|    177|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           1|     85|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |           0|   2156| 16898|
|0-24 months |PROBIT         |BELARUS                      |High     |           1|    685| 16898|
|0-24 months |PROBIT         |BELARUS                      |Low      |           0|   4539| 16898|
|0-24 months |PROBIT         |BELARUS                      |Low      |           1|   1561| 16898|
|0-24 months |PROBIT         |BELARUS                      |Medium   |           0|   5887| 16898|
|0-24 months |PROBIT         |BELARUS                      |Medium   |           1|   2070| 16898|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |           0|    166|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |           1|     69|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |           0|    131|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |           1|     83|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |           0|    157|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |           1|     94|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |           0|    209|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |           1|    113|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |           0|    360|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |           1|    322|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |           0|    316|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |           1|    193|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |           0|     27|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |           1|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           0|    172|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           1|    160|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           0|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           1|     23|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           0|    474|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           1|    147|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     63|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           1|     19|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|   1284|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|    399|  2386|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           0|   5828| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           1|   1727| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           0|   2223| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           1|    703| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           0|   2580| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           1|    865| 13926|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High     |           0|     78|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High     |           1|     79|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low      |           0|     51|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low      |           1|     53|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium   |           0|     49|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium   |           1|     58|   368|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |           0|    179|  1051|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |           1|     36|  1051|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |           0|    405|  1051|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |           1|    100|  1051|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |           0|    256|  1051|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |           1|     75|  1051|
|0-6 months  |COHORTS        |INDIA                        |High     |           0|    582|  5626|
|0-6 months  |COHORTS        |INDIA                        |High     |           1|    168|  5626|
|0-6 months  |COHORTS        |INDIA                        |Low      |           0|   1385|  5626|
|0-6 months  |COHORTS        |INDIA                        |Low      |           1|    508|  5626|
|0-6 months  |COHORTS        |INDIA                        |Medium   |           0|   2246|  5626|
|0-6 months  |COHORTS        |INDIA                        |Medium   |           1|    737|  5626|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |           0|    857|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |           1|    311|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |           0|    700|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |           1|    200|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |           0|    770|  3044|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |           1|    206|  3044|
|0-6 months  |EE             |PAKISTAN                     |High     |           0|     12|   377|
|0-6 months  |EE             |PAKISTAN                     |High     |           1|      3|   377|
|0-6 months  |EE             |PAKISTAN                     |Low      |           0|    216|   377|
|0-6 months  |EE             |PAKISTAN                     |Low      |           1|    113|   377|
|0-6 months  |EE             |PAKISTAN                     |Medium   |           0|     25|   377|
|0-6 months  |EE             |PAKISTAN                     |Medium   |           1|      8|   377|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |           0|     48|   683|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |           1|     36|   683|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |           0|    308|   683|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |           1|    172|   683|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |           0|     70|   683|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |           1|     49|   683|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High     |           0|    107|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |High     |           1|      5|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Low      |           0|     73|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Low      |           1|      1|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Medium   |           0|     76|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |Medium   |           1|      3|   265|
|0-6 months  |IRC            |INDIA                        |High     |           0|     52|   410|
|0-6 months  |IRC            |INDIA                        |High     |           1|     72|   410|
|0-6 months  |IRC            |INDIA                        |Low      |           0|     69|   410|
|0-6 months  |IRC            |INDIA                        |Low      |           1|     78|   410|
|0-6 months  |IRC            |INDIA                        |Medium   |           0|     66|   410|
|0-6 months  |IRC            |INDIA                        |Medium   |           1|     73|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |           0|   7459| 26825|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |           1|   1486| 26825|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |           0|   7835| 26825|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |           1|   1865| 26825|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |           0|   6804| 26825|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |           1|   1376| 26825|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |           0|   1591|  5077|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |           1|    191|  5077|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |           0|   1475|  5077|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |           1|    191|  5077|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |           0|   1463|  5077|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |           1|    166|  5077|
|0-6 months  |LCNI-5         |MALAWI                       |High     |           0|     87|   267|
|0-6 months  |LCNI-5         |MALAWI                       |High     |           1|      0|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |           0|     90|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |           1|      2|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |           0|     86|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |           1|      2|   267|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |           0|     64|   213|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |           1|     14|   213|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |           0|     53|   213|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |           1|     17|   213|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |           0|     48|   213|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |           1|     17|   213|
|0-6 months  |MAL-ED         |BRAZIL                       |High     |           0|     76|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |High     |           1|      3|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Low      |           0|     58|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Low      |           1|      5|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Medium   |           0|     83|   232|
|0-6 months  |MAL-ED         |BRAZIL                       |Medium   |           1|      7|   232|
|0-6 months  |MAL-ED         |INDIA                        |High     |           0|     45|   220|
|0-6 months  |MAL-ED         |INDIA                        |High     |           1|     18|   220|
|0-6 months  |MAL-ED         |INDIA                        |Low      |           0|     47|   220|
|0-6 months  |MAL-ED         |INDIA                        |Low      |           1|     29|   220|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |           0|     58|   220|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |           1|     23|   220|
|0-6 months  |MAL-ED         |NEPAL                        |High     |           0|     41|   225|
|0-6 months  |MAL-ED         |NEPAL                        |High     |           1|     12|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |           0|     80|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |           1|     16|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |           0|     59|   225|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |           1|     17|   225|
|0-6 months  |MAL-ED         |PERU                         |High     |           0|     88|   301|
|0-6 months  |MAL-ED         |PERU                         |High     |           1|      2|   301|
|0-6 months  |MAL-ED         |PERU                         |Low      |           0|    100|   301|
|0-6 months  |MAL-ED         |PERU                         |Low      |           1|      4|   301|
|0-6 months  |MAL-ED         |PERU                         |Medium   |           0|    102|   301|
|0-6 months  |MAL-ED         |PERU                         |Medium   |           1|      5|   301|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |           0|     85|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |           1|     10|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |           0|    133|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |           1|     15|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |           0|     59|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |           1|     10|   312|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           0|     11|   216|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           1|      0|   216|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     61|   216|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           1|      3|   216|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|    132|   216|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|      9|   216|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High     |           0|    120|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High     |           1|     57|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low      |           0|    141|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low      |           1|     87|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium   |           0|    139|   622|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium   |           1|     78|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |           0|    184|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |           1|     70|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |           0|    184|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |           1|     58|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |           0|    195|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |           1|     67|   758|
|0-6 months  |PROBIT         |BELARUS                      |High     |           0|   2164| 16895|
|0-6 months  |PROBIT         |BELARUS                      |High     |           1|    677| 16895|
|0-6 months  |PROBIT         |BELARUS                      |Low      |           0|   4573| 16895|
|0-6 months  |PROBIT         |BELARUS                      |Low      |           1|   1525| 16895|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |           0|   5934| 16895|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |           1|   2022| 16895|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |           0|    184|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |           1|     51|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |           0|    157|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |           1|     57|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |           0|    178|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |           1|     73|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |           0|    260|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |           1|     62|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |           0|    505|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |           1|    174|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |           0|    409|  1505|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |           1|     95|  1505|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |           0|     38|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |           1|      3|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |           0|    264|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |           1|     68|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |           0|     38|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |           1|      7|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           0|    530|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           1|     91|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     74|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           1|      8|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|   1449|  2386|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|    234|  2386|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |           0|   6132| 13833|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |           1|   1375| 13833|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |           0|   2399| 13833|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |           1|    508| 13833|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |           0|   2798| 13833|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |           1|    621| 13833|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High     |           0|    129|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High     |           1|     29|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |           0|     70|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |           1|     36|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |           0|     75|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |           1|     34|   373|
|6-24 months |COHORTS        |GUATEMALA                    |High     |           0|    213|  1198|
|6-24 months |COHORTS        |GUATEMALA                    |High     |           1|     29|  1198|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |           0|    495|  1198|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |           1|     74|  1198|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |           0|    337|  1198|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |           1|     50|  1198|
|6-24 months |COHORTS        |INDIA                        |High     |           0|    713|  5479|
|6-24 months |COHORTS        |INDIA                        |High     |           1|     37|  5479|
|6-24 months |COHORTS        |INDIA                        |Low      |           0|   1447|  5479|
|6-24 months |COHORTS        |INDIA                        |Low      |           1|    349|  5479|
|6-24 months |COHORTS        |INDIA                        |Medium   |           0|   2625|  5479|
|6-24 months |COHORTS        |INDIA                        |Medium   |           1|    308|  5479|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |           0|    852|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |           1|    202|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |           0|    551|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |           1|    296|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |           0|    657|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |           1|    251|  2809|
|6-24 months |EE             |PAKISTAN                     |High     |           0|     10|   371|
|6-24 months |EE             |PAKISTAN                     |High     |           1|      5|   371|
|6-24 months |EE             |PAKISTAN                     |Low      |           0|    180|   371|
|6-24 months |EE             |PAKISTAN                     |Low      |           1|    143|   371|
|6-24 months |EE             |PAKISTAN                     |Medium   |           0|     23|   371|
|6-24 months |EE             |PAKISTAN                     |Medium   |           1|     10|   371|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |           0|     45|   587|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |           1|     26|   587|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |           0|    201|   587|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |           1|    213|   587|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |           0|     63|   587|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |           1|     39|   587|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High     |           0|    101|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |High     |           1|     10|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Low      |           0|     61|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Low      |           1|     10|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |           0|     81|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |           1|      3|   266|
|6-24 months |IRC            |INDIA                        |High     |           0|     86|   410|
|6-24 months |IRC            |INDIA                        |High     |           1|     38|   410|
|6-24 months |IRC            |INDIA                        |Low      |           0|    103|   410|
|6-24 months |IRC            |INDIA                        |Low      |           1|     44|   410|
|6-24 months |IRC            |INDIA                        |Medium   |           0|     94|   410|
|6-24 months |IRC            |INDIA                        |Medium   |           1|     45|   410|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |           0|   5215| 17280|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |           1|    879| 17280|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |           0|   4739| 17280|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |           1|   1057| 17280|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           0|   4494| 17280|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           1|    896| 17280|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |           0|   1517|  5416|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |           1|    381|  5416|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |           0|   1273|  5416|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |           1|    513|  5416|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           0|   1285|  5416|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           1|    447|  5416|
|6-24 months |LCNI-5         |MALAWI                       |High     |           0|    282|   803|
|6-24 months |LCNI-5         |MALAWI                       |High     |           1|     11|   803|
|6-24 months |LCNI-5         |MALAWI                       |Low      |           0|    235|   803|
|6-24 months |LCNI-5         |MALAWI                       |Low      |           1|     24|   803|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |           0|    224|   803|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |           1|     27|   803|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |           0|     63|   195|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |           1|      8|   195|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |           0|     54|   195|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |           1|     11|   195|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |           0|     51|   195|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |           1|      8|   195|
|6-24 months |MAL-ED         |BRAZIL                       |High     |           0|     71|   206|
|6-24 months |MAL-ED         |BRAZIL                       |High     |           1|      0|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Low      |           0|     52|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Low      |           1|      3|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Medium   |           0|     77|   206|
|6-24 months |MAL-ED         |BRAZIL                       |Medium   |           1|      3|   206|
|6-24 months |MAL-ED         |INDIA                        |High     |           0|     48|   207|
|6-24 months |MAL-ED         |INDIA                        |High     |           1|     10|   207|
|6-24 months |MAL-ED         |INDIA                        |Low      |           0|     50|   207|
|6-24 months |MAL-ED         |INDIA                        |Low      |           1|     22|   207|
|6-24 months |MAL-ED         |INDIA                        |Medium   |           0|     54|   207|
|6-24 months |MAL-ED         |INDIA                        |Medium   |           1|     23|   207|
|6-24 months |MAL-ED         |NEPAL                        |High     |           0|     47|   220|
|6-24 months |MAL-ED         |NEPAL                        |High     |           1|      5|   220|
|6-24 months |MAL-ED         |NEPAL                        |Low      |           0|     77|   220|
|6-24 months |MAL-ED         |NEPAL                        |Low      |           1|     16|   220|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |           0|     62|   220|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |           1|     13|   220|
|6-24 months |MAL-ED         |PERU                         |High     |           0|     80|   269|
|6-24 months |MAL-ED         |PERU                         |High     |           1|      1|   269|
|6-24 months |MAL-ED         |PERU                         |Low      |           0|     83|   269|
|6-24 months |MAL-ED         |PERU                         |Low      |           1|     10|   269|
|6-24 months |MAL-ED         |PERU                         |Medium   |           0|     88|   269|
|6-24 months |MAL-ED         |PERU                         |Medium   |           1|      7|   269|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           0|     66|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           1|      8|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           0|    108|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           1|     21|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           0|     48|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           1|      8|   259|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           0|      5|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           1|      4|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     54|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           1|      8|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|    120|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|     11|   202|
|6-24 months |NIH-Birth      |BANGLADESH                   |High     |           0|    126|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |High     |           1|     31|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low      |           0|    117|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low      |           1|     80|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium   |           0|    140|   542|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium   |           1|     48|   542|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |           0|    222|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |           1|     24|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           0|    199|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           1|     35|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           0|    213|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           1|     37|   730|
|6-24 months |PROBIT         |BELARUS                      |High     |           0|   2765| 16598|
|6-24 months |PROBIT         |BELARUS                      |High     |           1|     10| 16598|
|6-24 months |PROBIT         |BELARUS                      |Low      |           0|   5919| 16598|
|6-24 months |PROBIT         |BELARUS                      |Low      |           1|     53| 16598|
|6-24 months |PROBIT         |BELARUS                      |Medium   |           0|   7775| 16598|
|6-24 months |PROBIT         |BELARUS                      |Medium   |           1|     76| 16598|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |           0|    181|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |           1|     30|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |           0|    145|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |           1|     40|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |           0|    190|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |           1|     29|   615|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |           0|    233|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |           1|     69|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |           0|    398|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |           1|    216|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |           0|    333|  1389|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |           1|    140|  1389|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |           0|     27|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |           1|     13|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           0|    209|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           1|    111|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           0|     23|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           1|     19|   402|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           0|    438|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           1|     76|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     58|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           1|     14|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|   1192|  2011|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|    233|  2011|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           0|   5359| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           1|    466| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           0|   2026| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           1|    252| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           0|   2379| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           1|    318| 10800|


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

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/cd395cdd-df55-4add-907a-414528fa9a29/74b265a3-9fd2-4be6-a961-74b7dcb4d8b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cd395cdd-df55-4add-907a-414528fa9a29/74b265a3-9fd2-4be6-a961-74b7dcb4d8b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cd395cdd-df55-4add-907a-414528fa9a29/74b265a3-9fd2-4be6-a961-74b7dcb4d8b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cd395cdd-df55-4add-907a-414528fa9a29/74b265a3-9fd2-4be6-a961-74b7dcb4d8b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.5606668|  0.4822717| 0.6390618|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.6450606|  0.5532013| 0.7369199|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.6558134|  0.5650537| 0.7465730|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.2614598|  0.2130722| 0.3098474|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.2432754|  0.2122673| 0.2742835|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.2803237|  0.2396111| 0.3210363|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.2825836|  0.2490576| 0.3161097|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.3652657|  0.3427207| 0.3878106|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.3185121|  0.3025765| 0.3344477|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.3733962|  0.3404832| 0.4063093|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.4429513|  0.4051041| 0.4807985|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.3863501|  0.3545920| 0.4181082|
|0-24 months |EE             |PAKISTAN                     |High               |NA             | 0.5333333|  0.2805305| 0.7861362|
|0-24 months |EE             |PAKISTAN                     |Low                |NA             | 0.6079027|  0.5550776| 0.6607279|
|0-24 months |EE             |PAKISTAN                     |Medium             |NA             | 0.4545455|  0.2844331| 0.6246578|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.5390325|  0.4340129| 0.6440521|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.5915786|  0.5484853| 0.6346718|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.6165948|  0.5307314| 0.7024583|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | 0.1101695|  0.0535765| 0.1667625|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low                |NA             | 0.1447368|  0.0654954| 0.2239782|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |NA             | 0.0681818|  0.0154251| 0.1209386|
|0-24 months |IRC            |INDIA                        |High               |NA             | 0.6934266|  0.6120333| 0.7748199|
|0-24 months |IRC            |INDIA                        |Low                |NA             | 0.6596998|  0.5882377| 0.7311619|
|0-24 months |IRC            |INDIA                        |Medium             |NA             | 0.6393214|  0.5611018| 0.7175409|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.2452535|  0.2327086| 0.2577984|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.2595485|  0.2474947| 0.2716023|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.2555407|  0.2425702| 0.2685111|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.2888381|  0.2623509| 0.3153253|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.3343707|  0.3056670| 0.3630744|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.3243241|  0.2979516| 0.3506967|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.0364494|  0.0154188| 0.0574800|
|0-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.0997354|  0.0634694| 0.1360014|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.1088434|  0.0701799| 0.1475069|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.2329594|  0.1362747| 0.3296441|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.3357772|  0.2237888| 0.4477655|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.3187968|  0.2041403| 0.4334534|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.3983196|  0.2748099| 0.5218294|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.5570482|  0.4433027| 0.6707937|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.4600522|  0.3499733| 0.5701310|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.2622967|  0.1412481| 0.3833453|
|0-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.3130608|  0.2194025| 0.4067190|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.3396775|  0.2310223| 0.4483328|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.1649509|  0.0888698| 0.2410320|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.2137103|  0.1469554| 0.2804652|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.2261285|  0.1255700| 0.3266869|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.4292592|  0.3620861| 0.4964322|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.5195242|  0.4590525| 0.5799958|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.4691494|  0.4051090| 0.5331898|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.3400198|  0.2873547| 0.3926848|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.3461738|  0.2954427| 0.3969050|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.3087784|  0.2580749| 0.3594819|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.2405624|  0.1796901| 0.3014348|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.2533771|  0.1968817| 0.3098725|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.2589421|  0.1994845| 0.3183997|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.3089951|  0.2507387| 0.3672516|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.3597394|  0.2958859| 0.4235929|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.3740935|  0.3108326| 0.4373544|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.3539422|  0.2975885| 0.4102960|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.4536308|  0.3886077| 0.5186539|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.3808299|  0.3094349| 0.4522250|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.3314790|  0.1813001| 0.4816579|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.4816825|  0.4278442| 0.5355208|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.4963022|  0.3460679| 0.6465365|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.2372857|  0.2035752| 0.2709961|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.2269697|  0.1383642| 0.3155753|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.2365625|  0.2162398| 0.2568853|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.2247594|  0.2159137| 0.2336050|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.2438852|  0.2296557| 0.2581147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.2530575|  0.2403192| 0.2657958|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.4969136|  0.4170364| 0.5767908|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.4992769|  0.4021496| 0.5964041|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.5425990|  0.4434669| 0.6417310|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             | 0.1831529|  0.1307623| 0.2355435|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |NA             | 0.1983532|  0.1639260| 0.2327805|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.2267646|  0.1814647| 0.2720645|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             | 0.2443692|  0.2179992| 0.2707392|
|0-6 months  |COHORTS        |INDIA                        |Low                |NA             | 0.2487698|  0.2306561| 0.2668834|
|0-6 months  |COHORTS        |INDIA                        |Medium             |NA             | 0.2508441|  0.2365200| 0.2651681|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2487632|  0.2252127| 0.2723137|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.2276199|  0.2011165| 0.2541234|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.2131909|  0.1905115| 0.2358702|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | 0.3826141|  0.2875774| 0.4776507|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.3658839|  0.3252777| 0.4064902|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.3781967|  0.3020353| 0.4543581|
|0-6 months  |IRC            |INDIA                        |High               |NA             | 0.5941232|  0.5126712| 0.6755752|
|0-6 months  |IRC            |INDIA                        |Low                |NA             | 0.5247394|  0.4491298| 0.6003491|
|0-6 months  |IRC            |INDIA                        |Medium             |NA             | 0.5234035|  0.4418765| 0.6049305|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.1725147|  0.1618777| 0.1831517|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.1846326|  0.1742111| 0.1950541|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.1701688|  0.1593625| 0.1809752|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.1138258|  0.0970652| 0.1305865|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.0999213|  0.0874308| 0.1124119|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.1103483|  0.0957134| 0.1249831|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             | 0.1709349|  0.0843748| 0.2574950|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.2327712|  0.1304496| 0.3350929|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.2611627|  0.1537368| 0.3685885|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | 0.2755308|  0.1627444| 0.3883173|
|0-6 months  |MAL-ED         |INDIA                        |Low                |NA             | 0.3656132|  0.2546614| 0.4765649|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |NA             | 0.2785624|  0.1797285| 0.3773964|
|0-6 months  |MAL-ED         |NEPAL                        |High               |NA             | 0.2356303|  0.1206899| 0.3505707|
|0-6 months  |MAL-ED         |NEPAL                        |Low                |NA             | 0.1663993|  0.0915459| 0.2412527|
|0-6 months  |MAL-ED         |NEPAL                        |Medium             |NA             | 0.2267681|  0.1314449| 0.3220914|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.1024537|  0.0389411| 0.1659664|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.1013362|  0.0527962| 0.1498762|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.1364818|  0.0535676| 0.2193959|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.3188112|  0.2502391| 0.3873833|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.3815849|  0.3186571| 0.4445127|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.3502300|  0.2838945| 0.4165656|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.2786408|  0.2254851| 0.3317965|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.2491503|  0.1961648| 0.3021357|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.2452830|  0.1938771| 0.2966890|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             | 0.2404019|  0.1789917| 0.3018120|
|0-6 months  |PROBIT         |BELARUS                      |Low                |NA             | 0.2466104|  0.1891092| 0.3041117|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |NA             | 0.2534880|  0.1944459| 0.3125301|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             | 0.2354031|  0.1824198| 0.2883865|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.2644523|  0.2038182| 0.3250864|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.2896580|  0.2299377| 0.3493783|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             | 0.1987443|  0.1662877| 0.2312009|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.2501484|  0.1852033| 0.3150936|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.1916203|  0.1447975| 0.2384430|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.1465378|  0.1187176| 0.1743580|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.0975610|  0.0333249| 0.1617971|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1390374|  0.1225043| 0.1555706|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.1773955|  0.1701459| 0.1846450|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.1861627|  0.1750927| 0.1972327|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.1833976|  0.1740077| 0.1927875|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.1871339|  0.1256274| 0.2486405|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.3331419|  0.2421005| 0.4241834|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.3117177|  0.2222366| 0.4011988|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.1058834|  0.0692214| 0.1425454|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.1264804|  0.0987517| 0.1542090|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.1334379|  0.0984105| 0.1684653|
|6-24 months |COHORTS        |INDIA                        |High               |NA             | 0.0563568|  0.0383943| 0.0743193|
|6-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.1929109|  0.1734368| 0.2123849|
|6-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.1049420|  0.0933932| 0.1164908|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2152918|  0.1834339| 0.2471498|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.3267045|  0.2872606| 0.3661483|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.2616813|  0.2279087| 0.2954538|
|6-24 months |EE             |PAKISTAN                     |High               |NA             | 0.3333333|  0.0944520| 0.5722147|
|6-24 months |EE             |PAKISTAN                     |Low                |NA             | 0.4427245|  0.3884826| 0.4969663|
|6-24 months |EE             |PAKISTAN                     |Medium             |NA             | 0.3030303|  0.1460203| 0.4600403|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.3756446|  0.2581308| 0.4931585|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.5059383|  0.4574445| 0.5544320|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.4158462|  0.3081525| 0.5235398|
|6-24 months |IRC            |INDIA                        |High               |NA             | 0.2917707|  0.2091928| 0.3743485|
|6-24 months |IRC            |INDIA                        |Low                |NA             | 0.2970403|  0.2229910| 0.3710896|
|6-24 months |IRC            |INDIA                        |Medium             |NA             | 0.3178530|  0.2395586| 0.3961475|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.1568811|  0.1424340| 0.1713281|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.1561092|  0.1423769| 0.1698415|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.1635113|  0.1500815| 0.1769412|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.2266190|  0.2005064| 0.2527316|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.2754243|  0.2404822| 0.3103665|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.2636021|  0.2380856| 0.2891186|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.0368540|  0.0154052| 0.0583028|
|6-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.0951250|  0.0592827| 0.1309674|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.1059668|  0.0674993| 0.1444344|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.1126761|  0.0389379| 0.1864142|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.1692308|  0.0778431| 0.2606185|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.1355932|  0.0480109| 0.2231756|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.1867621|  0.0792297| 0.2942945|
|6-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.2971892|  0.1883471| 0.4060314|
|6-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.2987166|  0.1951769| 0.4022563|
|6-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.0961538|  0.0158445| 0.1764632|
|6-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.1720430|  0.0951621| 0.2489239|
|6-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.1733333|  0.0874690| 0.2591977|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.1081081|  0.0372226| 0.1789936|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.1627907|  0.0989607| 0.2266207|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.1428571|  0.0510299| 0.2346844|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.2017618|  0.1384874| 0.2650363|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.4003353|  0.3300230| 0.4706475|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.2459304|  0.1825732| 0.3092875|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.1021695|  0.0649444| 0.1393947|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.1466787|  0.1004430| 0.1929143|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.1459328|  0.1020922| 0.1897733|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0037069| -0.0018293| 0.0092431|
|6-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0088789|  0.0046087| 0.0131491|
|6-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0096431|  0.0051335| 0.0141528|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.1446964|  0.0972137| 0.1921791|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.2129372|  0.1531292| 0.2727451|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.1309847|  0.0859279| 0.1760415|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.2626834|  0.1846289| 0.3407379|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.3302081|  0.2885866| 0.3718297|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.2986474|  0.2375416| 0.3597531|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.2759007|  0.1306421| 0.4211592|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.3455448|  0.2932639| 0.3978256|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.4364264|  0.2826888| 0.5901640|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.1474504|  0.1166972| 0.1782037|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.1949416|  0.1048572| 0.2850260|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1635751|  0.1443575| 0.1827927|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.0844683|  0.0762088| 0.0927278|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.1033804|  0.0888356| 0.1179252|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.1175442|  0.1039786| 0.1311098|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6112601| 0.5617242| 0.6607959|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2564297| 0.2328823| 0.2799770|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3329911| 0.3209071| 0.3450751|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4036125| 0.3861835| 0.4210415|
|0-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.5915119| 0.5418269| 0.6411970|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5900439| 0.5531320| 0.6269559|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.1063830| 0.0703329| 0.1424331|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6560976| 0.6100625| 0.7021326|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2580418| 0.2515722| 0.2645113|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3105166| 0.2961054| 0.3249278|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0798526| 0.0612199| 0.0984853|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3004695| 0.2387555| 0.3621835|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4727273| 0.4066048| 0.5388497|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3111111| 0.2504855| 0.3717368|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2051282| 0.1602507| 0.2500058|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.4775641| 0.4383415| 0.5167867|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2554148| 0.1971257| 0.3137039|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4150694| 0.3581204| 0.4720184|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4712919| 0.4233811| 0.5192026|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2367980| 0.2197367| 0.2538593|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2366078| 0.2295489| 0.2436667|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5163043| 0.4651769| 0.5674318|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2007612| 0.1765324| 0.2249900|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.2511554| 0.2398221| 0.2624886|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2355453| 0.2204685| 0.2506222|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3762811| 0.3399226| 0.4126397|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.5439024| 0.4956326| 0.5921723|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1762162| 0.1705869| 0.1818456|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.1079378| 0.0980978| 0.1177778|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2253521| 0.1691098| 0.2815944|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3181818| 0.2564942| 0.3798694|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.2000000| 0.1476178| 0.2523822|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1121795| 0.0771053| 0.1472536|
|0-6 months  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3569132| 0.3192325| 0.3945938|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2500148| 0.1915461| 0.3084835|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2199336| 0.1753445| 0.2645227|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1395641| 0.1256566| 0.1534717|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1810164| 0.1745999| 0.1874330|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2654155| 0.2205451| 0.3102860|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1277129| 0.1088047| 0.1466210|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1266654| 0.1178579| 0.1354730|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2666429| 0.2502871| 0.2829988|
|6-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.4258760| 0.3754921| 0.4762599|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.4735945| 0.4331684| 0.5140207|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3097561| 0.2649438| 0.3545684|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1638889| 0.1577625| 0.1700152|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2475997| 0.2340658| 0.2611337|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0772105| 0.0587369| 0.0956840|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.1384615| 0.0898601| 0.1870630|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2657005| 0.2053824| 0.3260185|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1545455| 0.1066715| 0.2024194|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1428571| 0.1001583| 0.1855560|
|6-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2933579| 0.2549918| 0.3317241|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0083745| 0.0044130| 0.0123360|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3059755| 0.2638053| 0.3481458|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3557214| 0.3088651| 0.4025777|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1606166| 0.1445647| 0.1766685|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0959259| 0.0903717| 0.1014802|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.1505240| 0.9424288| 1.4045682|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.1697025| 0.9608427| 1.4239626|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9304505| 0.7533284| 1.1492175|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 1.0721485| 0.8577294| 1.3401692|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 1.2925930| 1.1348215| 1.4722991|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.1271428| 0.9954769| 1.2762234|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1862769| 1.0523005| 1.3373108|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.0346920| 0.9211968| 1.1621704|
|0-24 months |EE             |PAKISTAN                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |EE             |PAKISTAN                     |Low                |High           | 1.1398176| 0.7039580| 1.8455421|
|0-24 months |EE             |PAKISTAN                     |Medium             |High           | 0.8522727| 0.4658985| 1.5590708|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.0974822| 0.8941239| 1.3470921|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.1438918| 0.9027119| 1.4495082|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low                |High           | 1.3137652| 0.6201163| 2.7833150|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |High           | 0.6188811| 0.2444853| 1.5666127|
|0-24 months |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |Low                |High           | 0.9513620| 0.8142741| 1.1115296|
|0-24 months |IRC            |INDIA                        |Medium             |High           | 0.9219741| 0.7793802| 1.0906567|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0582866| 0.9914612| 1.1296162|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0419451| 0.9727941| 1.1160116|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1576406| 1.0226052| 1.3105075|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.1228580| 0.9932913| 1.2693256|
|0-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |Low                |High           | 2.7362713| 1.3842061| 5.4090073|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 2.9861532| 1.5169099| 5.8784711|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.4413550| 0.8457057| 2.4565334|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.3684653| 0.7899415| 2.3706785|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.3984955| 0.9643489| 2.0280934|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 1.1549824| 0.7804591| 1.7092305|
|0-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |NEPAL                        |Low                |High           | 1.1935369| 0.6884116| 2.0693003|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 1.2950126| 0.7382003| 2.2718192|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.2955997| 0.7420440| 2.2621014|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.3708836| 0.7226366| 2.6006458|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.2102809| 1.0052745| 1.4570946|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.0929281| 0.8969216| 1.3317684|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.0180992| 0.8357315| 1.2402620|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 0.9081190| 0.7358809| 1.1206707|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.0532695| 0.9869335| 1.1240643|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.0764028| 1.0008549| 1.1576533|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.1642237| 0.9005322| 1.5051288|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.2106778| 0.9406626| 1.5582003|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.2816520| 1.0706666| 1.5342141|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.0759664| 0.9146685| 1.2657083|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.4531312| 0.9111215| 2.3175726|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.4972356| 0.8674771| 2.5841770|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 0.9565253| 0.6313294| 1.4492284|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 0.9969525| 0.8444206| 1.1770370|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.0850948| 1.0184888| 1.1560566|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.1259043| 1.0643091| 1.1910641|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.0047559| 0.7814824| 1.2918198|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.0919383| 0.8570939| 1.3911301|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |High           | 1.0829926| 0.7794462| 1.5047519|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |High           | 1.2381164| 0.8770193| 1.7478887|
|0-6 months  |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |Low                |High           | 1.0180079| 0.9014862| 1.1495905|
|0-6 months  |COHORTS        |INDIA                        |Medium             |High           | 1.0264963| 0.9168796| 1.1492182|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |High           | 0.9150062| 0.7981251| 1.0490039|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |High           | 0.8570031| 0.7558786| 0.9716564|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |High           | 0.9562742| 0.7362712| 1.2420155|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.9884548| 0.7253325| 1.3470276|
|0-6 months  |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |Low                |High           | 0.8832165| 0.7294671| 1.0693716|
|0-6 months  |IRC            |INDIA                        |Medium             |High           | 0.8809679| 0.7190717| 1.0793145|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0702426| 0.9932743| 1.1531751|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9864020| 0.9095023| 1.0698037|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |High           | 0.8778441| 0.7394068| 1.0422006|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |High           | 0.9694482| 0.8068195| 1.1648577|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |High           | 1.3617535| 0.6954806| 2.6663184|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.5278485| 0.7941331| 2.9394580|
|0-6 months  |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA                        |Low                |High           | 1.3269411| 0.7965181| 2.2105874|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |High           | 1.0110029| 0.5878338| 1.7388022|
|0-6 months  |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |NEPAL                        |Low                |High           | 0.7061879| 0.3636606| 1.3713374|
|0-6 months  |MAL-ED         |NEPAL                        |Medium             |High           | 0.9623896| 0.5072305| 1.8259822|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 0.9890923| 0.4519388| 2.1646817|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.3321306| 0.5598195| 3.1699005|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.1968993| 0.9132963| 1.5685686|
|0-6 months  |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.0985500| 0.8257113| 1.4615425|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |High           | 0.8941629| 0.6748613| 1.1847283|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 0.8802840| 0.6660892| 1.1633575|
|0-6 months  |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT         |BELARUS                      |Low                |High           | 1.0258258| 0.9664813| 1.0888143|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |High           | 1.0544344| 0.9823540| 1.1318038|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |High           | 1.1234018| 0.8161500| 1.5463233|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.2304765| 0.9073977| 1.6685875|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |High           | 1.2586445| 1.0219152| 1.5502128|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |High           | 0.9641550| 0.8276602| 1.1231600|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 0.6657733| 0.3355278| 1.3210652|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 0.9488159| 0.7583912| 1.1870544|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.0494220| 0.9900939| 1.1123052|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0338348| 0.9842116| 1.0859600|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.7802328| 1.1605499| 2.7307993|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.6657467| 1.0775680| 2.5749762|
|6-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 1.1945252| 0.7922485| 1.8010643|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 1.2602345| 0.8161194| 1.9460278|
|6-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |Low                |High           | 3.4230285| 2.4504467| 4.7816279|
|6-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.8621004| 1.3291944| 2.6086612|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.5174958| 1.2543195| 1.8358908|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.2154724| 0.9993176| 1.4783820|
|6-24 months |EE             |PAKISTAN                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |EE             |PAKISTAN                     |Low                |High           | 1.3281734| 0.6419550| 2.7479255|
|6-24 months |EE             |PAKISTAN                     |Medium             |High           | 0.9090909| 0.3754460| 2.2012389|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.3468535| 0.9718227| 1.8666103|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.1070201| 0.7376662| 1.6613118|
|6-24 months |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA                        |Low                |High           | 1.0180609| 0.6976846| 1.4855539|
|6-24 months |IRC            |INDIA                        |Medium             |High           | 1.0893934| 0.7483460| 1.5858680|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 0.9950799| 0.8748812| 1.1317926|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0422631| 0.9193594| 1.1815970|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.2153630| 1.0253030| 1.4406543|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.1631952| 1.0008844| 1.3518275|
|6-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |Low                |High           | 2.5811322| 1.2911315| 5.1600039|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 2.8753143| 1.4485600| 5.7073457|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.5019231| 0.6429304| 3.5085805|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.2033898| 0.4798121| 3.0181545|
|6-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.5912713| 0.8026687| 3.1546569|
|6-24 months |MAL-ED         |INDIA                        |Medium             |High           | 1.5994494| 0.8191590| 3.1230060|
|6-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |NEPAL                        |Low                |High           | 1.7892473| 0.6938814| 4.6137656|
|6-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 1.8026667| 0.6826281| 4.7604359|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.5058140| 0.7014183| 3.2327009|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.3214286| 0.5275576| 3.3099202|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.9841973| 1.3854515| 2.8417011|
|6-24 months |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.2189143| 0.8121351| 1.8294394|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.4356401| 0.8868751| 2.3239603|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.4283393| 0.8914861| 2.2884859|
|6-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT         |BELARUS                      |Low                |High           | 2.3952392| 0.7151886| 8.0218999|
|6-24 months |PROBIT         |BELARUS                      |Medium             |High           | 2.6014007| 0.6833323| 9.9033595|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.4716132| 0.9549315| 2.2678541|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.9052381| 0.5626199| 1.4565003|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.2570575| 0.9096865| 1.7370747|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.1369100| 0.8026424| 1.6103863|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.2524247| 0.7239420| 2.1667034|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.5818244| 0.8389458| 2.9825147|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.3220824| 0.7962663| 2.1951223|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.1093564| 0.8731720| 1.4094265|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.2238952| 1.0315983| 1.4520375|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.3915769| 1.1966865| 1.6182067|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0505933| -0.0085883| 0.1097749|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0050301| -0.0473519| 0.0372917|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0504075|  0.0183736| 0.0824413|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0302163|  0.0017297| 0.0587028|
|0-24 months |EE             |PAKISTAN                     |High               |NA             |  0.0581786| -0.1893941| 0.3057514|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0510114| -0.0466108| 0.1486337|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | -0.0037865| -0.0464720| 0.0388989|
|0-24 months |IRC            |INDIA                        |High               |NA             | -0.0373291| -0.1042026| 0.0295445|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0127883|  0.0016659| 0.0239106|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0216785| -0.0019685| 0.0453256|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0434032|  0.0219768| 0.0648296|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0675101| -0.0128694| 0.1478896|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0744076| -0.0307659| 0.1795812|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.0488144| -0.0587761| 0.1564049|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0401773| -0.0254812| 0.1058358|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0483049| -0.0072216| 0.1038314|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | -0.0102045| -0.0497051| 0.0292962|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0148524|  0.0037299| 0.0259749|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0424335| -0.0064821| 0.0913490|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0611272|  0.0136357| 0.1086186|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.1398129| -0.0036853| 0.2833110|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0004877| -0.0295157| 0.0285403|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0118484|  0.0061128| 0.0175841|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0193908| -0.0415470| 0.0803285|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             |  0.0176083| -0.0299031| 0.0651197|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             |  0.0067862| -0.0174472| 0.0310195|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             | -0.0132179| -0.0312554| 0.0048196|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0063330| -0.0930496| 0.0803837|
|0-6 months  |IRC            |INDIA                        |High               |NA             | -0.0502208| -0.1169171| 0.0164756|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0037015| -0.0055005| 0.0129035|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             | -0.0058881| -0.0195527| 0.0077765|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0544172| -0.0184669| 0.1273013|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             |  0.0426510| -0.0540848| 0.1393868|
|0-6 months  |MAL-ED         |NEPAL                        |High               |NA             | -0.0356303| -0.1351113| 0.0638507|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0097257| -0.0435753| 0.0630268|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0381020| -0.0209000| 0.0971040|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             | -0.0213849| -0.0637042| 0.0209345|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.0096129| -0.0014931| 0.0207190|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0231683| -0.0217209| 0.0680575|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0211893| -0.0073765| 0.0497551|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0069737| -0.0307331| 0.0167856|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0036209| -0.0000117| 0.0072536|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0782816|  0.0268512| 0.1297121|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0218295| -0.0114464| 0.0551053|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0703087|  0.0520952| 0.0885221|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0513511|  0.0224046| 0.0802976|
|6-24 months |EE             |PAKISTAN                     |High               |NA             |  0.0925427| -0.1419536| 0.3270389|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0979499| -0.0136514| 0.2095512|
|6-24 months |IRC            |INDIA                        |High               |NA             |  0.0179854| -0.0514514| 0.0874223|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0070078| -0.0063017| 0.0203174|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0209807| -0.0026311| 0.0445926|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0403565|  0.0189058| 0.0618071|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0257855| -0.0361817| 0.0877527|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0789383| -0.0180532| 0.1759299|
|6-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.0583916| -0.0170578| 0.1338410|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0347490| -0.0283117| 0.0978098|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0915961|  0.0345268| 0.1486654|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0293373| -0.0031301| 0.0618048|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0046676|  0.0009535| 0.0083817|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0162792| -0.0232709| 0.0558293|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0432921| -0.0267245| 0.1133087|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0798207| -0.0588261| 0.2184676|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0131662| -0.0136948| 0.0400271|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0114576|  0.0047497| 0.0181655|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0827688| -0.0198429| 0.1750563|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0196160| -0.1987830| 0.1327732|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.1513778|  0.0497203| 0.2421603|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0748645|  0.0015559| 0.1427906|
|0-24 months |EE             |PAKISTAN                     |High               |NA             |  0.0983558| -0.4344899| 0.4332743|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0864536| -0.0951530| 0.2379448|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | -0.0355932| -0.5254587| 0.2969634|
|0-24 months |IRC            |INDIA                        |High               |NA             | -0.0568956| -0.1639606| 0.0403212|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0495589|  0.0055189| 0.0916486|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0698144| -0.0092812| 0.1427114|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.5435416|  0.2296833| 0.7295213|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.2246821| -0.0943486| 0.4507071|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.1574008| -0.0982677| 0.3535516|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.1569034| -0.2705528| 0.4405492|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.1958644| -0.1957497| 0.4592229|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.1011486| -0.0230770| 0.2102903|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | -0.0309399| -0.1578640| 0.0820709|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0581501|  0.0096504| 0.1042747|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.1207456| -0.0296543| 0.2491769|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.1472697|  0.0329219| 0.2480969|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.2966587| -0.0855339| 0.5442898|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0020595| -0.1324583| 0.1133243|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0500763|  0.0255606| 0.0739751|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0375568| -0.0881140| 0.1487134|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             |  0.0877076| -0.1821928| 0.2959884|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             |  0.0270198| -0.0743728| 0.1188436|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             | -0.0561162| -0.1356151| 0.0178174|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0168304| -0.2754388| 0.1893425|
|0-6 months  |IRC            |INDIA                        |High               |NA             | -0.0923342| -0.2226181| 0.0240665|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0210056| -0.0326149| 0.0718416|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             | -0.0545506| -0.1892248| 0.0648723|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.2414763| -0.1593717| 0.5037327|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             |  0.1340460| -0.2303955| 0.3905404|
|0-6 months  |MAL-ED         |NEPAL                        |High               |NA             | -0.1781514| -0.7964735| 0.2273525|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0866981| -0.5374213| 0.4574549|
|0-6 months  |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.1067542| -0.0746992| 0.2575708|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             | -0.0831268| -0.2608483| 0.0695442|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.0384494| -0.0095633| 0.0841788|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0896012| -0.1008791| 0.2471235|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0963439| -0.0289334| 0.2063682|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | -0.0499678| -0.2347294| 0.1071465|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0200034| -0.0002562| 0.0398526|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.2949399|  0.0759496| 0.4620318|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.1709263| -0.1335722| 0.3936308|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.5550738|  0.3926657| 0.6740521|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.1925838|  0.0769456| 0.2937351|
|6-24 months |EE             |PAKISTAN                     |High               |NA             |  0.2172996| -0.5818690| 0.6127240|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.2068223| -0.0677235| 0.4107736|
|6-24 months |IRC            |INDIA                        |High               |NA             |  0.0580632| -0.1952068| 0.2576641|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0427596| -0.0419490| 0.1205816|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0847365| -0.0154228| 0.1750163|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.5226813|  0.1927793| 0.7177560|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.1862285| -0.4042934| 0.5284290|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.2970952| -0.1776197| 0.5804460|
|6-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.3778281| -0.3397954| 0.7110768|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.2432432| -0.3480406| 0.5751754|
|6-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.3122333|  0.0906955| 0.4797969|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.2230859| -0.0626310| 0.4319801|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.5573587| -0.4487135| 0.8647550|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.1011282| -0.1806970| 0.3156835|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.1414888| -0.1192856| 0.3415072|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.2243912| -0.2826501| 0.5309952|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0819727| -0.1013251| 0.2347634|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.1194422|  0.0470594| 0.1863269|
