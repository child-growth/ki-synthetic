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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |brthmon | wasted| n_cell|     n|
|:---------|:--------------|:------------|:-------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |      0|      5|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |      0|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |      0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |      0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |      0|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |      1|      2|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |      0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |      0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |      0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |      1|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |      1|      2|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |      0|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |      1|      1|    86|
|Birth     |CMIN           |BANGLADESH   |1       |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |1       |      1|      2|    19|
|Birth     |CMIN           |BANGLADESH   |2       |      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |2       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |3       |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |3       |      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |4       |      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |4       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |5       |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |5       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |6       |      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |6       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |7       |      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |7       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |8       |      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |8       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |9       |      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |9       |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |10      |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |10      |      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |11      |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |11      |      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |12      |      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |12      |      1|      0|    19|
|Birth     |CONTENT        |PERU         |1       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |1       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |2       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |2       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |3       |      0|      1|     2|
|Birth     |CONTENT        |PERU         |3       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |4       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |4       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |5       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |5       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |6       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |6       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |7       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |7       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |8       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |8       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |9       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |9       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |10      |      0|      1|     2|
|Birth     |CONTENT        |PERU         |10      |      1|      0|     2|
|Birth     |CONTENT        |PERU         |11      |      0|      0|     2|
|Birth     |CONTENT        |PERU         |11      |      1|      0|     2|
|Birth     |CONTENT        |PERU         |12      |      0|      0|     2|
|Birth     |CONTENT        |PERU         |12      |      1|      0|     2|
|Birth     |EE             |PAKISTAN     |1       |      0|     45|   177|
|Birth     |EE             |PAKISTAN     |1       |      1|      4|   177|
|Birth     |EE             |PAKISTAN     |2       |      0|     24|   177|
|Birth     |EE             |PAKISTAN     |2       |      1|      2|   177|
|Birth     |EE             |PAKISTAN     |3       |      0|     13|   177|
|Birth     |EE             |PAKISTAN     |3       |      1|      1|   177|
|Birth     |EE             |PAKISTAN     |4       |      0|      9|   177|
|Birth     |EE             |PAKISTAN     |4       |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |5       |      0|      0|   177|
|Birth     |EE             |PAKISTAN     |5       |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |6       |      0|      0|   177|
|Birth     |EE             |PAKISTAN     |6       |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |7       |      0|      0|   177|
|Birth     |EE             |PAKISTAN     |7       |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |8       |      0|      0|   177|
|Birth     |EE             |PAKISTAN     |8       |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |9       |      0|      0|   177|
|Birth     |EE             |PAKISTAN     |9       |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |10      |      0|      0|   177|
|Birth     |EE             |PAKISTAN     |10      |      1|      0|   177|
|Birth     |EE             |PAKISTAN     |11      |      0|     32|   177|
|Birth     |EE             |PAKISTAN     |11      |      1|     11|   177|
|Birth     |EE             |PAKISTAN     |12      |      0|     32|   177|
|Birth     |EE             |PAKISTAN     |12      |      1|      4|   177|
|Birth     |GMS-Nepal      |NEPAL        |1       |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |2       |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |2       |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |3       |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |3       |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |4       |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |4       |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |5       |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |5       |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |6       |      0|    121|   641|
|Birth     |GMS-Nepal      |NEPAL        |6       |      1|     24|   641|
|Birth     |GMS-Nepal      |NEPAL        |7       |      0|    202|   641|
|Birth     |GMS-Nepal      |NEPAL        |7       |      1|     56|   641|
|Birth     |GMS-Nepal      |NEPAL        |8       |      0|    186|   641|
|Birth     |GMS-Nepal      |NEPAL        |8       |      1|     52|   641|
|Birth     |GMS-Nepal      |NEPAL        |9       |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |9       |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |10      |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |10      |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |11      |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |11      |      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |12      |      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |12      |      1|      0|   641|
|Birth     |JiVitA-3       |BANGLADESH   |1       |      0|   1449| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |1       |      1|    189| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |2       |      0|   1252| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |2       |      1|    153| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |3       |      0|   1436| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |3       |      1|    174| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |4       |      0|   1103| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |4       |      1|    131| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |5       |      0|    828| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |5       |      1|     88| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |6       |      0|    864| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |6       |      1|    107| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |7       |      0|    906| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |7       |      1|    107| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |8       |      0|   1261| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |8       |      1|    129| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |9       |      0|   1702| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |9       |      1|    231| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |10      |      0|   1735| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |10      |      1|    207| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |11      |      0|   1658| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |11      |      1|    227| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |12      |      0|   1832| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |12      |      1|    229| 17998|
|Birth     |JiVitA-4       |BANGLADESH   |1       |      0|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |1       |      1|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2       |      0|    369|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2       |      1|     37|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3       |      0|    365|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3       |      1|     38|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |4       |      0|    296|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |4       |      1|     39|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |5       |      0|    273|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |5       |      1|     26|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |6       |      0|    210|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |6       |      1|     22|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |7       |      0|    212|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |7       |      1|     18|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |8       |      0|    235|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |8       |      1|     23|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |9       |      0|    141|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |9       |      1|     22|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |10      |      0|     55|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |10      |      1|     14|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |11      |      0|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |11      |      1|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |12      |      0|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |12      |      1|      0|  2395|
|Birth     |Keneba         |GAMBIA       |1       |      0|    117|  1466|
|Birth     |Keneba         |GAMBIA       |1       |      1|     38|  1466|
|Birth     |Keneba         |GAMBIA       |2       |      0|    106|  1466|
|Birth     |Keneba         |GAMBIA       |2       |      1|     34|  1466|
|Birth     |Keneba         |GAMBIA       |3       |      0|    130|  1466|
|Birth     |Keneba         |GAMBIA       |3       |      1|     34|  1466|
|Birth     |Keneba         |GAMBIA       |4       |      0|     77|  1466|
|Birth     |Keneba         |GAMBIA       |4       |      1|     14|  1466|
|Birth     |Keneba         |GAMBIA       |5       |      0|     71|  1466|
|Birth     |Keneba         |GAMBIA       |5       |      1|     23|  1466|
|Birth     |Keneba         |GAMBIA       |6       |      0|     64|  1466|
|Birth     |Keneba         |GAMBIA       |6       |      1|     24|  1466|
|Birth     |Keneba         |GAMBIA       |7       |      0|     50|  1466|
|Birth     |Keneba         |GAMBIA       |7       |      1|     19|  1466|
|Birth     |Keneba         |GAMBIA       |8       |      0|     84|  1466|
|Birth     |Keneba         |GAMBIA       |8       |      1|     33|  1466|
|Birth     |Keneba         |GAMBIA       |9       |      0|     94|  1466|
|Birth     |Keneba         |GAMBIA       |9       |      1|     38|  1466|
|Birth     |Keneba         |GAMBIA       |10      |      0|    135|  1466|
|Birth     |Keneba         |GAMBIA       |10      |      1|     35|  1466|
|Birth     |Keneba         |GAMBIA       |11      |      0|     72|  1466|
|Birth     |Keneba         |GAMBIA       |11      |      1|     37|  1466|
|Birth     |Keneba         |GAMBIA       |12      |      0|    102|  1466|
|Birth     |Keneba         |GAMBIA       |12      |      1|     35|  1466|
|Birth     |MAL-ED         |INDIA        |1       |      0|      1|    45|
|Birth     |MAL-ED         |INDIA        |1       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |2       |      0|      6|    45|
|Birth     |MAL-ED         |INDIA        |2       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |3       |      0|      4|    45|
|Birth     |MAL-ED         |INDIA        |3       |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |4       |      0|      4|    45|
|Birth     |MAL-ED         |INDIA        |4       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |5       |      0|      0|    45|
|Birth     |MAL-ED         |INDIA        |5       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |6       |      0|      4|    45|
|Birth     |MAL-ED         |INDIA        |6       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |7       |      0|      2|    45|
|Birth     |MAL-ED         |INDIA        |7       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |8       |      0|      6|    45|
|Birth     |MAL-ED         |INDIA        |8       |      1|      2|    45|
|Birth     |MAL-ED         |INDIA        |9       |      0|      1|    45|
|Birth     |MAL-ED         |INDIA        |9       |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |10      |      0|      6|    45|
|Birth     |MAL-ED         |INDIA        |10      |      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |11      |      0|      5|    45|
|Birth     |MAL-ED         |INDIA        |11      |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |12      |      0|      1|    45|
|Birth     |MAL-ED         |INDIA        |12      |      1|      1|    45|
|Birth     |MAL-ED         |BANGLADESH   |1       |      0|     17|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |2       |      0|     13|   215|
|Birth     |MAL-ED         |BANGLADESH   |2       |      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |3       |      0|     12|   215|
|Birth     |MAL-ED         |BANGLADESH   |3       |      1|      4|   215|
|Birth     |MAL-ED         |BANGLADESH   |4       |      0|     12|   215|
|Birth     |MAL-ED         |BANGLADESH   |4       |      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |5       |      0|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |5       |      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |6       |      0|      6|   215|
|Birth     |MAL-ED         |BANGLADESH   |6       |      1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |7       |      0|     11|   215|
|Birth     |MAL-ED         |BANGLADESH   |7       |      1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |8       |      0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |8       |      1|      4|   215|
|Birth     |MAL-ED         |BANGLADESH   |9       |      0|     22|   215|
|Birth     |MAL-ED         |BANGLADESH   |9       |      1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |10      |      0|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |10      |      1|      5|   215|
|Birth     |MAL-ED         |BANGLADESH   |11      |      0|     12|   215|
|Birth     |MAL-ED         |BANGLADESH   |11      |      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |12      |      0|     23|   215|
|Birth     |MAL-ED         |BANGLADESH   |12      |      1|      4|   215|
|Birth     |MAL-ED         |PERU         |1       |      0|     37|   228|
|Birth     |MAL-ED         |PERU         |1       |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |2       |      0|     11|   228|
|Birth     |MAL-ED         |PERU         |2       |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |3       |      0|     23|   228|
|Birth     |MAL-ED         |PERU         |3       |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |4       |      0|     16|   228|
|Birth     |MAL-ED         |PERU         |4       |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |5       |      0|     16|   228|
|Birth     |MAL-ED         |PERU         |5       |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |6       |      0|      9|   228|
|Birth     |MAL-ED         |PERU         |6       |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |7       |      0|     16|   228|
|Birth     |MAL-ED         |PERU         |7       |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |8       |      0|     21|   228|
|Birth     |MAL-ED         |PERU         |8       |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |9       |      0|     14|   228|
|Birth     |MAL-ED         |PERU         |9       |      1|      1|   228|
|Birth     |MAL-ED         |PERU         |10      |      0|     18|   228|
|Birth     |MAL-ED         |PERU         |10      |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |11      |      0|     28|   228|
|Birth     |MAL-ED         |PERU         |11      |      1|      0|   228|
|Birth     |MAL-ED         |PERU         |12      |      0|     14|   228|
|Birth     |MAL-ED         |PERU         |12      |      1|      1|   228|
|Birth     |MAL-ED         |NEPAL        |1       |      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |1       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |2       |      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |2       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |3       |      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |3       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |4       |      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |4       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |5       |      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |5       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |6       |      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |6       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |7       |      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |7       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |8       |      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |8       |      1|      2|    26|
|Birth     |MAL-ED         |NEPAL        |9       |      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |9       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |10      |      0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |10      |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |11      |      0|      3|    26|
|Birth     |MAL-ED         |NEPAL        |11      |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |12      |      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |12      |      1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |1       |      0|      3|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |2       |      0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |2       |      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |3       |      0|      8|    62|
|Birth     |MAL-ED         |BRAZIL       |3       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |4       |      0|      3|    62|
|Birth     |MAL-ED         |BRAZIL       |4       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |5       |      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |5       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |6       |      0|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |6       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |7       |      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |7       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |8       |      0|      8|    62|
|Birth     |MAL-ED         |BRAZIL       |8       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |9       |      0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |9       |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |10      |      0|      3|    62|
|Birth     |MAL-ED         |BRAZIL       |10      |      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |11      |      0|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |11      |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |12      |      0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |12      |      1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |1       |      0|     11|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |2       |      0|     14|   115|
|Birth     |MAL-ED         |TANZANIA     |2       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |3       |      0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |3       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |4       |      0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |4       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |5       |      0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |5       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |6       |      0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |6       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |7       |      0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |7       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |8       |      0|      3|   115|
|Birth     |MAL-ED         |TANZANIA     |8       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |9       |      0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |9       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |10      |      0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |10      |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |11      |      0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |11      |      1|      1|   115|
|Birth     |MAL-ED         |TANZANIA     |12      |      0|     11|   115|
|Birth     |MAL-ED         |TANZANIA     |12      |      1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |      0|     14|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |      1|      3|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |      0|      9|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |      0|      5|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |      0|      7|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |      0|      4|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |      0|      5|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |      1|      1|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |      0|      9|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |      0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |      0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |      0|     12|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |      0|     12|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |      0|     19|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |      1|      2|   120|
|Birth     |NIH-Birth      |BANGLADESH   |1       |      0|     44|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |      1|     19|   575|
|Birth     |NIH-Birth      |BANGLADESH   |2       |      0|     37|   575|
|Birth     |NIH-Birth      |BANGLADESH   |2       |      1|     12|   575|
|Birth     |NIH-Birth      |BANGLADESH   |3       |      0|     42|   575|
|Birth     |NIH-Birth      |BANGLADESH   |3       |      1|     14|   575|
|Birth     |NIH-Birth      |BANGLADESH   |4       |      0|     32|   575|
|Birth     |NIH-Birth      |BANGLADESH   |4       |      1|     17|   575|
|Birth     |NIH-Birth      |BANGLADESH   |5       |      0|     36|   575|
|Birth     |NIH-Birth      |BANGLADESH   |5       |      1|     14|   575|
|Birth     |NIH-Birth      |BANGLADESH   |6       |      0|     34|   575|
|Birth     |NIH-Birth      |BANGLADESH   |6       |      1|     14|   575|
|Birth     |NIH-Birth      |BANGLADESH   |7       |      0|     20|   575|
|Birth     |NIH-Birth      |BANGLADESH   |7       |      1|     12|   575|
|Birth     |NIH-Birth      |BANGLADESH   |8       |      0|     30|   575|
|Birth     |NIH-Birth      |BANGLADESH   |8       |      1|     17|   575|
|Birth     |NIH-Birth      |BANGLADESH   |9       |      0|     30|   575|
|Birth     |NIH-Birth      |BANGLADESH   |9       |      1|     16|   575|
|Birth     |NIH-Birth      |BANGLADESH   |10      |      0|     27|   575|
|Birth     |NIH-Birth      |BANGLADESH   |10      |      1|      9|   575|
|Birth     |NIH-Birth      |BANGLADESH   |11      |      0|     42|   575|
|Birth     |NIH-Birth      |BANGLADESH   |11      |      1|     11|   575|
|Birth     |NIH-Birth      |BANGLADESH   |12      |      0|     33|   575|
|Birth     |NIH-Birth      |BANGLADESH   |12      |      1|     13|   575|
|Birth     |PROBIT         |BELARUS      |1       |      0|    589| 13817|
|Birth     |PROBIT         |BELARUS      |1       |      1|    168| 13817|
|Birth     |PROBIT         |BELARUS      |2       |      0|    658| 13817|
|Birth     |PROBIT         |BELARUS      |2       |      1|    151| 13817|
|Birth     |PROBIT         |BELARUS      |3       |      0|    723| 13817|
|Birth     |PROBIT         |BELARUS      |3       |      1|    194| 13817|
|Birth     |PROBIT         |BELARUS      |4       |      0|    782| 13817|
|Birth     |PROBIT         |BELARUS      |4       |      1|    199| 13817|
|Birth     |PROBIT         |BELARUS      |5       |      0|    711| 13817|
|Birth     |PROBIT         |BELARUS      |5       |      1|    204| 13817|
|Birth     |PROBIT         |BELARUS      |6       |      0|    800| 13817|
|Birth     |PROBIT         |BELARUS      |6       |      1|    225| 13817|
|Birth     |PROBIT         |BELARUS      |7       |      0|   1019| 13817|
|Birth     |PROBIT         |BELARUS      |7       |      1|    260| 13817|
|Birth     |PROBIT         |BELARUS      |8       |      0|   1068| 13817|
|Birth     |PROBIT         |BELARUS      |8       |      1|    275| 13817|
|Birth     |PROBIT         |BELARUS      |9       |      0|   1104| 13817|
|Birth     |PROBIT         |BELARUS      |9       |      1|    288| 13817|
|Birth     |PROBIT         |BELARUS      |10      |      0|   1127| 13817|
|Birth     |PROBIT         |BELARUS      |10      |      1|    320| 13817|
|Birth     |PROBIT         |BELARUS      |11      |      0|   1102| 13817|
|Birth     |PROBIT         |BELARUS      |11      |      1|    287| 13817|
|Birth     |PROBIT         |BELARUS      |12      |      0|   1228| 13817|
|Birth     |PROBIT         |BELARUS      |12      |      1|    335| 13817|
|Birth     |PROVIDE        |BANGLADESH   |1       |      0|     30|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |      1|      6|   532|
|Birth     |PROVIDE        |BANGLADESH   |2       |      0|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |2       |      1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |3       |      0|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |3       |      1|     10|   532|
|Birth     |PROVIDE        |BANGLADESH   |4       |      0|     27|   532|
|Birth     |PROVIDE        |BANGLADESH   |4       |      1|      6|   532|
|Birth     |PROVIDE        |BANGLADESH   |5       |      0|     36|   532|
|Birth     |PROVIDE        |BANGLADESH   |5       |      1|      8|   532|
|Birth     |PROVIDE        |BANGLADESH   |6       |      0|     55|   532|
|Birth     |PROVIDE        |BANGLADESH   |6       |      1|     18|   532|
|Birth     |PROVIDE        |BANGLADESH   |7       |      0|     49|   532|
|Birth     |PROVIDE        |BANGLADESH   |7       |      1|     19|   532|
|Birth     |PROVIDE        |BANGLADESH   |8       |      0|     34|   532|
|Birth     |PROVIDE        |BANGLADESH   |8       |      1|     11|   532|
|Birth     |PROVIDE        |BANGLADESH   |9       |      0|     42|   532|
|Birth     |PROVIDE        |BANGLADESH   |9       |      1|     17|   532|
|Birth     |PROVIDE        |BANGLADESH   |10      |      0|     41|   532|
|Birth     |PROVIDE        |BANGLADESH   |10      |      1|     14|   532|
|Birth     |PROVIDE        |BANGLADESH   |11      |      0|     25|   532|
|Birth     |PROVIDE        |BANGLADESH   |11      |      1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |12      |      0|     18|   532|
|Birth     |PROVIDE        |BANGLADESH   |12      |      1|      4|   532|
|Birth     |ResPak         |PAKISTAN     |1       |      0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |1       |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |2       |      0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |2       |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |3       |      0|      4|    38|
|Birth     |ResPak         |PAKISTAN     |3       |      1|      1|    38|
|Birth     |ResPak         |PAKISTAN     |4       |      0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |4       |      1|      1|    38|
|Birth     |ResPak         |PAKISTAN     |5       |      0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |5       |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |6       |      0|      3|    38|
|Birth     |ResPak         |PAKISTAN     |6       |      1|      2|    38|
|Birth     |ResPak         |PAKISTAN     |7       |      0|      7|    38|
|Birth     |ResPak         |PAKISTAN     |7       |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |8       |      0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |8       |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |9       |      0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |9       |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |10      |      0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |10      |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |11      |      0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |11      |      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |12      |      0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |12      |      1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |1       |      0|     62|  1102|
|Birth     |SAS-CompFeed   |INDIA        |1       |      1|     17|  1102|
|Birth     |SAS-CompFeed   |INDIA        |2       |      0|     40|  1102|
|Birth     |SAS-CompFeed   |INDIA        |2       |      1|      9|  1102|
|Birth     |SAS-CompFeed   |INDIA        |3       |      0|     42|  1102|
|Birth     |SAS-CompFeed   |INDIA        |3       |      1|      6|  1102|
|Birth     |SAS-CompFeed   |INDIA        |4       |      0|     50|  1102|
|Birth     |SAS-CompFeed   |INDIA        |4       |      1|      2|  1102|
|Birth     |SAS-CompFeed   |INDIA        |5       |      0|     79|  1102|
|Birth     |SAS-CompFeed   |INDIA        |5       |      1|     12|  1102|
|Birth     |SAS-CompFeed   |INDIA        |6       |      0|     94|  1102|
|Birth     |SAS-CompFeed   |INDIA        |6       |      1|      6|  1102|
|Birth     |SAS-CompFeed   |INDIA        |7       |      0|     70|  1102|
|Birth     |SAS-CompFeed   |INDIA        |7       |      1|      9|  1102|
|Birth     |SAS-CompFeed   |INDIA        |8       |      0|    135|  1102|
|Birth     |SAS-CompFeed   |INDIA        |8       |      1|     14|  1102|
|Birth     |SAS-CompFeed   |INDIA        |9       |      0|    123|  1102|
|Birth     |SAS-CompFeed   |INDIA        |9       |      1|     11|  1102|
|Birth     |SAS-CompFeed   |INDIA        |10      |      0|    117|  1102|
|Birth     |SAS-CompFeed   |INDIA        |10      |      1|     14|  1102|
|Birth     |SAS-CompFeed   |INDIA        |11      |      0|     90|  1102|
|Birth     |SAS-CompFeed   |INDIA        |11      |      1|     12|  1102|
|Birth     |SAS-CompFeed   |INDIA        |12      |      0|     82|  1102|
|Birth     |SAS-CompFeed   |INDIA        |12      |      1|      6|  1102|
|Birth     |Vellore Crypto |INDIA        |1       |      0|     27|   343|
|Birth     |Vellore Crypto |INDIA        |1       |      1|      6|   343|
|Birth     |Vellore Crypto |INDIA        |2       |      0|     10|   343|
|Birth     |Vellore Crypto |INDIA        |2       |      1|      3|   343|
|Birth     |Vellore Crypto |INDIA        |3       |      0|     22|   343|
|Birth     |Vellore Crypto |INDIA        |3       |      1|     10|   343|
|Birth     |Vellore Crypto |INDIA        |4       |      0|     13|   343|
|Birth     |Vellore Crypto |INDIA        |4       |      1|      1|   343|
|Birth     |Vellore Crypto |INDIA        |5       |      0|     12|   343|
|Birth     |Vellore Crypto |INDIA        |5       |      1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |6       |      0|     29|   343|
|Birth     |Vellore Crypto |INDIA        |6       |      1|     11|   343|
|Birth     |Vellore Crypto |INDIA        |7       |      0|     22|   343|
|Birth     |Vellore Crypto |INDIA        |7       |      1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |8       |      0|     32|   343|
|Birth     |Vellore Crypto |INDIA        |8       |      1|     14|   343|
|Birth     |Vellore Crypto |INDIA        |9       |      0|     12|   343|
|Birth     |Vellore Crypto |INDIA        |9       |      1|     13|   343|
|Birth     |Vellore Crypto |INDIA        |10      |      0|     26|   343|
|Birth     |Vellore Crypto |INDIA        |10      |      1|     10|   343|
|Birth     |Vellore Crypto |INDIA        |11      |      0|     22|   343|
|Birth     |Vellore Crypto |INDIA        |11      |      1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |12      |      0|     24|   343|
|Birth     |Vellore Crypto |INDIA        |12      |      1|      5|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |      0|   1002| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |      1|    195| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |      0|    835| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |      1|    140| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |      0|    932| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |      1|    175| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |      0|    767| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |      1|    129| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |      0|    806| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |      1|    148| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |      0|    924| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |      1|    173| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |      0|    930| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |      1|    185| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |      0|    976| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |      1|    215| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |      0|    969| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |      1|    202| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |      0|    834| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |      1|    150| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |      0|    937| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |      1|    183| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |      0|    933| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |      1|    164| 12904|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |      0|     28|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |      1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |      0|     14|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |      0|     27|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |      1|      4|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |      0|     43|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |      1|      4|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |      0|     36|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |      1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |      0|     21|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |      1|      7|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |      0|     39|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |      1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |      0|     20|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |      0|     18|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |      1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |      0|     20|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |      1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |      0|     34|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |      1|      9|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |      0|     22|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |      1|      3|   368|
|6 months  |CMIN           |BANGLADESH   |1       |      0|     22|   242|
|6 months  |CMIN           |BANGLADESH   |1       |      1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |2       |      0|     24|   242|
|6 months  |CMIN           |BANGLADESH   |2       |      1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |3       |      0|     20|   242|
|6 months  |CMIN           |BANGLADESH   |3       |      1|      4|   242|
|6 months  |CMIN           |BANGLADESH   |4       |      0|     11|   242|
|6 months  |CMIN           |BANGLADESH   |4       |      1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |5       |      0|     14|   242|
|6 months  |CMIN           |BANGLADESH   |5       |      1|      3|   242|
|6 months  |CMIN           |BANGLADESH   |6       |      0|     10|   242|
|6 months  |CMIN           |BANGLADESH   |6       |      1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |7       |      0|     13|   242|
|6 months  |CMIN           |BANGLADESH   |7       |      1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |8       |      0|     21|   242|
|6 months  |CMIN           |BANGLADESH   |8       |      1|      4|   242|
|6 months  |CMIN           |BANGLADESH   |9       |      0|     16|   242|
|6 months  |CMIN           |BANGLADESH   |9       |      1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |10      |      0|     24|   242|
|6 months  |CMIN           |BANGLADESH   |10      |      1|      2|   242|
|6 months  |CMIN           |BANGLADESH   |11      |      0|     22|   242|
|6 months  |CMIN           |BANGLADESH   |11      |      1|      2|   242|
|6 months  |CMIN           |BANGLADESH   |12      |      0|     24|   242|
|6 months  |CMIN           |BANGLADESH   |12      |      1|      4|   242|
|6 months  |CONTENT        |PERU         |1       |      0|     10|   215|
|6 months  |CONTENT        |PERU         |1       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |2       |      0|     15|   215|
|6 months  |CONTENT        |PERU         |2       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |3       |      0|     27|   215|
|6 months  |CONTENT        |PERU         |3       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |4       |      0|     24|   215|
|6 months  |CONTENT        |PERU         |4       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |5       |      0|     13|   215|
|6 months  |CONTENT        |PERU         |5       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |6       |      0|      8|   215|
|6 months  |CONTENT        |PERU         |6       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |7       |      0|     41|   215|
|6 months  |CONTENT        |PERU         |7       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |8       |      0|     17|   215|
|6 months  |CONTENT        |PERU         |8       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |9       |      0|     23|   215|
|6 months  |CONTENT        |PERU         |9       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |10      |      0|     15|   215|
|6 months  |CONTENT        |PERU         |10      |      1|      0|   215|
|6 months  |CONTENT        |PERU         |11      |      0|     10|   215|
|6 months  |CONTENT        |PERU         |11      |      1|      0|   215|
|6 months  |CONTENT        |PERU         |12      |      0|     12|   215|
|6 months  |CONTENT        |PERU         |12      |      1|      0|   215|
|6 months  |EE             |PAKISTAN     |1       |      0|     85|   375|
|6 months  |EE             |PAKISTAN     |1       |      1|     19|   375|
|6 months  |EE             |PAKISTAN     |2       |      0|     54|   375|
|6 months  |EE             |PAKISTAN     |2       |      1|      6|   375|
|6 months  |EE             |PAKISTAN     |3       |      0|     34|   375|
|6 months  |EE             |PAKISTAN     |3       |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |4       |      0|     15|   375|
|6 months  |EE             |PAKISTAN     |4       |      1|      4|   375|
|6 months  |EE             |PAKISTAN     |5       |      0|      0|   375|
|6 months  |EE             |PAKISTAN     |5       |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |6       |      0|      0|   375|
|6 months  |EE             |PAKISTAN     |6       |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |7       |      0|      0|   375|
|6 months  |EE             |PAKISTAN     |7       |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |8       |      0|      0|   375|
|6 months  |EE             |PAKISTAN     |8       |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |9       |      0|      0|   375|
|6 months  |EE             |PAKISTAN     |9       |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |10      |      0|      2|   375|
|6 months  |EE             |PAKISTAN     |10      |      1|      0|   375|
|6 months  |EE             |PAKISTAN     |11      |      0|     75|   375|
|6 months  |EE             |PAKISTAN     |11      |      1|      8|   375|
|6 months  |EE             |PAKISTAN     |12      |      0|     63|   375|
|6 months  |EE             |PAKISTAN     |12      |      1|     10|   375|
|6 months  |GMS-Nepal      |NEPAL        |1       |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |      0|    117|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |      1|     10|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |      0|    206|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |      1|     23|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |      0|    190|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |      1|     18|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |      1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |      0|     27|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |      0|     28|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |      0|     22|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |      0|     29|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |      0|     31|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |      0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |      0|     18|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |      0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |      0|     16|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |      0|     27|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |      0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |      0|     38|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |      1|      0|   299|
|6 months  |JiVitA-3       |BANGLADESH   |1       |      0|   1551| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |1       |      1|    177| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |2       |      0|   1309| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |2       |      1|    117| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |3       |      0|   1595| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |3       |      1|    117| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |4       |      0|   1259| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |4       |      1|    104| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |5       |      0|   1008| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |5       |      1|     89| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |6       |      0|   1014| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |6       |      1|     83| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |7       |      0|    972| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |7       |      1|    102| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |8       |      0|   1240| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |8       |      1|    117| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |9       |      0|   1412| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |9       |      1|    117| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |10      |      0|   1328| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |10      |      1|    124| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |11      |      0|   1349| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |11      |      1|    144| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |12      |      0|   1316| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |12      |      1|    129| 16773|
|6 months  |JiVitA-4       |BANGLADESH   |1       |      0|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |1       |      1|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |2       |      0|    761|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |2       |      1|     40|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |3       |      0|    788|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |3       |      1|     58|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |4       |      0|    640|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |4       |      1|     43|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |5       |      0|    543|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |5       |      1|     26|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |6       |      0|    385|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |6       |      1|     23|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |7       |      0|    439|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |7       |      1|     26|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |8       |      0|    542|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |8       |      1|     32|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |9       |      0|    337|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |9       |      1|     22|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |10      |      0|    122|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |10      |      1|      5|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |11      |      0|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |11      |      1|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |12      |      0|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |12      |      1|      0|  4832|
|6 months  |Keneba         |GAMBIA       |1       |      0|    198|  2089|
|6 months  |Keneba         |GAMBIA       |1       |      1|     15|  2089|
|6 months  |Keneba         |GAMBIA       |2       |      0|    198|  2089|
|6 months  |Keneba         |GAMBIA       |2       |      1|     11|  2089|
|6 months  |Keneba         |GAMBIA       |3       |      0|    220|  2089|
|6 months  |Keneba         |GAMBIA       |3       |      1|     15|  2089|
|6 months  |Keneba         |GAMBIA       |4       |      0|    128|  2089|
|6 months  |Keneba         |GAMBIA       |4       |      1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |5       |      0|    136|  2089|
|6 months  |Keneba         |GAMBIA       |5       |      1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |6       |      0|    125|  2089|
|6 months  |Keneba         |GAMBIA       |6       |      1|      6|  2089|
|6 months  |Keneba         |GAMBIA       |7       |      0|     89|  2089|
|6 months  |Keneba         |GAMBIA       |7       |      1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |8       |      0|    156|  2089|
|6 months  |Keneba         |GAMBIA       |8       |      1|      9|  2089|
|6 months  |Keneba         |GAMBIA       |9       |      0|    168|  2089|
|6 months  |Keneba         |GAMBIA       |9       |      1|      9|  2089|
|6 months  |Keneba         |GAMBIA       |10      |      0|    220|  2089|
|6 months  |Keneba         |GAMBIA       |10      |      1|     11|  2089|
|6 months  |Keneba         |GAMBIA       |11      |      0|    165|  2089|
|6 months  |Keneba         |GAMBIA       |11      |      1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |12      |      0|    165|  2089|
|6 months  |Keneba         |GAMBIA       |12      |      1|     18|  2089|
|6 months  |LCNI-5         |MALAWI       |1       |      0|     48|   839|
|6 months  |LCNI-5         |MALAWI       |1       |      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |2       |      0|     44|   839|
|6 months  |LCNI-5         |MALAWI       |2       |      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |3       |      0|     22|   839|
|6 months  |LCNI-5         |MALAWI       |3       |      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |4       |      0|     39|   839|
|6 months  |LCNI-5         |MALAWI       |4       |      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |5       |      0|     45|   839|
|6 months  |LCNI-5         |MALAWI       |5       |      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |6       |      0|     36|   839|
|6 months  |LCNI-5         |MALAWI       |6       |      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |7       |      0|     66|   839|
|6 months  |LCNI-5         |MALAWI       |7       |      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |8       |      0|     91|   839|
|6 months  |LCNI-5         |MALAWI       |8       |      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |9       |      0|     93|   839|
|6 months  |LCNI-5         |MALAWI       |9       |      1|      2|   839|
|6 months  |LCNI-5         |MALAWI       |10      |      0|    140|   839|
|6 months  |LCNI-5         |MALAWI       |10      |      1|      4|   839|
|6 months  |LCNI-5         |MALAWI       |11      |      0|    113|   839|
|6 months  |LCNI-5         |MALAWI       |11      |      1|      2|   839|
|6 months  |LCNI-5         |MALAWI       |12      |      0|     88|   839|
|6 months  |LCNI-5         |MALAWI       |12      |      1|      3|   839|
|6 months  |MAL-ED         |INDIA        |1       |      0|     17|   236|
|6 months  |MAL-ED         |INDIA        |1       |      1|      3|   236|
|6 months  |MAL-ED         |INDIA        |2       |      0|     23|   236|
|6 months  |MAL-ED         |INDIA        |2       |      1|      0|   236|
|6 months  |MAL-ED         |INDIA        |3       |      0|     21|   236|
|6 months  |MAL-ED         |INDIA        |3       |      1|      2|   236|
|6 months  |MAL-ED         |INDIA        |4       |      0|     11|   236|
|6 months  |MAL-ED         |INDIA        |4       |      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |5       |      0|      3|   236|
|6 months  |MAL-ED         |INDIA        |5       |      1|      0|   236|
|6 months  |MAL-ED         |INDIA        |6       |      0|     17|   236|
|6 months  |MAL-ED         |INDIA        |6       |      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |7       |      0|      9|   236|
|6 months  |MAL-ED         |INDIA        |7       |      1|      0|   236|
|6 months  |MAL-ED         |INDIA        |8       |      0|     27|   236|
|6 months  |MAL-ED         |INDIA        |8       |      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |9       |      0|     19|   236|
|6 months  |MAL-ED         |INDIA        |9       |      1|      2|   236|
|6 months  |MAL-ED         |INDIA        |10      |      0|     35|   236|
|6 months  |MAL-ED         |INDIA        |10      |      1|      3|   236|
|6 months  |MAL-ED         |INDIA        |11      |      0|     22|   236|
|6 months  |MAL-ED         |INDIA        |11      |      1|      2|   236|
|6 months  |MAL-ED         |INDIA        |12      |      0|     13|   236|
|6 months  |MAL-ED         |INDIA        |12      |      1|      4|   236|
|6 months  |MAL-ED         |BANGLADESH   |1       |      0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |      0|     18|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |      0|     24|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |      1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |      0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |      0|     19|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |      0|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |      0|     11|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |      1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |      0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |      0|     24|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |      0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |      0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |      0|     31|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |      1|      0|   241|
|6 months  |MAL-ED         |PERU         |1       |      0|     42|   273|
|6 months  |MAL-ED         |PERU         |1       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |2       |      0|     16|   273|
|6 months  |MAL-ED         |PERU         |2       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |3       |      0|     25|   273|
|6 months  |MAL-ED         |PERU         |3       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |4       |      0|     17|   273|
|6 months  |MAL-ED         |PERU         |4       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |5       |      0|     20|   273|
|6 months  |MAL-ED         |PERU         |5       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |6       |      0|     15|   273|
|6 months  |MAL-ED         |PERU         |6       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |7       |      0|     21|   273|
|6 months  |MAL-ED         |PERU         |7       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |8       |      0|     26|   273|
|6 months  |MAL-ED         |PERU         |8       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |9       |      0|     16|   273|
|6 months  |MAL-ED         |PERU         |9       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |10      |      0|     22|   273|
|6 months  |MAL-ED         |PERU         |10      |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |11      |      0|     34|   273|
|6 months  |MAL-ED         |PERU         |11      |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |12      |      0|     19|   273|
|6 months  |MAL-ED         |PERU         |12      |      1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |1       |      0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |1       |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |2       |      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |2       |      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |3       |      0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |3       |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |4       |      0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |4       |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |5       |      0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |5       |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |6       |      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |6       |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |7       |      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |7       |      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |8       |      0|     29|   236|
|6 months  |MAL-ED         |NEPAL        |8       |      1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |9       |      0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |9       |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |10      |      0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |10      |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |11      |      0|     21|   236|
|6 months  |MAL-ED         |NEPAL        |11      |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |12      |      0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |12      |      1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |1       |      0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |      0|     28|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |      0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |      0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |      0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |      0|      8|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |      0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |      0|     26|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |      0|     34|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |      0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |      0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |      0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |1       |      0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |      0|     28|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |      0|     19|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |      0|     15|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |      0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |      0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |      0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |      0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |      0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |      0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |      0|     25|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |      0|     31|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |      1|      1|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |      0|     34|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |      0|     23|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |      1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |      0|     15|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |      0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |      0|     11|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |      0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |      1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |      0|     25|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |      0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |      0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |      1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |      0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |      0|     19|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |      1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |      0|     42|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |      1|      2|   254|
|6 months  |NIH-Birth      |BANGLADESH   |1       |      0|     59|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |      1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |      0|     42|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |      1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |      0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |      1|      6|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |      0|     42|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |      1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |      0|     46|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |      1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |      0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |      1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |      0|     30|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |      1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |      0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |      1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |      0|     41|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |      1|      6|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |      0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |      1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |      0|     46|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |      1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |      0|     41|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |      1|      3|   537|
|6 months  |PROBIT         |BELARUS      |1       |      0|    904| 15757|
|6 months  |PROBIT         |BELARUS      |1       |      1|      6| 15757|
|6 months  |PROBIT         |BELARUS      |2       |      0|    936| 15757|
|6 months  |PROBIT         |BELARUS      |2       |      1|      6| 15757|
|6 months  |PROBIT         |BELARUS      |3       |      0|   1064| 15757|
|6 months  |PROBIT         |BELARUS      |3       |      1|      6| 15757|
|6 months  |PROBIT         |BELARUS      |4       |      0|   1096| 15757|
|6 months  |PROBIT         |BELARUS      |4       |      1|      6| 15757|
|6 months  |PROBIT         |BELARUS      |5       |      0|   1024| 15757|
|6 months  |PROBIT         |BELARUS      |5       |      1|      5| 15757|
|6 months  |PROBIT         |BELARUS      |6       |      0|   1146| 15757|
|6 months  |PROBIT         |BELARUS      |6       |      1|      7| 15757|
|6 months  |PROBIT         |BELARUS      |7       |      0|   1463| 15757|
|6 months  |PROBIT         |BELARUS      |7       |      1|     11| 15757|
|6 months  |PROBIT         |BELARUS      |8       |      0|   1498| 15757|
|6 months  |PROBIT         |BELARUS      |8       |      1|     11| 15757|
|6 months  |PROBIT         |BELARUS      |9       |      0|   1542| 15757|
|6 months  |PROBIT         |BELARUS      |9       |      1|      8| 15757|
|6 months  |PROBIT         |BELARUS      |10      |      0|   1654| 15757|
|6 months  |PROBIT         |BELARUS      |10      |      1|     14| 15757|
|6 months  |PROBIT         |BELARUS      |11      |      0|   1580| 15757|
|6 months  |PROBIT         |BELARUS      |11      |      1|     14| 15757|
|6 months  |PROBIT         |BELARUS      |12      |      0|   1742| 15757|
|6 months  |PROBIT         |BELARUS      |12      |      1|     14| 15757|
|6 months  |PROVIDE        |BANGLADESH   |1       |      0|     45|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |      1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |2       |      0|     30|   603|
|6 months  |PROVIDE        |BANGLADESH   |2       |      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |3       |      0|     47|   603|
|6 months  |PROVIDE        |BANGLADESH   |3       |      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |4       |      0|     32|   603|
|6 months  |PROVIDE        |BANGLADESH   |4       |      1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |5       |      0|     52|   603|
|6 months  |PROVIDE        |BANGLADESH   |5       |      1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |6       |      0|     73|   603|
|6 months  |PROVIDE        |BANGLADESH   |6       |      1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |7       |      0|     60|   603|
|6 months  |PROVIDE        |BANGLADESH   |7       |      1|      9|   603|
|6 months  |PROVIDE        |BANGLADESH   |8       |      0|     51|   603|
|6 months  |PROVIDE        |BANGLADESH   |8       |      1|      4|   603|
|6 months  |PROVIDE        |BANGLADESH   |9       |      0|     70|   603|
|6 months  |PROVIDE        |BANGLADESH   |9       |      1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |10      |      0|     64|   603|
|6 months  |PROVIDE        |BANGLADESH   |10      |      1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |11      |      0|     32|   603|
|6 months  |PROVIDE        |BANGLADESH   |11      |      1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |12      |      0|     22|   603|
|6 months  |PROVIDE        |BANGLADESH   |12      |      1|      1|   603|
|6 months  |ResPak         |PAKISTAN     |1       |      0|      7|   239|
|6 months  |ResPak         |PAKISTAN     |1       |      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |2       |      0|     12|   239|
|6 months  |ResPak         |PAKISTAN     |2       |      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |3       |      0|     24|   239|
|6 months  |ResPak         |PAKISTAN     |3       |      1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |4       |      0|     23|   239|
|6 months  |ResPak         |PAKISTAN     |4       |      1|      5|   239|
|6 months  |ResPak         |PAKISTAN     |5       |      0|     31|   239|
|6 months  |ResPak         |PAKISTAN     |5       |      1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |6       |      0|     36|   239|
|6 months  |ResPak         |PAKISTAN     |6       |      1|      5|   239|
|6 months  |ResPak         |PAKISTAN     |7       |      0|     23|   239|
|6 months  |ResPak         |PAKISTAN     |7       |      1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |8       |      0|     35|   239|
|6 months  |ResPak         |PAKISTAN     |8       |      1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |9       |      0|     15|   239|
|6 months  |ResPak         |PAKISTAN     |9       |      1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |10      |      0|      5|   239|
|6 months  |ResPak         |PAKISTAN     |10      |      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |11      |      0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |11      |      1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |12      |      0|      0|   239|
|6 months  |ResPak         |PAKISTAN     |12      |      1|      1|   239|
|6 months  |SAS-CompFeed   |INDIA        |1       |      0|     81|  1332|
|6 months  |SAS-CompFeed   |INDIA        |1       |      1|     13|  1332|
|6 months  |SAS-CompFeed   |INDIA        |2       |      0|     52|  1332|
|6 months  |SAS-CompFeed   |INDIA        |2       |      1|     11|  1332|
|6 months  |SAS-CompFeed   |INDIA        |3       |      0|     58|  1332|
|6 months  |SAS-CompFeed   |INDIA        |3       |      1|      6|  1332|
|6 months  |SAS-CompFeed   |INDIA        |4       |      0|     51|  1332|
|6 months  |SAS-CompFeed   |INDIA        |4       |      1|      8|  1332|
|6 months  |SAS-CompFeed   |INDIA        |5       |      0|     94|  1332|
|6 months  |SAS-CompFeed   |INDIA        |5       |      1|     12|  1332|
|6 months  |SAS-CompFeed   |INDIA        |6       |      0|     87|  1332|
|6 months  |SAS-CompFeed   |INDIA        |6       |      1|     17|  1332|
|6 months  |SAS-CompFeed   |INDIA        |7       |      0|     99|  1332|
|6 months  |SAS-CompFeed   |INDIA        |7       |      1|      8|  1332|
|6 months  |SAS-CompFeed   |INDIA        |8       |      0|    160|  1332|
|6 months  |SAS-CompFeed   |INDIA        |8       |      1|     17|  1332|
|6 months  |SAS-CompFeed   |INDIA        |9       |      0|    141|  1332|
|6 months  |SAS-CompFeed   |INDIA        |9       |      1|     25|  1332|
|6 months  |SAS-CompFeed   |INDIA        |10      |      0|    140|  1332|
|6 months  |SAS-CompFeed   |INDIA        |10      |      1|     22|  1332|
|6 months  |SAS-CompFeed   |INDIA        |11      |      0|    109|  1332|
|6 months  |SAS-CompFeed   |INDIA        |11      |      1|     15|  1332|
|6 months  |SAS-CompFeed   |INDIA        |12      |      0|     94|  1332|
|6 months  |SAS-CompFeed   |INDIA        |12      |      1|     12|  1332|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |      0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |      1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |      0|     39|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |      1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |      0|     15|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |      1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |      0|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |      1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |      0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |      1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |      0|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |      1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |      0|     26|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |      1|      6|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |      0|     54|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |      1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |      0|     43|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |      1|      8|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |      0|     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |      1|     10|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |      0|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |      1|      8|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |      0|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |      1|      7|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |      0|    123|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |      1|      4|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |      0|    147|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |      1|      7|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |      0|    122|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |      1|      7|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |      0|    165|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |      1|      6|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |      0|    157|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |      1|      6|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |      0|    146|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |      1|      9|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |      0|    196|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |      1|      8|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |      0|    184|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |      1|      7|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |      0|    165|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |      1|      7|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |      0|    197|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |      1|     15|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |      0|    165|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |      1|      6|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |      0|    174|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |      1|      5|  2028|
|6 months  |Vellore Crypto |INDIA        |1       |      0|     33|   408|
|6 months  |Vellore Crypto |INDIA        |1       |      1|      8|   408|
|6 months  |Vellore Crypto |INDIA        |2       |      0|     17|   408|
|6 months  |Vellore Crypto |INDIA        |2       |      1|      0|   408|
|6 months  |Vellore Crypto |INDIA        |3       |      0|     32|   408|
|6 months  |Vellore Crypto |INDIA        |3       |      1|      3|   408|
|6 months  |Vellore Crypto |INDIA        |4       |      0|     12|   408|
|6 months  |Vellore Crypto |INDIA        |4       |      1|      4|   408|
|6 months  |Vellore Crypto |INDIA        |5       |      0|     21|   408|
|6 months  |Vellore Crypto |INDIA        |5       |      1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |6       |      0|     39|   408|
|6 months  |Vellore Crypto |INDIA        |6       |      1|      8|   408|
|6 months  |Vellore Crypto |INDIA        |7       |      0|     30|   408|
|6 months  |Vellore Crypto |INDIA        |7       |      1|      5|   408|
|6 months  |Vellore Crypto |INDIA        |8       |      0|     41|   408|
|6 months  |Vellore Crypto |INDIA        |8       |      1|      8|   408|
|6 months  |Vellore Crypto |INDIA        |9       |      0|     26|   408|
|6 months  |Vellore Crypto |INDIA        |9       |      1|      4|   408|
|6 months  |Vellore Crypto |INDIA        |10      |      0|     39|   408|
|6 months  |Vellore Crypto |INDIA        |10      |      1|      3|   408|
|6 months  |Vellore Crypto |INDIA        |11      |      0|     31|   408|
|6 months  |Vellore Crypto |INDIA        |11      |      1|      6|   408|
|6 months  |Vellore Crypto |INDIA        |12      |      0|     33|   408|
|6 months  |Vellore Crypto |INDIA        |12      |      1|      4|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |      0|    744|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |      1|     22|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |      0|    592|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |      1|     24|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |      0|    735|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |      1|     15|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |      0|    601|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |      1|     19|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |      0|    604|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |      1|     20|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |      0|    689|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |      1|     26|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |      0|    720|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |      1|     22|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |      0|    730|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |      1|     28|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |      0|    727|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |      1|     20|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |      0|    607|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |      1|     23|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |      0|    751|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |      1|     21|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |      0|    733|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |      1|     25|  8498|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |      0|     30|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |      0|     16|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |      1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |      0|     29|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |      0|     46|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |      0|     39|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |      1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |      0|     27|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |      0|     38|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |      1|      4|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |      0|     21|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |      0|     19|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |      0|     21|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |      0|     38|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |      1|      6|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |      0|     25|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |      1|      1|   372|
|24 months |CMIN           |BANGLADESH   |1       |      0|     20|   242|
|24 months |CMIN           |BANGLADESH   |1       |      1|      2|   242|
|24 months |CMIN           |BANGLADESH   |2       |      0|     23|   242|
|24 months |CMIN           |BANGLADESH   |2       |      1|      1|   242|
|24 months |CMIN           |BANGLADESH   |3       |      0|     25|   242|
|24 months |CMIN           |BANGLADESH   |3       |      1|      0|   242|
|24 months |CMIN           |BANGLADESH   |4       |      0|      9|   242|
|24 months |CMIN           |BANGLADESH   |4       |      1|      2|   242|
|24 months |CMIN           |BANGLADESH   |5       |      0|     16|   242|
|24 months |CMIN           |BANGLADESH   |5       |      1|      2|   242|
|24 months |CMIN           |BANGLADESH   |6       |      0|     11|   242|
|24 months |CMIN           |BANGLADESH   |6       |      1|      0|   242|
|24 months |CMIN           |BANGLADESH   |7       |      0|     11|   242|
|24 months |CMIN           |BANGLADESH   |7       |      1|      2|   242|
|24 months |CMIN           |BANGLADESH   |8       |      0|     22|   242|
|24 months |CMIN           |BANGLADESH   |8       |      1|      3|   242|
|24 months |CMIN           |BANGLADESH   |9       |      0|     17|   242|
|24 months |CMIN           |BANGLADESH   |9       |      1|      0|   242|
|24 months |CMIN           |BANGLADESH   |10      |      0|     22|   242|
|24 months |CMIN           |BANGLADESH   |10      |      1|      5|   242|
|24 months |CMIN           |BANGLADESH   |11      |      0|     20|   242|
|24 months |CMIN           |BANGLADESH   |11      |      1|      2|   242|
|24 months |CMIN           |BANGLADESH   |12      |      0|     21|   242|
|24 months |CMIN           |BANGLADESH   |12      |      1|      6|   242|
|24 months |CONTENT        |PERU         |1       |      0|      7|   164|
|24 months |CONTENT        |PERU         |1       |      1|      1|   164|
|24 months |CONTENT        |PERU         |2       |      0|     10|   164|
|24 months |CONTENT        |PERU         |2       |      1|      0|   164|
|24 months |CONTENT        |PERU         |3       |      0|     19|   164|
|24 months |CONTENT        |PERU         |3       |      1|      0|   164|
|24 months |CONTENT        |PERU         |4       |      0|     16|   164|
|24 months |CONTENT        |PERU         |4       |      1|      0|   164|
|24 months |CONTENT        |PERU         |5       |      0|     11|   164|
|24 months |CONTENT        |PERU         |5       |      1|      0|   164|
|24 months |CONTENT        |PERU         |6       |      0|      5|   164|
|24 months |CONTENT        |PERU         |6       |      1|      0|   164|
|24 months |CONTENT        |PERU         |7       |      0|     32|   164|
|24 months |CONTENT        |PERU         |7       |      1|      0|   164|
|24 months |CONTENT        |PERU         |8       |      0|     15|   164|
|24 months |CONTENT        |PERU         |8       |      1|      0|   164|
|24 months |CONTENT        |PERU         |9       |      0|     19|   164|
|24 months |CONTENT        |PERU         |9       |      1|      0|   164|
|24 months |CONTENT        |PERU         |10      |      0|     10|   164|
|24 months |CONTENT        |PERU         |10      |      1|      0|   164|
|24 months |CONTENT        |PERU         |11      |      0|     10|   164|
|24 months |CONTENT        |PERU         |11      |      1|      0|   164|
|24 months |CONTENT        |PERU         |12      |      0|      9|   164|
|24 months |CONTENT        |PERU         |12      |      1|      0|   164|
|24 months |EE             |PAKISTAN     |1       |      0|     10|   168|
|24 months |EE             |PAKISTAN     |1       |      1|      2|   168|
|24 months |EE             |PAKISTAN     |2       |      0|      3|   168|
|24 months |EE             |PAKISTAN     |2       |      1|      1|   168|
|24 months |EE             |PAKISTAN     |3       |      0|      1|   168|
|24 months |EE             |PAKISTAN     |3       |      1|      1|   168|
|24 months |EE             |PAKISTAN     |4       |      0|      0|   168|
|24 months |EE             |PAKISTAN     |4       |      1|      0|   168|
|24 months |EE             |PAKISTAN     |5       |      0|      0|   168|
|24 months |EE             |PAKISTAN     |5       |      1|      0|   168|
|24 months |EE             |PAKISTAN     |6       |      0|      0|   168|
|24 months |EE             |PAKISTAN     |6       |      1|      0|   168|
|24 months |EE             |PAKISTAN     |7       |      0|      0|   168|
|24 months |EE             |PAKISTAN     |7       |      1|      0|   168|
|24 months |EE             |PAKISTAN     |8       |      0|      0|   168|
|24 months |EE             |PAKISTAN     |8       |      1|      0|   168|
|24 months |EE             |PAKISTAN     |9       |      0|      0|   168|
|24 months |EE             |PAKISTAN     |9       |      1|      0|   168|
|24 months |EE             |PAKISTAN     |10      |      0|      2|   168|
|24 months |EE             |PAKISTAN     |10      |      1|      0|   168|
|24 months |EE             |PAKISTAN     |11      |      0|     68|   168|
|24 months |EE             |PAKISTAN     |11      |      1|     13|   168|
|24 months |EE             |PAKISTAN     |12      |      0|     54|   168|
|24 months |EE             |PAKISTAN     |12      |      1|     13|   168|
|24 months |GMS-Nepal      |NEPAL        |1       |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |2       |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |2       |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |3       |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |3       |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |4       |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |4       |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |5       |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |5       |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |6       |      0|     86|   487|
|24 months |GMS-Nepal      |NEPAL        |6       |      1|     26|   487|
|24 months |GMS-Nepal      |NEPAL        |7       |      0|    155|   487|
|24 months |GMS-Nepal      |NEPAL        |7       |      1|     40|   487|
|24 months |GMS-Nepal      |NEPAL        |8       |      0|    155|   487|
|24 months |GMS-Nepal      |NEPAL        |8       |      1|     25|   487|
|24 months |GMS-Nepal      |NEPAL        |9       |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |9       |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |10      |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |10      |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |11      |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |11      |      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |12      |      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |12      |      1|      0|   487|
|24 months |JiVitA-3       |BANGLADESH   |1       |      0|    619|  8597|
|24 months |JiVitA-3       |BANGLADESH   |1       |      1|    165|  8597|
|24 months |JiVitA-3       |BANGLADESH   |2       |      0|    554|  8597|
|24 months |JiVitA-3       |BANGLADESH   |2       |      1|    147|  8597|
|24 months |JiVitA-3       |BANGLADESH   |3       |      0|    680|  8597|
|24 months |JiVitA-3       |BANGLADESH   |3       |      1|    184|  8597|
|24 months |JiVitA-3       |BANGLADESH   |4       |      0|    532|  8597|
|24 months |JiVitA-3       |BANGLADESH   |4       |      1|    172|  8597|
|24 months |JiVitA-3       |BANGLADESH   |5       |      0|    412|  8597|
|24 months |JiVitA-3       |BANGLADESH   |5       |      1|    127|  8597|
|24 months |JiVitA-3       |BANGLADESH   |6       |      0|    404|  8597|
|24 months |JiVitA-3       |BANGLADESH   |6       |      1|    104|  8597|
|24 months |JiVitA-3       |BANGLADESH   |7       |      0|    436|  8597|
|24 months |JiVitA-3       |BANGLADESH   |7       |      1|    118|  8597|
|24 months |JiVitA-3       |BANGLADESH   |8       |      0|    509|  8597|
|24 months |JiVitA-3       |BANGLADESH   |8       |      1|    142|  8597|
|24 months |JiVitA-3       |BANGLADESH   |9       |      0|    605|  8597|
|24 months |JiVitA-3       |BANGLADESH   |9       |      1|    190|  8597|
|24 months |JiVitA-3       |BANGLADESH   |10      |      0|    597|  8597|
|24 months |JiVitA-3       |BANGLADESH   |10      |      1|    146|  8597|
|24 months |JiVitA-3       |BANGLADESH   |11      |      0|    644|  8597|
|24 months |JiVitA-3       |BANGLADESH   |11      |      1|    186|  8597|
|24 months |JiVitA-3       |BANGLADESH   |12      |      0|    729|  8597|
|24 months |JiVitA-3       |BANGLADESH   |12      |      1|    195|  8597|
|24 months |JiVitA-4       |BANGLADESH   |1       |      0|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |1       |      1|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |2       |      0|    691|  4734|
|24 months |JiVitA-4       |BANGLADESH   |2       |      1|    112|  4734|
|24 months |JiVitA-4       |BANGLADESH   |3       |      0|    685|  4734|
|24 months |JiVitA-4       |BANGLADESH   |3       |      1|    158|  4734|
|24 months |JiVitA-4       |BANGLADESH   |4       |      0|    522|  4734|
|24 months |JiVitA-4       |BANGLADESH   |4       |      1|    147|  4734|
|24 months |JiVitA-4       |BANGLADESH   |5       |      0|    426|  4734|
|24 months |JiVitA-4       |BANGLADESH   |5       |      1|    115|  4734|
|24 months |JiVitA-4       |BANGLADESH   |6       |      0|    311|  4734|
|24 months |JiVitA-4       |BANGLADESH   |6       |      1|     88|  4734|
|24 months |JiVitA-4       |BANGLADESH   |7       |      0|    378|  4734|
|24 months |JiVitA-4       |BANGLADESH   |7       |      1|     82|  4734|
|24 months |JiVitA-4       |BANGLADESH   |8       |      0|    429|  4734|
|24 months |JiVitA-4       |BANGLADESH   |8       |      1|    119|  4734|
|24 months |JiVitA-4       |BANGLADESH   |9       |      0|    273|  4734|
|24 months |JiVitA-4       |BANGLADESH   |9       |      1|     75|  4734|
|24 months |JiVitA-4       |BANGLADESH   |10      |      0|     99|  4734|
|24 months |JiVitA-4       |BANGLADESH   |10      |      1|     24|  4734|
|24 months |JiVitA-4       |BANGLADESH   |11      |      0|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |11      |      1|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |12      |      0|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |12      |      1|      0|  4734|
|24 months |Keneba         |GAMBIA       |1       |      0|    163|  1726|
|24 months |Keneba         |GAMBIA       |1       |      1|     11|  1726|
|24 months |Keneba         |GAMBIA       |2       |      0|    143|  1726|
|24 months |Keneba         |GAMBIA       |2       |      1|     18|  1726|
|24 months |Keneba         |GAMBIA       |3       |      0|    166|  1726|
|24 months |Keneba         |GAMBIA       |3       |      1|     21|  1726|
|24 months |Keneba         |GAMBIA       |4       |      0|    102|  1726|
|24 months |Keneba         |GAMBIA       |4       |      1|     11|  1726|
|24 months |Keneba         |GAMBIA       |5       |      0|     97|  1726|
|24 months |Keneba         |GAMBIA       |5       |      1|     13|  1726|
|24 months |Keneba         |GAMBIA       |6       |      0|    104|  1726|
|24 months |Keneba         |GAMBIA       |6       |      1|      9|  1726|
|24 months |Keneba         |GAMBIA       |7       |      0|     78|  1726|
|24 months |Keneba         |GAMBIA       |7       |      1|      5|  1726|
|24 months |Keneba         |GAMBIA       |8       |      0|    129|  1726|
|24 months |Keneba         |GAMBIA       |8       |      1|     23|  1726|
|24 months |Keneba         |GAMBIA       |9       |      0|    124|  1726|
|24 months |Keneba         |GAMBIA       |9       |      1|     23|  1726|
|24 months |Keneba         |GAMBIA       |10      |      0|    173|  1726|
|24 months |Keneba         |GAMBIA       |10      |      1|     28|  1726|
|24 months |Keneba         |GAMBIA       |11      |      0|    131|  1726|
|24 months |Keneba         |GAMBIA       |11      |      1|     12|  1726|
|24 months |Keneba         |GAMBIA       |12      |      0|    125|  1726|
|24 months |Keneba         |GAMBIA       |12      |      1|     17|  1726|
|24 months |LCNI-5         |MALAWI       |1       |      0|     32|   563|
|24 months |LCNI-5         |MALAWI       |1       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |2       |      0|     29|   563|
|24 months |LCNI-5         |MALAWI       |2       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |3       |      0|     16|   563|
|24 months |LCNI-5         |MALAWI       |3       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |4       |      0|     27|   563|
|24 months |LCNI-5         |MALAWI       |4       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |5       |      0|     36|   563|
|24 months |LCNI-5         |MALAWI       |5       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |6       |      0|     26|   563|
|24 months |LCNI-5         |MALAWI       |6       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |7       |      0|     39|   563|
|24 months |LCNI-5         |MALAWI       |7       |      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |8       |      0|     58|   563|
|24 months |LCNI-5         |MALAWI       |8       |      1|      2|   563|
|24 months |LCNI-5         |MALAWI       |9       |      0|     64|   563|
|24 months |LCNI-5         |MALAWI       |9       |      1|      1|   563|
|24 months |LCNI-5         |MALAWI       |10      |      0|    105|   563|
|24 months |LCNI-5         |MALAWI       |10      |      1|      2|   563|
|24 months |LCNI-5         |MALAWI       |11      |      0|     70|   563|
|24 months |LCNI-5         |MALAWI       |11      |      1|      3|   563|
|24 months |LCNI-5         |MALAWI       |12      |      0|     51|   563|
|24 months |LCNI-5         |MALAWI       |12      |      1|      2|   563|
|24 months |MAL-ED         |INDIA        |1       |      0|     17|   227|
|24 months |MAL-ED         |INDIA        |1       |      1|      3|   227|
|24 months |MAL-ED         |INDIA        |2       |      0|     21|   227|
|24 months |MAL-ED         |INDIA        |2       |      1|      1|   227|
|24 months |MAL-ED         |INDIA        |3       |      0|     17|   227|
|24 months |MAL-ED         |INDIA        |3       |      1|      5|   227|
|24 months |MAL-ED         |INDIA        |4       |      0|      9|   227|
|24 months |MAL-ED         |INDIA        |4       |      1|      2|   227|
|24 months |MAL-ED         |INDIA        |5       |      0|      3|   227|
|24 months |MAL-ED         |INDIA        |5       |      1|      0|   227|
|24 months |MAL-ED         |INDIA        |6       |      0|     15|   227|
|24 months |MAL-ED         |INDIA        |6       |      1|      3|   227|
|24 months |MAL-ED         |INDIA        |7       |      0|      9|   227|
|24 months |MAL-ED         |INDIA        |7       |      1|      0|   227|
|24 months |MAL-ED         |INDIA        |8       |      0|     24|   227|
|24 months |MAL-ED         |INDIA        |8       |      1|      3|   227|
|24 months |MAL-ED         |INDIA        |9       |      0|     17|   227|
|24 months |MAL-ED         |INDIA        |9       |      1|      2|   227|
|24 months |MAL-ED         |INDIA        |10      |      0|     35|   227|
|24 months |MAL-ED         |INDIA        |10      |      1|      2|   227|
|24 months |MAL-ED         |INDIA        |11      |      0|     21|   227|
|24 months |MAL-ED         |INDIA        |11      |      1|      2|   227|
|24 months |MAL-ED         |INDIA        |12      |      0|     12|   227|
|24 months |MAL-ED         |INDIA        |12      |      1|      4|   227|
|24 months |MAL-ED         |BANGLADESH   |1       |      0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |      0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |      1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |      0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |      1|      6|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |      0|     11|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |      0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |      0|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |      0|     11|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |      0|     24|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |      1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |      0|     22|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |      0|     21|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |      0|     12|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |      0|     23|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |      1|      2|   212|
|24 months |MAL-ED         |PERU         |1       |      0|     28|   201|
|24 months |MAL-ED         |PERU         |1       |      1|      0|   201|
|24 months |MAL-ED         |PERU         |2       |      0|     13|   201|
|24 months |MAL-ED         |PERU         |2       |      1|      0|   201|
|24 months |MAL-ED         |PERU         |3       |      0|     12|   201|
|24 months |MAL-ED         |PERU         |3       |      1|      1|   201|
|24 months |MAL-ED         |PERU         |4       |      0|     11|   201|
|24 months |MAL-ED         |PERU         |4       |      1|      1|   201|
|24 months |MAL-ED         |PERU         |5       |      0|     17|   201|
|24 months |MAL-ED         |PERU         |5       |      1|      1|   201|
|24 months |MAL-ED         |PERU         |6       |      0|     10|   201|
|24 months |MAL-ED         |PERU         |6       |      1|      0|   201|
|24 months |MAL-ED         |PERU         |7       |      0|     16|   201|
|24 months |MAL-ED         |PERU         |7       |      1|      0|   201|
|24 months |MAL-ED         |PERU         |8       |      0|     19|   201|
|24 months |MAL-ED         |PERU         |8       |      1|      0|   201|
|24 months |MAL-ED         |PERU         |9       |      0|     10|   201|
|24 months |MAL-ED         |PERU         |9       |      1|      0|   201|
|24 months |MAL-ED         |PERU         |10      |      0|     20|   201|
|24 months |MAL-ED         |PERU         |10      |      1|      0|   201|
|24 months |MAL-ED         |PERU         |11      |      0|     25|   201|
|24 months |MAL-ED         |PERU         |11      |      1|      1|   201|
|24 months |MAL-ED         |PERU         |12      |      0|     16|   201|
|24 months |MAL-ED         |PERU         |12      |      1|      0|   201|
|24 months |MAL-ED         |NEPAL        |1       |      0|     22|   228|
|24 months |MAL-ED         |NEPAL        |1       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |2       |      0|     18|   228|
|24 months |MAL-ED         |NEPAL        |2       |      1|      1|   228|
|24 months |MAL-ED         |NEPAL        |3       |      0|     17|   228|
|24 months |MAL-ED         |NEPAL        |3       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |4       |      0|     17|   228|
|24 months |MAL-ED         |NEPAL        |4       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |5       |      0|     20|   228|
|24 months |MAL-ED         |NEPAL        |5       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |6       |      0|     19|   228|
|24 months |MAL-ED         |NEPAL        |6       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |7       |      0|     18|   228|
|24 months |MAL-ED         |NEPAL        |7       |      1|      2|   228|
|24 months |MAL-ED         |NEPAL        |8       |      0|     29|   228|
|24 months |MAL-ED         |NEPAL        |8       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |9       |      0|     13|   228|
|24 months |MAL-ED         |NEPAL        |9       |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |10      |      0|     13|   228|
|24 months |MAL-ED         |NEPAL        |10      |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |11      |      0|     19|   228|
|24 months |MAL-ED         |NEPAL        |11      |      1|      2|   228|
|24 months |MAL-ED         |NEPAL        |12      |      0|     18|   228|
|24 months |MAL-ED         |NEPAL        |12      |      1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |1       |      0|     11|   169|
|24 months |MAL-ED         |BRAZIL       |1       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |2       |      0|     21|   169|
|24 months |MAL-ED         |BRAZIL       |2       |      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |3       |      0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |3       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |4       |      0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |4       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |5       |      0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |5       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |6       |      0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |6       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |7       |      0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |7       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |8       |      0|     21|   169|
|24 months |MAL-ED         |BRAZIL       |8       |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |9       |      0|     28|   169|
|24 months |MAL-ED         |BRAZIL       |9       |      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |10      |      0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |10      |      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |11      |      0|      7|   169|
|24 months |MAL-ED         |BRAZIL       |11      |      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |12      |      0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |12      |      1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |1       |      0|     15|   214|
|24 months |MAL-ED         |TANZANIA     |1       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |2       |      0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |2       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |3       |      0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |3       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |4       |      0|     12|   214|
|24 months |MAL-ED         |TANZANIA     |4       |      1|      1|   214|
|24 months |MAL-ED         |TANZANIA     |5       |      0|     22|   214|
|24 months |MAL-ED         |TANZANIA     |5       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |6       |      0|     15|   214|
|24 months |MAL-ED         |TANZANIA     |6       |      1|      2|   214|
|24 months |MAL-ED         |TANZANIA     |7       |      0|     20|   214|
|24 months |MAL-ED         |TANZANIA     |7       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |8       |      0|      8|   214|
|24 months |MAL-ED         |TANZANIA     |8       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |9       |      0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |9       |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |10      |      0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |10      |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |11      |      0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |11      |      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |12      |      0|     26|   214|
|24 months |MAL-ED         |TANZANIA     |12      |      1|      1|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1       |      0|     30|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |      0|     21|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |      1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |      0|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |      0|     16|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |      0|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |      0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |      0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |      0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |      0|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |      0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |      0|     20|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |      0|     37|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |      1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |1       |      0|     43|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |      1|      7|   428|
|24 months |NIH-Birth      |BANGLADESH   |2       |      0|     30|   428|
|24 months |NIH-Birth      |BANGLADESH   |2       |      1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |3       |      0|     43|   428|
|24 months |NIH-Birth      |BANGLADESH   |3       |      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |4       |      0|     28|   428|
|24 months |NIH-Birth      |BANGLADESH   |4       |      1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |5       |      0|     37|   428|
|24 months |NIH-Birth      |BANGLADESH   |5       |      1|      6|   428|
|24 months |NIH-Birth      |BANGLADESH   |6       |      0|     25|   428|
|24 months |NIH-Birth      |BANGLADESH   |6       |      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |7       |      0|     22|   428|
|24 months |NIH-Birth      |BANGLADESH   |7       |      1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |8       |      0|     30|   428|
|24 months |NIH-Birth      |BANGLADESH   |8       |      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |9       |      0|     32|   428|
|24 months |NIH-Birth      |BANGLADESH   |9       |      1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |10      |      0|     20|   428|
|24 months |NIH-Birth      |BANGLADESH   |10      |      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |11      |      0|     34|   428|
|24 months |NIH-Birth      |BANGLADESH   |11      |      1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |12      |      0|     31|   428|
|24 months |NIH-Birth      |BANGLADESH   |12      |      1|      3|   428|
|24 months |PROBIT         |BELARUS      |1       |      0|    232|  3970|
|24 months |PROBIT         |BELARUS      |1       |      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |2       |      0|    242|  3970|
|24 months |PROBIT         |BELARUS      |2       |      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |3       |      0|    277|  3970|
|24 months |PROBIT         |BELARUS      |3       |      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |4       |      0|    303|  3970|
|24 months |PROBIT         |BELARUS      |4       |      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |5       |      0|    241|  3970|
|24 months |PROBIT         |BELARUS      |5       |      1|      1|  3970|
|24 months |PROBIT         |BELARUS      |6       |      0|    267|  3970|
|24 months |PROBIT         |BELARUS      |6       |      1|      5|  3970|
|24 months |PROBIT         |BELARUS      |7       |      0|    334|  3970|
|24 months |PROBIT         |BELARUS      |7       |      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |8       |      0|    402|  3970|
|24 months |PROBIT         |BELARUS      |8       |      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |9       |      0|    408|  3970|
|24 months |PROBIT         |BELARUS      |9       |      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |10      |      0|    381|  3970|
|24 months |PROBIT         |BELARUS      |10      |      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |11      |      0|    383|  3970|
|24 months |PROBIT         |BELARUS      |11      |      1|      4|  3970|
|24 months |PROBIT         |BELARUS      |12      |      0|    468|  3970|
|24 months |PROBIT         |BELARUS      |12      |      1|      2|  3970|
|24 months |PROVIDE        |BANGLADESH   |1       |      0|     40|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |      1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |2       |      0|     25|   579|
|24 months |PROVIDE        |BANGLADESH   |2       |      1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |3       |      0|     39|   579|
|24 months |PROVIDE        |BANGLADESH   |3       |      1|      6|   579|
|24 months |PROVIDE        |BANGLADESH   |4       |      0|     30|   579|
|24 months |PROVIDE        |BANGLADESH   |4       |      1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |5       |      0|     46|   579|
|24 months |PROVIDE        |BANGLADESH   |5       |      1|      5|   579|
|24 months |PROVIDE        |BANGLADESH   |6       |      0|     70|   579|
|24 months |PROVIDE        |BANGLADESH   |6       |      1|      7|   579|
|24 months |PROVIDE        |BANGLADESH   |7       |      0|     60|   579|
|24 months |PROVIDE        |BANGLADESH   |7       |      1|      9|   579|
|24 months |PROVIDE        |BANGLADESH   |8       |      0|     44|   579|
|24 months |PROVIDE        |BANGLADESH   |8       |      1|      6|   579|
|24 months |PROVIDE        |BANGLADESH   |9       |      0|     64|   579|
|24 months |PROVIDE        |BANGLADESH   |9       |      1|      6|   579|
|24 months |PROVIDE        |BANGLADESH   |10      |      0|     50|   579|
|24 months |PROVIDE        |BANGLADESH   |10      |      1|      9|   579|
|24 months |PROVIDE        |BANGLADESH   |11      |      0|     29|   579|
|24 months |PROVIDE        |BANGLADESH   |11      |      1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |12      |      0|     20|   579|
|24 months |PROVIDE        |BANGLADESH   |12      |      1|      4|   579|
|24 months |TanzaniaChild2 |TANZANIA     |1       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |1       |      0|     37|   409|
|24 months |Vellore Crypto |INDIA        |1       |      1|      4|   409|
|24 months |Vellore Crypto |INDIA        |2       |      0|     16|   409|
|24 months |Vellore Crypto |INDIA        |2       |      1|      1|   409|
|24 months |Vellore Crypto |INDIA        |3       |      0|     35|   409|
|24 months |Vellore Crypto |INDIA        |3       |      1|      0|   409|
|24 months |Vellore Crypto |INDIA        |4       |      0|     14|   409|
|24 months |Vellore Crypto |INDIA        |4       |      1|      2|   409|
|24 months |Vellore Crypto |INDIA        |5       |      0|     22|   409|
|24 months |Vellore Crypto |INDIA        |5       |      1|      0|   409|
|24 months |Vellore Crypto |INDIA        |6       |      0|     44|   409|
|24 months |Vellore Crypto |INDIA        |6       |      1|      3|   409|
|24 months |Vellore Crypto |INDIA        |7       |      0|     33|   409|
|24 months |Vellore Crypto |INDIA        |7       |      1|      1|   409|
|24 months |Vellore Crypto |INDIA        |8       |      0|     45|   409|
|24 months |Vellore Crypto |INDIA        |8       |      1|      5|   409|
|24 months |Vellore Crypto |INDIA        |9       |      0|     24|   409|
|24 months |Vellore Crypto |INDIA        |9       |      1|      7|   409|
|24 months |Vellore Crypto |INDIA        |10      |      0|     39|   409|
|24 months |Vellore Crypto |INDIA        |10      |      1|      3|   409|
|24 months |Vellore Crypto |INDIA        |11      |      0|     35|   409|
|24 months |Vellore Crypto |INDIA        |11      |      1|      2|   409|
|24 months |Vellore Crypto |INDIA        |12      |      0|     34|   409|
|24 months |Vellore Crypto |INDIA        |12      |      1|      3|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |      0|     35|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |      1|      4|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |      0|     34|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |      1|     14|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |      0|     43|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |      1|      8|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |      0|     22|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |      1|      2|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |      0|     33|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |      1|     11|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |      0|     32|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |      1|     11|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |      0|     23|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |      1|      1|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |      0|     17|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |      1|      5|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |      0|     22|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |      1|      5|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |      0|     17|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |      1|      2|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |      0|     29|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |      1|      6|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |      0|     47|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |      1|      9|   432|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


