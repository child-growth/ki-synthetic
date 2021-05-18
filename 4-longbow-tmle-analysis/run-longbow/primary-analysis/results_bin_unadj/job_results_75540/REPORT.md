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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |birthwt                    | swasted| n_cell|     n|
|:---------|:--------------|:------------|:--------------------------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       0|     76|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       1|      1|    86|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |       0|     13|    19|
|Birth     |CMIN           |BANGLADESH   |Normal or high birthweight |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |       0|      5|    19|
|Birth     |CMIN           |BANGLADESH   |Low birthweight            |       1|      1|    19|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |       0|   5079|  6193|
|Birth     |COHORTS        |INDIA        |Normal or high birthweight |       1|     99|  6193|
|Birth     |COHORTS        |INDIA        |Low birthweight            |       0|    794|  6193|
|Birth     |COHORTS        |INDIA        |Low birthweight            |       1|    221|  6193|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |       0|    660|   756|
|Birth     |COHORTS        |GUATEMALA    |Normal or high birthweight |       1|     42|   756|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |       0|     36|   756|
|Birth     |COHORTS        |GUATEMALA    |Low birthweight            |       1|     18|   756|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |       0|   2623|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Normal or high birthweight |       1|     65|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |       0|    155|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Low birthweight            |       1|     56|  2899|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |       0|      2|     2|
|Birth     |CONTENT        |PERU         |Normal or high birthweight |       1|      0|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |       0|      0|     2|
|Birth     |CONTENT        |PERU         |Low birthweight            |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |       0|    135|   177|
|Birth     |EE             |PAKISTAN     |Normal or high birthweight |       1|      3|   177|
|Birth     |EE             |PAKISTAN     |Low birthweight            |       0|     36|   177|
|Birth     |EE             |PAKISTAN     |Low birthweight            |       1|      3|   177|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |       0|    456|   641|
|Birth     |GMS-Nepal      |NEPAL        |Normal or high birthweight |       1|      5|   641|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |       0|    158|   641|
|Birth     |GMS-Nepal      |NEPAL        |Low birthweight            |       1|     22|   641|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       0|  12522| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       1|     34| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |       0|   5143| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Low birthweight            |       1|    315| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       0|   1755|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       1|      3|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |       0|    610|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Low birthweight            |       1|     28|  2396|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |       0|   1212|  1465|
|Birth     |Keneba         |GAMBIA       |Normal or high birthweight |       1|     61|  1465|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |       0|    150|  1465|
|Birth     |Keneba         |GAMBIA       |Low birthweight            |       1|     42|  1465|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |       0|     38|    45|
|Birth     |MAL-ED         |INDIA        |Normal or high birthweight |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |       0|      7|    45|
|Birth     |MAL-ED         |INDIA        |Low birthweight            |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |       0|    172|   215|
|Birth     |MAL-ED         |BANGLADESH   |Normal or high birthweight |       1|      5|   215|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |       0|     35|   215|
|Birth     |MAL-ED         |BANGLADESH   |Low birthweight            |       1|      3|   215|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |       0|    218|   228|
|Birth     |MAL-ED         |PERU         |Normal or high birthweight |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |Low birthweight            |       0|     10|   228|
|Birth     |MAL-ED         |PERU         |Low birthweight            |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |       0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |Normal or high birthweight |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |Low birthweight            |       1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |       0|     60|    62|
|Birth     |MAL-ED         |BRAZIL       |Normal or high birthweight |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |       0|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |Low birthweight            |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |       0|    113|   115|
|Birth     |MAL-ED         |TANZANIA     |Normal or high birthweight |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |       0|      2|   115|
|Birth     |MAL-ED         |TANZANIA     |Low birthweight            |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       0|    115|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |       0|      5|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Low birthweight            |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       0|    402|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       1|      8|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |       0|    135|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Low birthweight            |       1|     30|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       0|    536|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       1|     18|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |       0|    124|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low birthweight            |       1|     29|   707|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |       0|  12898| 13817|
|Birth     |PROBIT         |BELARUS      |Normal or high birthweight |       1|    919| 13817|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |       0|      0| 13817|
|Birth     |PROBIT         |BELARUS      |Low birthweight            |       1|      0| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |       0|    397|   532|
|Birth     |PROVIDE        |BANGLADESH   |Normal or high birthweight |       1|      4|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |       0|    122|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low birthweight            |       1|      9|   532|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |       0|     33|    38|
|Birth     |ResPak         |PAKISTAN     |Normal or high birthweight |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |       0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |Low birthweight            |       1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |       0|    890|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Normal or high birthweight |       1|      4|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |       0|    184|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Low birthweight            |       1|     25|  1103|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |       0|    264|   343|
|Birth     |Vellore Crypto |INDIA        |Normal or high birthweight |       1|     32|   343|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |       0|     25|   343|
|Birth     |Vellore Crypto |INDIA        |Low birthweight            |       1|     22|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       0|  11254| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       1|    360| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       0|    871| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       1|    432| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       0|    308|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       1|      9|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       0|     41|   360|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       1|      2|   360|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |       0|      8|    12|
|6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |       1|      0|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |       0|      4|    12|
|6 months  |CMIN           |BANGLADESH   |Low birthweight            |       1|      0|    12|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |       0|   4893|  6252|
|6 months  |COHORTS        |INDIA        |Normal or high birthweight |       1|    107|  6252|
|6 months  |COHORTS        |INDIA        |Low birthweight            |       0|   1156|  6252|
|6 months  |COHORTS        |INDIA        |Low birthweight            |       1|     96|  6252|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |       0|    701|   774|
|6 months  |COHORTS        |GUATEMALA    |Normal or high birthweight |       1|      3|   774|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |       0|     70|   774|
|6 months  |COHORTS        |GUATEMALA    |Low birthweight            |       1|      0|   774|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |       0|   2387|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |       1|     29|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |       0|    242|  2664|
|6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |       1|      6|  2664|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |       0|      2|     2|
|6 months  |CONTENT        |PERU         |Normal or high birthweight |       1|      0|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |       0|      0|     2|
|6 months  |CONTENT        |PERU         |Low birthweight            |       1|      0|     2|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |       0|    236|   374|
|6 months  |EE             |PAKISTAN     |Normal or high birthweight |       1|      7|   374|
|6 months  |EE             |PAKISTAN     |Low birthweight            |       0|    125|   374|
|6 months  |EE             |PAKISTAN     |Low birthweight            |       1|      6|   374|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |       0|    383|   563|
|6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |       1|      3|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |       0|    173|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |       1|      4|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       0|   8235| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       1|     80| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |       0|   5672| 14105|
|6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |       1|    118| 14105|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       0|   2988|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       1|     17|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |       0|   1029|  4045|
|6 months  |JiVitA-4       |BANGLADESH   |Low birthweight            |       1|     11|  4045|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |       0|   1132|  1334|
|6 months  |Keneba         |GAMBIA       |Normal or high birthweight |       1|     14|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |       0|    183|  1334|
|6 months  |Keneba         |GAMBIA       |Low birthweight            |       1|      5|  1334|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |       0|    187|   227|
|6 months  |MAL-ED         |INDIA        |Normal or high birthweight |       1|      6|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |       0|     34|   227|
|6 months  |MAL-ED         |INDIA        |Low birthweight            |       1|      0|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |       0|    186|   238|
|6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |       1|      2|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |       0|     50|   238|
|6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |       1|      0|   238|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |       0|    254|   270|
|6 months  |MAL-ED         |PERU         |Normal or high birthweight |       1|      0|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |       0|     16|   270|
|6 months  |MAL-ED         |PERU         |Low birthweight            |       1|      0|   270|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |       0|    210|   229|
|6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |       1|      0|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |       0|     19|   229|
|6 months  |MAL-ED         |NEPAL        |Low birthweight            |       1|      0|   229|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |       0|    199|   209|
|6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |       0|     10|   209|
|6 months  |MAL-ED         |BRAZIL       |Low birthweight            |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |       0|    177|   186|
|6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |       1|      0|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |       0|      9|   186|
|6 months  |MAL-ED         |TANZANIA     |Low birthweight            |       1|      0|   186|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       0|    235|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       1|      3|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |       0|     15|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |       1|      0|   253|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       0|    353|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       1|      3|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |       0|    159|   518|
|6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |       1|      3|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       0|    545|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |       0|    170|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |       0|  15748| 15757|
|6 months  |PROBIT         |BELARUS      |Normal or high birthweight |       1|      9| 15757|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |       0|      0| 15757|
|6 months  |PROBIT         |BELARUS      |Low birthweight            |       1|      0| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |       0|    458|   603|
|6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |       1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |       0|    140|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |       1|      3|   603|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |       0|     28|    34|
|6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |       1|      1|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |       0|      5|    34|
|6 months  |ResPak         |PAKISTAN     |Low birthweight            |       1|      0|    34|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |       0|    978|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Normal or high birthweight |       1|     23|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |       0|    304|  1324|
|6 months  |SAS-CompFeed   |INDIA        |Low birthweight            |       1|     19|  1324|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       0|   1932|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       1|     11|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |       0|     66|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |       1|      1|  2010|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |       0|    318|   402|
|6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |       1|     16|   402|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |       0|     63|   402|
|6 months  |Vellore Crypto |INDIA        |Low birthweight            |       1|      5|   402|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       0|   7337|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       1|     68|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       0|   1057|  8473|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       1|     11|  8473|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       0|    319|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |       1|      2|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       0|     42|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |       1|      1|   364|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |       0|      7|    11|
|24 months |CMIN           |BANGLADESH   |Normal or high birthweight |       1|      0|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |       0|      4|    11|
|24 months |CMIN           |BANGLADESH   |Low birthweight            |       1|      0|    11|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |       0|   3880|  4821|
|24 months |COHORTS        |INDIA        |Normal or high birthweight |       1|     31|  4821|
|24 months |COHORTS        |INDIA        |Low birthweight            |       0|    890|  4821|
|24 months |COHORTS        |INDIA        |Low birthweight            |       1|     20|  4821|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |       0|    593|   657|
|24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |       1|      2|   657|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |       0|     62|   657|
|24 months |COHORTS        |GUATEMALA    |Low birthweight            |       1|      0|   657|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |       0|   2174|  2410|
|24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |       1|     21|  2410|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |       0|    212|  2410|
|24 months |COHORTS        |PHILIPPINES  |Low birthweight            |       1|      3|  2410|
|24 months |CONTENT        |PERU         |Normal or high birthweight |       0|      2|     2|
|24 months |CONTENT        |PERU         |Normal or high birthweight |       1|      0|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |       0|      0|     2|
|24 months |CONTENT        |PERU         |Low birthweight            |       1|      0|     2|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |       0|     98|   168|
|24 months |EE             |PAKISTAN     |Normal or high birthweight |       1|      3|   168|
|24 months |EE             |PAKISTAN     |Low birthweight            |       0|     66|   168|
|24 months |EE             |PAKISTAN     |Low birthweight            |       1|      1|   168|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |       0|    334|   486|
|24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |       1|     11|   486|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |       0|    137|   486|
|24 months |GMS-Nepal      |NEPAL        |Low birthweight            |       1|      4|   486|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       0|   4125|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |       1|     91|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |       0|   2879|  7282|
|24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |       1|    187|  7282|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       0|   2888|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |       1|     56|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |       0|    998|  3997|
|24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |       1|     55|  3997|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |       0|    890|  1057|
|24 months |Keneba         |GAMBIA       |Normal or high birthweight |       1|     15|  1057|
|24 months |Keneba         |GAMBIA       |Low birthweight            |       0|    146|  1057|
|24 months |Keneba         |GAMBIA       |Low birthweight            |       1|      6|  1057|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |       0|    184|   218|
|24 months |MAL-ED         |INDIA        |Normal or high birthweight |       1|      1|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |       0|     32|   218|
|24 months |MAL-ED         |INDIA        |Low birthweight            |       1|      1|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |       0|    165|   210|
|24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |       1|      0|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |       0|     45|   210|
|24 months |MAL-ED         |BANGLADESH   |Low birthweight            |       1|      0|   210|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |       0|    186|   199|
|24 months |MAL-ED         |PERU         |Normal or high birthweight |       1|      1|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |       0|     11|   199|
|24 months |MAL-ED         |PERU         |Low birthweight            |       1|      1|   199|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |       0|    203|   221|
|24 months |MAL-ED         |NEPAL        |Normal or high birthweight |       1|      0|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |       0|     18|   221|
|24 months |MAL-ED         |NEPAL        |Low birthweight            |       1|      0|   221|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |       0|    160|   169|
|24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |       0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |Low birthweight            |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |       0|    154|   162|
|24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |       1|      0|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |       0|      8|   162|
|24 months |MAL-ED         |TANZANIA     |Low birthweight            |       1|      0|   162|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       0|    224|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |       1|      0|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |       0|     13|   237|
|24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |       1|      0|   237|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       0|    276|   413|
|24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |       1|      2|   413|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |       0|    127|   413|
|24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |       1|      8|   413|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       0|    387|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |       1|      1|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |       0|    123|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |       1|      3|   514|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |       0|   3963|  3970|
|24 months |PROBIT         |BELARUS      |Normal or high birthweight |       1|      7|  3970|
|24 months |PROBIT         |BELARUS      |Low birthweight            |       0|      0|  3970|
|24 months |PROBIT         |BELARUS      |Low birthweight            |       1|      0|  3970|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |       0|    437|   579|
|24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |       1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |       0|    133|   579|
|24 months |PROVIDE        |BANGLADESH   |Low birthweight            |       1|      6|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |       0|    332|   403|
|24 months |Vellore Crypto |INDIA        |Normal or high birthweight |       1|      3|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |       0|     66|   403|
|24 months |Vellore Crypto |INDIA        |Low birthweight            |       1|      2|   403|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       0|    312|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |       1|     25|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       0|     88|   431|
|24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |       1|      6|   431|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


