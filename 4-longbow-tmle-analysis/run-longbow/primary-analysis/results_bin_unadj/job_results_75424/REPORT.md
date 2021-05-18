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

**Outcome Variable:** ever_stunted

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

|agecat      |studyid        |country      |brthmon | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |            0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |            1|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |            0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |            1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |            0|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |            1|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |            0|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |            1|     44|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |            0|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |            1|     36|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |            0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |            1|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |            0|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |            1|     40|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |            0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |            1|     21|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |            0|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |            1|     17|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |            0|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |            1|     19|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |            0|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |            1|     43|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |            0|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |            1|     24|   373|
|0-24 months |CMIN           |BANGLADESH   |1       |            0|      4|   276|
|0-24 months |CMIN           |BANGLADESH   |1       |            1|     25|   276|
|0-24 months |CMIN           |BANGLADESH   |2       |            0|      3|   276|
|0-24 months |CMIN           |BANGLADESH   |2       |            1|     24|   276|
|0-24 months |CMIN           |BANGLADESH   |3       |            0|      4|   276|
|0-24 months |CMIN           |BANGLADESH   |3       |            1|     23|   276|
|0-24 months |CMIN           |BANGLADESH   |4       |            0|      2|   276|
|0-24 months |CMIN           |BANGLADESH   |4       |            1|     10|   276|
|0-24 months |CMIN           |BANGLADESH   |5       |            0|      2|   276|
|0-24 months |CMIN           |BANGLADESH   |5       |            1|     19|   276|
|0-24 months |CMIN           |BANGLADESH   |6       |            0|      2|   276|
|0-24 months |CMIN           |BANGLADESH   |6       |            1|      9|   276|
|0-24 months |CMIN           |BANGLADESH   |7       |            0|      1|   276|
|0-24 months |CMIN           |BANGLADESH   |7       |            1|     13|   276|
|0-24 months |CMIN           |BANGLADESH   |8       |            0|      6|   276|
|0-24 months |CMIN           |BANGLADESH   |8       |            1|     25|   276|
|0-24 months |CMIN           |BANGLADESH   |9       |            0|      3|   276|
|0-24 months |CMIN           |BANGLADESH   |9       |            1|     16|   276|
|0-24 months |CMIN           |BANGLADESH   |10      |            0|      6|   276|
|0-24 months |CMIN           |BANGLADESH   |10      |            1|     24|   276|
|0-24 months |CMIN           |BANGLADESH   |11      |            0|      5|   276|
|0-24 months |CMIN           |BANGLADESH   |11      |            1|     22|   276|
|0-24 months |CMIN           |BANGLADESH   |12      |            0|      3|   276|
|0-24 months |CMIN           |BANGLADESH   |12      |            1|     25|   276|
|0-24 months |CONTENT        |PERU         |1       |            0|      9|   215|
|0-24 months |CONTENT        |PERU         |1       |            1|      1|   215|
|0-24 months |CONTENT        |PERU         |2       |            0|     12|   215|
|0-24 months |CONTENT        |PERU         |2       |            1|      3|   215|
|0-24 months |CONTENT        |PERU         |3       |            0|     19|   215|
|0-24 months |CONTENT        |PERU         |3       |            1|      8|   215|
|0-24 months |CONTENT        |PERU         |4       |            0|     17|   215|
|0-24 months |CONTENT        |PERU         |4       |            1|      7|   215|
|0-24 months |CONTENT        |PERU         |5       |            0|     10|   215|
|0-24 months |CONTENT        |PERU         |5       |            1|      3|   215|
|0-24 months |CONTENT        |PERU         |6       |            0|      5|   215|
|0-24 months |CONTENT        |PERU         |6       |            1|      3|   215|
|0-24 months |CONTENT        |PERU         |7       |            0|     31|   215|
|0-24 months |CONTENT        |PERU         |7       |            1|     10|   215|
|0-24 months |CONTENT        |PERU         |8       |            0|     15|   215|
|0-24 months |CONTENT        |PERU         |8       |            1|      2|   215|
|0-24 months |CONTENT        |PERU         |9       |            0|     17|   215|
|0-24 months |CONTENT        |PERU         |9       |            1|      6|   215|
|0-24 months |CONTENT        |PERU         |10      |            0|     13|   215|
|0-24 months |CONTENT        |PERU         |10      |            1|      2|   215|
|0-24 months |CONTENT        |PERU         |11      |            0|      6|   215|
|0-24 months |CONTENT        |PERU         |11      |            1|      4|   215|
|0-24 months |CONTENT        |PERU         |12      |            0|      8|   215|
|0-24 months |CONTENT        |PERU         |12      |            1|      4|   215|
|0-24 months |EE             |PAKISTAN     |1       |            0|     14|   379|
|0-24 months |EE             |PAKISTAN     |1       |            1|     93|   379|
|0-24 months |EE             |PAKISTAN     |2       |            0|      6|   379|
|0-24 months |EE             |PAKISTAN     |2       |            1|     54|   379|
|0-24 months |EE             |PAKISTAN     |3       |            0|      2|   379|
|0-24 months |EE             |PAKISTAN     |3       |            1|     32|   379|
|0-24 months |EE             |PAKISTAN     |4       |            0|      3|   379|
|0-24 months |EE             |PAKISTAN     |4       |            1|     16|   379|
|0-24 months |EE             |PAKISTAN     |5       |            0|      0|   379|
|0-24 months |EE             |PAKISTAN     |5       |            1|      0|   379|
|0-24 months |EE             |PAKISTAN     |6       |            0|      0|   379|
|0-24 months |EE             |PAKISTAN     |6       |            1|      0|   379|
|0-24 months |EE             |PAKISTAN     |7       |            0|      0|   379|
|0-24 months |EE             |PAKISTAN     |7       |            1|      0|   379|
|0-24 months |EE             |PAKISTAN     |8       |            0|      0|   379|
|0-24 months |EE             |PAKISTAN     |8       |            1|      0|   379|
|0-24 months |EE             |PAKISTAN     |9       |            0|      0|   379|
|0-24 months |EE             |PAKISTAN     |9       |            1|      0|   379|
|0-24 months |EE             |PAKISTAN     |10      |            0|      0|   379|
|0-24 months |EE             |PAKISTAN     |10      |            1|      2|   379|
|0-24 months |EE             |PAKISTAN     |11      |            0|      9|   379|
|0-24 months |EE             |PAKISTAN     |11      |            1|     75|   379|
|0-24 months |EE             |PAKISTAN     |12      |            0|      7|   379|
|0-24 months |EE             |PAKISTAN     |12      |            1|     66|   379|
|0-24 months |GMS-Nepal      |NEPAL        |1       |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |1       |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2       |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2       |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3       |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3       |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |4       |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |4       |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |5       |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |5       |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |6       |            0|     57|   698|
|0-24 months |GMS-Nepal      |NEPAL        |6       |            1|    100|   698|
|0-24 months |GMS-Nepal      |NEPAL        |7       |            0|    103|   698|
|0-24 months |GMS-Nepal      |NEPAL        |7       |            1|    179|   698|
|0-24 months |GMS-Nepal      |NEPAL        |8       |            0|     92|   698|
|0-24 months |GMS-Nepal      |NEPAL        |8       |            1|    167|   698|
|0-24 months |GMS-Nepal      |NEPAL        |9       |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |9       |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |10      |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |10      |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |11      |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |11      |            1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |12      |            0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |12      |            1|      0|   698|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |            0|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |            1|     13|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |            0|     14|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |            1|     14|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |            0|      7|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |            1|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |            0|     12|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |            1|     19|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |            0|     15|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |            1|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |            0|     12|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |            1|      8|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |            0|      9|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |            1|      9|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |            0|     11|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |            1|     11|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |            0|      8|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |            1|      9|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |            0|     11|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |            1|     21|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |            0|      9|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |            1|     11|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |            0|     23|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |            1|     18|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            0|    209|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            1|    112|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            0|    125|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            1|     53|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            0|    132|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            1|     74|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            0|    126|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            1|     79|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            0|    132|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            1|     85|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            0|    123|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            1|     59|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            0|    126|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            1|     66|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            0|    236|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            1|    116|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            0|    235|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            1|    150|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            0|    233|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            1|    131|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            0|    225|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            1|    120|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            0|    180|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            1|    138|  3265|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |            0|   1203| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |            1|   1291| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |            0|   1048| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |            1|   1020| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |            0|   1238| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |            1|   1143| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |            0|    937| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |            1|    877| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |            0|    684| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |            1|    708| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |            0|    731| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |            1|    712| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |            0|    761| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |            1|    767| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |            0|   1053| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |            1|   1073| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |            0|   1490| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |            1|   1422| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |            0|   1490| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |            1|   1462| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |            0|   1475| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |            1|   1490| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |            0|   1619| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |            1|   1507| 27201|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |            0|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |            1|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |            0|    395|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |            1|    555|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |            0|    382|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |            1|    602|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |            0|    325|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |            1|    436|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |            0|    256|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |            1|    370|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |            0|    193|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |            1|    264|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |            0|    218|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |            1|    294|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |            0|    268|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |            1|    349|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |            0|    176|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |            1|    215|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |            0|     65|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |            1|     76|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |            0|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |            1|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |            0|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |            1|      0|  5439|
|0-24 months |Keneba         |GAMBIA       |1       |            0|    144|  2915|
|0-24 months |Keneba         |GAMBIA       |1       |            1|    161|  2915|
|0-24 months |Keneba         |GAMBIA       |2       |            0|    130|  2915|
|0-24 months |Keneba         |GAMBIA       |2       |            1|    141|  2915|
|0-24 months |Keneba         |GAMBIA       |3       |            0|    146|  2915|
|0-24 months |Keneba         |GAMBIA       |3       |            1|    162|  2915|
|0-24 months |Keneba         |GAMBIA       |4       |            0|    102|  2915|
|0-24 months |Keneba         |GAMBIA       |4       |            1|     86|  2915|
|0-24 months |Keneba         |GAMBIA       |5       |            0|    116|  2915|
|0-24 months |Keneba         |GAMBIA       |5       |            1|     86|  2915|
|0-24 months |Keneba         |GAMBIA       |6       |            0|     95|  2915|
|0-24 months |Keneba         |GAMBIA       |6       |            1|     89|  2915|
|0-24 months |Keneba         |GAMBIA       |7       |            0|     68|  2915|
|0-24 months |Keneba         |GAMBIA       |7       |            1|     71|  2915|
|0-24 months |Keneba         |GAMBIA       |8       |            0|    108|  2915|
|0-24 months |Keneba         |GAMBIA       |8       |            1|    126|  2915|
|0-24 months |Keneba         |GAMBIA       |9       |            0|    114|  2915|
|0-24 months |Keneba         |GAMBIA       |9       |            1|    137|  2915|
|0-24 months |Keneba         |GAMBIA       |10      |            0|    160|  2915|
|0-24 months |Keneba         |GAMBIA       |10      |            1|    183|  2915|
|0-24 months |Keneba         |GAMBIA       |11      |            0|    116|  2915|
|0-24 months |Keneba         |GAMBIA       |11      |            1|    129|  2915|
|0-24 months |Keneba         |GAMBIA       |12      |            0|    122|  2915|
|0-24 months |Keneba         |GAMBIA       |12      |            1|    123|  2915|
|0-24 months |LCNI-5         |MALAWI       |1       |            0|     13|   840|
|0-24 months |LCNI-5         |MALAWI       |1       |            1|     36|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |            0|     22|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |            1|     23|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |            0|     13|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |            1|      9|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |            0|     11|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |            1|     28|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |            0|     18|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |            1|     27|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |            0|     14|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |            1|     22|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |            0|     24|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |            1|     43|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |            0|     35|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |            1|     57|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |            0|     30|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |            1|     65|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |            0|     53|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |            1|     91|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |            0|     38|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |            1|     77|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |            0|     34|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |            1|     57|   840|
|0-24 months |MAL-ED         |INDIA        |1       |            0|     11|   251|
|0-24 months |MAL-ED         |INDIA        |1       |            1|      9|   251|
|0-24 months |MAL-ED         |INDIA        |2       |            0|     14|   251|
|0-24 months |MAL-ED         |INDIA        |2       |            1|     12|   251|
|0-24 months |MAL-ED         |INDIA        |3       |            0|     10|   251|
|0-24 months |MAL-ED         |INDIA        |3       |            1|     15|   251|
|0-24 months |MAL-ED         |INDIA        |4       |            0|      5|   251|
|0-24 months |MAL-ED         |INDIA        |4       |            1|      7|   251|
|0-24 months |MAL-ED         |INDIA        |5       |            0|      0|   251|
|0-24 months |MAL-ED         |INDIA        |5       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA        |6       |            0|      8|   251|
|0-24 months |MAL-ED         |INDIA        |6       |            1|     13|   251|
|0-24 months |MAL-ED         |INDIA        |7       |            0|      5|   251|
|0-24 months |MAL-ED         |INDIA        |7       |            1|      6|   251|
|0-24 months |MAL-ED         |INDIA        |8       |            0|      8|   251|
|0-24 months |MAL-ED         |INDIA        |8       |            1|     22|   251|
|0-24 months |MAL-ED         |INDIA        |9       |            0|      8|   251|
|0-24 months |MAL-ED         |INDIA        |9       |            1|     13|   251|
|0-24 months |MAL-ED         |INDIA        |10      |            0|     15|   251|
|0-24 months |MAL-ED         |INDIA        |10      |            1|     24|   251|
|0-24 months |MAL-ED         |INDIA        |11      |            0|      9|   251|
|0-24 months |MAL-ED         |INDIA        |11      |            1|     17|   251|
|0-24 months |MAL-ED         |INDIA        |12      |            0|      6|   251|
|0-24 months |MAL-ED         |INDIA        |12      |            1|     11|   251|
|0-24 months |MAL-ED         |BANGLADESH   |1       |            0|      8|   265|
|0-24 months |MAL-ED         |BANGLADESH   |1       |            1|     13|   265|
|0-24 months |MAL-ED         |BANGLADESH   |2       |            0|      6|   265|
|0-24 months |MAL-ED         |BANGLADESH   |2       |            1|     14|   265|
|0-24 months |MAL-ED         |BANGLADESH   |3       |            0|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH   |3       |            1|     23|   265|
|0-24 months |MAL-ED         |BANGLADESH   |4       |            0|      6|   265|
|0-24 months |MAL-ED         |BANGLADESH   |4       |            1|     11|   265|
|0-24 months |MAL-ED         |BANGLADESH   |5       |            0|      5|   265|
|0-24 months |MAL-ED         |BANGLADESH   |5       |            1|     17|   265|
|0-24 months |MAL-ED         |BANGLADESH   |6       |            0|      1|   265|
|0-24 months |MAL-ED         |BANGLADESH   |6       |            1|      7|   265|
|0-24 months |MAL-ED         |BANGLADESH   |7       |            0|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH   |7       |            1|     10|   265|
|0-24 months |MAL-ED         |BANGLADESH   |8       |            0|     16|   265|
|0-24 months |MAL-ED         |BANGLADESH   |8       |            1|     13|   265|
|0-24 months |MAL-ED         |BANGLADESH   |9       |            0|      8|   265|
|0-24 months |MAL-ED         |BANGLADESH   |9       |            1|     20|   265|
|0-24 months |MAL-ED         |BANGLADESH   |10      |            0|     18|   265|
|0-24 months |MAL-ED         |BANGLADESH   |10      |            1|      9|   265|
|0-24 months |MAL-ED         |BANGLADESH   |11      |            0|     10|   265|
|0-24 months |MAL-ED         |BANGLADESH   |11      |            1|      9|   265|
|0-24 months |MAL-ED         |BANGLADESH   |12      |            0|     17|   265|
|0-24 months |MAL-ED         |BANGLADESH   |12      |            1|     16|   265|
|0-24 months |MAL-ED         |PERU         |1       |            0|     17|   303|
|0-24 months |MAL-ED         |PERU         |1       |            1|     34|   303|
|0-24 months |MAL-ED         |PERU         |2       |            0|      7|   303|
|0-24 months |MAL-ED         |PERU         |2       |            1|     11|   303|
|0-24 months |MAL-ED         |PERU         |3       |            0|     12|   303|
|0-24 months |MAL-ED         |PERU         |3       |            1|     15|   303|
|0-24 months |MAL-ED         |PERU         |4       |            0|     11|   303|
|0-24 months |MAL-ED         |PERU         |4       |            1|      8|   303|
|0-24 months |MAL-ED         |PERU         |5       |            0|      7|   303|
|0-24 months |MAL-ED         |PERU         |5       |            1|     17|   303|
|0-24 months |MAL-ED         |PERU         |6       |            0|      5|   303|
|0-24 months |MAL-ED         |PERU         |6       |            1|     12|   303|
|0-24 months |MAL-ED         |PERU         |7       |            0|     11|   303|
|0-24 months |MAL-ED         |PERU         |7       |            1|     13|   303|
|0-24 months |MAL-ED         |PERU         |8       |            0|      8|   303|
|0-24 months |MAL-ED         |PERU         |8       |            1|     18|   303|
|0-24 months |MAL-ED         |PERU         |9       |            0|      5|   303|
|0-24 months |MAL-ED         |PERU         |9       |            1|     12|   303|
|0-24 months |MAL-ED         |PERU         |10      |            0|      9|   303|
|0-24 months |MAL-ED         |PERU         |10      |            1|     14|   303|
|0-24 months |MAL-ED         |PERU         |11      |            0|     17|   303|
|0-24 months |MAL-ED         |PERU         |11      |            1|     19|   303|
|0-24 months |MAL-ED         |PERU         |12      |            0|      6|   303|
|0-24 months |MAL-ED         |PERU         |12      |            1|     15|   303|
|0-24 months |MAL-ED         |NEPAL        |1       |            0|     16|   240|
|0-24 months |MAL-ED         |NEPAL        |1       |            1|      7|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |            0|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |            1|      8|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |            0|      8|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |            1|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |            0|     11|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |            1|      7|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |            0|     14|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |            1|     11|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |            0|     11|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |            1|      8|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |            0|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |            1|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |            0|     23|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |            1|      8|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |            0|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |            1|      3|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |            0|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |            1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |            0|     17|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |            1|      4|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |            0|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |            1|      6|   240|
|0-24 months |MAL-ED         |BRAZIL       |1       |            0|     11|   233|
|0-24 months |MAL-ED         |BRAZIL       |1       |            1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |            0|     18|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |            1|     12|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |            0|     17|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |            1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |            0|      9|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |            1|      6|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |            0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |            1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |            0|      6|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |            0|     12|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |            1|      6|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |            0|     21|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |            1|      9|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |            0|     30|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |            1|      7|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |            0|     10|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |            1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |            0|     11|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |            0|     12|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |            1|      6|   233|
|0-24 months |MAL-ED         |TANZANIA     |1       |            0|      2|   262|
|0-24 months |MAL-ED         |TANZANIA     |1       |            1|     17|   262|
|0-24 months |MAL-ED         |TANZANIA     |2       |            0|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |2       |            1|     24|   262|
|0-24 months |MAL-ED         |TANZANIA     |3       |            0|      0|   262|
|0-24 months |MAL-ED         |TANZANIA     |3       |            1|     20|   262|
|0-24 months |MAL-ED         |TANZANIA     |4       |            0|      1|   262|
|0-24 months |MAL-ED         |TANZANIA     |4       |            1|     15|   262|
|0-24 months |MAL-ED         |TANZANIA     |5       |            0|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |5       |            1|     20|   262|
|0-24 months |MAL-ED         |TANZANIA     |6       |            0|      2|   262|
|0-24 months |MAL-ED         |TANZANIA     |6       |            1|     18|   262|
|0-24 months |MAL-ED         |TANZANIA     |7       |            0|      6|   262|
|0-24 months |MAL-ED         |TANZANIA     |7       |            1|     18|   262|
|0-24 months |MAL-ED         |TANZANIA     |8       |            0|      3|   262|
|0-24 months |MAL-ED         |TANZANIA     |8       |            1|      7|   262|
|0-24 months |MAL-ED         |TANZANIA     |9       |            0|      3|   262|
|0-24 months |MAL-ED         |TANZANIA     |9       |            1|     15|   262|
|0-24 months |MAL-ED         |TANZANIA     |10      |            0|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |10      |            1|     16|   262|
|0-24 months |MAL-ED         |TANZANIA     |11      |            0|      7|   262|
|0-24 months |MAL-ED         |TANZANIA     |11      |            1|     20|   262|
|0-24 months |MAL-ED         |TANZANIA     |12      |            0|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |12      |            1|     32|   262|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |            0|     22|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |            1|     23|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |            0|      9|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |            1|     17|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |            0|      8|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |            1|     11|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |            0|      7|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |            1|     12|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |            0|      8|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |            1|      7|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |            0|     10|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |            1|      7|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |            0|     10|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |            1|     17|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |            0|      7|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |            1|      8|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |            0|      9|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |            1|     13|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |            0|     10|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |            1|     19|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |            0|     11|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |            1|     16|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |            0|     27|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |            1|     26|   314|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |            0|     25|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |            1|     48|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |            0|     19|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |            1|     34|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |            0|     22|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |            1|     40|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |            0|     13|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |            1|     40|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |            0|     18|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |            1|     37|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |            0|     19|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |            1|     30|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |            0|      7|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |            1|     27|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |            0|     16|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |            1|     34|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |            0|     22|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |            1|     32|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |            0|     14|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |            1|     27|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |            0|     21|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |            1|     35|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |            0|     15|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |            1|     34|   629|
|0-24 months |PROBIT         |BELARUS      |1       |            0|    818| 16897|
|0-24 months |PROBIT         |BELARUS      |1       |            1|    144| 16897|
|0-24 months |PROBIT         |BELARUS      |2       |            0|    874| 16897|
|0-24 months |PROBIT         |BELARUS      |2       |            1|    122| 16897|
|0-24 months |PROBIT         |BELARUS      |3       |            0|   1016| 16897|
|0-24 months |PROBIT         |BELARUS      |3       |            1|    122| 16897|
|0-24 months |PROBIT         |BELARUS      |4       |            0|   1014| 16897|
|0-24 months |PROBIT         |BELARUS      |4       |            1|    157| 16897|
|0-24 months |PROBIT         |BELARUS      |5       |            0|    978| 16897|
|0-24 months |PROBIT         |BELARUS      |5       |            1|    142| 16897|
|0-24 months |PROBIT         |BELARUS      |6       |            0|   1065| 16897|
|0-24 months |PROBIT         |BELARUS      |6       |            1|    167| 16897|
|0-24 months |PROBIT         |BELARUS      |7       |            0|   1375| 16897|
|0-24 months |PROBIT         |BELARUS      |7       |            1|    206| 16897|
|0-24 months |PROBIT         |BELARUS      |8       |            0|   1400| 16897|
|0-24 months |PROBIT         |BELARUS      |8       |            1|    210| 16897|
|0-24 months |PROBIT         |BELARUS      |9       |            0|   1495| 16897|
|0-24 months |PROBIT         |BELARUS      |9       |            1|    179| 16897|
|0-24 months |PROBIT         |BELARUS      |10      |            0|   1592| 16897|
|0-24 months |PROBIT         |BELARUS      |10      |            1|    209| 16897|
|0-24 months |PROBIT         |BELARUS      |11      |            0|   1490| 16897|
|0-24 months |PROBIT         |BELARUS      |11      |            1|    225| 16897|
|0-24 months |PROBIT         |BELARUS      |12      |            0|   1627| 16897|
|0-24 months |PROBIT         |BELARUS      |12      |            1|    270| 16897|
|0-24 months |PROVIDE        |BANGLADESH   |1       |            0|     23|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1       |            1|     25|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |            0|     24|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |            1|     14|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |            0|     26|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |            1|     26|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |            0|     25|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |            1|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |            0|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |            1|     25|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |            0|     41|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |            1|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |            0|     53|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |            1|     36|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |            0|     36|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |            1|     24|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |            0|     44|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |            1|     39|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |            0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |            1|     29|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |            0|     26|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |            1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |            0|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |            1|     13|   700|
|0-24 months |ResPak         |PAKISTAN     |1       |            0|      1|   284|
|0-24 months |ResPak         |PAKISTAN     |1       |            1|      9|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |            0|      7|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |            1|      7|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |            0|     12|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |            1|     23|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |            0|     14|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |            1|     19|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |            0|     12|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |            1|     30|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |            0|     18|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |            1|     28|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |            0|      7|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |            1|     21|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |            0|     17|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |            1|     27|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |            0|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |            1|     14|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |            0|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |            1|      5|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |            0|      1|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |            1|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |            0|      1|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |            1|      1|   284|
|0-24 months |SAS-CompFeed   |INDIA        |1       |            0|     28|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |1       |            1|     83|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |2       |            0|     21|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |2       |            1|     52|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |3       |            0|     22|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |3       |            1|     47|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |4       |            0|     28|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |4       |            1|     38|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |5       |            0|     40|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |5       |            1|     83|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |6       |            0|     44|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |6       |            1|     84|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |7       |            0|     32|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |7       |            1|     95|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |8       |            0|     67|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |8       |            1|    137|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |9       |            0|     50|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |9       |            1|    139|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |10      |            0|     60|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |10      |            1|    117|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |11      |            0|     42|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |11      |            1|     99|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |12      |            0|     39|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |12      |            1|     84|  1531|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |            0|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |            1|     15|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |            0|     11|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |            1|     33|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |            0|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |            1|     18|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |            0|      1|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |            1|      2|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |            0|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |            1|     10|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |            0|      2|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |            1|     20|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |            0|      5|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |            1|     31|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |            0|     13|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |            1|     60|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |            0|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |            1|     45|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |            0|      8|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |            1|     47|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |            0|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |            1|     29|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |            0|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |            1|     36|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |            0|    106|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |            1|     61|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |            0|    123|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |            1|     66|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |            0|    106|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |            1|     53|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |            0|    136|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |            1|     73|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |            0|    114|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |            1|     76|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |            0|    116|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |            1|     62|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |            0|    142|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |            1|     91|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |            0|    153|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |            1|     69|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |            0|    140|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |            1|     60|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |            0|    165|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |            1|     82|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |            0|    123|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |            1|     73|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |            0|    143|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |            1|     63|  2396|
|0-24 months |Vellore Crypto |INDIA        |1       |            0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |            1|     27|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |            0|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |            1|     12|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |            0|      7|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |            1|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |            0|      4|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |            1|     12|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |            0|      4|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |            1|     18|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |            0|     17|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |            1|     30|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |            0|      9|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |            1|     26|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |            0|     23|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |            1|     27|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |            0|     11|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |            1|     20|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |            0|     24|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |            1|     18|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |            0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |            1|     23|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |            0|     15|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |            1|     22|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |            0|    795| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |            1|    522| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |            0|    611| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |            1|    453| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |            0|    690| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |            1|    530| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |            0|    558| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |            1|    427| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |            0|    596| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |            1|    437| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |            0|    709| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |            1|    494| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |            0|    706| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |            1|    501| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |            0|    751| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |            1|    540| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |            0|    748| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |            1|    519| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |            0|    622| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |            1|    438| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |            0|    721| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |            1|    491| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |            0|    686| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |            1|    514| 14059|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |            0|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |            1|     14|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |            0|      7|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |            1|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |            0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |            1|     15|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |            0|     26|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |            1|     22|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |            0|     19|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |            1|     19|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |            0|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |            1|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |            0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |            1|     26|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |            0|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |            1|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |            0|     12|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |            1|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |            0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |            1|      7|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |            0|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |            1|     25|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |            0|     12|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |            1|     14|   368|
|0-6 months  |CMIN           |BANGLADESH   |1       |            0|      8|   276|
|0-6 months  |CMIN           |BANGLADESH   |1       |            1|     21|   276|
|0-6 months  |CMIN           |BANGLADESH   |2       |            0|     12|   276|
|0-6 months  |CMIN           |BANGLADESH   |2       |            1|     15|   276|
|0-6 months  |CMIN           |BANGLADESH   |3       |            0|     13|   276|
|0-6 months  |CMIN           |BANGLADESH   |3       |            1|     14|   276|
|0-6 months  |CMIN           |BANGLADESH   |4       |            0|      5|   276|
|0-6 months  |CMIN           |BANGLADESH   |4       |            1|      7|   276|
|0-6 months  |CMIN           |BANGLADESH   |5       |            0|      8|   276|
|0-6 months  |CMIN           |BANGLADESH   |5       |            1|     13|   276|
|0-6 months  |CMIN           |BANGLADESH   |6       |            0|      8|   276|
|0-6 months  |CMIN           |BANGLADESH   |6       |            1|      3|   276|
|0-6 months  |CMIN           |BANGLADESH   |7       |            0|      6|   276|
|0-6 months  |CMIN           |BANGLADESH   |7       |            1|      8|   276|
|0-6 months  |CMIN           |BANGLADESH   |8       |            0|     13|   276|
|0-6 months  |CMIN           |BANGLADESH   |8       |            1|     18|   276|
|0-6 months  |CMIN           |BANGLADESH   |9       |            0|      9|   276|
|0-6 months  |CMIN           |BANGLADESH   |9       |            1|     10|   276|
|0-6 months  |CMIN           |BANGLADESH   |10      |            0|     14|   276|
|0-6 months  |CMIN           |BANGLADESH   |10      |            1|     16|   276|
|0-6 months  |CMIN           |BANGLADESH   |11      |            0|     12|   276|
|0-6 months  |CMIN           |BANGLADESH   |11      |            1|     15|   276|
|0-6 months  |CMIN           |BANGLADESH   |12      |            0|     11|   276|
|0-6 months  |CMIN           |BANGLADESH   |12      |            1|     17|   276|
|0-6 months  |CONTENT        |PERU         |1       |            0|      9|   215|
|0-6 months  |CONTENT        |PERU         |1       |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |2       |            0|     15|   215|
|0-6 months  |CONTENT        |PERU         |2       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3       |            0|     23|   215|
|0-6 months  |CONTENT        |PERU         |3       |            1|      4|   215|
|0-6 months  |CONTENT        |PERU         |4       |            0|     21|   215|
|0-6 months  |CONTENT        |PERU         |4       |            1|      3|   215|
|0-6 months  |CONTENT        |PERU         |5       |            0|     12|   215|
|0-6 months  |CONTENT        |PERU         |5       |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |6       |            0|      7|   215|
|0-6 months  |CONTENT        |PERU         |6       |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |7       |            0|     37|   215|
|0-6 months  |CONTENT        |PERU         |7       |            1|      4|   215|
|0-6 months  |CONTENT        |PERU         |8       |            0|     16|   215|
|0-6 months  |CONTENT        |PERU         |8       |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |9       |            0|     19|   215|
|0-6 months  |CONTENT        |PERU         |9       |            1|      4|   215|
|0-6 months  |CONTENT        |PERU         |10      |            0|     14|   215|
|0-6 months  |CONTENT        |PERU         |10      |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |11      |            0|      6|   215|
|0-6 months  |CONTENT        |PERU         |11      |            1|      4|   215|
|0-6 months  |CONTENT        |PERU         |12      |            0|      9|   215|
|0-6 months  |CONTENT        |PERU         |12      |            1|      3|   215|
|0-6 months  |EE             |PAKISTAN     |1       |            0|     33|   379|
|0-6 months  |EE             |PAKISTAN     |1       |            1|     74|   379|
|0-6 months  |EE             |PAKISTAN     |2       |            0|     13|   379|
|0-6 months  |EE             |PAKISTAN     |2       |            1|     47|   379|
|0-6 months  |EE             |PAKISTAN     |3       |            0|      6|   379|
|0-6 months  |EE             |PAKISTAN     |3       |            1|     28|   379|
|0-6 months  |EE             |PAKISTAN     |4       |            0|      6|   379|
|0-6 months  |EE             |PAKISTAN     |4       |            1|     13|   379|
|0-6 months  |EE             |PAKISTAN     |5       |            0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |5       |            1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |6       |            0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |6       |            1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |7       |            0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |7       |            1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |8       |            0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |8       |            1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |9       |            0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |9       |            1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |10      |            0|      1|   379|
|0-6 months  |EE             |PAKISTAN     |10      |            1|      1|   379|
|0-6 months  |EE             |PAKISTAN     |11      |            0|     20|   379|
|0-6 months  |EE             |PAKISTAN     |11      |            1|     64|   379|
|0-6 months  |EE             |PAKISTAN     |12      |            0|     16|   379|
|0-6 months  |EE             |PAKISTAN     |12      |            1|     57|   379|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |            0|    113|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |            1|     44|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |            0|    190|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |            1|     92|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |            0|    173|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |            1|     86|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |            1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |            0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |            1|      0|   698|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |            0|     24|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |            1|      6|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |            0|     21|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |            1|      6|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |            0|     11|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |            1|     12|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |            0|     15|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |            1|     15|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |            0|     23|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |            1|      9|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |            0|     17|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |            1|      2|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |            0|     10|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |            1|      8|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |            0|     13|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |            1|      8|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |            0|     12|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |            1|      5|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |            0|     17|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |            1|     10|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |            0|     12|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |            1|      5|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |            0|     27|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |            1|      7|   295|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |            0|   1420| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |            1|   1065| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |            0|   1250| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |            1|    814| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |            0|   1472| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |            1|    903| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |            0|   1107| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |            1|    704| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |            0|    838| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |            1|    553| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |            0|    889| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |            1|    549| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |            0|    888| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |            1|    635| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |            0|   1220| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |            1|    901| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |            0|   1689| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |            1|   1214| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |            0|   1688| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |            1|   1261| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |            0|   1645| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |            1|   1314| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |            0|   1827| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |            1|   1290| 27136|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |            0|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |            1|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |            0|    563|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |            1|    312|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |            0|    577|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |            1|    330|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |            0|    463|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |            1|    259|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |            0|    385|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |            1|    198|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |            0|    283|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |            1|    158|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |            0|    326|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |            1|    164|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |            0|    395|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |            1|    202|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |            0|    247|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |            1|    127|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |            0|    105|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |            1|     34|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |            0|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |            1|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |            0|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |            1|      0|  5128|
|0-6 months  |Keneba         |GAMBIA       |1       |            0|    176|  2465|
|0-6 months  |Keneba         |GAMBIA       |1       |            1|     81|  2465|
|0-6 months  |Keneba         |GAMBIA       |2       |            0|    171|  2465|
|0-6 months  |Keneba         |GAMBIA       |2       |            1|     70|  2465|
|0-6 months  |Keneba         |GAMBIA       |3       |            0|    184|  2465|
|0-6 months  |Keneba         |GAMBIA       |3       |            1|     94|  2465|
|0-6 months  |Keneba         |GAMBIA       |4       |            0|    108|  2465|
|0-6 months  |Keneba         |GAMBIA       |4       |            1|     48|  2465|
|0-6 months  |Keneba         |GAMBIA       |5       |            0|    124|  2465|
|0-6 months  |Keneba         |GAMBIA       |5       |            1|     40|  2465|
|0-6 months  |Keneba         |GAMBIA       |6       |            0|    107|  2465|
|0-6 months  |Keneba         |GAMBIA       |6       |            1|     45|  2465|
|0-6 months  |Keneba         |GAMBIA       |7       |            0|     78|  2465|
|0-6 months  |Keneba         |GAMBIA       |7       |            1|     34|  2465|
|0-6 months  |Keneba         |GAMBIA       |8       |            0|    132|  2465|
|0-6 months  |Keneba         |GAMBIA       |8       |            1|     61|  2465|
|0-6 months  |Keneba         |GAMBIA       |9       |            0|    140|  2465|
|0-6 months  |Keneba         |GAMBIA       |9       |            1|     71|  2465|
|0-6 months  |Keneba         |GAMBIA       |10      |            0|    193|  2465|
|0-6 months  |Keneba         |GAMBIA       |10      |            1|     94|  2465|
|0-6 months  |Keneba         |GAMBIA       |11      |            0|    133|  2465|
|0-6 months  |Keneba         |GAMBIA       |11      |            1|     70|  2465|
|0-6 months  |Keneba         |GAMBIA       |12      |            0|    149|  2465|
|0-6 months  |Keneba         |GAMBIA       |12      |            1|     62|  2465|
|0-6 months  |LCNI-5         |MALAWI       |1       |            0|      6|   272|
|0-6 months  |LCNI-5         |MALAWI       |1       |            1|      5|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |            0|      9|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |            1|      5|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |            0|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |            0|      6|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |            1|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |            0|      6|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |            1|      6|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |            0|      6|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |            1|      3|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |            0|     12|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |            1|      4|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |            0|     18|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |            1|      6|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |            0|     25|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |            1|     14|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |            0|     31|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |            1|     13|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |            0|     26|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |            1|     18|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |            0|     28|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |            1|     21|   272|
|0-6 months  |MAL-ED         |INDIA        |1       |            0|     16|   251|
|0-6 months  |MAL-ED         |INDIA        |1       |            1|      4|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |            0|     21|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |            1|      5|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |            0|     17|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |            1|      8|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |            0|      7|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |            1|      5|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |            0|      3|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |            1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |            0|      9|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |            1|     12|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |            0|      9|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |            1|      2|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |            0|     17|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |            1|     13|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |            0|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |            1|     10|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |            0|     25|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |            1|     14|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |            0|     17|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |            1|      9|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |            0|     12|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |            1|      5|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |            0|     15|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |            1|      6|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |            0|     12|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |            1|      8|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |            0|     16|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |            1|     11|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |            0|      8|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |            1|      9|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |            0|     11|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |            1|     11|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |            0|      2|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |            1|      6|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |            0|      9|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |            1|      5|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |            0|     19|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |            1|     10|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |            0|     18|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |            1|     10|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |            0|     23|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |            1|      4|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |            0|     12|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |            1|      7|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |            0|     25|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |            1|      8|   265|
|0-6 months  |MAL-ED         |PERU         |1       |            0|     26|   303|
|0-6 months  |MAL-ED         |PERU         |1       |            1|     25|   303|
|0-6 months  |MAL-ED         |PERU         |2       |            0|     12|   303|
|0-6 months  |MAL-ED         |PERU         |2       |            1|      6|   303|
|0-6 months  |MAL-ED         |PERU         |3       |            0|     19|   303|
|0-6 months  |MAL-ED         |PERU         |3       |            1|      8|   303|
|0-6 months  |MAL-ED         |PERU         |4       |            0|     13|   303|
|0-6 months  |MAL-ED         |PERU         |4       |            1|      6|   303|
|0-6 months  |MAL-ED         |PERU         |5       |            0|     13|   303|
|0-6 months  |MAL-ED         |PERU         |5       |            1|     11|   303|
|0-6 months  |MAL-ED         |PERU         |6       |            0|      7|   303|
|0-6 months  |MAL-ED         |PERU         |6       |            1|     10|   303|
|0-6 months  |MAL-ED         |PERU         |7       |            0|     14|   303|
|0-6 months  |MAL-ED         |PERU         |7       |            1|     10|   303|
|0-6 months  |MAL-ED         |PERU         |8       |            0|     16|   303|
|0-6 months  |MAL-ED         |PERU         |8       |            1|     10|   303|
|0-6 months  |MAL-ED         |PERU         |9       |            0|      9|   303|
|0-6 months  |MAL-ED         |PERU         |9       |            1|      8|   303|
|0-6 months  |MAL-ED         |PERU         |10      |            0|     12|   303|
|0-6 months  |MAL-ED         |PERU         |10      |            1|     11|   303|
|0-6 months  |MAL-ED         |PERU         |11      |            0|     23|   303|
|0-6 months  |MAL-ED         |PERU         |11      |            1|     13|   303|
|0-6 months  |MAL-ED         |PERU         |12      |            0|     10|   303|
|0-6 months  |MAL-ED         |PERU         |12      |            1|     11|   303|
|0-6 months  |MAL-ED         |NEPAL        |1       |            0|     21|   240|
|0-6 months  |MAL-ED         |NEPAL        |1       |            1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |            0|     16|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |            1|      4|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |            0|     12|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |            1|      6|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |            0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |            1|      4|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |            0|     19|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |            1|      6|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |            0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |            1|      5|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |            0|     16|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |            1|      4|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |            0|     27|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |            1|      4|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |            0|     11|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |            1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |            0|     13|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |            1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |            0|     20|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |            1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |            0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |            1|      4|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1       |            0|     11|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1       |            1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |            0|     21|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |            1|      9|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |            0|     17|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |            1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |            0|     11|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |            1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |            0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |            1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |            0|      6|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |            1|      2|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |            0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |            1|      5|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |            0|     23|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |            1|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |            0|     31|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |            1|      6|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |            0|     10|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |            1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |            0|     12|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |            0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |            1|      5|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1       |            0|      8|   262|
|0-6 months  |MAL-ED         |TANZANIA     |1       |            1|     11|   262|
|0-6 months  |MAL-ED         |TANZANIA     |2       |            0|     15|   262|
|0-6 months  |MAL-ED         |TANZANIA     |2       |            1|     13|   262|
|0-6 months  |MAL-ED         |TANZANIA     |3       |            0|     12|   262|
|0-6 months  |MAL-ED         |TANZANIA     |3       |            1|      8|   262|
|0-6 months  |MAL-ED         |TANZANIA     |4       |            0|      9|   262|
|0-6 months  |MAL-ED         |TANZANIA     |4       |            1|      7|   262|
|0-6 months  |MAL-ED         |TANZANIA     |5       |            0|     17|   262|
|0-6 months  |MAL-ED         |TANZANIA     |5       |            1|      7|   262|
|0-6 months  |MAL-ED         |TANZANIA     |6       |            0|     10|   262|
|0-6 months  |MAL-ED         |TANZANIA     |6       |            1|     10|   262|
|0-6 months  |MAL-ED         |TANZANIA     |7       |            0|     14|   262|
|0-6 months  |MAL-ED         |TANZANIA     |7       |            1|     10|   262|
|0-6 months  |MAL-ED         |TANZANIA     |8       |            0|      5|   262|
|0-6 months  |MAL-ED         |TANZANIA     |8       |            1|      5|   262|
|0-6 months  |MAL-ED         |TANZANIA     |9       |            0|     11|   262|
|0-6 months  |MAL-ED         |TANZANIA     |9       |            1|      7|   262|
|0-6 months  |MAL-ED         |TANZANIA     |10      |            0|     12|   262|
|0-6 months  |MAL-ED         |TANZANIA     |10      |            1|      8|   262|
|0-6 months  |MAL-ED         |TANZANIA     |11      |            0|     18|   262|
|0-6 months  |MAL-ED         |TANZANIA     |11      |            1|      9|   262|
|0-6 months  |MAL-ED         |TANZANIA     |12      |            0|     22|   262|
|0-6 months  |MAL-ED         |TANZANIA     |12      |            1|     14|   262|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |            0|     31|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |            1|     14|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |            0|     17|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |            1|      9|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |            0|     13|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |            1|      6|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |            0|     10|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |            1|      9|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |            0|     12|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |            1|      3|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |            0|     11|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |            1|      6|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |            0|     14|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |            1|     13|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |            0|      9|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |            1|      6|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |            0|     10|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |            1|     12|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |            0|     16|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |            1|     13|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |            0|     17|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |            1|     10|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |            0|     38|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |            1|     15|   314|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |            0|     42|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |            1|     31|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |            0|     38|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |            1|     15|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |            0|     44|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |            1|     18|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |            0|     37|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |            1|     16|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |            0|     37|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |            1|     18|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |            0|     31|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |            1|     18|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |            0|     18|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |            1|     16|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |            0|     36|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |            1|     14|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |            0|     36|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |            1|     18|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |            0|     24|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |            1|     17|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |            0|     36|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |            1|     20|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |            0|     30|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |            1|     19|   629|
|0-6 months  |PROBIT         |BELARUS      |1       |            0|    891| 16892|
|0-6 months  |PROBIT         |BELARUS      |1       |            1|     71| 16892|
|0-6 months  |PROBIT         |BELARUS      |2       |            0|    943| 16892|
|0-6 months  |PROBIT         |BELARUS      |2       |            1|     53| 16892|
|0-6 months  |PROBIT         |BELARUS      |3       |            0|   1069| 16892|
|0-6 months  |PROBIT         |BELARUS      |3       |            1|     69| 16892|
|0-6 months  |PROBIT         |BELARUS      |4       |            0|   1087| 16892|
|0-6 months  |PROBIT         |BELARUS      |4       |            1|     83| 16892|
|0-6 months  |PROBIT         |BELARUS      |5       |            0|   1051| 16892|
|0-6 months  |PROBIT         |BELARUS      |5       |            1|     69| 16892|
|0-6 months  |PROBIT         |BELARUS      |6       |            0|   1144| 16892|
|0-6 months  |PROBIT         |BELARUS      |6       |            1|     88| 16892|
|0-6 months  |PROBIT         |BELARUS      |7       |            0|   1465| 16892|
|0-6 months  |PROBIT         |BELARUS      |7       |            1|    115| 16892|
|0-6 months  |PROBIT         |BELARUS      |8       |            0|   1497| 16892|
|0-6 months  |PROBIT         |BELARUS      |8       |            1|    110| 16892|
|0-6 months  |PROBIT         |BELARUS      |9       |            0|   1569| 16892|
|0-6 months  |PROBIT         |BELARUS      |9       |            1|    105| 16892|
|0-6 months  |PROBIT         |BELARUS      |10      |            0|   1679| 16892|
|0-6 months  |PROBIT         |BELARUS      |10      |            1|    122| 16892|
|0-6 months  |PROBIT         |BELARUS      |11      |            0|   1581| 16892|
|0-6 months  |PROBIT         |BELARUS      |11      |            1|    134| 16892|
|0-6 months  |PROBIT         |BELARUS      |12      |            0|   1757| 16892|
|0-6 months  |PROBIT         |BELARUS      |12      |            1|    140| 16892|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |            0|     34|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |            1|     14|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |            0|     31|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |            1|      7|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |            0|     42|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |            1|     10|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |            0|     29|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |            1|     11|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |            0|     43|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |            1|     16|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |            0|     63|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |            1|     26|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |            0|     66|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |            1|     23|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |            0|     47|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |            1|     13|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |            0|     62|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |            1|     21|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |            0|     60|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |            1|     17|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |            0|     33|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |            1|      4|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |            0|     22|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |            1|      6|   700|
|0-6 months  |ResPak         |PAKISTAN     |1       |            0|      2|   282|
|0-6 months  |ResPak         |PAKISTAN     |1       |            1|      8|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |            0|      8|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |            1|      6|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |            0|     12|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |            1|     23|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |            0|     15|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |            1|     18|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |            0|     15|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |            1|     26|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |            0|     21|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |            1|     25|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |            0|     11|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |            1|     17|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |            0|     17|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |            1|     26|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |            0|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |            1|     13|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |            0|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |            1|      3|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |            0|      2|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |            1|      2|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |            0|      1|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |            1|      1|   282|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |            0|     56|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |            1|     55|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |            0|     41|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |            1|     32|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |            0|     40|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |            1|     29|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |            0|     46|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |            1|     20|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |            0|     75|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |            1|     48|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |            0|     69|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |            1|     59|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |            0|     70|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |            1|     57|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |            0|    118|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |            1|     86|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |            0|    101|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |            1|     87|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |            0|    106|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |            1|     71|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |            0|     77|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |            1|     64|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |            0|     80|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |            1|     41|  1528|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |            0|     11|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |            1|      7|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |            0|     30|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |            1|     14|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |            0|     14|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |            1|      8|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |            0|      3|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |            1|      0|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |            0|      6|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |            1|      7|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |            0|      9|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |            1|     13|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |            0|     21|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |            1|     15|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |            0|     44|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |            1|     27|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |            0|     38|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |            1|     19|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |            0|     36|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |            1|     19|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |            0|     17|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |            1|     16|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |            0|     25|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |            1|     17|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |            0|    136|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |            1|     31|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |            0|    151|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |            1|     38|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |            0|    131|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |            1|     28|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |            0|    172|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |            1|     37|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |            0|    143|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |            1|     47|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |            0|    140|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |            1|     38|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |            0|    178|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |            1|     55|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |            0|    184|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |            1|     38|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |            0|    167|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |            1|     33|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |            0|    209|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |            1|     38|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |            0|    148|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |            1|     48|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |            0|    170|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |            1|     36|  2396|
|0-6 months  |Vellore Crypto |INDIA        |1       |            0|     25|   410|
|0-6 months  |Vellore Crypto |INDIA        |1       |            1|     16|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |            0|     10|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |            1|      7|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |            0|     17|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |            1|     18|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |            0|      9|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |            1|      7|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |            0|      8|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |            1|     14|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |            0|     27|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |            1|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |            0|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |            1|     15|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |            0|     28|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |            1|     22|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |            0|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |            1|     11|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |            0|     34|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |            1|      8|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |            0|     17|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |            1|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |            0|     21|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |            1|     16|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |            0|    981| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |            1|    335| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |            0|    784| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |            1|    279| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |            0|    888| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |            1|    329| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |            0|    717| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |            1|    266| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |            0|    755| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |            1|    277| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |            0|    877| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |            1|    325| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |            0|    891| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |            1|    312| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |            0|    935| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |            1|    355| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |            0|    944| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |            1|    322| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |            0|    804| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |            1|    255| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |            0|    918| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |            1|    294| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |            0|    916| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |            1|    283| 14042|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |            0|      1|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |            1|     16|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |            0|      1|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |            1|      7|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |            0|      3|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |            1|     13|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |            0|      4|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |            1|     22|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |            0|      3|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |            1|     17|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |            0|      1|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |            1|     12|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |            0|      2|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |            1|     14|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |            0|      1|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |            1|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |            0|      4|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |            1|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |            0|      4|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |            1|     12|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |            0|      2|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |            1|     18|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |            0|      2|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |            1|     10|   185|
|6-24 months |CMIN           |BANGLADESH   |1       |            0|      3|   110|
|6-24 months |CMIN           |BANGLADESH   |1       |            1|      4|   110|
|6-24 months |CMIN           |BANGLADESH   |2       |            0|      2|   110|
|6-24 months |CMIN           |BANGLADESH   |2       |            1|      9|   110|
|6-24 months |CMIN           |BANGLADESH   |3       |            0|      3|   110|
|6-24 months |CMIN           |BANGLADESH   |3       |            1|      9|   110|
|6-24 months |CMIN           |BANGLADESH   |4       |            0|      2|   110|
|6-24 months |CMIN           |BANGLADESH   |4       |            1|      3|   110|
|6-24 months |CMIN           |BANGLADESH   |5       |            0|      2|   110|
|6-24 months |CMIN           |BANGLADESH   |5       |            1|      6|   110|
|6-24 months |CMIN           |BANGLADESH   |6       |            0|      2|   110|
|6-24 months |CMIN           |BANGLADESH   |6       |            1|      6|   110|
|6-24 months |CMIN           |BANGLADESH   |7       |            0|      1|   110|
|6-24 months |CMIN           |BANGLADESH   |7       |            1|      5|   110|
|6-24 months |CMIN           |BANGLADESH   |8       |            0|      4|   110|
|6-24 months |CMIN           |BANGLADESH   |8       |            1|      7|   110|
|6-24 months |CMIN           |BANGLADESH   |9       |            0|      2|   110|
|6-24 months |CMIN           |BANGLADESH   |9       |            1|      6|   110|
|6-24 months |CMIN           |BANGLADESH   |10      |            0|      5|   110|
|6-24 months |CMIN           |BANGLADESH   |10      |            1|      8|   110|
|6-24 months |CMIN           |BANGLADESH   |11      |            0|      3|   110|
|6-24 months |CMIN           |BANGLADESH   |11      |            1|      7|   110|
|6-24 months |CMIN           |BANGLADESH   |12      |            0|      3|   110|
|6-24 months |CMIN           |BANGLADESH   |12      |            1|      8|   110|
|6-24 months |CONTENT        |PERU         |1       |            0|      9|   188|
|6-24 months |CONTENT        |PERU         |1       |            1|      0|   188|
|6-24 months |CONTENT        |PERU         |2       |            0|     12|   188|
|6-24 months |CONTENT        |PERU         |2       |            1|      3|   188|
|6-24 months |CONTENT        |PERU         |3       |            0|     19|   188|
|6-24 months |CONTENT        |PERU         |3       |            1|      4|   188|
|6-24 months |CONTENT        |PERU         |4       |            0|     17|   188|
|6-24 months |CONTENT        |PERU         |4       |            1|      4|   188|
|6-24 months |CONTENT        |PERU         |5       |            0|     10|   188|
|6-24 months |CONTENT        |PERU         |5       |            1|      2|   188|
|6-24 months |CONTENT        |PERU         |6       |            0|      5|   188|
|6-24 months |CONTENT        |PERU         |6       |            1|      2|   188|
|6-24 months |CONTENT        |PERU         |7       |            0|     31|   188|
|6-24 months |CONTENT        |PERU         |7       |            1|      6|   188|
|6-24 months |CONTENT        |PERU         |8       |            0|     15|   188|
|6-24 months |CONTENT        |PERU         |8       |            1|      1|   188|
|6-24 months |CONTENT        |PERU         |9       |            0|     17|   188|
|6-24 months |CONTENT        |PERU         |9       |            1|      2|   188|
|6-24 months |CONTENT        |PERU         |10      |            0|     13|   188|
|6-24 months |CONTENT        |PERU         |10      |            1|      1|   188|
|6-24 months |CONTENT        |PERU         |11      |            0|      6|   188|
|6-24 months |CONTENT        |PERU         |11      |            1|      0|   188|
|6-24 months |CONTENT        |PERU         |12      |            0|      8|   188|
|6-24 months |CONTENT        |PERU         |12      |            1|      1|   188|
|6-24 months |EE             |PAKISTAN     |1       |            0|     13|    93|
|6-24 months |EE             |PAKISTAN     |1       |            1|     19|    93|
|6-24 months |EE             |PAKISTAN     |2       |            0|      6|    93|
|6-24 months |EE             |PAKISTAN     |2       |            1|      7|    93|
|6-24 months |EE             |PAKISTAN     |3       |            0|      1|    93|
|6-24 months |EE             |PAKISTAN     |3       |            1|      4|    93|
|6-24 months |EE             |PAKISTAN     |4       |            0|      3|    93|
|6-24 months |EE             |PAKISTAN     |4       |            1|      3|    93|
|6-24 months |EE             |PAKISTAN     |5       |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |5       |            1|      0|    93|
|6-24 months |EE             |PAKISTAN     |6       |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |6       |            1|      0|    93|
|6-24 months |EE             |PAKISTAN     |7       |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |7       |            1|      0|    93|
|6-24 months |EE             |PAKISTAN     |8       |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |8       |            1|      0|    93|
|6-24 months |EE             |PAKISTAN     |9       |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |9       |            1|      0|    93|
|6-24 months |EE             |PAKISTAN     |10      |            0|      0|    93|
|6-24 months |EE             |PAKISTAN     |10      |            1|      1|    93|
|6-24 months |EE             |PAKISTAN     |11      |            0|      9|    93|
|6-24 months |EE             |PAKISTAN     |11      |            1|     11|    93|
|6-24 months |EE             |PAKISTAN     |12      |            0|      7|    93|
|6-24 months |EE             |PAKISTAN     |12      |            1|      9|    93|
|6-24 months |GMS-Nepal      |NEPAL        |1       |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |1       |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |2       |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |2       |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |3       |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |3       |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |4       |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |4       |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |5       |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |5       |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |6       |            0|     38|   397|
|6-24 months |GMS-Nepal      |NEPAL        |6       |            1|     56|   397|
|6-24 months |GMS-Nepal      |NEPAL        |7       |            0|     72|   397|
|6-24 months |GMS-Nepal      |NEPAL        |7       |            1|     87|   397|
|6-24 months |GMS-Nepal      |NEPAL        |8       |            0|     63|   397|
|6-24 months |GMS-Nepal      |NEPAL        |8       |            1|     81|   397|
|6-24 months |GMS-Nepal      |NEPAL        |9       |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |9       |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |10      |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |10      |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |11      |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |11      |            1|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |12      |            0|      0|   397|
|6-24 months |GMS-Nepal      |NEPAL        |12      |            1|      0|   397|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |            0|     13|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |            1|      7|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |            0|     14|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |            1|      8|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |            0|      5|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |            1|      5|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |            0|      9|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |            1|      4|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |            0|     14|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |            1|      8|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |            0|     11|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |            1|      6|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |            0|      8|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |            1|      1|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |            0|      8|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |            1|      3|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |            0|      7|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |            1|      4|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |            0|      7|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |            1|     11|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |            0|      7|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |            1|      6|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |            0|     18|   195|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |            1|     11|   195|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            0|    209|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            1|    112|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            0|    125|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            1|     53|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            0|    132|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            1|     74|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            0|    126|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            1|     79|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            0|    132|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            1|     85|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            0|    123|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            1|     59|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            0|    126|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            1|     66|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            0|    236|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            1|    116|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            0|    235|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            1|    150|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            0|    233|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            1|    131|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            0|    225|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            1|    120|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            0|    180|  3265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            1|    138|  3265|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |            0|    817| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |            1|    226| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |            0|    692| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |            1|    206| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |            0|    887| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |            1|    240| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |            0|    705| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |            1|    173| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |            0|    533| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |            1|    155| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |            0|    565| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |            1|    163| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |            0|    528| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |            1|    132| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |            0|    659| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |            1|    172| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |            0|    746| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |            1|    208| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |            0|    698| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |            1|    201| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |            0|    700| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |            1|    176| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |            0|    689| 10488|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |            1|    217| 10488|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |            0|      0|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |            1|      0|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |            0|    394|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |            1|    243|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |            0|    380|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |            1|    272|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |            0|    324|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |            1|    177|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |            0|    256|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |            1|    172|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |            0|    193|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |            1|    106|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |            0|    217|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |            1|    130|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |            0|    265|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |            1|    147|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |            0|    175|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |            1|     88|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |            0|     65|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |            1|     42|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |            0|      0|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |            1|      0|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |            0|      0|  3646|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |            1|      0|  3646|
|6-24 months |Keneba         |GAMBIA       |1       |            0|    126|  2017|
|6-24 months |Keneba         |GAMBIA       |1       |            1|     80|  2017|
|6-24 months |Keneba         |GAMBIA       |2       |            0|    114|  2017|
|6-24 months |Keneba         |GAMBIA       |2       |            1|     71|  2017|
|6-24 months |Keneba         |GAMBIA       |3       |            0|    133|  2017|
|6-24 months |Keneba         |GAMBIA       |3       |            1|     68|  2017|
|6-24 months |Keneba         |GAMBIA       |4       |            0|     90|  2017|
|6-24 months |Keneba         |GAMBIA       |4       |            1|     38|  2017|
|6-24 months |Keneba         |GAMBIA       |5       |            0|    107|  2017|
|6-24 months |Keneba         |GAMBIA       |5       |            1|     46|  2017|
|6-24 months |Keneba         |GAMBIA       |6       |            0|     86|  2017|
|6-24 months |Keneba         |GAMBIA       |6       |            1|     44|  2017|
|6-24 months |Keneba         |GAMBIA       |7       |            0|     62|  2017|
|6-24 months |Keneba         |GAMBIA       |7       |            1|     37|  2017|
|6-24 months |Keneba         |GAMBIA       |8       |            0|    103|  2017|
|6-24 months |Keneba         |GAMBIA       |8       |            1|     65|  2017|
|6-24 months |Keneba         |GAMBIA       |9       |            0|    106|  2017|
|6-24 months |Keneba         |GAMBIA       |9       |            1|     66|  2017|
|6-24 months |Keneba         |GAMBIA       |10      |            0|    144|  2017|
|6-24 months |Keneba         |GAMBIA       |10      |            1|     89|  2017|
|6-24 months |Keneba         |GAMBIA       |11      |            0|    108|  2017|
|6-24 months |Keneba         |GAMBIA       |11      |            1|     59|  2017|
|6-24 months |Keneba         |GAMBIA       |12      |            0|    114|  2017|
|6-24 months |Keneba         |GAMBIA       |12      |            1|     61|  2017|
|6-24 months |LCNI-5         |MALAWI       |1       |            0|     13|   730|
|6-24 months |LCNI-5         |MALAWI       |1       |            1|     31|   730|
|6-24 months |LCNI-5         |MALAWI       |2       |            0|     22|   730|
|6-24 months |LCNI-5         |MALAWI       |2       |            1|     18|   730|
|6-24 months |LCNI-5         |MALAWI       |3       |            0|     13|   730|
|6-24 months |LCNI-5         |MALAWI       |3       |            1|      9|   730|
|6-24 months |LCNI-5         |MALAWI       |4       |            0|     11|   730|
|6-24 months |LCNI-5         |MALAWI       |4       |            1|     26|   730|
|6-24 months |LCNI-5         |MALAWI       |5       |            0|     17|   730|
|6-24 months |LCNI-5         |MALAWI       |5       |            1|     21|   730|
|6-24 months |LCNI-5         |MALAWI       |6       |            0|     12|   730|
|6-24 months |LCNI-5         |MALAWI       |6       |            1|     19|   730|
|6-24 months |LCNI-5         |MALAWI       |7       |            0|     24|   730|
|6-24 months |LCNI-5         |MALAWI       |7       |            1|     39|   730|
|6-24 months |LCNI-5         |MALAWI       |8       |            0|     32|   730|
|6-24 months |LCNI-5         |MALAWI       |8       |            1|     51|   730|
|6-24 months |LCNI-5         |MALAWI       |9       |            0|     27|   730|
|6-24 months |LCNI-5         |MALAWI       |9       |            1|     51|   730|
|6-24 months |LCNI-5         |MALAWI       |10      |            0|     52|   730|
|6-24 months |LCNI-5         |MALAWI       |10      |            1|     78|   730|
|6-24 months |LCNI-5         |MALAWI       |11      |            0|     37|   730|
|6-24 months |LCNI-5         |MALAWI       |11      |            1|     59|   730|
|6-24 months |LCNI-5         |MALAWI       |12      |            0|     32|   730|
|6-24 months |LCNI-5         |MALAWI       |12      |            1|     36|   730|
|6-24 months |MAL-ED         |INDIA        |1       |            0|     11|   154|
|6-24 months |MAL-ED         |INDIA        |1       |            1|      5|   154|
|6-24 months |MAL-ED         |INDIA        |2       |            0|     12|   154|
|6-24 months |MAL-ED         |INDIA        |2       |            1|      7|   154|
|6-24 months |MAL-ED         |INDIA        |3       |            0|      8|   154|
|6-24 months |MAL-ED         |INDIA        |3       |            1|      7|   154|
|6-24 months |MAL-ED         |INDIA        |4       |            0|      5|   154|
|6-24 months |MAL-ED         |INDIA        |4       |            1|      2|   154|
|6-24 months |MAL-ED         |INDIA        |5       |            0|      0|   154|
|6-24 months |MAL-ED         |INDIA        |5       |            1|      3|   154|
|6-24 months |MAL-ED         |INDIA        |6       |            0|      7|   154|
|6-24 months |MAL-ED         |INDIA        |6       |            1|      1|   154|
|6-24 months |MAL-ED         |INDIA        |7       |            0|      3|   154|
|6-24 months |MAL-ED         |INDIA        |7       |            1|      4|   154|
|6-24 months |MAL-ED         |INDIA        |8       |            0|      7|   154|
|6-24 months |MAL-ED         |INDIA        |8       |            1|      9|   154|
|6-24 months |MAL-ED         |INDIA        |9       |            0|      8|   154|
|6-24 months |MAL-ED         |INDIA        |9       |            1|      3|   154|
|6-24 months |MAL-ED         |INDIA        |10      |            0|     14|   154|
|6-24 months |MAL-ED         |INDIA        |10      |            1|     10|   154|
|6-24 months |MAL-ED         |INDIA        |11      |            0|      8|   154|
|6-24 months |MAL-ED         |INDIA        |11      |            1|      8|   154|
|6-24 months |MAL-ED         |INDIA        |12      |            0|      6|   154|
|6-24 months |MAL-ED         |INDIA        |12      |            1|      6|   154|
|6-24 months |MAL-ED         |BANGLADESH   |1       |            0|      7|   158|
|6-24 months |MAL-ED         |BANGLADESH   |1       |            1|      7|   158|
|6-24 months |MAL-ED         |BANGLADESH   |2       |            0|      6|   158|
|6-24 months |MAL-ED         |BANGLADESH   |2       |            1|      6|   158|
|6-24 months |MAL-ED         |BANGLADESH   |3       |            0|      4|   158|
|6-24 months |MAL-ED         |BANGLADESH   |3       |            1|     12|   158|
|6-24 months |MAL-ED         |BANGLADESH   |4       |            0|      6|   158|
|6-24 months |MAL-ED         |BANGLADESH   |4       |            1|      2|   158|
|6-24 months |MAL-ED         |BANGLADESH   |5       |            0|      4|   158|
|6-24 months |MAL-ED         |BANGLADESH   |5       |            1|      6|   158|
|6-24 months |MAL-ED         |BANGLADESH   |6       |            0|      1|   158|
|6-24 months |MAL-ED         |BANGLADESH   |6       |            1|      1|   158|
|6-24 months |MAL-ED         |BANGLADESH   |7       |            0|      3|   158|
|6-24 months |MAL-ED         |BANGLADESH   |7       |            1|      5|   158|
|6-24 months |MAL-ED         |BANGLADESH   |8       |            0|     13|   158|
|6-24 months |MAL-ED         |BANGLADESH   |8       |            1|      3|   158|
|6-24 months |MAL-ED         |BANGLADESH   |9       |            0|      7|   158|
|6-24 months |MAL-ED         |BANGLADESH   |9       |            1|     10|   158|
|6-24 months |MAL-ED         |BANGLADESH   |10      |            0|     17|   158|
|6-24 months |MAL-ED         |BANGLADESH   |10      |            1|      5|   158|
|6-24 months |MAL-ED         |BANGLADESH   |11      |            0|      8|   158|
|6-24 months |MAL-ED         |BANGLADESH   |11      |            1|      2|   158|
|6-24 months |MAL-ED         |BANGLADESH   |12      |            0|     15|   158|
|6-24 months |MAL-ED         |BANGLADESH   |12      |            1|      8|   158|
|6-24 months |MAL-ED         |PERU         |1       |            0|     11|   149|
|6-24 months |MAL-ED         |PERU         |1       |            1|      9|   149|
|6-24 months |MAL-ED         |PERU         |2       |            0|      6|   149|
|6-24 months |MAL-ED         |PERU         |2       |            1|      5|   149|
|6-24 months |MAL-ED         |PERU         |3       |            0|     11|   149|
|6-24 months |MAL-ED         |PERU         |3       |            1|      7|   149|
|6-24 months |MAL-ED         |PERU         |4       |            0|      9|   149|
|6-24 months |MAL-ED         |PERU         |4       |            1|      2|   149|
|6-24 months |MAL-ED         |PERU         |5       |            0|      4|   149|
|6-24 months |MAL-ED         |PERU         |5       |            1|      6|   149|
|6-24 months |MAL-ED         |PERU         |6       |            0|      3|   149|
|6-24 months |MAL-ED         |PERU         |6       |            1|      2|   149|
|6-24 months |MAL-ED         |PERU         |7       |            0|      8|   149|
|6-24 months |MAL-ED         |PERU         |7       |            1|      3|   149|
|6-24 months |MAL-ED         |PERU         |8       |            0|      8|   149|
|6-24 months |MAL-ED         |PERU         |8       |            1|      8|   149|
|6-24 months |MAL-ED         |PERU         |9       |            0|      4|   149|
|6-24 months |MAL-ED         |PERU         |9       |            1|      4|   149|
|6-24 months |MAL-ED         |PERU         |10      |            0|      8|   149|
|6-24 months |MAL-ED         |PERU         |10      |            1|      3|   149|
|6-24 months |MAL-ED         |PERU         |11      |            0|     14|   149|
|6-24 months |MAL-ED         |PERU         |11      |            1|      6|   149|
|6-24 months |MAL-ED         |PERU         |12      |            0|      4|   149|
|6-24 months |MAL-ED         |PERU         |12      |            1|      4|   149|
|6-24 months |MAL-ED         |NEPAL        |1       |            0|     16|   194|
|6-24 months |MAL-ED         |NEPAL        |1       |            1|      5|   194|
|6-24 months |MAL-ED         |NEPAL        |2       |            0|     12|   194|
|6-24 months |MAL-ED         |NEPAL        |2       |            1|      4|   194|
|6-24 months |MAL-ED         |NEPAL        |3       |            0|      8|   194|
|6-24 months |MAL-ED         |NEPAL        |3       |            1|      4|   194|
|6-24 months |MAL-ED         |NEPAL        |4       |            0|     11|   194|
|6-24 months |MAL-ED         |NEPAL        |4       |            1|      3|   194|
|6-24 months |MAL-ED         |NEPAL        |5       |            0|     13|   194|
|6-24 months |MAL-ED         |NEPAL        |5       |            1|      5|   194|
|6-24 months |MAL-ED         |NEPAL        |6       |            0|     11|   194|
|6-24 months |MAL-ED         |NEPAL        |6       |            1|      3|   194|
|6-24 months |MAL-ED         |NEPAL        |7       |            0|     10|   194|
|6-24 months |MAL-ED         |NEPAL        |7       |            1|      6|   194|
|6-24 months |MAL-ED         |NEPAL        |8       |            0|     22|   194|
|6-24 months |MAL-ED         |NEPAL        |8       |            1|      4|   194|
|6-24 months |MAL-ED         |NEPAL        |9       |            0|     10|   194|
|6-24 months |MAL-ED         |NEPAL        |9       |            1|      1|   194|
|6-24 months |MAL-ED         |NEPAL        |10      |            0|     11|   194|
|6-24 months |MAL-ED         |NEPAL        |10      |            1|      1|   194|
|6-24 months |MAL-ED         |NEPAL        |11      |            0|     17|   194|
|6-24 months |MAL-ED         |NEPAL        |11      |            1|      3|   194|
|6-24 months |MAL-ED         |NEPAL        |12      |            0|     12|   194|
|6-24 months |MAL-ED         |NEPAL        |12      |            1|      2|   194|
|6-24 months |MAL-ED         |BRAZIL       |1       |            0|     10|   163|
|6-24 months |MAL-ED         |BRAZIL       |1       |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL       |2       |            0|     18|   163|
|6-24 months |MAL-ED         |BRAZIL       |2       |            1|      3|   163|
|6-24 months |MAL-ED         |BRAZIL       |3       |            0|     14|   163|
|6-24 months |MAL-ED         |BRAZIL       |3       |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL       |4       |            0|      7|   163|
|6-24 months |MAL-ED         |BRAZIL       |4       |            1|      2|   163|
|6-24 months |MAL-ED         |BRAZIL       |5       |            0|     12|   163|
|6-24 months |MAL-ED         |BRAZIL       |5       |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL       |6       |            0|      6|   163|
|6-24 months |MAL-ED         |BRAZIL       |6       |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL       |7       |            0|     11|   163|
|6-24 months |MAL-ED         |BRAZIL       |7       |            1|      1|   163|
|6-24 months |MAL-ED         |BRAZIL       |8       |            0|     18|   163|
|6-24 months |MAL-ED         |BRAZIL       |8       |            1|      2|   163|
|6-24 months |MAL-ED         |BRAZIL       |9       |            0|     27|   163|
|6-24 months |MAL-ED         |BRAZIL       |9       |            1|      1|   163|
|6-24 months |MAL-ED         |BRAZIL       |10      |            0|      8|   163|
|6-24 months |MAL-ED         |BRAZIL       |10      |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL       |11      |            0|     10|   163|
|6-24 months |MAL-ED         |BRAZIL       |11      |            1|      1|   163|
|6-24 months |MAL-ED         |BRAZIL       |12      |            0|     11|   163|
|6-24 months |MAL-ED         |BRAZIL       |12      |            1|      1|   163|
|6-24 months |MAL-ED         |TANZANIA     |1       |            0|      2|   144|
|6-24 months |MAL-ED         |TANZANIA     |1       |            1|      6|   144|
|6-24 months |MAL-ED         |TANZANIA     |2       |            0|      4|   144|
|6-24 months |MAL-ED         |TANZANIA     |2       |            1|     11|   144|
|6-24 months |MAL-ED         |TANZANIA     |3       |            0|      0|   144|
|6-24 months |MAL-ED         |TANZANIA     |3       |            1|     12|   144|
|6-24 months |MAL-ED         |TANZANIA     |4       |            0|      0|   144|
|6-24 months |MAL-ED         |TANZANIA     |4       |            1|      8|   144|
|6-24 months |MAL-ED         |TANZANIA     |5       |            0|      4|   144|
|6-24 months |MAL-ED         |TANZANIA     |5       |            1|     13|   144|
|6-24 months |MAL-ED         |TANZANIA     |6       |            0|      2|   144|
|6-24 months |MAL-ED         |TANZANIA     |6       |            1|      8|   144|
|6-24 months |MAL-ED         |TANZANIA     |7       |            0|      6|   144|
|6-24 months |MAL-ED         |TANZANIA     |7       |            1|      8|   144|
|6-24 months |MAL-ED         |TANZANIA     |8       |            0|      3|   144|
|6-24 months |MAL-ED         |TANZANIA     |8       |            1|      2|   144|
|6-24 months |MAL-ED         |TANZANIA     |9       |            0|      1|   144|
|6-24 months |MAL-ED         |TANZANIA     |9       |            1|      8|   144|
|6-24 months |MAL-ED         |TANZANIA     |10      |            0|      3|   144|
|6-24 months |MAL-ED         |TANZANIA     |10      |            1|      8|   144|
|6-24 months |MAL-ED         |TANZANIA     |11      |            0|      4|   144|
|6-24 months |MAL-ED         |TANZANIA     |11      |            1|     11|   144|
|6-24 months |MAL-ED         |TANZANIA     |12      |            0|      2|   144|
|6-24 months |MAL-ED         |TANZANIA     |12      |            1|     18|   144|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |            0|     12|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |            1|      9|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |            0|      8|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |            1|      8|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |            0|      7|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |            1|      5|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |            0|      5|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |            1|      3|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |            0|      6|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |            1|      4|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |            0|      7|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |            1|      1|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |            0|      8|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |            1|      4|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |            0|      5|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |            1|      2|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |            0|      6|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |            1|      1|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |            0|      8|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |            1|      6|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |            0|      7|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |            1|      6|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |            0|     19|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |            1|     11|   158|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |            0|     18|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |            1|     17|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |            0|     13|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |            1|     19|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |            0|     16|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |            1|     22|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |            0|      9|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |            1|     24|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |            0|     11|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |            1|     19|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |            0|      9|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |            1|     12|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |            0|      5|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |            1|     11|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |            0|     10|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |            1|     20|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |            0|     17|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |            1|     14|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |            0|     11|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |            1|     10|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |            0|     16|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |            1|     15|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |            0|     12|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |            1|     15|   345|
|6-24 months |PROBIT         |BELARUS      |1       |            0|    804| 15467|
|6-24 months |PROBIT         |BELARUS      |1       |            1|     73| 15467|
|6-24 months |PROBIT         |BELARUS      |2       |            0|    861| 15467|
|6-24 months |PROBIT         |BELARUS      |2       |            1|     69| 15467|
|6-24 months |PROBIT         |BELARUS      |3       |            0|    992| 15467|
|6-24 months |PROBIT         |BELARUS      |3       |            1|     53| 15467|
|6-24 months |PROBIT         |BELARUS      |4       |            0|    994| 15467|
|6-24 months |PROBIT         |BELARUS      |4       |            1|     74| 15467|
|6-24 months |PROBIT         |BELARUS      |5       |            0|    952| 15467|
|6-24 months |PROBIT         |BELARUS      |5       |            1|     73| 15467|
|6-24 months |PROBIT         |BELARUS      |6       |            0|   1047| 15467|
|6-24 months |PROBIT         |BELARUS      |6       |            1|     79| 15467|
|6-24 months |PROBIT         |BELARUS      |7       |            0|   1344| 15467|
|6-24 months |PROBIT         |BELARUS      |7       |            1|     91| 15467|
|6-24 months |PROBIT         |BELARUS      |8       |            0|   1382| 15467|
|6-24 months |PROBIT         |BELARUS      |8       |            1|    100| 15467|
|6-24 months |PROBIT         |BELARUS      |9       |            0|   1462| 15467|
|6-24 months |PROBIT         |BELARUS      |9       |            1|     74| 15467|
|6-24 months |PROBIT         |BELARUS      |10      |            0|   1569| 15467|
|6-24 months |PROBIT         |BELARUS      |10      |            1|     87| 15467|
|6-24 months |PROBIT         |BELARUS      |11      |            0|   1469| 15467|
|6-24 months |PROBIT         |BELARUS      |11      |            1|     91| 15467|
|6-24 months |PROBIT         |BELARUS      |12      |            0|   1597| 15467|
|6-24 months |PROBIT         |BELARUS      |12      |            1|    130| 15467|
|6-24 months |PROVIDE        |BANGLADESH   |1       |            0|     22|   456|
|6-24 months |PROVIDE        |BANGLADESH   |1       |            1|     11|   456|
|6-24 months |PROVIDE        |BANGLADESH   |2       |            0|     18|   456|
|6-24 months |PROVIDE        |BANGLADESH   |2       |            1|      7|   456|
|6-24 months |PROVIDE        |BANGLADESH   |3       |            0|     22|   456|
|6-24 months |PROVIDE        |BANGLADESH   |3       |            1|     16|   456|
|6-24 months |PROVIDE        |BANGLADESH   |4       |            0|     19|   456|
|6-24 months |PROVIDE        |BANGLADESH   |4       |            1|      4|   456|
|6-24 months |PROVIDE        |BANGLADESH   |5       |            0|     30|   456|
|6-24 months |PROVIDE        |BANGLADESH   |5       |            1|      9|   456|
|6-24 months |PROVIDE        |BANGLADESH   |6       |            0|     35|   456|
|6-24 months |PROVIDE        |BANGLADESH   |6       |            1|     22|   456|
|6-24 months |PROVIDE        |BANGLADESH   |7       |            0|     35|   456|
|6-24 months |PROVIDE        |BANGLADESH   |7       |            1|     13|   456|
|6-24 months |PROVIDE        |BANGLADESH   |8       |            0|     30|   456|
|6-24 months |PROVIDE        |BANGLADESH   |8       |            1|     11|   456|
|6-24 months |PROVIDE        |BANGLADESH   |9       |            0|     36|   456|
|6-24 months |PROVIDE        |BANGLADESH   |9       |            1|     18|   456|
|6-24 months |PROVIDE        |BANGLADESH   |10      |            0|     38|   456|
|6-24 months |PROVIDE        |BANGLADESH   |10      |            1|     12|   456|
|6-24 months |PROVIDE        |BANGLADESH   |11      |            0|     21|   456|
|6-24 months |PROVIDE        |BANGLADESH   |11      |            1|      7|   456|
|6-24 months |PROVIDE        |BANGLADESH   |12      |            0|     13|   456|
|6-24 months |PROVIDE        |BANGLADESH   |12      |            1|      7|   456|
|6-24 months |ResPak         |PAKISTAN     |1       |            0|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |1       |            1|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |2       |            0|      7|    97|
|6-24 months |ResPak         |PAKISTAN     |2       |            1|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |3       |            0|      9|    97|
|6-24 months |ResPak         |PAKISTAN     |3       |            1|      0|    97|
|6-24 months |ResPak         |PAKISTAN     |4       |            0|      9|    97|
|6-24 months |ResPak         |PAKISTAN     |4       |            1|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |5       |            0|     10|    97|
|6-24 months |ResPak         |PAKISTAN     |5       |            1|      4|    97|
|6-24 months |ResPak         |PAKISTAN     |6       |            0|     16|    97|
|6-24 months |ResPak         |PAKISTAN     |6       |            1|      3|    97|
|6-24 months |ResPak         |PAKISTAN     |7       |            0|      5|    97|
|6-24 months |ResPak         |PAKISTAN     |7       |            1|      4|    97|
|6-24 months |ResPak         |PAKISTAN     |8       |            0|     13|    97|
|6-24 months |ResPak         |PAKISTAN     |8       |            1|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |9       |            0|      4|    97|
|6-24 months |ResPak         |PAKISTAN     |9       |            1|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |10      |            0|      2|    97|
|6-24 months |ResPak         |PAKISTAN     |10      |            1|      2|    97|
|6-24 months |ResPak         |PAKISTAN     |11      |            0|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |11      |            1|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |12      |            0|      1|    97|
|6-24 months |ResPak         |PAKISTAN     |12      |            1|      0|    97|
|6-24 months |SAS-CompFeed   |INDIA        |1       |            0|     24|   813|
|6-24 months |SAS-CompFeed   |INDIA        |1       |            1|     28|   813|
|6-24 months |SAS-CompFeed   |INDIA        |2       |            0|     19|   813|
|6-24 months |SAS-CompFeed   |INDIA        |2       |            1|     20|   813|
|6-24 months |SAS-CompFeed   |INDIA        |3       |            0|     20|   813|
|6-24 months |SAS-CompFeed   |INDIA        |3       |            1|     18|   813|
|6-24 months |SAS-CompFeed   |INDIA        |4       |            0|     27|   813|
|6-24 months |SAS-CompFeed   |INDIA        |4       |            1|     18|   813|
|6-24 months |SAS-CompFeed   |INDIA        |5       |            0|     33|   813|
|6-24 months |SAS-CompFeed   |INDIA        |5       |            1|     35|   813|
|6-24 months |SAS-CompFeed   |INDIA        |6       |            0|     35|   813|
|6-24 months |SAS-CompFeed   |INDIA        |6       |            1|     25|   813|
|6-24 months |SAS-CompFeed   |INDIA        |7       |            0|     24|   813|
|6-24 months |SAS-CompFeed   |INDIA        |7       |            1|     38|   813|
|6-24 months |SAS-CompFeed   |INDIA        |8       |            0|     58|   813|
|6-24 months |SAS-CompFeed   |INDIA        |8       |            1|     51|   813|
|6-24 months |SAS-CompFeed   |INDIA        |9       |            0|     44|   813|
|6-24 months |SAS-CompFeed   |INDIA        |9       |            1|     52|   813|
|6-24 months |SAS-CompFeed   |INDIA        |10      |            0|     55|   813|
|6-24 months |SAS-CompFeed   |INDIA        |10      |            1|     46|   813|
|6-24 months |SAS-CompFeed   |INDIA        |11      |            0|     35|   813|
|6-24 months |SAS-CompFeed   |INDIA        |11      |            1|     35|   813|
|6-24 months |SAS-CompFeed   |INDIA        |12      |            0|     30|   813|
|6-24 months |SAS-CompFeed   |INDIA        |12      |            1|     43|   813|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |            0|      2|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |            1|      8|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |            0|     11|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |            1|     19|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |            0|      4|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |            1|     10|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |            0|      1|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |            1|      2|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |            0|      3|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |            1|      3|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |            0|      2|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |            1|      7|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |            0|      3|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |            1|     16|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |            0|     11|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |            1|     33|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |            0|     10|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |            1|     26|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |            0|      5|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |            1|     28|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |            0|      2|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |            1|     13|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |            0|      5|   243|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |            1|     19|   243|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |            0|     75|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |            1|     30|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |            0|     90|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |            1|     28|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |            0|     81|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |            1|     25|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |            0|     96|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |            1|     36|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |            0|     92|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |            1|     29|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |            0|     94|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |            1|     24|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |            0|    113|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |            1|     36|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |            0|    126|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |            1|     31|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |            0|    114|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |            1|     27|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |            0|    136|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |            1|     44|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |            0|    101|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |            1|     25|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |            0|    122|  1602|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |            1|     27|  1602|
|6-24 months |Vellore Crypto |INDIA        |1       |            0|     14|   236|
|6-24 months |Vellore Crypto |INDIA        |1       |            1|     11|   236|
|6-24 months |Vellore Crypto |INDIA        |2       |            0|      5|   236|
|6-24 months |Vellore Crypto |INDIA        |2       |            1|      5|   236|
|6-24 months |Vellore Crypto |INDIA        |3       |            0|      7|   236|
|6-24 months |Vellore Crypto |INDIA        |3       |            1|     10|   236|
|6-24 months |Vellore Crypto |INDIA        |4       |            0|      4|   236|
|6-24 months |Vellore Crypto |INDIA        |4       |            1|      5|   236|
|6-24 months |Vellore Crypto |INDIA        |5       |            0|      4|   236|
|6-24 months |Vellore Crypto |INDIA        |5       |            1|      4|   236|
|6-24 months |Vellore Crypto |INDIA        |6       |            0|     17|   236|
|6-24 months |Vellore Crypto |INDIA        |6       |            1|     10|   236|
|6-24 months |Vellore Crypto |INDIA        |7       |            0|      9|   236|
|6-24 months |Vellore Crypto |INDIA        |7       |            1|     11|   236|
|6-24 months |Vellore Crypto |INDIA        |8       |            0|     23|   236|
|6-24 months |Vellore Crypto |INDIA        |8       |            1|      5|   236|
|6-24 months |Vellore Crypto |INDIA        |9       |            0|     11|   236|
|6-24 months |Vellore Crypto |INDIA        |9       |            1|      9|   236|
|6-24 months |Vellore Crypto |INDIA        |10      |            0|     24|   236|
|6-24 months |Vellore Crypto |INDIA        |10      |            1|     10|   236|
|6-24 months |Vellore Crypto |INDIA        |11      |            0|     14|   236|
|6-24 months |Vellore Crypto |INDIA        |11      |            1|      3|   236|
|6-24 months |Vellore Crypto |INDIA        |12      |            0|     15|   236|
|6-24 months |Vellore Crypto |INDIA        |12      |            1|      6|   236|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |            0|    601|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |            1|    187|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |            0|    470|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |            1|    174|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |            0|    521|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |            1|    201|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |            0|    439|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |            1|    161|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |            0|    442|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |            1|    160|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |            0|    538|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |            1|    169|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |            0|    540|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |            1|    189|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |            0|    555|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |            1|    185|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |            0|    578|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |            1|    197|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |            0|    473|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |            1|    183|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |            0|    563|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |            1|    197|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |            0|    534|  8488|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |            1|    231|  8488|


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
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


