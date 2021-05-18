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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |brthmon | swasted| n_cell|     n|
|:---------|:--------------|:------------|:-------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       0|      5|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |       0|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |       0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |       0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |       0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |       0|     10|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |       0|      4|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |       1|      0|    86|
|Birth     |CMIN           |BANGLADESH   |1       |       0|      3|    19|
|Birth     |CMIN           |BANGLADESH   |1       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |2       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |2       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |3       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |3       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |4       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |4       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |5       |       0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |5       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |6       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |6       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |7       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |7       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |8       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |8       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |9       |       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |9       |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |10      |       0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |10      |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |11      |       0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |11      |       1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |12      |       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |12      |       1|      0|    19|
|Birth     |CONTENT        |PERU         |1       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |1       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |2       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |2       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |3       |       0|      1|     2|
|Birth     |CONTENT        |PERU         |3       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |4       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |4       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |5       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |5       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |6       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |6       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |7       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |7       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |8       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |8       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |9       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |9       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |10      |       0|      1|     2|
|Birth     |CONTENT        |PERU         |10      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |11      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |11      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |12      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |12      |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |1       |       0|     48|   177|
|Birth     |EE             |PAKISTAN     |1       |       1|      1|   177|
|Birth     |EE             |PAKISTAN     |2       |       0|     25|   177|
|Birth     |EE             |PAKISTAN     |2       |       1|      1|   177|
|Birth     |EE             |PAKISTAN     |3       |       0|     13|   177|
|Birth     |EE             |PAKISTAN     |3       |       1|      1|   177|
|Birth     |EE             |PAKISTAN     |4       |       0|      9|   177|
|Birth     |EE             |PAKISTAN     |4       |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |5       |       0|      0|   177|
|Birth     |EE             |PAKISTAN     |5       |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |6       |       0|      0|   177|
|Birth     |EE             |PAKISTAN     |6       |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |7       |       0|      0|   177|
|Birth     |EE             |PAKISTAN     |7       |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |8       |       0|      0|   177|
|Birth     |EE             |PAKISTAN     |8       |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |9       |       0|      0|   177|
|Birth     |EE             |PAKISTAN     |9       |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |10      |       0|      0|   177|
|Birth     |EE             |PAKISTAN     |10      |       1|      0|   177|
|Birth     |EE             |PAKISTAN     |11      |       0|     40|   177|
|Birth     |EE             |PAKISTAN     |11      |       1|      3|   177|
|Birth     |EE             |PAKISTAN     |12      |       0|     36|   177|
|Birth     |EE             |PAKISTAN     |12      |       1|      0|   177|
|Birth     |GMS-Nepal      |NEPAL        |1       |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |2       |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |2       |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |3       |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |3       |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |4       |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |4       |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |5       |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |5       |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |6       |       0|    138|   641|
|Birth     |GMS-Nepal      |NEPAL        |6       |       1|      7|   641|
|Birth     |GMS-Nepal      |NEPAL        |7       |       0|    248|   641|
|Birth     |GMS-Nepal      |NEPAL        |7       |       1|     10|   641|
|Birth     |GMS-Nepal      |NEPAL        |8       |       0|    228|   641|
|Birth     |GMS-Nepal      |NEPAL        |8       |       1|     10|   641|
|Birth     |GMS-Nepal      |NEPAL        |9       |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |9       |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |10      |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |10      |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |11      |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |11      |       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |12      |       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |12      |       1|      0|   641|
|Birth     |JiVitA-3       |BANGLADESH   |1       |       0|   1607| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |1       |       1|     31| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |2       |       0|   1382| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |2       |       1|     23| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |3       |       0|   1588| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |3       |       1|     22| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |4       |       0|   1216| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |4       |       1|     18| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |5       |       0|    897| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |5       |       1|     19| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |6       |       0|    952| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |6       |       1|     19| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |7       |       0|    999| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |7       |       1|     14| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |8       |       0|   1367| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |8       |       1|     23| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |9       |       0|   1884| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |9       |       1|     49| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |10      |       0|   1898| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |10      |       1|     44| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |11      |       0|   1839| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |11      |       1|     46| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |12      |       0|   2021| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |12      |       1|     40| 17998|
|Birth     |JiVitA-4       |BANGLADESH   |1       |       0|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |1       |       1|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2       |       0|    401|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |2       |       1|      5|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3       |       0|    401|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |3       |       1|      2|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |4       |       0|    328|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |4       |       1|      7|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |5       |       0|    296|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |5       |       1|      3|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |6       |       0|    228|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |6       |       1|      4|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |7       |       0|    226|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |7       |       1|      4|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |8       |       0|    255|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |8       |       1|      3|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |9       |       0|    162|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |9       |       1|      1|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |10      |       0|     67|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |10      |       1|      2|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |11      |       0|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |11      |       1|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |12      |       0|      0|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |12      |       1|      0|  2395|
|Birth     |Keneba         |GAMBIA       |1       |       0|    141|  1466|
|Birth     |Keneba         |GAMBIA       |1       |       1|     14|  1466|
|Birth     |Keneba         |GAMBIA       |2       |       0|    130|  1466|
|Birth     |Keneba         |GAMBIA       |2       |       1|     10|  1466|
|Birth     |Keneba         |GAMBIA       |3       |       0|    151|  1466|
|Birth     |Keneba         |GAMBIA       |3       |       1|     13|  1466|
|Birth     |Keneba         |GAMBIA       |4       |       0|     86|  1466|
|Birth     |Keneba         |GAMBIA       |4       |       1|      5|  1466|
|Birth     |Keneba         |GAMBIA       |5       |       0|     84|  1466|
|Birth     |Keneba         |GAMBIA       |5       |       1|     10|  1466|
|Birth     |Keneba         |GAMBIA       |6       |       0|     83|  1466|
|Birth     |Keneba         |GAMBIA       |6       |       1|      5|  1466|
|Birth     |Keneba         |GAMBIA       |7       |       0|     64|  1466|
|Birth     |Keneba         |GAMBIA       |7       |       1|      5|  1466|
|Birth     |Keneba         |GAMBIA       |8       |       0|    111|  1466|
|Birth     |Keneba         |GAMBIA       |8       |       1|      6|  1466|
|Birth     |Keneba         |GAMBIA       |9       |       0|    122|  1466|
|Birth     |Keneba         |GAMBIA       |9       |       1|     10|  1466|
|Birth     |Keneba         |GAMBIA       |10      |       0|    164|  1466|
|Birth     |Keneba         |GAMBIA       |10      |       1|      6|  1466|
|Birth     |Keneba         |GAMBIA       |11      |       0|     98|  1466|
|Birth     |Keneba         |GAMBIA       |11      |       1|     11|  1466|
|Birth     |Keneba         |GAMBIA       |12      |       0|    129|  1466|
|Birth     |Keneba         |GAMBIA       |12      |       1|      8|  1466|
|Birth     |MAL-ED         |INDIA        |1       |       0|      1|    45|
|Birth     |MAL-ED         |INDIA        |1       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |2       |       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |2       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |3       |       0|      5|    45|
|Birth     |MAL-ED         |INDIA        |3       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |4       |       0|      4|    45|
|Birth     |MAL-ED         |INDIA        |4       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |5       |       0|      0|    45|
|Birth     |MAL-ED         |INDIA        |5       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |6       |       0|      4|    45|
|Birth     |MAL-ED         |INDIA        |6       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |7       |       0|      2|    45|
|Birth     |MAL-ED         |INDIA        |7       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |8       |       0|      8|    45|
|Birth     |MAL-ED         |INDIA        |8       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |9       |       0|      1|    45|
|Birth     |MAL-ED         |INDIA        |9       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |10      |       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |10      |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |11      |       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |11      |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |12      |       0|      2|    45|
|Birth     |MAL-ED         |INDIA        |12      |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |1       |       0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |2       |       0|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |2       |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |3       |       0|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |3       |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |4       |       0|     14|   215|
|Birth     |MAL-ED         |BANGLADESH   |4       |       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |5       |       0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |5       |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |6       |       0|      7|   215|
|Birth     |MAL-ED         |BANGLADESH   |6       |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |7       |       0|     12|   215|
|Birth     |MAL-ED         |BANGLADESH   |7       |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |8       |       0|     20|   215|
|Birth     |MAL-ED         |BANGLADESH   |8       |       1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |9       |       0|     23|   215|
|Birth     |MAL-ED         |BANGLADESH   |9       |       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |10      |       0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |10      |       1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |11      |       0|     15|   215|
|Birth     |MAL-ED         |BANGLADESH   |11      |       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |12      |       0|     27|   215|
|Birth     |MAL-ED         |BANGLADESH   |12      |       1|      0|   215|
|Birth     |MAL-ED         |PERU         |1       |       0|     37|   228|
|Birth     |MAL-ED         |PERU         |1       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |2       |       0|     11|   228|
|Birth     |MAL-ED         |PERU         |2       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |3       |       0|     24|   228|
|Birth     |MAL-ED         |PERU         |3       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |4       |       0|     17|   228|
|Birth     |MAL-ED         |PERU         |4       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |5       |       0|     16|   228|
|Birth     |MAL-ED         |PERU         |5       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |6       |       0|      9|   228|
|Birth     |MAL-ED         |PERU         |6       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |7       |       0|     17|   228|
|Birth     |MAL-ED         |PERU         |7       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |8       |       0|     21|   228|
|Birth     |MAL-ED         |PERU         |8       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |9       |       0|     15|   228|
|Birth     |MAL-ED         |PERU         |9       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |10      |       0|     18|   228|
|Birth     |MAL-ED         |PERU         |10      |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |11      |       0|     28|   228|
|Birth     |MAL-ED         |PERU         |11      |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |12      |       0|     15|   228|
|Birth     |MAL-ED         |PERU         |12      |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |1       |       0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |1       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |2       |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |2       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |3       |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |3       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |4       |       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |4       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |5       |       0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |5       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |6       |       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |6       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |7       |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |7       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |8       |       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |8       |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |9       |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |9       |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |10      |       0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |10      |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |11      |       0|      3|    26|
|Birth     |MAL-ED         |NEPAL        |11      |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |12      |       0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |12      |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |1       |       0|      3|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |2       |       0|     11|    62|
|Birth     |MAL-ED         |BRAZIL       |2       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |3       |       0|      8|    62|
|Birth     |MAL-ED         |BRAZIL       |3       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |4       |       0|      3|    62|
|Birth     |MAL-ED         |BRAZIL       |4       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |5       |       0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |5       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |6       |       0|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |6       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |7       |       0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |7       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |8       |       0|      8|    62|
|Birth     |MAL-ED         |BRAZIL       |8       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |9       |       0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |9       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |10      |       0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |10      |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |11      |       0|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |11      |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |12      |       0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |12      |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |1       |       0|     11|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |2       |       0|     14|   115|
|Birth     |MAL-ED         |TANZANIA     |2       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |3       |       0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |3       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |4       |       0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |4       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |5       |       0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |5       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |6       |       0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |6       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |7       |       0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |7       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |8       |       0|      3|   115|
|Birth     |MAL-ED         |TANZANIA     |8       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |9       |       0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |9       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |10      |       0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |10      |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |11      |       0|     11|   115|
|Birth     |MAL-ED         |TANZANIA     |11      |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |12      |       0|     11|   115|
|Birth     |MAL-ED         |TANZANIA     |12      |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |       0|     17|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |       0|     11|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |       0|      5|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |       0|      7|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |       0|      4|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |       0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |       0|      9|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |       0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |       0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |       0|     14|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |       0|     14|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |       0|     21|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |1       |       0|     58|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |       1|      5|   575|
|Birth     |NIH-Birth      |BANGLADESH   |2       |       0|     49|   575|
|Birth     |NIH-Birth      |BANGLADESH   |2       |       1|      0|   575|
|Birth     |NIH-Birth      |BANGLADESH   |3       |       0|     55|   575|
|Birth     |NIH-Birth      |BANGLADESH   |3       |       1|      1|   575|
|Birth     |NIH-Birth      |BANGLADESH   |4       |       0|     47|   575|
|Birth     |NIH-Birth      |BANGLADESH   |4       |       1|      2|   575|
|Birth     |NIH-Birth      |BANGLADESH   |5       |       0|     46|   575|
|Birth     |NIH-Birth      |BANGLADESH   |5       |       1|      4|   575|
|Birth     |NIH-Birth      |BANGLADESH   |6       |       0|     44|   575|
|Birth     |NIH-Birth      |BANGLADESH   |6       |       1|      4|   575|
|Birth     |NIH-Birth      |BANGLADESH   |7       |       0|     29|   575|
|Birth     |NIH-Birth      |BANGLADESH   |7       |       1|      3|   575|
|Birth     |NIH-Birth      |BANGLADESH   |8       |       0|     42|   575|
|Birth     |NIH-Birth      |BANGLADESH   |8       |       1|      5|   575|
|Birth     |NIH-Birth      |BANGLADESH   |9       |       0|     41|   575|
|Birth     |NIH-Birth      |BANGLADESH   |9       |       1|      5|   575|
|Birth     |NIH-Birth      |BANGLADESH   |10      |       0|     34|   575|
|Birth     |NIH-Birth      |BANGLADESH   |10      |       1|      2|   575|
|Birth     |NIH-Birth      |BANGLADESH   |11      |       0|     51|   575|
|Birth     |NIH-Birth      |BANGLADESH   |11      |       1|      2|   575|
|Birth     |NIH-Birth      |BANGLADESH   |12      |       0|     41|   575|
|Birth     |NIH-Birth      |BANGLADESH   |12      |       1|      5|   575|
|Birth     |PROBIT         |BELARUS      |1       |       0|    705| 13817|
|Birth     |PROBIT         |BELARUS      |1       |       1|     52| 13817|
|Birth     |PROBIT         |BELARUS      |2       |       0|    757| 13817|
|Birth     |PROBIT         |BELARUS      |2       |       1|     52| 13817|
|Birth     |PROBIT         |BELARUS      |3       |       0|    848| 13817|
|Birth     |PROBIT         |BELARUS      |3       |       1|     69| 13817|
|Birth     |PROBIT         |BELARUS      |4       |       0|    919| 13817|
|Birth     |PROBIT         |BELARUS      |4       |       1|     62| 13817|
|Birth     |PROBIT         |BELARUS      |5       |       0|    854| 13817|
|Birth     |PROBIT         |BELARUS      |5       |       1|     61| 13817|
|Birth     |PROBIT         |BELARUS      |6       |       0|    964| 13817|
|Birth     |PROBIT         |BELARUS      |6       |       1|     61| 13817|
|Birth     |PROBIT         |BELARUS      |7       |       0|   1188| 13817|
|Birth     |PROBIT         |BELARUS      |7       |       1|     91| 13817|
|Birth     |PROBIT         |BELARUS      |8       |       0|   1262| 13817|
|Birth     |PROBIT         |BELARUS      |8       |       1|     81| 13817|
|Birth     |PROBIT         |BELARUS      |9       |       0|   1305| 13817|
|Birth     |PROBIT         |BELARUS      |9       |       1|     87| 13817|
|Birth     |PROBIT         |BELARUS      |10      |       0|   1340| 13817|
|Birth     |PROBIT         |BELARUS      |10      |       1|    107| 13817|
|Birth     |PROBIT         |BELARUS      |11      |       0|   1303| 13817|
|Birth     |PROBIT         |BELARUS      |11      |       1|     86| 13817|
|Birth     |PROBIT         |BELARUS      |12      |       0|   1453| 13817|
|Birth     |PROBIT         |BELARUS      |12      |       1|    110| 13817|
|Birth     |PROVIDE        |BANGLADESH   |1       |       0|     36|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |2       |       0|     30|   532|
|Birth     |PROVIDE        |BANGLADESH   |2       |       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |3       |       0|     37|   532|
|Birth     |PROVIDE        |BANGLADESH   |3       |       1|      2|   532|
|Birth     |PROVIDE        |BANGLADESH   |4       |       0|     32|   532|
|Birth     |PROVIDE        |BANGLADESH   |4       |       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |5       |       0|     44|   532|
|Birth     |PROVIDE        |BANGLADESH   |5       |       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |6       |       0|     73|   532|
|Birth     |PROVIDE        |BANGLADESH   |6       |       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |7       |       0|     65|   532|
|Birth     |PROVIDE        |BANGLADESH   |7       |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |8       |       0|     44|   532|
|Birth     |PROVIDE        |BANGLADESH   |8       |       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |9       |       0|     56|   532|
|Birth     |PROVIDE        |BANGLADESH   |9       |       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |10      |       0|     54|   532|
|Birth     |PROVIDE        |BANGLADESH   |10      |       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |11      |       0|     26|   532|
|Birth     |PROVIDE        |BANGLADESH   |11      |       1|      2|   532|
|Birth     |PROVIDE        |BANGLADESH   |12      |       0|     22|   532|
|Birth     |PROVIDE        |BANGLADESH   |12      |       1|      0|   532|
|Birth     |ResPak         |PAKISTAN     |1       |       0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |1       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |2       |       0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |2       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |3       |       0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |3       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |4       |       0|      6|    38|
|Birth     |ResPak         |PAKISTAN     |4       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |5       |       0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |5       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |6       |       0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |6       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |7       |       0|      7|    38|
|Birth     |ResPak         |PAKISTAN     |7       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |8       |       0|      5|    38|
|Birth     |ResPak         |PAKISTAN     |8       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |9       |       0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |9       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |10      |       0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |10      |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |11      |       0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |11      |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |12      |       0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |12      |       1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |1       |       0|     76|  1102|
|Birth     |SAS-CompFeed   |INDIA        |1       |       1|      3|  1102|
|Birth     |SAS-CompFeed   |INDIA        |2       |       0|     47|  1102|
|Birth     |SAS-CompFeed   |INDIA        |2       |       1|      2|  1102|
|Birth     |SAS-CompFeed   |INDIA        |3       |       0|     45|  1102|
|Birth     |SAS-CompFeed   |INDIA        |3       |       1|      3|  1102|
|Birth     |SAS-CompFeed   |INDIA        |4       |       0|     51|  1102|
|Birth     |SAS-CompFeed   |INDIA        |4       |       1|      1|  1102|
|Birth     |SAS-CompFeed   |INDIA        |5       |       0|     87|  1102|
|Birth     |SAS-CompFeed   |INDIA        |5       |       1|      4|  1102|
|Birth     |SAS-CompFeed   |INDIA        |6       |       0|     98|  1102|
|Birth     |SAS-CompFeed   |INDIA        |6       |       1|      2|  1102|
|Birth     |SAS-CompFeed   |INDIA        |7       |       0|     76|  1102|
|Birth     |SAS-CompFeed   |INDIA        |7       |       1|      3|  1102|
|Birth     |SAS-CompFeed   |INDIA        |8       |       0|    147|  1102|
|Birth     |SAS-CompFeed   |INDIA        |8       |       1|      2|  1102|
|Birth     |SAS-CompFeed   |INDIA        |9       |       0|    133|  1102|
|Birth     |SAS-CompFeed   |INDIA        |9       |       1|      1|  1102|
|Birth     |SAS-CompFeed   |INDIA        |10      |       0|    126|  1102|
|Birth     |SAS-CompFeed   |INDIA        |10      |       1|      5|  1102|
|Birth     |SAS-CompFeed   |INDIA        |11      |       0|    101|  1102|
|Birth     |SAS-CompFeed   |INDIA        |11      |       1|      1|  1102|
|Birth     |SAS-CompFeed   |INDIA        |12      |       0|     86|  1102|
|Birth     |SAS-CompFeed   |INDIA        |12      |       1|      2|  1102|
|Birth     |Vellore Crypto |INDIA        |1       |       0|     28|   343|
|Birth     |Vellore Crypto |INDIA        |1       |       1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |2       |       0|     13|   343|
|Birth     |Vellore Crypto |INDIA        |2       |       1|      0|   343|
|Birth     |Vellore Crypto |INDIA        |3       |       0|     29|   343|
|Birth     |Vellore Crypto |INDIA        |3       |       1|      3|   343|
|Birth     |Vellore Crypto |INDIA        |4       |       0|     14|   343|
|Birth     |Vellore Crypto |INDIA        |4       |       1|      0|   343|
|Birth     |Vellore Crypto |INDIA        |5       |       0|     13|   343|
|Birth     |Vellore Crypto |INDIA        |5       |       1|      6|   343|
|Birth     |Vellore Crypto |INDIA        |6       |       0|     35|   343|
|Birth     |Vellore Crypto |INDIA        |6       |       1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |7       |       0|     24|   343|
|Birth     |Vellore Crypto |INDIA        |7       |       1|      3|   343|
|Birth     |Vellore Crypto |INDIA        |8       |       0|     38|   343|
|Birth     |Vellore Crypto |INDIA        |8       |       1|      8|   343|
|Birth     |Vellore Crypto |INDIA        |9       |       0|     14|   343|
|Birth     |Vellore Crypto |INDIA        |9       |       1|     11|   343|
|Birth     |Vellore Crypto |INDIA        |10      |       0|     29|   343|
|Birth     |Vellore Crypto |INDIA        |10      |       1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |11      |       0|     25|   343|
|Birth     |Vellore Crypto |INDIA        |11      |       1|      4|   343|
|Birth     |Vellore Crypto |INDIA        |12      |       0|     27|   343|
|Birth     |Vellore Crypto |INDIA        |12      |       1|      2|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |       0|   1130| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |       1|     67| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |       0|    911| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |       1|     64| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |       0|   1044| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |       1|     63| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |       0|    850| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |       1|     46| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |       0|    891| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |       1|     63| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |       0|   1027| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |       1|     70| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |       0|   1043| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |       1|     72| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |       0|   1113| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |       1|     78| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |       0|   1090| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |       1|     81| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |       0|    924| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |       1|     60| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |       0|   1060| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |       1|     60| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |       0|   1031| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |       1|     66| 12904|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       0|     29|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |       0|     15|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |       0|     29|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |       1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |       0|     47|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |       0|     39|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |       0|     28|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |       0|     42|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |       0|     22|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |       0|     20|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |       0|     22|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |       0|     40|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |       1|      3|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |       0|     23|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |       1|      2|   368|
|6 months  |CMIN           |BANGLADESH   |1       |       0|     23|   242|
|6 months  |CMIN           |BANGLADESH   |1       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |2       |       0|     25|   242|
|6 months  |CMIN           |BANGLADESH   |2       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |3       |       0|     22|   242|
|6 months  |CMIN           |BANGLADESH   |3       |       1|      2|   242|
|6 months  |CMIN           |BANGLADESH   |4       |       0|     11|   242|
|6 months  |CMIN           |BANGLADESH   |4       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |5       |       0|     17|   242|
|6 months  |CMIN           |BANGLADESH   |5       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |6       |       0|     10|   242|
|6 months  |CMIN           |BANGLADESH   |6       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |7       |       0|     13|   242|
|6 months  |CMIN           |BANGLADESH   |7       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |8       |       0|     25|   242|
|6 months  |CMIN           |BANGLADESH   |8       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |9       |       0|     16|   242|
|6 months  |CMIN           |BANGLADESH   |9       |       1|      0|   242|
|6 months  |CMIN           |BANGLADESH   |10      |       0|     25|   242|
|6 months  |CMIN           |BANGLADESH   |10      |       1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |11      |       0|     23|   242|
|6 months  |CMIN           |BANGLADESH   |11      |       1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |12      |       0|     27|   242|
|6 months  |CMIN           |BANGLADESH   |12      |       1|      1|   242|
|6 months  |CONTENT        |PERU         |1       |       0|     10|   215|
|6 months  |CONTENT        |PERU         |1       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |2       |       0|     15|   215|
|6 months  |CONTENT        |PERU         |2       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |3       |       0|     27|   215|
|6 months  |CONTENT        |PERU         |3       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |4       |       0|     24|   215|
|6 months  |CONTENT        |PERU         |4       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |5       |       0|     13|   215|
|6 months  |CONTENT        |PERU         |5       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |6       |       0|      8|   215|
|6 months  |CONTENT        |PERU         |6       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |7       |       0|     41|   215|
|6 months  |CONTENT        |PERU         |7       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |8       |       0|     17|   215|
|6 months  |CONTENT        |PERU         |8       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |9       |       0|     23|   215|
|6 months  |CONTENT        |PERU         |9       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |10      |       0|     15|   215|
|6 months  |CONTENT        |PERU         |10      |       1|      0|   215|
|6 months  |CONTENT        |PERU         |11      |       0|     10|   215|
|6 months  |CONTENT        |PERU         |11      |       1|      0|   215|
|6 months  |CONTENT        |PERU         |12      |       0|     12|   215|
|6 months  |CONTENT        |PERU         |12      |       1|      0|   215|
|6 months  |EE             |PAKISTAN     |1       |       0|     99|   375|
|6 months  |EE             |PAKISTAN     |1       |       1|      5|   375|
|6 months  |EE             |PAKISTAN     |2       |       0|     59|   375|
|6 months  |EE             |PAKISTAN     |2       |       1|      1|   375|
|6 months  |EE             |PAKISTAN     |3       |       0|     34|   375|
|6 months  |EE             |PAKISTAN     |3       |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |4       |       0|     18|   375|
|6 months  |EE             |PAKISTAN     |4       |       1|      1|   375|
|6 months  |EE             |PAKISTAN     |5       |       0|      0|   375|
|6 months  |EE             |PAKISTAN     |5       |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |6       |       0|      0|   375|
|6 months  |EE             |PAKISTAN     |6       |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |7       |       0|      0|   375|
|6 months  |EE             |PAKISTAN     |7       |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |8       |       0|      0|   375|
|6 months  |EE             |PAKISTAN     |8       |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |9       |       0|      0|   375|
|6 months  |EE             |PAKISTAN     |9       |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |10      |       0|      2|   375|
|6 months  |EE             |PAKISTAN     |10      |       1|      0|   375|
|6 months  |EE             |PAKISTAN     |11      |       0|     81|   375|
|6 months  |EE             |PAKISTAN     |11      |       1|      2|   375|
|6 months  |EE             |PAKISTAN     |12      |       0|     69|   375|
|6 months  |EE             |PAKISTAN     |12      |       1|      4|   375|
|6 months  |GMS-Nepal      |NEPAL        |1       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |       0|    123|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |       1|      4|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |       0|    227|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |       1|      2|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |       0|    207|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |       1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |       1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |       0|     27|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |       0|     28|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |       0|     22|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |       0|     30|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |       0|     31|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |       0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |       0|     18|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |       0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |       0|     16|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |       0|     28|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |       0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |       0|     38|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |       1|      0|   299|
|6 months  |JiVitA-3       |BANGLADESH   |1       |       0|   1703| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |1       |       1|     25| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |2       |       0|   1405| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |2       |       1|     21| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |3       |       0|   1696| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |3       |       1|     16| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |4       |       0|   1347| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |4       |       1|     16| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |5       |       0|   1076| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |5       |       1|     21| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |6       |       0|   1080| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |6       |       1|     17| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |7       |       0|   1051| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |7       |       1|     23| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |8       |       0|   1339| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |8       |       1|     18| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |9       |       0|   1516| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |9       |       1|     13| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |10      |       0|   1436| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |10      |       1|     16| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |11      |       0|   1467| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |11      |       1|     26| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |12      |       0|   1428| 16773|
|6 months  |JiVitA-3       |BANGLADESH   |12      |       1|     17| 16773|
|6 months  |JiVitA-4       |BANGLADESH   |1       |       0|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |1       |       1|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |2       |       0|    796|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |2       |       1|      5|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |3       |       0|    841|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |3       |       1|      5|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |4       |       0|    677|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |4       |       1|      6|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |5       |       0|    564|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |5       |       1|      5|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |6       |       0|    406|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |6       |       1|      2|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |7       |       0|    461|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |7       |       1|      4|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |8       |       0|    572|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |8       |       1|      2|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |9       |       0|    356|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |9       |       1|      3|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |10      |       0|    126|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |10      |       1|      1|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |11      |       0|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |11      |       1|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |12      |       0|      0|  4832|
|6 months  |JiVitA-4       |BANGLADESH   |12      |       1|      0|  4832|
|6 months  |Keneba         |GAMBIA       |1       |       0|    211|  2089|
|6 months  |Keneba         |GAMBIA       |1       |       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |2       |       0|    205|  2089|
|6 months  |Keneba         |GAMBIA       |2       |       1|      4|  2089|
|6 months  |Keneba         |GAMBIA       |3       |       0|    229|  2089|
|6 months  |Keneba         |GAMBIA       |3       |       1|      6|  2089|
|6 months  |Keneba         |GAMBIA       |4       |       0|    132|  2089|
|6 months  |Keneba         |GAMBIA       |4       |       1|      3|  2089|
|6 months  |Keneba         |GAMBIA       |5       |       0|    142|  2089|
|6 months  |Keneba         |GAMBIA       |5       |       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |6       |       0|    129|  2089|
|6 months  |Keneba         |GAMBIA       |6       |       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |7       |       0|     94|  2089|
|6 months  |Keneba         |GAMBIA       |7       |       1|      0|  2089|
|6 months  |Keneba         |GAMBIA       |8       |       0|    164|  2089|
|6 months  |Keneba         |GAMBIA       |8       |       1|      1|  2089|
|6 months  |Keneba         |GAMBIA       |9       |       0|    174|  2089|
|6 months  |Keneba         |GAMBIA       |9       |       1|      3|  2089|
|6 months  |Keneba         |GAMBIA       |10      |       0|    229|  2089|
|6 months  |Keneba         |GAMBIA       |10      |       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |11      |       0|    168|  2089|
|6 months  |Keneba         |GAMBIA       |11      |       1|      4|  2089|
|6 months  |Keneba         |GAMBIA       |12      |       0|    178|  2089|
|6 months  |Keneba         |GAMBIA       |12      |       1|      5|  2089|
|6 months  |LCNI-5         |MALAWI       |1       |       0|     49|   839|
|6 months  |LCNI-5         |MALAWI       |1       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |2       |       0|     44|   839|
|6 months  |LCNI-5         |MALAWI       |2       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |3       |       0|     22|   839|
|6 months  |LCNI-5         |MALAWI       |3       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |4       |       0|     39|   839|
|6 months  |LCNI-5         |MALAWI       |4       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |5       |       0|     45|   839|
|6 months  |LCNI-5         |MALAWI       |5       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |6       |       0|     36|   839|
|6 months  |LCNI-5         |MALAWI       |6       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |7       |       0|     67|   839|
|6 months  |LCNI-5         |MALAWI       |7       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |8       |       0|     92|   839|
|6 months  |LCNI-5         |MALAWI       |8       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |9       |       0|     95|   839|
|6 months  |LCNI-5         |MALAWI       |9       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |10      |       0|    144|   839|
|6 months  |LCNI-5         |MALAWI       |10      |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |11      |       0|    115|   839|
|6 months  |LCNI-5         |MALAWI       |11      |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |12      |       0|     91|   839|
|6 months  |LCNI-5         |MALAWI       |12      |       1|      0|   839|
|6 months  |MAL-ED         |INDIA        |1       |       0|     19|   236|
|6 months  |MAL-ED         |INDIA        |1       |       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |2       |       0|     23|   236|
|6 months  |MAL-ED         |INDIA        |2       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |3       |       0|     22|   236|
|6 months  |MAL-ED         |INDIA        |3       |       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |4       |       0|     12|   236|
|6 months  |MAL-ED         |INDIA        |4       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |5       |       0|      3|   236|
|6 months  |MAL-ED         |INDIA        |5       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |6       |       0|     18|   236|
|6 months  |MAL-ED         |INDIA        |6       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |7       |       0|      9|   236|
|6 months  |MAL-ED         |INDIA        |7       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |8       |       0|     28|   236|
|6 months  |MAL-ED         |INDIA        |8       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |9       |       0|     21|   236|
|6 months  |MAL-ED         |INDIA        |9       |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |10      |       0|     36|   236|
|6 months  |MAL-ED         |INDIA        |10      |       1|      2|   236|
|6 months  |MAL-ED         |INDIA        |11      |       0|     24|   236|
|6 months  |MAL-ED         |INDIA        |11      |       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |12      |       0|     15|   236|
|6 months  |MAL-ED         |INDIA        |12      |       1|      2|   236|
|6 months  |MAL-ED         |BANGLADESH   |1       |       0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |       0|     18|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |       0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |       0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |       0|     19|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |       0|      7|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |       0|     12|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |       0|     26|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |       0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |       0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |       0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |       0|     31|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |       1|      0|   241|
|6 months  |MAL-ED         |PERU         |1       |       0|     42|   273|
|6 months  |MAL-ED         |PERU         |1       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |2       |       0|     16|   273|
|6 months  |MAL-ED         |PERU         |2       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |3       |       0|     25|   273|
|6 months  |MAL-ED         |PERU         |3       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |4       |       0|     17|   273|
|6 months  |MAL-ED         |PERU         |4       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |5       |       0|     20|   273|
|6 months  |MAL-ED         |PERU         |5       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |6       |       0|     15|   273|
|6 months  |MAL-ED         |PERU         |6       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |7       |       0|     21|   273|
|6 months  |MAL-ED         |PERU         |7       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |8       |       0|     26|   273|
|6 months  |MAL-ED         |PERU         |8       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |9       |       0|     16|   273|
|6 months  |MAL-ED         |PERU         |9       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |10      |       0|     22|   273|
|6 months  |MAL-ED         |PERU         |10      |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |11      |       0|     34|   273|
|6 months  |MAL-ED         |PERU         |11      |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |12      |       0|     19|   273|
|6 months  |MAL-ED         |PERU         |12      |       1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |1       |       0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |1       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |2       |       0|     20|   236|
|6 months  |MAL-ED         |NEPAL        |2       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |3       |       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |3       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |4       |       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |4       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |5       |       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |5       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |6       |       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |6       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |7       |       0|     20|   236|
|6 months  |MAL-ED         |NEPAL        |7       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |8       |       0|     31|   236|
|6 months  |MAL-ED         |NEPAL        |8       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |9       |       0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |9       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |10      |       0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |10      |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |11      |       0|     21|   236|
|6 months  |MAL-ED         |NEPAL        |11      |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |12      |       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |12      |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |1       |       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |       0|     29|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |       0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |       0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |       0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |       0|      8|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |       0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |       0|     26|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |       0|     34|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |       0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |1       |       0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |       0|     28|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |       0|     19|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |       0|     15|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |       0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |       0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |       0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |       0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |       0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |       0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |       0|     25|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |       0|     32|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |       1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       0|     34|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |       0|     24|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |       0|     15|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |       0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |       0|     11|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |       0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |       1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |       0|     25|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |       0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |       0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |       1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |       0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |       0|     20|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |       1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |       0|     44|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |       1|      0|   254|
|6 months  |NIH-Birth      |BANGLADESH   |1       |       0|     62|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |       0|     43|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |       1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |       0|     55|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |       0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |       0|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |       0|     37|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |       0|     30|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |       0|     41|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |       0|     45|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |       1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |       0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |       0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |       0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |       1|      0|   537|
|6 months  |PROBIT         |BELARUS      |1       |       0|    910| 15757|
|6 months  |PROBIT         |BELARUS      |1       |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |2       |       0|    942| 15757|
|6 months  |PROBIT         |BELARUS      |2       |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |3       |       0|   1069| 15757|
|6 months  |PROBIT         |BELARUS      |3       |       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |4       |       0|   1102| 15757|
|6 months  |PROBIT         |BELARUS      |4       |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |5       |       0|   1028| 15757|
|6 months  |PROBIT         |BELARUS      |5       |       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |6       |       0|   1153| 15757|
|6 months  |PROBIT         |BELARUS      |6       |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |7       |       0|   1473| 15757|
|6 months  |PROBIT         |BELARUS      |7       |       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |8       |       0|   1508| 15757|
|6 months  |PROBIT         |BELARUS      |8       |       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |9       |       0|   1550| 15757|
|6 months  |PROBIT         |BELARUS      |9       |       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |10      |       0|   1667| 15757|
|6 months  |PROBIT         |BELARUS      |10      |       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |11      |       0|   1591| 15757|
|6 months  |PROBIT         |BELARUS      |11      |       1|      3| 15757|
|6 months  |PROBIT         |BELARUS      |12      |       0|   1755| 15757|
|6 months  |PROBIT         |BELARUS      |12      |       1|      1| 15757|
|6 months  |PROVIDE        |BANGLADESH   |1       |       0|     45|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |2       |       0|     31|   603|
|6 months  |PROVIDE        |BANGLADESH   |2       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |3       |       0|     48|   603|
|6 months  |PROVIDE        |BANGLADESH   |3       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |4       |       0|     32|   603|
|6 months  |PROVIDE        |BANGLADESH   |4       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |5       |       0|     53|   603|
|6 months  |PROVIDE        |BANGLADESH   |5       |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |6       |       0|     76|   603|
|6 months  |PROVIDE        |BANGLADESH   |6       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |7       |       0|     68|   603|
|6 months  |PROVIDE        |BANGLADESH   |7       |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |8       |       0|     54|   603|
|6 months  |PROVIDE        |BANGLADESH   |8       |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |9       |       0|     72|   603|
|6 months  |PROVIDE        |BANGLADESH   |9       |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |10      |       0|     65|   603|
|6 months  |PROVIDE        |BANGLADESH   |10      |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |11      |       0|     32|   603|
|6 months  |PROVIDE        |BANGLADESH   |11      |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |12      |       0|     22|   603|
|6 months  |PROVIDE        |BANGLADESH   |12      |       1|      1|   603|
|6 months  |ResPak         |PAKISTAN     |1       |       0|      8|   239|
|6 months  |ResPak         |PAKISTAN     |1       |       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |2       |       0|     12|   239|
|6 months  |ResPak         |PAKISTAN     |2       |       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |3       |       0|     27|   239|
|6 months  |ResPak         |PAKISTAN     |3       |       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |4       |       0|     26|   239|
|6 months  |ResPak         |PAKISTAN     |4       |       1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |5       |       0|     33|   239|
|6 months  |ResPak         |PAKISTAN     |5       |       1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |6       |       0|     40|   239|
|6 months  |ResPak         |PAKISTAN     |6       |       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |7       |       0|     23|   239|
|6 months  |ResPak         |PAKISTAN     |7       |       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |8       |       0|     36|   239|
|6 months  |ResPak         |PAKISTAN     |8       |       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |9       |       0|     16|   239|
|6 months  |ResPak         |PAKISTAN     |9       |       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |10      |       0|      6|   239|
|6 months  |ResPak         |PAKISTAN     |10      |       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |11      |       0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |11      |       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |12      |       0|      1|   239|
|6 months  |ResPak         |PAKISTAN     |12      |       1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |1       |       0|     91|  1332|
|6 months  |SAS-CompFeed   |INDIA        |1       |       1|      3|  1332|
|6 months  |SAS-CompFeed   |INDIA        |2       |       0|     59|  1332|
|6 months  |SAS-CompFeed   |INDIA        |2       |       1|      4|  1332|
|6 months  |SAS-CompFeed   |INDIA        |3       |       0|     63|  1332|
|6 months  |SAS-CompFeed   |INDIA        |3       |       1|      1|  1332|
|6 months  |SAS-CompFeed   |INDIA        |4       |       0|     57|  1332|
|6 months  |SAS-CompFeed   |INDIA        |4       |       1|      2|  1332|
|6 months  |SAS-CompFeed   |INDIA        |5       |       0|    104|  1332|
|6 months  |SAS-CompFeed   |INDIA        |5       |       1|      2|  1332|
|6 months  |SAS-CompFeed   |INDIA        |6       |       0|    100|  1332|
|6 months  |SAS-CompFeed   |INDIA        |6       |       1|      4|  1332|
|6 months  |SAS-CompFeed   |INDIA        |7       |       0|    104|  1332|
|6 months  |SAS-CompFeed   |INDIA        |7       |       1|      3|  1332|
|6 months  |SAS-CompFeed   |INDIA        |8       |       0|    172|  1332|
|6 months  |SAS-CompFeed   |INDIA        |8       |       1|      5|  1332|
|6 months  |SAS-CompFeed   |INDIA        |9       |       0|    161|  1332|
|6 months  |SAS-CompFeed   |INDIA        |9       |       1|      5|  1332|
|6 months  |SAS-CompFeed   |INDIA        |10      |       0|    153|  1332|
|6 months  |SAS-CompFeed   |INDIA        |10      |       1|      9|  1332|
|6 months  |SAS-CompFeed   |INDIA        |11      |       0|    121|  1332|
|6 months  |SAS-CompFeed   |INDIA        |11      |       1|      3|  1332|
|6 months  |SAS-CompFeed   |INDIA        |12      |       0|    104|  1332|
|6 months  |SAS-CompFeed   |INDIA        |12      |       1|      2|  1332|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |       0|     14|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |       1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |       0|     42|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |       1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |       0|     18|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |       0|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |       0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |       1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |       0|     22|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |       0|     30|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |       0|     64|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |       0|     47|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |       1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |       0|     46|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |       0|     27|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |       1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |       0|     37|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |       1|      2|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |       0|    127|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |       0|    154|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |       0|    129|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |       0|    170|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |       0|    161|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |       1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |       0|    154|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |       0|    203|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |       0|    189|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |       1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |       0|    170|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |       1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |       0|    210|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |       1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |       0|    171|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |       0|    178|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |       1|      1|  2028|
|6 months  |Vellore Crypto |INDIA        |1       |       0|     39|   408|
|6 months  |Vellore Crypto |INDIA        |1       |       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |2       |       0|     17|   408|
|6 months  |Vellore Crypto |INDIA        |2       |       1|      0|   408|
|6 months  |Vellore Crypto |INDIA        |3       |       0|     34|   408|
|6 months  |Vellore Crypto |INDIA        |3       |       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |4       |       0|     15|   408|
|6 months  |Vellore Crypto |INDIA        |4       |       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |5       |       0|     21|   408|
|6 months  |Vellore Crypto |INDIA        |5       |       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |6       |       0|     43|   408|
|6 months  |Vellore Crypto |INDIA        |6       |       1|      4|   408|
|6 months  |Vellore Crypto |INDIA        |7       |       0|     33|   408|
|6 months  |Vellore Crypto |INDIA        |7       |       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |8       |       0|     47|   408|
|6 months  |Vellore Crypto |INDIA        |8       |       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |9       |       0|     28|   408|
|6 months  |Vellore Crypto |INDIA        |9       |       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |10      |       0|     40|   408|
|6 months  |Vellore Crypto |INDIA        |10      |       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |11      |       0|     34|   408|
|6 months  |Vellore Crypto |INDIA        |11      |       1|      3|   408|
|6 months  |Vellore Crypto |INDIA        |12      |       0|     35|   408|
|6 months  |Vellore Crypto |INDIA        |12      |       1|      2|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |       0|    754|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |       1|     12|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |       0|    610|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |       1|      6|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |       0|    744|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |       1|      6|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |       0|    614|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |       1|      6|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |       0|    621|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |       1|      3|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |       0|    704|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |       1|     11|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |       0|    734|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |       1|      8|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |       0|    752|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |       1|      6|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |       0|    741|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |       1|      6|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |       0|    625|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |       1|      5|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |       0|    768|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |       1|      4|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |       0|    752|  8498|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |       1|      6|  8498|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       0|     31|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |       0|     16|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |       0|     29|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |       1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |       0|     48|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |       0|     39|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |       0|     28|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |       1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |       0|     42|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |       0|     22|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |       0|     21|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |       0|     23|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |       0|     44|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |       0|     26|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |       1|      0|   372|
|24 months |CMIN           |BANGLADESH   |1       |       0|     22|   242|
|24 months |CMIN           |BANGLADESH   |1       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |2       |       0|     24|   242|
|24 months |CMIN           |BANGLADESH   |2       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |3       |       0|     25|   242|
|24 months |CMIN           |BANGLADESH   |3       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |4       |       0|     11|   242|
|24 months |CMIN           |BANGLADESH   |4       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |5       |       0|     18|   242|
|24 months |CMIN           |BANGLADESH   |5       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |6       |       0|     11|   242|
|24 months |CMIN           |BANGLADESH   |6       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |7       |       0|     13|   242|
|24 months |CMIN           |BANGLADESH   |7       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |8       |       0|     24|   242|
|24 months |CMIN           |BANGLADESH   |8       |       1|      1|   242|
|24 months |CMIN           |BANGLADESH   |9       |       0|     17|   242|
|24 months |CMIN           |BANGLADESH   |9       |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |10      |       0|     27|   242|
|24 months |CMIN           |BANGLADESH   |10      |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |11      |       0|     22|   242|
|24 months |CMIN           |BANGLADESH   |11      |       1|      0|   242|
|24 months |CMIN           |BANGLADESH   |12      |       0|     26|   242|
|24 months |CMIN           |BANGLADESH   |12      |       1|      1|   242|
|24 months |CONTENT        |PERU         |1       |       0|      8|   164|
|24 months |CONTENT        |PERU         |1       |       1|      0|   164|
|24 months |CONTENT        |PERU         |2       |       0|     10|   164|
|24 months |CONTENT        |PERU         |2       |       1|      0|   164|
|24 months |CONTENT        |PERU         |3       |       0|     19|   164|
|24 months |CONTENT        |PERU         |3       |       1|      0|   164|
|24 months |CONTENT        |PERU         |4       |       0|     16|   164|
|24 months |CONTENT        |PERU         |4       |       1|      0|   164|
|24 months |CONTENT        |PERU         |5       |       0|     11|   164|
|24 months |CONTENT        |PERU         |5       |       1|      0|   164|
|24 months |CONTENT        |PERU         |6       |       0|      5|   164|
|24 months |CONTENT        |PERU         |6       |       1|      0|   164|
|24 months |CONTENT        |PERU         |7       |       0|     32|   164|
|24 months |CONTENT        |PERU         |7       |       1|      0|   164|
|24 months |CONTENT        |PERU         |8       |       0|     15|   164|
|24 months |CONTENT        |PERU         |8       |       1|      0|   164|
|24 months |CONTENT        |PERU         |9       |       0|     19|   164|
|24 months |CONTENT        |PERU         |9       |       1|      0|   164|
|24 months |CONTENT        |PERU         |10      |       0|     10|   164|
|24 months |CONTENT        |PERU         |10      |       1|      0|   164|
|24 months |CONTENT        |PERU         |11      |       0|     10|   164|
|24 months |CONTENT        |PERU         |11      |       1|      0|   164|
|24 months |CONTENT        |PERU         |12      |       0|      9|   164|
|24 months |CONTENT        |PERU         |12      |       1|      0|   164|
|24 months |EE             |PAKISTAN     |1       |       0|     11|   168|
|24 months |EE             |PAKISTAN     |1       |       1|      1|   168|
|24 months |EE             |PAKISTAN     |2       |       0|      4|   168|
|24 months |EE             |PAKISTAN     |2       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |3       |       0|      2|   168|
|24 months |EE             |PAKISTAN     |3       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |4       |       0|      0|   168|
|24 months |EE             |PAKISTAN     |4       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |5       |       0|      0|   168|
|24 months |EE             |PAKISTAN     |5       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |6       |       0|      0|   168|
|24 months |EE             |PAKISTAN     |6       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |7       |       0|      0|   168|
|24 months |EE             |PAKISTAN     |7       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |8       |       0|      0|   168|
|24 months |EE             |PAKISTAN     |8       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |9       |       0|      0|   168|
|24 months |EE             |PAKISTAN     |9       |       1|      0|   168|
|24 months |EE             |PAKISTAN     |10      |       0|      2|   168|
|24 months |EE             |PAKISTAN     |10      |       1|      0|   168|
|24 months |EE             |PAKISTAN     |11      |       0|     80|   168|
|24 months |EE             |PAKISTAN     |11      |       1|      1|   168|
|24 months |EE             |PAKISTAN     |12      |       0|     65|   168|
|24 months |EE             |PAKISTAN     |12      |       1|      2|   168|
|24 months |GMS-Nepal      |NEPAL        |1       |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |2       |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |2       |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |3       |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |3       |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |4       |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |4       |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |5       |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |5       |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |6       |       0|    108|   487|
|24 months |GMS-Nepal      |NEPAL        |6       |       1|      4|   487|
|24 months |GMS-Nepal      |NEPAL        |7       |       0|    187|   487|
|24 months |GMS-Nepal      |NEPAL        |7       |       1|      8|   487|
|24 months |GMS-Nepal      |NEPAL        |8       |       0|    177|   487|
|24 months |GMS-Nepal      |NEPAL        |8       |       1|      3|   487|
|24 months |GMS-Nepal      |NEPAL        |9       |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |9       |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |10      |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |10      |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |11      |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |11      |       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |12      |       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |12      |       1|      0|   487|
|24 months |JiVitA-3       |BANGLADESH   |1       |       0|    750|  8597|
|24 months |JiVitA-3       |BANGLADESH   |1       |       1|     34|  8597|
|24 months |JiVitA-3       |BANGLADESH   |2       |       0|    673|  8597|
|24 months |JiVitA-3       |BANGLADESH   |2       |       1|     28|  8597|
|24 months |JiVitA-3       |BANGLADESH   |3       |       0|    837|  8597|
|24 months |JiVitA-3       |BANGLADESH   |3       |       1|     27|  8597|
|24 months |JiVitA-3       |BANGLADESH   |4       |       0|    677|  8597|
|24 months |JiVitA-3       |BANGLADESH   |4       |       1|     27|  8597|
|24 months |JiVitA-3       |BANGLADESH   |5       |       0|    517|  8597|
|24 months |JiVitA-3       |BANGLADESH   |5       |       1|     22|  8597|
|24 months |JiVitA-3       |BANGLADESH   |6       |       0|    488|  8597|
|24 months |JiVitA-3       |BANGLADESH   |6       |       1|     20|  8597|
|24 months |JiVitA-3       |BANGLADESH   |7       |       0|    536|  8597|
|24 months |JiVitA-3       |BANGLADESH   |7       |       1|     18|  8597|
|24 months |JiVitA-3       |BANGLADESH   |8       |       0|    622|  8597|
|24 months |JiVitA-3       |BANGLADESH   |8       |       1|     29|  8597|
|24 months |JiVitA-3       |BANGLADESH   |9       |       0|    762|  8597|
|24 months |JiVitA-3       |BANGLADESH   |9       |       1|     33|  8597|
|24 months |JiVitA-3       |BANGLADESH   |10      |       0|    713|  8597|
|24 months |JiVitA-3       |BANGLADESH   |10      |       1|     30|  8597|
|24 months |JiVitA-3       |BANGLADESH   |11      |       0|    799|  8597|
|24 months |JiVitA-3       |BANGLADESH   |11      |       1|     31|  8597|
|24 months |JiVitA-3       |BANGLADESH   |12      |       0|    889|  8597|
|24 months |JiVitA-3       |BANGLADESH   |12      |       1|     35|  8597|
|24 months |JiVitA-4       |BANGLADESH   |1       |       0|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |1       |       1|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |2       |       0|    790|  4734|
|24 months |JiVitA-4       |BANGLADESH   |2       |       1|     13|  4734|
|24 months |JiVitA-4       |BANGLADESH   |3       |       0|    812|  4734|
|24 months |JiVitA-4       |BANGLADESH   |3       |       1|     31|  4734|
|24 months |JiVitA-4       |BANGLADESH   |4       |       0|    649|  4734|
|24 months |JiVitA-4       |BANGLADESH   |4       |       1|     20|  4734|
|24 months |JiVitA-4       |BANGLADESH   |5       |       0|    528|  4734|
|24 months |JiVitA-4       |BANGLADESH   |5       |       1|     13|  4734|
|24 months |JiVitA-4       |BANGLADESH   |6       |       0|    382|  4734|
|24 months |JiVitA-4       |BANGLADESH   |6       |       1|     17|  4734|
|24 months |JiVitA-4       |BANGLADESH   |7       |       0|    449|  4734|
|24 months |JiVitA-4       |BANGLADESH   |7       |       1|     11|  4734|
|24 months |JiVitA-4       |BANGLADESH   |8       |       0|    537|  4734|
|24 months |JiVitA-4       |BANGLADESH   |8       |       1|     11|  4734|
|24 months |JiVitA-4       |BANGLADESH   |9       |       0|    338|  4734|
|24 months |JiVitA-4       |BANGLADESH   |9       |       1|     10|  4734|
|24 months |JiVitA-4       |BANGLADESH   |10      |       0|    120|  4734|
|24 months |JiVitA-4       |BANGLADESH   |10      |       1|      3|  4734|
|24 months |JiVitA-4       |BANGLADESH   |11      |       0|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |11      |       1|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |12      |       0|      0|  4734|
|24 months |JiVitA-4       |BANGLADESH   |12      |       1|      0|  4734|
|24 months |Keneba         |GAMBIA       |1       |       0|    173|  1726|
|24 months |Keneba         |GAMBIA       |1       |       1|      1|  1726|
|24 months |Keneba         |GAMBIA       |2       |       0|    159|  1726|
|24 months |Keneba         |GAMBIA       |2       |       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |3       |       0|    182|  1726|
|24 months |Keneba         |GAMBIA       |3       |       1|      5|  1726|
|24 months |Keneba         |GAMBIA       |4       |       0|    110|  1726|
|24 months |Keneba         |GAMBIA       |4       |       1|      3|  1726|
|24 months |Keneba         |GAMBIA       |5       |       0|    106|  1726|
|24 months |Keneba         |GAMBIA       |5       |       1|      4|  1726|
|24 months |Keneba         |GAMBIA       |6       |       0|    111|  1726|
|24 months |Keneba         |GAMBIA       |6       |       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |7       |       0|     81|  1726|
|24 months |Keneba         |GAMBIA       |7       |       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |8       |       0|    149|  1726|
|24 months |Keneba         |GAMBIA       |8       |       1|      3|  1726|
|24 months |Keneba         |GAMBIA       |9       |       0|    142|  1726|
|24 months |Keneba         |GAMBIA       |9       |       1|      5|  1726|
|24 months |Keneba         |GAMBIA       |10      |       0|    201|  1726|
|24 months |Keneba         |GAMBIA       |10      |       1|      0|  1726|
|24 months |Keneba         |GAMBIA       |11      |       0|    141|  1726|
|24 months |Keneba         |GAMBIA       |11      |       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |12      |       0|    141|  1726|
|24 months |Keneba         |GAMBIA       |12      |       1|      1|  1726|
|24 months |LCNI-5         |MALAWI       |1       |       0|     32|   563|
|24 months |LCNI-5         |MALAWI       |1       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |2       |       0|     29|   563|
|24 months |LCNI-5         |MALAWI       |2       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |3       |       0|     16|   563|
|24 months |LCNI-5         |MALAWI       |3       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |4       |       0|     27|   563|
|24 months |LCNI-5         |MALAWI       |4       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |5       |       0|     36|   563|
|24 months |LCNI-5         |MALAWI       |5       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |6       |       0|     26|   563|
|24 months |LCNI-5         |MALAWI       |6       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |7       |       0|     39|   563|
|24 months |LCNI-5         |MALAWI       |7       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |8       |       0|     60|   563|
|24 months |LCNI-5         |MALAWI       |8       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |9       |       0|     65|   563|
|24 months |LCNI-5         |MALAWI       |9       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |10      |       0|    107|   563|
|24 months |LCNI-5         |MALAWI       |10      |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |11      |       0|     73|   563|
|24 months |LCNI-5         |MALAWI       |11      |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |12      |       0|     52|   563|
|24 months |LCNI-5         |MALAWI       |12      |       1|      1|   563|
|24 months |MAL-ED         |INDIA        |1       |       0|     19|   227|
|24 months |MAL-ED         |INDIA        |1       |       1|      1|   227|
|24 months |MAL-ED         |INDIA        |2       |       0|     22|   227|
|24 months |MAL-ED         |INDIA        |2       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |3       |       0|     22|   227|
|24 months |MAL-ED         |INDIA        |3       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |4       |       0|     11|   227|
|24 months |MAL-ED         |INDIA        |4       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |5       |       0|      3|   227|
|24 months |MAL-ED         |INDIA        |5       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |6       |       0|     18|   227|
|24 months |MAL-ED         |INDIA        |6       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |7       |       0|      9|   227|
|24 months |MAL-ED         |INDIA        |7       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |8       |       0|     27|   227|
|24 months |MAL-ED         |INDIA        |8       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |9       |       0|     19|   227|
|24 months |MAL-ED         |INDIA        |9       |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |10      |       0|     37|   227|
|24 months |MAL-ED         |INDIA        |10      |       1|      0|   227|
|24 months |MAL-ED         |INDIA        |11      |       0|     22|   227|
|24 months |MAL-ED         |INDIA        |11      |       1|      1|   227|
|24 months |MAL-ED         |INDIA        |12      |       0|     16|   227|
|24 months |MAL-ED         |INDIA        |12      |       1|      0|   227|
|24 months |MAL-ED         |BANGLADESH   |1       |       0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |       0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |       0|     24|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |       0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |       0|     14|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |       0|      6|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |       0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |       0|     24|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |       0|     23|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |       0|     23|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |       0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |       0|     25|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |       1|      0|   212|
|24 months |MAL-ED         |PERU         |1       |       0|     28|   201|
|24 months |MAL-ED         |PERU         |1       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |2       |       0|     13|   201|
|24 months |MAL-ED         |PERU         |2       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |3       |       0|     12|   201|
|24 months |MAL-ED         |PERU         |3       |       1|      1|   201|
|24 months |MAL-ED         |PERU         |4       |       0|     11|   201|
|24 months |MAL-ED         |PERU         |4       |       1|      1|   201|
|24 months |MAL-ED         |PERU         |5       |       0|     18|   201|
|24 months |MAL-ED         |PERU         |5       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |6       |       0|     10|   201|
|24 months |MAL-ED         |PERU         |6       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |7       |       0|     16|   201|
|24 months |MAL-ED         |PERU         |7       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |8       |       0|     19|   201|
|24 months |MAL-ED         |PERU         |8       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |9       |       0|     10|   201|
|24 months |MAL-ED         |PERU         |9       |       1|      0|   201|
|24 months |MAL-ED         |PERU         |10      |       0|     20|   201|
|24 months |MAL-ED         |PERU         |10      |       1|      0|   201|
|24 months |MAL-ED         |PERU         |11      |       0|     26|   201|
|24 months |MAL-ED         |PERU         |11      |       1|      0|   201|
|24 months |MAL-ED         |PERU         |12      |       0|     16|   201|
|24 months |MAL-ED         |PERU         |12      |       1|      0|   201|
|24 months |MAL-ED         |NEPAL        |1       |       0|     22|   228|
|24 months |MAL-ED         |NEPAL        |1       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |2       |       0|     19|   228|
|24 months |MAL-ED         |NEPAL        |2       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |3       |       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |3       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |4       |       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |4       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |5       |       0|     20|   228|
|24 months |MAL-ED         |NEPAL        |5       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |6       |       0|     19|   228|
|24 months |MAL-ED         |NEPAL        |6       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |7       |       0|     20|   228|
|24 months |MAL-ED         |NEPAL        |7       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |8       |       0|     29|   228|
|24 months |MAL-ED         |NEPAL        |8       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |9       |       0|     13|   228|
|24 months |MAL-ED         |NEPAL        |9       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |10      |       0|     13|   228|
|24 months |MAL-ED         |NEPAL        |10      |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |11      |       0|     21|   228|
|24 months |MAL-ED         |NEPAL        |11      |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |12      |       0|     18|   228|
|24 months |MAL-ED         |NEPAL        |12      |       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |1       |       0|     11|   169|
|24 months |MAL-ED         |BRAZIL       |1       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |2       |       0|     21|   169|
|24 months |MAL-ED         |BRAZIL       |2       |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |3       |       0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |3       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |4       |       0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |4       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |5       |       0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |5       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |6       |       0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |6       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |7       |       0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |7       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |8       |       0|     21|   169|
|24 months |MAL-ED         |BRAZIL       |8       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |9       |       0|     29|   169|
|24 months |MAL-ED         |BRAZIL       |9       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |10      |       0|      9|   169|
|24 months |MAL-ED         |BRAZIL       |10      |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |11      |       0|      7|   169|
|24 months |MAL-ED         |BRAZIL       |11      |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |12      |       0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |12      |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |1       |       0|     15|   214|
|24 months |MAL-ED         |TANZANIA     |1       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |2       |       0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |2       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |3       |       0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |3       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |4       |       0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |4       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |5       |       0|     22|   214|
|24 months |MAL-ED         |TANZANIA     |5       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |6       |       0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |6       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |7       |       0|     20|   214|
|24 months |MAL-ED         |TANZANIA     |7       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |8       |       0|      8|   214|
|24 months |MAL-ED         |TANZANIA     |8       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |9       |       0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |9       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |10      |       0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |10      |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |11      |       0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |11      |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |12      |       0|     27|   214|
|24 months |MAL-ED         |TANZANIA     |12      |       1|      0|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       0|     30|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |       0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |       0|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |       0|     16|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |       0|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |       0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |       0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |       0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |       0|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |       0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |       0|     20|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |       0|     37|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |       1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |1       |       0|     49|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |2       |       0|     32|   428|
|24 months |NIH-Birth      |BANGLADESH   |2       |       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |3       |       0|     48|   428|
|24 months |NIH-Birth      |BANGLADESH   |3       |       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |4       |       0|     32|   428|
|24 months |NIH-Birth      |BANGLADESH   |4       |       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |5       |       0|     43|   428|
|24 months |NIH-Birth      |BANGLADESH   |5       |       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |6       |       0|     29|   428|
|24 months |NIH-Birth      |BANGLADESH   |6       |       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |7       |       0|     25|   428|
|24 months |NIH-Birth      |BANGLADESH   |7       |       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |8       |       0|     34|   428|
|24 months |NIH-Birth      |BANGLADESH   |8       |       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |9       |       0|     33|   428|
|24 months |NIH-Birth      |BANGLADESH   |9       |       1|      2|   428|
|24 months |NIH-Birth      |BANGLADESH   |10      |       0|     23|   428|
|24 months |NIH-Birth      |BANGLADESH   |10      |       1|      2|   428|
|24 months |NIH-Birth      |BANGLADESH   |11      |       0|     38|   428|
|24 months |NIH-Birth      |BANGLADESH   |11      |       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |12      |       0|     32|   428|
|24 months |NIH-Birth      |BANGLADESH   |12      |       1|      2|   428|
|24 months |PROBIT         |BELARUS      |1       |       0|    234|  3970|
|24 months |PROBIT         |BELARUS      |1       |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |2       |       0|    243|  3970|
|24 months |PROBIT         |BELARUS      |2       |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |3       |       0|    279|  3970|
|24 months |PROBIT         |BELARUS      |3       |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |4       |       0|    305|  3970|
|24 months |PROBIT         |BELARUS      |4       |       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |5       |       0|    242|  3970|
|24 months |PROBIT         |BELARUS      |5       |       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |6       |       0|    271|  3970|
|24 months |PROBIT         |BELARUS      |6       |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |7       |       0|    336|  3970|
|24 months |PROBIT         |BELARUS      |7       |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |8       |       0|    404|  3970|
|24 months |PROBIT         |BELARUS      |8       |       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |9       |       0|    409|  3970|
|24 months |PROBIT         |BELARUS      |9       |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |10      |       0|    383|  3970|
|24 months |PROBIT         |BELARUS      |10      |       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |11      |       0|    387|  3970|
|24 months |PROBIT         |BELARUS      |11      |       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |12      |       0|    470|  3970|
|24 months |PROBIT         |BELARUS      |12      |       1|      0|  3970|
|24 months |PROVIDE        |BANGLADESH   |1       |       0|     44|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |2       |       0|     26|   579|
|24 months |PROVIDE        |BANGLADESH   |2       |       1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |3       |       0|     44|   579|
|24 months |PROVIDE        |BANGLADESH   |3       |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |4       |       0|     31|   579|
|24 months |PROVIDE        |BANGLADESH   |4       |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |5       |       0|     51|   579|
|24 months |PROVIDE        |BANGLADESH   |5       |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |6       |       0|     76|   579|
|24 months |PROVIDE        |BANGLADESH   |6       |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |7       |       0|     67|   579|
|24 months |PROVIDE        |BANGLADESH   |7       |       1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |8       |       0|     49|   579|
|24 months |PROVIDE        |BANGLADESH   |8       |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |9       |       0|     69|   579|
|24 months |PROVIDE        |BANGLADESH   |9       |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |10      |       0|     58|   579|
|24 months |PROVIDE        |BANGLADESH   |10      |       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |11      |       0|     31|   579|
|24 months |PROVIDE        |BANGLADESH   |11      |       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |12      |       0|     24|   579|
|24 months |PROVIDE        |BANGLADESH   |12      |       1|      0|   579|
|24 months |TanzaniaChild2 |TANZANIA     |1       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |1       |       0|     40|   409|
|24 months |Vellore Crypto |INDIA        |1       |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |2       |       0|     17|   409|
|24 months |Vellore Crypto |INDIA        |2       |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |3       |       0|     35|   409|
|24 months |Vellore Crypto |INDIA        |3       |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |4       |       0|     15|   409|
|24 months |Vellore Crypto |INDIA        |4       |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |5       |       0|     22|   409|
|24 months |Vellore Crypto |INDIA        |5       |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |6       |       0|     46|   409|
|24 months |Vellore Crypto |INDIA        |6       |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |7       |       0|     34|   409|
|24 months |Vellore Crypto |INDIA        |7       |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |8       |       0|     50|   409|
|24 months |Vellore Crypto |INDIA        |8       |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |9       |       0|     30|   409|
|24 months |Vellore Crypto |INDIA        |9       |       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |10      |       0|     42|   409|
|24 months |Vellore Crypto |INDIA        |10      |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |11      |       0|     37|   409|
|24 months |Vellore Crypto |INDIA        |11      |       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |12      |       0|     36|   409|
|24 months |Vellore Crypto |INDIA        |12      |       1|      1|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |       0|     37|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |       1|      2|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |       0|     43|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |       1|      5|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |       0|     49|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |       1|      2|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |       0|     23|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |       1|      1|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |       0|     40|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |       1|      4|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |       0|     37|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |       1|      6|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |       0|     24|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |       1|      0|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |       0|     21|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |       1|      1|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |       0|     25|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |       1|      2|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |       0|     19|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |       1|      0|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |       0|     33|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |       1|      2|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |       0|     51|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |       1|      5|   432|


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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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


