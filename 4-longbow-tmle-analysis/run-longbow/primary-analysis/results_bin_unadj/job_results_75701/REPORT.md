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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |brthmon | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|     29|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |         0|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |         0|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |         0|     47|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |         0|     38|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |         0|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |         0|     39|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |         0|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |         1|      0|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |         0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |         0|     20|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |         0|     40|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |         1|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |         0|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |         1|      0|   373|
|0-24 months |CMIN           |BANGLADESH   |1       |         0|     26|   256|
|0-24 months |CMIN           |BANGLADESH   |1       |         1|      0|   256|
|0-24 months |CMIN           |BANGLADESH   |2       |         0|     24|   256|
|0-24 months |CMIN           |BANGLADESH   |2       |         1|      1|   256|
|0-24 months |CMIN           |BANGLADESH   |3       |         0|     24|   256|
|0-24 months |CMIN           |BANGLADESH   |3       |         1|      2|   256|
|0-24 months |CMIN           |BANGLADESH   |4       |         0|     11|   256|
|0-24 months |CMIN           |BANGLADESH   |4       |         1|      1|   256|
|0-24 months |CMIN           |BANGLADESH   |5       |         0|     15|   256|
|0-24 months |CMIN           |BANGLADESH   |5       |         1|      4|   256|
|0-24 months |CMIN           |BANGLADESH   |6       |         0|     11|   256|
|0-24 months |CMIN           |BANGLADESH   |6       |         1|      0|   256|
|0-24 months |CMIN           |BANGLADESH   |7       |         0|     12|   256|
|0-24 months |CMIN           |BANGLADESH   |7       |         1|      1|   256|
|0-24 months |CMIN           |BANGLADESH   |8       |         0|     24|   256|
|0-24 months |CMIN           |BANGLADESH   |8       |         1|      2|   256|
|0-24 months |CMIN           |BANGLADESH   |9       |         0|     18|   256|
|0-24 months |CMIN           |BANGLADESH   |9       |         1|      0|   256|
|0-24 months |CMIN           |BANGLADESH   |10      |         0|     25|   256|
|0-24 months |CMIN           |BANGLADESH   |10      |         1|      3|   256|
|0-24 months |CMIN           |BANGLADESH   |11      |         0|     21|   256|
|0-24 months |CMIN           |BANGLADESH   |11      |         1|      3|   256|
|0-24 months |CMIN           |BANGLADESH   |12      |         0|     25|   256|
|0-24 months |CMIN           |BANGLADESH   |12      |         1|      3|   256|
|0-24 months |CONTENT        |PERU         |1       |         0|     10|   215|
|0-24 months |CONTENT        |PERU         |1       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |2       |         0|     15|   215|
|0-24 months |CONTENT        |PERU         |2       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |3       |         0|     27|   215|
|0-24 months |CONTENT        |PERU         |3       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |4       |         0|     24|   215|
|0-24 months |CONTENT        |PERU         |4       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |5       |         0|     13|   215|
|0-24 months |CONTENT        |PERU         |5       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |6       |         0|      8|   215|
|0-24 months |CONTENT        |PERU         |6       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |7       |         0|     41|   215|
|0-24 months |CONTENT        |PERU         |7       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |8       |         0|     17|   215|
|0-24 months |CONTENT        |PERU         |8       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |9       |         0|     23|   215|
|0-24 months |CONTENT        |PERU         |9       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |10      |         0|     15|   215|
|0-24 months |CONTENT        |PERU         |10      |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |11      |         0|     10|   215|
|0-24 months |CONTENT        |PERU         |11      |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |12      |         0|     12|   215|
|0-24 months |CONTENT        |PERU         |12      |         1|      0|   215|
|0-24 months |EE             |PAKISTAN     |1       |         0|     90|   377|
|0-24 months |EE             |PAKISTAN     |1       |         1|     14|   377|
|0-24 months |EE             |PAKISTAN     |2       |         0|     54|   377|
|0-24 months |EE             |PAKISTAN     |2       |         1|      6|   377|
|0-24 months |EE             |PAKISTAN     |3       |         0|     34|   377|
|0-24 months |EE             |PAKISTAN     |3       |         1|      1|   377|
|0-24 months |EE             |PAKISTAN     |4       |         0|     18|   377|
|0-24 months |EE             |PAKISTAN     |4       |         1|      1|   377|
|0-24 months |EE             |PAKISTAN     |5       |         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |5       |         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |6       |         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |6       |         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |7       |         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |7       |         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |8       |         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |8       |         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |9       |         0|      0|   377|
|0-24 months |EE             |PAKISTAN     |9       |         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |10      |         0|      2|   377|
|0-24 months |EE             |PAKISTAN     |10      |         1|      0|   377|
|0-24 months |EE             |PAKISTAN     |11      |         0|     78|   377|
|0-24 months |EE             |PAKISTAN     |11      |         1|      6|   377|
|0-24 months |EE             |PAKISTAN     |12      |         0|     68|   377|
|0-24 months |EE             |PAKISTAN     |12      |         1|      5|   377|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |2       |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |2       |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |3       |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |3       |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |4       |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |4       |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |5       |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |5       |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |6       |         0|    116|   597|
|0-24 months |GMS-Nepal      |NEPAL        |6       |         1|     18|   597|
|0-24 months |GMS-Nepal      |NEPAL        |7       |         0|    204|   597|
|0-24 months |GMS-Nepal      |NEPAL        |7       |         1|     35|   597|
|0-24 months |GMS-Nepal      |NEPAL        |8       |         0|    197|   597|
|0-24 months |GMS-Nepal      |NEPAL        |8       |         1|     27|   597|
|0-24 months |GMS-Nepal      |NEPAL        |9       |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |9       |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |10      |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |10      |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |11      |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |11      |         1|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |12      |         0|      0|   597|
|0-24 months |GMS-Nepal      |NEPAL        |12      |         1|      0|   597|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |         0|     24|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |         0|     25|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |         0|     21|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |         0|     22|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |         0|     28|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |         0|     16|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |         0|     16|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |         0|     15|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |         0|     14|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |         1|      0|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |         0|     25|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |         0|     15|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |         0|     31|   256|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |         1|      0|   256|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         0|    156|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         1|     24|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |         0|     66|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |         1|      7|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |         0|     85|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |         1|     10|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |         0|    104|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |         1|     16|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |         0|     94|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |         1|     13|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |         0|     75|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |         1|     13|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |         0|     84|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |         1|      7|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |         0|    155|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |         1|     19|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |         0|    161|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |         1|     32|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |         0|    174|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |         1|     21|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |         0|    175|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |         1|     17|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |         0|    140|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |         1|     21|  1669|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |         0|   1518| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |         1|     88| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |         0|   1275| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |         1|     77| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |         0|   1560| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |         1|     83| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |         0|   1231| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |         1|     73| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |         0|    986| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |         1|     56| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |         0|    985| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |         1|     53| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |         0|    953| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |         1|     57| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |         0|   1200| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |         1|     67| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |         0|   1354| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |         1|     85| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |         0|   1272| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |         1|     95| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |         0|   1290| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |         1|     90| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |         0|   1273| 15794|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |         1|     73| 15794|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |         0|      0|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |         1|      0|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |         0|    849|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |         1|     69|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |         0|    854|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |         1|     94|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |         0|    673|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |         1|     64|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |         0|    565|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |         1|     45|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |         0|    405|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |         1|     35|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |         0|    468|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |         1|     31|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |         0|    555|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |         1|     47|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |         0|    352|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |         1|     33|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |         0|    131|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |         1|      8|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |         0|      0|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |         1|      0|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |         0|      0|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |         1|      0|  5278|
|0-24 months |Keneba         |GAMBIA       |1       |         0|    238|  2444|
|0-24 months |Keneba         |GAMBIA       |1       |         1|      9|  2444|
|0-24 months |Keneba         |GAMBIA       |2       |         0|    222|  2444|
|0-24 months |Keneba         |GAMBIA       |2       |         1|     12|  2444|
|0-24 months |Keneba         |GAMBIA       |3       |         0|    253|  2444|
|0-24 months |Keneba         |GAMBIA       |3       |         1|     17|  2444|
|0-24 months |Keneba         |GAMBIA       |4       |         0|    144|  2444|
|0-24 months |Keneba         |GAMBIA       |4       |         1|     10|  2444|
|0-24 months |Keneba         |GAMBIA       |5       |         0|    156|  2444|
|0-24 months |Keneba         |GAMBIA       |5       |         1|      9|  2444|
|0-24 months |Keneba         |GAMBIA       |6       |         0|    146|  2444|
|0-24 months |Keneba         |GAMBIA       |6       |         1|     11|  2444|
|0-24 months |Keneba         |GAMBIA       |7       |         0|    104|  2444|
|0-24 months |Keneba         |GAMBIA       |7       |         1|      6|  2444|
|0-24 months |Keneba         |GAMBIA       |8       |         0|    179|  2444|
|0-24 months |Keneba         |GAMBIA       |8       |         1|     18|  2444|
|0-24 months |Keneba         |GAMBIA       |9       |         0|    194|  2444|
|0-24 months |Keneba         |GAMBIA       |9       |         1|     15|  2444|
|0-24 months |Keneba         |GAMBIA       |10      |         0|    271|  2444|
|0-24 months |Keneba         |GAMBIA       |10      |         1|     12|  2444|
|0-24 months |Keneba         |GAMBIA       |11      |         0|    195|  2444|
|0-24 months |Keneba         |GAMBIA       |11      |         1|      8|  2444|
|0-24 months |Keneba         |GAMBIA       |12      |         0|    197|  2444|
|0-24 months |Keneba         |GAMBIA       |12      |         1|     18|  2444|
|0-24 months |LCNI-5         |MALAWI       |1       |         0|     45|   719|
|0-24 months |LCNI-5         |MALAWI       |1       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |2       |         0|     41|   719|
|0-24 months |LCNI-5         |MALAWI       |2       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |3       |         0|     19|   719|
|0-24 months |LCNI-5         |MALAWI       |3       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |4       |         0|     37|   719|
|0-24 months |LCNI-5         |MALAWI       |4       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |5       |         0|     39|   719|
|0-24 months |LCNI-5         |MALAWI       |5       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |6       |         0|     31|   719|
|0-24 months |LCNI-5         |MALAWI       |6       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |7       |         0|     54|   719|
|0-24 months |LCNI-5         |MALAWI       |7       |         1|      1|   719|
|0-24 months |LCNI-5         |MALAWI       |8       |         0|     78|   719|
|0-24 months |LCNI-5         |MALAWI       |8       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |9       |         0|     77|   719|
|0-24 months |LCNI-5         |MALAWI       |9       |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |10      |         0|    126|   719|
|0-24 months |LCNI-5         |MALAWI       |10      |         1|      1|   719|
|0-24 months |LCNI-5         |MALAWI       |11      |         0|     97|   719|
|0-24 months |LCNI-5         |MALAWI       |11      |         1|      0|   719|
|0-24 months |LCNI-5         |MALAWI       |12      |         0|     69|   719|
|0-24 months |LCNI-5         |MALAWI       |12      |         1|      4|   719|
|0-24 months |MAL-ED         |INDIA        |1       |         0|     16|   241|
|0-24 months |MAL-ED         |INDIA        |1       |         1|      4|   241|
|0-24 months |MAL-ED         |INDIA        |2       |         0|     24|   241|
|0-24 months |MAL-ED         |INDIA        |2       |         1|      0|   241|
|0-24 months |MAL-ED         |INDIA        |3       |         0|     22|   241|
|0-24 months |MAL-ED         |INDIA        |3       |         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |4       |         0|     12|   241|
|0-24 months |MAL-ED         |INDIA        |4       |         1|      0|   241|
|0-24 months |MAL-ED         |INDIA        |5       |         0|      3|   241|
|0-24 months |MAL-ED         |INDIA        |5       |         1|      0|   241|
|0-24 months |MAL-ED         |INDIA        |6       |         0|     15|   241|
|0-24 months |MAL-ED         |INDIA        |6       |         1|      4|   241|
|0-24 months |MAL-ED         |INDIA        |7       |         0|      8|   241|
|0-24 months |MAL-ED         |INDIA        |7       |         1|      1|   241|
|0-24 months |MAL-ED         |INDIA        |8       |         0|     26|   241|
|0-24 months |MAL-ED         |INDIA        |8       |         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |9       |         0|     20|   241|
|0-24 months |MAL-ED         |INDIA        |9       |         1|      1|   241|
|0-24 months |MAL-ED         |INDIA        |10      |         0|     36|   241|
|0-24 months |MAL-ED         |INDIA        |10      |         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |11      |         0|     24|   241|
|0-24 months |MAL-ED         |INDIA        |11      |         1|      2|   241|
|0-24 months |MAL-ED         |INDIA        |12      |         0|     14|   241|
|0-24 months |MAL-ED         |INDIA        |12      |         1|      3|   241|
|0-24 months |MAL-ED         |BANGLADESH   |1       |         0|     20|   248|
|0-24 months |MAL-ED         |BANGLADESH   |1       |         1|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |2       |         0|     18|   248|
|0-24 months |MAL-ED         |BANGLADESH   |2       |         1|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |3       |         0|     24|   248|
|0-24 months |MAL-ED         |BANGLADESH   |3       |         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH   |4       |         0|     15|   248|
|0-24 months |MAL-ED         |BANGLADESH   |4       |         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |5       |         0|     18|   248|
|0-24 months |MAL-ED         |BANGLADESH   |5       |         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH   |6       |         0|      7|   248|
|0-24 months |MAL-ED         |BANGLADESH   |6       |         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |7       |         0|     11|   248|
|0-24 months |MAL-ED         |BANGLADESH   |7       |         1|      2|   248|
|0-24 months |MAL-ED         |BANGLADESH   |8       |         0|     26|   248|
|0-24 months |MAL-ED         |BANGLADESH   |8       |         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |9       |         0|     25|   248|
|0-24 months |MAL-ED         |BANGLADESH   |9       |         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |10      |         0|     24|   248|
|0-24 months |MAL-ED         |BANGLADESH   |10      |         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |11      |         0|     18|   248|
|0-24 months |MAL-ED         |BANGLADESH   |11      |         1|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH   |12      |         0|     29|   248|
|0-24 months |MAL-ED         |BANGLADESH   |12      |         1|      2|   248|
|0-24 months |MAL-ED         |PERU         |1       |         0|     46|   284|
|0-24 months |MAL-ED         |PERU         |1       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |2       |         0|     17|   284|
|0-24 months |MAL-ED         |PERU         |2       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |3       |         0|     25|   284|
|0-24 months |MAL-ED         |PERU         |3       |         1|      1|   284|
|0-24 months |MAL-ED         |PERU         |4       |         0|     18|   284|
|0-24 months |MAL-ED         |PERU         |4       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |5       |         0|     21|   284|
|0-24 months |MAL-ED         |PERU         |5       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |6       |         0|     15|   284|
|0-24 months |MAL-ED         |PERU         |6       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |7       |         0|     22|   284|
|0-24 months |MAL-ED         |PERU         |7       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |8       |         0|     26|   284|
|0-24 months |MAL-ED         |PERU         |8       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |9       |         0|     16|   284|
|0-24 months |MAL-ED         |PERU         |9       |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |10      |         0|     23|   284|
|0-24 months |MAL-ED         |PERU         |10      |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |11      |         0|     34|   284|
|0-24 months |MAL-ED         |PERU         |11      |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |12      |         0|     20|   284|
|0-24 months |MAL-ED         |PERU         |12      |         1|      0|   284|
|0-24 months |MAL-ED         |NEPAL        |1       |         0|     23|   238|
|0-24 months |MAL-ED         |NEPAL        |1       |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |2       |         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |2       |         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |3       |         0|     18|   238|
|0-24 months |MAL-ED         |NEPAL        |3       |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |4       |         0|     18|   238|
|0-24 months |MAL-ED         |NEPAL        |4       |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |5       |         0|     23|   238|
|0-24 months |MAL-ED         |NEPAL        |5       |         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |6       |         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |6       |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |7       |         0|     19|   238|
|0-24 months |MAL-ED         |NEPAL        |7       |         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |8       |         0|     30|   238|
|0-24 months |MAL-ED         |NEPAL        |8       |         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |9       |         0|     13|   238|
|0-24 months |MAL-ED         |NEPAL        |9       |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |10      |         0|     13|   238|
|0-24 months |MAL-ED         |NEPAL        |10      |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |11      |         0|     21|   238|
|0-24 months |MAL-ED         |NEPAL        |11      |         1|      0|   238|
|0-24 months |MAL-ED         |NEPAL        |12      |         0|     18|   238|
|0-24 months |MAL-ED         |NEPAL        |12      |         1|      0|   238|
|0-24 months |MAL-ED         |BRAZIL       |1       |         0|     13|   218|
|0-24 months |MAL-ED         |BRAZIL       |1       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |2       |         0|     28|   218|
|0-24 months |MAL-ED         |BRAZIL       |2       |         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL       |3       |         0|     20|   218|
|0-24 months |MAL-ED         |BRAZIL       |3       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |4       |         0|     11|   218|
|0-24 months |MAL-ED         |BRAZIL       |4       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |5       |         0|     15|   218|
|0-24 months |MAL-ED         |BRAZIL       |5       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |6       |         0|      8|   218|
|0-24 months |MAL-ED         |BRAZIL       |6       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |7       |         0|     18|   218|
|0-24 months |MAL-ED         |BRAZIL       |7       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |8       |         0|     28|   218|
|0-24 months |MAL-ED         |BRAZIL       |8       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |9       |         0|     34|   218|
|0-24 months |MAL-ED         |BRAZIL       |9       |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |10      |         0|     12|   218|
|0-24 months |MAL-ED         |BRAZIL       |10      |         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL       |11      |         0|     13|   218|
|0-24 months |MAL-ED         |BRAZIL       |11      |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |12      |         0|     16|   218|
|0-24 months |MAL-ED         |BRAZIL       |12      |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |1       |         0|     19|   253|
|0-24 months |MAL-ED         |TANZANIA     |1       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |2       |         0|     28|   253|
|0-24 months |MAL-ED         |TANZANIA     |2       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |3       |         0|     19|   253|
|0-24 months |MAL-ED         |TANZANIA     |3       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |4       |         0|     16|   253|
|0-24 months |MAL-ED         |TANZANIA     |4       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |5       |         0|     24|   253|
|0-24 months |MAL-ED         |TANZANIA     |5       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |6       |         0|     20|   253|
|0-24 months |MAL-ED         |TANZANIA     |6       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |7       |         0|     24|   253|
|0-24 months |MAL-ED         |TANZANIA     |7       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |8       |         0|     10|   253|
|0-24 months |MAL-ED         |TANZANIA     |8       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |9       |         0|     16|   253|
|0-24 months |MAL-ED         |TANZANIA     |9       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |10      |         0|     19|   253|
|0-24 months |MAL-ED         |TANZANIA     |10      |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |11      |         0|     26|   253|
|0-24 months |MAL-ED         |TANZANIA     |11      |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |12      |         0|     32|   253|
|0-24 months |MAL-ED         |TANZANIA     |12      |         1|      0|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|     34|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |         0|     23|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |         0|     18|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |         0|     16|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |         0|     14|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |         0|     13|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |         0|     26|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |         0|     14|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |         0|     21|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |         0|     23|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |         0|     23|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |         0|     48|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |         1|      0|   275|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |         0|     58|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |         1|      5|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |         0|     41|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |         1|      3|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |         0|     51|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |         1|      4|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |         0|     40|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |         1|      4|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |         0|     43|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |         1|      6|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |         0|     33|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |         1|      5|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |         0|     26|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |         1|      3|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |         0|     37|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |         1|      4|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |         0|     41|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |         1|      3|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |         0|     34|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |         1|      3|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |         0|     46|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |         1|      2|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |         0|     37|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |         1|      5|   534|
|0-24 months |PROBIT         |BELARUS      |1       |         0|    933| 16583|
|0-24 months |PROBIT         |BELARUS      |1       |         1|     11| 16583|
|0-24 months |PROBIT         |BELARUS      |2       |         0|    978| 16583|
|0-24 months |PROBIT         |BELARUS      |2       |         1|      4| 16583|
|0-24 months |PROBIT         |BELARUS      |3       |         0|   1102| 16583|
|0-24 months |PROBIT         |BELARUS      |3       |         1|     12| 16583|
|0-24 months |PROBIT         |BELARUS      |4       |         0|   1140| 16583|
|0-24 months |PROBIT         |BELARUS      |4       |         1|     10| 16583|
|0-24 months |PROBIT         |BELARUS      |5       |         0|   1084| 16583|
|0-24 months |PROBIT         |BELARUS      |5       |         1|      7| 16583|
|0-24 months |PROBIT         |BELARUS      |6       |         0|   1201| 16583|
|0-24 months |PROBIT         |BELARUS      |6       |         1|     11| 16583|
|0-24 months |PROBIT         |BELARUS      |7       |         0|   1526| 16583|
|0-24 months |PROBIT         |BELARUS      |7       |         1|     18| 16583|
|0-24 months |PROBIT         |BELARUS      |8       |         0|   1575| 16583|
|0-24 months |PROBIT         |BELARUS      |8       |         1|      9| 16583|
|0-24 months |PROBIT         |BELARUS      |9       |         0|   1624| 16583|
|0-24 months |PROBIT         |BELARUS      |9       |         1|     14| 16583|
|0-24 months |PROBIT         |BELARUS      |10      |         0|   1761| 16583|
|0-24 months |PROBIT         |BELARUS      |10      |         1|     12| 16583|
|0-24 months |PROBIT         |BELARUS      |11      |         0|   1676| 16583|
|0-24 months |PROBIT         |BELARUS      |11      |         1|     10| 16583|
|0-24 months |PROBIT         |BELARUS      |12      |         0|   1849| 16583|
|0-24 months |PROBIT         |BELARUS      |12      |         1|     16| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         0|     46|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |2       |         0|     32|   641|
|0-24 months |PROVIDE        |BANGLADESH   |2       |         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |3       |         0|     47|   641|
|0-24 months |PROVIDE        |BANGLADESH   |3       |         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |4       |         0|     36|   641|
|0-24 months |PROVIDE        |BANGLADESH   |4       |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |5       |         0|     53|   641|
|0-24 months |PROVIDE        |BANGLADESH   |5       |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH   |6       |         0|     82|   641|
|0-24 months |PROVIDE        |BANGLADESH   |6       |         1|      1|   641|
|0-24 months |PROVIDE        |BANGLADESH   |7       |         0|     70|   641|
|0-24 months |PROVIDE        |BANGLADESH   |7       |         1|      7|   641|
|0-24 months |PROVIDE        |BANGLADESH   |8       |         0|     56|   641|
|0-24 months |PROVIDE        |BANGLADESH   |8       |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |9       |         0|     77|   641|
|0-24 months |PROVIDE        |BANGLADESH   |9       |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |10      |         0|     66|   641|
|0-24 months |PROVIDE        |BANGLADESH   |10      |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH   |11      |         0|     35|   641|
|0-24 months |PROVIDE        |BANGLADESH   |11      |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |12      |         0|     26|   641|
|0-24 months |PROVIDE        |BANGLADESH   |12      |         1|      0|   641|
|0-24 months |ResPak         |PAKISTAN     |1       |         0|      8|   256|
|0-24 months |ResPak         |PAKISTAN     |1       |         1|      1|   256|
|0-24 months |ResPak         |PAKISTAN     |2       |         0|     13|   256|
|0-24 months |ResPak         |PAKISTAN     |2       |         1|      1|   256|
|0-24 months |ResPak         |PAKISTAN     |3       |         0|     25|   256|
|0-24 months |ResPak         |PAKISTAN     |3       |         1|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |4       |         0|     26|   256|
|0-24 months |ResPak         |PAKISTAN     |4       |         1|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |5       |         0|     30|   256|
|0-24 months |ResPak         |PAKISTAN     |5       |         1|      6|   256|
|0-24 months |ResPak         |PAKISTAN     |6       |         0|     36|   256|
|0-24 months |ResPak         |PAKISTAN     |6       |         1|      7|   256|
|0-24 months |ResPak         |PAKISTAN     |7       |         0|     25|   256|
|0-24 months |ResPak         |PAKISTAN     |7       |         1|      1|   256|
|0-24 months |ResPak         |PAKISTAN     |8       |         0|     36|   256|
|0-24 months |ResPak         |PAKISTAN     |8       |         1|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |9       |         0|     13|   256|
|0-24 months |ResPak         |PAKISTAN     |9       |         1|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |10      |         0|      6|   256|
|0-24 months |ResPak         |PAKISTAN     |10      |         1|      1|   256|
|0-24 months |ResPak         |PAKISTAN     |11      |         0|      4|   256|
|0-24 months |ResPak         |PAKISTAN     |11      |         1|      0|   256|
|0-24 months |ResPak         |PAKISTAN     |12      |         0|      0|   256|
|0-24 months |ResPak         |PAKISTAN     |12      |         1|      1|   256|
|0-24 months |SAS-CompFeed   |INDIA        |1       |         0|     86|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |1       |         1|     11|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |2       |         0|     55|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |2       |         1|     10|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |3       |         0|     60|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |3       |         1|      1|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |4       |         0|     56|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |4       |         1|      6|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |5       |         0|    102|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |5       |         1|      9|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |6       |         0|    101|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |6       |         1|      7|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |7       |         0|    100|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |7       |         1|      9|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |8       |         0|    172|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |8       |         1|     14|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |9       |         0|    155|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |9       |         1|     17|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |10      |         0|    149|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |10      |         1|     15|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |11      |         0|    120|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |11      |         1|      8|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |12      |         0|     94|  1364|
|0-24 months |SAS-CompFeed   |INDIA        |12      |         1|      7|  1364|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |         0|     13|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |         1|      2|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |         0|     39|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |         1|      3|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |         0|     14|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |         1|      5|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |         0|      0|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |         1|      2|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |         0|     12|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |         1|      1|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |         0|     15|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |         1|      7|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |         0|     30|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |         1|      3|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |         0|     58|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |         1|     10|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |         0|     41|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |         1|      7|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |         0|     35|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |         1|     10|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |         0|     24|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |         1|      5|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |         0|     29|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |         1|     10|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |         0|    143|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |         1|      0|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |         0|    162|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |         1|      4|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |         0|    138|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |         1|      1|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |         0|    184|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |         1|      5|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |         0|    169|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |         1|      6|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |         0|    161|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |         1|      3|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |         0|    204|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |         1|      6|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |         0|    198|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |         1|      8|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |         0|    176|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |         1|      5|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |         0|    214|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |         1|     13|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |         0|    178|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |         1|      4|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |         0|    181|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |         1|      3|  2166|
|0-24 months |Vellore Crypto |INDIA        |1       |         0|     38|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |         1|      3|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |         0|     16|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |         1|      1|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |         0|     34|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |         1|      1|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |         0|     13|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |         1|      3|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |         0|     20|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |         1|      2|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |         0|     43|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |         1|      4|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |         0|     33|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |         1|      2|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |         0|     42|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |         1|      8|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |         0|     24|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |         1|      7|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |         0|     38|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |         1|      4|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |         0|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |         1|      9|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |         0|     33|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |         1|      4|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |         0|    854|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |         1|     16|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |         0|    705|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |         1|     12|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |         0|    847|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |         1|      7|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |         0|    678|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |         1|      6|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |         0|    691|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |         1|     12|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |         0|    776|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |         1|     14|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |         0|    822|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |         1|     19|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |         0|    827|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |         1|     19|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |         0|    813|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |         1|     12|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |         0|    676|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |         1|     19|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |         0|    820|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |         1|     17|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |         0|    841|  9517|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |         1|     14|  9517|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |         0|     29|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |         1|      2|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |         0|     12|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |         1|      2|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |         0|     26|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |         1|      2|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |         0|     41|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |         1|      6|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |         0|     34|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |         1|      4|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |         0|     19|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |         1|      8|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |         0|     39|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |         1|      3|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |         0|     18|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |         1|      4|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |         0|     16|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |         1|      5|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |         0|     19|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |         1|      4|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |         0|     36|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |         1|      5|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |         0|     19|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |         1|      5|   358|
|0-6 months  |CMIN           |BANGLADESH   |1       |         0|     19|   233|
|0-6 months  |CMIN           |BANGLADESH   |1       |         1|      4|   233|
|0-6 months  |CMIN           |BANGLADESH   |2       |         0|     22|   233|
|0-6 months  |CMIN           |BANGLADESH   |2       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |3       |         0|     21|   233|
|0-6 months  |CMIN           |BANGLADESH   |3       |         1|      2|   233|
|0-6 months  |CMIN           |BANGLADESH   |4       |         0|     11|   233|
|0-6 months  |CMIN           |BANGLADESH   |4       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |5       |         0|     18|   233|
|0-6 months  |CMIN           |BANGLADESH   |5       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |6       |         0|     11|   233|
|0-6 months  |CMIN           |BANGLADESH   |6       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |7       |         0|     13|   233|
|0-6 months  |CMIN           |BANGLADESH   |7       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |8       |         0|     21|   233|
|0-6 months  |CMIN           |BANGLADESH   |8       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |9       |         0|     16|   233|
|0-6 months  |CMIN           |BANGLADESH   |9       |         1|      0|   233|
|0-6 months  |CMIN           |BANGLADESH   |10      |         0|     24|   233|
|0-6 months  |CMIN           |BANGLADESH   |10      |         1|      1|   233|
|0-6 months  |CMIN           |BANGLADESH   |11      |         0|     22|   233|
|0-6 months  |CMIN           |BANGLADESH   |11      |         1|      1|   233|
|0-6 months  |CMIN           |BANGLADESH   |12      |         0|     26|   233|
|0-6 months  |CMIN           |BANGLADESH   |12      |         1|      1|   233|
|0-6 months  |CONTENT        |PERU         |1       |         0|     10|   215|
|0-6 months  |CONTENT        |PERU         |1       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |2       |         0|     15|   215|
|0-6 months  |CONTENT        |PERU         |2       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3       |         0|     27|   215|
|0-6 months  |CONTENT        |PERU         |3       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |4       |         0|     24|   215|
|0-6 months  |CONTENT        |PERU         |4       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |5       |         0|     13|   215|
|0-6 months  |CONTENT        |PERU         |5       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |6       |         0|      8|   215|
|0-6 months  |CONTENT        |PERU         |6       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |7       |         0|     41|   215|
|0-6 months  |CONTENT        |PERU         |7       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |8       |         0|     17|   215|
|0-6 months  |CONTENT        |PERU         |8       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |9       |         0|     23|   215|
|0-6 months  |CONTENT        |PERU         |9       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |10      |         0|     15|   215|
|0-6 months  |CONTENT        |PERU         |10      |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |11      |         0|     10|   215|
|0-6 months  |CONTENT        |PERU         |11      |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |12      |         0|     12|   215|
|0-6 months  |CONTENT        |PERU         |12      |         1|      0|   215|
|0-6 months  |EE             |PAKISTAN     |1       |         0|     91|   371|
|0-6 months  |EE             |PAKISTAN     |1       |         1|     11|   371|
|0-6 months  |EE             |PAKISTAN     |2       |         0|     56|   371|
|0-6 months  |EE             |PAKISTAN     |2       |         1|      3|   371|
|0-6 months  |EE             |PAKISTAN     |3       |         0|     34|   371|
|0-6 months  |EE             |PAKISTAN     |3       |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |4       |         0|     17|   371|
|0-6 months  |EE             |PAKISTAN     |4       |         1|      2|   371|
|0-6 months  |EE             |PAKISTAN     |5       |         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |5       |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |6       |         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |6       |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |7       |         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |7       |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |8       |         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |8       |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |9       |         0|      0|   371|
|0-6 months  |EE             |PAKISTAN     |9       |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |10      |         0|      2|   371|
|0-6 months  |EE             |PAKISTAN     |10      |         1|      0|   371|
|0-6 months  |EE             |PAKISTAN     |11      |         0|     80|   371|
|0-6 months  |EE             |PAKISTAN     |11      |         1|      3|   371|
|0-6 months  |EE             |PAKISTAN     |12      |         0|     66|   371|
|0-6 months  |EE             |PAKISTAN     |12      |         1|      6|   371|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |         0|    112|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |         1|     11|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |         0|    204|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |         1|     30|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |         0|    189|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |         1|     21|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |         1|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |         0|      0|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |         1|      0|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |         0|      6|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |         0|      5|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |         0|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |         0|      5|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |         0|      3|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |         0|      3|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |         0|      4|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |         0|      3|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |         0|      2|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |         0|      5|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |         0|      3|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |         0|      8|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |         1|      0|    50|
|0-6 months  |Keneba         |GAMBIA       |1       |         0|    207|  2045|
|0-6 months  |Keneba         |GAMBIA       |1       |         1|      3|  2045|
|0-6 months  |Keneba         |GAMBIA       |2       |         0|    188|  2045|
|0-6 months  |Keneba         |GAMBIA       |2       |         1|      6|  2045|
|0-6 months  |Keneba         |GAMBIA       |3       |         0|    229|  2045|
|0-6 months  |Keneba         |GAMBIA       |3       |         1|     11|  2045|
|0-6 months  |Keneba         |GAMBIA       |4       |         0|    130|  2045|
|0-6 months  |Keneba         |GAMBIA       |4       |         1|      2|  2045|
|0-6 months  |Keneba         |GAMBIA       |5       |         0|    123|  2045|
|0-6 months  |Keneba         |GAMBIA       |5       |         1|      7|  2045|
|0-6 months  |Keneba         |GAMBIA       |6       |         0|    124|  2045|
|0-6 months  |Keneba         |GAMBIA       |6       |         1|      6|  2045|
|0-6 months  |Keneba         |GAMBIA       |7       |         0|     90|  2045|
|0-6 months  |Keneba         |GAMBIA       |7       |         1|      2|  2045|
|0-6 months  |Keneba         |GAMBIA       |8       |         0|    157|  2045|
|0-6 months  |Keneba         |GAMBIA       |8       |         1|      3|  2045|
|0-6 months  |Keneba         |GAMBIA       |9       |         0|    165|  2045|
|0-6 months  |Keneba         |GAMBIA       |9       |         1|      7|  2045|
|0-6 months  |Keneba         |GAMBIA       |10      |         0|    229|  2045|
|0-6 months  |Keneba         |GAMBIA       |10      |         1|      8|  2045|
|0-6 months  |Keneba         |GAMBIA       |11      |         0|    170|  2045|
|0-6 months  |Keneba         |GAMBIA       |11      |         1|      2|  2045|
|0-6 months  |Keneba         |GAMBIA       |12      |         0|    170|  2045|
|0-6 months  |Keneba         |GAMBIA       |12      |         1|      6|  2045|
|0-6 months  |MAL-ED         |INDIA        |1       |         0|     16|   240|
|0-6 months  |MAL-ED         |INDIA        |1       |         1|      4|   240|
|0-6 months  |MAL-ED         |INDIA        |2       |         0|     24|   240|
|0-6 months  |MAL-ED         |INDIA        |2       |         1|      0|   240|
|0-6 months  |MAL-ED         |INDIA        |3       |         0|     23|   240|
|0-6 months  |MAL-ED         |INDIA        |3       |         1|      1|   240|
|0-6 months  |MAL-ED         |INDIA        |4       |         0|     10|   240|
|0-6 months  |MAL-ED         |INDIA        |4       |         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |5       |         0|      3|   240|
|0-6 months  |MAL-ED         |INDIA        |5       |         1|      0|   240|
|0-6 months  |MAL-ED         |INDIA        |6       |         0|     15|   240|
|0-6 months  |MAL-ED         |INDIA        |6       |         1|      3|   240|
|0-6 months  |MAL-ED         |INDIA        |7       |         0|      9|   240|
|0-6 months  |MAL-ED         |INDIA        |7       |         1|      0|   240|
|0-6 months  |MAL-ED         |INDIA        |8       |         0|     26|   240|
|0-6 months  |MAL-ED         |INDIA        |8       |         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |9       |         0|     21|   240|
|0-6 months  |MAL-ED         |INDIA        |9       |         1|      0|   240|
|0-6 months  |MAL-ED         |INDIA        |10      |         0|     35|   240|
|0-6 months  |MAL-ED         |INDIA        |10      |         1|      3|   240|
|0-6 months  |MAL-ED         |INDIA        |11      |         0|     24|   240|
|0-6 months  |MAL-ED         |INDIA        |11      |         1|      2|   240|
|0-6 months  |MAL-ED         |INDIA        |12      |         0|     15|   240|
|0-6 months  |MAL-ED         |INDIA        |12      |         1|      2|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |         0|     20|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |         0|     18|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |         0|     24|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |         1|      2|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |         0|     15|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |         1|      1|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |         0|     19|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |         1|      1|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |         0|      8|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |         0|     11|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |         1|      2|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |         0|     27|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |         0|     26|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |         0|     25|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |         0|     18|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |         0|     30|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |         1|      1|   248|
|0-6 months  |MAL-ED         |PERU         |1       |         0|     46|   284|
|0-6 months  |MAL-ED         |PERU         |1       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |2       |         0|     17|   284|
|0-6 months  |MAL-ED         |PERU         |2       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |3       |         0|     26|   284|
|0-6 months  |MAL-ED         |PERU         |3       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |4       |         0|     18|   284|
|0-6 months  |MAL-ED         |PERU         |4       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |5       |         0|     21|   284|
|0-6 months  |MAL-ED         |PERU         |5       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |6       |         0|     15|   284|
|0-6 months  |MAL-ED         |PERU         |6       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |7       |         0|     22|   284|
|0-6 months  |MAL-ED         |PERU         |7       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |8       |         0|     26|   284|
|0-6 months  |MAL-ED         |PERU         |8       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |9       |         0|     16|   284|
|0-6 months  |MAL-ED         |PERU         |9       |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |10      |         0|     23|   284|
|0-6 months  |MAL-ED         |PERU         |10      |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |11      |         0|     34|   284|
|0-6 months  |MAL-ED         |PERU         |11      |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |12      |         0|     20|   284|
|0-6 months  |MAL-ED         |PERU         |12      |         1|      0|   284|
|0-6 months  |MAL-ED         |NEPAL        |1       |         0|     23|   238|
|0-6 months  |MAL-ED         |NEPAL        |1       |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |2       |         0|     19|   238|
|0-6 months  |MAL-ED         |NEPAL        |2       |         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |3       |         0|     17|   238|
|0-6 months  |MAL-ED         |NEPAL        |3       |         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |4       |         0|     17|   238|
|0-6 months  |MAL-ED         |NEPAL        |4       |         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |5       |         0|     22|   238|
|0-6 months  |MAL-ED         |NEPAL        |5       |         1|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |6       |         0|     19|   238|
|0-6 months  |MAL-ED         |NEPAL        |6       |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |7       |         0|     20|   238|
|0-6 months  |MAL-ED         |NEPAL        |7       |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |8       |         0|     29|   238|
|0-6 months  |MAL-ED         |NEPAL        |8       |         1|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |9       |         0|     13|   238|
|0-6 months  |MAL-ED         |NEPAL        |9       |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |10      |         0|     13|   238|
|0-6 months  |MAL-ED         |NEPAL        |10      |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |11      |         0|     21|   238|
|0-6 months  |MAL-ED         |NEPAL        |11      |         1|      0|   238|
|0-6 months  |MAL-ED         |NEPAL        |12      |         0|     18|   238|
|0-6 months  |MAL-ED         |NEPAL        |12      |         1|      0|   238|
|0-6 months  |MAL-ED         |BRAZIL       |1       |         0|     13|   218|
|0-6 months  |MAL-ED         |BRAZIL       |1       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |2       |         0|     28|   218|
|0-6 months  |MAL-ED         |BRAZIL       |2       |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |3       |         0|     20|   218|
|0-6 months  |MAL-ED         |BRAZIL       |3       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |4       |         0|     11|   218|
|0-6 months  |MAL-ED         |BRAZIL       |4       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |5       |         0|     15|   218|
|0-6 months  |MAL-ED         |BRAZIL       |5       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |6       |         0|      8|   218|
|0-6 months  |MAL-ED         |BRAZIL       |6       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |7       |         0|     18|   218|
|0-6 months  |MAL-ED         |BRAZIL       |7       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |8       |         0|     28|   218|
|0-6 months  |MAL-ED         |BRAZIL       |8       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |9       |         0|     34|   218|
|0-6 months  |MAL-ED         |BRAZIL       |9       |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |10      |         0|     13|   218|
|0-6 months  |MAL-ED         |BRAZIL       |10      |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |11      |         0|     13|   218|
|0-6 months  |MAL-ED         |BRAZIL       |11      |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |12      |         0|     16|   218|
|0-6 months  |MAL-ED         |BRAZIL       |12      |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |1       |         0|     19|   253|
|0-6 months  |MAL-ED         |TANZANIA     |1       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |2       |         0|     28|   253|
|0-6 months  |MAL-ED         |TANZANIA     |2       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |3       |         0|     19|   253|
|0-6 months  |MAL-ED         |TANZANIA     |3       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |4       |         0|     16|   253|
|0-6 months  |MAL-ED         |TANZANIA     |4       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |5       |         0|     24|   253|
|0-6 months  |MAL-ED         |TANZANIA     |5       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |6       |         0|     20|   253|
|0-6 months  |MAL-ED         |TANZANIA     |6       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |7       |         0|     24|   253|
|0-6 months  |MAL-ED         |TANZANIA     |7       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |8       |         0|     10|   253|
|0-6 months  |MAL-ED         |TANZANIA     |8       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |9       |         0|     16|   253|
|0-6 months  |MAL-ED         |TANZANIA     |9       |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |10      |         0|     19|   253|
|0-6 months  |MAL-ED         |TANZANIA     |10      |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |11      |         0|     26|   253|
|0-6 months  |MAL-ED         |TANZANIA     |11      |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |12      |         0|     32|   253|
|0-6 months  |MAL-ED         |TANZANIA     |12      |         1|      0|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |         0|     34|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |         0|     22|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |         0|     18|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |         0|     16|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |         0|     14|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |         0|     14|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |         0|     26|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |         0|     14|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |         0|     21|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |         0|     23|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |         0|     22|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |         0|     48|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |         1|      0|   274|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |         0|     18|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |         1|      2|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |         0|     17|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |         0|     14|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |         0|     15|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |         0|     16|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |         0|     12|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |         0|      5|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |         0|     11|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |         0|     11|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |         1|      2|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |         0|      8|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |         1|      0|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |         0|     16|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |         0|     15|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |         1|      2|   169|
|0-6 months  |PROBIT         |BELARUS      |1       |         0|    695| 13534|
|0-6 months  |PROBIT         |BELARUS      |1       |         1|     60| 13534|
|0-6 months  |PROBIT         |BELARUS      |2       |         0|    725| 13534|
|0-6 months  |PROBIT         |BELARUS      |2       |         1|     71| 13534|
|0-6 months  |PROBIT         |BELARUS      |3       |         0|    828| 13534|
|0-6 months  |PROBIT         |BELARUS      |3       |         1|     69| 13534|
|0-6 months  |PROBIT         |BELARUS      |4       |         0|    869| 13534|
|0-6 months  |PROBIT         |BELARUS      |4       |         1|     79| 13534|
|0-6 months  |PROBIT         |BELARUS      |5       |         0|    801| 13534|
|0-6 months  |PROBIT         |BELARUS      |5       |         1|     83| 13534|
|0-6 months  |PROBIT         |BELARUS      |6       |         0|    915| 13534|
|0-6 months  |PROBIT         |BELARUS      |6       |         1|     80| 13534|
|0-6 months  |PROBIT         |BELARUS      |7       |         0|   1141| 13534|
|0-6 months  |PROBIT         |BELARUS      |7       |         1|    108| 13534|
|0-6 months  |PROBIT         |BELARUS      |8       |         0|   1199| 13534|
|0-6 months  |PROBIT         |BELARUS      |8       |         1|    108| 13534|
|0-6 months  |PROBIT         |BELARUS      |9       |         0|   1267| 13534|
|0-6 months  |PROBIT         |BELARUS      |9       |         1|    112| 13534|
|0-6 months  |PROBIT         |BELARUS      |10      |         0|   1320| 13534|
|0-6 months  |PROBIT         |BELARUS      |10      |         1|    116| 13534|
|0-6 months  |PROBIT         |BELARUS      |11      |         0|   1267| 13534|
|0-6 months  |PROBIT         |BELARUS      |11      |         1|    101| 13534|
|0-6 months  |PROBIT         |BELARUS      |12      |         0|   1410| 13534|
|0-6 months  |PROBIT         |BELARUS      |12      |         1|    110| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |         0|     46|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |         0|     32|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |         0|     48|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |         0|     35|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |         0|     54|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |         0|     81|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |         1|      2|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |         0|     73|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |         1|      4|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |         0|     55|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |         0|     73|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |         0|     66|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |         1|      2|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |         0|     35|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |         0|     26|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |         1|      0|   638|
|0-6 months  |ResPak         |PAKISTAN     |1       |         0|      8|   243|
|0-6 months  |ResPak         |PAKISTAN     |1       |         1|      1|   243|
|0-6 months  |ResPak         |PAKISTAN     |2       |         0|     13|   243|
|0-6 months  |ResPak         |PAKISTAN     |2       |         1|      1|   243|
|0-6 months  |ResPak         |PAKISTAN     |3       |         0|     25|   243|
|0-6 months  |ResPak         |PAKISTAN     |3       |         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |4       |         0|     26|   243|
|0-6 months  |ResPak         |PAKISTAN     |4       |         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |5       |         0|     31|   243|
|0-6 months  |ResPak         |PAKISTAN     |5       |         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |6       |         0|     34|   243|
|0-6 months  |ResPak         |PAKISTAN     |6       |         1|      6|   243|
|0-6 months  |ResPak         |PAKISTAN     |7       |         0|     25|   243|
|0-6 months  |ResPak         |PAKISTAN     |7       |         1|      1|   243|
|0-6 months  |ResPak         |PAKISTAN     |8       |         0|     33|   243|
|0-6 months  |ResPak         |PAKISTAN     |8       |         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |9       |         0|     13|   243|
|0-6 months  |ResPak         |PAKISTAN     |9       |         1|      3|   243|
|0-6 months  |ResPak         |PAKISTAN     |10      |         0|      6|   243|
|0-6 months  |ResPak         |PAKISTAN     |10      |         1|      0|   243|
|0-6 months  |ResPak         |PAKISTAN     |11      |         0|      4|   243|
|0-6 months  |ResPak         |PAKISTAN     |11      |         1|      0|   243|
|0-6 months  |ResPak         |PAKISTAN     |12      |         0|      0|   243|
|0-6 months  |ResPak         |PAKISTAN     |12      |         1|      1|   243|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |         0|    129|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |         1|      1|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |         0|    152|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |         1|      3|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |         0|    130|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |         1|      2|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |         0|    178|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |         1|      4|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |         0|    160|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |         1|      3|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |         0|    157|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |         1|      3|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |         0|    198|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |         1|      5|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |         0|    188|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |         1|      6|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |         0|    167|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |         1|      9|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |         0|    207|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |         1|     10|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |         0|    171|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |         1|      3|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |         0|    172|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |         1|      3|  2061|
|0-6 months  |Vellore Crypto |INDIA        |1       |         0|     33|   402|
|0-6 months  |Vellore Crypto |INDIA        |1       |         1|      7|   402|
|0-6 months  |Vellore Crypto |INDIA        |2       |         0|     17|   402|
|0-6 months  |Vellore Crypto |INDIA        |2       |         1|      0|   402|
|0-6 months  |Vellore Crypto |INDIA        |3       |         0|     29|   402|
|0-6 months  |Vellore Crypto |INDIA        |3       |         1|      5|   402|
|0-6 months  |Vellore Crypto |INDIA        |4       |         0|     13|   402|
|0-6 months  |Vellore Crypto |INDIA        |4       |         1|      3|   402|
|0-6 months  |Vellore Crypto |INDIA        |5       |         0|     18|   402|
|0-6 months  |Vellore Crypto |INDIA        |5       |         1|      4|   402|
|0-6 months  |Vellore Crypto |INDIA        |6       |         0|     34|   402|
|0-6 months  |Vellore Crypto |INDIA        |6       |         1|     12|   402|
|0-6 months  |Vellore Crypto |INDIA        |7       |         0|     30|   402|
|0-6 months  |Vellore Crypto |INDIA        |7       |         1|      5|   402|
|0-6 months  |Vellore Crypto |INDIA        |8       |         0|     41|   402|
|0-6 months  |Vellore Crypto |INDIA        |8       |         1|      8|   402|
|0-6 months  |Vellore Crypto |INDIA        |9       |         0|     24|   402|
|0-6 months  |Vellore Crypto |INDIA        |9       |         1|      6|   402|
|0-6 months  |Vellore Crypto |INDIA        |10      |         0|     35|   402|
|0-6 months  |Vellore Crypto |INDIA        |10      |         1|      5|   402|
|0-6 months  |Vellore Crypto |INDIA        |11      |         0|     31|   402|
|0-6 months  |Vellore Crypto |INDIA        |11      |         1|      5|   402|
|0-6 months  |Vellore Crypto |INDIA        |12      |         0|     33|   402|
|0-6 months  |Vellore Crypto |INDIA        |12      |         1|      4|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |         0|     75|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |         1|      0|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |         0|     55|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |         1|      0|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |         0|     45|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |         1|      2|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |         0|     45|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |         1|      0|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |         0|     34|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |         0|     58|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |         1|      2|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |         0|     49|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |         1|      2|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |         0|     59|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |         0|     44|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |         1|      2|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |         0|     39|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |         1|      3|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |         0|     67|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |         0|     48|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |         1|      0|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|     29|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |         0|     15|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |         0|     30|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |         0|     47|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |         0|     38|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |         0|     26|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |         0|     39|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |         0|     22|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |         1|      0|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |         0|     18|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |         0|     20|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |         0|     40|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |         1|      5|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |         0|     26|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |         1|      0|   373|
|6-24 months |CMIN           |BANGLADESH   |1       |         0|     26|   256|
|6-24 months |CMIN           |BANGLADESH   |1       |         1|      0|   256|
|6-24 months |CMIN           |BANGLADESH   |2       |         0|     24|   256|
|6-24 months |CMIN           |BANGLADESH   |2       |         1|      1|   256|
|6-24 months |CMIN           |BANGLADESH   |3       |         0|     24|   256|
|6-24 months |CMIN           |BANGLADESH   |3       |         1|      2|   256|
|6-24 months |CMIN           |BANGLADESH   |4       |         0|     11|   256|
|6-24 months |CMIN           |BANGLADESH   |4       |         1|      1|   256|
|6-24 months |CMIN           |BANGLADESH   |5       |         0|     15|   256|
|6-24 months |CMIN           |BANGLADESH   |5       |         1|      4|   256|
|6-24 months |CMIN           |BANGLADESH   |6       |         0|     11|   256|
|6-24 months |CMIN           |BANGLADESH   |6       |         1|      0|   256|
|6-24 months |CMIN           |BANGLADESH   |7       |         0|     12|   256|
|6-24 months |CMIN           |BANGLADESH   |7       |         1|      1|   256|
|6-24 months |CMIN           |BANGLADESH   |8       |         0|     24|   256|
|6-24 months |CMIN           |BANGLADESH   |8       |         1|      2|   256|
|6-24 months |CMIN           |BANGLADESH   |9       |         0|     18|   256|
|6-24 months |CMIN           |BANGLADESH   |9       |         1|      0|   256|
|6-24 months |CMIN           |BANGLADESH   |10      |         0|     25|   256|
|6-24 months |CMIN           |BANGLADESH   |10      |         1|      3|   256|
|6-24 months |CMIN           |BANGLADESH   |11      |         0|     21|   256|
|6-24 months |CMIN           |BANGLADESH   |11      |         1|      3|   256|
|6-24 months |CMIN           |BANGLADESH   |12      |         0|     25|   256|
|6-24 months |CMIN           |BANGLADESH   |12      |         1|      3|   256|
|6-24 months |CONTENT        |PERU         |1       |         0|     10|   215|
|6-24 months |CONTENT        |PERU         |1       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |2       |         0|     15|   215|
|6-24 months |CONTENT        |PERU         |2       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |3       |         0|     27|   215|
|6-24 months |CONTENT        |PERU         |3       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |4       |         0|     24|   215|
|6-24 months |CONTENT        |PERU         |4       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |5       |         0|     13|   215|
|6-24 months |CONTENT        |PERU         |5       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |6       |         0|      8|   215|
|6-24 months |CONTENT        |PERU         |6       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |7       |         0|     41|   215|
|6-24 months |CONTENT        |PERU         |7       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |8       |         0|     17|   215|
|6-24 months |CONTENT        |PERU         |8       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |9       |         0|     23|   215|
|6-24 months |CONTENT        |PERU         |9       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |10      |         0|     15|   215|
|6-24 months |CONTENT        |PERU         |10      |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |11      |         0|     10|   215|
|6-24 months |CONTENT        |PERU         |11      |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |12      |         0|     12|   215|
|6-24 months |CONTENT        |PERU         |12      |         1|      0|   215|
|6-24 months |EE             |PAKISTAN     |1       |         0|     90|   377|
|6-24 months |EE             |PAKISTAN     |1       |         1|     14|   377|
|6-24 months |EE             |PAKISTAN     |2       |         0|     54|   377|
|6-24 months |EE             |PAKISTAN     |2       |         1|      6|   377|
|6-24 months |EE             |PAKISTAN     |3       |         0|     34|   377|
|6-24 months |EE             |PAKISTAN     |3       |         1|      1|   377|
|6-24 months |EE             |PAKISTAN     |4       |         0|     18|   377|
|6-24 months |EE             |PAKISTAN     |4       |         1|      1|   377|
|6-24 months |EE             |PAKISTAN     |5       |         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |5       |         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |6       |         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |6       |         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |7       |         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |7       |         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |8       |         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |8       |         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |9       |         0|      0|   377|
|6-24 months |EE             |PAKISTAN     |9       |         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |10      |         0|      2|   377|
|6-24 months |EE             |PAKISTAN     |10      |         1|      0|   377|
|6-24 months |EE             |PAKISTAN     |11      |         0|     78|   377|
|6-24 months |EE             |PAKISTAN     |11      |         1|      6|   377|
|6-24 months |EE             |PAKISTAN     |12      |         0|     68|   377|
|6-24 months |EE             |PAKISTAN     |12      |         1|      5|   377|
|6-24 months |GMS-Nepal      |NEPAL        |1       |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |1       |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |2       |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |2       |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |3       |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |3       |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |4       |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |4       |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |5       |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |5       |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |6       |         0|    116|   597|
|6-24 months |GMS-Nepal      |NEPAL        |6       |         1|     18|   597|
|6-24 months |GMS-Nepal      |NEPAL        |7       |         0|    204|   597|
|6-24 months |GMS-Nepal      |NEPAL        |7       |         1|     35|   597|
|6-24 months |GMS-Nepal      |NEPAL        |8       |         0|    197|   597|
|6-24 months |GMS-Nepal      |NEPAL        |8       |         1|     27|   597|
|6-24 months |GMS-Nepal      |NEPAL        |9       |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |9       |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |10      |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |10      |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |11      |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |11      |         1|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |12      |         0|      0|   597|
|6-24 months |GMS-Nepal      |NEPAL        |12      |         1|      0|   597|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |         0|     24|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |         0|     25|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |         0|     21|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |         0|     22|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |         0|     28|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |         0|     16|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |         0|     16|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |         0|     15|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |         0|     14|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |         1|      0|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |         0|     25|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |         0|     15|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |         1|      1|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |         0|     31|   256|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |         1|      0|   256|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         0|    156|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |         1|     24|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |         0|     66|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |         1|      7|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |         0|     85|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |         1|     10|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |         0|    104|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |         1|     16|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |         0|     94|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |         1|     13|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |         0|     75|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |         1|     13|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |         0|     84|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |         1|      7|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |         0|    155|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |         1|     19|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |         0|    161|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |         1|     32|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |         0|    174|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |         1|     21|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |         0|    175|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |         1|     17|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |         0|    140|  1669|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |         1|     21|  1669|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |         0|   1518| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |         1|     88| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |         0|   1275| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |         1|     77| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |         0|   1560| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |         1|     83| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |         0|   1231| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |         1|     73| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |         0|    986| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |         1|     56| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |         0|    985| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |         1|     53| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |         0|    953| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |         1|     57| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |         0|   1200| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |         1|     67| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |         0|   1354| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |         1|     85| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |         0|   1272| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |         1|     95| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |         0|   1290| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |         1|     90| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |         0|   1273| 15794|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |         1|     73| 15794|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |         0|      0|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |         1|      0|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |         0|    849|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |         1|     69|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |         0|    854|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |         1|     94|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |         0|    673|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |         1|     64|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |         0|    565|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |         1|     45|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |         0|    405|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |         1|     35|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |         0|    468|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |         1|     31|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |         0|    555|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |         1|     47|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |         0|    352|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |         1|     33|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |         0|    131|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |         1|      8|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |         0|      0|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |         1|      0|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |         0|      0|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |         1|      0|  5278|
|6-24 months |Keneba         |GAMBIA       |1       |         0|    238|  2444|
|6-24 months |Keneba         |GAMBIA       |1       |         1|      9|  2444|
|6-24 months |Keneba         |GAMBIA       |2       |         0|    222|  2444|
|6-24 months |Keneba         |GAMBIA       |2       |         1|     12|  2444|
|6-24 months |Keneba         |GAMBIA       |3       |         0|    253|  2444|
|6-24 months |Keneba         |GAMBIA       |3       |         1|     17|  2444|
|6-24 months |Keneba         |GAMBIA       |4       |         0|    144|  2444|
|6-24 months |Keneba         |GAMBIA       |4       |         1|     10|  2444|
|6-24 months |Keneba         |GAMBIA       |5       |         0|    156|  2444|
|6-24 months |Keneba         |GAMBIA       |5       |         1|      9|  2444|
|6-24 months |Keneba         |GAMBIA       |6       |         0|    146|  2444|
|6-24 months |Keneba         |GAMBIA       |6       |         1|     11|  2444|
|6-24 months |Keneba         |GAMBIA       |7       |         0|    104|  2444|
|6-24 months |Keneba         |GAMBIA       |7       |         1|      6|  2444|
|6-24 months |Keneba         |GAMBIA       |8       |         0|    179|  2444|
|6-24 months |Keneba         |GAMBIA       |8       |         1|     18|  2444|
|6-24 months |Keneba         |GAMBIA       |9       |         0|    194|  2444|
|6-24 months |Keneba         |GAMBIA       |9       |         1|     15|  2444|
|6-24 months |Keneba         |GAMBIA       |10      |         0|    271|  2444|
|6-24 months |Keneba         |GAMBIA       |10      |         1|     12|  2444|
|6-24 months |Keneba         |GAMBIA       |11      |         0|    195|  2444|
|6-24 months |Keneba         |GAMBIA       |11      |         1|      8|  2444|
|6-24 months |Keneba         |GAMBIA       |12      |         0|    197|  2444|
|6-24 months |Keneba         |GAMBIA       |12      |         1|     18|  2444|
|6-24 months |LCNI-5         |MALAWI       |1       |         0|     45|   719|
|6-24 months |LCNI-5         |MALAWI       |1       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |2       |         0|     41|   719|
|6-24 months |LCNI-5         |MALAWI       |2       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |3       |         0|     19|   719|
|6-24 months |LCNI-5         |MALAWI       |3       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |4       |         0|     37|   719|
|6-24 months |LCNI-5         |MALAWI       |4       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |5       |         0|     39|   719|
|6-24 months |LCNI-5         |MALAWI       |5       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |6       |         0|     31|   719|
|6-24 months |LCNI-5         |MALAWI       |6       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |7       |         0|     54|   719|
|6-24 months |LCNI-5         |MALAWI       |7       |         1|      1|   719|
|6-24 months |LCNI-5         |MALAWI       |8       |         0|     78|   719|
|6-24 months |LCNI-5         |MALAWI       |8       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |9       |         0|     77|   719|
|6-24 months |LCNI-5         |MALAWI       |9       |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |10      |         0|    126|   719|
|6-24 months |LCNI-5         |MALAWI       |10      |         1|      1|   719|
|6-24 months |LCNI-5         |MALAWI       |11      |         0|     97|   719|
|6-24 months |LCNI-5         |MALAWI       |11      |         1|      0|   719|
|6-24 months |LCNI-5         |MALAWI       |12      |         0|     69|   719|
|6-24 months |LCNI-5         |MALAWI       |12      |         1|      4|   719|
|6-24 months |MAL-ED         |INDIA        |1       |         0|     16|   241|
|6-24 months |MAL-ED         |INDIA        |1       |         1|      4|   241|
|6-24 months |MAL-ED         |INDIA        |2       |         0|     24|   241|
|6-24 months |MAL-ED         |INDIA        |2       |         1|      0|   241|
|6-24 months |MAL-ED         |INDIA        |3       |         0|     22|   241|
|6-24 months |MAL-ED         |INDIA        |3       |         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |4       |         0|     12|   241|
|6-24 months |MAL-ED         |INDIA        |4       |         1|      0|   241|
|6-24 months |MAL-ED         |INDIA        |5       |         0|      3|   241|
|6-24 months |MAL-ED         |INDIA        |5       |         1|      0|   241|
|6-24 months |MAL-ED         |INDIA        |6       |         0|     15|   241|
|6-24 months |MAL-ED         |INDIA        |6       |         1|      4|   241|
|6-24 months |MAL-ED         |INDIA        |7       |         0|      8|   241|
|6-24 months |MAL-ED         |INDIA        |7       |         1|      1|   241|
|6-24 months |MAL-ED         |INDIA        |8       |         0|     26|   241|
|6-24 months |MAL-ED         |INDIA        |8       |         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |9       |         0|     20|   241|
|6-24 months |MAL-ED         |INDIA        |9       |         1|      1|   241|
|6-24 months |MAL-ED         |INDIA        |10      |         0|     36|   241|
|6-24 months |MAL-ED         |INDIA        |10      |         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |11      |         0|     24|   241|
|6-24 months |MAL-ED         |INDIA        |11      |         1|      2|   241|
|6-24 months |MAL-ED         |INDIA        |12      |         0|     14|   241|
|6-24 months |MAL-ED         |INDIA        |12      |         1|      3|   241|
|6-24 months |MAL-ED         |BANGLADESH   |1       |         0|     20|   248|
|6-24 months |MAL-ED         |BANGLADESH   |1       |         1|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |2       |         0|     18|   248|
|6-24 months |MAL-ED         |BANGLADESH   |2       |         1|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |3       |         0|     24|   248|
|6-24 months |MAL-ED         |BANGLADESH   |3       |         1|      2|   248|
|6-24 months |MAL-ED         |BANGLADESH   |4       |         0|     15|   248|
|6-24 months |MAL-ED         |BANGLADESH   |4       |         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |5       |         0|     18|   248|
|6-24 months |MAL-ED         |BANGLADESH   |5       |         1|      2|   248|
|6-24 months |MAL-ED         |BANGLADESH   |6       |         0|      7|   248|
|6-24 months |MAL-ED         |BANGLADESH   |6       |         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |7       |         0|     11|   248|
|6-24 months |MAL-ED         |BANGLADESH   |7       |         1|      2|   248|
|6-24 months |MAL-ED         |BANGLADESH   |8       |         0|     26|   248|
|6-24 months |MAL-ED         |BANGLADESH   |8       |         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |9       |         0|     25|   248|
|6-24 months |MAL-ED         |BANGLADESH   |9       |         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |10      |         0|     24|   248|
|6-24 months |MAL-ED         |BANGLADESH   |10      |         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |11      |         0|     18|   248|
|6-24 months |MAL-ED         |BANGLADESH   |11      |         1|      0|   248|
|6-24 months |MAL-ED         |BANGLADESH   |12      |         0|     29|   248|
|6-24 months |MAL-ED         |BANGLADESH   |12      |         1|      2|   248|
|6-24 months |MAL-ED         |PERU         |1       |         0|     46|   284|
|6-24 months |MAL-ED         |PERU         |1       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |2       |         0|     17|   284|
|6-24 months |MAL-ED         |PERU         |2       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |3       |         0|     25|   284|
|6-24 months |MAL-ED         |PERU         |3       |         1|      1|   284|
|6-24 months |MAL-ED         |PERU         |4       |         0|     18|   284|
|6-24 months |MAL-ED         |PERU         |4       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |5       |         0|     21|   284|
|6-24 months |MAL-ED         |PERU         |5       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |6       |         0|     15|   284|
|6-24 months |MAL-ED         |PERU         |6       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |7       |         0|     22|   284|
|6-24 months |MAL-ED         |PERU         |7       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |8       |         0|     26|   284|
|6-24 months |MAL-ED         |PERU         |8       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |9       |         0|     16|   284|
|6-24 months |MAL-ED         |PERU         |9       |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |10      |         0|     23|   284|
|6-24 months |MAL-ED         |PERU         |10      |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |11      |         0|     34|   284|
|6-24 months |MAL-ED         |PERU         |11      |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |12      |         0|     20|   284|
|6-24 months |MAL-ED         |PERU         |12      |         1|      0|   284|
|6-24 months |MAL-ED         |NEPAL        |1       |         0|     23|   238|
|6-24 months |MAL-ED         |NEPAL        |1       |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |2       |         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |2       |         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |3       |         0|     18|   238|
|6-24 months |MAL-ED         |NEPAL        |3       |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |4       |         0|     18|   238|
|6-24 months |MAL-ED         |NEPAL        |4       |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |5       |         0|     23|   238|
|6-24 months |MAL-ED         |NEPAL        |5       |         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |6       |         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |6       |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |7       |         0|     19|   238|
|6-24 months |MAL-ED         |NEPAL        |7       |         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |8       |         0|     30|   238|
|6-24 months |MAL-ED         |NEPAL        |8       |         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |9       |         0|     13|   238|
|6-24 months |MAL-ED         |NEPAL        |9       |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |10      |         0|     13|   238|
|6-24 months |MAL-ED         |NEPAL        |10      |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |11      |         0|     21|   238|
|6-24 months |MAL-ED         |NEPAL        |11      |         1|      0|   238|
|6-24 months |MAL-ED         |NEPAL        |12      |         0|     18|   238|
|6-24 months |MAL-ED         |NEPAL        |12      |         1|      0|   238|
|6-24 months |MAL-ED         |BRAZIL       |1       |         0|     13|   218|
|6-24 months |MAL-ED         |BRAZIL       |1       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |2       |         0|     28|   218|
|6-24 months |MAL-ED         |BRAZIL       |2       |         1|      1|   218|
|6-24 months |MAL-ED         |BRAZIL       |3       |         0|     20|   218|
|6-24 months |MAL-ED         |BRAZIL       |3       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |4       |         0|     11|   218|
|6-24 months |MAL-ED         |BRAZIL       |4       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |5       |         0|     15|   218|
|6-24 months |MAL-ED         |BRAZIL       |5       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |6       |         0|      8|   218|
|6-24 months |MAL-ED         |BRAZIL       |6       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |7       |         0|     18|   218|
|6-24 months |MAL-ED         |BRAZIL       |7       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |8       |         0|     28|   218|
|6-24 months |MAL-ED         |BRAZIL       |8       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |9       |         0|     34|   218|
|6-24 months |MAL-ED         |BRAZIL       |9       |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |10      |         0|     12|   218|
|6-24 months |MAL-ED         |BRAZIL       |10      |         1|      1|   218|
|6-24 months |MAL-ED         |BRAZIL       |11      |         0|     13|   218|
|6-24 months |MAL-ED         |BRAZIL       |11      |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |12      |         0|     16|   218|
|6-24 months |MAL-ED         |BRAZIL       |12      |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |1       |         0|     19|   253|
|6-24 months |MAL-ED         |TANZANIA     |1       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |2       |         0|     28|   253|
|6-24 months |MAL-ED         |TANZANIA     |2       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |3       |         0|     19|   253|
|6-24 months |MAL-ED         |TANZANIA     |3       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |4       |         0|     16|   253|
|6-24 months |MAL-ED         |TANZANIA     |4       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |5       |         0|     24|   253|
|6-24 months |MAL-ED         |TANZANIA     |5       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |6       |         0|     20|   253|
|6-24 months |MAL-ED         |TANZANIA     |6       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |7       |         0|     24|   253|
|6-24 months |MAL-ED         |TANZANIA     |7       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |8       |         0|     10|   253|
|6-24 months |MAL-ED         |TANZANIA     |8       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |9       |         0|     16|   253|
|6-24 months |MAL-ED         |TANZANIA     |9       |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |10      |         0|     19|   253|
|6-24 months |MAL-ED         |TANZANIA     |10      |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |11      |         0|     26|   253|
|6-24 months |MAL-ED         |TANZANIA     |11      |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |12      |         0|     32|   253|
|6-24 months |MAL-ED         |TANZANIA     |12      |         1|      0|   253|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|     34|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |         0|     23|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |         0|     18|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |         0|     16|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |         0|     14|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |         0|     13|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |         0|     26|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |         0|     14|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |         0|     21|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |         0|     23|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |         0|     23|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |         0|     48|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |         1|      0|   275|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |         0|     58|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |         1|      5|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |         0|     41|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |         1|      3|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |         0|     51|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |         1|      4|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |         0|     40|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |         1|      4|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |         0|     43|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |         1|      6|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |         0|     33|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |         1|      5|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |         0|     26|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |         1|      3|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |         0|     37|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |         1|      4|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |         0|     41|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |         1|      3|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |         0|     34|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |         1|      3|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |         0|     46|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |         1|      2|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |         0|     37|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |         1|      5|   534|
|6-24 months |PROBIT         |BELARUS      |1       |         0|    933| 16583|
|6-24 months |PROBIT         |BELARUS      |1       |         1|     11| 16583|
|6-24 months |PROBIT         |BELARUS      |2       |         0|    978| 16583|
|6-24 months |PROBIT         |BELARUS      |2       |         1|      4| 16583|
|6-24 months |PROBIT         |BELARUS      |3       |         0|   1102| 16583|
|6-24 months |PROBIT         |BELARUS      |3       |         1|     12| 16583|
|6-24 months |PROBIT         |BELARUS      |4       |         0|   1140| 16583|
|6-24 months |PROBIT         |BELARUS      |4       |         1|     10| 16583|
|6-24 months |PROBIT         |BELARUS      |5       |         0|   1084| 16583|
|6-24 months |PROBIT         |BELARUS      |5       |         1|      7| 16583|
|6-24 months |PROBIT         |BELARUS      |6       |         0|   1201| 16583|
|6-24 months |PROBIT         |BELARUS      |6       |         1|     11| 16583|
|6-24 months |PROBIT         |BELARUS      |7       |         0|   1526| 16583|
|6-24 months |PROBIT         |BELARUS      |7       |         1|     18| 16583|
|6-24 months |PROBIT         |BELARUS      |8       |         0|   1575| 16583|
|6-24 months |PROBIT         |BELARUS      |8       |         1|      9| 16583|
|6-24 months |PROBIT         |BELARUS      |9       |         0|   1624| 16583|
|6-24 months |PROBIT         |BELARUS      |9       |         1|     14| 16583|
|6-24 months |PROBIT         |BELARUS      |10      |         0|   1761| 16583|
|6-24 months |PROBIT         |BELARUS      |10      |         1|     12| 16583|
|6-24 months |PROBIT         |BELARUS      |11      |         0|   1676| 16583|
|6-24 months |PROBIT         |BELARUS      |11      |         1|     10| 16583|
|6-24 months |PROBIT         |BELARUS      |12      |         0|   1849| 16583|
|6-24 months |PROBIT         |BELARUS      |12      |         1|     16| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |1       |         0|     46|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1       |         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |2       |         0|     32|   641|
|6-24 months |PROVIDE        |BANGLADESH   |2       |         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |3       |         0|     47|   641|
|6-24 months |PROVIDE        |BANGLADESH   |3       |         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |4       |         0|     36|   641|
|6-24 months |PROVIDE        |BANGLADESH   |4       |         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |5       |         0|     53|   641|
|6-24 months |PROVIDE        |BANGLADESH   |5       |         1|      2|   641|
|6-24 months |PROVIDE        |BANGLADESH   |6       |         0|     82|   641|
|6-24 months |PROVIDE        |BANGLADESH   |6       |         1|      1|   641|
|6-24 months |PROVIDE        |BANGLADESH   |7       |         0|     70|   641|
|6-24 months |PROVIDE        |BANGLADESH   |7       |         1|      7|   641|
|6-24 months |PROVIDE        |BANGLADESH   |8       |         0|     56|   641|
|6-24 months |PROVIDE        |BANGLADESH   |8       |         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |9       |         0|     77|   641|
|6-24 months |PROVIDE        |BANGLADESH   |9       |         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |10      |         0|     66|   641|
|6-24 months |PROVIDE        |BANGLADESH   |10      |         1|      2|   641|
|6-24 months |PROVIDE        |BANGLADESH   |11      |         0|     35|   641|
|6-24 months |PROVIDE        |BANGLADESH   |11      |         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |12      |         0|     26|   641|
|6-24 months |PROVIDE        |BANGLADESH   |12      |         1|      0|   641|
|6-24 months |ResPak         |PAKISTAN     |1       |         0|      8|   256|
|6-24 months |ResPak         |PAKISTAN     |1       |         1|      1|   256|
|6-24 months |ResPak         |PAKISTAN     |2       |         0|     13|   256|
|6-24 months |ResPak         |PAKISTAN     |2       |         1|      1|   256|
|6-24 months |ResPak         |PAKISTAN     |3       |         0|     25|   256|
|6-24 months |ResPak         |PAKISTAN     |3       |         1|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |4       |         0|     26|   256|
|6-24 months |ResPak         |PAKISTAN     |4       |         1|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |5       |         0|     30|   256|
|6-24 months |ResPak         |PAKISTAN     |5       |         1|      6|   256|
|6-24 months |ResPak         |PAKISTAN     |6       |         0|     36|   256|
|6-24 months |ResPak         |PAKISTAN     |6       |         1|      7|   256|
|6-24 months |ResPak         |PAKISTAN     |7       |         0|     25|   256|
|6-24 months |ResPak         |PAKISTAN     |7       |         1|      1|   256|
|6-24 months |ResPak         |PAKISTAN     |8       |         0|     36|   256|
|6-24 months |ResPak         |PAKISTAN     |8       |         1|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |9       |         0|     13|   256|
|6-24 months |ResPak         |PAKISTAN     |9       |         1|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |10      |         0|      6|   256|
|6-24 months |ResPak         |PAKISTAN     |10      |         1|      1|   256|
|6-24 months |ResPak         |PAKISTAN     |11      |         0|      4|   256|
|6-24 months |ResPak         |PAKISTAN     |11      |         1|      0|   256|
|6-24 months |ResPak         |PAKISTAN     |12      |         0|      0|   256|
|6-24 months |ResPak         |PAKISTAN     |12      |         1|      1|   256|
|6-24 months |SAS-CompFeed   |INDIA        |1       |         0|     86|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |1       |         1|     11|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |2       |         0|     55|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |2       |         1|     10|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |3       |         0|     60|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |3       |         1|      1|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |4       |         0|     56|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |4       |         1|      6|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |5       |         0|    102|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |5       |         1|      9|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |6       |         0|    101|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |6       |         1|      7|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |7       |         0|    100|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |7       |         1|      9|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |8       |         0|    172|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |8       |         1|     14|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |9       |         0|    155|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |9       |         1|     17|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |10      |         0|    149|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |10      |         1|     15|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |11      |         0|    120|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |11      |         1|      8|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |12      |         0|     94|  1364|
|6-24 months |SAS-CompFeed   |INDIA        |12      |         1|      7|  1364|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |         0|     13|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |         1|      2|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |         0|     39|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |         1|      3|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |         0|     14|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |         1|      5|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |         0|      0|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |         1|      2|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |         0|     12|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |         1|      1|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |         0|     15|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |         1|      7|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |         0|     30|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |         1|      3|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |         0|     58|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |         1|     10|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |         0|     41|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |         1|      7|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |         0|     35|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |         1|     10|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |         0|     24|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |         1|      5|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |         0|     29|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |         1|     10|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |         0|    143|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |         1|      0|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |         0|    162|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |         1|      4|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |         0|    138|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |         1|      1|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |         0|    184|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |         1|      5|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |         0|    169|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |         1|      6|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |         0|    161|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |         1|      3|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |         0|    204|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |         1|      6|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |         0|    198|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |         1|      8|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |         0|    176|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |         1|      5|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |         0|    214|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |         1|     13|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |         0|    178|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |         1|      4|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |         0|    181|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |         1|      3|  2166|
|6-24 months |Vellore Crypto |INDIA        |1       |         0|     38|   410|
|6-24 months |Vellore Crypto |INDIA        |1       |         1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |2       |         0|     16|   410|
|6-24 months |Vellore Crypto |INDIA        |2       |         1|      1|   410|
|6-24 months |Vellore Crypto |INDIA        |3       |         0|     34|   410|
|6-24 months |Vellore Crypto |INDIA        |3       |         1|      1|   410|
|6-24 months |Vellore Crypto |INDIA        |4       |         0|     13|   410|
|6-24 months |Vellore Crypto |INDIA        |4       |         1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |5       |         0|     20|   410|
|6-24 months |Vellore Crypto |INDIA        |5       |         1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |6       |         0|     43|   410|
|6-24 months |Vellore Crypto |INDIA        |6       |         1|      4|   410|
|6-24 months |Vellore Crypto |INDIA        |7       |         0|     33|   410|
|6-24 months |Vellore Crypto |INDIA        |7       |         1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |8       |         0|     42|   410|
|6-24 months |Vellore Crypto |INDIA        |8       |         1|      8|   410|
|6-24 months |Vellore Crypto |INDIA        |9       |         0|     24|   410|
|6-24 months |Vellore Crypto |INDIA        |9       |         1|      7|   410|
|6-24 months |Vellore Crypto |INDIA        |10      |         0|     38|   410|
|6-24 months |Vellore Crypto |INDIA        |10      |         1|      4|   410|
|6-24 months |Vellore Crypto |INDIA        |11      |         0|     28|   410|
|6-24 months |Vellore Crypto |INDIA        |11      |         1|      9|   410|
|6-24 months |Vellore Crypto |INDIA        |12      |         0|     33|   410|
|6-24 months |Vellore Crypto |INDIA        |12      |         1|      4|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |         0|    854|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |         1|     16|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |         0|    705|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |         1|     12|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |         0|    847|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |         1|      7|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |         0|    678|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |         1|      6|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |         0|    691|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |         1|     12|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |         0|    776|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |         1|     14|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |         0|    822|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |         1|     19|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |         0|    827|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |         1|     19|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |         0|    813|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |         1|     12|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |         0|    676|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |         1|     19|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |         0|    820|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |         1|     17|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |         0|    841|  9517|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |         1|     14|  9517|


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
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
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
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
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


