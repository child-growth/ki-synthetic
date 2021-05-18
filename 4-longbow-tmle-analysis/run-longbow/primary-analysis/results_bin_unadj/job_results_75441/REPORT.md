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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country      |brthmon | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |             0|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |             1|     21|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |             0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |             1|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |             0|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |             1|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |             0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |             1|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |             0|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |             1|     27|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |             0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |             1|     21|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |             0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |             1|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |             0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |             1|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |             0|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |             1|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |             0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |             1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |             0|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |             1|     23|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |             0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |             1|     17|   373|
|0-24 months |CMIN           |BANGLADESH   |1       |             0|     16|   276|
|0-24 months |CMIN           |BANGLADESH   |1       |             1|     13|   276|
|0-24 months |CMIN           |BANGLADESH   |2       |             0|     14|   276|
|0-24 months |CMIN           |BANGLADESH   |2       |             1|     13|   276|
|0-24 months |CMIN           |BANGLADESH   |3       |             0|     17|   276|
|0-24 months |CMIN           |BANGLADESH   |3       |             1|     10|   276|
|0-24 months |CMIN           |BANGLADESH   |4       |             0|      9|   276|
|0-24 months |CMIN           |BANGLADESH   |4       |             1|      3|   276|
|0-24 months |CMIN           |BANGLADESH   |5       |             0|     10|   276|
|0-24 months |CMIN           |BANGLADESH   |5       |             1|     11|   276|
|0-24 months |CMIN           |BANGLADESH   |6       |             0|      7|   276|
|0-24 months |CMIN           |BANGLADESH   |6       |             1|      4|   276|
|0-24 months |CMIN           |BANGLADESH   |7       |             0|      6|   276|
|0-24 months |CMIN           |BANGLADESH   |7       |             1|      8|   276|
|0-24 months |CMIN           |BANGLADESH   |8       |             0|     16|   276|
|0-24 months |CMIN           |BANGLADESH   |8       |             1|     15|   276|
|0-24 months |CMIN           |BANGLADESH   |9       |             0|     10|   276|
|0-24 months |CMIN           |BANGLADESH   |9       |             1|      9|   276|
|0-24 months |CMIN           |BANGLADESH   |10      |             0|     10|   276|
|0-24 months |CMIN           |BANGLADESH   |10      |             1|     20|   276|
|0-24 months |CMIN           |BANGLADESH   |11      |             0|     11|   276|
|0-24 months |CMIN           |BANGLADESH   |11      |             1|     16|   276|
|0-24 months |CMIN           |BANGLADESH   |12      |             0|     12|   276|
|0-24 months |CMIN           |BANGLADESH   |12      |             1|     16|   276|
|0-24 months |CONTENT        |PERU         |1       |             0|      9|   215|
|0-24 months |CONTENT        |PERU         |1       |             1|      1|   215|
|0-24 months |CONTENT        |PERU         |2       |             0|     15|   215|
|0-24 months |CONTENT        |PERU         |2       |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |3       |             0|     26|   215|
|0-24 months |CONTENT        |PERU         |3       |             1|      1|   215|
|0-24 months |CONTENT        |PERU         |4       |             0|     24|   215|
|0-24 months |CONTENT        |PERU         |4       |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |5       |             0|     13|   215|
|0-24 months |CONTENT        |PERU         |5       |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |6       |             0|      8|   215|
|0-24 months |CONTENT        |PERU         |6       |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |7       |             0|     39|   215|
|0-24 months |CONTENT        |PERU         |7       |             1|      2|   215|
|0-24 months |CONTENT        |PERU         |8       |             0|     17|   215|
|0-24 months |CONTENT        |PERU         |8       |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |9       |             0|     19|   215|
|0-24 months |CONTENT        |PERU         |9       |             1|      4|   215|
|0-24 months |CONTENT        |PERU         |10      |             0|     15|   215|
|0-24 months |CONTENT        |PERU         |10      |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |11      |             0|     10|   215|
|0-24 months |CONTENT        |PERU         |11      |             1|      0|   215|
|0-24 months |CONTENT        |PERU         |12      |             0|     10|   215|
|0-24 months |CONTENT        |PERU         |12      |             1|      2|   215|
|0-24 months |EE             |PAKISTAN     |1       |             0|     48|   379|
|0-24 months |EE             |PAKISTAN     |1       |             1|     59|   379|
|0-24 months |EE             |PAKISTAN     |2       |             0|     24|   379|
|0-24 months |EE             |PAKISTAN     |2       |             1|     36|   379|
|0-24 months |EE             |PAKISTAN     |3       |             0|     12|   379|
|0-24 months |EE             |PAKISTAN     |3       |             1|     22|   379|
|0-24 months |EE             |PAKISTAN     |4       |             0|     10|   379|
|0-24 months |EE             |PAKISTAN     |4       |             1|      9|   379|
|0-24 months |EE             |PAKISTAN     |5       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN     |5       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN     |6       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN     |6       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN     |7       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN     |7       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN     |8       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN     |8       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN     |9       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN     |9       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN     |10      |             0|      1|   379|
|0-24 months |EE             |PAKISTAN     |10      |             1|      1|   379|
|0-24 months |EE             |PAKISTAN     |11      |             0|     26|   379|
|0-24 months |EE             |PAKISTAN     |11      |             1|     58|   379|
|0-24 months |EE             |PAKISTAN     |12      |             0|     30|   379|
|0-24 months |EE             |PAKISTAN     |12      |             1|     43|   379|
|0-24 months |GMS-Nepal      |NEPAL        |1       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |1       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |4       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |4       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |5       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |5       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |6       |             0|    115|   698|
|0-24 months |GMS-Nepal      |NEPAL        |6       |             1|     42|   698|
|0-24 months |GMS-Nepal      |NEPAL        |7       |             0|    217|   698|
|0-24 months |GMS-Nepal      |NEPAL        |7       |             1|     65|   698|
|0-24 months |GMS-Nepal      |NEPAL        |8       |             0|    197|   698|
|0-24 months |GMS-Nepal      |NEPAL        |8       |             1|     62|   698|
|0-24 months |GMS-Nepal      |NEPAL        |9       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |9       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |10      |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |10      |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |11      |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |11      |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |12      |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL        |12      |             1|      0|   698|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |             0|     24|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |             1|      6|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |             0|     25|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |             1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |             0|     20|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |             1|      4|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |             0|     22|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |             1|      9|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |             0|     27|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |             1|      5|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |             0|     19|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |             1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |             0|     12|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |             1|      6|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |             0|     19|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |             1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |             0|     15|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |             1|      2|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |             0|     22|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |             1|     10|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |             0|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |             1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |             0|     37|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |             1|      4|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |             0|    284|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |             1|     37|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |             0|    162|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |             1|     16|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |             0|    180|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |             1|     26|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |             0|    182|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |             1|     23|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |             0|    194|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |             1|     23|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |             0|    161|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |             1|     21|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |             0|    169|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |             1|     23|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |             0|    315|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |             1|     37|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |             0|    340|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |             1|     45|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |             0|    321|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |             1|     43|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |             0|    318|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |             1|     27|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |             0|    282|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |             1|     36|  3265|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |             0|   2010| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |             1|    484| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |             0|   1684| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |             1|    384| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |             0|   1984| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |             1|    397| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |             0|   1502| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |             1|    312| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |             0|   1131| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |             1|    261| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |             0|   1187| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |             1|    256| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |             0|   1257| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |             1|    271| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |             0|   1718| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |             1|    408| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |             0|   2364| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |             1|    548| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |             0|   2437| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |             1|    515| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |             0|   2366| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |             1|    599| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |             0|   2548| 27201|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |             1|    578| 27201|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |             0|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |             1|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |             0|    757|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |             1|    193|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |             0|    774|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |             1|    210|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |             0|    599|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |             1|    162|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |             0|    509|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |             1|    117|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |             0|    370|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |             1|     87|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |             0|    415|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |             1|     97|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |             0|    484|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |             1|    133|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |             0|    314|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |             1|     77|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |             0|    113|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |             1|     28|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |             0|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |             1|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |             0|      0|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |             1|      0|  5439|
|0-24 months |Keneba         |GAMBIA       |1       |             0|    238|  2915|
|0-24 months |Keneba         |GAMBIA       |1       |             1|     67|  2915|
|0-24 months |Keneba         |GAMBIA       |2       |             0|    209|  2915|
|0-24 months |Keneba         |GAMBIA       |2       |             1|     62|  2915|
|0-24 months |Keneba         |GAMBIA       |3       |             0|    238|  2915|
|0-24 months |Keneba         |GAMBIA       |3       |             1|     70|  2915|
|0-24 months |Keneba         |GAMBIA       |4       |             0|    155|  2915|
|0-24 months |Keneba         |GAMBIA       |4       |             1|     33|  2915|
|0-24 months |Keneba         |GAMBIA       |5       |             0|    160|  2915|
|0-24 months |Keneba         |GAMBIA       |5       |             1|     42|  2915|
|0-24 months |Keneba         |GAMBIA       |6       |             0|    141|  2915|
|0-24 months |Keneba         |GAMBIA       |6       |             1|     43|  2915|
|0-24 months |Keneba         |GAMBIA       |7       |             0|    112|  2915|
|0-24 months |Keneba         |GAMBIA       |7       |             1|     27|  2915|
|0-24 months |Keneba         |GAMBIA       |8       |             0|    182|  2915|
|0-24 months |Keneba         |GAMBIA       |8       |             1|     52|  2915|
|0-24 months |Keneba         |GAMBIA       |9       |             0|    197|  2915|
|0-24 months |Keneba         |GAMBIA       |9       |             1|     54|  2915|
|0-24 months |Keneba         |GAMBIA       |10      |             0|    277|  2915|
|0-24 months |Keneba         |GAMBIA       |10      |             1|     66|  2915|
|0-24 months |Keneba         |GAMBIA       |11      |             0|    196|  2915|
|0-24 months |Keneba         |GAMBIA       |11      |             1|     49|  2915|
|0-24 months |Keneba         |GAMBIA       |12      |             0|    191|  2915|
|0-24 months |Keneba         |GAMBIA       |12      |             1|     54|  2915|
|0-24 months |LCNI-5         |MALAWI       |1       |             0|     40|   840|
|0-24 months |LCNI-5         |MALAWI       |1       |             1|      9|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |             0|     36|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |             1|      9|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |             0|     20|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |             1|      2|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |             0|     32|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |             1|      7|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |             0|     35|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |             1|     10|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |             0|     28|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |             1|      8|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |             0|     55|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |             1|     12|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |             0|     72|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |             1|     20|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |             0|     73|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |             1|     22|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |             0|    112|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |             1|     32|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |             0|     90|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |             1|     25|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |             0|     70|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |             1|     21|   840|
|0-24 months |MAL-ED         |INDIA        |1       |             0|     19|   251|
|0-24 months |MAL-ED         |INDIA        |1       |             1|      1|   251|
|0-24 months |MAL-ED         |INDIA        |2       |             0|     24|   251|
|0-24 months |MAL-ED         |INDIA        |2       |             1|      2|   251|
|0-24 months |MAL-ED         |INDIA        |3       |             0|     16|   251|
|0-24 months |MAL-ED         |INDIA        |3       |             1|      9|   251|
|0-24 months |MAL-ED         |INDIA        |4       |             0|      9|   251|
|0-24 months |MAL-ED         |INDIA        |4       |             1|      3|   251|
|0-24 months |MAL-ED         |INDIA        |5       |             0|      3|   251|
|0-24 months |MAL-ED         |INDIA        |5       |             1|      0|   251|
|0-24 months |MAL-ED         |INDIA        |6       |             0|     15|   251|
|0-24 months |MAL-ED         |INDIA        |6       |             1|      6|   251|
|0-24 months |MAL-ED         |INDIA        |7       |             0|      8|   251|
|0-24 months |MAL-ED         |INDIA        |7       |             1|      3|   251|
|0-24 months |MAL-ED         |INDIA        |8       |             0|     23|   251|
|0-24 months |MAL-ED         |INDIA        |8       |             1|      7|   251|
|0-24 months |MAL-ED         |INDIA        |9       |             0|     16|   251|
|0-24 months |MAL-ED         |INDIA        |9       |             1|      5|   251|
|0-24 months |MAL-ED         |INDIA        |10      |             0|     26|   251|
|0-24 months |MAL-ED         |INDIA        |10      |             1|     13|   251|
|0-24 months |MAL-ED         |INDIA        |11      |             0|     20|   251|
|0-24 months |MAL-ED         |INDIA        |11      |             1|      6|   251|
|0-24 months |MAL-ED         |INDIA        |12      |             0|     13|   251|
|0-24 months |MAL-ED         |INDIA        |12      |             1|      4|   251|
|0-24 months |MAL-ED         |BANGLADESH   |1       |             0|     18|   265|
|0-24 months |MAL-ED         |BANGLADESH   |1       |             1|      3|   265|
|0-24 months |MAL-ED         |BANGLADESH   |2       |             0|     16|   265|
|0-24 months |MAL-ED         |BANGLADESH   |2       |             1|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH   |3       |             0|     20|   265|
|0-24 months |MAL-ED         |BANGLADESH   |3       |             1|      7|   265|
|0-24 months |MAL-ED         |BANGLADESH   |4       |             0|     12|   265|
|0-24 months |MAL-ED         |BANGLADESH   |4       |             1|      5|   265|
|0-24 months |MAL-ED         |BANGLADESH   |5       |             0|     19|   265|
|0-24 months |MAL-ED         |BANGLADESH   |5       |             1|      3|   265|
|0-24 months |MAL-ED         |BANGLADESH   |6       |             0|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH   |6       |             1|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH   |7       |             0|      9|   265|
|0-24 months |MAL-ED         |BANGLADESH   |7       |             1|      5|   265|
|0-24 months |MAL-ED         |BANGLADESH   |8       |             0|     23|   265|
|0-24 months |MAL-ED         |BANGLADESH   |8       |             1|      6|   265|
|0-24 months |MAL-ED         |BANGLADESH   |9       |             0|     19|   265|
|0-24 months |MAL-ED         |BANGLADESH   |9       |             1|      9|   265|
|0-24 months |MAL-ED         |BANGLADESH   |10      |             0|     23|   265|
|0-24 months |MAL-ED         |BANGLADESH   |10      |             1|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH   |11      |             0|     16|   265|
|0-24 months |MAL-ED         |BANGLADESH   |11      |             1|      3|   265|
|0-24 months |MAL-ED         |BANGLADESH   |12      |             0|     28|   265|
|0-24 months |MAL-ED         |BANGLADESH   |12      |             1|      5|   265|
|0-24 months |MAL-ED         |PERU         |1       |             0|     39|   303|
|0-24 months |MAL-ED         |PERU         |1       |             1|     12|   303|
|0-24 months |MAL-ED         |PERU         |2       |             0|     13|   303|
|0-24 months |MAL-ED         |PERU         |2       |             1|      5|   303|
|0-24 months |MAL-ED         |PERU         |3       |             0|     24|   303|
|0-24 months |MAL-ED         |PERU         |3       |             1|      3|   303|
|0-24 months |MAL-ED         |PERU         |4       |             0|     16|   303|
|0-24 months |MAL-ED         |PERU         |4       |             1|      3|   303|
|0-24 months |MAL-ED         |PERU         |5       |             0|     19|   303|
|0-24 months |MAL-ED         |PERU         |5       |             1|      5|   303|
|0-24 months |MAL-ED         |PERU         |6       |             0|     12|   303|
|0-24 months |MAL-ED         |PERU         |6       |             1|      5|   303|
|0-24 months |MAL-ED         |PERU         |7       |             0|     19|   303|
|0-24 months |MAL-ED         |PERU         |7       |             1|      5|   303|
|0-24 months |MAL-ED         |PERU         |8       |             0|     21|   303|
|0-24 months |MAL-ED         |PERU         |8       |             1|      5|   303|
|0-24 months |MAL-ED         |PERU         |9       |             0|     14|   303|
|0-24 months |MAL-ED         |PERU         |9       |             1|      3|   303|
|0-24 months |MAL-ED         |PERU         |10      |             0|     18|   303|
|0-24 months |MAL-ED         |PERU         |10      |             1|      5|   303|
|0-24 months |MAL-ED         |PERU         |11      |             0|     29|   303|
|0-24 months |MAL-ED         |PERU         |11      |             1|      7|   303|
|0-24 months |MAL-ED         |PERU         |12      |             0|     15|   303|
|0-24 months |MAL-ED         |PERU         |12      |             1|      6|   303|
|0-24 months |MAL-ED         |NEPAL        |1       |             0|     21|   240|
|0-24 months |MAL-ED         |NEPAL        |1       |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |             0|     17|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |             0|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |             1|      6|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |             0|     15|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |             0|     24|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |             1|      1|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |             0|     17|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |             0|     18|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |             0|     29|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |             0|     13|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |             1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |             0|     14|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |             1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |             0|     21|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |             1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |             0|     18|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |             1|      0|   240|
|0-24 months |MAL-ED         |BRAZIL       |1       |             0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL       |1       |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |             0|     26|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |             1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |             0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |             1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |             0|     15|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |             1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |             0|     16|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |             0|      6|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |             1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |             0|     15|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |             1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |             0|     25|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |             1|      5|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |             0|     36|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |             0|     12|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |             0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |             1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |             0|     14|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |             1|      4|   233|
|0-24 months |MAL-ED         |TANZANIA     |1       |             0|      8|   262|
|0-24 months |MAL-ED         |TANZANIA     |1       |             1|     11|   262|
|0-24 months |MAL-ED         |TANZANIA     |2       |             0|     16|   262|
|0-24 months |MAL-ED         |TANZANIA     |2       |             1|     12|   262|
|0-24 months |MAL-ED         |TANZANIA     |3       |             0|      9|   262|
|0-24 months |MAL-ED         |TANZANIA     |3       |             1|     11|   262|
|0-24 months |MAL-ED         |TANZANIA     |4       |             0|      4|   262|
|0-24 months |MAL-ED         |TANZANIA     |4       |             1|     12|   262|
|0-24 months |MAL-ED         |TANZANIA     |5       |             0|     13|   262|
|0-24 months |MAL-ED         |TANZANIA     |5       |             1|     11|   262|
|0-24 months |MAL-ED         |TANZANIA     |6       |             0|      8|   262|
|0-24 months |MAL-ED         |TANZANIA     |6       |             1|     12|   262|
|0-24 months |MAL-ED         |TANZANIA     |7       |             0|      9|   262|
|0-24 months |MAL-ED         |TANZANIA     |7       |             1|     15|   262|
|0-24 months |MAL-ED         |TANZANIA     |8       |             0|      7|   262|
|0-24 months |MAL-ED         |TANZANIA     |8       |             1|      3|   262|
|0-24 months |MAL-ED         |TANZANIA     |9       |             0|      7|   262|
|0-24 months |MAL-ED         |TANZANIA     |9       |             1|     11|   262|
|0-24 months |MAL-ED         |TANZANIA     |10      |             0|     10|   262|
|0-24 months |MAL-ED         |TANZANIA     |10      |             1|     10|   262|
|0-24 months |MAL-ED         |TANZANIA     |11      |             0|     18|   262|
|0-24 months |MAL-ED         |TANZANIA     |11      |             1|      9|   262|
|0-24 months |MAL-ED         |TANZANIA     |12      |             0|     16|   262|
|0-24 months |MAL-ED         |TANZANIA     |12      |             1|     20|   262|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |             0|     33|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |             1|     12|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |             0|     17|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |             1|      9|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |             0|     14|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |             1|      5|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |             0|     16|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |             1|      3|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |             0|     13|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |             1|      2|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |             0|     14|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |             1|      3|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |             0|     18|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |             1|      9|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |             0|     11|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |             1|      4|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |             0|     16|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |             1|      6|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |             0|     21|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |             1|      8|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |             0|     19|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |             1|      8|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |             0|     49|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |             1|      4|   314|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |             0|     47|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |             1|     26|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |             0|     41|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |             1|     12|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |             0|     42|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |             1|     20|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |             0|     37|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |             1|     16|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |             0|     34|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |             1|     21|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |             0|     32|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |             1|     17|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |             0|     28|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |             1|      6|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |             0|     35|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |             1|     15|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |             0|     38|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |             1|     16|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |             0|     24|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |             1|     17|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |             0|     42|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |             1|     14|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |             0|     33|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |             1|     16|   629|
|0-24 months |PROBIT         |BELARUS      |1       |             0|    926| 16897|
|0-24 months |PROBIT         |BELARUS      |1       |             1|     36| 16897|
|0-24 months |PROBIT         |BELARUS      |2       |             0|    977| 16897|
|0-24 months |PROBIT         |BELARUS      |2       |             1|     19| 16897|
|0-24 months |PROBIT         |BELARUS      |3       |             0|   1115| 16897|
|0-24 months |PROBIT         |BELARUS      |3       |             1|     23| 16897|
|0-24 months |PROBIT         |BELARUS      |4       |             0|   1131| 16897|
|0-24 months |PROBIT         |BELARUS      |4       |             1|     40| 16897|
|0-24 months |PROBIT         |BELARUS      |5       |             0|   1089| 16897|
|0-24 months |PROBIT         |BELARUS      |5       |             1|     31| 16897|
|0-24 months |PROBIT         |BELARUS      |6       |             0|   1187| 16897|
|0-24 months |PROBIT         |BELARUS      |6       |             1|     45| 16897|
|0-24 months |PROBIT         |BELARUS      |7       |             0|   1541| 16897|
|0-24 months |PROBIT         |BELARUS      |7       |             1|     40| 16897|
|0-24 months |PROBIT         |BELARUS      |8       |             0|   1552| 16897|
|0-24 months |PROBIT         |BELARUS      |8       |             1|     58| 16897|
|0-24 months |PROBIT         |BELARUS      |9       |             0|   1640| 16897|
|0-24 months |PROBIT         |BELARUS      |9       |             1|     34| 16897|
|0-24 months |PROBIT         |BELARUS      |10      |             0|   1762| 16897|
|0-24 months |PROBIT         |BELARUS      |10      |             1|     39| 16897|
|0-24 months |PROBIT         |BELARUS      |11      |             0|   1677| 16897|
|0-24 months |PROBIT         |BELARUS      |11      |             1|     38| 16897|
|0-24 months |PROBIT         |BELARUS      |12      |             0|   1833| 16897|
|0-24 months |PROBIT         |BELARUS      |12      |             1|     64| 16897|
|0-24 months |PROVIDE        |BANGLADESH   |1       |             0|     43|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1       |             1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |             0|     33|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |             1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |             0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |             1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |             0|     33|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |             1|      7|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |             0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |             1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |             0|     75|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |             1|     14|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |             0|     75|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |             1|     14|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |             0|     55|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |             1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |             0|     70|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |             1|     13|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |             0|     67|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |             1|     10|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |             0|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |             1|      3|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |             0|     24|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |             1|      4|   700|
|0-24 months |ResPak         |PAKISTAN     |1       |             0|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |1       |             1|      6|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |             0|     10|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |             1|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |             0|     20|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |             1|     15|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |             0|     23|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |             1|     10|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |             0|     21|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |             1|     21|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |             0|     30|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |             1|     16|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |             0|     18|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |             1|     10|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |             0|     25|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |             1|     19|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |             0|      8|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |             1|     10|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |             0|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |             1|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |             0|      1|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |             1|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |             0|      1|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |             1|      1|   284|
|0-24 months |SAS-CompFeed   |INDIA        |1       |             0|     73|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |1       |             1|     38|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |2       |             0|     48|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |2       |             1|     25|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |3       |             0|     44|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |3       |             1|     25|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |4       |             0|     55|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |4       |             1|     11|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |5       |             0|     88|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |5       |             1|     35|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |6       |             0|     84|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |6       |             1|     44|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |7       |             0|     88|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |7       |             1|     39|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |8       |             0|    130|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |8       |             1|     74|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |9       |             0|    117|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |9       |             1|     72|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |10      |             0|    117|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |10      |             1|     60|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |11      |             0|    101|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |11      |             1|     40|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |12      |             0|     79|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |12      |             1|     44|  1531|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |             0|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |             1|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |             0|     27|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |             1|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |             0|     15|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |             1|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |             0|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |             1|      0|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |             0|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |             1|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |             0|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |             1|     18|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |             0|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |             1|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |             0|     38|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |             1|     35|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |             0|     30|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |             1|     27|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |             0|     30|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |             1|     25|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |             0|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |             1|     19|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |             0|     21|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |             1|     21|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |             0|    151|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |             1|     16|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |             0|    175|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |             1|     14|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |             0|    144|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |             1|     15|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |             0|    189|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |             1|     20|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |             0|    163|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |             1|     27|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |             0|    160|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |             1|     18|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |             0|    209|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |             1|     24|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |             0|    191|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |             1|     31|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |             0|    188|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |             1|     12|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |             0|    225|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |             1|     22|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |             0|    174|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |             1|     22|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |             0|    188|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |             1|     18|  2396|
|0-24 months |Vellore Crypto |INDIA        |1       |             0|     29|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |             1|     12|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |             0|     10|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |             1|      7|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |             0|     24|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |             1|     11|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |             0|     12|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |             1|      4|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |             0|     11|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |             1|     11|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |             0|     38|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |             1|      9|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |             0|     26|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |             1|      9|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |             0|     40|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |             1|     10|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |             0|     26|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |             1|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |             0|     39|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |             1|      3|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |             0|     25|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |             1|     12|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |             0|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |             1|      9|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |             0|   1118| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |             1|    199| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |             0|    883| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |             1|    181| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |             0|    987| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |             1|    233| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |             0|    812| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |             1|    173| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |             0|    849| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |             1|    184| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |             0|    991| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |             1|    212| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |             0|   1011| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |             1|    196| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |             0|   1058| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |             1|    233| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |             0|   1069| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |             1|    198| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |             0|    897| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |             1|    163| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |             0|   1026| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |             1|    186| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |             0|    995| 14059|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |             1|    205| 14059|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |             0|     27|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |             1|      4|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |             0|     11|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |             1|      4|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |             0|     25|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |             1|      6|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |             0|     35|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |             1|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |             0|     30|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |             1|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |             0|     21|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |             1|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |             0|     26|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |             1|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |             0|     14|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |             1|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |             0|     15|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |             1|      6|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |             0|     19|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |             1|      4|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |             0|     33|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |             1|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |             0|     21|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |             1|      5|   368|
|0-6 months  |CMIN           |BANGLADESH   |1       |             0|     23|   276|
|0-6 months  |CMIN           |BANGLADESH   |1       |             1|      6|   276|
|0-6 months  |CMIN           |BANGLADESH   |2       |             0|     22|   276|
|0-6 months  |CMIN           |BANGLADESH   |2       |             1|      5|   276|
|0-6 months  |CMIN           |BANGLADESH   |3       |             0|     22|   276|
|0-6 months  |CMIN           |BANGLADESH   |3       |             1|      5|   276|
|0-6 months  |CMIN           |BANGLADESH   |4       |             0|     12|   276|
|0-6 months  |CMIN           |BANGLADESH   |4       |             1|      0|   276|
|0-6 months  |CMIN           |BANGLADESH   |5       |             0|     16|   276|
|0-6 months  |CMIN           |BANGLADESH   |5       |             1|      5|   276|
|0-6 months  |CMIN           |BANGLADESH   |6       |             0|      8|   276|
|0-6 months  |CMIN           |BANGLADESH   |6       |             1|      3|   276|
|0-6 months  |CMIN           |BANGLADESH   |7       |             0|      8|   276|
|0-6 months  |CMIN           |BANGLADESH   |7       |             1|      6|   276|
|0-6 months  |CMIN           |BANGLADESH   |8       |             0|     22|   276|
|0-6 months  |CMIN           |BANGLADESH   |8       |             1|      9|   276|
|0-6 months  |CMIN           |BANGLADESH   |9       |             0|     14|   276|
|0-6 months  |CMIN           |BANGLADESH   |9       |             1|      5|   276|
|0-6 months  |CMIN           |BANGLADESH   |10      |             0|     20|   276|
|0-6 months  |CMIN           |BANGLADESH   |10      |             1|     10|   276|
|0-6 months  |CMIN           |BANGLADESH   |11      |             0|     20|   276|
|0-6 months  |CMIN           |BANGLADESH   |11      |             1|      7|   276|
|0-6 months  |CMIN           |BANGLADESH   |12      |             0|     19|   276|
|0-6 months  |CMIN           |BANGLADESH   |12      |             1|      9|   276|
|0-6 months  |CONTENT        |PERU         |1       |             0|     10|   215|
|0-6 months  |CONTENT        |PERU         |1       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |2       |             0|     15|   215|
|0-6 months  |CONTENT        |PERU         |2       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3       |             0|     27|   215|
|0-6 months  |CONTENT        |PERU         |3       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |4       |             0|     24|   215|
|0-6 months  |CONTENT        |PERU         |4       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |5       |             0|     13|   215|
|0-6 months  |CONTENT        |PERU         |5       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |6       |             0|      8|   215|
|0-6 months  |CONTENT        |PERU         |6       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |7       |             0|     39|   215|
|0-6 months  |CONTENT        |PERU         |7       |             1|      2|   215|
|0-6 months  |CONTENT        |PERU         |8       |             0|     17|   215|
|0-6 months  |CONTENT        |PERU         |8       |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |9       |             0|     19|   215|
|0-6 months  |CONTENT        |PERU         |9       |             1|      4|   215|
|0-6 months  |CONTENT        |PERU         |10      |             0|     15|   215|
|0-6 months  |CONTENT        |PERU         |10      |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |11      |             0|     10|   215|
|0-6 months  |CONTENT        |PERU         |11      |             1|      0|   215|
|0-6 months  |CONTENT        |PERU         |12      |             0|     10|   215|
|0-6 months  |CONTENT        |PERU         |12      |             1|      2|   215|
|0-6 months  |EE             |PAKISTAN     |1       |             0|     64|   379|
|0-6 months  |EE             |PAKISTAN     |1       |             1|     43|   379|
|0-6 months  |EE             |PAKISTAN     |2       |             0|     35|   379|
|0-6 months  |EE             |PAKISTAN     |2       |             1|     25|   379|
|0-6 months  |EE             |PAKISTAN     |3       |             0|     18|   379|
|0-6 months  |EE             |PAKISTAN     |3       |             1|     16|   379|
|0-6 months  |EE             |PAKISTAN     |4       |             0|     12|   379|
|0-6 months  |EE             |PAKISTAN     |4       |             1|      7|   379|
|0-6 months  |EE             |PAKISTAN     |5       |             0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |5       |             1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |6       |             0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |6       |             1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |7       |             0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |7       |             1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |8       |             0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |8       |             1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |9       |             0|      0|   379|
|0-6 months  |EE             |PAKISTAN     |9       |             1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |10      |             0|      1|   379|
|0-6 months  |EE             |PAKISTAN     |10      |             1|      1|   379|
|0-6 months  |EE             |PAKISTAN     |11      |             0|     42|   379|
|0-6 months  |EE             |PAKISTAN     |11      |             1|     42|   379|
|0-6 months  |EE             |PAKISTAN     |12      |             0|     46|   379|
|0-6 months  |EE             |PAKISTAN     |12      |             1|     27|   379|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |             0|    147|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |             1|     10|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |             0|    258|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |             1|     24|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |             0|    233|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |             1|     26|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |             1|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |             0|      0|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |             1|      0|   698|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |             0|     27|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |             1|      3|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |             0|     27|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |             1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |             0|     21|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |             1|      2|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |             0|     22|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |             1|      8|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |             0|     30|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |             1|      2|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |             0|     19|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |             1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |             0|     15|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |             1|      3|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |             0|     21|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |             1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |             0|     16|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |             1|      1|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |             0|     20|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |             1|      7|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |             0|     16|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |             1|      1|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |             0|     34|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |             1|      0|   295|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |             0|   2114| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |             1|    371| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |             0|   1778| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |             1|    286| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |             0|   2059| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |             1|    316| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |             0|   1572| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |             1|    239| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |             0|   1186| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |             1|    205| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |             0|   1251| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |             1|    187| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |             0|   1312| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |             1|    211| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |             0|   1789| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |             1|    332| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |             0|   2439| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |             1|    464| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |             0|   2534| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |             1|    415| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |             0|   2471| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |             1|    488| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |             0|   2635| 27136|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |             1|    482| 27136|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |             0|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |             1|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |             0|    790|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |             1|     85|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |             0|    804|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |             1|    103|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |             0|    638|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |             1|     84|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |             0|    533|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |             1|     50|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |             0|    402|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |             1|     39|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |             0|    437|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |             1|     53|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |             0|    539|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |             1|     58|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |             0|    337|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |             1|     37|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |             0|    128|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |             1|     11|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |             0|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |             1|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |             0|      0|  5128|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |             1|      0|  5128|
|0-6 months  |Keneba         |GAMBIA       |1       |             0|    229|  2465|
|0-6 months  |Keneba         |GAMBIA       |1       |             1|     28|  2465|
|0-6 months  |Keneba         |GAMBIA       |2       |             0|    207|  2465|
|0-6 months  |Keneba         |GAMBIA       |2       |             1|     34|  2465|
|0-6 months  |Keneba         |GAMBIA       |3       |             0|    246|  2465|
|0-6 months  |Keneba         |GAMBIA       |3       |             1|     32|  2465|
|0-6 months  |Keneba         |GAMBIA       |4       |             0|    142|  2465|
|0-6 months  |Keneba         |GAMBIA       |4       |             1|     14|  2465|
|0-6 months  |Keneba         |GAMBIA       |5       |             0|    145|  2465|
|0-6 months  |Keneba         |GAMBIA       |5       |             1|     19|  2465|
|0-6 months  |Keneba         |GAMBIA       |6       |             0|    129|  2465|
|0-6 months  |Keneba         |GAMBIA       |6       |             1|     23|  2465|
|0-6 months  |Keneba         |GAMBIA       |7       |             0|    101|  2465|
|0-6 months  |Keneba         |GAMBIA       |7       |             1|     11|  2465|
|0-6 months  |Keneba         |GAMBIA       |8       |             0|    170|  2465|
|0-6 months  |Keneba         |GAMBIA       |8       |             1|     23|  2465|
|0-6 months  |Keneba         |GAMBIA       |9       |             0|    191|  2465|
|0-6 months  |Keneba         |GAMBIA       |9       |             1|     20|  2465|
|0-6 months  |Keneba         |GAMBIA       |10      |             0|    257|  2465|
|0-6 months  |Keneba         |GAMBIA       |10      |             1|     30|  2465|
|0-6 months  |Keneba         |GAMBIA       |11      |             0|    176|  2465|
|0-6 months  |Keneba         |GAMBIA       |11      |             1|     27|  2465|
|0-6 months  |Keneba         |GAMBIA       |12      |             0|    185|  2465|
|0-6 months  |Keneba         |GAMBIA       |12      |             1|     26|  2465|
|0-6 months  |LCNI-5         |MALAWI       |1       |             0|     10|   272|
|0-6 months  |LCNI-5         |MALAWI       |1       |             1|      1|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |             0|     12|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |             1|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |             0|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |             1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |             0|      8|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |             1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |             0|     10|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |             1|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |             0|      8|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |             1|      1|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |             0|     16|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |             1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |             0|     24|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |             1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |             0|     35|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |             1|      4|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |             0|     39|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |             1|      5|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |             0|     41|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |             1|      3|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |             0|     47|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |             1|      2|   272|
|0-6 months  |MAL-ED         |INDIA        |1       |             0|     20|   251|
|0-6 months  |MAL-ED         |INDIA        |1       |             1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |             0|     24|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |             1|      2|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |             0|     20|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |             1|      5|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |             0|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |             1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |             0|      3|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |             1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |             0|     20|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |             1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |             0|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |             1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |             0|     29|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |             1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |             0|     19|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |             1|      2|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |             0|     34|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |             1|      5|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |             0|     25|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |             1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |             0|     14|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |             1|      3|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |             0|     20|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |             1|      1|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |             0|     19|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |             1|      1|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |             0|     23|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |             1|      4|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |             0|     14|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |             1|      3|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |             0|     19|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |             1|      3|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |             0|      7|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |             1|      1|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |             0|     13|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |             1|      1|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |             0|     29|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |             1|      0|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |             0|     25|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |             1|      3|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |             0|     26|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |             1|      1|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |             0|     18|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |             1|      1|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |             0|     31|   265|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |             1|      2|   265|
|0-6 months  |MAL-ED         |PERU         |1       |             0|     46|   303|
|0-6 months  |MAL-ED         |PERU         |1       |             1|      5|   303|
|0-6 months  |MAL-ED         |PERU         |2       |             0|     14|   303|
|0-6 months  |MAL-ED         |PERU         |2       |             1|      4|   303|
|0-6 months  |MAL-ED         |PERU         |3       |             0|     25|   303|
|0-6 months  |MAL-ED         |PERU         |3       |             1|      2|   303|
|0-6 months  |MAL-ED         |PERU         |4       |             0|     16|   303|
|0-6 months  |MAL-ED         |PERU         |4       |             1|      3|   303|
|0-6 months  |MAL-ED         |PERU         |5       |             0|     22|   303|
|0-6 months  |MAL-ED         |PERU         |5       |             1|      2|   303|
|0-6 months  |MAL-ED         |PERU         |6       |             0|     13|   303|
|0-6 months  |MAL-ED         |PERU         |6       |             1|      4|   303|
|0-6 months  |MAL-ED         |PERU         |7       |             0|     19|   303|
|0-6 months  |MAL-ED         |PERU         |7       |             1|      5|   303|
|0-6 months  |MAL-ED         |PERU         |8       |             0|     24|   303|
|0-6 months  |MAL-ED         |PERU         |8       |             1|      2|   303|
|0-6 months  |MAL-ED         |PERU         |9       |             0|     16|   303|
|0-6 months  |MAL-ED         |PERU         |9       |             1|      1|   303|
|0-6 months  |MAL-ED         |PERU         |10      |             0|     18|   303|
|0-6 months  |MAL-ED         |PERU         |10      |             1|      5|   303|
|0-6 months  |MAL-ED         |PERU         |11      |             0|     32|   303|
|0-6 months  |MAL-ED         |PERU         |11      |             1|      4|   303|
|0-6 months  |MAL-ED         |PERU         |12      |             0|     20|   303|
|0-6 months  |MAL-ED         |PERU         |12      |             1|      1|   303|
|0-6 months  |MAL-ED         |NEPAL        |1       |             0|     23|   240|
|0-6 months  |MAL-ED         |NEPAL        |1       |             1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |             0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |             1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |             0|     16|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |             1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |             0|     17|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |             1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |             0|     25|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |             1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |             0|     17|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |             1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |             0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |             1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |             0|     30|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |             1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |             0|     13|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |             1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |             0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |             1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |             0|     21|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |             1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |             0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |             1|      0|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1       |             0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1       |             1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |             0|     28|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |             1|      2|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |             0|     20|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |             1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |             0|     15|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |             1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |             0|     16|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |             1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |             0|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |             1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |             0|     15|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |             1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |             0|     27|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |             1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |             0|     36|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |             1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |             0|     12|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |             1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |             0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |             1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |             0|     14|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |             1|      4|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1       |             0|     18|   262|
|0-6 months  |MAL-ED         |TANZANIA     |1       |             1|      1|   262|
|0-6 months  |MAL-ED         |TANZANIA     |2       |             0|     23|   262|
|0-6 months  |MAL-ED         |TANZANIA     |2       |             1|      5|   262|
|0-6 months  |MAL-ED         |TANZANIA     |3       |             0|     19|   262|
|0-6 months  |MAL-ED         |TANZANIA     |3       |             1|      1|   262|
|0-6 months  |MAL-ED         |TANZANIA     |4       |             0|     12|   262|
|0-6 months  |MAL-ED         |TANZANIA     |4       |             1|      4|   262|
|0-6 months  |MAL-ED         |TANZANIA     |5       |             0|     22|   262|
|0-6 months  |MAL-ED         |TANZANIA     |5       |             1|      2|   262|
|0-6 months  |MAL-ED         |TANZANIA     |6       |             0|     16|   262|
|0-6 months  |MAL-ED         |TANZANIA     |6       |             1|      4|   262|
|0-6 months  |MAL-ED         |TANZANIA     |7       |             0|     21|   262|
|0-6 months  |MAL-ED         |TANZANIA     |7       |             1|      3|   262|
|0-6 months  |MAL-ED         |TANZANIA     |8       |             0|      9|   262|
|0-6 months  |MAL-ED         |TANZANIA     |8       |             1|      1|   262|
|0-6 months  |MAL-ED         |TANZANIA     |9       |             0|     16|   262|
|0-6 months  |MAL-ED         |TANZANIA     |9       |             1|      2|   262|
|0-6 months  |MAL-ED         |TANZANIA     |10      |             0|     15|   262|
|0-6 months  |MAL-ED         |TANZANIA     |10      |             1|      5|   262|
|0-6 months  |MAL-ED         |TANZANIA     |11      |             0|     25|   262|
|0-6 months  |MAL-ED         |TANZANIA     |11      |             1|      2|   262|
|0-6 months  |MAL-ED         |TANZANIA     |12      |             0|     28|   262|
|0-6 months  |MAL-ED         |TANZANIA     |12      |             1|      8|   262|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |             0|     40|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |             1|      5|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |             0|     23|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |             1|      3|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |             0|     16|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |             1|      3|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |             0|     19|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |             1|      0|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |             0|     14|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |             1|      1|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |             0|     16|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |             1|      1|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |             0|     26|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |             1|      1|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |             0|     13|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |             1|      2|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |             0|     18|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |             1|      4|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |             0|     27|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |             1|      2|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |             0|     22|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |             1|      5|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |             0|     51|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |             1|      2|   314|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |             0|     63|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |             1|     10|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |             0|     50|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |             1|      3|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |             0|     56|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |             1|      6|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |             0|     52|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |             1|      1|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |             0|     50|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |             1|      5|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |             0|     46|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |             1|      3|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |             0|     34|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |             1|      0|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |             0|     46|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |             1|      4|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |             0|     48|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |             1|      6|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |             0|     34|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |             1|      7|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |             0|     49|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |             1|      7|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |             0|     42|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |             1|      7|   629|
|0-6 months  |PROBIT         |BELARUS      |1       |             0|    950| 16892|
|0-6 months  |PROBIT         |BELARUS      |1       |             1|     12| 16892|
|0-6 months  |PROBIT         |BELARUS      |2       |             0|    988| 16892|
|0-6 months  |PROBIT         |BELARUS      |2       |             1|      8| 16892|
|0-6 months  |PROBIT         |BELARUS      |3       |             0|   1130| 16892|
|0-6 months  |PROBIT         |BELARUS      |3       |             1|      8| 16892|
|0-6 months  |PROBIT         |BELARUS      |4       |             0|   1156| 16892|
|0-6 months  |PROBIT         |BELARUS      |4       |             1|     14| 16892|
|0-6 months  |PROBIT         |BELARUS      |5       |             0|   1111| 16892|
|0-6 months  |PROBIT         |BELARUS      |5       |             1|      9| 16892|
|0-6 months  |PROBIT         |BELARUS      |6       |             0|   1213| 16892|
|0-6 months  |PROBIT         |BELARUS      |6       |             1|     19| 16892|
|0-6 months  |PROBIT         |BELARUS      |7       |             0|   1563| 16892|
|0-6 months  |PROBIT         |BELARUS      |7       |             1|     17| 16892|
|0-6 months  |PROBIT         |BELARUS      |8       |             0|   1582| 16892|
|0-6 months  |PROBIT         |BELARUS      |8       |             1|     25| 16892|
|0-6 months  |PROBIT         |BELARUS      |9       |             0|   1657| 16892|
|0-6 months  |PROBIT         |BELARUS      |9       |             1|     17| 16892|
|0-6 months  |PROBIT         |BELARUS      |10      |             0|   1783| 16892|
|0-6 months  |PROBIT         |BELARUS      |10      |             1|     18| 16892|
|0-6 months  |PROBIT         |BELARUS      |11      |             0|   1699| 16892|
|0-6 months  |PROBIT         |BELARUS      |11      |             1|     16| 16892|
|0-6 months  |PROBIT         |BELARUS      |12      |             0|   1875| 16892|
|0-6 months  |PROBIT         |BELARUS      |12      |             1|     22| 16892|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |             0|     46|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |             1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |             0|     36|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |             1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |             0|     51|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |             1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |             0|     38|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |             1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |             0|     58|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |             1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |             0|     82|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |             1|      7|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |             0|     84|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |             1|      5|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |             0|     59|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |             1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |             0|     77|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |             1|      6|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |             0|     76|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |             1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |             0|     36|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |             1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |             0|     26|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |             1|      2|   700|
|0-6 months  |ResPak         |PAKISTAN     |1       |             0|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |1       |             1|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |             0|     10|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |             1|      4|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |             0|     20|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |             1|     15|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |             0|     23|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |             1|     10|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |             0|     24|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |             1|     17|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |             0|     31|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |             1|     15|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |             0|     20|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |             1|      8|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |             0|     29|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |             1|     14|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |             0|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |             1|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |             0|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |             1|      3|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |             0|      2|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |             1|      2|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |             0|      1|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |             1|      1|   282|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |             0|     89|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |             1|     22|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |             0|     62|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |             1|     11|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |             0|     59|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |             1|     10|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |             0|     58|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |             1|      8|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |             0|    103|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |             1|     20|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |             0|    108|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |             1|     20|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |             0|    107|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |             1|     20|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |             0|    173|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |             1|     31|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |             0|    164|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |             1|     24|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |             0|    146|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |             1|     31|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |             0|    125|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |             1|     16|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |             0|    105|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |             1|     16|  1528|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |             0|     17|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |             1|      1|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |             0|     40|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |             1|      4|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |             0|     21|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |             1|      1|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |             0|      3|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |             1|      0|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |             0|     11|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |             1|      2|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |             0|     16|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |             1|      6|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |             0|     33|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |             1|      3|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |             0|     64|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |             1|      7|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |             0|     51|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |             1|      6|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |             0|     49|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |             1|      6|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |             0|     27|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |             1|      6|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |             0|     34|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |             1|      8|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |             0|    159|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |             1|      8|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |             0|    184|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |             1|      5|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |             0|    153|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |             1|      6|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |             0|    203|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |             1|      6|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |             0|    174|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |             1|     16|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |             0|    170|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |             1|      8|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |             0|    221|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |             1|     12|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |             0|    208|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |             1|     14|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |             0|    193|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |             1|      7|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |             0|    238|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |             1|      9|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |             0|    189|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |             1|      7|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |             0|    199|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |             1|      7|  2396|
|0-6 months  |Vellore Crypto |INDIA        |1       |             0|     32|   410|
|0-6 months  |Vellore Crypto |INDIA        |1       |             1|      9|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |             0|     11|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |             1|      6|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |             0|     27|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |             1|      8|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |             0|     12|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |             1|      4|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |             0|     19|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |             1|      3|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |             0|     43|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |             1|      4|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |             0|     30|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |             1|      5|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |             0|     47|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |             1|      3|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |             0|     27|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |             1|      4|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |             0|     41|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |             1|      1|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |             0|     26|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |             1|     11|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |             0|     33|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |             1|      4|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |             0|   1214| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |             1|    102| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |             0|    978| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |             1|     85| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |             0|   1091| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |             1|    126| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |             0|    885| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |             1|     98| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |             0|    924| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |             1|    108| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |             0|   1070| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |             1|    132| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |             0|   1101| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |             1|    102| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |             0|   1153| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |             1|    137| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |             0|   1160| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |             1|    106| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |             0|    967| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |             1|     92| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |             0|   1115| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |             1|     97| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |             0|   1104| 14042|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |             1|     95| 14042|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


