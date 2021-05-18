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

**Outcome Variable:** pers_wast

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

|agecat      |studyid        |country      |birthlen   | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:----------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |         0|     16|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |         1|      0|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |         0|     45|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |         1|      5|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |         0|     39|   106|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |         1|      1|   106|
|0-24 months |CMIN           |BANGLADESH   |>=50 cm    |         0|      0|    12|
|0-24 months |CMIN           |BANGLADESH   |>=50 cm    |         1|      0|    12|
|0-24 months |CMIN           |BANGLADESH   |<48 cm     |         0|      7|    12|
|0-24 months |CMIN           |BANGLADESH   |<48 cm     |         1|      0|    12|
|0-24 months |CMIN           |BANGLADESH   |[48-50) cm |         0|      5|    12|
|0-24 months |CMIN           |BANGLADESH   |[48-50) cm |         1|      0|    12|
|0-24 months |COHORTS        |INDIA        |>=50 cm    |         0|   1096|  5267|
|0-24 months |COHORTS        |INDIA        |>=50 cm    |         1|     76|  5267|
|0-24 months |COHORTS        |INDIA        |<48 cm     |         0|   1865|  5267|
|0-24 months |COHORTS        |INDIA        |<48 cm     |         1|    253|  5267|
|0-24 months |COHORTS        |INDIA        |[48-50) cm |         0|   1799|  5267|
|0-24 months |COHORTS        |INDIA        |[48-50) cm |         1|    178|  5267|
|0-24 months |COHORTS        |GUATEMALA    |>=50 cm    |         0|    340|   699|
|0-24 months |COHORTS        |GUATEMALA    |>=50 cm    |         1|      7|   699|
|0-24 months |COHORTS        |GUATEMALA    |<48 cm     |         0|    136|   699|
|0-24 months |COHORTS        |GUATEMALA    |<48 cm     |         1|      5|   699|
|0-24 months |COHORTS        |GUATEMALA    |[48-50) cm |         0|    206|   699|
|0-24 months |COHORTS        |GUATEMALA    |[48-50) cm |         1|      5|   699|
|0-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |         0|    998|  2804|
|0-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |         1|     39|  2804|
|0-24 months |COHORTS        |PHILIPPINES  |<48 cm     |         0|    653|  2804|
|0-24 months |COHORTS        |PHILIPPINES  |<48 cm     |         1|     48|  2804|
|0-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |         0|   1010|  2804|
|0-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |         1|     56|  2804|
|0-24 months |CONTENT        |PERU         |>=50 cm    |         0|      1|     2|
|0-24 months |CONTENT        |PERU         |>=50 cm    |         1|      0|     2|
|0-24 months |CONTENT        |PERU         |<48 cm     |         0|      1|     2|
|0-24 months |CONTENT        |PERU         |<48 cm     |         1|      0|     2|
|0-24 months |CONTENT        |PERU         |[48-50) cm |         0|      0|     2|
|0-24 months |CONTENT        |PERU         |[48-50) cm |         1|      0|     2|
|0-24 months |EE             |PAKISTAN     |>=50 cm    |         0|     20|   240|
|0-24 months |EE             |PAKISTAN     |>=50 cm    |         1|      2|   240|
|0-24 months |EE             |PAKISTAN     |<48 cm     |         0|    157|   240|
|0-24 months |EE             |PAKISTAN     |<48 cm     |         1|     15|   240|
|0-24 months |EE             |PAKISTAN     |[48-50) cm |         0|     43|   240|
|0-24 months |EE             |PAKISTAN     |[48-50) cm |         1|      3|   240|
|0-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |         0|     84|   596|
|0-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |         1|      6|   596|
|0-24 months |GMS-Nepal      |NEPAL        |<48 cm     |         0|    275|   596|
|0-24 months |GMS-Nepal      |NEPAL        |<48 cm     |         1|     51|   596|
|0-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |         0|    157|   596|
|0-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |         1|     23|   596|
|0-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |         0|    761| 13275|
|0-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |         1|     48| 13275|
|0-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |         0|   8651| 13275|
|0-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |         1|    527| 13275|
|0-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |         0|   3137| 13275|
|0-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |         1|    151| 13275|
|0-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |         0|   1131|  4410|
|0-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |         1|     67|  4410|
|0-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |         0|   1922|  4410|
|0-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |         1|    218|  4410|
|0-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |         0|   1013|  4410|
|0-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |         1|     59|  4410|
|0-24 months |Keneba         |GAMBIA       |>=50 cm    |         0|    711|  1509|
|0-24 months |Keneba         |GAMBIA       |>=50 cm    |         1|     31|  1509|
|0-24 months |Keneba         |GAMBIA       |<48 cm     |         0|    262|  1509|
|0-24 months |Keneba         |GAMBIA       |<48 cm     |         1|     18|  1509|
|0-24 months |Keneba         |GAMBIA       |[48-50) cm |         0|    456|  1509|
|0-24 months |Keneba         |GAMBIA       |[48-50) cm |         1|     31|  1509|
|0-24 months |MAL-ED         |INDIA        |>=50 cm    |         0|      8|    42|
|0-24 months |MAL-ED         |INDIA        |>=50 cm    |         1|      0|    42|
|0-24 months |MAL-ED         |INDIA        |<48 cm     |         0|     21|    42|
|0-24 months |MAL-ED         |INDIA        |<48 cm     |         1|      0|    42|
|0-24 months |MAL-ED         |INDIA        |[48-50) cm |         0|     11|    42|
|0-24 months |MAL-ED         |INDIA        |[48-50) cm |         1|      2|    42|
|0-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |         0|     32|   218|
|0-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |         1|      3|   218|
|0-24 months |MAL-ED         |BANGLADESH   |<48 cm     |         0|     98|   218|
|0-24 months |MAL-ED         |BANGLADESH   |<48 cm     |         1|      7|   218|
|0-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |         0|     76|   218|
|0-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |         1|      2|   218|
|0-24 months |MAL-ED         |PERU         |>=50 cm    |         0|     39|   220|
|0-24 months |MAL-ED         |PERU         |>=50 cm    |         1|      0|   220|
|0-24 months |MAL-ED         |PERU         |<48 cm     |         0|     87|   220|
|0-24 months |MAL-ED         |PERU         |<48 cm     |         1|      1|   220|
|0-24 months |MAL-ED         |PERU         |[48-50) cm |         0|     93|   220|
|0-24 months |MAL-ED         |PERU         |[48-50) cm |         1|      0|   220|
|0-24 months |MAL-ED         |NEPAL        |>=50 cm    |         0|      6|    27|
|0-24 months |MAL-ED         |NEPAL        |>=50 cm    |         1|      1|    27|
|0-24 months |MAL-ED         |NEPAL        |<48 cm     |         0|     12|    27|
|0-24 months |MAL-ED         |NEPAL        |<48 cm     |         1|      0|    27|
|0-24 months |MAL-ED         |NEPAL        |[48-50) cm |         0|      8|    27|
|0-24 months |MAL-ED         |NEPAL        |[48-50) cm |         1|      0|    27|
|0-24 months |MAL-ED         |BRAZIL       |>=50 cm    |         0|     22|    62|
|0-24 months |MAL-ED         |BRAZIL       |>=50 cm    |         1|      0|    62|
|0-24 months |MAL-ED         |BRAZIL       |<48 cm     |         0|     18|    62|
|0-24 months |MAL-ED         |BRAZIL       |<48 cm     |         1|      0|    62|
|0-24 months |MAL-ED         |BRAZIL       |[48-50) cm |         0|     21|    62|
|0-24 months |MAL-ED         |BRAZIL       |[48-50) cm |         1|      1|    62|
|0-24 months |MAL-ED         |TANZANIA     |>=50 cm    |         0|     20|   121|
|0-24 months |MAL-ED         |TANZANIA     |>=50 cm    |         1|      0|   121|
|0-24 months |MAL-ED         |TANZANIA     |<48 cm     |         0|     41|   121|
|0-24 months |MAL-ED         |TANZANIA     |<48 cm     |         1|      0|   121|
|0-24 months |MAL-ED         |TANZANIA     |[48-50) cm |         0|     60|   121|
|0-24 months |MAL-ED         |TANZANIA     |[48-50) cm |         1|      0|   121|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |         0|     30|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |         1|      0|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |         0|     29|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |         1|      0|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |         0|     43|   104|
|0-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |         1|      2|   104|
|0-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |         0|     99|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |         1|      7|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |         0|    182|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |         1|     27|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |         0|    187|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |         1|     13|   515|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |         0|    165|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |         1|      0|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |         0|    268|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |         1|     12|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |         0|    271|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |         1|     14|   730|
|0-24 months |PROBIT         |BELARUS      |>=50 cm    |         0|  14909| 16583|
|0-24 months |PROBIT         |BELARUS      |>=50 cm    |         1|    132| 16583|
|0-24 months |PROBIT         |BELARUS      |<48 cm     |         0|    180| 16583|
|0-24 months |PROBIT         |BELARUS      |<48 cm     |         1|      0| 16583|
|0-24 months |PROBIT         |BELARUS      |[48-50) cm |         0|   1360| 16583|
|0-24 months |PROBIT         |BELARUS      |[48-50) cm |         1|      2| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |         0|    153|   641|
|0-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH   |<48 cm     |         0|    219|   641|
|0-24 months |PROVIDE        |BANGLADESH   |<48 cm     |         1|      8|   641|
|0-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |         0|    254|   641|
|0-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |         1|      5|   641|
|0-24 months |ResPak         |PAKISTAN     |>=50 cm    |         0|      8|    35|
|0-24 months |ResPak         |PAKISTAN     |>=50 cm    |         1|      1|    35|
|0-24 months |ResPak         |PAKISTAN     |<48 cm     |         0|     15|    35|
|0-24 months |ResPak         |PAKISTAN     |<48 cm     |         1|      1|    35|
|0-24 months |ResPak         |PAKISTAN     |[48-50) cm |         0|      9|    35|
|0-24 months |ResPak         |PAKISTAN     |[48-50) cm |         1|      1|    35|
|0-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |         0|    198|  1353|
|0-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |         1|      8|  1353|
|0-24 months |SAS-CompFeed   |INDIA        |<48 cm     |         0|    634|  1353|
|0-24 months |SAS-CompFeed   |INDIA        |<48 cm     |         1|     78|  1353|
|0-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |         0|    410|  1353|
|0-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |         1|     25|  1353|
|0-24 months |Vellore Crypto |INDIA        |>=50 cm    |         0|    124|   391|
|0-24 months |Vellore Crypto |INDIA        |>=50 cm    |         1|     18|   391|
|0-24 months |Vellore Crypto |INDIA        |<48 cm     |         0|    100|   391|
|0-24 months |Vellore Crypto |INDIA        |<48 cm     |         1|     11|   391|
|0-24 months |Vellore Crypto |INDIA        |[48-50) cm |         0|    121|   391|
|0-24 months |Vellore Crypto |INDIA        |[48-50) cm |         1|     17|   391|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |         0|   2667|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |         1|     34|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |         0|   2929|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |         1|     63|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |         0|   3672|  9434|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |         1|     69|  9434|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |         0|     12|   103|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |         1|      3|   103|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |         0|     40|   103|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |         1|      8|   103|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |         0|     38|   103|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |         1|      2|   103|
|0-6 months  |CMIN           |BANGLADESH   |>=50 cm    |         0|      0|    12|
|0-6 months  |CMIN           |BANGLADESH   |>=50 cm    |         1|      0|    12|
|0-6 months  |CMIN           |BANGLADESH   |<48 cm     |         0|      7|    12|
|0-6 months  |CMIN           |BANGLADESH   |<48 cm     |         1|      0|    12|
|0-6 months  |CMIN           |BANGLADESH   |[48-50) cm |         0|      5|    12|
|0-6 months  |CMIN           |BANGLADESH   |[48-50) cm |         1|      0|    12|
|0-6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |         0|    274|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |         1|     19|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |<48 cm     |         0|    191|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |<48 cm     |         1|     15|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |         0|    336|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |         1|     18|   853|
|0-6 months  |CONTENT        |PERU         |>=50 cm    |         0|      1|     2|
|0-6 months  |CONTENT        |PERU         |>=50 cm    |         1|      0|     2|
|0-6 months  |CONTENT        |PERU         |<48 cm     |         0|      1|     2|
|0-6 months  |CONTENT        |PERU         |<48 cm     |         1|      0|     2|
|0-6 months  |CONTENT        |PERU         |[48-50) cm |         0|      0|     2|
|0-6 months  |CONTENT        |PERU         |[48-50) cm |         1|      0|     2|
|0-6 months  |EE             |PAKISTAN     |>=50 cm    |         0|     19|   236|
|0-6 months  |EE             |PAKISTAN     |>=50 cm    |         1|      2|   236|
|0-6 months  |EE             |PAKISTAN     |<48 cm     |         0|    160|   236|
|0-6 months  |EE             |PAKISTAN     |<48 cm     |         1|      9|   236|
|0-6 months  |EE             |PAKISTAN     |[48-50) cm |         0|     43|   236|
|0-6 months  |EE             |PAKISTAN     |[48-50) cm |         1|      3|   236|
|0-6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |         0|     78|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |         1|      7|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |<48 cm     |         0|    278|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |<48 cm     |         1|     33|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |         0|    148|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |         1|     22|   566|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |         0|      3|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |         1|      1|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |         0|     19|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |         1|      1|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |         0|     14|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |         1|      0|    38|
|0-6 months  |Keneba         |GAMBIA       |>=50 cm    |         0|    687|  1418|
|0-6 months  |Keneba         |GAMBIA       |>=50 cm    |         1|     19|  1418|
|0-6 months  |Keneba         |GAMBIA       |<48 cm     |         0|    247|  1418|
|0-6 months  |Keneba         |GAMBIA       |<48 cm     |         1|      6|  1418|
|0-6 months  |Keneba         |GAMBIA       |[48-50) cm |         0|    440|  1418|
|0-6 months  |Keneba         |GAMBIA       |[48-50) cm |         1|     19|  1418|
|0-6 months  |MAL-ED         |INDIA        |>=50 cm    |         0|      6|    42|
|0-6 months  |MAL-ED         |INDIA        |>=50 cm    |         1|      2|    42|
|0-6 months  |MAL-ED         |INDIA        |<48 cm     |         0|     21|    42|
|0-6 months  |MAL-ED         |INDIA        |<48 cm     |         1|      0|    42|
|0-6 months  |MAL-ED         |INDIA        |[48-50) cm |         0|     13|    42|
|0-6 months  |MAL-ED         |INDIA        |[48-50) cm |         1|      0|    42|
|0-6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |         0|     32|   218|
|0-6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |         1|      3|   218|
|0-6 months  |MAL-ED         |BANGLADESH   |<48 cm     |         0|    103|   218|
|0-6 months  |MAL-ED         |BANGLADESH   |<48 cm     |         1|      2|   218|
|0-6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |         0|     76|   218|
|0-6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |         1|      2|   218|
|0-6 months  |MAL-ED         |PERU         |>=50 cm    |         0|     39|   220|
|0-6 months  |MAL-ED         |PERU         |>=50 cm    |         1|      0|   220|
|0-6 months  |MAL-ED         |PERU         |<48 cm     |         0|     88|   220|
|0-6 months  |MAL-ED         |PERU         |<48 cm     |         1|      0|   220|
|0-6 months  |MAL-ED         |PERU         |[48-50) cm |         0|     93|   220|
|0-6 months  |MAL-ED         |PERU         |[48-50) cm |         1|      0|   220|
|0-6 months  |MAL-ED         |NEPAL        |>=50 cm    |         0|      6|    27|
|0-6 months  |MAL-ED         |NEPAL        |>=50 cm    |         1|      1|    27|
|0-6 months  |MAL-ED         |NEPAL        |<48 cm     |         0|     12|    27|
|0-6 months  |MAL-ED         |NEPAL        |<48 cm     |         1|      0|    27|
|0-6 months  |MAL-ED         |NEPAL        |[48-50) cm |         0|      8|    27|
|0-6 months  |MAL-ED         |NEPAL        |[48-50) cm |         1|      0|    27|
|0-6 months  |MAL-ED         |BRAZIL       |>=50 cm    |         0|     22|    62|
|0-6 months  |MAL-ED         |BRAZIL       |>=50 cm    |         1|      0|    62|
|0-6 months  |MAL-ED         |BRAZIL       |<48 cm     |         0|     18|    62|
|0-6 months  |MAL-ED         |BRAZIL       |<48 cm     |         1|      0|    62|
|0-6 months  |MAL-ED         |BRAZIL       |[48-50) cm |         0|     22|    62|
|0-6 months  |MAL-ED         |BRAZIL       |[48-50) cm |         1|      0|    62|
|0-6 months  |MAL-ED         |TANZANIA     |>=50 cm    |         0|     20|   121|
|0-6 months  |MAL-ED         |TANZANIA     |>=50 cm    |         1|      0|   121|
|0-6 months  |MAL-ED         |TANZANIA     |<48 cm     |         0|     41|   121|
|0-6 months  |MAL-ED         |TANZANIA     |<48 cm     |         1|      0|   121|
|0-6 months  |MAL-ED         |TANZANIA     |[48-50) cm |         0|     60|   121|
|0-6 months  |MAL-ED         |TANZANIA     |[48-50) cm |         1|      0|   121|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |         0|     29|   103|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |         1|      1|   103|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |         0|     28|   103|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |         1|      0|   103|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |         0|     44|   103|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |         1|      1|   103|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |         0|     32|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |         1|      2|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |         0|     71|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |         1|      6|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |         0|     52|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |         1|      3|   166|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |         0|     45|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |         1|      0|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |         0|     95|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |         1|      1|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |         0|    105|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |         1|      4|   250|
|0-6 months  |PROBIT         |BELARUS      |>=50 cm    |         0|  11246| 13534|
|0-6 months  |PROBIT         |BELARUS      |>=50 cm    |         1|   1059| 13534|
|0-6 months  |PROBIT         |BELARUS      |<48 cm     |         0|    143| 13534|
|0-6 months  |PROBIT         |BELARUS      |<48 cm     |         1|      1| 13534|
|0-6 months  |PROBIT         |BELARUS      |[48-50) cm |         0|   1048| 13534|
|0-6 months  |PROBIT         |BELARUS      |[48-50) cm |         1|     37| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |         0|    152|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |         1|      3|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |<48 cm     |         0|    220|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |<48 cm     |         1|      5|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |         0|    252|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |         1|      6|   638|
|0-6 months  |ResPak         |PAKISTAN     |>=50 cm    |         0|      8|    34|
|0-6 months  |ResPak         |PAKISTAN     |>=50 cm    |         1|      0|    34|
|0-6 months  |ResPak         |PAKISTAN     |<48 cm     |         0|     14|    34|
|0-6 months  |ResPak         |PAKISTAN     |<48 cm     |         1|      2|    34|
|0-6 months  |ResPak         |PAKISTAN     |[48-50) cm |         0|      8|    34|
|0-6 months  |ResPak         |PAKISTAN     |[48-50) cm |         1|      2|    34|
|0-6 months  |Vellore Crypto |INDIA        |>=50 cm    |         0|    111|   385|
|0-6 months  |Vellore Crypto |INDIA        |>=50 cm    |         1|     28|   385|
|0-6 months  |Vellore Crypto |INDIA        |<48 cm     |         0|     94|   385|
|0-6 months  |Vellore Crypto |INDIA        |<48 cm     |         1|     14|   385|
|0-6 months  |Vellore Crypto |INDIA        |[48-50) cm |         0|    117|   385|
|0-6 months  |Vellore Crypto |INDIA        |[48-50) cm |         1|     21|   385|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |         0|    212|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |         1|      3|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |         0|    163|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |         1|      6|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |         0|    243|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |         1|      5|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |         0|     16|   106|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |         1|      0|   106|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |         0|     45|   106|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |         1|      5|   106|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |         0|     39|   106|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |         1|      1|   106|
|6-24 months |CMIN           |BANGLADESH   |>=50 cm    |         0|      0|    12|
|6-24 months |CMIN           |BANGLADESH   |>=50 cm    |         1|      0|    12|
|6-24 months |CMIN           |BANGLADESH   |<48 cm     |         0|      7|    12|
|6-24 months |CMIN           |BANGLADESH   |<48 cm     |         1|      0|    12|
|6-24 months |CMIN           |BANGLADESH   |[48-50) cm |         0|      5|    12|
|6-24 months |CMIN           |BANGLADESH   |[48-50) cm |         1|      0|    12|
|6-24 months |COHORTS        |INDIA        |>=50 cm    |         0|   1096|  5267|
|6-24 months |COHORTS        |INDIA        |>=50 cm    |         1|     76|  5267|
|6-24 months |COHORTS        |INDIA        |<48 cm     |         0|   1865|  5267|
|6-24 months |COHORTS        |INDIA        |<48 cm     |         1|    253|  5267|
|6-24 months |COHORTS        |INDIA        |[48-50) cm |         0|   1799|  5267|
|6-24 months |COHORTS        |INDIA        |[48-50) cm |         1|    178|  5267|
|6-24 months |COHORTS        |GUATEMALA    |>=50 cm    |         0|    340|   699|
|6-24 months |COHORTS        |GUATEMALA    |>=50 cm    |         1|      7|   699|
|6-24 months |COHORTS        |GUATEMALA    |<48 cm     |         0|    136|   699|
|6-24 months |COHORTS        |GUATEMALA    |<48 cm     |         1|      5|   699|
|6-24 months |COHORTS        |GUATEMALA    |[48-50) cm |         0|    206|   699|
|6-24 months |COHORTS        |GUATEMALA    |[48-50) cm |         1|      5|   699|
|6-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |         0|    998|  2804|
|6-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |         1|     39|  2804|
|6-24 months |COHORTS        |PHILIPPINES  |<48 cm     |         0|    653|  2804|
|6-24 months |COHORTS        |PHILIPPINES  |<48 cm     |         1|     48|  2804|
|6-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |         0|   1010|  2804|
|6-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |         1|     56|  2804|
|6-24 months |CONTENT        |PERU         |>=50 cm    |         0|      1|     2|
|6-24 months |CONTENT        |PERU         |>=50 cm    |         1|      0|     2|
|6-24 months |CONTENT        |PERU         |<48 cm     |         0|      1|     2|
|6-24 months |CONTENT        |PERU         |<48 cm     |         1|      0|     2|
|6-24 months |CONTENT        |PERU         |[48-50) cm |         0|      0|     2|
|6-24 months |CONTENT        |PERU         |[48-50) cm |         1|      0|     2|
|6-24 months |EE             |PAKISTAN     |>=50 cm    |         0|     20|   240|
|6-24 months |EE             |PAKISTAN     |>=50 cm    |         1|      2|   240|
|6-24 months |EE             |PAKISTAN     |<48 cm     |         0|    157|   240|
|6-24 months |EE             |PAKISTAN     |<48 cm     |         1|     15|   240|
|6-24 months |EE             |PAKISTAN     |[48-50) cm |         0|     43|   240|
|6-24 months |EE             |PAKISTAN     |[48-50) cm |         1|      3|   240|
|6-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |         0|     84|   596|
|6-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |         1|      6|   596|
|6-24 months |GMS-Nepal      |NEPAL        |<48 cm     |         0|    275|   596|
|6-24 months |GMS-Nepal      |NEPAL        |<48 cm     |         1|     51|   596|
|6-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |         0|    157|   596|
|6-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |         1|     23|   596|
|6-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |         0|    761| 13275|
|6-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |         1|     48| 13275|
|6-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |         0|   8651| 13275|
|6-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |         1|    527| 13275|
|6-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |         0|   3137| 13275|
|6-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |         1|    151| 13275|
|6-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |         0|   1131|  4410|
|6-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |         1|     67|  4410|
|6-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |         0|   1922|  4410|
|6-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |         1|    218|  4410|
|6-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |         0|   1013|  4410|
|6-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |         1|     59|  4410|
|6-24 months |Keneba         |GAMBIA       |>=50 cm    |         0|    711|  1509|
|6-24 months |Keneba         |GAMBIA       |>=50 cm    |         1|     31|  1509|
|6-24 months |Keneba         |GAMBIA       |<48 cm     |         0|    262|  1509|
|6-24 months |Keneba         |GAMBIA       |<48 cm     |         1|     18|  1509|
|6-24 months |Keneba         |GAMBIA       |[48-50) cm |         0|    456|  1509|
|6-24 months |Keneba         |GAMBIA       |[48-50) cm |         1|     31|  1509|
|6-24 months |MAL-ED         |INDIA        |>=50 cm    |         0|      8|    42|
|6-24 months |MAL-ED         |INDIA        |>=50 cm    |         1|      0|    42|
|6-24 months |MAL-ED         |INDIA        |<48 cm     |         0|     21|    42|
|6-24 months |MAL-ED         |INDIA        |<48 cm     |         1|      0|    42|
|6-24 months |MAL-ED         |INDIA        |[48-50) cm |         0|     11|    42|
|6-24 months |MAL-ED         |INDIA        |[48-50) cm |         1|      2|    42|
|6-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |         0|     32|   218|
|6-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |         1|      3|   218|
|6-24 months |MAL-ED         |BANGLADESH   |<48 cm     |         0|     98|   218|
|6-24 months |MAL-ED         |BANGLADESH   |<48 cm     |         1|      7|   218|
|6-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |         0|     76|   218|
|6-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |         1|      2|   218|
|6-24 months |MAL-ED         |PERU         |>=50 cm    |         0|     39|   220|
|6-24 months |MAL-ED         |PERU         |>=50 cm    |         1|      0|   220|
|6-24 months |MAL-ED         |PERU         |<48 cm     |         0|     87|   220|
|6-24 months |MAL-ED         |PERU         |<48 cm     |         1|      1|   220|
|6-24 months |MAL-ED         |PERU         |[48-50) cm |         0|     93|   220|
|6-24 months |MAL-ED         |PERU         |[48-50) cm |         1|      0|   220|
|6-24 months |MAL-ED         |NEPAL        |>=50 cm    |         0|      6|    27|
|6-24 months |MAL-ED         |NEPAL        |>=50 cm    |         1|      1|    27|
|6-24 months |MAL-ED         |NEPAL        |<48 cm     |         0|     12|    27|
|6-24 months |MAL-ED         |NEPAL        |<48 cm     |         1|      0|    27|
|6-24 months |MAL-ED         |NEPAL        |[48-50) cm |         0|      8|    27|
|6-24 months |MAL-ED         |NEPAL        |[48-50) cm |         1|      0|    27|
|6-24 months |MAL-ED         |BRAZIL       |>=50 cm    |         0|     22|    62|
|6-24 months |MAL-ED         |BRAZIL       |>=50 cm    |         1|      0|    62|
|6-24 months |MAL-ED         |BRAZIL       |<48 cm     |         0|     18|    62|
|6-24 months |MAL-ED         |BRAZIL       |<48 cm     |         1|      0|    62|
|6-24 months |MAL-ED         |BRAZIL       |[48-50) cm |         0|     21|    62|
|6-24 months |MAL-ED         |BRAZIL       |[48-50) cm |         1|      1|    62|
|6-24 months |MAL-ED         |TANZANIA     |>=50 cm    |         0|     20|   121|
|6-24 months |MAL-ED         |TANZANIA     |>=50 cm    |         1|      0|   121|
|6-24 months |MAL-ED         |TANZANIA     |<48 cm     |         0|     41|   121|
|6-24 months |MAL-ED         |TANZANIA     |<48 cm     |         1|      0|   121|
|6-24 months |MAL-ED         |TANZANIA     |[48-50) cm |         0|     60|   121|
|6-24 months |MAL-ED         |TANZANIA     |[48-50) cm |         1|      0|   121|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |         0|     30|   104|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |         1|      0|   104|
|6-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |         0|     29|   104|
|6-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |         1|      0|   104|
|6-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |         0|     43|   104|
|6-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |         1|      2|   104|
|6-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |         0|     99|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |         1|      7|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |         0|    182|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |         1|     27|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |         0|    187|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |         1|     13|   515|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |         0|    165|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |         1|      0|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |         0|    268|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |         1|     12|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |         0|    271|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |         1|     14|   730|
|6-24 months |PROBIT         |BELARUS      |>=50 cm    |         0|  14909| 16583|
|6-24 months |PROBIT         |BELARUS      |>=50 cm    |         1|    132| 16583|
|6-24 months |PROBIT         |BELARUS      |<48 cm     |         0|    180| 16583|
|6-24 months |PROBIT         |BELARUS      |<48 cm     |         1|      0| 16583|
|6-24 months |PROBIT         |BELARUS      |[48-50) cm |         0|   1360| 16583|
|6-24 months |PROBIT         |BELARUS      |[48-50) cm |         1|      2| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |         0|    153|   641|
|6-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |         1|      2|   641|
|6-24 months |PROVIDE        |BANGLADESH   |<48 cm     |         0|    219|   641|
|6-24 months |PROVIDE        |BANGLADESH   |<48 cm     |         1|      8|   641|
|6-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |         0|    254|   641|
|6-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |         1|      5|   641|
|6-24 months |ResPak         |PAKISTAN     |>=50 cm    |         0|      8|    35|
|6-24 months |ResPak         |PAKISTAN     |>=50 cm    |         1|      1|    35|
|6-24 months |ResPak         |PAKISTAN     |<48 cm     |         0|     15|    35|
|6-24 months |ResPak         |PAKISTAN     |<48 cm     |         1|      1|    35|
|6-24 months |ResPak         |PAKISTAN     |[48-50) cm |         0|      9|    35|
|6-24 months |ResPak         |PAKISTAN     |[48-50) cm |         1|      1|    35|
|6-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |         0|    198|  1353|
|6-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |         1|      8|  1353|
|6-24 months |SAS-CompFeed   |INDIA        |<48 cm     |         0|    634|  1353|
|6-24 months |SAS-CompFeed   |INDIA        |<48 cm     |         1|     78|  1353|
|6-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |         0|    410|  1353|
|6-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |         1|     25|  1353|
|6-24 months |Vellore Crypto |INDIA        |>=50 cm    |         0|    124|   391|
|6-24 months |Vellore Crypto |INDIA        |>=50 cm    |         1|     18|   391|
|6-24 months |Vellore Crypto |INDIA        |<48 cm     |         0|    100|   391|
|6-24 months |Vellore Crypto |INDIA        |<48 cm     |         1|     11|   391|
|6-24 months |Vellore Crypto |INDIA        |[48-50) cm |         0|    121|   391|
|6-24 months |Vellore Crypto |INDIA        |[48-50) cm |         1|     17|   391|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |         0|   2667|  9434|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |         1|     34|  9434|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |         0|   2929|  9434|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |         1|     63|  9434|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |         0|   3672|  9434|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |         1|     69|  9434|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


