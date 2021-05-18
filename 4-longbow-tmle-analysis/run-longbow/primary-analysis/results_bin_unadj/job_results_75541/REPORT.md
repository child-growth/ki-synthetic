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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthlen   | swasted| n_cell|     n|
|:---------|:--------------|:------------|:----------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |       0|     13|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |       0|     32|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |       0|     40|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |       1|      0|    86|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |       0|     11|    19|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |       1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |       0|      5|    19|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |       1|      0|    19|
|Birth     |COHORTS        |INDIA        |>=50 cm    |       0|   1310|  6193|
|Birth     |COHORTS        |INDIA        |>=50 cm    |       1|     94|  6193|
|Birth     |COHORTS        |INDIA        |<48 cm     |       0|   2258|  6193|
|Birth     |COHORTS        |INDIA        |<48 cm     |       1|     96|  6193|
|Birth     |COHORTS        |INDIA        |[48-50) cm |       0|   2305|  6193|
|Birth     |COHORTS        |INDIA        |[48-50) cm |       1|    130|  6193|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |       0|    351|   756|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |       1|     45|   756|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |       0|    129|   756|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |       1|      3|   756|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |       0|    216|   756|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |       1|     12|   756|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |       0|   1042|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |       1|     68|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |       0|    626|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |       1|     25|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |       0|   1110|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |       1|     28|  2899|
|Birth     |CONTENT        |PERU         |>=50 cm    |       0|      1|     2|
|Birth     |CONTENT        |PERU         |>=50 cm    |       1|      0|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |       0|      1|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |       1|      0|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |       0|      0|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |>=50 cm    |       0|     17|   177|
|Birth     |EE             |PAKISTAN     |>=50 cm    |       1|      2|   177|
|Birth     |EE             |PAKISTAN     |<48 cm     |       0|    110|   177|
|Birth     |EE             |PAKISTAN     |<48 cm     |       1|      2|   177|
|Birth     |EE             |PAKISTAN     |[48-50) cm |       0|     44|   177|
|Birth     |EE             |PAKISTAN     |[48-50) cm |       1|      2|   177|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |       0|     98|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |       1|      5|   641|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |       0|    316|   641|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |       1|     14|   641|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |       0|    200|   641|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |       1|      8|   641|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |       0|   1177| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |       1|     36| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |       0|  11515| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |       1|    204| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |       0|   4973| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |       1|    109| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |       0|    176|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |       1|      2|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |       0|   1470|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |       1|     17|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |       0|    719|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |       1|     12|  2396|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |       0|    657|  1465|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |       1|     79|  1465|
|Birth     |Keneba         |GAMBIA       |<48 cm     |       0|    235|  1465|
|Birth     |Keneba         |GAMBIA       |<48 cm     |       1|      5|  1465|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |       0|    470|  1465|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |       1|     19|  1465|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |       0|      9|    45|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |<48 cm     |       0|     20|    45|
|Birth     |MAL-ED         |INDIA        |<48 cm     |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |       0|     16|    45|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |       0|     31|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |       1|      4|   215|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |       0|     99|   215|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |       1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |       0|     77|   215|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |       1|      2|   215|
|Birth     |MAL-ED         |PERU         |>=50 cm    |       0|     41|   228|
|Birth     |MAL-ED         |PERU         |>=50 cm    |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |<48 cm     |       0|     87|   228|
|Birth     |MAL-ED         |PERU         |<48 cm     |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |[48-50) cm |       0|    100|   228|
|Birth     |MAL-ED         |PERU         |[48-50) cm |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |       0|      7|    26|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |       0|     10|    26|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |       0|      8|    26|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |       0|     23|    62|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |       0|     15|    62|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |       0|     24|    62|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |       0|     20|   115|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |       0|     34|   115|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |       0|     61|   115|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |       0|     34|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |       0|     34|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |       0|     52|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |       0|    112|   575|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |       1|      9|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |       0|    209|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |       1|     15|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |       0|    216|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |       1|     14|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |       0|    147|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |       1|     13|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |       0|    253|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |       1|     14|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |       0|    260|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |       1|     20|   707|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |       0|  11639| 13817|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |       1|    918| 13817|
|Birth     |PROBIT         |BELARUS      |<48 cm     |       0|    140| 13817|
|Birth     |PROBIT         |BELARUS      |<48 cm     |       1|      0| 13817|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |       0|   1119| 13817|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |       1|      1| 13817|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |       0|    118|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |       0|    183|   532|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |       1|      6|   532|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |       0|    218|   532|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |       1|      4|   532|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |       0|     10|    38|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |       0|     15|    38|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |       0|     13|    38|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |       1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |       0|    112|  1103|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |       1|      4|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |       0|    573|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |       1|     17|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |       0|    389|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |       1|      8|  1103|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |       0|     82|   343|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |       1|     38|   343|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |       0|     80|   343|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |       1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |       0|    127|   343|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |       1|      9|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |       0|   3585| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |       1|    412| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |       0|   3499| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |       1|    142| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |       0|   5041| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |       1|    238| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |       0|     15|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |       1|      1|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |       0|     49|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |       1|      0|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |       0|     39|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |       1|      1|   105|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |       0|      0|    12|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |       1|      0|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |       0|      7|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |       1|      0|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |       0|      5|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |       1|      0|    12|
|6 months  |COHORTS        |INDIA        |>=50 cm    |       0|   1307|  6127|
|6 months  |COHORTS        |INDIA        |>=50 cm    |       1|     22|  6127|
|6 months  |COHORTS        |INDIA        |<48 cm     |       0|   2410|  6127|
|6 months  |COHORTS        |INDIA        |<48 cm     |       1|    117|  6127|
|6 months  |COHORTS        |INDIA        |[48-50) cm |       0|   2209|  6127|
|6 months  |COHORTS        |INDIA        |[48-50) cm |       1|     62|  6127|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |       0|    350|   689|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |       1|      1|   689|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |       0|    133|   689|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |       1|      1|   689|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |       0|    203|   689|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |       1|      1|   689|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |       0|    980|  2699|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |       1|      9|  2699|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |       0|    667|  2699|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |       1|     10|  2699|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |       0|   1017|  2699|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |       1|     16|  2699|
|6 months  |CONTENT        |PERU         |>=50 cm    |       0|      1|     2|
|6 months  |CONTENT        |PERU         |>=50 cm    |       1|      0|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |       0|      1|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |       1|      0|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |       0|      0|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |       1|      0|     2|
|6 months  |EE             |PAKISTAN     |>=50 cm    |       0|     20|   238|
|6 months  |EE             |PAKISTAN     |>=50 cm    |       1|      2|   238|
|6 months  |EE             |PAKISTAN     |<48 cm     |       0|    167|   238|
|6 months  |EE             |PAKISTAN     |<48 cm     |       1|      5|   238|
|6 months  |EE             |PAKISTAN     |[48-50) cm |       0|     43|   238|
|6 months  |EE             |PAKISTAN     |[48-50) cm |       1|      1|   238|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |       0|     87|   563|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |       1|      0|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |       0|    299|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |       1|      6|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |       0|    170|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |       1|      1|   563|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |       0|    797| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |       1|      9| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |       0|   9678| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |       1|    146| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |       0|   3227| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |       1|     42| 13899|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |       0|   1094|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |       1|      7|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |       0|   1910|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |       1|     17|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |       0|    992|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |       1|      4|  4024|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |       0|    673|  1347|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |       1|      4|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |       0|    231|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |       1|      3|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |       0|    424|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |       1|     12|  1347|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |       0|      8|    41|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |       1|      0|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |       0|     20|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |       1|      0|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |       0|     12|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |       1|      1|    41|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |       0|     33|   211|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |       1|      2|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |       0|    101|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |       1|      0|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |       0|     75|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |       1|      0|   211|
|6 months  |MAL-ED         |PERU         |>=50 cm    |       0|     38|   215|
|6 months  |MAL-ED         |PERU         |>=50 cm    |       1|      0|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |       0|     88|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |       1|      0|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |       0|     89|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |       1|      0|   215|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |       0|      7|    26|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |       1|      0|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |       0|     11|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |       1|      0|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |       0|      8|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |       1|      0|    26|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |       0|     21|    59|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |       1|      0|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |       0|     16|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |       1|      0|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |       0|     22|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |       1|      0|    59|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |       0|     19|   118|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |       1|      0|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |       0|     41|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |       1|      0|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |       0|     58|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |       1|      0|   118|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |       0|     28|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |       1|      1|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |       0|     24|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |       1|      0|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |       0|     38|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |       1|      2|    93|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |       0|    104|   518|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |       1|      2|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |       0|    207|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |       1|      3|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |       0|    201|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |       1|      1|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |       0|    164|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |       0|    270|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |       0|    281|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |       0|  14284| 15757|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |       1|      8| 15757|
|6 months  |PROBIT         |BELARUS      |<48 cm     |       0|    172| 15757|
|6 months  |PROBIT         |BELARUS      |<48 cm     |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |       0|   1292| 15757|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |       1|      1| 15757|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |       0|    142|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |       0|    210|   603|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |       1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |       0|    246|   603|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |       1|      1|   603|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |       0|      8|    34|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |       1|      0|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |       0|     16|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |       1|      0|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |       0|      9|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |       1|      1|    34|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |       0|    194|  1322|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |       1|      2|  1322|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |       0|    676|  1322|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |       1|     32|  1322|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |       0|    410|  1322|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |       1|      8|  1322|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |       0|    135|   389|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |       1|      6|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |       0|    107|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |       1|      3|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |       0|    125|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |       1|     13|   389|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |       0|   2440|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |       1|     21|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |       0|   2634|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |       1|     23|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |       0|   3260|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |       1|     35|  8413|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |       0|     16|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |       1|      0|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |       0|     50|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |       1|      0|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |       0|     40|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |       1|      0|   106|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |       0|      0|    11|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |       1|      0|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |       0|      6|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |       1|      0|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |       0|      5|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |       1|      0|    11|
|24 months |COHORTS        |INDIA        |>=50 cm    |       0|   1028|  4722|
|24 months |COHORTS        |INDIA        |>=50 cm    |       1|      7|  4722|
|24 months |COHORTS        |INDIA        |<48 cm     |       0|   1895|  4722|
|24 months |COHORTS        |INDIA        |<48 cm     |       1|     33|  4722|
|24 months |COHORTS        |INDIA        |[48-50) cm |       0|   1749|  4722|
|24 months |COHORTS        |INDIA        |[48-50) cm |       1|     10|  4722|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |       0|    263|   564|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |       1|      1|   564|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |       0|    122|   564|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |       1|      0|   564|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |       0|    178|   564|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |       1|      0|   564|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |       0|    891|  2446|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |       1|      4|  2446|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |       0|    601|  2446|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |       1|      8|  2446|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |       0|    929|  2446|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |       1|     13|  2446|
|24 months |CONTENT        |PERU         |>=50 cm    |       0|      1|     2|
|24 months |CONTENT        |PERU         |>=50 cm    |       1|      0|     2|
|24 months |CONTENT        |PERU         |<48 cm     |       0|      1|     2|
|24 months |CONTENT        |PERU         |<48 cm     |       1|      0|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |       0|      0|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |       1|      0|     2|
|24 months |EE             |PAKISTAN     |>=50 cm    |       0|     10|   107|
|24 months |EE             |PAKISTAN     |>=50 cm    |       1|      0|   107|
|24 months |EE             |PAKISTAN     |<48 cm     |       0|     74|   107|
|24 months |EE             |PAKISTAN     |<48 cm     |       1|      1|   107|
|24 months |EE             |PAKISTAN     |[48-50) cm |       0|     21|   107|
|24 months |EE             |PAKISTAN     |[48-50) cm |       1|      1|   107|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |       0|     75|   486|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |       1|      1|   486|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |       0|    249|   486|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |       1|      6|   486|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |       0|    147|   486|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |       1|      8|   486|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |       0|    386|  7159|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |       1|      9|  7159|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |       0|   4834|  7159|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |       1|    224|  7159|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |       0|   1668|  7159|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |       1|     38|  7159|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |       0|   1048|  3974|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |       1|     26|  3974|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |       0|   1871|  3974|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |       1|     66|  3974|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |       0|    944|  3974|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |       1|     19|  3974|
|24 months |Keneba         |GAMBIA       |>=50 cm    |       0|    530|  1066|
|24 months |Keneba         |GAMBIA       |>=50 cm    |       1|      5|  1066|
|24 months |Keneba         |GAMBIA       |<48 cm     |       0|    191|  1066|
|24 months |Keneba         |GAMBIA       |<48 cm     |       1|      6|  1066|
|24 months |Keneba         |GAMBIA       |[48-50) cm |       0|    324|  1066|
|24 months |Keneba         |GAMBIA       |[48-50) cm |       1|     10|  1066|
|24 months |MAL-ED         |INDIA        |>=50 cm    |       0|      6|    39|
|24 months |MAL-ED         |INDIA        |>=50 cm    |       1|      0|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |       0|     20|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |       1|      0|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |       0|     13|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |       1|      0|    39|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |       0|     35|   187|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |       1|      0|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |       0|     83|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |       1|      0|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |       0|     69|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |       1|      0|   187|
|24 months |MAL-ED         |PERU         |>=50 cm    |       0|     28|   160|
|24 months |MAL-ED         |PERU         |>=50 cm    |       1|      0|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |       0|     69|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |       1|      2|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |       0|     61|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |       1|      0|   160|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |       0|      7|    26|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |       1|      0|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |       0|     11|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |       1|      0|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |       0|      8|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |       1|      0|    26|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |       0|     17|    42|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |       1|      0|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |       0|     11|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |       1|      0|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |       0|     14|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |       1|      0|    42|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |       0|     17|   104|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |       1|      0|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |       0|     36|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |       1|      0|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |       0|     51|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |       1|      0|   104|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |       0|     27|    91|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |       1|      0|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |       0|     24|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |       1|      0|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |       0|     40|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |       1|      0|    91|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |       0|     89|   413|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |       1|      0|   413|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |       0|    158|   413|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |       1|      8|   413|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |       0|    156|   413|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |       1|      2|   413|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |       0|    128|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |       1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |       0|    197|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |       1|      3|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |       0|    185|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |       1|      1|   514|
|24 months |PROBIT         |BELARUS      |>=50 cm    |       0|   3615|  3970|
|24 months |PROBIT         |BELARUS      |>=50 cm    |       1|      7|  3970|
|24 months |PROBIT         |BELARUS      |<48 cm     |       0|     44|  3970|
|24 months |PROBIT         |BELARUS      |<48 cm     |       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |[48-50) cm |       0|    304|  3970|
|24 months |PROBIT         |BELARUS      |[48-50) cm |       1|      0|  3970|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |       0|    137|   579|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |       1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |       0|    202|   579|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |       1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |       0|    231|   579|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |       1|      3|   579|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |       0|    142|   390|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |       1|      0|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |       0|    109|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |       1|      1|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |       0|    134|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |       1|      4|   390|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |       0|     38|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |       1|      4|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |       0|    243|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |       1|     15|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |       0|    114|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |       1|     12|   426|


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
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
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


