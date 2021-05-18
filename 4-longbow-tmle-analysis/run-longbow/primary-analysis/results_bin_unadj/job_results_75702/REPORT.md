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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      | month| pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|-----:|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     1|         0|     31|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     1|         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     2|         0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     2|         1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     3|         0|     31|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     3|         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     4|         0|     41|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     4|         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     5|         0|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     5|         1|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     6|         0|     37|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     6|         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     7|         0|     38|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     7|         1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     8|         0|     17|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     8|         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     9|         0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |     9|         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    10|         0|     27|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    10|         1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    11|         0|     42|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    11|         1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    12|         0|     24|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |    12|         1|      1|   373|
|0-24 months |CMIN           |BANGLADESH   |     1|         0|     25|   257|
|0-24 months |CMIN           |BANGLADESH   |     1|         1|      3|   257|
|0-24 months |CMIN           |BANGLADESH   |     2|         0|     30|   257|
|0-24 months |CMIN           |BANGLADESH   |     2|         1|      2|   257|
|0-24 months |CMIN           |BANGLADESH   |     3|         0|     20|   257|
|0-24 months |CMIN           |BANGLADESH   |     3|         1|      0|   257|
|0-24 months |CMIN           |BANGLADESH   |     4|         0|     16|   257|
|0-24 months |CMIN           |BANGLADESH   |     4|         1|      3|   257|
|0-24 months |CMIN           |BANGLADESH   |     5|         0|     20|   257|
|0-24 months |CMIN           |BANGLADESH   |     5|         1|      0|   257|
|0-24 months |CMIN           |BANGLADESH   |     6|         0|     20|   257|
|0-24 months |CMIN           |BANGLADESH   |     6|         1|      3|   257|
|0-24 months |CMIN           |BANGLADESH   |     7|         0|     12|   257|
|0-24 months |CMIN           |BANGLADESH   |     7|         1|      1|   257|
|0-24 months |CMIN           |BANGLADESH   |     8|         0|     13|   257|
|0-24 months |CMIN           |BANGLADESH   |     8|         1|      1|   257|
|0-24 months |CMIN           |BANGLADESH   |     9|         0|     18|   257|
|0-24 months |CMIN           |BANGLADESH   |     9|         1|      1|   257|
|0-24 months |CMIN           |BANGLADESH   |    10|         0|     21|   257|
|0-24 months |CMIN           |BANGLADESH   |    10|         1|      0|   257|
|0-24 months |CMIN           |BANGLADESH   |    11|         0|      2|   257|
|0-24 months |CMIN           |BANGLADESH   |    11|         1|      0|   257|
|0-24 months |CMIN           |BANGLADESH   |    12|         0|     40|   257|
|0-24 months |CMIN           |BANGLADESH   |    12|         1|      6|   257|
|0-24 months |CONTENT        |PERU         |     1|         0|      9|   215|
|0-24 months |CONTENT        |PERU         |     1|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     2|         0|     13|   215|
|0-24 months |CONTENT        |PERU         |     2|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     3|         0|     27|   215|
|0-24 months |CONTENT        |PERU         |     3|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     4|         0|     18|   215|
|0-24 months |CONTENT        |PERU         |     4|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     5|         0|     25|   215|
|0-24 months |CONTENT        |PERU         |     5|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     6|         0|     14|   215|
|0-24 months |CONTENT        |PERU         |     6|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     7|         0|     16|   215|
|0-24 months |CONTENT        |PERU         |     7|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     8|         0|     26|   215|
|0-24 months |CONTENT        |PERU         |     8|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |     9|         0|     19|   215|
|0-24 months |CONTENT        |PERU         |     9|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |    10|         0|     23|   215|
|0-24 months |CONTENT        |PERU         |    10|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |    11|         0|     18|   215|
|0-24 months |CONTENT        |PERU         |    11|         1|      0|   215|
|0-24 months |CONTENT        |PERU         |    12|         0|      7|   215|
|0-24 months |CONTENT        |PERU         |    12|         1|      0|   215|
|0-24 months |EE             |PAKISTAN     |     1|         0|     84|   377|
|0-24 months |EE             |PAKISTAN     |     1|         1|      8|   377|
|0-24 months |EE             |PAKISTAN     |     2|         0|     60|   377|
|0-24 months |EE             |PAKISTAN     |     2|         1|      7|   377|
|0-24 months |EE             |PAKISTAN     |     3|         0|     37|   377|
|0-24 months |EE             |PAKISTAN     |     3|         1|      6|   377|
|0-24 months |EE             |PAKISTAN     |     4|         0|     15|   377|
|0-24 months |EE             |PAKISTAN     |     4|         1|      1|   377|
|0-24 months |EE             |PAKISTAN     |     5|         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |     5|         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |     6|         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |     6|         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |     7|         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |     7|         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |     8|         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |     8|         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |     9|         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |     9|         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |    10|         0|      4|   377|
|0-24 months |EE             |PAKISTAN     |    10|         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |    11|         0|     62|   377|
|0-24 months |EE             |PAKISTAN     |    11|         1|      8|   377|
|0-24 months |EE             |PAKISTAN     |    12|         0|     82|   377|
|0-24 months |EE             |PAKISTAN     |    12|         1|      3|   377|
|0-24 months |GMS-Nepal      |NEPAL        |     1|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     1|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     2|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     2|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     3|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     3|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     4|         0|      1|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     4|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     5|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     5|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     6|         0|    106|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     6|         1|     14|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     7|         0|    196|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     7|         1|     32|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     8|         0|    214|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     8|         1|     34|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     9|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |     9|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |    10|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |    10|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |    11|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |    11|         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |    12|         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |    12|         1|      0|   597|
|0-24 months |Guatemala BSC  |GUATEMALA    |     1|         0|     14|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     1|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     2|         0|     18|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     2|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     3|         0|     18|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     3|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     4|         0|     19|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     4|         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     5|         0|     28|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     5|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     6|         0|     35|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     6|         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     7|         0|     23|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     7|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     8|         0|     17|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     8|         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     9|         0|     30|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |     9|         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |    10|         0|     21|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |    10|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |    11|         0|     22|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |    11|         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |    12|         0|      7|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |    12|         1|      0|   256|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     1|         0|    113|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     1|         1|     13|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     2|         0|     95|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     2|         1|      9|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     3|         0|     89|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     3|         1|     14|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     4|         0|     87|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     4|         1|     12|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     5|         0|     96|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     5|         1|     17|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     6|         0|    171|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     6|         1|     20|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     7|         0|    194|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     7|         1|     20|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     8|         0|    176|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     8|         1|     34|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     9|         0|    134|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |     9|         1|     17|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    10|         0|    181|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    10|         1|     19|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    11|         0|     77|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    11|         1|     11|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    12|         0|     56|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |    12|         1|     14|  1669|
|0-24 months |JiVitA-3       |BANGLADESH   |     1|         0|   1227| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     1|         1|     58| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     2|         0|   1073| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     2|         1|     55| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     3|         0|   1307| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     3|         1|     77| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     4|         0|   1062| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     4|         1|     76| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     5|         0|   1030| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     5|         1|     58| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     6|         0|   1022| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     6|         1|     76| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     7|         0|   1127| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     7|         1|     71| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     8|         0|   1281| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     8|         1|     81| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     9|         0|   1360| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |     9|         1|     88| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |    10|         0|   1461| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |    10|         1|    104| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |    11|         0|   1460| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |    11|         1|     80| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |    12|         0|   1495| 15803|
|0-24 months |JiVitA-3       |BANGLADESH   |    12|         1|     74| 15803|
|0-24 months |JiVitA-4       |BANGLADESH   |     1|         0|     50|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     1|         1|      2|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     2|         0|    342|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     2|         1|     20|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     3|         0|    429|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     3|         1|     36|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     4|         0|    842|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     4|         1|     73|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     5|         0|    561|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     5|         1|     55|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     6|         0|    411|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     6|         1|     44|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     7|         0|    784|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     7|         1|     89|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     8|         0|    493|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     8|         1|     36|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     9|         0|    437|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |     9|         1|     33|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |    10|         0|    291|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |    10|         1|     18|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |    11|         0|    142|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |    11|         1|     15|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |    12|         0|     73|  5281|
|0-24 months |JiVitA-4       |BANGLADESH   |    12|         1|      5|  5281|
|0-24 months |Keneba         |GAMBIA       |     1|         0|    201|  2444|
|0-24 months |Keneba         |GAMBIA       |     1|         1|      8|  2444|
|0-24 months |Keneba         |GAMBIA       |     2|         0|    238|  2444|
|0-24 months |Keneba         |GAMBIA       |     2|         1|     18|  2444|
|0-24 months |Keneba         |GAMBIA       |     3|         0|    198|  2444|
|0-24 months |Keneba         |GAMBIA       |     3|         1|      7|  2444|
|0-24 months |Keneba         |GAMBIA       |     4|         0|    228|  2444|
|0-24 months |Keneba         |GAMBIA       |     4|         1|     19|  2444|
|0-24 months |Keneba         |GAMBIA       |     5|         0|    176|  2444|
|0-24 months |Keneba         |GAMBIA       |     5|         1|      9|  2444|
|0-24 months |Keneba         |GAMBIA       |     6|         0|    171|  2444|
|0-24 months |Keneba         |GAMBIA       |     6|         1|     12|  2444|
|0-24 months |Keneba         |GAMBIA       |     7|         0|    135|  2444|
|0-24 months |Keneba         |GAMBIA       |     7|         1|      6|  2444|
|0-24 months |Keneba         |GAMBIA       |     8|         0|    129|  2444|
|0-24 months |Keneba         |GAMBIA       |     8|         1|     15|  2444|
|0-24 months |Keneba         |GAMBIA       |     9|         0|    190|  2444|
|0-24 months |Keneba         |GAMBIA       |     9|         1|      9|  2444|
|0-24 months |Keneba         |GAMBIA       |    10|         0|    186|  2444|
|0-24 months |Keneba         |GAMBIA       |    10|         1|     12|  2444|
|0-24 months |Keneba         |GAMBIA       |    11|         0|    259|  2444|
|0-24 months |Keneba         |GAMBIA       |    11|         1|     16|  2444|
|0-24 months |Keneba         |GAMBIA       |    12|         0|    188|  2444|
|0-24 months |Keneba         |GAMBIA       |    12|         1|     14|  2444|
|0-24 months |LCNI-5         |MALAWI       |     1|         0|     49|   719|
|0-24 months |LCNI-5         |MALAWI       |     1|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |     2|         0|    100|   719|
|0-24 months |LCNI-5         |MALAWI       |     2|         1|      2|   719|
|0-24 months |LCNI-5         |MALAWI       |     3|         0|     88|   719|
|0-24 months |LCNI-5         |MALAWI       |     3|         1|      1|   719|
|0-24 months |LCNI-5         |MALAWI       |     4|         0|     97|   719|
|0-24 months |LCNI-5         |MALAWI       |     4|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |     5|         0|     85|   719|
|0-24 months |LCNI-5         |MALAWI       |     5|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |     6|         0|     75|   719|
|0-24 months |LCNI-5         |MALAWI       |     6|         1|      1|   719|
|0-24 months |LCNI-5         |MALAWI       |     7|         0|     60|   719|
|0-24 months |LCNI-5         |MALAWI       |     7|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |     8|         0|     38|   719|
|0-24 months |LCNI-5         |MALAWI       |     8|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |     9|         0|     24|   719|
|0-24 months |LCNI-5         |MALAWI       |     9|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |    10|         0|     30|   719|
|0-24 months |LCNI-5         |MALAWI       |    10|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |    11|         0|     41|   719|
|0-24 months |LCNI-5         |MALAWI       |    11|         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |    12|         0|     26|   719|
|0-24 months |LCNI-5         |MALAWI       |    12|         1|      2|   719|
|0-24 months |MAL-ED         |INDIA        |     1|         0|     18|   241|
|0-24 months |MAL-ED         |INDIA        |     1|         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |     2|         0|     17|   241|
|0-24 months |MAL-ED         |INDIA        |     2|         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |     3|         0|     20|   241|
|0-24 months |MAL-ED         |INDIA        |     3|         1|      1|   241|
|0-24 months |MAL-ED         |INDIA        |     4|         0|     14|   241|
|0-24 months |MAL-ED         |INDIA        |     4|         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |     5|         0|      7|   241|
|0-24 months |MAL-ED         |INDIA        |     5|         1|      1|   241|
|0-24 months |MAL-ED         |INDIA        |     6|         0|     15|   241|
|0-24 months |MAL-ED         |INDIA        |     6|         1|      3|   241|
|0-24 months |MAL-ED         |INDIA        |     7|         0|     21|   241|
|0-24 months |MAL-ED         |INDIA        |     7|         1|      3|   241|
|0-24 months |MAL-ED         |INDIA        |     8|         0|     22|   241|
|0-24 months |MAL-ED         |INDIA        |     8|         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |     9|         0|     20|   241|
|0-24 months |MAL-ED         |INDIA        |     9|         1|      0|   241|
|0-24 months |MAL-ED         |INDIA        |    10|         0|     25|   241|
|0-24 months |MAL-ED         |INDIA        |    10|         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |    11|         0|     23|   241|
|0-24 months |MAL-ED         |INDIA        |    11|         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |    12|         0|     18|   241|
|0-24 months |MAL-ED         |INDIA        |    12|         1|      1|   241|
|0-24 months |MAL-ED         |BANGLADESH   |     1|         0|     20|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     1|         1|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     2|         0|     19|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     2|         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     3|         0|     25|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     3|         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     4|         0|     21|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     4|         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     5|         0|     19|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     5|         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     6|         0|      7|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     6|         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     7|         0|     19|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     7|         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     8|         0|     24|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     8|         1|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     9|         0|     20|   248|
|0-24 months |MAL-ED         |BANGLADESH   |     9|         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH   |    10|         0|     20|   248|
|0-24 months |MAL-ED         |BANGLADESH   |    10|         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH   |    11|         0|     15|   248|
|0-24 months |MAL-ED         |BANGLADESH   |    11|         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |    12|         0|     26|   248|
|0-24 months |MAL-ED         |BANGLADESH   |    12|         1|      1|   248|
|0-24 months |MAL-ED         |PERU         |     1|         0|     39|   284|
|0-24 months |MAL-ED         |PERU         |     1|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     2|         0|     24|   284|
|0-24 months |MAL-ED         |PERU         |     2|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     3|         0|     21|   284|
|0-24 months |MAL-ED         |PERU         |     3|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     4|         0|     20|   284|
|0-24 months |MAL-ED         |PERU         |     4|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     5|         0|     25|   284|
|0-24 months |MAL-ED         |PERU         |     5|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     6|         0|     18|   284|
|0-24 months |MAL-ED         |PERU         |     6|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     7|         0|     23|   284|
|0-24 months |MAL-ED         |PERU         |     7|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |     8|         0|     15|   284|
|0-24 months |MAL-ED         |PERU         |     8|         1|      1|   284|
|0-24 months |MAL-ED         |PERU         |     9|         0|     23|   284|
|0-24 months |MAL-ED         |PERU         |     9|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |    10|         0|     21|   284|
|0-24 months |MAL-ED         |PERU         |    10|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |    11|         0|     32|   284|
|0-24 months |MAL-ED         |PERU         |    11|         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |    12|         0|     22|   284|
|0-24 months |MAL-ED         |PERU         |    12|         1|      0|   284|
|0-24 months |MAL-ED         |NEPAL        |     1|         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |     1|         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |     2|         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |     2|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |     3|         0|     17|   238|
|0-24 months |MAL-ED         |NEPAL        |     3|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |     4|         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |     4|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |     5|         0|     20|   238|
|0-24 months |MAL-ED         |NEPAL        |     5|         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |     6|         0|     21|   238|
|0-24 months |MAL-ED         |NEPAL        |     6|         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |     7|         0|     17|   238|
|0-24 months |MAL-ED         |NEPAL        |     7|         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |     8|         0|     24|   238|
|0-24 months |MAL-ED         |NEPAL        |     8|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |     9|         0|     14|   238|
|0-24 months |MAL-ED         |NEPAL        |     9|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |    10|         0|     22|   238|
|0-24 months |MAL-ED         |NEPAL        |    10|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |    11|         0|     23|   238|
|0-24 months |MAL-ED         |NEPAL        |    11|         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |    12|         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |    12|         1|      0|   238|
|0-24 months |MAL-ED         |BRAZIL       |     1|         0|     13|   218|
|0-24 months |MAL-ED         |BRAZIL       |     1|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     2|         0|     26|   218|
|0-24 months |MAL-ED         |BRAZIL       |     2|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     3|         0|     17|   218|
|0-24 months |MAL-ED         |BRAZIL       |     3|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     4|         0|     11|   218|
|0-24 months |MAL-ED         |BRAZIL       |     4|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     5|         0|     22|   218|
|0-24 months |MAL-ED         |BRAZIL       |     5|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     6|         0|      7|   218|
|0-24 months |MAL-ED         |BRAZIL       |     6|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     7|         0|     17|   218|
|0-24 months |MAL-ED         |BRAZIL       |     7|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     8|         0|     19|   218|
|0-24 months |MAL-ED         |BRAZIL       |     8|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |     9|         0|     29|   218|
|0-24 months |MAL-ED         |BRAZIL       |     9|         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |    10|         0|     21|   218|
|0-24 months |MAL-ED         |BRAZIL       |    10|         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL       |    11|         0|     18|   218|
|0-24 months |MAL-ED         |BRAZIL       |    11|         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL       |    12|         0|     16|   218|
|0-24 months |MAL-ED         |BRAZIL       |    12|         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |     1|         0|     23|   253|
|0-24 months |MAL-ED         |TANZANIA     |     1|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     2|         0|     27|   253|
|0-24 months |MAL-ED         |TANZANIA     |     2|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     3|         0|     21|   253|
|0-24 months |MAL-ED         |TANZANIA     |     3|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     4|         0|     10|   253|
|0-24 months |MAL-ED         |TANZANIA     |     4|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     5|         0|     17|   253|
|0-24 months |MAL-ED         |TANZANIA     |     5|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     6|         0|     20|   253|
|0-24 months |MAL-ED         |TANZANIA     |     6|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     7|         0|     24|   253|
|0-24 months |MAL-ED         |TANZANIA     |     7|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     8|         0|     12|   253|
|0-24 months |MAL-ED         |TANZANIA     |     8|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |     9|         0|     21|   253|
|0-24 months |MAL-ED         |TANZANIA     |     9|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |    10|         0|     19|   253|
|0-24 months |MAL-ED         |TANZANIA     |    10|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |    11|         0|     29|   253|
|0-24 months |MAL-ED         |TANZANIA     |    11|         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |    12|         0|     30|   253|
|0-24 months |MAL-ED         |TANZANIA     |    12|         1|      0|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |     1|         0|     37|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     1|         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     2|         0|     23|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     2|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     3|         0|     16|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     3|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     4|         0|     13|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     4|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     5|         0|     14|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     5|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     6|         0|     18|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     6|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     7|         0|     26|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     7|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     8|         0|     12|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     8|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     9|         0|     23|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |     9|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |    10|         0|     27|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |    10|         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |    11|         0|     26|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |    11|         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |    12|         0|     38|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |    12|         1|      0|   275|
|0-24 months |NIH-Birth      |BANGLADESH   |     1|         0|     49|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     1|         1|      5|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     2|         0|     44|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     2|         1|      2|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     3|         0|     45|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     3|         1|      5|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     4|         0|     40|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     4|         1|      5|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     5|         0|     34|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     5|         1|      6|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     6|         0|     36|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     6|         1|      4|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     7|         0|     42|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     7|         1|      3|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     8|         0|     32|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     8|         1|      3|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     9|         0|     27|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |     9|         1|      2|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |    10|         0|     47|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |    10|         1|      5|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |    11|         0|     44|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |    11|         1|      4|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |    12|         0|     47|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |    12|         1|      3|   534|
|0-24 months |PROBIT         |BELARUS      |     1|         0|   1130| 16583|
|0-24 months |PROBIT         |BELARUS      |     1|         1|     17| 16583|
|0-24 months |PROBIT         |BELARUS      |     2|         0|    980| 16583|
|0-24 months |PROBIT         |BELARUS      |     2|         1|      6| 16583|
|0-24 months |PROBIT         |BELARUS      |     3|         0|   1164| 16583|
|0-24 months |PROBIT         |BELARUS      |     3|         1|      5| 16583|
|0-24 months |PROBIT         |BELARUS      |     4|         0|   1111| 16583|
|0-24 months |PROBIT         |BELARUS      |     4|         1|      7| 16583|
|0-24 months |PROBIT         |BELARUS      |     5|         0|   1125| 16583|
|0-24 months |PROBIT         |BELARUS      |     5|         1|      7| 16583|
|0-24 months |PROBIT         |BELARUS      |     6|         0|   1177| 16583|
|0-24 months |PROBIT         |BELARUS      |     6|         1|     14| 16583|
|0-24 months |PROBIT         |BELARUS      |     7|         0|   1439| 16583|
|0-24 months |PROBIT         |BELARUS      |     7|         1|     14| 16583|
|0-24 months |PROBIT         |BELARUS      |     8|         0|   1572| 16583|
|0-24 months |PROBIT         |BELARUS      |     8|         1|      9| 16583|
|0-24 months |PROBIT         |BELARUS      |     9|         0|   1544| 16583|
|0-24 months |PROBIT         |BELARUS      |     9|         1|     15| 16583|
|0-24 months |PROBIT         |BELARUS      |    10|         0|   1752| 16583|
|0-24 months |PROBIT         |BELARUS      |    10|         1|     12| 16583|
|0-24 months |PROBIT         |BELARUS      |    11|         0|   1663| 16583|
|0-24 months |PROBIT         |BELARUS      |    11|         1|     18| 16583|
|0-24 months |PROBIT         |BELARUS      |    12|         0|   1792| 16583|
|0-24 months |PROBIT         |BELARUS      |    12|         1|     10| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |     1|         0|     28|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     1|         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     2|         0|     37|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     2|         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     3|         0|     34|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     3|         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     4|         0|     48|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     4|         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     5|         0|     39|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     5|         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     6|         0|     43|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     6|         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     7|         0|     78|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     7|         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     8|         0|     76|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     8|         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     9|         0|     60|   641|
|0-24 months |PROVIDE        |BANGLADESH   |     9|         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH   |    10|         0|     71|   641|
|0-24 months |PROVIDE        |BANGLADESH   |    10|         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |    11|         0|     71|   641|
|0-24 months |PROVIDE        |BANGLADESH   |    11|         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |    12|         0|     41|   641|
|0-24 months |PROVIDE        |BANGLADESH   |    12|         1|      0|   641|
|0-24 months |ResPak         |PAKISTAN     |     1|         0|      2|   256|
|0-24 months |ResPak         |PAKISTAN     |     1|         1|      0|   256|
|0-24 months |ResPak         |PAKISTAN     |     2|         0|      6|   256|
|0-24 months |ResPak         |PAKISTAN     |     2|         1|      3|   256|
|0-24 months |ResPak         |PAKISTAN     |     3|         0|      9|   256|
|0-24 months |ResPak         |PAKISTAN     |     3|         1|      1|   256|
|0-24 months |ResPak         |PAKISTAN     |     4|         0|     19|   256|
|0-24 months |ResPak         |PAKISTAN     |     4|         1|      2|   256|
|0-24 months |ResPak         |PAKISTAN     |     5|         0|     27|   256|
|0-24 months |ResPak         |PAKISTAN     |     5|         1|      5|   256|
|0-24 months |ResPak         |PAKISTAN     |     6|         0|     41|   256|
|0-24 months |ResPak         |PAKISTAN     |     6|         1|      3|   256|
|0-24 months |ResPak         |PAKISTAN     |     7|         0|     40|   256|
|0-24 months |ResPak         |PAKISTAN     |     7|         1|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |     8|         0|     23|   256|
|0-24 months |ResPak         |PAKISTAN     |     8|         1|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |     9|         0|     31|   256|
|0-24 months |ResPak         |PAKISTAN     |     9|         1|      9|   256|
|0-24 months |ResPak         |PAKISTAN     |    10|         0|     14|   256|
|0-24 months |ResPak         |PAKISTAN     |    10|         1|      1|   256|
|0-24 months |ResPak         |PAKISTAN     |    11|         0|      5|   256|
|0-24 months |ResPak         |PAKISTAN     |    11|         1|      2|   256|
|0-24 months |ResPak         |PAKISTAN     |    12|         0|      5|   256|
|0-24 months |ResPak         |PAKISTAN     |    12|         1|      0|   256|
|0-24 months |SAS-CompFeed   |INDIA        |     1|         0|     81|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     1|         1|     13|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     2|         0|     74|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     2|         1|      6|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     3|         0|     72|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     3|         1|      7|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     4|         0|     70|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     4|         1|      6|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     5|         0|     70|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     5|         1|      9|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     6|         0|    102|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     6|         1|      4|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     7|         0|    105|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     7|         1|     12|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     8|         0|    138|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     8|         1|     15|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     9|         0|    154|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |     9|         1|     14|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |    10|         0|    141|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |    10|         1|      9|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |    11|         0|    117|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |    11|         1|     12|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |    12|         0|    128|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |    12|         1|      7|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA        |     1|         0|     50|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     1|         1|      6|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     2|         0|     33|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     2|         1|      5|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     3|         0|     26|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     3|         1|      8|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     4|         0|     19|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     4|         1|      8|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     5|         0|     24|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     5|         1|      4|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     6|         0|     24|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     6|         1|      5|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     7|         0|     14|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     7|         1|      3|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     8|         0|      0|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     8|         1|      0|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     9|         0|      9|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |     9|         1|      3|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |    10|         0|     23|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |    10|         1|      3|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |    11|         0|     42|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |    11|         1|      5|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |    12|         0|     46|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |    12|         1|     15|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |     1|         0|    139|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     1|         1|      6|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     2|         0|    159|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     2|         1|      4|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     3|         0|    159|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     3|         1|      2|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     4|         0|    151|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     4|         1|      7|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     5|         0|    167|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     5|         1|      3|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     6|         0|    149|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     6|         1|      3|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     7|         0|    188|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     7|         1|      5|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     8|         0|    210|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     8|         1|      4|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     9|         0|    194|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |     9|         1|      1|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |    10|         0|    218|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |    10|         1|      8|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |    11|         0|    195|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |    11|         1|     10|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |    12|         0|    179|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |    12|         1|      5|  2166|
|0-24 months |Vellore Crypto |INDIA        |     1|         0|     33|   410|
|0-24 months |Vellore Crypto |INDIA        |     1|         1|      3|   410|
|0-24 months |Vellore Crypto |INDIA        |     2|         0|     26|   410|
|0-24 months |Vellore Crypto |INDIA        |     2|         1|      2|   410|
|0-24 months |Vellore Crypto |INDIA        |     3|         0|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |     3|         1|      1|   410|
|0-24 months |Vellore Crypto |INDIA        |     4|         0|     20|   410|
|0-24 months |Vellore Crypto |INDIA        |     4|         1|      2|   410|
|0-24 months |Vellore Crypto |INDIA        |     5|         0|     19|   410|
|0-24 months |Vellore Crypto |INDIA        |     5|         1|      2|   410|
|0-24 months |Vellore Crypto |INDIA        |     6|         0|     32|   410|
|0-24 months |Vellore Crypto |INDIA        |     6|         1|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |     7|         0|     31|   410|
|0-24 months |Vellore Crypto |INDIA        |     7|         1|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |     8|         0|     36|   410|
|0-24 months |Vellore Crypto |INDIA        |     8|         1|      9|   410|
|0-24 months |Vellore Crypto |INDIA        |     9|         0|     22|   410|
|0-24 months |Vellore Crypto |INDIA        |     9|         1|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |    10|         0|     31|   410|
|0-24 months |Vellore Crypto |INDIA        |    10|         1|      6|   410|
|0-24 months |Vellore Crypto |INDIA        |    11|         0|     38|   410|
|0-24 months |Vellore Crypto |INDIA        |    11|         1|      3|   410|
|0-24 months |Vellore Crypto |INDIA        |    12|         0|     46|   410|
|0-24 months |Vellore Crypto |INDIA        |    12|         1|      5|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     1|         0|    913|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     1|         1|     24|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     2|         0|    690|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     2|         1|      9|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     3|         0|    776|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     3|         1|     23|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     4|         0|    716|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     4|         1|      8|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     5|         0|    693|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     5|         1|      7|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     6|         0|    774|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     6|         1|     13|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     7|         0|    778|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     7|         1|     16|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     8|         0|    824|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     8|         1|     13|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     9|         0|    869|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |     9|         1|     14|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    10|         0|    655|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    10|         1|     14|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    11|         0|    784|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    11|         1|     11|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    12|         0|    887|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE     |    12|         1|     16|  9527|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     1|         0|     27|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     1|         1|      6|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     2|         0|     13|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     2|         1|      2|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     3|         0|     22|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     3|         1|      8|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     4|         0|     37|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     4|         1|      6|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     5|         0|     25|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     5|         1|      6|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     6|         0|     34|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     6|         1|      3|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     7|         0|     35|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     7|         1|      3|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     8|         0|     13|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     8|         1|      4|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     9|         0|     17|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |     9|         1|      2|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    10|         0|     25|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    10|         1|      3|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    11|         0|     37|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    11|         1|      5|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    12|         0|     23|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |    12|         1|      2|   358|
|0-6 months  |CMIN           |BANGLADESH   |     1|         0|     24|   234|
|0-6 months  |CMIN           |BANGLADESH   |     1|         1|      3|   234|
|0-6 months  |CMIN           |BANGLADESH   |     2|         0|     27|   234|
|0-6 months  |CMIN           |BANGLADESH   |     2|         1|      1|   234|
|0-6 months  |CMIN           |BANGLADESH   |     3|         0|     18|   234|
|0-6 months  |CMIN           |BANGLADESH   |     3|         1|      0|   234|
|0-6 months  |CMIN           |BANGLADESH   |     4|         0|     17|   234|
|0-6 months  |CMIN           |BANGLADESH   |     4|         1|      1|   234|
|0-6 months  |CMIN           |BANGLADESH   |     5|         0|     15|   234|
|0-6 months  |CMIN           |BANGLADESH   |     5|         1|      2|   234|
|0-6 months  |CMIN           |BANGLADESH   |     6|         0|     20|   234|
|0-6 months  |CMIN           |BANGLADESH   |     6|         1|      1|   234|
|0-6 months  |CMIN           |BANGLADESH   |     7|         0|     10|   234|
|0-6 months  |CMIN           |BANGLADESH   |     7|         1|      0|   234|
|0-6 months  |CMIN           |BANGLADESH   |     8|         0|     14|   234|
|0-6 months  |CMIN           |BANGLADESH   |     8|         1|      0|   234|
|0-6 months  |CMIN           |BANGLADESH   |     9|         0|     18|   234|
|0-6 months  |CMIN           |BANGLADESH   |     9|         1|      0|   234|
|0-6 months  |CMIN           |BANGLADESH   |    10|         0|     18|   234|
|0-6 months  |CMIN           |BANGLADESH   |    10|         1|      1|   234|
|0-6 months  |CMIN           |BANGLADESH   |    11|         0|      1|   234|
|0-6 months  |CMIN           |BANGLADESH   |    11|         1|      0|   234|
|0-6 months  |CMIN           |BANGLADESH   |    12|         0|     43|   234|
|0-6 months  |CMIN           |BANGLADESH   |    12|         1|      0|   234|
|0-6 months  |CONTENT        |PERU         |     1|         0|      9|   215|
|0-6 months  |CONTENT        |PERU         |     1|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     2|         0|     13|   215|
|0-6 months  |CONTENT        |PERU         |     2|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     3|         0|     27|   215|
|0-6 months  |CONTENT        |PERU         |     3|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     4|         0|     18|   215|
|0-6 months  |CONTENT        |PERU         |     4|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     5|         0|     25|   215|
|0-6 months  |CONTENT        |PERU         |     5|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     6|         0|     14|   215|
|0-6 months  |CONTENT        |PERU         |     6|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     7|         0|     16|   215|
|0-6 months  |CONTENT        |PERU         |     7|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     8|         0|     26|   215|
|0-6 months  |CONTENT        |PERU         |     8|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |     9|         0|     19|   215|
|0-6 months  |CONTENT        |PERU         |     9|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |    10|         0|     23|   215|
|0-6 months  |CONTENT        |PERU         |    10|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |    11|         0|     18|   215|
|0-6 months  |CONTENT        |PERU         |    11|         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |    12|         0|      7|   215|
|0-6 months  |CONTENT        |PERU         |    12|         1|      0|   215|
|0-6 months  |EE             |PAKISTAN     |     1|         0|     82|   371|
|0-6 months  |EE             |PAKISTAN     |     1|         1|      9|   371|
|0-6 months  |EE             |PAKISTAN     |     2|         0|     61|   371|
|0-6 months  |EE             |PAKISTAN     |     2|         1|      4|   371|
|0-6 months  |EE             |PAKISTAN     |     3|         0|     40|   371|
|0-6 months  |EE             |PAKISTAN     |     3|         1|      3|   371|
|0-6 months  |EE             |PAKISTAN     |     4|         0|     15|   371|
|0-6 months  |EE             |PAKISTAN     |     4|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     5|         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     5|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     6|         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     6|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     7|         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     7|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     8|         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     8|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     9|         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |     9|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |    10|         0|      4|   371|
|0-6 months  |EE             |PAKISTAN     |    10|         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |    11|         0|     65|   371|
|0-6 months  |EE             |PAKISTAN     |    11|         1|      5|   371|
|0-6 months  |EE             |PAKISTAN     |    12|         0|     79|   371|
|0-6 months  |EE             |PAKISTAN     |    12|         1|      4|   371|
|0-6 months  |GMS-Nepal      |NEPAL        |     1|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     1|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     2|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     2|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     3|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     3|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     4|         0|      1|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     4|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     5|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     5|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     6|         0|    100|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     6|         1|     14|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     7|         0|    188|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     7|         1|     22|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     8|         0|    216|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     8|         1|     26|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     9|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |     9|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |    10|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |    10|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |    11|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |    11|         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |    12|         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |    12|         1|      0|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |     1|         0|     12|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     1|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     2|         0|     13|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     2|         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     3|         0|      2|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     3|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     4|         0|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     4|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     5|         0|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     5|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     6|         0|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     6|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     7|         0|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     7|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     8|         0|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     8|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     9|         0|     11|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |     9|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |    10|         0|      3|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |    10|         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |    11|         0|      6|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |    11|         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |    12|         0|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |    12|         1|      0|    50|
|0-6 months  |Keneba         |GAMBIA       |     1|         0|    165|  2045|
|0-6 months  |Keneba         |GAMBIA       |     1|         1|      5|  2045|
|0-6 months  |Keneba         |GAMBIA       |     2|         0|    212|  2045|
|0-6 months  |Keneba         |GAMBIA       |     2|         1|      3|  2045|
|0-6 months  |Keneba         |GAMBIA       |     3|         0|    168|  2045|
|0-6 months  |Keneba         |GAMBIA       |     3|         1|      7|  2045|
|0-6 months  |Keneba         |GAMBIA       |     4|         0|    207|  2045|
|0-6 months  |Keneba         |GAMBIA       |     4|         1|      6|  2045|
|0-6 months  |Keneba         |GAMBIA       |     5|         0|    142|  2045|
|0-6 months  |Keneba         |GAMBIA       |     5|         1|      6|  2045|
|0-6 months  |Keneba         |GAMBIA       |     6|         0|    144|  2045|
|0-6 months  |Keneba         |GAMBIA       |     6|         1|      6|  2045|
|0-6 months  |Keneba         |GAMBIA       |     7|         0|    119|  2045|
|0-6 months  |Keneba         |GAMBIA       |     7|         1|      3|  2045|
|0-6 months  |Keneba         |GAMBIA       |     8|         0|    103|  2045|
|0-6 months  |Keneba         |GAMBIA       |     8|         1|      7|  2045|
|0-6 months  |Keneba         |GAMBIA       |     9|         0|    164|  2045|
|0-6 months  |Keneba         |GAMBIA       |     9|         1|      5|  2045|
|0-6 months  |Keneba         |GAMBIA       |    10|         0|    168|  2045|
|0-6 months  |Keneba         |GAMBIA       |    10|         1|      8|  2045|
|0-6 months  |Keneba         |GAMBIA       |    11|         0|    225|  2045|
|0-6 months  |Keneba         |GAMBIA       |    11|         1|      4|  2045|
|0-6 months  |Keneba         |GAMBIA       |    12|         0|    165|  2045|
|0-6 months  |Keneba         |GAMBIA       |    12|         1|      3|  2045|
|0-6 months  |MAL-ED         |INDIA        |     1|         0|     18|   240|
|0-6 months  |MAL-ED         |INDIA        |     1|         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |     2|         0|     17|   240|
|0-6 months  |MAL-ED         |INDIA        |     2|         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |     3|         0|     19|   240|
|0-6 months  |MAL-ED         |INDIA        |     3|         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |     4|         0|     15|   240|
|0-6 months  |MAL-ED         |INDIA        |     4|         1|      1|   240|
|0-6 months  |MAL-ED         |INDIA        |     5|         0|      8|   240|
|0-6 months  |MAL-ED         |INDIA        |     5|         1|      0|   240|
|0-6 months  |MAL-ED         |INDIA        |     6|         0|     14|   240|
|0-6 months  |MAL-ED         |INDIA        |     6|         1|      3|   240|
|0-6 months  |MAL-ED         |INDIA        |     7|         0|     22|   240|
|0-6 months  |MAL-ED         |INDIA        |     7|         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |     8|         0|     22|   240|
|0-6 months  |MAL-ED         |INDIA        |     8|         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |     9|         0|     20|   240|
|0-6 months  |MAL-ED         |INDIA        |     9|         1|      0|   240|
|0-6 months  |MAL-ED         |INDIA        |    10|         0|     23|   240|
|0-6 months  |MAL-ED         |INDIA        |    10|         1|      4|   240|
|0-6 months  |MAL-ED         |INDIA        |    11|         0|     24|   240|
|0-6 months  |MAL-ED         |INDIA        |    11|         1|      1|   240|
|0-6 months  |MAL-ED         |INDIA        |    12|         0|     19|   240|
|0-6 months  |MAL-ED         |INDIA        |    12|         1|      0|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |     1|         0|     20|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     1|         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     2|         0|     20|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     2|         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     3|         0|     25|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     3|         1|      1|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     4|         0|     20|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     4|         1|      2|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     5|         0|     20|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     5|         1|      1|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     6|         0|      8|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     6|         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     7|         0|     19|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     7|         1|      1|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     8|         0|     24|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     8|         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     9|         0|     22|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |     9|         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |    10|         0|     21|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |    10|         1|      1|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |    11|         0|     16|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |    11|         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |    12|         0|     26|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |    12|         1|      1|   248|
|0-6 months  |MAL-ED         |PERU         |     1|         0|     39|   284|
|0-6 months  |MAL-ED         |PERU         |     1|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     2|         0|     24|   284|
|0-6 months  |MAL-ED         |PERU         |     2|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     3|         0|     21|   284|
|0-6 months  |MAL-ED         |PERU         |     3|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     4|         0|     20|   284|
|0-6 months  |MAL-ED         |PERU         |     4|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     5|         0|     25|   284|
|0-6 months  |MAL-ED         |PERU         |     5|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     6|         0|     18|   284|
|0-6 months  |MAL-ED         |PERU         |     6|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     7|         0|     23|   284|
|0-6 months  |MAL-ED         |PERU         |     7|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     8|         0|     16|   284|
|0-6 months  |MAL-ED         |PERU         |     8|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |     9|         0|     23|   284|
|0-6 months  |MAL-ED         |PERU         |     9|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |    10|         0|     21|   284|
|0-6 months  |MAL-ED         |PERU         |    10|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |    11|         0|     32|   284|
|0-6 months  |MAL-ED         |PERU         |    11|         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |    12|         0|     22|   284|
|0-6 months  |MAL-ED         |PERU         |    12|         1|      0|   284|
|0-6 months  |MAL-ED         |NEPAL        |     1|         0|     19|   238|
|0-6 months  |MAL-ED         |NEPAL        |     1|         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |     2|         0|     19|   238|
|0-6 months  |MAL-ED         |NEPAL        |     2|         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |     3|         0|     16|   238|
|0-6 months  |MAL-ED         |NEPAL        |     3|         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |     4|         0|     19|   238|
|0-6 months  |MAL-ED         |NEPAL        |     4|         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |     5|         0|     20|   238|
|0-6 months  |MAL-ED         |NEPAL        |     5|         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |     6|         0|     22|   238|
|0-6 months  |MAL-ED         |NEPAL        |     6|         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |     7|         0|     16|   238|
|0-6 months  |MAL-ED         |NEPAL        |     7|         1|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |     8|         0|     22|   238|
|0-6 months  |MAL-ED         |NEPAL        |     8|         1|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |     9|         0|     14|   238|
|0-6 months  |MAL-ED         |NEPAL        |     9|         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |    10|         0|     22|   238|
|0-6 months  |MAL-ED         |NEPAL        |    10|         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |    11|         0|     23|   238|
|0-6 months  |MAL-ED         |NEPAL        |    11|         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |    12|         0|     19|   238|
|0-6 months  |MAL-ED         |NEPAL        |    12|         1|      0|   238|
|0-6 months  |MAL-ED         |BRAZIL       |     1|         0|     13|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     1|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     2|         0|     26|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     2|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     3|         0|     17|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     3|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     4|         0|     11|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     4|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     5|         0|     22|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     5|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     6|         0|      7|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     6|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     7|         0|     17|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     7|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     8|         0|     19|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     8|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     9|         0|     29|   218|
|0-6 months  |MAL-ED         |BRAZIL       |     9|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |    10|         0|     22|   218|
|0-6 months  |MAL-ED         |BRAZIL       |    10|         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |    11|         0|     18|   218|
|0-6 months  |MAL-ED         |BRAZIL       |    11|         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |    12|         0|     16|   218|
|0-6 months  |MAL-ED         |BRAZIL       |    12|         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |     1|         0|     23|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     1|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     2|         0|     27|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     2|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     3|         0|     21|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     3|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     4|         0|     10|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     4|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     5|         0|     17|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     5|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     6|         0|     20|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     6|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     7|         0|     24|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     7|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     8|         0|     12|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     8|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     9|         0|     21|   253|
|0-6 months  |MAL-ED         |TANZANIA     |     9|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |    10|         0|     19|   253|
|0-6 months  |MAL-ED         |TANZANIA     |    10|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |    11|         0|     29|   253|
|0-6 months  |MAL-ED         |TANZANIA     |    11|         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |    12|         0|     30|   253|
|0-6 months  |MAL-ED         |TANZANIA     |    12|         1|      0|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     1|         0|     36|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     1|         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     2|         0|     23|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     2|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     3|         0|     16|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     3|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     4|         0|     13|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     4|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     5|         0|     14|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     5|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     6|         0|     18|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     6|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     7|         0|     26|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     7|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     8|         0|     12|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     8|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     9|         0|     23|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |     9|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    10|         0|     28|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    10|         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    11|         0|     25|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    11|         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    12|         0|     38|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |    12|         1|      0|   274|
|0-6 months  |NIH-Birth      |BANGLADESH   |     1|         0|     17|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     1|         1|      4|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     2|         0|     18|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     2|         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     3|         0|     17|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     3|         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     4|         0|     15|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     4|         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     5|         0|      7|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     5|         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     6|         0|     13|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     6|         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     7|         0|     10|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     7|         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     8|         0|      7|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     8|         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     9|         0|      6|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |     9|         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |    10|         0|     15|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |    10|         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |    11|         0|     19|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |    11|         1|      2|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |    12|         0|     14|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |    12|         1|      0|   169|
|0-6 months  |PROBIT         |BELARUS      |     1|         0|    787| 13534|
|0-6 months  |PROBIT         |BELARUS      |     1|         1|     64| 13534|
|0-6 months  |PROBIT         |BELARUS      |     2|         0|    716| 13534|
|0-6 months  |PROBIT         |BELARUS      |     2|         1|     66| 13534|
|0-6 months  |PROBIT         |BELARUS      |     3|         0|    859| 13534|
|0-6 months  |PROBIT         |BELARUS      |     3|         1|     75| 13534|
|0-6 months  |PROBIT         |BELARUS      |     4|         0|    845| 13534|
|0-6 months  |PROBIT         |BELARUS      |     4|         1|     76| 13534|
|0-6 months  |PROBIT         |BELARUS      |     5|         0|    843| 13534|
|0-6 months  |PROBIT         |BELARUS      |     5|         1|     93| 13534|
|0-6 months  |PROBIT         |BELARUS      |     6|         0|    887| 13534|
|0-6 months  |PROBIT         |BELARUS      |     6|         1|    100| 13534|
|0-6 months  |PROBIT         |BELARUS      |     7|         0|   1133| 13534|
|0-6 months  |PROBIT         |BELARUS      |     7|         1|    119| 13534|
|0-6 months  |PROBIT         |BELARUS      |     8|         0|   1177| 13534|
|0-6 months  |PROBIT         |BELARUS      |     8|         1|    112| 13534|
|0-6 months  |PROBIT         |BELARUS      |     9|         0|   1173| 13534|
|0-6 months  |PROBIT         |BELARUS      |     9|         1|    112| 13534|
|0-6 months  |PROBIT         |BELARUS      |    10|         0|   1370| 13534|
|0-6 months  |PROBIT         |BELARUS      |    10|         1|    102| 13534|
|0-6 months  |PROBIT         |BELARUS      |    11|         0|   1275| 13534|
|0-6 months  |PROBIT         |BELARUS      |    11|         1|     83| 13534|
|0-6 months  |PROBIT         |BELARUS      |    12|         0|   1372| 13534|
|0-6 months  |PROBIT         |BELARUS      |    12|         1|     95| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |     1|         0|     28|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     1|         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     2|         0|     38|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     2|         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     3|         0|     34|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     3|         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     4|         0|     47|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     4|         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     5|         0|     39|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     5|         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     6|         0|     43|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     6|         1|      3|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     7|         0|     78|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     7|         1|      4|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     8|         0|     74|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     8|         1|      4|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     9|         0|     61|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |     9|         1|      2|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |    10|         0|     69|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |    10|         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |    11|         0|     72|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |    11|         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |    12|         0|     41|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |    12|         1|      0|   638|
|0-6 months  |ResPak         |PAKISTAN     |     1|         0|      2|   243|
|0-6 months  |ResPak         |PAKISTAN     |     1|         1|      0|   243|
|0-6 months  |ResPak         |PAKISTAN     |     2|         0|      7|   243|
|0-6 months  |ResPak         |PAKISTAN     |     2|         1|      1|   243|
|0-6 months  |ResPak         |PAKISTAN     |     3|         0|      8|   243|
|0-6 months  |ResPak         |PAKISTAN     |     3|         1|      1|   243|
|0-6 months  |ResPak         |PAKISTAN     |     4|         0|     17|   243|
|0-6 months  |ResPak         |PAKISTAN     |     4|         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |     5|         0|     28|   243|
|0-6 months  |ResPak         |PAKISTAN     |     5|         1|      4|   243|
|0-6 months  |ResPak         |PAKISTAN     |     6|         0|     37|   243|
|0-6 months  |ResPak         |PAKISTAN     |     6|         1|      4|   243|
|0-6 months  |ResPak         |PAKISTAN     |     7|         0|     39|   243|
|0-6 months  |ResPak         |PAKISTAN     |     7|         1|      4|   243|
|0-6 months  |ResPak         |PAKISTAN     |     8|         0|     22|   243|
|0-6 months  |ResPak         |PAKISTAN     |     8|         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |     9|         0|     33|   243|
|0-6 months  |ResPak         |PAKISTAN     |     9|         1|      4|   243|
|0-6 months  |ResPak         |PAKISTAN     |    10|         0|     13|   243|
|0-6 months  |ResPak         |PAKISTAN     |    10|         1|      1|   243|
|0-6 months  |ResPak         |PAKISTAN     |    11|         0|      7|   243|
|0-6 months  |ResPak         |PAKISTAN     |    11|         1|      0|   243|
|0-6 months  |ResPak         |PAKISTAN     |    12|         0|      5|   243|
|0-6 months  |ResPak         |PAKISTAN     |    12|         1|      0|   243|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     1|         0|    133|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     1|         1|      4|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     2|         0|    150|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     2|         1|      5|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     3|         0|    146|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     3|         1|      4|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     4|         0|    144|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     4|         1|      2|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     5|         0|    161|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     5|         1|      2|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     6|         0|    141|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     6|         1|      4|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     7|         0|    182|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     7|         1|      3|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     8|         0|    196|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     8|         1|      4|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     9|         0|    186|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |     9|         1|      0|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    10|         0|    209|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    10|         1|      5|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    11|         0|    188|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    11|         1|     11|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    12|         0|    173|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |    12|         1|      8|  2061|
|0-6 months  |Vellore Crypto |INDIA        |     1|         0|     30|   402|
|0-6 months  |Vellore Crypto |INDIA        |     1|         1|      5|   402|
|0-6 months  |Vellore Crypto |INDIA        |     2|         0|     24|   402|
|0-6 months  |Vellore Crypto |INDIA        |     2|         1|      4|   402|
|0-6 months  |Vellore Crypto |INDIA        |     3|         0|     24|   402|
|0-6 months  |Vellore Crypto |INDIA        |     3|         1|      5|   402|
|0-6 months  |Vellore Crypto |INDIA        |     4|         0|     20|   402|
|0-6 months  |Vellore Crypto |INDIA        |     4|         1|      2|   402|
|0-6 months  |Vellore Crypto |INDIA        |     5|         0|     18|   402|
|0-6 months  |Vellore Crypto |INDIA        |     5|         1|      2|   402|
|0-6 months  |Vellore Crypto |INDIA        |     6|         0|     29|   402|
|0-6 months  |Vellore Crypto |INDIA        |     6|         1|      7|   402|
|0-6 months  |Vellore Crypto |INDIA        |     7|         0|     29|   402|
|0-6 months  |Vellore Crypto |INDIA        |     7|         1|      6|   402|
|0-6 months  |Vellore Crypto |INDIA        |     8|         0|     36|   402|
|0-6 months  |Vellore Crypto |INDIA        |     8|         1|      9|   402|
|0-6 months  |Vellore Crypto |INDIA        |     9|         0|     23|   402|
|0-6 months  |Vellore Crypto |INDIA        |     9|         1|      2|   402|
|0-6 months  |Vellore Crypto |INDIA        |    10|         0|     29|   402|
|0-6 months  |Vellore Crypto |INDIA        |    10|         1|      8|   402|
|0-6 months  |Vellore Crypto |INDIA        |    11|         0|     36|   402|
|0-6 months  |Vellore Crypto |INDIA        |    11|         1|      4|   402|
|0-6 months  |Vellore Crypto |INDIA        |    12|         0|     40|   402|
|0-6 months  |Vellore Crypto |INDIA        |    12|         1|     10|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     1|         0|     83|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     1|         1|      0|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     2|         0|     61|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     2|         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     3|         0|     29|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     3|         1|      2|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     4|         0|     35|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     4|         1|      0|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     5|         0|     34|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     5|         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     6|         0|     64|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     6|         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     7|         0|     25|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     7|         1|      2|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     8|         0|     46|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     8|         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     9|         0|     80|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |     9|         1|      3|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    10|         0|     43|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    10|         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    11|         0|     69|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    11|         1|      0|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    12|         0|     49|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |    12|         1|      2|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     1|         0|     31|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     1|         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     2|         0|     14|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     2|         1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     3|         0|     31|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     3|         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     4|         0|     41|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     4|         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     5|         0|     30|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     5|         1|      4|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     6|         0|     37|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     6|         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     7|         0|     38|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     7|         1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     8|         0|     17|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     8|         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     9|         0|     18|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |     9|         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    10|         0|     27|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    10|         1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    11|         0|     42|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    11|         1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    12|         0|     24|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |    12|         1|      1|   373|
|6-24 months |CMIN           |BANGLADESH   |     1|         0|     25|   257|
|6-24 months |CMIN           |BANGLADESH   |     1|         1|      3|   257|
|6-24 months |CMIN           |BANGLADESH   |     2|         0|     30|   257|
|6-24 months |CMIN           |BANGLADESH   |     2|         1|      2|   257|
|6-24 months |CMIN           |BANGLADESH   |     3|         0|     20|   257|
|6-24 months |CMIN           |BANGLADESH   |     3|         1|      0|   257|
|6-24 months |CMIN           |BANGLADESH   |     4|         0|     16|   257|
|6-24 months |CMIN           |BANGLADESH   |     4|         1|      3|   257|
|6-24 months |CMIN           |BANGLADESH   |     5|         0|     20|   257|
|6-24 months |CMIN           |BANGLADESH   |     5|         1|      0|   257|
|6-24 months |CMIN           |BANGLADESH   |     6|         0|     20|   257|
|6-24 months |CMIN           |BANGLADESH   |     6|         1|      3|   257|
|6-24 months |CMIN           |BANGLADESH   |     7|         0|     12|   257|
|6-24 months |CMIN           |BANGLADESH   |     7|         1|      1|   257|
|6-24 months |CMIN           |BANGLADESH   |     8|         0|     13|   257|
|6-24 months |CMIN           |BANGLADESH   |     8|         1|      1|   257|
|6-24 months |CMIN           |BANGLADESH   |     9|         0|     18|   257|
|6-24 months |CMIN           |BANGLADESH   |     9|         1|      1|   257|
|6-24 months |CMIN           |BANGLADESH   |    10|         0|     21|   257|
|6-24 months |CMIN           |BANGLADESH   |    10|         1|      0|   257|
|6-24 months |CMIN           |BANGLADESH   |    11|         0|      2|   257|
|6-24 months |CMIN           |BANGLADESH   |    11|         1|      0|   257|
|6-24 months |CMIN           |BANGLADESH   |    12|         0|     40|   257|
|6-24 months |CMIN           |BANGLADESH   |    12|         1|      6|   257|
|6-24 months |CONTENT        |PERU         |     1|         0|      9|   215|
|6-24 months |CONTENT        |PERU         |     1|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     2|         0|     13|   215|
|6-24 months |CONTENT        |PERU         |     2|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     3|         0|     27|   215|
|6-24 months |CONTENT        |PERU         |     3|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     4|         0|     18|   215|
|6-24 months |CONTENT        |PERU         |     4|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     5|         0|     25|   215|
|6-24 months |CONTENT        |PERU         |     5|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     6|         0|     14|   215|
|6-24 months |CONTENT        |PERU         |     6|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     7|         0|     16|   215|
|6-24 months |CONTENT        |PERU         |     7|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     8|         0|     26|   215|
|6-24 months |CONTENT        |PERU         |     8|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |     9|         0|     19|   215|
|6-24 months |CONTENT        |PERU         |     9|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |    10|         0|     23|   215|
|6-24 months |CONTENT        |PERU         |    10|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |    11|         0|     18|   215|
|6-24 months |CONTENT        |PERU         |    11|         1|      0|   215|
|6-24 months |CONTENT        |PERU         |    12|         0|      7|   215|
|6-24 months |CONTENT        |PERU         |    12|         1|      0|   215|
|6-24 months |EE             |PAKISTAN     |     1|         0|     84|   377|
|6-24 months |EE             |PAKISTAN     |     1|         1|      8|   377|
|6-24 months |EE             |PAKISTAN     |     2|         0|     60|   377|
|6-24 months |EE             |PAKISTAN     |     2|         1|      7|   377|
|6-24 months |EE             |PAKISTAN     |     3|         0|     37|   377|
|6-24 months |EE             |PAKISTAN     |     3|         1|      6|   377|
|6-24 months |EE             |PAKISTAN     |     4|         0|     15|   377|
|6-24 months |EE             |PAKISTAN     |     4|         1|      1|   377|
|6-24 months |EE             |PAKISTAN     |     5|         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |     5|         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |     6|         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |     6|         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |     7|         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |     7|         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |     8|         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |     8|         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |     9|         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |     9|         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |    10|         0|      4|   377|
|6-24 months |EE             |PAKISTAN     |    10|         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |    11|         0|     62|   377|
|6-24 months |EE             |PAKISTAN     |    11|         1|      8|   377|
|6-24 months |EE             |PAKISTAN     |    12|         0|     82|   377|
|6-24 months |EE             |PAKISTAN     |    12|         1|      3|   377|
|6-24 months |GMS-Nepal      |NEPAL        |     1|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     1|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     2|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     2|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     3|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     3|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     4|         0|      1|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     4|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     5|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     5|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     6|         0|    106|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     6|         1|     14|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     7|         0|    196|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     7|         1|     32|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     8|         0|    214|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     8|         1|     34|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     9|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |     9|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |    10|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |    10|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |    11|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |    11|         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |    12|         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |    12|         1|      0|   597|
|6-24 months |Guatemala BSC  |GUATEMALA    |     1|         0|     14|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     1|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     2|         0|     18|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     2|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     3|         0|     18|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     3|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     4|         0|     19|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     4|         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     5|         0|     28|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     5|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     6|         0|     35|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     6|         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     7|         0|     23|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     7|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     8|         0|     17|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     8|         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     9|         0|     30|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |     9|         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |    10|         0|     21|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |    10|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |    11|         0|     22|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |    11|         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |    12|         0|      7|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |    12|         1|      0|   256|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     1|         0|    113|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     1|         1|     13|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     2|         0|     95|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     2|         1|      9|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     3|         0|     89|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     3|         1|     14|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     4|         0|     87|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     4|         1|     12|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     5|         0|     96|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     5|         1|     17|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     6|         0|    171|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     6|         1|     20|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     7|         0|    194|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     7|         1|     20|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     8|         0|    176|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     8|         1|     34|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     9|         0|    134|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |     9|         1|     17|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    10|         0|    181|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    10|         1|     19|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    11|         0|     77|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    11|         1|     11|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    12|         0|     56|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |    12|         1|     14|  1669|
|6-24 months |JiVitA-3       |BANGLADESH   |     1|         0|   1227| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     1|         1|     58| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     2|         0|   1073| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     2|         1|     55| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     3|         0|   1307| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     3|         1|     77| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     4|         0|   1062| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     4|         1|     76| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     5|         0|   1030| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     5|         1|     58| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     6|         0|   1022| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     6|         1|     76| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     7|         0|   1127| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     7|         1|     71| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     8|         0|   1281| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     8|         1|     81| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     9|         0|   1360| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |     9|         1|     88| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |    10|         0|   1461| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |    10|         1|    104| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |    11|         0|   1460| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |    11|         1|     80| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |    12|         0|   1495| 15803|
|6-24 months |JiVitA-3       |BANGLADESH   |    12|         1|     74| 15803|
|6-24 months |JiVitA-4       |BANGLADESH   |     1|         0|     50|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     1|         1|      2|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     2|         0|    342|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     2|         1|     20|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     3|         0|    429|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     3|         1|     36|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     4|         0|    842|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     4|         1|     73|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     5|         0|    561|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     5|         1|     55|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     6|         0|    411|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     6|         1|     44|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     7|         0|    784|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     7|         1|     89|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     8|         0|    493|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     8|         1|     36|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     9|         0|    437|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |     9|         1|     33|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |    10|         0|    291|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |    10|         1|     18|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |    11|         0|    142|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |    11|         1|     15|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |    12|         0|     73|  5281|
|6-24 months |JiVitA-4       |BANGLADESH   |    12|         1|      5|  5281|
|6-24 months |Keneba         |GAMBIA       |     1|         0|    201|  2444|
|6-24 months |Keneba         |GAMBIA       |     1|         1|      8|  2444|
|6-24 months |Keneba         |GAMBIA       |     2|         0|    238|  2444|
|6-24 months |Keneba         |GAMBIA       |     2|         1|     18|  2444|
|6-24 months |Keneba         |GAMBIA       |     3|         0|    198|  2444|
|6-24 months |Keneba         |GAMBIA       |     3|         1|      7|  2444|
|6-24 months |Keneba         |GAMBIA       |     4|         0|    228|  2444|
|6-24 months |Keneba         |GAMBIA       |     4|         1|     19|  2444|
|6-24 months |Keneba         |GAMBIA       |     5|         0|    176|  2444|
|6-24 months |Keneba         |GAMBIA       |     5|         1|      9|  2444|
|6-24 months |Keneba         |GAMBIA       |     6|         0|    171|  2444|
|6-24 months |Keneba         |GAMBIA       |     6|         1|     12|  2444|
|6-24 months |Keneba         |GAMBIA       |     7|         0|    135|  2444|
|6-24 months |Keneba         |GAMBIA       |     7|         1|      6|  2444|
|6-24 months |Keneba         |GAMBIA       |     8|         0|    129|  2444|
|6-24 months |Keneba         |GAMBIA       |     8|         1|     15|  2444|
|6-24 months |Keneba         |GAMBIA       |     9|         0|    190|  2444|
|6-24 months |Keneba         |GAMBIA       |     9|         1|      9|  2444|
|6-24 months |Keneba         |GAMBIA       |    10|         0|    186|  2444|
|6-24 months |Keneba         |GAMBIA       |    10|         1|     12|  2444|
|6-24 months |Keneba         |GAMBIA       |    11|         0|    259|  2444|
|6-24 months |Keneba         |GAMBIA       |    11|         1|     16|  2444|
|6-24 months |Keneba         |GAMBIA       |    12|         0|    188|  2444|
|6-24 months |Keneba         |GAMBIA       |    12|         1|     14|  2444|
|6-24 months |LCNI-5         |MALAWI       |     1|         0|     49|   719|
|6-24 months |LCNI-5         |MALAWI       |     1|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |     2|         0|    100|   719|
|6-24 months |LCNI-5         |MALAWI       |     2|         1|      2|   719|
|6-24 months |LCNI-5         |MALAWI       |     3|         0|     88|   719|
|6-24 months |LCNI-5         |MALAWI       |     3|         1|      1|   719|
|6-24 months |LCNI-5         |MALAWI       |     4|         0|     97|   719|
|6-24 months |LCNI-5         |MALAWI       |     4|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |     5|         0|     85|   719|
|6-24 months |LCNI-5         |MALAWI       |     5|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |     6|         0|     75|   719|
|6-24 months |LCNI-5         |MALAWI       |     6|         1|      1|   719|
|6-24 months |LCNI-5         |MALAWI       |     7|         0|     60|   719|
|6-24 months |LCNI-5         |MALAWI       |     7|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |     8|         0|     38|   719|
|6-24 months |LCNI-5         |MALAWI       |     8|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |     9|         0|     24|   719|
|6-24 months |LCNI-5         |MALAWI       |     9|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |    10|         0|     30|   719|
|6-24 months |LCNI-5         |MALAWI       |    10|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |    11|         0|     41|   719|
|6-24 months |LCNI-5         |MALAWI       |    11|         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |    12|         0|     26|   719|
|6-24 months |LCNI-5         |MALAWI       |    12|         1|      2|   719|
|6-24 months |MAL-ED         |INDIA        |     1|         0|     18|   241|
|6-24 months |MAL-ED         |INDIA        |     1|         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |     2|         0|     17|   241|
|6-24 months |MAL-ED         |INDIA        |     2|         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |     3|         0|     20|   241|
|6-24 months |MAL-ED         |INDIA        |     3|         1|      1|   241|
|6-24 months |MAL-ED         |INDIA        |     4|         0|     14|   241|
|6-24 months |MAL-ED         |INDIA        |     4|         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |     5|         0|      7|   241|
|6-24 months |MAL-ED         |INDIA        |     5|         1|      1|   241|
|6-24 months |MAL-ED         |INDIA        |     6|         0|     15|   241|
|6-24 months |MAL-ED         |INDIA        |     6|         1|      3|   241|
|6-24 months |MAL-ED         |INDIA        |     7|         0|     21|   241|
|6-24 months |MAL-ED         |INDIA        |     7|         1|      3|   241|
|6-24 months |MAL-ED         |INDIA        |     8|         0|     22|   241|
|6-24 months |MAL-ED         |INDIA        |     8|         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |     9|         0|     20|   241|
|6-24 months |MAL-ED         |INDIA        |     9|         1|      0|   241|
|6-24 months |MAL-ED         |INDIA        |    10|         0|     25|   241|
|6-24 months |MAL-ED         |INDIA        |    10|         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |    11|         0|     23|   241|
|6-24 months |MAL-ED         |INDIA        |    11|         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |    12|         0|     18|   241|
|6-24 months |MAL-ED         |INDIA        |    12|         1|      1|   241|
|6-24 months |MAL-ED         |BANGLADESH   |     1|         0|     20|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     1|         1|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     2|         0|     19|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     2|         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     3|         0|     25|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     3|         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     4|         0|     21|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     4|         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     5|         0|     19|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     5|         1|      2|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     6|         0|      7|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     6|         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     7|         0|     19|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     7|         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     8|         0|     24|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     8|         1|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     9|         0|     20|   248|
|6-24 months |MAL-ED         |BANGLADESH   |     9|         1|      2|   248|
|6-24 months |MAL-ED         |BANGLADESH   |    10|         0|     20|   248|
|6-24 months |MAL-ED         |BANGLADESH   |    10|         1|      2|   248|
|6-24 months |MAL-ED         |BANGLADESH   |    11|         0|     15|   248|
|6-24 months |MAL-ED         |BANGLADESH   |    11|         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |    12|         0|     26|   248|
|6-24 months |MAL-ED         |BANGLADESH   |    12|         1|      1|   248|
|6-24 months |MAL-ED         |PERU         |     1|         0|     39|   284|
|6-24 months |MAL-ED         |PERU         |     1|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     2|         0|     24|   284|
|6-24 months |MAL-ED         |PERU         |     2|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     3|         0|     21|   284|
|6-24 months |MAL-ED         |PERU         |     3|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     4|         0|     20|   284|
|6-24 months |MAL-ED         |PERU         |     4|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     5|         0|     25|   284|
|6-24 months |MAL-ED         |PERU         |     5|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     6|         0|     18|   284|
|6-24 months |MAL-ED         |PERU         |     6|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     7|         0|     23|   284|
|6-24 months |MAL-ED         |PERU         |     7|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |     8|         0|     15|   284|
|6-24 months |MAL-ED         |PERU         |     8|         1|      1|   284|
|6-24 months |MAL-ED         |PERU         |     9|         0|     23|   284|
|6-24 months |MAL-ED         |PERU         |     9|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |    10|         0|     21|   284|
|6-24 months |MAL-ED         |PERU         |    10|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |    11|         0|     32|   284|
|6-24 months |MAL-ED         |PERU         |    11|         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |    12|         0|     22|   284|
|6-24 months |MAL-ED         |PERU         |    12|         1|      0|   284|
|6-24 months |MAL-ED         |NEPAL        |     1|         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |     1|         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |     2|         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |     2|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |     3|         0|     17|   238|
|6-24 months |MAL-ED         |NEPAL        |     3|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |     4|         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |     4|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |     5|         0|     20|   238|
|6-24 months |MAL-ED         |NEPAL        |     5|         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |     6|         0|     21|   238|
|6-24 months |MAL-ED         |NEPAL        |     6|         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |     7|         0|     17|   238|
|6-24 months |MAL-ED         |NEPAL        |     7|         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |     8|         0|     24|   238|
|6-24 months |MAL-ED         |NEPAL        |     8|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |     9|         0|     14|   238|
|6-24 months |MAL-ED         |NEPAL        |     9|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |    10|         0|     22|   238|
|6-24 months |MAL-ED         |NEPAL        |    10|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |    11|         0|     23|   238|
|6-24 months |MAL-ED         |NEPAL        |    11|         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |    12|         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |    12|         1|      0|   238|
|6-24 months |MAL-ED         |BRAZIL       |     1|         0|     13|   218|
|6-24 months |MAL-ED         |BRAZIL       |     1|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     2|         0|     26|   218|
|6-24 months |MAL-ED         |BRAZIL       |     2|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     3|         0|     17|   218|
|6-24 months |MAL-ED         |BRAZIL       |     3|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     4|         0|     11|   218|
|6-24 months |MAL-ED         |BRAZIL       |     4|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     5|         0|     22|   218|
|6-24 months |MAL-ED         |BRAZIL       |     5|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     6|         0|      7|   218|
|6-24 months |MAL-ED         |BRAZIL       |     6|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     7|         0|     17|   218|
|6-24 months |MAL-ED         |BRAZIL       |     7|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     8|         0|     19|   218|
|6-24 months |MAL-ED         |BRAZIL       |     8|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |     9|         0|     29|   218|
|6-24 months |MAL-ED         |BRAZIL       |     9|         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |    10|         0|     21|   218|
|6-24 months |MAL-ED         |BRAZIL       |    10|         1|      1|   218|
|6-24 months |MAL-ED         |BRAZIL       |    11|         0|     18|   218|
|6-24 months |MAL-ED         |BRAZIL       |    11|         1|      1|   218|
|6-24 months |MAL-ED         |BRAZIL       |    12|         0|     16|   218|
|6-24 months |MAL-ED         |BRAZIL       |    12|         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |     1|         0|     23|   253|
|6-24 months |MAL-ED         |TANZANIA     |     1|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     2|         0|     27|   253|
|6-24 months |MAL-ED         |TANZANIA     |     2|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     3|         0|     21|   253|
|6-24 months |MAL-ED         |TANZANIA     |     3|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     4|         0|     10|   253|
|6-24 months |MAL-ED         |TANZANIA     |     4|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     5|         0|     17|   253|
|6-24 months |MAL-ED         |TANZANIA     |     5|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     6|         0|     20|   253|
|6-24 months |MAL-ED         |TANZANIA     |     6|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     7|         0|     24|   253|
|6-24 months |MAL-ED         |TANZANIA     |     7|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     8|         0|     12|   253|
|6-24 months |MAL-ED         |TANZANIA     |     8|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |     9|         0|     21|   253|
|6-24 months |MAL-ED         |TANZANIA     |     9|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |    10|         0|     19|   253|
|6-24 months |MAL-ED         |TANZANIA     |    10|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |    11|         0|     29|   253|
|6-24 months |MAL-ED         |TANZANIA     |    11|         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |    12|         0|     30|   253|
|6-24 months |MAL-ED         |TANZANIA     |    12|         1|      0|   253|
|6-24 months |MAL-ED         |SOUTH AFRICA |     1|         0|     37|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     1|         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     2|         0|     23|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     2|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     3|         0|     16|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     3|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     4|         0|     13|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     4|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     5|         0|     14|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     5|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     6|         0|     18|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     6|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     7|         0|     26|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     7|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     8|         0|     12|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     8|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     9|         0|     23|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |     9|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |    10|         0|     27|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |    10|         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |    11|         0|     26|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |    11|         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |    12|         0|     38|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |    12|         1|      0|   275|
|6-24 months |NIH-Birth      |BANGLADESH   |     1|         0|     49|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     1|         1|      5|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     2|         0|     44|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     2|         1|      2|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     3|         0|     45|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     3|         1|      5|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     4|         0|     40|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     4|         1|      5|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     5|         0|     34|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     5|         1|      6|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     6|         0|     36|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     6|         1|      4|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     7|         0|     42|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     7|         1|      3|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     8|         0|     32|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     8|         1|      3|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     9|         0|     27|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |     9|         1|      2|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |    10|         0|     47|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |    10|         1|      5|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |    11|         0|     44|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |    11|         1|      4|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |    12|         0|     47|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |    12|         1|      3|   534|
|6-24 months |PROBIT         |BELARUS      |     1|         0|   1130| 16583|
|6-24 months |PROBIT         |BELARUS      |     1|         1|     17| 16583|
|6-24 months |PROBIT         |BELARUS      |     2|         0|    980| 16583|
|6-24 months |PROBIT         |BELARUS      |     2|         1|      6| 16583|
|6-24 months |PROBIT         |BELARUS      |     3|         0|   1164| 16583|
|6-24 months |PROBIT         |BELARUS      |     3|         1|      5| 16583|
|6-24 months |PROBIT         |BELARUS      |     4|         0|   1111| 16583|
|6-24 months |PROBIT         |BELARUS      |     4|         1|      7| 16583|
|6-24 months |PROBIT         |BELARUS      |     5|         0|   1125| 16583|
|6-24 months |PROBIT         |BELARUS      |     5|         1|      7| 16583|
|6-24 months |PROBIT         |BELARUS      |     6|         0|   1177| 16583|
|6-24 months |PROBIT         |BELARUS      |     6|         1|     14| 16583|
|6-24 months |PROBIT         |BELARUS      |     7|         0|   1439| 16583|
|6-24 months |PROBIT         |BELARUS      |     7|         1|     14| 16583|
|6-24 months |PROBIT         |BELARUS      |     8|         0|   1572| 16583|
|6-24 months |PROBIT         |BELARUS      |     8|         1|      9| 16583|
|6-24 months |PROBIT         |BELARUS      |     9|         0|   1544| 16583|
|6-24 months |PROBIT         |BELARUS      |     9|         1|     15| 16583|
|6-24 months |PROBIT         |BELARUS      |    10|         0|   1752| 16583|
|6-24 months |PROBIT         |BELARUS      |    10|         1|     12| 16583|
|6-24 months |PROBIT         |BELARUS      |    11|         0|   1663| 16583|
|6-24 months |PROBIT         |BELARUS      |    11|         1|     18| 16583|
|6-24 months |PROBIT         |BELARUS      |    12|         0|   1792| 16583|
|6-24 months |PROBIT         |BELARUS      |    12|         1|     10| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |     1|         0|     28|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     1|         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     2|         0|     37|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     2|         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     3|         0|     34|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     3|         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     4|         0|     48|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     4|         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     5|         0|     39|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     5|         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     6|         0|     43|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     6|         1|      3|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     7|         0|     78|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     7|         1|      4|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     8|         0|     76|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     8|         1|      2|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     9|         0|     60|   641|
|6-24 months |PROVIDE        |BANGLADESH   |     9|         1|      3|   641|
|6-24 months |PROVIDE        |BANGLADESH   |    10|         0|     71|   641|
|6-24 months |PROVIDE        |BANGLADESH   |    10|         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |    11|         0|     71|   641|
|6-24 months |PROVIDE        |BANGLADESH   |    11|         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |    12|         0|     41|   641|
|6-24 months |PROVIDE        |BANGLADESH   |    12|         1|      0|   641|
|6-24 months |ResPak         |PAKISTAN     |     1|         0|      2|   256|
|6-24 months |ResPak         |PAKISTAN     |     1|         1|      0|   256|
|6-24 months |ResPak         |PAKISTAN     |     2|         0|      6|   256|
|6-24 months |ResPak         |PAKISTAN     |     2|         1|      3|   256|
|6-24 months |ResPak         |PAKISTAN     |     3|         0|      9|   256|
|6-24 months |ResPak         |PAKISTAN     |     3|         1|      1|   256|
|6-24 months |ResPak         |PAKISTAN     |     4|         0|     19|   256|
|6-24 months |ResPak         |PAKISTAN     |     4|         1|      2|   256|
|6-24 months |ResPak         |PAKISTAN     |     5|         0|     27|   256|
|6-24 months |ResPak         |PAKISTAN     |     5|         1|      5|   256|
|6-24 months |ResPak         |PAKISTAN     |     6|         0|     41|   256|
|6-24 months |ResPak         |PAKISTAN     |     6|         1|      3|   256|
|6-24 months |ResPak         |PAKISTAN     |     7|         0|     40|   256|
|6-24 months |ResPak         |PAKISTAN     |     7|         1|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |     8|         0|     23|   256|
|6-24 months |ResPak         |PAKISTAN     |     8|         1|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |     9|         0|     31|   256|
|6-24 months |ResPak         |PAKISTAN     |     9|         1|      9|   256|
|6-24 months |ResPak         |PAKISTAN     |    10|         0|     14|   256|
|6-24 months |ResPak         |PAKISTAN     |    10|         1|      1|   256|
|6-24 months |ResPak         |PAKISTAN     |    11|         0|      5|   256|
|6-24 months |ResPak         |PAKISTAN     |    11|         1|      2|   256|
|6-24 months |ResPak         |PAKISTAN     |    12|         0|      5|   256|
|6-24 months |ResPak         |PAKISTAN     |    12|         1|      0|   256|
|6-24 months |SAS-CompFeed   |INDIA        |     1|         0|     81|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     1|         1|     13|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     2|         0|     74|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     2|         1|      6|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     3|         0|     72|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     3|         1|      7|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     4|         0|     70|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     4|         1|      6|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     5|         0|     70|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     5|         1|      9|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     6|         0|    102|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     6|         1|      4|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     7|         0|    105|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     7|         1|     12|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     8|         0|    138|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     8|         1|     15|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     9|         0|    154|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |     9|         1|     14|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |    10|         0|    141|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |    10|         1|      9|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |    11|         0|    117|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |    11|         1|     12|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |    12|         0|    128|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |    12|         1|      7|  1366|
|6-24 months |SAS-FoodSuppl  |INDIA        |     1|         0|     50|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     1|         1|      6|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     2|         0|     33|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     2|         1|      5|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     3|         0|     26|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     3|         1|      8|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     4|         0|     19|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     4|         1|      8|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     5|         0|     24|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     5|         1|      4|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     6|         0|     24|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     6|         1|      5|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     7|         0|     14|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     7|         1|      3|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     8|         0|      0|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     8|         1|      0|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     9|         0|      9|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |     9|         1|      3|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |    10|         0|     23|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |    10|         1|      3|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |    11|         0|     42|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |    11|         1|      5|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |    12|         0|     46|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |    12|         1|     15|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |     1|         0|    139|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     1|         1|      6|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     2|         0|    159|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     2|         1|      4|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     3|         0|    159|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     3|         1|      2|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     4|         0|    151|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     4|         1|      7|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     5|         0|    167|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     5|         1|      3|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     6|         0|    149|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     6|         1|      3|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     7|         0|    188|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     7|         1|      5|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     8|         0|    210|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     8|         1|      4|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     9|         0|    194|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |     9|         1|      1|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |    10|         0|    218|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |    10|         1|      8|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |    11|         0|    195|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |    11|         1|     10|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |    12|         0|    179|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |    12|         1|      5|  2166|
|6-24 months |Vellore Crypto |INDIA        |     1|         0|     33|   410|
|6-24 months |Vellore Crypto |INDIA        |     1|         1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |     2|         0|     26|   410|
|6-24 months |Vellore Crypto |INDIA        |     2|         1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |     3|         0|     28|   410|
|6-24 months |Vellore Crypto |INDIA        |     3|         1|      1|   410|
|6-24 months |Vellore Crypto |INDIA        |     4|         0|     20|   410|
|6-24 months |Vellore Crypto |INDIA        |     4|         1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |     5|         0|     19|   410|
|6-24 months |Vellore Crypto |INDIA        |     5|         1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |     6|         0|     32|   410|
|6-24 months |Vellore Crypto |INDIA        |     6|         1|      5|   410|
|6-24 months |Vellore Crypto |INDIA        |     7|         0|     31|   410|
|6-24 months |Vellore Crypto |INDIA        |     7|         1|      5|   410|
|6-24 months |Vellore Crypto |INDIA        |     8|         0|     36|   410|
|6-24 months |Vellore Crypto |INDIA        |     8|         1|      9|   410|
|6-24 months |Vellore Crypto |INDIA        |     9|         0|     22|   410|
|6-24 months |Vellore Crypto |INDIA        |     9|         1|      5|   410|
|6-24 months |Vellore Crypto |INDIA        |    10|         0|     31|   410|
|6-24 months |Vellore Crypto |INDIA        |    10|         1|      6|   410|
|6-24 months |Vellore Crypto |INDIA        |    11|         0|     38|   410|
|6-24 months |Vellore Crypto |INDIA        |    11|         1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |    12|         0|     46|   410|
|6-24 months |Vellore Crypto |INDIA        |    12|         1|      5|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     1|         0|    913|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     1|         1|     24|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     2|         0|    690|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     2|         1|      9|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     3|         0|    776|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     3|         1|     23|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     4|         0|    716|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     4|         1|      8|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     5|         0|    693|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     5|         1|      7|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     6|         0|    774|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     6|         1|     13|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     7|         0|    778|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     7|         1|     16|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     8|         0|    824|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     8|         1|     13|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     9|         0|    869|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |     9|         1|     14|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    10|         0|    655|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    10|         1|     14|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    11|         0|    784|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    11|         1|     11|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    12|         0|    887|  9527|
|6-24 months |ZVITAMBO       |ZIMBABWE     |    12|         1|     16|  9527|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


