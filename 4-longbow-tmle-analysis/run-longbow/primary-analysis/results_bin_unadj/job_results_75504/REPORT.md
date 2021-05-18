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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |mage    | wasted| n_cell|     n|
|:---------|:--------------|:------------|:-------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |      0|     54|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |      1|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |      0|     13|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |      1|      2|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |      1|      2|    86|
|Birth     |COHORTS        |INDIA        |[20-30) |      0|   2559|  5142|
|Birth     |COHORTS        |INDIA        |[20-30) |      1|    567|  5142|
|Birth     |COHORTS        |INDIA        |<20     |      0|    665|  5142|
|Birth     |COHORTS        |INDIA        |<20     |      1|    147|  5142|
|Birth     |COHORTS        |INDIA        |>=30    |      0|    986|  5142|
|Birth     |COHORTS        |INDIA        |>=30    |      1|    218|  5142|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |      0|    254|   753|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |      1|     89|   753|
|Birth     |COHORTS        |GUATEMALA    |<20     |      0|    111|   753|
|Birth     |COHORTS        |GUATEMALA    |<20     |      1|     41|   753|
|Birth     |COHORTS        |GUATEMALA    |>=30    |      0|    198|   753|
|Birth     |COHORTS        |GUATEMALA    |>=30    |      1|     60|   753|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |      0|   1266|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |      1|    237|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<20     |      0|    409|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<20     |      1|     89|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |      0|    773|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |      1|    125|  2899|
|Birth     |EE             |PAKISTAN     |[20-30) |      0|     64|   177|
|Birth     |EE             |PAKISTAN     |[20-30) |      1|      7|   177|
|Birth     |EE             |PAKISTAN     |<20     |      0|      2|   177|
|Birth     |EE             |PAKISTAN     |<20     |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |>=30    |      0|     89|   177|
|Birth     |EE             |PAKISTAN     |>=30    |      1|     15|   177|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |      0|    303|   641|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |      1|     82|   641|
|Birth     |GMS-Nepal      |NEPAL        |<20     |      0|    131|   641|
|Birth     |GMS-Nepal      |NEPAL        |<20     |      1|     28|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |      0|     75|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |      1|     22|   641|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |      0|   7327| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |      1|    923| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |      0|   7303| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |      1|    853| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |      0|   1408| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |      1|    197| 18011|
|Birth     |Keneba         |GAMBIA       |[20-30) |      0|    356|  1464|
|Birth     |Keneba         |GAMBIA       |[20-30) |      1|    115|  1464|
|Birth     |Keneba         |GAMBIA       |<20     |      0|    100|  1464|
|Birth     |Keneba         |GAMBIA       |<20     |      1|     39|  1464|
|Birth     |Keneba         |GAMBIA       |>=30    |      0|    645|  1464|
|Birth     |Keneba         |GAMBIA       |>=30    |      1|    209|  1464|
|Birth     |MAL-ED         |INDIA        |[20-30) |      0|     26|    45|
|Birth     |MAL-ED         |INDIA        |[20-30) |      1|      3|    45|
|Birth     |MAL-ED         |INDIA        |<20     |      0|      6|    45|
|Birth     |MAL-ED         |INDIA        |<20     |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |>=30    |      0|      8|    45|
|Birth     |MAL-ED         |INDIA        |>=30    |      1|      2|    45|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |      0|    105|   215|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |      1|     18|   215|
|Birth     |MAL-ED         |BANGLADESH   |<20     |      0|     23|   215|
|Birth     |MAL-ED         |BANGLADESH   |<20     |      1|      8|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |      0|     51|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |      1|     10|   215|
|Birth     |MAL-ED         |PERU         |[20-30) |      0|    106|   228|
|Birth     |MAL-ED         |PERU         |[20-30) |      1|      3|   228|
|Birth     |MAL-ED         |PERU         |<20     |      0|     38|   228|
|Birth     |MAL-ED         |PERU         |<20     |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |>=30    |      0|     79|   228|
|Birth     |MAL-ED         |PERU         |>=30    |      1|      1|   228|
|Birth     |MAL-ED         |NEPAL        |[20-30) |      0|     14|    26|
|Birth     |MAL-ED         |NEPAL        |[20-30) |      1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |<20     |      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |<20     |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |>=30    |      0|      9|    26|
|Birth     |MAL-ED         |NEPAL        |>=30    |      1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |      0|     31|    62|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |<20     |      0|      9|    62|
|Birth     |MAL-ED         |BRAZIL       |<20     |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |>=30    |      0|     20|    62|
|Birth     |MAL-ED         |BRAZIL       |>=30    |      1|      1|    62|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |      0|     53|   115|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |<20     |      0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |<20     |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |>=30    |      0|     52|   115|
|Birth     |MAL-ED         |TANZANIA     |>=30    |      1|      1|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |      0|     46|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |      1|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |      0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |      0|     49|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |      1|      4|   120|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |      0|    241|   574|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |      1|    101|   574|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |      0|     83|   574|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |      1|     28|   574|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |      0|     82|   574|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |      1|     39|   574|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |      0|    359|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |      1|    121|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |      0|     46|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |      1|     14|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |      0|    130|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |      1|     37|   707|
|Birth     |PROBIT         |BELARUS      |[20-30) |      0|   7757| 13817|
|Birth     |PROBIT         |BELARUS      |[20-30) |      1|   2065| 13817|
|Birth     |PROBIT         |BELARUS      |<20     |      0|   1154| 13817|
|Birth     |PROBIT         |BELARUS      |<20     |      1|    325| 13817|
|Birth     |PROBIT         |BELARUS      |>=30    |      0|   2000| 13817|
|Birth     |PROBIT         |BELARUS      |>=30    |      1|    516| 13817|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |      0|    277|   532|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |      1|     67|   532|
|Birth     |PROVIDE        |BANGLADESH   |<20     |      0|     36|   532|
|Birth     |PROVIDE        |BANGLADESH   |<20     |      1|     17|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |      0|    102|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |      1|     33|   532|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |      0|    722|  1102|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |      1|     90|  1102|
|Birth     |SAS-CompFeed   |INDIA        |<20     |      0|    149|  1102|
|Birth     |SAS-CompFeed   |INDIA        |<20     |      1|     15|  1102|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |      0|    113|  1102|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |      1|     13|  1102|
|Birth     |Vellore Crypto |INDIA        |[20-30) |      0|    168|   343|
|Birth     |Vellore Crypto |INDIA        |[20-30) |      1|     67|   343|
|Birth     |Vellore Crypto |INDIA        |<20     |      0|     38|   343|
|Birth     |Vellore Crypto |INDIA        |<20     |      1|     10|   343|
|Birth     |Vellore Crypto |INDIA        |>=30    |      0|     45|   343|
|Birth     |Vellore Crypto |INDIA        |>=30    |      1|     15|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |      0|   7477| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |      1|   1447| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |      0|   1991| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |      1|    377| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |      0|   1371| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |      1|    237| 12900|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |      0|    234|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |      1|     28|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |      0|     57|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |      1|      9|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |      0|     31|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |      1|      9|   368|
|6 months  |COHORTS        |INDIA        |[20-30) |      0|   2994|  5690|
|6 months  |COHORTS        |INDIA        |[20-30) |      1|    440|  5690|
|6 months  |COHORTS        |INDIA        |<20     |      0|    800|  5690|
|6 months  |COHORTS        |INDIA        |<20     |      1|    115|  5690|
|6 months  |COHORTS        |INDIA        |>=30    |      0|   1174|  5690|
|6 months  |COHORTS        |INDIA        |>=30    |      1|    167|  5690|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |      0|    396|   960|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |      1|     17|   960|
|6 months  |COHORTS        |GUATEMALA    |<20     |      0|    194|   960|
|6 months  |COHORTS        |GUATEMALA    |<20     |      1|      7|   960|
|6 months  |COHORTS        |GUATEMALA    |>=30    |      0|    339|   960|
|6 months  |COHORTS        |GUATEMALA    |>=30    |      1|      7|   960|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |      0|   1327|  2706|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |      1|     85|  2706|
|6 months  |COHORTS        |PHILIPPINES  |<20     |      0|    444|  2706|
|6 months  |COHORTS        |PHILIPPINES  |<20     |      1|     23|  2706|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |      0|    774|  2706|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |      1|     53|  2706|
|6 months  |EE             |PAKISTAN     |[20-30) |      0|    137|   374|
|6 months  |EE             |PAKISTAN     |[20-30) |      1|     19|   374|
|6 months  |EE             |PAKISTAN     |<20     |      0|      2|   374|
|6 months  |EE             |PAKISTAN     |<20     |      1|      0|   374|
|6 months  |EE             |PAKISTAN     |>=30    |      0|    188|   374|
|6 months  |EE             |PAKISTAN     |>=30    |      1|     28|   374|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |      0|    302|   564|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |      1|     33|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |      0|    129|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |      1|     12|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |      0|     82|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |      1|      6|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |      0|    144|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |      1|      2|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |      0|     57|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |      1|      1|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |      0|     81|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |      1|      1|   286|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |      0|   6849| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |      1|    648| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |      0|   7344| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |      1|    660| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |      0|   1168| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |      1|    112| 16781|
|6 months  |Keneba         |GAMBIA       |[20-30) |      0|    628|  2086|
|6 months  |Keneba         |GAMBIA       |[20-30) |      1|     36|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |      0|    186|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |      1|      9|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |      0|   1151|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |      1|     76|  2086|
|6 months  |LCNI-5         |MALAWI       |[20-30) |      0|    394|   760|
|6 months  |LCNI-5         |MALAWI       |[20-30) |      1|      6|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |      0|    149|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |      1|      5|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |      0|    204|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |      1|      2|   760|
|6 months  |MAL-ED         |INDIA        |[20-30) |      0|    140|   236|
|6 months  |MAL-ED         |INDIA        |[20-30) |      1|     11|   236|
|6 months  |MAL-ED         |INDIA        |<20     |      0|     33|   236|
|6 months  |MAL-ED         |INDIA        |<20     |      1|      3|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |      0|     44|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |      1|      5|   236|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |      0|    136|   241|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |      1|      5|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |      0|     34|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |      0|     63|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |      1|      2|   241|
|6 months  |MAL-ED         |PERU         |[20-30) |      0|    136|   273|
|6 months  |MAL-ED         |PERU         |[20-30) |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |<20     |      0|     44|   273|
|6 months  |MAL-ED         |PERU         |<20     |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |>=30    |      0|     93|   273|
|6 months  |MAL-ED         |PERU         |>=30    |      1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |[20-30) |      0|    144|   236|
|6 months  |MAL-ED         |NEPAL        |[20-30) |      1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |      0|      8|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |      0|     80|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |      1|      1|   236|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |      0|    109|   209|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |      0|     23|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |      0|     76|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |      0|    105|   247|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |      1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |      0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |      0|    129|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |      1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |      0|    112|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |      1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |      0|     30|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |      1|      3|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |      0|    105|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |      1|      2|   254|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |      0|    305|   536|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |      1|     18|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |      0|     88|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |      1|     12|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |      0|    108|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |      1|      5|   536|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |      0|    473|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |      1|     14|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |      0|     58|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |      1|      1|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |      0|    163|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |      1|      6|   715|
|6 months  |PROBIT         |BELARUS      |[20-30) |      0|  11189| 15757|
|6 months  |PROBIT         |BELARUS      |[20-30) |      1|     73| 15757|
|6 months  |PROBIT         |BELARUS      |<20     |      0|   1688| 15757|
|6 months  |PROBIT         |BELARUS      |<20     |      1|     17| 15757|
|6 months  |PROBIT         |BELARUS      |>=30    |      0|   2772| 15757|
|6 months  |PROBIT         |BELARUS      |>=30    |      1|     18| 15757|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |      0|    374|   603|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |      1|     17|   603|
|6 months  |PROVIDE        |BANGLADESH   |<20     |      0|     59|   603|
|6 months  |PROVIDE        |BANGLADESH   |<20     |      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |      0|    145|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |      1|      7|   603|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |      0|    856|  1334|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |      1|    122|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<20     |      0|    179|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<20     |      1|     25|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |      0|    133|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |      1|     19|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |      0|    197|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |      1|     46|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |      0|     21|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |      1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |      0|     93|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |      1|     20|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |      0|   1040|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |      1|     48|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |      0|    323|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |      1|     13|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |      0|    576|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |      1|     26|  2026|
|6 months  |Vellore Crypto |INDIA        |[20-30) |      0|    248|   408|
|6 months  |Vellore Crypto |INDIA        |[20-30) |      1|     32|   408|
|6 months  |Vellore Crypto |INDIA        |<20     |      0|     46|   408|
|6 months  |Vellore Crypto |INDIA        |<20     |      1|      7|   408|
|6 months  |Vellore Crypto |INDIA        |>=30    |      0|     60|   408|
|6 months  |Vellore Crypto |INDIA        |>=30    |      1|     15|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |      0|   5708|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |      1|    168|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |      0|   1425|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |      1|     62|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |      0|   1096|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |      1|     34|  8493|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |      0|    249|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |      1|     16|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |      0|     61|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |      1|      6|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |      0|     39|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |      1|      1|   372|
|24 months |COHORTS        |INDIA        |[20-30) |      0|   2412|  4376|
|24 months |COHORTS        |INDIA        |[20-30) |      1|    234|  4376|
|24 months |COHORTS        |INDIA        |<20     |      0|    648|  4376|
|24 months |COHORTS        |INDIA        |<20     |      1|     60|  4376|
|24 months |COHORTS        |INDIA        |>=30    |      0|    915|  4376|
|24 months |COHORTS        |INDIA        |>=30    |      1|    107|  4376|
|24 months |COHORTS        |GUATEMALA    |[20-30) |      0|    444|  1076|
|24 months |COHORTS        |GUATEMALA    |[20-30) |      1|     20|  1076|
|24 months |COHORTS        |GUATEMALA    |<20     |      0|    202|  1076|
|24 months |COHORTS        |GUATEMALA    |<20     |      1|     12|  1076|
|24 months |COHORTS        |GUATEMALA    |>=30    |      0|    381|  1076|
|24 months |COHORTS        |GUATEMALA    |>=30    |      1|     17|  1076|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |      0|   1185|  2449|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |      1|     86|  2449|
|24 months |COHORTS        |PHILIPPINES  |<20     |      0|    387|  2449|
|24 months |COHORTS        |PHILIPPINES  |<20     |      1|     32|  2449|
|24 months |COHORTS        |PHILIPPINES  |>=30    |      0|    710|  2449|
|24 months |COHORTS        |PHILIPPINES  |>=30    |      1|     49|  2449|
|24 months |EE             |PAKISTAN     |[20-30) |      0|     53|   168|
|24 months |EE             |PAKISTAN     |[20-30) |      1|     12|   168|
|24 months |EE             |PAKISTAN     |<20     |      0|      1|   168|
|24 months |EE             |PAKISTAN     |<20     |      1|      1|   168|
|24 months |EE             |PAKISTAN     |>=30    |      0|     84|   168|
|24 months |EE             |PAKISTAN     |>=30    |      1|     17|   168|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |      0|    240|   487|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |      1|     48|   487|
|24 months |GMS-Nepal      |NEPAL        |<20     |      0|    101|   487|
|24 months |GMS-Nepal      |NEPAL        |<20     |      1|     23|   487|
|24 months |GMS-Nepal      |NEPAL        |>=30    |      0|     55|   487|
|24 months |GMS-Nepal      |NEPAL        |>=30    |      1|     20|   487|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |      0|   3079|  8601|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |      1|    844|  8601|
|24 months |JiVitA-3       |BANGLADESH   |<20     |      0|   3093|  8601|
|24 months |JiVitA-3       |BANGLADESH   |<20     |      1|    861|  8601|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |      0|    551|  8601|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |      1|    173|  8601|
|24 months |Keneba         |GAMBIA       |[20-30) |      0|    502|  1724|
|24 months |Keneba         |GAMBIA       |[20-30) |      1|     54|  1724|
|24 months |Keneba         |GAMBIA       |<20     |      0|    136|  1724|
|24 months |Keneba         |GAMBIA       |<20     |      1|     15|  1724|
|24 months |Keneba         |GAMBIA       |>=30    |      0|    895|  1724|
|24 months |Keneba         |GAMBIA       |>=30    |      1|    122|  1724|
|24 months |LCNI-5         |MALAWI       |[20-30) |      0|    254|   511|
|24 months |LCNI-5         |MALAWI       |[20-30) |      1|      4|   511|
|24 months |LCNI-5         |MALAWI       |<20     |      0|    105|   511|
|24 months |LCNI-5         |MALAWI       |<20     |      1|      4|   511|
|24 months |LCNI-5         |MALAWI       |>=30    |      0|    143|   511|
|24 months |LCNI-5         |MALAWI       |>=30    |      1|      1|   511|
|24 months |MAL-ED         |INDIA        |[20-30) |      0|    126|   227|
|24 months |MAL-ED         |INDIA        |[20-30) |      1|     17|   227|
|24 months |MAL-ED         |INDIA        |<20     |      0|     32|   227|
|24 months |MAL-ED         |INDIA        |<20     |      1|      4|   227|
|24 months |MAL-ED         |INDIA        |>=30    |      0|     42|   227|
|24 months |MAL-ED         |INDIA        |>=30    |      1|      6|   227|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |      0|    114|   212|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |      1|     11|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |      0|     28|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |      1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |      0|     49|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |      1|      7|   212|
|24 months |MAL-ED         |PERU         |[20-30) |      0|     97|   201|
|24 months |MAL-ED         |PERU         |[20-30) |      1|      0|   201|
|24 months |MAL-ED         |PERU         |<20     |      0|     30|   201|
|24 months |MAL-ED         |PERU         |<20     |      1|      3|   201|
|24 months |MAL-ED         |PERU         |>=30    |      0|     70|   201|
|24 months |MAL-ED         |PERU         |>=30    |      1|      1|   201|
|24 months |MAL-ED         |NEPAL        |[20-30) |      0|    137|   228|
|24 months |MAL-ED         |NEPAL        |[20-30) |      1|      4|   228|
|24 months |MAL-ED         |NEPAL        |<20     |      0|      9|   228|
|24 months |MAL-ED         |NEPAL        |<20     |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |      0|     77|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |      1|      1|   228|
|24 months |MAL-ED         |BRAZIL       |[20-30) |      0|     89|   169|
|24 months |MAL-ED         |BRAZIL       |[20-30) |      1|      2|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |      0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |      0|     60|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |      1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |[20-30) |      0|     84|   214|
|24 months |MAL-ED         |TANZANIA     |[20-30) |      1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |      0|     10|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |      0|    116|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |      1|      1|   214|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |      0|    107|   238|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |      1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |      0|     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |      0|     99|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |      1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |      0|    225|   427|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |      1|     31|   427|
|24 months |NIH-Birth      |BANGLADESH   |<20     |      0|     69|   427|
|24 months |NIH-Birth      |BANGLADESH   |<20     |      1|     11|   427|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |      0|     80|   427|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |      1|     11|   427|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |      0|    314|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |      1|     35|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |      0|     47|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |      1|      2|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |      0|    108|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |      1|      8|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |      0|   2789|  3970|
|24 months |PROBIT         |BELARUS      |[20-30) |      1|     22|  3970|
|24 months |PROBIT         |BELARUS      |<20     |      0|    426|  3970|
|24 months |PROBIT         |BELARUS      |<20     |      1|      4|  3970|
|24 months |PROBIT         |BELARUS      |>=30    |      0|    723|  3970|
|24 months |PROBIT         |BELARUS      |>=30    |      1|      6|  3970|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |      0|    335|   579|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |      1|     40|   579|
|24 months |PROVIDE        |BANGLADESH   |<20     |      0|     53|   579|
|24 months |PROVIDE        |BANGLADESH   |<20     |      1|      6|   579|
|24 months |PROVIDE        |BANGLADESH   |>=30    |      0|    129|   579|
|24 months |PROVIDE        |BANGLADESH   |>=30    |      1|     16|   579|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |      0|    260|   409|
|24 months |Vellore Crypto |INDIA        |[20-30) |      1|     20|   409|
|24 months |Vellore Crypto |INDIA        |<20     |      0|     50|   409|
|24 months |Vellore Crypto |INDIA        |<20     |      1|      4|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |      0|     68|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |      1|      7|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |      0|    241|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |      1|     51|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |      0|     61|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |      1|     16|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |      0|     52|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |      1|     11|   432|


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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


