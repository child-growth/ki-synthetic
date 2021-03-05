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

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |birthwt                    | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:--------------------------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |            0|     27|   290|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |            1|    249|   290|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |            0|      1|   290|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |            1|     13|   290|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |Normal or high birthweight |            0|      7|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |Normal or high birthweight |            1|      6|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |Low birthweight            |            0|      3|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |Low birthweight            |            1|      1|    17|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Normal or high birthweight |            0|    232|   833|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Normal or high birthweight |            1|    555|   833|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Low birthweight            |            0|      6|   833|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Low birthweight            |            1|     40|   833|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Normal or high birthweight |            0|   3828|  5963|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Normal or high birthweight |            1|   1337|  5963|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Low birthweight            |            0|    434|  5963|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Low birthweight            |            1|    364|  5963|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |            0|    914|  2830|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |            1|   1735|  2830|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Low birthweight            |            0|     35|  2830|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Low birthweight            |            1|    146|  2830|
|0-24 months (no birth st.) |CONTENT        |PERU                         |Normal or high birthweight |            0|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |Normal or high birthweight |            1|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |Low birthweight            |            0|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |Low birthweight            |            1|      0|     2|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |Normal or high birthweight |            0|     39|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |Normal or high birthweight |            1|    136|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |Low birthweight            |            0|      2|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |Low birthweight            |            1|     36|   213|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |            0|    212|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |            1|    231|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Low birthweight            |            0|     40|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Low birthweight            |            1|     92|   575|
|0-24 months (no birth st.) |IRC            |INDIA                        |Normal or high birthweight |            0|    134|   355|
|0-24 months (no birth st.) |IRC            |INDIA                        |Normal or high birthweight |            1|    173|   355|
|0-24 months (no birth st.) |IRC            |INDIA                        |Low birthweight            |            0|     12|   355|
|0-24 months (no birth st.) |IRC            |INDIA                        |Low birthweight            |            1|     36|   355|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |            0|   9242| 15275|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |            1|   2606| 15275|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Low birthweight            |            0|   1984| 15275|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Low birthweight            |            1|   1443| 15275|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |            0|   1671|  3199|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |            1|   1150|  3199|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Low birthweight            |            0|    158|  3199|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Low birthweight            |            1|    220|  3199|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Normal or high birthweight |            0|    644|  1455|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Normal or high birthweight |            1|    633|  1455|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Low birthweight            |            0|     39|  1455|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Low birthweight            |            1|    139|  1455|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |            0|     92|   214|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |            1|     97|   214|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Low birthweight            |            0|      9|   214|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Low birthweight            |            1|     16|   214|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |Normal or high birthweight |            0|    167|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |Normal or high birthweight |            1|     32|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |Low birthweight            |            0|      3|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |Low birthweight            |            1|      0|   202|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Normal or high birthweight |            0|     86|   206|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Normal or high birthweight |            1|     99|   206|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Low birthweight            |            0|     10|   206|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Low birthweight            |            1|     11|   206|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |Normal or high birthweight |            0|    150|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |Normal or high birthweight |            1|     49|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |Low birthweight            |            0|      5|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |Low birthweight            |            1|      3|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |Normal or high birthweight |            0|    115|   265|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |Normal or high birthweight |            1|    148|   265|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |Low birthweight            |            0|      0|   265|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |Low birthweight            |            1|      2|   265|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |            0|    135|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |            1|    130|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |            0|      3|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |            1|      7|   275|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            0|     33|   164|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            1|    130|   164|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            0|      1|   164|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            1|      0|   164|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |            0|    173|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |            1|    225|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Low birthweight            |            0|     31|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Low birthweight            |            1|     82|   511|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |            0|    353|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |            1|    186|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |            0|     43|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |            1|     71|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Normal or high birthweight |            0|  14744| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Normal or high birthweight |            1|   2021| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Low birthweight            |            0|      0| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |Low birthweight            |            1|      0| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |            0|    349|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |            1|    173|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Low birthweight            |            0|     46|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Low birthweight            |            1|     65|   633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |Normal or high birthweight |            0|     11|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |Normal or high birthweight |            1|     17|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |Low birthweight            |            0|      0|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |Low birthweight            |            1|      0|    28|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |            0|    439|  1081|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |            1|    524|  1081|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Low birthweight            |            0|     30|  1081|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Low birthweight            |            1|     88|  1081|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            0|   1525|  2211|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            1|    637|  2211|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            0|     26|  2211|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            1|     23|  2211|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |            0|   7723| 12551|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |            1|   3655| 12551|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |            0|    451| 12551|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |            1|    722| 12551|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |            0|    175|   287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |            1|     98|   287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |            0|      3|   287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |            1|     11|   287|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |Normal or high birthweight |            0|     11|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |Normal or high birthweight |            1|      2|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |Low birthweight            |            0|      3|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |Low birthweight            |            1|      1|    17|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |            0|    597|   814|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |            1|    171|   814|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Low birthweight            |            0|     24|   814|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Low birthweight            |            1|     22|   814|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Normal or high birthweight |            0|   4755|  5847|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Normal or high birthweight |            1|    305|  5847|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Low birthweight            |            0|    631|  5847|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Low birthweight            |            1|    156|  5847|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |            0|   2199|  2830|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |            1|    450|  2830|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Low birthweight            |            0|     97|  2830|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Low birthweight            |            1|     84|  2830|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |Normal or high birthweight |            0|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |Normal or high birthweight |            1|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |Low birthweight            |            0|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |Low birthweight            |            1|      0|     2|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Normal or high birthweight |            0|     86|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Normal or high birthweight |            1|     89|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Low birthweight            |            0|      9|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Low birthweight            |            1|     29|   213|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |            0|    388|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |            1|     55|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Low birthweight            |            0|     87|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Low birthweight            |            1|     45|   575|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Normal or high birthweight |            0|    214|   355|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Normal or high birthweight |            1|     93|   355|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Low birthweight            |            0|     21|   355|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Low birthweight            |            1|     27|   355|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |            0|  10698| 15273|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |            1|   1149| 15273|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |            0|   2449| 15273|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |            1|    977| 15273|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |            0|   2576|  3194|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |            1|    241|  3194|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |            0|    305|  3194|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |            1|     72|  3194|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Normal or high birthweight |            0|   1000|  1455|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Normal or high birthweight |            1|    277|  1455|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Low birthweight            |            0|     83|  1455|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Low birthweight            |            1|     95|  1455|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |            0|    155|   214|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |            1|     34|   214|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Low birthweight            |            0|     13|   214|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Low birthweight            |            1|     12|   214|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |Normal or high birthweight |            0|    178|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |Normal or high birthweight |            1|     21|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |Low birthweight            |            0|      3|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |Low birthweight            |            1|      0|   202|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Normal or high birthweight |            0|    146|   206|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Normal or high birthweight |            1|     39|   206|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Low birthweight            |            0|     15|   206|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Low birthweight            |            1|      6|   206|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |Normal or high birthweight |            0|    187|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |Normal or high birthweight |            1|     12|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |Low birthweight            |            0|      6|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |Low birthweight            |            1|      2|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |Normal or high birthweight |            0|    174|   265|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |Normal or high birthweight |            1|     89|   265|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |Low birthweight            |            0|      0|   265|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |Low birthweight            |            1|      2|   265|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |            0|    194|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |            1|     71|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |            0|      4|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |            1|      6|   275|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            0|    120|   164|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            1|     43|   164|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            0|      1|   164|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            1|      0|   164|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |            0|    326|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |            1|     72|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |            0|     67|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |            1|     46|   511|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |            0|    460|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |            1|     79|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Low birthweight            |            0|     69|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Low birthweight            |            1|     45|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Normal or high birthweight |            0|  15733| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Normal or high birthweight |            1|   1030| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Low birthweight            |            0|      0| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |Low birthweight            |            1|      0| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |            0|    461|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |            1|     61|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Low birthweight            |            0|     71|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Low birthweight            |            1|     40|   633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |Normal or high birthweight |            0|     13|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |Normal or high birthweight |            1|     15|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |Low birthweight            |            0|      0|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |Low birthweight            |            1|      0|    28|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |            0|    801|  1080|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |            1|    161|  1080|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Low birthweight            |            0|     69|  1080|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Low birthweight            |            1|     49|  1080|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            0|   1876|  2211|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            1|    286|  2211|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            0|     35|  2211|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            1|     14|  2211|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |            0|   9760| 12540|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |            1|   1608| 12540|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |            0|    628| 12540|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |            1|    544| 12540|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a25faffd-bed4-48c7-ba28-6ee2cd3d44c3/ba3f3c83-0396-44d5-9e75-a86040ed14c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a25faffd-bed4-48c7-ba28-6ee2cd3d44c3/ba3f3c83-0396-44d5-9e75-a86040ed14c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a25faffd-bed4-48c7-ba28-6ee2cd3d44c3/ba3f3c83-0396-44d5-9e75-a86040ed14c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a25faffd-bed4-48c7-ba28-6ee2cd3d44c3/ba3f3c83-0396-44d5-9e75-a86040ed14c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid        |country                      |intervention_level         |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:--------------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             | 0.7052097| 0.6733356| 0.7370837|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Low birthweight            |NA             | 0.8695652| 0.7721834| 0.9669470|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.2599001| 0.2479801| 0.2718201|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Low birthweight            |NA             | 0.4518130| 0.4174023| 0.4862237|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.6549820| 0.6369150| 0.6730491|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Low birthweight            |NA             | 0.8063655| 0.7502289| 0.8625021|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.5191319| 0.4725364| 0.5657274|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Low birthweight            |NA             | 0.7022571| 0.6222388| 0.7822753|
|0-24 months (no birth st.) |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.5617533| 0.5061612| 0.6173454|
|0-24 months (no birth st.) |IRC            |INDIA                        |Low birthweight            |NA             | 0.6778348| 0.5569424| 0.7987272|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.2194061| 0.2108620| 0.2279501|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Low birthweight            |NA             | 0.4239739| 0.4054980| 0.4424498|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.4085674| 0.3869514| 0.4301835|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Low birthweight            |NA             | 0.5758559| 0.5107440| 0.6409679|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.4929962| 0.4655824| 0.5204100|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Low birthweight            |NA             | 0.7793799| 0.7171985| 0.8415614|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             | 0.5132275| 0.4418022| 0.5846528|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Low birthweight            |NA             | 0.6400000| 0.4514023| 0.8285977|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | 0.5360414| 0.4639191| 0.6081637|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Low birthweight            |NA             | 0.5118676| 0.2798701| 0.7438651|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.5672640| 0.5184398| 0.6160882|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Low birthweight            |NA             | 0.7188138| 0.6354088| 0.8022188|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.3468728| 0.3067936| 0.3869520|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |NA             | 0.6184899| 0.5299175| 0.7070624|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.3309247| 0.2905388| 0.3713105|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Low birthweight            |NA             | 0.6002925| 0.5095124| 0.6910726|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.5451656| 0.4797301| 0.6106011|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Low birthweight            |NA             | 0.7411289| 0.6344593| 0.8477985|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.2945068| 0.2751792| 0.3138344|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |NA             | 0.4879640| 0.3717451| 0.6041828|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.3204544| 0.3118803| 0.3290285|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |NA             | 0.6248106| 0.5972112| 0.6524099|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             | 0.2224633| 0.1930181| 0.2519085|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Low birthweight            |NA             | 0.4996735| 0.3498178| 0.6495291|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.0601256| 0.0535723| 0.0666790|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Low birthweight            |NA             | 0.2005175| 0.1722660| 0.2287691|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.1701597| 0.1558516| 0.1844679|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Low birthweight            |NA             | 0.4600437| 0.3874782| 0.5326091|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.5085714| 0.4343282| 0.5828147|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Low birthweight            |NA             | 0.7631579| 0.6276655| 0.8986503|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.1232213| 0.0924620| 0.1539806|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Low birthweight            |NA             | 0.3490174| 0.2663626| 0.4316722|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.3027550| 0.2512281| 0.3542820|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Low birthweight            |NA             | 0.5952323| 0.4512335| 0.7392312|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0977375| 0.0917029| 0.1037720|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |NA             | 0.2802304| 0.2636647| 0.2967961|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0852773| 0.0731115| 0.0974431|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |NA             | 0.1940921| 0.1394926| 0.2486916|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.2149282| 0.1923619| 0.2374946|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Low birthweight            |NA             | 0.5326231| 0.4583691| 0.6068771|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             | 0.1768432| 0.1225919| 0.2310944|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Low birthweight            |NA             | 0.5233211| 0.3300892| 0.7165530|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | 0.2108108| 0.1518917| 0.2697299|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Low birthweight            |NA             | 0.2857143| 0.0920288| 0.4793998|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.1803467| 0.1427206| 0.2179729|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |NA             | 0.3889999| 0.2973374| 0.4806625|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.1476357| 0.1176894| 0.1775820|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Low birthweight            |NA             | 0.3786236| 0.2890549| 0.4681922|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.1172823| 0.0896714| 0.1448932|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Low birthweight            |NA             | 0.3677098| 0.2770119| 0.4584078|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.1673214| 0.1411224| 0.1935203|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Low birthweight            |NA             | 0.4129493| 0.3109046| 0.5149941|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.1322671| 0.1179239| 0.1466103|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |NA             | 0.3138418| 0.2054994| 0.4221842|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.1410337| 0.1346297| 0.1474376|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |NA             | 0.4723013| 0.4440262| 0.5005764|


### Parameter: E(Y)


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7142857| 0.6835892| 0.7449822|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |NA                 |NA             | 0.2852591| 0.2737975| 0.2967207|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6646643| 0.6472674| 0.6820612|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5617391| 0.5211485| 0.6023298|
|0-24 months (no birth st.) |IRC            |INDIA                        |NA                 |NA             | 0.5887324| 0.5374737| 0.6399911|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2650736| 0.2569178| 0.2732295|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.4282588| 0.4077731| 0.4487445|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |NA                 |NA             | 0.5305842| 0.5049322| 0.5562362|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.5280374| 0.4609958| 0.5950790|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |NA                 |NA             | 0.5339806| 0.4656939| 0.6022672|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.6007828| 0.5582791| 0.6432864|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.5661425| 0.5076572| 0.6246278|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2985075| 0.2794291| 0.3175858|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.3487372| 0.3403993| 0.3570750|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2371007| 0.2078658| 0.2663357|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0788439| 0.0719356| 0.0857521|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1886926| 0.1742747| 0.2031105|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |NA                 |NA             | 0.5539906| 0.4870787| 0.6209025|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1739130| 0.1429052| 0.2049209|
|0-6 months (no birth st.)  |IRC            |INDIA                        |NA                 |NA             | 0.3380282| 0.2887514| 0.3873050|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1391999| 0.1330990| 0.1453008|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0979962| 0.0852560| 0.1107365|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |NA                 |NA             | 0.2556701| 0.2332474| 0.2780928|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2149533| 0.1597864| 0.2701201|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |NA                 |NA             | 0.2184466| 0.1618848| 0.2750084|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2309198| 0.1943452| 0.2674943|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1944444| 0.1700545| 0.2188344|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1356852| 0.1214076| 0.1499628|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1716108| 0.1650114| 0.1782103|


### Parameter: RR


|agecat                     |studyid        |country                      |intervention_level         |baseline_level             | estimate|  ci_lower| ci_upper|
|:--------------------------|:--------------|:----------------------------|:--------------------------|:--------------------------|--------:|---------:|--------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Low birthweight            |Normal or high birthweight | 1.233059| 1.0927880| 1.391336|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Low birthweight            |Normal or high birthweight | 1.738410| 1.5915287| 1.898847|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Low birthweight            |Normal or high birthweight | 1.231126| 1.1427829| 1.326299|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Low birthweight            |Normal or high birthweight | 1.352753| 1.1700880| 1.563934|
|0-24 months (no birth st.) |IRC            |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |IRC            |INDIA                        |Low birthweight            |Normal or high birthweight | 1.206641| 0.9835109| 1.480394|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.932371| 1.8256716| 2.045306|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.409451| 1.2437891| 1.597178|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Low birthweight            |Normal or high birthweight | 1.580904| 1.4350548| 1.741577|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.247010| 0.9001943| 1.727443|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Low birthweight            |Normal or high birthweight | 0.954903| 0.5949961| 1.532514|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.267159| 1.0966574| 1.464169|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.783045| 1.4857477| 2.139832|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.813985| 1.4956755| 2.200038|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Low birthweight            |Normal or high birthweight | 1.359456| 1.1269558| 1.639924|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |Normal or high birthweight | 1.656885| 1.2943656| 2.120938|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |Normal or high birthweight | 1.949764| 1.8518512| 2.052855|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Low birthweight            |Normal or high birthweight | 2.246094| 1.6182385| 3.117550|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Low birthweight            |Normal or high birthweight | 3.334976| 2.7920767| 3.983439|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Low birthweight            |Normal or high birthweight | 2.703599| 2.2617676| 3.231741|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Low birthweight            |Normal or high birthweight | 1.500591| 1.1924456| 1.888367|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Low birthweight            |Normal or high birthweight | 2.832444| 2.0076016| 3.996180|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Low birthweight            |Normal or high birthweight | 1.966053| 1.4623844| 2.643192|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.867175| 2.6315792| 3.123863|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.276012| 1.6613858| 3.118018|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Low birthweight            |Normal or high birthweight | 2.478144| 2.0819920| 2.949674|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.959239| 1.8477815| 4.739247|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Low birthweight            |Normal or high birthweight | 1.355311| 0.6510151| 2.821546|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.156956| 1.5773446| 2.949551|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.564580| 1.8776364| 3.502845|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 3.135254| 2.2315810| 4.404866|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Low birthweight            |Normal or high birthweight | 2.468001| 1.8277346| 3.332557|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |Normal or high birthweight | 2.372788| 1.6525522| 3.406926|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |Normal or high birthweight | 3.348855| 3.1069726| 3.609569|


### Parameter: PAR


|agecat                     |studyid        |country                      |intervention_level         |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:--------------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0090761|  0.0028693| 0.0152828|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0253590|  0.0202699| 0.0304480|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0096823|  0.0056866| 0.0136779|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.0426072|  0.0204752| 0.0647393|
|0-24 months (no birth st.) |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0269791|  0.0072953| 0.0466629|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0456676|  0.0411015| 0.0502337|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0196914|  0.0117879| 0.0275948|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0375880|  0.0280437| 0.0471323|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             |  0.0148099| -0.0093760| 0.0389958|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | -0.0020609| -0.0251863| 0.0210646|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.0335188|  0.0116164| 0.0554211|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.0466953|  0.0283444| 0.0650462|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.0450627|  0.0261549| 0.0639705|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.0209768|  0.0051172| 0.0368365|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0040007|  0.0006889| 0.0073124|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0282827|  0.0251802| 0.0313853|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0146375|  0.0053622| 0.0239127|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0187182|  0.0146933| 0.0227432|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0185329|  0.0131346| 0.0239311|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Normal or high birthweight |NA             |  0.0454192|  0.0148924| 0.0759460|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.0506917|  0.0294244| 0.0719591|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0352731|  0.0130156| 0.0575306|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0414624|  0.0373211| 0.0456038|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0127190|  0.0059591| 0.0194788|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0407419|  0.0299200| 0.0515638|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             |  0.0381101|  0.0116129| 0.0646073|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Normal or high birthweight |NA             |  0.0076358| -0.0132341| 0.0285057|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.0505730|  0.0273939| 0.0737522|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.0422571|  0.0243881| 0.0601261|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.0422753|  0.0245101| 0.0600406|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.0271231|  0.0125029| 0.0417432|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0034181|  0.0004410| 0.0063952|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0305772|  0.0273951| 0.0337593|


### Parameter: PAF


|agecat                     |studyid        |country                      |intervention_level         |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:--------------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0127065|  0.0039108| 0.0214245|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0888980|  0.0709919| 0.1064591|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0145672|  0.0085036| 0.0205936|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.0758488|  0.0350955| 0.1148808|
|0-24 months (no birth st.) |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0458257|  0.0113997| 0.0790529|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.1722826|  0.1550889| 0.1891264|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0459801|  0.0273150| 0.0642871|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0708426|  0.0523327| 0.0889910|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             |  0.0280470| -0.0190229| 0.0729427|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | -0.0038594| -0.0481172| 0.0385295|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.0557918|  0.0181880| 0.0919554|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.1186461|  0.0705027| 0.1642958|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.1198516|  0.0679353| 0.1688762|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.0370522|  0.0071018| 0.0660992|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0134022|  0.0022214| 0.0244577|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0811005|  0.0721604| 0.0899544|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0617352|  0.0220962| 0.0997675|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.2374088|  0.1886074| 0.2832750|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0982172|  0.0697469| 0.1258162|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |Normal or high birthweight |NA             |  0.0819855|  0.0239964| 0.1365292|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.2914775|  0.1670119| 0.3973453|
|0-6 months (no birth st.)  |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.1043497|  0.0361372| 0.1677348|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.2978625|  0.2693797| 0.3252350|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.1297903|  0.0622421| 0.1924728|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.1593533|  0.1168759| 0.1997876|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             |  0.1772949|  0.0491301| 0.2881847|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |Normal or high birthweight |NA             |  0.0349550| -0.0652535| 0.1257368|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.2190070|  0.1158210| 0.3101509|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.2225313|  0.1273025| 0.3073688|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.2649533|  0.1532640| 0.3619102|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.1394901|  0.0619753| 0.2105995|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0251914|  0.0030601| 0.0468314|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.1781775|  0.1602612| 0.1957116|
