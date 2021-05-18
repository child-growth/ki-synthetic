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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country      |birthwt                    | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:--------------------------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           0|     96|  318|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           1|    168|  318|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           0|     23|  318|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           1|     31|  318|
|0-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |           0|      2|   12|
|0-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |           1|      5|   12|
|0-24 months |CMIN           |BANGLADESH   |Low birthweight            |           0|      3|   12|
|0-24 months |CMIN           |BANGLADESH   |Low birthweight            |           1|      2|   12|
|0-24 months |COHORTS        |INDIA        |Normal or high birthweight |           0|   1227| 2516|
|0-24 months |COHORTS        |INDIA        |Normal or high birthweight |           1|    343| 2516|
|0-24 months |COHORTS        |INDIA        |Low birthweight            |           0|    645| 2516|
|0-24 months |COHORTS        |INDIA        |Low birthweight            |           1|    301| 2516|
|0-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |           0|    134|  320|
|0-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |           1|    139|  320|
|0-24 months |COHORTS        |GUATEMALA    |Low birthweight            |           0|     21|  320|
|0-24 months |COHORTS        |GUATEMALA    |Low birthweight            |           1|     26|  320|
|0-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |           0|    524| 1664|
|0-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |           1|    830| 1664|
|0-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |           0|    130| 1664|
|0-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |           1|    180| 1664|
|0-24 months |EE             |PAKISTAN     |Normal or high birthweight |           0|     93|  322|
|0-24 months |EE             |PAKISTAN     |Normal or high birthweight |           1|     94|  322|
|0-24 months |EE             |PAKISTAN     |Low birthweight            |           0|     67|  322|
|0-24 months |EE             |PAKISTAN     |Low birthweight            |           1|     68|  322|
|0-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |           0|    160|  641|
|0-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |           1|    209|  641|
|0-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |           0|    134|  641|
|0-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |           1|    138|  641|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           0|   1667| 6448|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           1|    963| 6448|
|0-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |           0|   2053| 6448|
|0-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |           1|   1765| 6448|
|0-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           0|    779| 1789|
|0-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           1|    253| 1789|
|0-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |           0|    512| 1789|
|0-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |           1|    245| 1789|
|0-24 months |Keneba         |GAMBIA       |Normal or high birthweight |           0|    313| 1220|
|0-24 months |Keneba         |GAMBIA       |Normal or high birthweight |           1|    655| 1220|
|0-24 months |Keneba         |GAMBIA       |Low birthweight            |           0|    101| 1220|
|0-24 months |Keneba         |GAMBIA       |Low birthweight            |           1|    151| 1220|
|0-24 months |MAL-ED         |INDIA        |Normal or high birthweight |           0|     44|  166|
|0-24 months |MAL-ED         |INDIA        |Normal or high birthweight |           1|     78|  166|
|0-24 months |MAL-ED         |INDIA        |Low birthweight            |           0|     20|  166|
|0-24 months |MAL-ED         |INDIA        |Low birthweight            |           1|     24|  166|
|0-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |           0|     31|  122|
|0-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |           1|     46|  122|
|0-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |           0|     12|  122|
|0-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |           1|     33|  122|
|0-24 months |MAL-ED         |PERU         |Normal or high birthweight |           0|      3|   35|
|0-24 months |MAL-ED         |PERU         |Normal or high birthweight |           1|     23|   35|
|0-24 months |MAL-ED         |PERU         |Low birthweight            |           0|      3|   35|
|0-24 months |MAL-ED         |PERU         |Low birthweight            |           1|      6|   35|
|0-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |           0|     13|   90|
|0-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |           1|     60|   90|
|0-24 months |MAL-ED         |NEPAL        |Low birthweight            |           0|      3|   90|
|0-24 months |MAL-ED         |NEPAL        |Low birthweight            |           1|     14|   90|
|0-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |           0|      5|   24|
|0-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |           1|     16|   24|
|0-24 months |MAL-ED         |BRAZIL       |Low birthweight            |           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |Low birthweight            |           1|      2|   24|
|0-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |           0|      6|   39|
|0-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |           1|     31|   39|
|0-24 months |MAL-ED         |TANZANIA     |Low birthweight            |           0|      0|   39|
|0-24 months |MAL-ED         |TANZANIA     |Low birthweight            |           1|      2|   39|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           0|     17|   85|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           1|     54|   85|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |           0|      1|   85|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |           1|     13|   85|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           0|    101|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           1|    115|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |           0|     96|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |           1|     96|  408|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           0|     61|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           1|    102|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |           0|     56|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |           1|     91|  310|
|0-24 months |PROBIT         |BELARUS      |Normal or high birthweight |           0|    526| 4408|
|0-24 months |PROBIT         |BELARUS      |Normal or high birthweight |           1|   3882| 4408|
|0-24 months |PROBIT         |BELARUS      |Low birthweight            |           0|      0| 4408|
|0-24 months |PROBIT         |BELARUS      |Low birthweight            |           1|      0| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |           0|     74|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |           1|     94|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |           0|     55|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |           1|     85|  308|
|0-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |           0|      8|   23|
|0-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |           1|      9|   23|
|0-24 months |ResPak         |PAKISTAN     |Low birthweight            |           0|      3|   23|
|0-24 months |ResPak         |PAKISTAN     |Low birthweight            |           1|      3|   23|
|0-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |           0|    316|  811|
|0-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |           1|    178|  811|
|0-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |           0|    185|  811|
|0-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |           1|    132|  811|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           0|    244|  703|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           1|    420|  703|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |           0|     19|  703|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |           1|     20|  703|
|0-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |           0|    115|  390|
|0-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |           1|    174|  390|
|0-24 months |Vellore Crypto |INDIA        |Low birthweight            |           0|     45|  390|
|0-24 months |Vellore Crypto |INDIA        |Low birthweight            |           1|     56|  390|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           0|   1184| 3608|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           1|   1293| 3608|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           0|    460| 3608|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           1|    671| 3608|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           0|     54|  197|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           1|    112|  197|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           0|     11|  197|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           1|     20|  197|
|0-6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |           0|      1|    5|
|0-6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |           1|      0|    5|
|0-6 months  |CMIN           |BANGLADESH   |Low birthweight            |           0|      2|    5|
|0-6 months  |CMIN           |BANGLADESH   |Low birthweight            |           1|      2|    5|
|0-6 months  |COHORTS        |INDIA        |Normal or high birthweight |           0|    678| 1718|
|0-6 months  |COHORTS        |INDIA        |Normal or high birthweight |           1|    343| 1718|
|0-6 months  |COHORTS        |INDIA        |Low birthweight            |           0|    396| 1718|
|0-6 months  |COHORTS        |INDIA        |Low birthweight            |           1|    301| 1718|
|0-6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |           0|     45|  210|
|0-6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |           1|    135|  210|
|0-6 months  |COHORTS        |GUATEMALA    |Low birthweight            |           0|      5|  210|
|0-6 months  |COHORTS        |GUATEMALA    |Low birthweight            |           1|     25|  210|
|0-6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |           0|    152|  746|
|0-6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |           1|    427|  746|
|0-6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |           0|     44|  746|
|0-6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |           1|    123|  746|
|0-6 months  |EE             |PAKISTAN     |Normal or high birthweight |           0|     34|  126|
|0-6 months  |EE             |PAKISTAN     |Normal or high birthweight |           1|     45|  126|
|0-6 months  |EE             |PAKISTAN     |Low birthweight            |           0|     21|  126|
|0-6 months  |EE             |PAKISTAN     |Low birthweight            |           1|     26|  126|
|0-6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |           0|     51|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |           1|     89|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |           0|     53|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |           1|     70|  263|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           0|    583| 4009|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           1|    963| 4009|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |           0|    698| 4009|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |           1|   1765| 4009|
|0-6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           0|    110|  510|
|0-6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           1|    136|  510|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |           0|     91|  510|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |           1|    173|  510|
|0-6 months  |Keneba         |GAMBIA       |Normal or high birthweight |           0|     71|  562|
|0-6 months  |Keneba         |GAMBIA       |Normal or high birthweight |           1|    349|  562|
|0-6 months  |Keneba         |GAMBIA       |Low birthweight            |           0|     27|  562|
|0-6 months  |Keneba         |GAMBIA       |Low birthweight            |           1|    115|  562|
|0-6 months  |MAL-ED         |INDIA        |Normal or high birthweight |           0|     19|   80|
|0-6 months  |MAL-ED         |INDIA        |Normal or high birthweight |           1|     41|   80|
|0-6 months  |MAL-ED         |INDIA        |Low birthweight            |           0|      6|   80|
|0-6 months  |MAL-ED         |INDIA        |Low birthweight            |           1|     14|   80|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |           0|     10|   62|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |           1|     31|   62|
|0-6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |           0|      3|   62|
|0-6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |           1|     18|   62|
|0-6 months  |MAL-ED         |PERU         |Normal or high birthweight |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Normal or high birthweight |           1|      8|   11|
|0-6 months  |MAL-ED         |PERU         |Low birthweight            |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Low birthweight            |           1|      3|   11|
|0-6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |           0|      6|   45|
|0-6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |           1|     29|   45|
|0-6 months  |MAL-ED         |NEPAL        |Low birthweight            |           0|      1|   45|
|0-6 months  |MAL-ED         |NEPAL        |Low birthweight            |           1|      9|   45|
|0-6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |           1|     12|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Low birthweight            |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Low birthweight            |           1|      2|   15|
|0-6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |           1|     10|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Low birthweight            |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Low birthweight            |           1|      1|   11|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           0|      8|   34|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           1|     19|   34|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |           0|      1|   34|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |           1|      6|   34|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           0|     28|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           1|     74|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |           0|     34|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |           1|     81|  217|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           0|     13|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           1|     89|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |           0|      8|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |           1|     87|  197|
|0-6 months  |PROBIT         |BELARUS      |Normal or high birthweight |           0|    423| 4267|
|0-6 months  |PROBIT         |BELARUS      |Normal or high birthweight |           1|   3844| 4267|
|0-6 months  |PROBIT         |BELARUS      |Low birthweight            |           0|      0| 4267|
|0-6 months  |PROBIT         |BELARUS      |Low birthweight            |           1|      0| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |           0|     19|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |           1|     72|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |           0|     21|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |           1|     73|  185|
|0-6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |           0|      2|   14|
|0-6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |           1|      9|   14|
|0-6 months  |ResPak         |PAKISTAN     |Low birthweight            |           0|      2|   14|
|0-6 months  |ResPak         |PAKISTAN     |Low birthweight            |           1|      1|   14|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |           0|    102|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |           1|     84|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |           0|     63|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |           1|     91|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           0|     92|  335|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           1|    223|  335|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |           0|      8|  335|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |           1|     12|  335|
|0-6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |           0|     64|  236|
|0-6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |           1|    113|  236|
|0-6 months  |Vellore Crypto |INDIA        |Low birthweight            |           0|     22|  236|
|0-6 months  |Vellore Crypto |INDIA        |Low birthweight            |           1|     37|  236|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           0|    392| 2517|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           1|   1221| 2517|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           0|    242| 2517|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           1|    662| 2517|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           0|     42|  121|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |           1|     56|  121|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           0|     12|  121|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |           1|     11|  121|
|6-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |           0|      1|    7|
|6-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |           1|      5|    7|
|6-24 months |CMIN           |BANGLADESH   |Low birthweight            |           0|      1|    7|
|6-24 months |CMIN           |BANGLADESH   |Low birthweight            |           1|      0|    7|
|6-24 months |COHORTS        |INDIA        |Normal or high birthweight |           0|    549|  798|
|6-24 months |COHORTS        |INDIA        |Normal or high birthweight |           1|      0|  798|
|6-24 months |COHORTS        |INDIA        |Low birthweight            |           0|    249|  798|
|6-24 months |COHORTS        |INDIA        |Low birthweight            |           1|      0|  798|
|6-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |           0|     89|  110|
|6-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |           1|      4|  110|
|6-24 months |COHORTS        |GUATEMALA    |Low birthweight            |           0|     16|  110|
|6-24 months |COHORTS        |GUATEMALA    |Low birthweight            |           1|      1|  110|
|6-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |           0|    372|  918|
|6-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |           1|    403|  918|
|6-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |           0|     86|  918|
|6-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |           1|     57|  918|
|6-24 months |EE             |PAKISTAN     |Normal or high birthweight |           0|     59|  196|
|6-24 months |EE             |PAKISTAN     |Normal or high birthweight |           1|     49|  196|
|6-24 months |EE             |PAKISTAN     |Low birthweight            |           0|     46|  196|
|6-24 months |EE             |PAKISTAN     |Low birthweight            |           1|     42|  196|
|6-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |           0|    109|  378|
|6-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |           1|    120|  378|
|6-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |           0|     81|  378|
|6-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |           1|     68|  378|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           0|   1084| 2439|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |           1|      0| 2439|
|6-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |           0|   1355| 2439|
|6-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |           1|      0| 2439|
|6-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           0|    669| 1279|
|6-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |           1|    117| 1279|
|6-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |           0|    421| 1279|
|6-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |           1|     72| 1279|
|6-24 months |Keneba         |GAMBIA       |Normal or high birthweight |           0|    242|  658|
|6-24 months |Keneba         |GAMBIA       |Normal or high birthweight |           1|    306|  658|
|6-24 months |Keneba         |GAMBIA       |Low birthweight            |           0|     74|  658|
|6-24 months |Keneba         |GAMBIA       |Low birthweight            |           1|     36|  658|
|6-24 months |MAL-ED         |INDIA        |Normal or high birthweight |           0|     25|   86|
|6-24 months |MAL-ED         |INDIA        |Normal or high birthweight |           1|     37|   86|
|6-24 months |MAL-ED         |INDIA        |Low birthweight            |           0|     14|   86|
|6-24 months |MAL-ED         |INDIA        |Low birthweight            |           1|     10|   86|
|6-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |           0|     21|   60|
|6-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |           1|     15|   60|
|6-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |           0|      9|   60|
|6-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |           1|     15|   60|
|6-24 months |MAL-ED         |PERU         |Normal or high birthweight |           0|      3|   24|
|6-24 months |MAL-ED         |PERU         |Normal or high birthweight |           1|     15|   24|
|6-24 months |MAL-ED         |PERU         |Low birthweight            |           0|      3|   24|
|6-24 months |MAL-ED         |PERU         |Low birthweight            |           1|      3|   24|
|6-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |           0|      7|   45|
|6-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |           1|     31|   45|
|6-24 months |MAL-ED         |NEPAL        |Low birthweight            |           0|      2|   45|
|6-24 months |MAL-ED         |NEPAL        |Low birthweight            |           1|      5|   45|
|6-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |           0|      4|    9|
|6-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |           1|      4|    9|
|6-24 months |MAL-ED         |BRAZIL       |Low birthweight            |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |Low birthweight            |           1|      0|    9|
|6-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |           0|      6|   28|
|6-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |           1|     21|   28|
|6-24 months |MAL-ED         |TANZANIA     |Low birthweight            |           0|      0|   28|
|6-24 months |MAL-ED         |TANZANIA     |Low birthweight            |           1|      1|   28|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           0|      9|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |           1|     35|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |           0|      0|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |           1|      7|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           0|     73|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |           1|     41|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |           0|     62|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |           1|     15|  191|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           0|     48|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |           1|     13|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |           0|     48|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |           1|      4|  113|
|6-24 months |PROBIT         |BELARUS      |Normal or high birthweight |           0|    103|  141|
|6-24 months |PROBIT         |BELARUS      |Normal or high birthweight |           1|     38|  141|
|6-24 months |PROBIT         |BELARUS      |Low birthweight            |           0|      0|  141|
|6-24 months |PROBIT         |BELARUS      |Low birthweight            |           1|      0|  141|
|6-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |           0|     55|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |           1|     22|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |           0|     34|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |           1|     12|  123|
|6-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |           0|      6|    9|
|6-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |           1|      0|    9|
|6-24 months |ResPak         |PAKISTAN     |Low birthweight            |           0|      1|    9|
|6-24 months |ResPak         |PAKISTAN     |Low birthweight            |           1|      2|    9|
|6-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |           0|    214|  471|
|6-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |           1|     94|  471|
|6-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |           0|    122|  471|
|6-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |           1|     41|  471|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           0|    152|  368|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |           1|    197|  368|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |           0|     11|  368|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |           1|      8|  368|
|6-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |           0|     51|  154|
|6-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |           1|     61|  154|
|6-24 months |Vellore Crypto |INDIA        |Low birthweight            |           0|     23|  154|
|6-24 months |Vellore Crypto |INDIA        |Low birthweight            |           1|     19|  154|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           0|    792| 1091|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |           1|     72| 1091|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           0|    218| 1091|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |           1|      9| 1091|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
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

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


