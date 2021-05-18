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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mage    | swasted| n_cell|     n|
|:---------|:--------------|:------------|:-------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |       0|     60|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |       0|     15|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |       0|     10|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |       1|      0|    86|
|Birth     |COHORTS        |INDIA        |[20-30) |       0|   2958|  5142|
|Birth     |COHORTS        |INDIA        |[20-30) |       1|    168|  5142|
|Birth     |COHORTS        |INDIA        |<20     |       0|    762|  5142|
|Birth     |COHORTS        |INDIA        |<20     |       1|     50|  5142|
|Birth     |COHORTS        |INDIA        |>=30    |       0|   1142|  5142|
|Birth     |COHORTS        |INDIA        |>=30    |       1|     62|  5142|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |       0|    318|   753|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |       1|     25|   753|
|Birth     |COHORTS        |GUATEMALA    |<20     |       0|    134|   753|
|Birth     |COHORTS        |GUATEMALA    |<20     |       1|     18|   753|
|Birth     |COHORTS        |GUATEMALA    |>=30    |       0|    241|   753|
|Birth     |COHORTS        |GUATEMALA    |>=30    |       1|     17|   753|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |       0|   1437|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |       1|     66|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<20     |       0|    474|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<20     |       1|     24|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |       0|    867|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |       1|     31|  2899|
|Birth     |EE             |PAKISTAN     |[20-30) |       0|     68|   177|
|Birth     |EE             |PAKISTAN     |[20-30) |       1|      3|   177|
|Birth     |EE             |PAKISTAN     |<20     |       0|      2|   177|
|Birth     |EE             |PAKISTAN     |<20     |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |>=30    |       0|    101|   177|
|Birth     |EE             |PAKISTAN     |>=30    |       1|      3|   177|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |       0|    364|   641|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |       1|     21|   641|
|Birth     |GMS-Nepal      |NEPAL        |<20     |       0|    154|   641|
|Birth     |GMS-Nepal      |NEPAL        |<20     |       1|      5|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |       0|     96|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |       1|      1|   641|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |       0|   8087| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |       1|    163| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |       0|   7998| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |       1|    158| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |       0|   1577| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |       1|     28| 18011|
|Birth     |Keneba         |GAMBIA       |[20-30) |       0|    443|  1464|
|Birth     |Keneba         |GAMBIA       |[20-30) |       1|     28|  1464|
|Birth     |Keneba         |GAMBIA       |<20     |       0|    133|  1464|
|Birth     |Keneba         |GAMBIA       |<20     |       1|      6|  1464|
|Birth     |Keneba         |GAMBIA       |>=30    |       0|    786|  1464|
|Birth     |Keneba         |GAMBIA       |>=30    |       1|     68|  1464|
|Birth     |MAL-ED         |INDIA        |[20-30) |       0|     29|    45|
|Birth     |MAL-ED         |INDIA        |[20-30) |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |<20     |       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |<20     |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |>=30    |       0|     10|    45|
|Birth     |MAL-ED         |INDIA        |>=30    |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |       0|    118|   215|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |       1|      5|   215|
|Birth     |MAL-ED         |BANGLADESH   |<20     |       0|     30|   215|
|Birth     |MAL-ED         |BANGLADESH   |<20     |       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |       0|     59|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |       1|      2|   215|
|Birth     |MAL-ED         |PERU         |[20-30) |       0|    109|   228|
|Birth     |MAL-ED         |PERU         |[20-30) |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |<20     |       0|     39|   228|
|Birth     |MAL-ED         |PERU         |<20     |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |>=30    |       0|     80|   228|
|Birth     |MAL-ED         |PERU         |>=30    |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |[20-30) |       0|     15|    26|
|Birth     |MAL-ED         |NEPAL        |[20-30) |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |<20     |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |<20     |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |>=30    |       0|      9|    26|
|Birth     |MAL-ED         |NEPAL        |>=30    |       1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |       0|     32|    62|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<20     |       0|      9|    62|
|Birth     |MAL-ED         |BRAZIL       |<20     |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |>=30    |       0|     21|    62|
|Birth     |MAL-ED         |BRAZIL       |>=30    |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |       0|     53|   115|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |<20     |       0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |<20     |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |>=30    |       0|     53|   115|
|Birth     |MAL-ED         |TANZANIA     |>=30    |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |       0|     52|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |       0|     15|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |       0|     53|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |       0|    319|   574|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |       1|     23|   574|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |       0|    108|   574|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |       1|      3|   574|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |       0|    109|   574|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |       1|     12|   574|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |       0|    446|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |       1|     34|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |       0|     57|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |       1|      3|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |       0|    157|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |       1|     10|   707|
|Birth     |PROBIT         |BELARUS      |[20-30) |       0|   9169| 13817|
|Birth     |PROBIT         |BELARUS      |[20-30) |       1|    653| 13817|
|Birth     |PROBIT         |BELARUS      |<20     |       0|   1373| 13817|
|Birth     |PROBIT         |BELARUS      |<20     |       1|    106| 13817|
|Birth     |PROBIT         |BELARUS      |>=30    |       0|   2356| 13817|
|Birth     |PROBIT         |BELARUS      |>=30    |       1|    160| 13817|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |       0|    338|   532|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |       1|      6|   532|
|Birth     |PROVIDE        |BANGLADESH   |<20     |       0|     52|   532|
|Birth     |PROVIDE        |BANGLADESH   |<20     |       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |       0|    129|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |       1|      6|   532|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |       0|    794|  1102|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |       1|     18|  1102|
|Birth     |SAS-CompFeed   |INDIA        |<20     |       0|    160|  1102|
|Birth     |SAS-CompFeed   |INDIA        |<20     |       1|      4|  1102|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |       0|    119|  1102|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |       1|      7|  1102|
|Birth     |Vellore Crypto |INDIA        |[20-30) |       0|    196|   343|
|Birth     |Vellore Crypto |INDIA        |[20-30) |       1|     39|   343|
|Birth     |Vellore Crypto |INDIA        |<20     |       0|     41|   343|
|Birth     |Vellore Crypto |INDIA        |<20     |       1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |>=30    |       0|     52|   343|
|Birth     |Vellore Crypto |INDIA        |>=30    |       1|      8|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |       0|   8363| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |       1|    561| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |       0|   2225| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |       1|    143| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |       0|   1520| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |       1|     88| 12900|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |       0|    257|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |       1|      5|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |       0|     63|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |       1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |       0|     36|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |       1|      4|   368|
|6 months  |COHORTS        |INDIA        |[20-30) |       0|   3332|  5690|
|6 months  |COHORTS        |INDIA        |[20-30) |       1|    102|  5690|
|6 months  |COHORTS        |INDIA        |<20     |       0|    888|  5690|
|6 months  |COHORTS        |INDIA        |<20     |       1|     27|  5690|
|6 months  |COHORTS        |INDIA        |>=30    |       0|   1297|  5690|
|6 months  |COHORTS        |INDIA        |>=30    |       1|     44|  5690|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |       0|    410|   960|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |       1|      3|   960|
|6 months  |COHORTS        |GUATEMALA    |<20     |       0|    199|   960|
|6 months  |COHORTS        |GUATEMALA    |<20     |       1|      2|   960|
|6 months  |COHORTS        |GUATEMALA    |>=30    |       0|    345|   960|
|6 months  |COHORTS        |GUATEMALA    |>=30    |       1|      1|   960|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |       0|   1397|  2706|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |       1|     15|  2706|
|6 months  |COHORTS        |PHILIPPINES  |<20     |       0|    461|  2706|
|6 months  |COHORTS        |PHILIPPINES  |<20     |       1|      6|  2706|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |       0|    813|  2706|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |       1|     14|  2706|
|6 months  |EE             |PAKISTAN     |[20-30) |       0|    151|   374|
|6 months  |EE             |PAKISTAN     |[20-30) |       1|      5|   374|
|6 months  |EE             |PAKISTAN     |<20     |       0|      2|   374|
|6 months  |EE             |PAKISTAN     |<20     |       1|      0|   374|
|6 months  |EE             |PAKISTAN     |>=30    |       0|    208|   374|
|6 months  |EE             |PAKISTAN     |>=30    |       1|      8|   374|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |       0|    328|   564|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |       1|      7|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |       0|    141|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |       0|     88|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |       1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |       0|    146|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |       1|      0|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |       0|     58|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |       1|      0|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |       0|     82|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |       1|      0|   286|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |       0|   7393| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |       1|    104| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |       0|   7894| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |       1|    110| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |       0|   1264| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |       1|     16| 16781|
|6 months  |Keneba         |GAMBIA       |[20-30) |       0|    656|  2086|
|6 months  |Keneba         |GAMBIA       |[20-30) |       1|      8|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |       0|    193|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |       1|      2|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |       0|   1203|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |       1|     24|  2086|
|6 months  |LCNI-5         |MALAWI       |[20-30) |       0|    400|   760|
|6 months  |LCNI-5         |MALAWI       |[20-30) |       1|      0|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |       0|    154|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |       1|      0|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |       0|    206|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |       1|      0|   760|
|6 months  |MAL-ED         |INDIA        |[20-30) |       0|    148|   236|
|6 months  |MAL-ED         |INDIA        |[20-30) |       1|      3|   236|
|6 months  |MAL-ED         |INDIA        |<20     |       0|     36|   236|
|6 months  |MAL-ED         |INDIA        |<20     |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |       0|     46|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |       1|      3|   236|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |       0|    139|   241|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |       1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |       0|     35|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |       0|     65|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |       1|      0|   241|
|6 months  |MAL-ED         |PERU         |[20-30) |       0|    136|   273|
|6 months  |MAL-ED         |PERU         |[20-30) |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |<20     |       0|     44|   273|
|6 months  |MAL-ED         |PERU         |<20     |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |>=30    |       0|     93|   273|
|6 months  |MAL-ED         |PERU         |>=30    |       1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |[20-30) |       0|    146|   236|
|6 months  |MAL-ED         |NEPAL        |[20-30) |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |       0|      9|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |       0|     81|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |       0|    110|   209|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |       0|     23|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |       0|     76|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |       0|    106|   247|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |       0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |       0|    129|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |       1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |       0|    114|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |       0|     31|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |       0|    106|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |       1|      1|   254|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |       0|    319|   536|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |       1|      4|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |       0|     99|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |       1|      1|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |       0|    112|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |       1|      1|   536|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |       0|    487|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |       0|     59|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |       0|    169|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |[20-30) |       0|  11254| 15757|
|6 months  |PROBIT         |BELARUS      |[20-30) |       1|      8| 15757|
|6 months  |PROBIT         |BELARUS      |<20     |       0|   1704| 15757|
|6 months  |PROBIT         |BELARUS      |<20     |       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |>=30    |       0|   2790| 15757|
|6 months  |PROBIT         |BELARUS      |>=30    |       1|      0| 15757|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |       0|    388|   603|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |       1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |<20     |       0|     60|   603|
|6 months  |PROVIDE        |BANGLADESH   |<20     |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |       0|    150|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |       1|      2|   603|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |       0|    945|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |       1|     33|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<20     |       0|    198|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<20     |       1|      6|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |       0|    148|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |       1|      4|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |       0|    227|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |       1|     16|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |       0|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |       1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |       0|    111|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |       1|      2|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |       0|   1079|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |       1|      9|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |       0|    336|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |       1|      0|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |       0|    599|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |       1|      3|  2026|
|6 months  |Vellore Crypto |INDIA        |[20-30) |       0|    266|   408|
|6 months  |Vellore Crypto |INDIA        |[20-30) |       1|     14|   408|
|6 months  |Vellore Crypto |INDIA        |<20     |       0|     52|   408|
|6 months  |Vellore Crypto |INDIA        |<20     |       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |>=30    |       0|     68|   408|
|6 months  |Vellore Crypto |INDIA        |>=30    |       1|      7|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |       0|   5829|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |       1|     47|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |       0|   1466|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |       1|     21|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |       0|   1119|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |       1|     11|  8493|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |       0|    263|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |       1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |       0|     66|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |       1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |       0|     40|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |       1|      0|   372|
|24 months |COHORTS        |INDIA        |[20-30) |       0|   2622|  4376|
|24 months |COHORTS        |INDIA        |[20-30) |       1|     24|  4376|
|24 months |COHORTS        |INDIA        |<20     |       0|    703|  4376|
|24 months |COHORTS        |INDIA        |<20     |       1|      5|  4376|
|24 months |COHORTS        |INDIA        |>=30    |       0|   1005|  4376|
|24 months |COHORTS        |INDIA        |>=30    |       1|     17|  4376|
|24 months |COHORTS        |GUATEMALA    |[20-30) |       0|    462|  1076|
|24 months |COHORTS        |GUATEMALA    |[20-30) |       1|      2|  1076|
|24 months |COHORTS        |GUATEMALA    |<20     |       0|    213|  1076|
|24 months |COHORTS        |GUATEMALA    |<20     |       1|      1|  1076|
|24 months |COHORTS        |GUATEMALA    |>=30    |       0|    397|  1076|
|24 months |COHORTS        |GUATEMALA    |>=30    |       1|      1|  1076|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |       0|   1260|  2449|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |       1|     11|  2449|
|24 months |COHORTS        |PHILIPPINES  |<20     |       0|    416|  2449|
|24 months |COHORTS        |PHILIPPINES  |<20     |       1|      3|  2449|
|24 months |COHORTS        |PHILIPPINES  |>=30    |       0|    748|  2449|
|24 months |COHORTS        |PHILIPPINES  |>=30    |       1|     11|  2449|
|24 months |EE             |PAKISTAN     |[20-30) |       0|     64|   168|
|24 months |EE             |PAKISTAN     |[20-30) |       1|      1|   168|
|24 months |EE             |PAKISTAN     |<20     |       0|      2|   168|
|24 months |EE             |PAKISTAN     |<20     |       1|      0|   168|
|24 months |EE             |PAKISTAN     |>=30    |       0|     98|   168|
|24 months |EE             |PAKISTAN     |>=30    |       1|      3|   168|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |       0|    281|   487|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |       1|      7|   487|
|24 months |GMS-Nepal      |NEPAL        |<20     |       0|    119|   487|
|24 months |GMS-Nepal      |NEPAL        |<20     |       1|      5|   487|
|24 months |GMS-Nepal      |NEPAL        |>=30    |       0|     72|   487|
|24 months |GMS-Nepal      |NEPAL        |>=30    |       1|      3|   487|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |       0|   3768|  8601|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |       1|    155|  8601|
|24 months |JiVitA-3       |BANGLADESH   |<20     |       0|   3800|  8601|
|24 months |JiVitA-3       |BANGLADESH   |<20     |       1|    154|  8601|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |       0|    698|  8601|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |       1|     26|  8601|
|24 months |Keneba         |GAMBIA       |[20-30) |       0|    550|  1724|
|24 months |Keneba         |GAMBIA       |[20-30) |       1|      6|  1724|
|24 months |Keneba         |GAMBIA       |<20     |       0|    150|  1724|
|24 months |Keneba         |GAMBIA       |<20     |       1|      1|  1724|
|24 months |Keneba         |GAMBIA       |>=30    |       0|    994|  1724|
|24 months |Keneba         |GAMBIA       |>=30    |       1|     23|  1724|
|24 months |LCNI-5         |MALAWI       |[20-30) |       0|    258|   511|
|24 months |LCNI-5         |MALAWI       |[20-30) |       1|      0|   511|
|24 months |LCNI-5         |MALAWI       |<20     |       0|    108|   511|
|24 months |LCNI-5         |MALAWI       |<20     |       1|      1|   511|
|24 months |LCNI-5         |MALAWI       |>=30    |       0|    144|   511|
|24 months |LCNI-5         |MALAWI       |>=30    |       1|      0|   511|
|24 months |MAL-ED         |INDIA        |[20-30) |       0|    141|   227|
|24 months |MAL-ED         |INDIA        |[20-30) |       1|      2|   227|
|24 months |MAL-ED         |INDIA        |<20     |       0|     36|   227|
|24 months |MAL-ED         |INDIA        |<20     |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |>=30    |       0|     48|   227|
|24 months |MAL-ED         |INDIA        |>=30    |       1|      0|   227|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |       0|    125|   212|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |       0|     31|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |       0|     56|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |       1|      0|   212|
|24 months |MAL-ED         |PERU         |[20-30) |       0|     97|   201|
|24 months |MAL-ED         |PERU         |[20-30) |       1|      0|   201|
|24 months |MAL-ED         |PERU         |<20     |       0|     32|   201|
|24 months |MAL-ED         |PERU         |<20     |       1|      1|   201|
|24 months |MAL-ED         |PERU         |>=30    |       0|     70|   201|
|24 months |MAL-ED         |PERU         |>=30    |       1|      1|   201|
|24 months |MAL-ED         |NEPAL        |[20-30) |       0|    141|   228|
|24 months |MAL-ED         |NEPAL        |[20-30) |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |<20     |       0|      9|   228|
|24 months |MAL-ED         |NEPAL        |<20     |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |       0|     78|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |[20-30) |       0|     90|   169|
|24 months |MAL-ED         |BRAZIL       |[20-30) |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |       0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |       0|     61|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |[20-30) |       0|     87|   214|
|24 months |MAL-ED         |TANZANIA     |[20-30) |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |       0|     10|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |       0|    117|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |       1|      0|   214|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |       0|    108|   238|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |       0|     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |       0|     99|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |       1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |       0|    251|   427|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |       1|      5|   427|
|24 months |NIH-Birth      |BANGLADESH   |<20     |       0|     76|   427|
|24 months |NIH-Birth      |BANGLADESH   |<20     |       1|      4|   427|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |       0|     90|   427|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |       1|      1|   427|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |       0|    346|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |       1|      3|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |       0|     49|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |       1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |       0|    115|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |       1|      1|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |       0|   2808|  3970|
|24 months |PROBIT         |BELARUS      |[20-30) |       1|      3|  3970|
|24 months |PROBIT         |BELARUS      |<20     |       0|    429|  3970|
|24 months |PROBIT         |BELARUS      |<20     |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |>=30    |       0|    726|  3970|
|24 months |PROBIT         |BELARUS      |>=30    |       1|      3|  3970|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |       0|    368|   579|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |       1|      7|   579|
|24 months |PROVIDE        |BANGLADESH   |<20     |       0|     58|   579|
|24 months |PROVIDE        |BANGLADESH   |<20     |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |>=30    |       0|    144|   579|
|24 months |PROVIDE        |BANGLADESH   |>=30    |       1|      1|   579|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |       0|    277|   409|
|24 months |Vellore Crypto |INDIA        |[20-30) |       1|      3|   409|
|24 months |Vellore Crypto |INDIA        |<20     |       0|     53|   409|
|24 months |Vellore Crypto |INDIA        |<20     |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |       0|     74|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |       1|      1|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |       0|    273|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |       1|     19|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |       0|     72|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |       1|      5|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |       0|     57|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |       1|      6|   432|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


