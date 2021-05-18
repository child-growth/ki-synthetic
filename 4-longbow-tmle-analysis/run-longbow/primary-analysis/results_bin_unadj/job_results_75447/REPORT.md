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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |birthwt                    | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:------------|:--------------------------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            0|     27|   290|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            1|    249|   290|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            0|      1|   290|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            1|     13|   290|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |Normal or high birthweight |            0|      7|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |Normal or high birthweight |            1|      6|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |Low birthweight            |            0|      3|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |Low birthweight            |            1|      1|    17|
|0-24 months (no birth st.) |COHORTS        |INDIA        |Normal or high birthweight |            0|   3828|  5963|
|0-24 months (no birth st.) |COHORTS        |INDIA        |Normal or high birthweight |            1|   1337|  5963|
|0-24 months (no birth st.) |COHORTS        |INDIA        |Low birthweight            |            0|    434|  5963|
|0-24 months (no birth st.) |COHORTS        |INDIA        |Low birthweight            |            1|    364|  5963|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |Normal or high birthweight |            0|    232|   833|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |Normal or high birthweight |            1|    555|   833|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |Low birthweight            |            0|      6|   833|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |Low birthweight            |            1|     40|   833|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |Normal or high birthweight |            0|    914|  2830|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |Normal or high birthweight |            1|   1735|  2830|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |Low birthweight            |            0|     35|  2830|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |Low birthweight            |            1|    146|  2830|
|0-24 months (no birth st.) |CONTENT        |PERU         |Normal or high birthweight |            0|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |Normal or high birthweight |            1|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |Low birthweight            |            0|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |Low birthweight            |            1|      0|     2|
|0-24 months (no birth st.) |EE             |PAKISTAN     |Normal or high birthweight |            0|     39|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |Normal or high birthweight |            1|    136|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |Low birthweight            |            0|      2|   213|
|0-24 months (no birth st.) |EE             |PAKISTAN     |Low birthweight            |            1|     36|   213|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |Normal or high birthweight |            0|    212|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |Normal or high birthweight |            1|    231|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |Low birthweight            |            0|     40|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |Low birthweight            |            1|     92|   575|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            0|   9242| 15275|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            1|   2606| 15275|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |Low birthweight            |            0|   1984| 15275|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |Low birthweight            |            1|   1443| 15275|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            0|   1671|  3199|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            1|   1150|  3199|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |Low birthweight            |            0|    158|  3199|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |Low birthweight            |            1|    220|  3199|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |Normal or high birthweight |            0|    644|  1455|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |Normal or high birthweight |            1|    633|  1455|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |Low birthweight            |            0|     39|  1455|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |Low birthweight            |            1|    139|  1455|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |Normal or high birthweight |            0|     86|   206|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |Normal or high birthweight |            1|     99|   206|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |Low birthweight            |            0|     10|   206|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |Low birthweight            |            1|     11|   206|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |Normal or high birthweight |            0|     92|   214|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |Normal or high birthweight |            1|     97|   214|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |Low birthweight            |            0|      9|   214|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |Low birthweight            |            1|     16|   214|
|0-24 months (no birth st.) |MAL-ED         |PERU         |Normal or high birthweight |            0|    115|   265|
|0-24 months (no birth st.) |MAL-ED         |PERU         |Normal or high birthweight |            1|    148|   265|
|0-24 months (no birth st.) |MAL-ED         |PERU         |Low birthweight            |            0|      0|   265|
|0-24 months (no birth st.) |MAL-ED         |PERU         |Low birthweight            |            1|      2|   265|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |Normal or high birthweight |            0|    150|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |Normal or high birthweight |            1|     49|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |Low birthweight            |            0|      5|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |Low birthweight            |            1|      3|   207|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |Normal or high birthweight |            0|    167|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |Normal or high birthweight |            1|     32|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |Low birthweight            |            0|      3|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |Low birthweight            |            1|      0|   202|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |Normal or high birthweight |            0|     33|   164|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |Normal or high birthweight |            1|    130|   164|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |Low birthweight            |            0|      1|   164|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |Low birthweight            |            1|      0|   164|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            0|    135|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            1|    130|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |Low birthweight            |            0|      3|   275|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |Low birthweight            |            1|      7|   275|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            0|    173|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            1|    225|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |Low birthweight            |            0|     31|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |Low birthweight            |            1|     82|   511|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            0|    353|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            1|    186|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |Low birthweight            |            0|     43|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |Low birthweight            |            1|     71|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |Normal or high birthweight |            0|  14744| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |Normal or high birthweight |            1|   2021| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |Low birthweight            |            0|      0| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |Low birthweight            |            1|      0| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |Normal or high birthweight |            0|    349|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |Normal or high birthweight |            1|    173|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |Low birthweight            |            0|     46|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |Low birthweight            |            1|     65|   633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |Normal or high birthweight |            0|     11|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |Normal or high birthweight |            1|     17|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |Low birthweight            |            0|      0|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |Low birthweight            |            1|      0|    28|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |Normal or high birthweight |            0|    439|  1081|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |Normal or high birthweight |            1|    524|  1081|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |Low birthweight            |            0|     30|  1081|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |Low birthweight            |            1|     88|  1081|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            0|   1525|  2211|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            1|    637|  2211|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |Low birthweight            |            0|     26|  2211|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA     |Low birthweight            |            1|     23|  2211|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |Normal or high birthweight |            0|    134|   355|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |Normal or high birthweight |            1|    173|   355|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |Low birthweight            |            0|     12|   355|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |Low birthweight            |            1|     36|   355|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            0|   7723| 12551|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            1|   3655| 12551|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            0|    451| 12551|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            1|    722| 12551|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            0|    175|   287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            1|     98|   287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            0|      3|   287|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            1|     11|   287|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |Normal or high birthweight |            0|     11|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |Normal or high birthweight |            1|      2|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |Low birthweight            |            0|      3|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |Low birthweight            |            1|      1|    17|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |Normal or high birthweight |            0|   4755|  5847|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |Normal or high birthweight |            1|    305|  5847|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |Low birthweight            |            0|    631|  5847|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |Low birthweight            |            1|    156|  5847|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |Normal or high birthweight |            0|    597|   814|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |Normal or high birthweight |            1|    171|   814|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |Low birthweight            |            0|     24|   814|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |Low birthweight            |            1|     22|   814|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |Normal or high birthweight |            0|   2199|  2830|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |Normal or high birthweight |            1|    450|  2830|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |Low birthweight            |            0|     97|  2830|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |Low birthweight            |            1|     84|  2830|
|0-6 months (no birth st.)  |CONTENT        |PERU         |Normal or high birthweight |            0|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |Normal or high birthweight |            1|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |Low birthweight            |            0|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |Low birthweight            |            1|      0|     2|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |Normal or high birthweight |            0|     86|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |Normal or high birthweight |            1|     89|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |Low birthweight            |            0|      9|   213|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |Low birthweight            |            1|     29|   213|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |Normal or high birthweight |            0|    388|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |Normal or high birthweight |            1|     55|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |Low birthweight            |            0|     87|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |Low birthweight            |            1|     45|   575|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            0|  10698| 15273|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            1|   1149| 15273|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |Low birthweight            |            0|   2449| 15273|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |Low birthweight            |            1|    977| 15273|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            0|   2576|  3194|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            1|    241|  3194|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |Low birthweight            |            0|    305|  3194|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |Low birthweight            |            1|     72|  3194|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |Normal or high birthweight |            0|   1000|  1455|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |Normal or high birthweight |            1|    277|  1455|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |Low birthweight            |            0|     83|  1455|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |Low birthweight            |            1|     95|  1455|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |Normal or high birthweight |            0|    146|   206|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |Normal or high birthweight |            1|     39|   206|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |Low birthweight            |            0|     15|   206|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |Low birthweight            |            1|      6|   206|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |Normal or high birthweight |            0|    155|   214|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |Normal or high birthweight |            1|     34|   214|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |Low birthweight            |            0|     13|   214|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |Low birthweight            |            1|     12|   214|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |Normal or high birthweight |            0|    174|   265|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |Normal or high birthweight |            1|     89|   265|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |Low birthweight            |            0|      0|   265|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |Low birthweight            |            1|      2|   265|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |Normal or high birthweight |            0|    187|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |Normal or high birthweight |            1|     12|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |Low birthweight            |            0|      6|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |Low birthweight            |            1|      2|   207|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |Normal or high birthweight |            0|    178|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |Normal or high birthweight |            1|     21|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |Low birthweight            |            0|      3|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |Low birthweight            |            1|      0|   202|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |Normal or high birthweight |            0|    120|   164|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |Normal or high birthweight |            1|     43|   164|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |Low birthweight            |            0|      1|   164|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |Low birthweight            |            1|      0|   164|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            0|    194|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            1|     71|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |Low birthweight            |            0|      4|   275|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |Low birthweight            |            1|      6|   275|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            0|    326|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            1|     72|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |Low birthweight            |            0|     67|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |Low birthweight            |            1|     46|   511|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            0|    460|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            1|     79|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |Low birthweight            |            0|     69|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |Low birthweight            |            1|     45|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |Normal or high birthweight |            0|  15733| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |Normal or high birthweight |            1|   1030| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |Low birthweight            |            0|      0| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |Low birthweight            |            1|      0| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |Normal or high birthweight |            0|    461|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |Normal or high birthweight |            1|     61|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |Low birthweight            |            0|     71|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |Low birthweight            |            1|     40|   633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |Normal or high birthweight |            0|     13|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |Normal or high birthweight |            1|     15|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |Low birthweight            |            0|      0|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |Low birthweight            |            1|      0|    28|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |Normal or high birthweight |            0|    801|  1080|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |Normal or high birthweight |            1|    161|  1080|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |Low birthweight            |            0|     69|  1080|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |Low birthweight            |            1|     49|  1080|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            0|   1876|  2211|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            1|    286|  2211|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |Low birthweight            |            0|     35|  2211|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA     |Low birthweight            |            1|     14|  2211|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |Normal or high birthweight |            0|    214|   355|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |Normal or high birthweight |            1|     93|   355|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |Low birthweight            |            0|     21|   355|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |Low birthweight            |            1|     27|   355|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            0|   9760| 12540|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            1|   1608| 12540|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            0|    628| 12540|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            1|    544| 12540|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            0|     27|   182|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |            1|    152|   182|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            0|      1|   182|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |Low birthweight            |            1|      2|   182|
|6-24 months                |CMIN           |BANGLADESH   |Normal or high birthweight |            0|      2|     7|
|6-24 months                |CMIN           |BANGLADESH   |Normal or high birthweight |            1|      4|     7|
|6-24 months                |CMIN           |BANGLADESH   |Low birthweight            |            0|      1|     7|
|6-24 months                |CMIN           |BANGLADESH   |Low birthweight            |            1|      0|     7|
|6-24 months                |COHORTS        |INDIA        |Normal or high birthweight |            0|   3503|  5147|
|6-24 months                |COHORTS        |INDIA        |Normal or high birthweight |            1|   1040|  5147|
|6-24 months                |COHORTS        |INDIA        |Low birthweight            |            0|    388|  5147|
|6-24 months                |COHORTS        |INDIA        |Low birthweight            |            1|    216|  5147|
|6-24 months                |COHORTS        |GUATEMALA    |Normal or high birthweight |            0|    153|   569|
|6-24 months                |COHORTS        |GUATEMALA    |Normal or high birthweight |            1|    393|   569|
|6-24 months                |COHORTS        |GUATEMALA    |Low birthweight            |            0|      2|   569|
|6-24 months                |COHORTS        |GUATEMALA    |Low birthweight            |            1|     21|   569|
|6-24 months                |COHORTS        |PHILIPPINES  |Normal or high birthweight |            0|    729|  2093|
|6-24 months                |COHORTS        |PHILIPPINES  |Normal or high birthweight |            1|   1285|  2093|
|6-24 months                |COHORTS        |PHILIPPINES  |Low birthweight            |            0|     17|  2093|
|6-24 months                |COHORTS        |PHILIPPINES  |Low birthweight            |            1|     62|  2093|
|6-24 months                |CONTENT        |PERU         |Normal or high birthweight |            0|      1|     1|
|6-24 months                |CONTENT        |PERU         |Normal or high birthweight |            1|      0|     1|
|6-24 months                |CONTENT        |PERU         |Low birthweight            |            0|      0|     1|
|6-24 months                |CONTENT        |PERU         |Low birthweight            |            1|      0|     1|
|6-24 months                |EE             |PAKISTAN     |Normal or high birthweight |            0|     37|    93|
|6-24 months                |EE             |PAKISTAN     |Normal or high birthweight |            1|     47|    93|
|6-24 months                |EE             |PAKISTAN     |Low birthweight            |            0|      2|    93|
|6-24 months                |EE             |PAKISTAN     |Low birthweight            |            1|      7|    93|
|6-24 months                |GMS-Nepal      |NEPAL        |Normal or high birthweight |            0|    149|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |Normal or high birthweight |            1|    176|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |Low birthweight            |            0|     24|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |Low birthweight            |            1|     47|   396|
|6-24 months                |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            0|   5646|  8640|
|6-24 months                |JiVitA-3       |BANGLADESH   |Normal or high birthweight |            1|   1457|  8640|
|6-24 months                |JiVitA-3       |BANGLADESH   |Low birthweight            |            0|   1063|  8640|
|6-24 months                |JiVitA-3       |BANGLADESH   |Low birthweight            |            1|    474|  8640|
|6-24 months                |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            0|   1664|  2884|
|6-24 months                |JiVitA-4       |BANGLADESH   |Normal or high birthweight |            1|    910|  2884|
|6-24 months                |JiVitA-4       |BANGLADESH   |Low birthweight            |            0|    158|  2884|
|6-24 months                |JiVitA-4       |BANGLADESH   |Low birthweight            |            1|    152|  2884|
|6-24 months                |Keneba         |GAMBIA       |Normal or high birthweight |            0|    611|  1045|
|6-24 months                |Keneba         |GAMBIA       |Normal or high birthweight |            1|    356|  1045|
|6-24 months                |Keneba         |GAMBIA       |Low birthweight            |            0|     34|  1045|
|6-24 months                |Keneba         |GAMBIA       |Low birthweight            |            1|     44|  1045|
|6-24 months                |MAL-ED         |INDIA        |Normal or high birthweight |            0|     77|   152|
|6-24 months                |MAL-ED         |INDIA        |Normal or high birthweight |            1|     60|   152|
|6-24 months                |MAL-ED         |INDIA        |Low birthweight            |            0|     10|   152|
|6-24 months                |MAL-ED         |INDIA        |Low birthweight            |            1|      5|   152|
|6-24 months                |MAL-ED         |BANGLADESH   |Normal or high birthweight |            0|     82|   157|
|6-24 months                |MAL-ED         |BANGLADESH   |Normal or high birthweight |            1|     63|   157|
|6-24 months                |MAL-ED         |BANGLADESH   |Low birthweight            |            0|      8|   157|
|6-24 months                |MAL-ED         |BANGLADESH   |Low birthweight            |            1|      4|   157|
|6-24 months                |MAL-ED         |PERU         |Normal or high birthweight |            0|     90|   149|
|6-24 months                |MAL-ED         |PERU         |Normal or high birthweight |            1|     59|   149|
|6-24 months                |MAL-ED         |PERU         |Low birthweight            |            0|      0|   149|
|6-24 months                |MAL-ED         |PERU         |Low birthweight            |            1|      0|   149|
|6-24 months                |MAL-ED         |NEPAL        |Normal or high birthweight |            0|    147|   190|
|6-24 months                |MAL-ED         |NEPAL        |Normal or high birthweight |            1|     37|   190|
|6-24 months                |MAL-ED         |NEPAL        |Low birthweight            |            0|      5|   190|
|6-24 months                |MAL-ED         |NEPAL        |Low birthweight            |            1|      1|   190|
|6-24 months                |MAL-ED         |BRAZIL       |Normal or high birthweight |            0|    150|   163|
|6-24 months                |MAL-ED         |BRAZIL       |Normal or high birthweight |            1|     11|   163|
|6-24 months                |MAL-ED         |BRAZIL       |Low birthweight            |            0|      2|   163|
|6-24 months                |MAL-ED         |BRAZIL       |Low birthweight            |            1|      0|   163|
|6-24 months                |MAL-ED         |TANZANIA     |Normal or high birthweight |            0|     26|   113|
|6-24 months                |MAL-ED         |TANZANIA     |Normal or high birthweight |            1|     87|   113|
|6-24 months                |MAL-ED         |TANZANIA     |Low birthweight            |            0|      0|   113|
|6-24 months                |MAL-ED         |TANZANIA     |Low birthweight            |            1|      0|   113|
|6-24 months                |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            0|     98|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |            1|     59|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |Low birthweight            |            0|      0|   158|
|6-24 months                |MAL-ED         |SOUTH AFRICA |Low birthweight            |            1|      1|   158|
|6-24 months                |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            0|    124|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |Normal or high birthweight |            1|    153|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |Low birthweight            |            0|     17|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |Low birthweight            |            1|     36|   330|
|6-24 months                |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            0|    334|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |            1|    107|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |Low birthweight            |            0|     39|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |Low birthweight            |            1|     26|   506|
|6-24 months                |PROBIT         |BELARUS      |Normal or high birthweight |            0|  14473| 15467|
|6-24 months                |PROBIT         |BELARUS      |Normal or high birthweight |            1|    994| 15467|
|6-24 months                |PROBIT         |BELARUS      |Low birthweight            |            0|      0| 15467|
|6-24 months                |PROBIT         |BELARUS      |Low birthweight            |            1|      0| 15467|
|6-24 months                |PROVIDE        |BANGLADESH   |Normal or high birthweight |            0|    288|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |Normal or high birthweight |            1|    112|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |Low birthweight            |            0|     31|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |Low birthweight            |            1|     25|   456|
|6-24 months                |ResPak         |PAKISTAN     |Normal or high birthweight |            0|      6|     8|
|6-24 months                |ResPak         |PAKISTAN     |Normal or high birthweight |            1|      2|     8|
|6-24 months                |ResPak         |PAKISTAN     |Low birthweight            |            0|      0|     8|
|6-24 months                |ResPak         |PAKISTAN     |Low birthweight            |            1|      0|     8|
|6-24 months                |SAS-CompFeed   |INDIA        |Normal or high birthweight |            0|    376|   803|
|6-24 months                |SAS-CompFeed   |INDIA        |Normal or high birthweight |            1|    363|   803|
|6-24 months                |SAS-CompFeed   |INDIA        |Low birthweight            |            0|     24|   803|
|6-24 months                |SAS-CompFeed   |INDIA        |Low birthweight            |            1|     40|   803|
|6-24 months                |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            0|   1211|  1589|
|6-24 months                |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |            1|    351|  1589|
|6-24 months                |TanzaniaChild2 |TANZANIA     |Low birthweight            |            0|     18|  1589|
|6-24 months                |TanzaniaChild2 |TANZANIA     |Low birthweight            |            1|      9|  1589|
|6-24 months                |Vellore Crypto |INDIA        |Normal or high birthweight |            0|    134|   235|
|6-24 months                |Vellore Crypto |INDIA        |Normal or high birthweight |            1|     80|   235|
|6-24 months                |Vellore Crypto |INDIA        |Low birthweight            |            0|     12|   235|
|6-24 months                |Vellore Crypto |INDIA        |Low birthweight            |            1|      9|   235|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            0|   5986|  8471|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |            1|   2050|  8471|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            0|    254|  8471|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |Low birthweight            |            1|    181|  8471|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


