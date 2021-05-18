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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthlen   | wasted| n_cell|     n|
|:---------|:--------------|:------------|:----------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      0|     12|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |      0|     27|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |      1|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |      0|     36|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |      1|      4|    86|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |      0|      9|    19|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |      1|      3|    19|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |      0|      5|    19|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |      1|      0|    19|
|Birth     |COHORTS        |INDIA        |>=50 cm    |      0|   1102|  6193|
|Birth     |COHORTS        |INDIA        |>=50 cm    |      1|    302|  6193|
|Birth     |COHORTS        |INDIA        |<48 cm     |      0|   1992|  6193|
|Birth     |COHORTS        |INDIA        |<48 cm     |      1|    362|  6193|
|Birth     |COHORTS        |INDIA        |[48-50) cm |      0|   2003|  6193|
|Birth     |COHORTS        |INDIA        |[48-50) cm |      1|    432|  6193|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |      0|    260|   756|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |      1|    136|   756|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |      0|    120|   756|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |      1|     12|   756|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |      0|    184|   756|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |      1|     44|   756|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |      0|    864|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |      1|    246|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |      0|    571|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |      1|     80|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |      0|   1013|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |      1|    125|  2899|
|Birth     |CONTENT        |PERU         |>=50 cm    |      0|      1|     2|
|Birth     |CONTENT        |PERU         |>=50 cm    |      1|      0|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |      0|      1|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |      1|      0|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |      0|      0|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |      1|      0|     2|
|Birth     |EE             |PAKISTAN     |>=50 cm    |      0|     15|   177|
|Birth     |EE             |PAKISTAN     |>=50 cm    |      1|      4|   177|
|Birth     |EE             |PAKISTAN     |<48 cm     |      0|    101|   177|
|Birth     |EE             |PAKISTAN     |<48 cm     |      1|     11|   177|
|Birth     |EE             |PAKISTAN     |[48-50) cm |      0|     39|   177|
|Birth     |EE             |PAKISTAN     |[48-50) cm |      1|      7|   177|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |      0|     76|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |      1|     27|   641|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |      0|    270|   641|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |      1|     60|   641|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |      0|    163|   641|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |      1|     45|   641|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |      0|   1028| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |      1|    185| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |      0|  10501| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |      1|   1218| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |      0|   4512| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |      1|    570| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |      0|    150|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |      1|     28|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |      0|   1350|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |      1|    137|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |      0|    657|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |      1|     74|  2396|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |      0|    491|  1465|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |      1|    245|  1465|
|Birth     |Keneba         |GAMBIA       |<48 cm     |      0|    208|  1465|
|Birth     |Keneba         |GAMBIA       |<48 cm     |      1|     32|  1465|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |      0|    403|  1465|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |      1|     86|  1465|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |      0|      8|    45|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |<48 cm     |      0|     18|    45|
|Birth     |MAL-ED         |INDIA        |<48 cm     |      1|      2|    45|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |      0|     14|    45|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |      1|      2|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |      0|     26|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |      1|      9|   215|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |      0|     85|   215|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |      1|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |      0|     68|   215|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |      1|     11|   215|
|Birth     |MAL-ED         |PERU         |>=50 cm    |      0|     40|   228|
|Birth     |MAL-ED         |PERU         |>=50 cm    |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |<48 cm     |      0|     85|   228|
|Birth     |MAL-ED         |PERU         |<48 cm     |      1|      2|   228|
|Birth     |MAL-ED         |PERU         |[48-50) cm |      0|     98|   228|
|Birth     |MAL-ED         |PERU         |[48-50) cm |      1|      2|   228|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |      0|      7|    26|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |      0|      9|    26|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |      1|      2|    26|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |      0|      8|    26|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |      1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |      0|     23|    62|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |      0|     14|    62|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |      0|     23|    62|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |      1|      1|    62|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |      0|     20|   115|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |      0|     33|   115|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |      1|      1|   115|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |      0|     61|   115|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |      1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |      0|     29|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |      1|      5|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |      0|     33|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |      1|      1|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |      0|     46|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |      1|      6|   120|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |      0|     81|   575|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |      1|     40|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |      0|    155|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |      1|     69|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |      0|    171|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |      1|     59|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |      0|    115|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |      1|     45|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |      0|    208|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |      1|     59|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |      0|    212|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |      1|     68|   707|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |      0|   9742| 13817|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |      1|   2815| 13817|
|Birth     |PROBIT         |BELARUS      |<48 cm     |      0|    140| 13817|
|Birth     |PROBIT         |BELARUS      |<48 cm     |      1|      0| 13817|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |      0|   1029| 13817|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |      1|     91| 13817|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |      0|     92|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |      1|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |      0|    141|   532|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |      1|     48|   532|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |      0|    182|   532|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |      1|     40|   532|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |      0|      8|    38|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |      1|      2|    38|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |      0|     13|    38|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |      1|      2|    38|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |      0|     13|    38|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |      1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |      0|    102|  1103|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |      1|     14|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |      0|    522|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |      1|     68|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |      0|    361|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |      1|     36|  1103|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |      0|     61|   343|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |      1|     59|   343|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |      0|     75|   343|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |      1|     12|   343|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |      0|    115|   343|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |      1|     21|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |      0|   3006| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |      1|    991| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |      0|   3276| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |      1|    365| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |      0|   4574| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |      1|    705| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      0|     15|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      1|      1|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |      0|     41|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |      1|      8|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |      0|     36|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |      1|      4|   105|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |      0|      0|    12|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |      1|      0|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |      0|      7|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |      1|      0|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |      0|      4|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |      1|      1|    12|
|6 months  |COHORTS        |INDIA        |>=50 cm    |      0|   1213|  6127|
|6 months  |COHORTS        |INDIA        |>=50 cm    |      1|    116|  6127|
|6 months  |COHORTS        |INDIA        |<48 cm     |      0|   2121|  6127|
|6 months  |COHORTS        |INDIA        |<48 cm     |      1|    406|  6127|
|6 months  |COHORTS        |INDIA        |[48-50) cm |      0|   2003|  6127|
|6 months  |COHORTS        |INDIA        |[48-50) cm |      1|    268|  6127|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |      0|    343|   689|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |      1|      8|   689|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |      0|    130|   689|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |      1|      4|   689|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |      0|    194|   689|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |      1|     10|   689|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |      0|    944|  2699|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |      1|     45|  2699|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |      0|    633|  2699|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |      1|     44|  2699|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |      0|    962|  2699|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |      1|     71|  2699|
|6 months  |CONTENT        |PERU         |>=50 cm    |      0|      1|     2|
|6 months  |CONTENT        |PERU         |>=50 cm    |      1|      0|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |      0|      1|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |      1|      0|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |      0|      0|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |      1|      0|     2|
|6 months  |EE             |PAKISTAN     |>=50 cm    |      0|     19|   238|
|6 months  |EE             |PAKISTAN     |>=50 cm    |      1|      3|   238|
|6 months  |EE             |PAKISTAN     |<48 cm     |      0|    149|   238|
|6 months  |EE             |PAKISTAN     |<48 cm     |      1|     23|   238|
|6 months  |EE             |PAKISTAN     |[48-50) cm |      0|     40|   238|
|6 months  |EE             |PAKISTAN     |[48-50) cm |      1|      4|   238|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |      0|     82|   563|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |      1|      5|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |      0|    276|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |      1|     29|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |      0|    154|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |      1|     17|   563|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |      0|    748| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |      1|     58| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |      0|   8930| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |      1|    894| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |      0|   3027| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |      1|    242| 13899|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |      0|   1049|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |      1|     52|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |      0|   1815|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |      1|    112|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |      0|    946|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |      1|     50|  4024|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |      0|    653|  1347|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |      1|     24|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |      0|    221|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |      1|     13|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |      0|    399|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |      1|     37|  1347|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |      0|      7|    41|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |      1|      1|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |      0|     19|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |      1|      1|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |      0|     12|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |      1|      1|    41|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |      0|     33|   211|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |      1|      2|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |      0|     98|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |      1|      3|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |      0|     73|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |      1|      2|   211|
|6 months  |MAL-ED         |PERU         |>=50 cm    |      0|     38|   215|
|6 months  |MAL-ED         |PERU         |>=50 cm    |      1|      0|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |      0|     88|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |      1|      0|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |      0|     89|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |      1|      0|   215|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |      0|      6|    26|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |      1|      1|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |      0|     11|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |      1|      0|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |      0|      8|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |      1|      0|    26|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |      0|     21|    59|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |      1|      0|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |      0|     16|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |      1|      0|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |      0|     22|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |      1|      0|    59|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |      0|     19|   118|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |      1|      0|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |      0|     41|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |      1|      0|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |      0|     58|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |      1|      0|   118|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |      0|     28|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |      1|      1|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |      0|     23|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |      1|      1|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |      0|     36|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |      1|      4|    93|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |      0|    101|   518|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |      1|      5|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |      0|    191|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |      1|     19|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |      0|    191|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |      1|     11|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |      0|    161|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |      1|      3|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |      0|    260|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |      1|     10|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |      0|    273|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |      1|      8|   715|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |      0|  14198| 15757|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |      1|     94| 15757|
|6 months  |PROBIT         |BELARUS      |<48 cm     |      0|    171| 15757|
|6 months  |PROBIT         |BELARUS      |<48 cm     |      1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |      0|   1280| 15757|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |      1|     13| 15757|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |      0|    141|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |      1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |      0|    197|   603|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |      1|     16|   603|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |      0|    240|   603|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |      1|      7|   603|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |      0|      8|    34|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |      1|      0|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |      0|     16|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |      1|      0|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |      0|      8|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |      1|      2|    34|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |      0|    176|  1322|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |      1|     20|  1322|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |      0|    594|  1322|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |      1|    114|  1322|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |      0|    388|  1322|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |      1|     30|  1322|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |      0|    118|   389|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |      1|     23|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |      0|     98|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |      1|     12|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |      0|    120|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |      1|     18|   389|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |      0|   2398|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |      1|     63|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |      0|   2575|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |      1|     82|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |      0|   3178|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |      1|    117|  8413|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      0|     16|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |      1|      0|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |      0|     46|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |      1|      4|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |      0|     39|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |      1|      1|   106|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |      0|      0|    11|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |      1|      0|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |      0|      6|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |      1|      0|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |      0|      5|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |      1|      0|    11|
|24 months |COHORTS        |INDIA        |>=50 cm    |      0|    983|  4722|
|24 months |COHORTS        |INDIA        |>=50 cm    |      1|     52|  4722|
|24 months |COHORTS        |INDIA        |<48 cm     |      0|   1686|  4722|
|24 months |COHORTS        |INDIA        |<48 cm     |      1|    242|  4722|
|24 months |COHORTS        |INDIA        |[48-50) cm |      0|   1624|  4722|
|24 months |COHORTS        |INDIA        |[48-50) cm |      1|    135|  4722|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |      0|    261|   564|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |      1|      3|   564|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |      0|    110|   564|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |      1|     12|   564|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |      0|    174|   564|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |      1|      4|   564|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |      0|    855|  2446|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |      1|     40|  2446|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |      0|    546|  2446|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |      1|     63|  2446|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |      0|    878|  2446|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |      1|     64|  2446|
|24 months |CONTENT        |PERU         |>=50 cm    |      0|      1|     2|
|24 months |CONTENT        |PERU         |>=50 cm    |      1|      0|     2|
|24 months |CONTENT        |PERU         |<48 cm     |      0|      1|     2|
|24 months |CONTENT        |PERU         |<48 cm     |      1|      0|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |      0|      0|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |      1|      0|     2|
|24 months |EE             |PAKISTAN     |>=50 cm    |      0|     10|   107|
|24 months |EE             |PAKISTAN     |>=50 cm    |      1|      0|   107|
|24 months |EE             |PAKISTAN     |<48 cm     |      0|     63|   107|
|24 months |EE             |PAKISTAN     |<48 cm     |      1|     12|   107|
|24 months |EE             |PAKISTAN     |[48-50) cm |      0|     19|   107|
|24 months |EE             |PAKISTAN     |[48-50) cm |      1|      3|   107|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |      0|     67|   486|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |      1|      9|   486|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |      0|    199|   486|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |      1|     56|   486|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |      0|    130|   486|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |      1|     25|   486|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |      0|    339|  7159|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |      1|     56|  7159|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |      0|   3838|  7159|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |      1|   1220|  7159|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |      0|   1424|  7159|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |      1|    282|  7159|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |      0|    883|  3974|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |      1|    191|  3974|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |      0|   1489|  3974|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |      1|    448|  3974|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |      0|    802|  3974|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |      1|    161|  3974|
|24 months |Keneba         |GAMBIA       |>=50 cm    |      0|    491|  1066|
|24 months |Keneba         |GAMBIA       |>=50 cm    |      1|     44|  1066|
|24 months |Keneba         |GAMBIA       |<48 cm     |      0|    169|  1066|
|24 months |Keneba         |GAMBIA       |<48 cm     |      1|     28|  1066|
|24 months |Keneba         |GAMBIA       |[48-50) cm |      0|    293|  1066|
|24 months |Keneba         |GAMBIA       |[48-50) cm |      1|     41|  1066|
|24 months |MAL-ED         |INDIA        |>=50 cm    |      0|      6|    39|
|24 months |MAL-ED         |INDIA        |>=50 cm    |      1|      0|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |      0|     15|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |      1|      5|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |      0|     10|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |      1|      3|    39|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |      0|     31|   187|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |      1|      4|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |      0|     74|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |      1|      9|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |      0|     63|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |      1|      6|   187|
|24 months |MAL-ED         |PERU         |>=50 cm    |      0|     28|   160|
|24 months |MAL-ED         |PERU         |>=50 cm    |      1|      0|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |      0|     67|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |      1|      4|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |      0|     61|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |      1|      0|   160|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |      0|      7|    26|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |      1|      0|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |      0|     11|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |      1|      0|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |      0|      7|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |      1|      1|    26|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |      0|     17|    42|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |      1|      0|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |      0|     11|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |      1|      0|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |      0|     13|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |      1|      1|    42|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |      0|     17|   104|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |      1|      0|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |      0|     34|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |      1|      2|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |      0|     50|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |      1|      1|   104|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |      0|     27|    91|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |      1|      0|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |      0|     24|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |      1|      0|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |      0|     39|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |      1|      1|    91|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |      0|     83|   413|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |      1|      6|   413|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |      0|    140|   413|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |      1|     26|   413|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |      0|    137|   413|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |      1|     21|   413|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |      0|    120|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |      1|      8|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |      0|    178|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |      1|     22|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |      0|    171|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |      1|     15|   514|
|24 months |PROBIT         |BELARUS      |>=50 cm    |      0|   3595|  3970|
|24 months |PROBIT         |BELARUS      |>=50 cm    |      1|     27|  3970|
|24 months |PROBIT         |BELARUS      |<48 cm     |      0|     43|  3970|
|24 months |PROBIT         |BELARUS      |<48 cm     |      1|      1|  3970|
|24 months |PROBIT         |BELARUS      |[48-50) cm |      0|    300|  3970|
|24 months |PROBIT         |BELARUS      |[48-50) cm |      1|      4|  3970|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |      0|    131|   579|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |      1|      8|   579|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |      0|    176|   579|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |      1|     30|   579|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |      0|    210|   579|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |      1|     24|   579|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |      0|    132|   390|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |      1|     10|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |      0|    101|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |      1|      9|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |      0|    127|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |      1|     11|   390|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |      0|     33|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |      1|      9|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |      0|    214|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |      1|     44|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |      0|    101|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |      1|     25|   426|


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


