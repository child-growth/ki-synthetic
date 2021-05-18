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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country      |brthmon | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |           0|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |           1|     16|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |           0|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |           1|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |           0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |           1|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |           0|     23|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |           1|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |           0|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |           1|     17|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |           0|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |           1|     19|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |           0|     16|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |           1|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |           0|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |           1|     21|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |           0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |           1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |           0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |           1|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |           0|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |           1|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |           0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |           1|     18|   373|
|0-24 months |CMIN           |BANGLADESH   |1       |           0|     17|   271|
|0-24 months |CMIN           |BANGLADESH   |1       |           1|     12|   271|
|0-24 months |CMIN           |BANGLADESH   |2       |           0|     17|   271|
|0-24 months |CMIN           |BANGLADESH   |2       |           1|     10|   271|
|0-24 months |CMIN           |BANGLADESH   |3       |           0|     13|   271|
|0-24 months |CMIN           |BANGLADESH   |3       |           1|     13|   271|
|0-24 months |CMIN           |BANGLADESH   |4       |           0|      7|   271|
|0-24 months |CMIN           |BANGLADESH   |4       |           1|      5|   271|
|0-24 months |CMIN           |BANGLADESH   |5       |           0|     13|   271|
|0-24 months |CMIN           |BANGLADESH   |5       |           1|      6|   271|
|0-24 months |CMIN           |BANGLADESH   |6       |           0|      4|   271|
|0-24 months |CMIN           |BANGLADESH   |6       |           1|      7|   271|
|0-24 months |CMIN           |BANGLADESH   |7       |           0|      9|   271|
|0-24 months |CMIN           |BANGLADESH   |7       |           1|      6|   271|
|0-24 months |CMIN           |BANGLADESH   |8       |           0|     19|   271|
|0-24 months |CMIN           |BANGLADESH   |8       |           1|     10|   271|
|0-24 months |CMIN           |BANGLADESH   |9       |           0|     13|   271|
|0-24 months |CMIN           |BANGLADESH   |9       |           1|      6|   271|
|0-24 months |CMIN           |BANGLADESH   |10      |           0|     14|   271|
|0-24 months |CMIN           |BANGLADESH   |10      |           1|     15|   271|
|0-24 months |CMIN           |BANGLADESH   |11      |           0|     11|   271|
|0-24 months |CMIN           |BANGLADESH   |11      |           1|     16|   271|
|0-24 months |CMIN           |BANGLADESH   |12      |           0|     11|   271|
|0-24 months |CMIN           |BANGLADESH   |12      |           1|     17|   271|
|0-24 months |CONTENT        |PERU         |1       |           0|      9|   215|
|0-24 months |CONTENT        |PERU         |1       |           1|      1|   215|
|0-24 months |CONTENT        |PERU         |2       |           0|     13|   215|
|0-24 months |CONTENT        |PERU         |2       |           1|      2|   215|
|0-24 months |CONTENT        |PERU         |3       |           0|     26|   215|
|0-24 months |CONTENT        |PERU         |3       |           1|      1|   215|
|0-24 months |CONTENT        |PERU         |4       |           0|     24|   215|
|0-24 months |CONTENT        |PERU         |4       |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |5       |           0|     13|   215|
|0-24 months |CONTENT        |PERU         |5       |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |6       |           0|      8|   215|
|0-24 months |CONTENT        |PERU         |6       |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |7       |           0|     40|   215|
|0-24 months |CONTENT        |PERU         |7       |           1|      1|   215|
|0-24 months |CONTENT        |PERU         |8       |           0|     17|   215|
|0-24 months |CONTENT        |PERU         |8       |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |9       |           0|     23|   215|
|0-24 months |CONTENT        |PERU         |9       |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |10      |           0|     15|   215|
|0-24 months |CONTENT        |PERU         |10      |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |11      |           0|     10|   215|
|0-24 months |CONTENT        |PERU         |11      |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |12      |           0|     12|   215|
|0-24 months |CONTENT        |PERU         |12      |           1|      0|   215|
|0-24 months |EE             |PAKISTAN     |1       |           0|     44|   380|
|0-24 months |EE             |PAKISTAN     |1       |           1|     63|   380|
|0-24 months |EE             |PAKISTAN     |2       |           0|     28|   380|
|0-24 months |EE             |PAKISTAN     |2       |           1|     32|   380|
|0-24 months |EE             |PAKISTAN     |3       |           0|     12|   380|
|0-24 months |EE             |PAKISTAN     |3       |           1|     23|   380|
|0-24 months |EE             |PAKISTAN     |4       |           0|      6|   380|
|0-24 months |EE             |PAKISTAN     |4       |           1|     13|   380|
|0-24 months |EE             |PAKISTAN     |5       |           0|      0|   380|
|0-24 months |EE             |PAKISTAN     |5       |           1|      0|   380|
|0-24 months |EE             |PAKISTAN     |6       |           0|      0|   380|
|0-24 months |EE             |PAKISTAN     |6       |           1|      0|   380|
|0-24 months |EE             |PAKISTAN     |7       |           0|      0|   380|
|0-24 months |EE             |PAKISTAN     |7       |           1|      0|   380|
|0-24 months |EE             |PAKISTAN     |8       |           0|      0|   380|
|0-24 months |EE             |PAKISTAN     |8       |           1|      0|   380|
|0-24 months |EE             |PAKISTAN     |9       |           0|      0|   380|
|0-24 months |EE             |PAKISTAN     |9       |           1|      0|   380|
|0-24 months |EE             |PAKISTAN     |10      |           0|      2|   380|
|0-24 months |EE             |PAKISTAN     |10      |           1|      0|   380|
|0-24 months |EE             |PAKISTAN     |11      |           0|     35|   380|
|0-24 months |EE             |PAKISTAN     |11      |           1|     49|   380|
|0-24 months |EE             |PAKISTAN     |12      |           0|     27|   380|
|0-24 months |EE             |PAKISTAN     |12      |           1|     46|   380|
|0-24 months |GMS-Nepal      |NEPAL        |1       |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |1       |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2       |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2       |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3       |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3       |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |4       |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |4       |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |5       |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |5       |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |6       |           0|     62|   686|
|0-24 months |GMS-Nepal      |NEPAL        |6       |           1|     93|   686|
|0-24 months |GMS-Nepal      |NEPAL        |7       |           0|    103|   686|
|0-24 months |GMS-Nepal      |NEPAL        |7       |           1|    171|   686|
|0-24 months |GMS-Nepal      |NEPAL        |8       |           0|    116|   686|
|0-24 months |GMS-Nepal      |NEPAL        |8       |           1|    141|   686|
|0-24 months |GMS-Nepal      |NEPAL        |9       |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |9       |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |10      |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |10      |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |11      |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |11      |           1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |12      |           0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |12      |           1|      0|   686|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |           0|     26|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |           1|      4|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |           0|     27|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |           1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |           0|     21|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |           1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |           0|     25|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |           1|      6|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |           0|     29|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |           1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |           0|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |           1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |           0|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |           1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |           0|     20|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |           1|      2|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |           0|     16|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |           1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |           0|     30|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |           1|      2|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |           0|     18|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |           1|      2|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |           0|     38|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |           1|      3|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           0|    247|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           1|     74|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           0|    134|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           1|     44|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           0|    156|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           1|     50|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           0|    156|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           1|     49|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           0|    166|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           1|     51|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           0|    135|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           1|     48|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           0|    153|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           1|     39|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           0|    276|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           1|     76|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           0|    278|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           1|    107|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           0|    290|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           1|     74|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           0|    269|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           1|     76|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           0|    249|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           1|     69|  3266|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |           0|   1817| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |           1|    653| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |           0|   1520| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |           1|    526| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |           0|   1726| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |           1|    630| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |           0|   1325| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |           1|    471| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |           0|   1006| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |           1|    371| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |           0|   1039| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |           1|    386| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |           0|   1089| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |           1|    425| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |           0|   1565| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |           1|    546| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |           0|   2137| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |           1|    743| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |           0|   2217| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |           1|    702| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |           0|   2198| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |           1|    744| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |           0|   2344| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |           1|    754| 26934|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |           0|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |           1|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |           0|    677|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |           1|    273|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |           0|    679|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |           1|    305|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |           0|    503|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |           1|    258|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |           0|    433|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |           1|    194|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |           0|    315|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |           1|    142|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |           0|    361|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |           1|    151|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |           0|    423|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |           1|    194|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |           0|    266|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |           1|    125|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |           0|     95|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |           1|     46|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |           0|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |           1|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |           0|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |           1|      0|  5440|
|0-24 months |Keneba         |GAMBIA       |1       |           0|    161|  2920|
|0-24 months |Keneba         |GAMBIA       |1       |           1|    144|  2920|
|0-24 months |Keneba         |GAMBIA       |2       |           0|    150|  2920|
|0-24 months |Keneba         |GAMBIA       |2       |           1|    121|  2920|
|0-24 months |Keneba         |GAMBIA       |3       |           0|    182|  2920|
|0-24 months |Keneba         |GAMBIA       |3       |           1|    128|  2920|
|0-24 months |Keneba         |GAMBIA       |4       |           0|    106|  2920|
|0-24 months |Keneba         |GAMBIA       |4       |           1|     83|  2920|
|0-24 months |Keneba         |GAMBIA       |5       |           0|    118|  2920|
|0-24 months |Keneba         |GAMBIA       |5       |           1|     84|  2920|
|0-24 months |Keneba         |GAMBIA       |6       |           0|    106|  2920|
|0-24 months |Keneba         |GAMBIA       |6       |           1|     77|  2920|
|0-24 months |Keneba         |GAMBIA       |7       |           0|     84|  2920|
|0-24 months |Keneba         |GAMBIA       |7       |           1|     55|  2920|
|0-24 months |Keneba         |GAMBIA       |8       |           0|    130|  2920|
|0-24 months |Keneba         |GAMBIA       |8       |           1|    105|  2920|
|0-24 months |Keneba         |GAMBIA       |9       |           0|    145|  2920|
|0-24 months |Keneba         |GAMBIA       |9       |           1|    107|  2920|
|0-24 months |Keneba         |GAMBIA       |10      |           0|    193|  2920|
|0-24 months |Keneba         |GAMBIA       |10      |           1|    150|  2920|
|0-24 months |Keneba         |GAMBIA       |11      |           0|    137|  2920|
|0-24 months |Keneba         |GAMBIA       |11      |           1|    109|  2920|
|0-24 months |Keneba         |GAMBIA       |12      |           0|    130|  2920|
|0-24 months |Keneba         |GAMBIA       |12      |           1|    115|  2920|
|0-24 months |LCNI-5         |MALAWI       |1       |           0|     46|   840|
|0-24 months |LCNI-5         |MALAWI       |1       |           1|      3|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |           0|     43|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |           1|      2|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |           0|     22|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |           1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |           0|     38|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |           1|      1|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |           0|     43|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |           1|      2|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |           0|     33|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |           1|      3|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |           0|     64|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |           1|      3|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |           0|     85|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |           1|      7|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |           0|     85|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |           1|     10|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |           0|    132|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |           1|     12|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |           0|    106|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |           1|      9|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |           0|     76|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |           1|     15|   840|
|0-24 months |MAL-ED         |INDIA        |1       |           0|      9|   251|
|0-24 months |MAL-ED         |INDIA        |1       |           1|     11|   251|
|0-24 months |MAL-ED         |INDIA        |2       |           0|     21|   251|
|0-24 months |MAL-ED         |INDIA        |2       |           1|      5|   251|
|0-24 months |MAL-ED         |INDIA        |3       |           0|     14|   251|
|0-24 months |MAL-ED         |INDIA        |3       |           1|     11|   251|
|0-24 months |MAL-ED         |INDIA        |4       |           0|      5|   251|
|0-24 months |MAL-ED         |INDIA        |4       |           1|      7|   251|
|0-24 months |MAL-ED         |INDIA        |5       |           0|      2|   251|
|0-24 months |MAL-ED         |INDIA        |5       |           1|      1|   251|
|0-24 months |MAL-ED         |INDIA        |6       |           0|     15|   251|
|0-24 months |MAL-ED         |INDIA        |6       |           1|      6|   251|
|0-24 months |MAL-ED         |INDIA        |7       |           0|      4|   251|
|0-24 months |MAL-ED         |INDIA        |7       |           1|      7|   251|
|0-24 months |MAL-ED         |INDIA        |8       |           0|     13|   251|
|0-24 months |MAL-ED         |INDIA        |8       |           1|     17|   251|
|0-24 months |MAL-ED         |INDIA        |9       |           0|     10|   251|
|0-24 months |MAL-ED         |INDIA        |9       |           1|     11|   251|
|0-24 months |MAL-ED         |INDIA        |10      |           0|     19|   251|
|0-24 months |MAL-ED         |INDIA        |10      |           1|     20|   251|
|0-24 months |MAL-ED         |INDIA        |11      |           0|     11|   251|
|0-24 months |MAL-ED         |INDIA        |11      |           1|     15|   251|
|0-24 months |MAL-ED         |INDIA        |12      |           0|      8|   251|
|0-24 months |MAL-ED         |INDIA        |12      |           1|      9|   251|
|0-24 months |MAL-ED         |BANGLADESH   |1       |           0|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH   |1       |           1|      8|   263|
|0-24 months |MAL-ED         |BANGLADESH   |2       |           0|     16|   263|
|0-24 months |MAL-ED         |BANGLADESH   |2       |           1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH   |3       |           0|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH   |3       |           1|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH   |4       |           0|     11|   263|
|0-24 months |MAL-ED         |BANGLADESH   |4       |           1|      6|   263|
|0-24 months |MAL-ED         |BANGLADESH   |5       |           0|     16|   263|
|0-24 months |MAL-ED         |BANGLADESH   |5       |           1|      6|   263|
|0-24 months |MAL-ED         |BANGLADESH   |6       |           0|      5|   263|
|0-24 months |MAL-ED         |BANGLADESH   |6       |           1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH   |7       |           0|      9|   263|
|0-24 months |MAL-ED         |BANGLADESH   |7       |           1|      5|   263|
|0-24 months |MAL-ED         |BANGLADESH   |8       |           0|     18|   263|
|0-24 months |MAL-ED         |BANGLADESH   |8       |           1|     11|   263|
|0-24 months |MAL-ED         |BANGLADESH   |9       |           0|     22|   263|
|0-24 months |MAL-ED         |BANGLADESH   |9       |           1|      6|   263|
|0-24 months |MAL-ED         |BANGLADESH   |10      |           0|     18|   263|
|0-24 months |MAL-ED         |BANGLADESH   |10      |           1|      9|   263|
|0-24 months |MAL-ED         |BANGLADESH   |11      |           0|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH   |11      |           1|      6|   263|
|0-24 months |MAL-ED         |BANGLADESH   |12      |           0|     22|   263|
|0-24 months |MAL-ED         |BANGLADESH   |12      |           1|     11|   263|
|0-24 months |MAL-ED         |PERU         |1       |           0|     49|   302|
|0-24 months |MAL-ED         |PERU         |1       |           1|      2|   302|
|0-24 months |MAL-ED         |PERU         |2       |           0|     16|   302|
|0-24 months |MAL-ED         |PERU         |2       |           1|      1|   302|
|0-24 months |MAL-ED         |PERU         |3       |           0|     23|   302|
|0-24 months |MAL-ED         |PERU         |3       |           1|      4|   302|
|0-24 months |MAL-ED         |PERU         |4       |           0|     16|   302|
|0-24 months |MAL-ED         |PERU         |4       |           1|      3|   302|
|0-24 months |MAL-ED         |PERU         |5       |           0|     22|   302|
|0-24 months |MAL-ED         |PERU         |5       |           1|      2|   302|
|0-24 months |MAL-ED         |PERU         |6       |           0|     17|   302|
|0-24 months |MAL-ED         |PERU         |6       |           1|      0|   302|
|0-24 months |MAL-ED         |PERU         |7       |           0|     20|   302|
|0-24 months |MAL-ED         |PERU         |7       |           1|      4|   302|
|0-24 months |MAL-ED         |PERU         |8       |           0|     23|   302|
|0-24 months |MAL-ED         |PERU         |8       |           1|      3|   302|
|0-24 months |MAL-ED         |PERU         |9       |           0|     14|   302|
|0-24 months |MAL-ED         |PERU         |9       |           1|      3|   302|
|0-24 months |MAL-ED         |PERU         |10      |           0|     21|   302|
|0-24 months |MAL-ED         |PERU         |10      |           1|      2|   302|
|0-24 months |MAL-ED         |PERU         |11      |           0|     35|   302|
|0-24 months |MAL-ED         |PERU         |11      |           1|      1|   302|
|0-24 months |MAL-ED         |PERU         |12      |           0|     19|   302|
|0-24 months |MAL-ED         |PERU         |12      |           1|      2|   302|
|0-24 months |MAL-ED         |NEPAL        |1       |           0|     11|   240|
|0-24 months |MAL-ED         |NEPAL        |1       |           1|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |           0|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |           1|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |           0|     10|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |           1|      8|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |           0|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |           1|      6|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |           0|     18|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |           1|      7|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |           0|     13|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |           1|      6|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |           0|     15|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |           1|      5|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |           0|     23|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |           1|      8|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |           0|     12|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |           1|      1|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |           0|     11|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |           1|      3|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |           0|     17|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |           1|      4|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |           0|     14|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |           1|      4|   240|
|0-24 months |MAL-ED         |BRAZIL       |1       |           0|     12|   233|
|0-24 months |MAL-ED         |BRAZIL       |1       |           1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |           0|     26|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |           1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |           0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |           1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |           0|     14|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |           1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |           0|     16|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |           1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |           0|      7|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |           1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |           0|     16|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |           1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |           0|     26|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |           1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |           0|     35|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |           1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |           0|     11|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |           1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |           0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |           1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |           0|     17|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |           1|      1|   233|
|0-24 months |MAL-ED         |TANZANIA     |1       |           0|     17|   261|
|0-24 months |MAL-ED         |TANZANIA     |1       |           1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA     |2       |           0|     27|   261|
|0-24 months |MAL-ED         |TANZANIA     |2       |           1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA     |3       |           0|     16|   261|
|0-24 months |MAL-ED         |TANZANIA     |3       |           1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA     |4       |           0|     13|   261|
|0-24 months |MAL-ED         |TANZANIA     |4       |           1|      3|   261|
|0-24 months |MAL-ED         |TANZANIA     |5       |           0|     21|   261|
|0-24 months |MAL-ED         |TANZANIA     |5       |           1|      3|   261|
|0-24 months |MAL-ED         |TANZANIA     |6       |           0|     16|   261|
|0-24 months |MAL-ED         |TANZANIA     |6       |           1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA     |7       |           0|     20|   261|
|0-24 months |MAL-ED         |TANZANIA     |7       |           1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA     |8       |           0|     10|   261|
|0-24 months |MAL-ED         |TANZANIA     |8       |           1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |9       |           0|     13|   261|
|0-24 months |MAL-ED         |TANZANIA     |9       |           1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA     |10      |           0|     18|   261|
|0-24 months |MAL-ED         |TANZANIA     |10      |           1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA     |11      |           0|     23|   261|
|0-24 months |MAL-ED         |TANZANIA     |11      |           1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA     |12      |           0|     31|   261|
|0-24 months |MAL-ED         |TANZANIA     |12      |           1|      5|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |           0|     33|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |           1|     12|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |           0|     21|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |           1|      5|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |           0|     12|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |           1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |           0|     15|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |           1|      3|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |           0|     14|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |           1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |           0|     11|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |           1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |           0|     21|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |           1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |           0|     14|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |           1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |           0|     20|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |           1|      2|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |           0|     22|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |           1|      7|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |           0|     21|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |           1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |           0|     44|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |           1|      9|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |           0|     36|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |           1|     36|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |           0|     32|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |           1|     21|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |           0|     33|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |           1|     29|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |           0|     24|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |           1|     27|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |           0|     29|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |           1|     25|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |           0|     23|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |           1|     26|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |           0|     18|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |           1|     16|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |           0|     21|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |           1|     29|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |           0|     31|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |           1|     23|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |           0|     24|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |           1|     16|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |           0|     29|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |           1|     27|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |           0|     26|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |           1|     23|   624|
|0-24 months |PROBIT         |BELARUS      |1       |           0|    713| 16898|
|0-24 months |PROBIT         |BELARUS      |1       |           1|    249| 16898|
|0-24 months |PROBIT         |BELARUS      |2       |           0|    754| 16898|
|0-24 months |PROBIT         |BELARUS      |2       |           1|    242| 16898|
|0-24 months |PROBIT         |BELARUS      |3       |           0|    850| 16898|
|0-24 months |PROBIT         |BELARUS      |3       |           1|    288| 16898|
|0-24 months |PROBIT         |BELARUS      |4       |           0|    876| 16898|
|0-24 months |PROBIT         |BELARUS      |4       |           1|    295| 16898|
|0-24 months |PROBIT         |BELARUS      |5       |           0|    827| 16898|
|0-24 months |PROBIT         |BELARUS      |5       |           1|    293| 16898|
|0-24 months |PROBIT         |BELARUS      |6       |           0|    912| 16898|
|0-24 months |PROBIT         |BELARUS      |6       |           1|    320| 16898|
|0-24 months |PROBIT         |BELARUS      |7       |           0|   1195| 16898|
|0-24 months |PROBIT         |BELARUS      |7       |           1|    386| 16898|
|0-24 months |PROBIT         |BELARUS      |8       |           0|   1182| 16898|
|0-24 months |PROBIT         |BELARUS      |8       |           1|    428| 16898|
|0-24 months |PROBIT         |BELARUS      |9       |           0|   1257| 16898|
|0-24 months |PROBIT         |BELARUS      |9       |           1|    417| 16898|
|0-24 months |PROBIT         |BELARUS      |10      |           0|   1321| 16898|
|0-24 months |PROBIT         |BELARUS      |10      |           1|    481| 16898|
|0-24 months |PROBIT         |BELARUS      |11      |           0|   1275| 16898|
|0-24 months |PROBIT         |BELARUS      |11      |           1|    440| 16898|
|0-24 months |PROBIT         |BELARUS      |12      |           0|   1420| 16898|
|0-24 months |PROBIT         |BELARUS      |12      |           1|    477| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |1       |           0|     33|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1       |           1|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |           0|     27|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |           1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |           0|     31|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |           1|     21|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |           0|     29|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |           1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |           0|     42|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |           1|     17|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |           0|     52|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |           1|     37|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |           0|     54|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |           1|     35|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |           0|     40|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |           1|     20|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |           0|     51|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |           1|     32|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |           0|     50|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |           1|     27|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |           0|     26|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |           1|     11|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |           0|     19|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |           1|      9|   700|
|0-24 months |ResPak         |PAKISTAN     |1       |           0|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |1       |           1|      6|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |           0|      7|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |           1|      7|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |           0|     18|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |           1|     17|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |           0|     15|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |           1|     18|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |           0|     16|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |           1|     26|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |           0|     16|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |           1|     30|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |           0|     17|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |           1|     11|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |           0|     28|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |           1|     16|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |           0|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |           1|     15|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |           0|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |           1|      5|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |           0|      1|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |           1|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |           0|      0|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |           1|      2|   284|
|0-24 months |SAS-CompFeed   |INDIA        |1       |           0|     60|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |1       |           1|     48|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |2       |           0|     36|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |2       |           1|     37|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |3       |           0|     43|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |3       |           1|     26|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |4       |           0|     41|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |4       |           1|     24|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |5       |           0|     71|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |5       |           1|     51|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |6       |           0|     74|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |6       |           1|     52|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |7       |           0|     75|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |7       |           1|     49|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |8       |           0|    124|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |8       |           1|     80|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |9       |           0|    104|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |9       |           1|     81|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |10      |           0|    106|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |10      |           1|     70|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |11      |           0|     79|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |11      |           1|     61|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |12      |           0|     71|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |12      |           1|     48|  1511|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |           0|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |           1|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |           0|     24|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |           1|     20|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |           0|      8|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |           1|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |           0|      0|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |           1|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |           0|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |           1|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |           0|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |           1|     10|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |           0|     20|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |           1|     16|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |           0|     38|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |           1|     35|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |           0|     31|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |           1|     26|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |           0|     32|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |           1|     23|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |           0|     16|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |           1|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |           0|     21|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |           1|     21|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |           0|    135|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |           1|     32|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |           0|    154|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |           1|     35|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |           0|    121|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |           1|     38|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |           0|    164|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |           1|     45|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |           0|    145|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |           1|     45|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |           0|    135|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |           1|     43|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |           0|    168|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |           1|     65|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |           0|    165|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |           1|     57|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |           0|    152|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |           1|     48|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |           0|    184|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |           1|     63|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |           0|    151|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |           1|     45|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |           0|    156|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |           1|     50|  2396|
|0-24 months |Vellore Crypto |INDIA        |1       |           0|     18|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |           1|     23|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |           0|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |           1|     12|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |           0|     10|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |           1|     25|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |           0|      7|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |           1|      9|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |           0|      7|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |           1|     15|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |           0|     11|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |           1|     36|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |           0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |           1|     21|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |           0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |           1|     36|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |           0|      8|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |           1|     23|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |           0|     19|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |           1|     23|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |           0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |           1|     23|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |           0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |           1|     23|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |           0|    993| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |           1|    308| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |           0|    812| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |           1|    245| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |           0|    936| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |           1|    272| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |           0|    760| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |           1|    211| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |           0|    777| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |           1|    247| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |           0|    902| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |           1|    287| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |           0|    900| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |           1|    299| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |           0|    962| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |           1|    317| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |           0|    934| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |           1|    320| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |           0|    806| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |           1|    245| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |           0|    932| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |           1|    272| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |           0|    920| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |           1|    274| 13931|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |           0|     21|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |           1|     10|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |           0|      3|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |           1|     12|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |           0|     19|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |           1|     12|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |           0|     29|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |           1|     19|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |           0|     24|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |           1|     14|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |           0|     12|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |           1|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |           0|     20|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |           1|     22|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |           0|      3|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |           1|     19|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |           0|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |           1|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |           0|     11|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |           1|     12|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |           0|     15|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |           1|     27|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |           0|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |           1|     13|   368|
|0-6 months  |CMIN           |BANGLADESH   |1       |           0|     23|   271|
|0-6 months  |CMIN           |BANGLADESH   |1       |           1|      6|   271|
|0-6 months  |CMIN           |BANGLADESH   |2       |           0|     21|   271|
|0-6 months  |CMIN           |BANGLADESH   |2       |           1|      6|   271|
|0-6 months  |CMIN           |BANGLADESH   |3       |           0|     20|   271|
|0-6 months  |CMIN           |BANGLADESH   |3       |           1|      6|   271|
|0-6 months  |CMIN           |BANGLADESH   |4       |           0|     11|   271|
|0-6 months  |CMIN           |BANGLADESH   |4       |           1|      1|   271|
|0-6 months  |CMIN           |BANGLADESH   |5       |           0|     15|   271|
|0-6 months  |CMIN           |BANGLADESH   |5       |           1|      4|   271|
|0-6 months  |CMIN           |BANGLADESH   |6       |           0|      7|   271|
|0-6 months  |CMIN           |BANGLADESH   |6       |           1|      4|   271|
|0-6 months  |CMIN           |BANGLADESH   |7       |           0|     14|   271|
|0-6 months  |CMIN           |BANGLADESH   |7       |           1|      1|   271|
|0-6 months  |CMIN           |BANGLADESH   |8       |           0|     25|   271|
|0-6 months  |CMIN           |BANGLADESH   |8       |           1|      4|   271|
|0-6 months  |CMIN           |BANGLADESH   |9       |           0|     19|   271|
|0-6 months  |CMIN           |BANGLADESH   |9       |           1|      0|   271|
|0-6 months  |CMIN           |BANGLADESH   |10      |           0|     24|   271|
|0-6 months  |CMIN           |BANGLADESH   |10      |           1|      5|   271|
|0-6 months  |CMIN           |BANGLADESH   |11      |           0|     20|   271|
|0-6 months  |CMIN           |BANGLADESH   |11      |           1|      7|   271|
|0-6 months  |CMIN           |BANGLADESH   |12      |           0|     22|   271|
|0-6 months  |CMIN           |BANGLADESH   |12      |           1|      6|   271|
|0-6 months  |CONTENT        |PERU         |1       |           0|      9|   215|
|0-6 months  |CONTENT        |PERU         |1       |           1|      1|   215|
|0-6 months  |CONTENT        |PERU         |2       |           0|     13|   215|
|0-6 months  |CONTENT        |PERU         |2       |           1|      2|   215|
|0-6 months  |CONTENT        |PERU         |3       |           0|     26|   215|
|0-6 months  |CONTENT        |PERU         |3       |           1|      1|   215|
|0-6 months  |CONTENT        |PERU         |4       |           0|     24|   215|
|0-6 months  |CONTENT        |PERU         |4       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |5       |           0|     13|   215|
|0-6 months  |CONTENT        |PERU         |5       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |6       |           0|      8|   215|
|0-6 months  |CONTENT        |PERU         |6       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |7       |           0|     41|   215|
|0-6 months  |CONTENT        |PERU         |7       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |8       |           0|     17|   215|
|0-6 months  |CONTENT        |PERU         |8       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |9       |           0|     23|   215|
|0-6 months  |CONTENT        |PERU         |9       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |10      |           0|     15|   215|
|0-6 months  |CONTENT        |PERU         |10      |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |11      |           0|     10|   215|
|0-6 months  |CONTENT        |PERU         |11      |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |12      |           0|     12|   215|
|0-6 months  |CONTENT        |PERU         |12      |           1|      0|   215|
|0-6 months  |EE             |PAKISTAN     |1       |           0|     66|   380|
|0-6 months  |EE             |PAKISTAN     |1       |           1|     41|   380|
|0-6 months  |EE             |PAKISTAN     |2       |           0|     48|   380|
|0-6 months  |EE             |PAKISTAN     |2       |           1|     12|   380|
|0-6 months  |EE             |PAKISTAN     |3       |           0|     24|   380|
|0-6 months  |EE             |PAKISTAN     |3       |           1|     11|   380|
|0-6 months  |EE             |PAKISTAN     |4       |           0|     11|   380|
|0-6 months  |EE             |PAKISTAN     |4       |           1|      8|   380|
|0-6 months  |EE             |PAKISTAN     |5       |           0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |5       |           1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |6       |           0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |6       |           1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |7       |           0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |7       |           1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |8       |           0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |8       |           1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |9       |           0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |9       |           1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |10      |           0|      2|   380|
|0-6 months  |EE             |PAKISTAN     |10      |           1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |11      |           0|     54|   380|
|0-6 months  |EE             |PAKISTAN     |11      |           1|     30|   380|
|0-6 months  |EE             |PAKISTAN     |12      |           0|     51|   380|
|0-6 months  |EE             |PAKISTAN     |12      |           1|     22|   380|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |           0|    100|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |           1|     55|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |           0|    165|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |           1|    109|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |           0|    163|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |           1|     94|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |           1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |           0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |           1|      0|   686|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |           0|     29|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |           1|      1|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |           0|     27|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |           1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |           0|     23|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |           1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |           0|     26|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |           1|      4|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |           0|     32|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |           1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |           0|     19|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |           1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |           0|     18|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |           1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |           0|     19|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |           1|      2|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |           0|     16|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |           1|      1|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |           0|     25|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |           1|      2|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |           0|     17|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |           1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |           0|     34|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |           1|      0|   295|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |           0|   2034| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |           1|    423| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |           0|   1691| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |           1|    347| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |           0|   1936| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |           1|    413| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |           0|   1494| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |           1|    298| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |           0|   1162| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |           1|    211| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |           0|   1171| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |           1|    246| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |           0|   1241| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |           1|    265| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |           0|   1756| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |           1|    348| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |           0|   2332| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |           1|    537| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |           0|   2387| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |           1|    526| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |           0|   2384| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |           1|    550| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |           0|   2521| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |           1|    565| 26838|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |           0|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |           1|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |           0|    785|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |           1|     84|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |           0|    811|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |           1|     88|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |           0|    637|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |           1|     78|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |           0|    523|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |           1|     59|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |           0|    375|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |           1|     61|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |           0|    433|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |           1|     53|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |           0|    537|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |           1|     57|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |           0|    322|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |           1|     52|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |           0|    118|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |           1|     21|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |           0|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |           1|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |           0|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |           1|      0|  5094|
|0-6 months  |Keneba         |GAMBIA       |1       |           0|    186|  2466|
|0-6 months  |Keneba         |GAMBIA       |1       |           1|     71|  2466|
|0-6 months  |Keneba         |GAMBIA       |2       |           0|    180|  2466|
|0-6 months  |Keneba         |GAMBIA       |2       |           1|     61|  2466|
|0-6 months  |Keneba         |GAMBIA       |3       |           0|    213|  2466|
|0-6 months  |Keneba         |GAMBIA       |3       |           1|     67|  2466|
|0-6 months  |Keneba         |GAMBIA       |4       |           0|    118|  2466|
|0-6 months  |Keneba         |GAMBIA       |4       |           1|     38|  2466|
|0-6 months  |Keneba         |GAMBIA       |5       |           0|    117|  2466|
|0-6 months  |Keneba         |GAMBIA       |5       |           1|     47|  2466|
|0-6 months  |Keneba         |GAMBIA       |6       |           0|    104|  2466|
|0-6 months  |Keneba         |GAMBIA       |6       |           1|     47|  2466|
|0-6 months  |Keneba         |GAMBIA       |7       |           0|     77|  2466|
|0-6 months  |Keneba         |GAMBIA       |7       |           1|     35|  2466|
|0-6 months  |Keneba         |GAMBIA       |8       |           0|    132|  2466|
|0-6 months  |Keneba         |GAMBIA       |8       |           1|     61|  2466|
|0-6 months  |Keneba         |GAMBIA       |9       |           0|    153|  2466|
|0-6 months  |Keneba         |GAMBIA       |9       |           1|     58|  2466|
|0-6 months  |Keneba         |GAMBIA       |10      |           0|    219|  2466|
|0-6 months  |Keneba         |GAMBIA       |10      |           1|     68|  2466|
|0-6 months  |Keneba         |GAMBIA       |11      |           0|    145|  2466|
|0-6 months  |Keneba         |GAMBIA       |11      |           1|     58|  2466|
|0-6 months  |Keneba         |GAMBIA       |12      |           0|    148|  2466|
|0-6 months  |Keneba         |GAMBIA       |12      |           1|     63|  2466|
|0-6 months  |LCNI-5         |MALAWI       |1       |           0|     11|   272|
|0-6 months  |LCNI-5         |MALAWI       |1       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |           0|     14|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |           0|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |           0|      8|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |           0|     12|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |           0|      9|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |           0|     16|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |           0|     23|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |           1|      1|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |           0|     38|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |           1|      1|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |           0|     43|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |           1|      1|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |           0|     44|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |           1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |           0|     48|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |           1|      1|   272|
|0-6 months  |MAL-ED         |INDIA        |1       |           0|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |1       |           1|      9|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |           0|     22|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |           1|      4|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |           0|     18|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |           1|      7|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |           0|      8|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |           1|      4|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |           0|      3|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |           1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |           0|     16|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |           1|      5|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |           0|      7|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |           1|      4|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |           0|     17|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |           1|     13|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |           0|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |           1|     10|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |           0|     27|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |           1|     12|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |           0|     19|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |           1|      7|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |           0|     10|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |           1|      7|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |           0|     17|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |           1|      4|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |           0|     16|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |           1|      3|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |           0|     17|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |           1|      9|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |           0|     14|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |           1|      3|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |           0|     17|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |           1|      5|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |           0|      6|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |           1|      2|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |           0|     10|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |           1|      4|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |           0|     21|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |           1|      8|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |           0|     24|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |           1|      4|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |           0|     21|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |           1|      6|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |           0|     15|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |           1|      4|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |           0|     25|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |           1|      8|   263|
|0-6 months  |MAL-ED         |PERU         |1       |           0|     50|   302|
|0-6 months  |MAL-ED         |PERU         |1       |           1|      1|   302|
|0-6 months  |MAL-ED         |PERU         |2       |           0|     17|   302|
|0-6 months  |MAL-ED         |PERU         |2       |           1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |3       |           0|     25|   302|
|0-6 months  |MAL-ED         |PERU         |3       |           1|      2|   302|
|0-6 months  |MAL-ED         |PERU         |4       |           0|     17|   302|
|0-6 months  |MAL-ED         |PERU         |4       |           1|      2|   302|
|0-6 months  |MAL-ED         |PERU         |5       |           0|     24|   302|
|0-6 months  |MAL-ED         |PERU         |5       |           1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |6       |           0|     17|   302|
|0-6 months  |MAL-ED         |PERU         |6       |           1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |7       |           0|     22|   302|
|0-6 months  |MAL-ED         |PERU         |7       |           1|      2|   302|
|0-6 months  |MAL-ED         |PERU         |8       |           0|     26|   302|
|0-6 months  |MAL-ED         |PERU         |8       |           1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |9       |           0|     16|   302|
|0-6 months  |MAL-ED         |PERU         |9       |           1|      1|   302|
|0-6 months  |MAL-ED         |PERU         |10      |           0|     23|   302|
|0-6 months  |MAL-ED         |PERU         |10      |           1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |11      |           0|     35|   302|
|0-6 months  |MAL-ED         |PERU         |11      |           1|      1|   302|
|0-6 months  |MAL-ED         |PERU         |12      |           0|     19|   302|
|0-6 months  |MAL-ED         |PERU         |12      |           1|      2|   302|
|0-6 months  |MAL-ED         |NEPAL        |1       |           0|     15|   240|
|0-6 months  |MAL-ED         |NEPAL        |1       |           1|      8|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |           0|     12|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |           1|      8|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |           0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |           1|      4|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |           0|     16|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |           1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |           0|     20|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |           1|      5|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |           0|     16|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |           1|      3|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |           0|     17|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |           1|      3|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |           0|     24|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |           1|      7|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |           0|     12|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |           1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |           0|     13|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |           1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |           0|     19|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |           1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |           0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |           1|      4|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1       |           0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1       |           1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |           0|     27|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |           1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |           0|     20|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |           1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |           0|     14|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |           1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |           0|     16|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |           1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |           0|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |           1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |           0|     16|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |           1|      2|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |           0|     26|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |           1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |           0|     36|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |           1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |           0|     12|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |           1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |           0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |           1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |           0|     18|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |           1|      0|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1       |           0|     18|   261|
|0-6 months  |MAL-ED         |TANZANIA     |1       |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |2       |           0|     28|   261|
|0-6 months  |MAL-ED         |TANZANIA     |2       |           1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |3       |           0|     17|   261|
|0-6 months  |MAL-ED         |TANZANIA     |3       |           1|      3|   261|
|0-6 months  |MAL-ED         |TANZANIA     |4       |           0|     16|   261|
|0-6 months  |MAL-ED         |TANZANIA     |4       |           1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |5       |           0|     23|   261|
|0-6 months  |MAL-ED         |TANZANIA     |5       |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |6       |           0|     19|   261|
|0-6 months  |MAL-ED         |TANZANIA     |6       |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |7       |           0|     23|   261|
|0-6 months  |MAL-ED         |TANZANIA     |7       |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |8       |           0|     10|   261|
|0-6 months  |MAL-ED         |TANZANIA     |8       |           1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |9       |           0|     16|   261|
|0-6 months  |MAL-ED         |TANZANIA     |9       |           1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |10      |           0|     20|   261|
|0-6 months  |MAL-ED         |TANZANIA     |10      |           1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |11      |           0|     25|   261|
|0-6 months  |MAL-ED         |TANZANIA     |11      |           1|      2|   261|
|0-6 months  |MAL-ED         |TANZANIA     |12      |           0|     33|   261|
|0-6 months  |MAL-ED         |TANZANIA     |12      |           1|      3|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |           0|     40|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |           1|      5|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |           0|     24|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |           1|      2|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |           0|     14|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |           1|      4|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |           0|     17|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |           1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |           0|     15|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |           1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |           0|     11|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |           1|      6|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |           0|     25|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |           1|      2|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |           0|     15|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |           1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |           0|     21|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |           1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |           0|     25|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |           1|      4|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |           0|     23|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |           1|      4|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |           0|     47|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |           1|      6|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |           0|     44|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |           1|     27|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |           0|     34|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |           1|     18|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |           0|     43|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |           1|     19|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |           0|     28|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |           1|     23|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |           0|     35|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |           1|     19|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |           0|     31|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |           1|     18|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |           0|     21|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |           1|     13|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |           0|     33|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |           1|     17|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |           0|     32|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |           1|     22|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |           0|     28|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |           1|     12|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |           0|     39|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |           1|     17|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |           0|     32|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |           1|     17|   622|
|0-6 months  |PROBIT         |BELARUS      |1       |           0|    718| 16895|
|0-6 months  |PROBIT         |BELARUS      |1       |           1|    244| 16895|
|0-6 months  |PROBIT         |BELARUS      |2       |           0|    761| 16895|
|0-6 months  |PROBIT         |BELARUS      |2       |           1|    235| 16895|
|0-6 months  |PROBIT         |BELARUS      |3       |           0|    853| 16895|
|0-6 months  |PROBIT         |BELARUS      |3       |           1|    285| 16895|
|0-6 months  |PROBIT         |BELARUS      |4       |           0|    885| 16895|
|0-6 months  |PROBIT         |BELARUS      |4       |           1|    285| 16895|
|0-6 months  |PROBIT         |BELARUS      |5       |           0|    833| 16895|
|0-6 months  |PROBIT         |BELARUS      |5       |           1|    287| 16895|
|0-6 months  |PROBIT         |BELARUS      |6       |           0|    920| 16895|
|0-6 months  |PROBIT         |BELARUS      |6       |           1|    312| 16895|
|0-6 months  |PROBIT         |BELARUS      |7       |           0|   1201| 16895|
|0-6 months  |PROBIT         |BELARUS      |7       |           1|    380| 16895|
|0-6 months  |PROBIT         |BELARUS      |8       |           0|   1185| 16895|
|0-6 months  |PROBIT         |BELARUS      |8       |           1|    423| 16895|
|0-6 months  |PROBIT         |BELARUS      |9       |           0|   1265| 16895|
|0-6 months  |PROBIT         |BELARUS      |9       |           1|    409| 16895|
|0-6 months  |PROBIT         |BELARUS      |10      |           0|   1334| 16895|
|0-6 months  |PROBIT         |BELARUS      |10      |           1|    468| 16895|
|0-6 months  |PROBIT         |BELARUS      |11      |           0|   1287| 16895|
|0-6 months  |PROBIT         |BELARUS      |11      |           1|    428| 16895|
|0-6 months  |PROBIT         |BELARUS      |12      |           0|   1429| 16895|
|0-6 months  |PROBIT         |BELARUS      |12      |           1|    468| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |           0|     37|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |           1|     11|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |           0|     34|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |           1|      4|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |           0|     37|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |           1|     15|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |           0|     33|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |           1|      7|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |           0|     47|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |           1|     12|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |           0|     62|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |           1|     27|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |           0|     61|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |           1|     28|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |           0|     44|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |           1|     16|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |           0|     57|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |           1|     26|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |           0|     55|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |           1|     22|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |           0|     29|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |           1|      8|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |           0|     23|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |           1|      5|   700|
|0-6 months  |ResPak         |PAKISTAN     |1       |           0|      6|   282|
|0-6 months  |ResPak         |PAKISTAN     |1       |           1|      4|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |           0|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |           1|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |           0|     22|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |           1|     13|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |           0|     20|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |           1|     13|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |           0|     26|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |           1|     15|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |           0|     26|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |           1|     20|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |           0|     22|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |           1|      6|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |           0|     33|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |           1|     10|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |           0|      3|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |           1|     15|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |           0|      3|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |           1|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |           0|      3|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |           1|      1|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |           0|      0|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |           1|      2|   282|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |           0|     75|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |           1|     32|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |           0|     48|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |           1|     24|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |           0|     50|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |           1|     19|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |           0|     54|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |           1|     11|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |           0|     90|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |           1|     32|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |           0|     95|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |           1|     31|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |           0|    100|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |           1|     24|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |           0|    169|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |           1|     33|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |           0|    144|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |           1|     40|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |           0|    142|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |           1|     34|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |           0|    110|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |           1|     29|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |           0|     95|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |           1|     22|  1503|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |           0|     16|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |           1|      2|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |           0|     37|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |           1|      7|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |           0|     17|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |           1|      5|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |           0|      1|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |           1|      2|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |           0|     12|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |           1|      1|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |           0|     21|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |           1|      1|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |           0|     31|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |           1|      5|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |           0|     62|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |           1|     11|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |           0|     43|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |           1|     14|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |           0|     43|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |           1|     12|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |           0|     22|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |           1|     11|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |           0|     35|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |           1|      7|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |           0|    148|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |           1|     19|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |           0|    168|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |           1|     21|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |           0|    141|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |           1|     18|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |           0|    178|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |           1|     31|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |           0|    167|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |           1|     23|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |           0|    159|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |           1|     19|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |           0|    199|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |           1|     34|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |           0|    188|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |           1|     34|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |           0|    176|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |           1|     24|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |           0|    201|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |           1|     46|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |           0|    167|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |           1|     29|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |           0|    171|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |           1|     35|  2396|
|0-6 months  |Vellore Crypto |INDIA        |1       |           0|     23|   410|
|0-6 months  |Vellore Crypto |INDIA        |1       |           1|     18|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |           0|     10|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |           1|      7|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |           0|     15|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |           1|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |           0|      9|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |           1|      7|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |           0|     10|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |           1|     12|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |           0|     19|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |           1|     28|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |           0|     18|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |           1|     17|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |           0|     21|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |           1|     29|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |           0|      8|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |           1|     23|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |           0|     22|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |           1|     20|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |           0|     16|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |           1|     21|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |           0|     16|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |           1|     21|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |           0|   1062| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |           1|    228| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |           0|    867| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |           1|    183| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |           0|    996| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |           1|    198| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |           0|    803| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |           1|    163| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |           0|    832| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |           1|    184| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |           0|    968| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |           1|    218| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |           0|    956| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |           1|    233| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |           0|   1022| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |           1|    247| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |           0|    998| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |           1|    246| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |           0|    860| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |           1|    186| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |           0|    982| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |           1|    219| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |           0|    986| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |           1|    201| 13838|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |           0|     22|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |           1|      9|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |           0|     12|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |           1|      4|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |           0|     27|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |           1|      4|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |           0|     37|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |           1|     11|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |           0|     34|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |           1|      5|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |           0|     21|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |           1|      8|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |           0|     28|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |           1|     14|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |           0|     14|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |           1|      8|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |           0|     14|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |           1|      7|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |           0|     18|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |           1|      5|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |           0|     31|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |           1|     14|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |           0|     16|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |           1|     10|   373|
|6-24 months |CMIN           |BANGLADESH   |1       |           0|     15|   251|
|6-24 months |CMIN           |BANGLADESH   |1       |           1|      9|   251|
|6-24 months |CMIN           |BANGLADESH   |2       |           0|     18|   251|
|6-24 months |CMIN           |BANGLADESH   |2       |           1|      7|   251|
|6-24 months |CMIN           |BANGLADESH   |3       |           0|     16|   251|
|6-24 months |CMIN           |BANGLADESH   |3       |           1|      9|   251|
|6-24 months |CMIN           |BANGLADESH   |4       |           0|      7|   251|
|6-24 months |CMIN           |BANGLADESH   |4       |           1|      5|   251|
|6-24 months |CMIN           |BANGLADESH   |5       |           0|     14|   251|
|6-24 months |CMIN           |BANGLADESH   |5       |           1|      5|   251|
|6-24 months |CMIN           |BANGLADESH   |6       |           0|      8|   251|
|6-24 months |CMIN           |BANGLADESH   |6       |           1|      3|   251|
|6-24 months |CMIN           |BANGLADESH   |7       |           0|      8|   251|
|6-24 months |CMIN           |BANGLADESH   |7       |           1|      5|   251|
|6-24 months |CMIN           |BANGLADESH   |8       |           0|     18|   251|
|6-24 months |CMIN           |BANGLADESH   |8       |           1|      8|   251|
|6-24 months |CMIN           |BANGLADESH   |9       |           0|     11|   251|
|6-24 months |CMIN           |BANGLADESH   |9       |           1|      6|   251|
|6-24 months |CMIN           |BANGLADESH   |10      |           0|     14|   251|
|6-24 months |CMIN           |BANGLADESH   |10      |           1|     13|   251|
|6-24 months |CMIN           |BANGLADESH   |11      |           0|     12|   251|
|6-24 months |CMIN           |BANGLADESH   |11      |           1|     12|   251|
|6-24 months |CMIN           |BANGLADESH   |12      |           0|     14|   251|
|6-24 months |CMIN           |BANGLADESH   |12      |           1|     14|   251|
|6-24 months |CONTENT        |PERU         |1       |           0|      9|   215|
|6-24 months |CONTENT        |PERU         |1       |           1|      1|   215|
|6-24 months |CONTENT        |PERU         |2       |           0|     15|   215|
|6-24 months |CONTENT        |PERU         |2       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |3       |           0|     27|   215|
|6-24 months |CONTENT        |PERU         |3       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |4       |           0|     24|   215|
|6-24 months |CONTENT        |PERU         |4       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |5       |           0|     13|   215|
|6-24 months |CONTENT        |PERU         |5       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |6       |           0|      8|   215|
|6-24 months |CONTENT        |PERU         |6       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |7       |           0|     40|   215|
|6-24 months |CONTENT        |PERU         |7       |           1|      1|   215|
|6-24 months |CONTENT        |PERU         |8       |           0|     17|   215|
|6-24 months |CONTENT        |PERU         |8       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |9       |           0|     23|   215|
|6-24 months |CONTENT        |PERU         |9       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |10      |           0|     15|   215|
|6-24 months |CONTENT        |PERU         |10      |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |11      |           0|     10|   215|
|6-24 months |CONTENT        |PERU         |11      |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |12      |           0|     12|   215|
|6-24 months |CONTENT        |PERU         |12      |           1|      0|   215|
|6-24 months |EE             |PAKISTAN     |1       |           0|     62|   374|
|6-24 months |EE             |PAKISTAN     |1       |           1|     41|   374|
|6-24 months |EE             |PAKISTAN     |2       |           0|     36|   374|
|6-24 months |EE             |PAKISTAN     |2       |           1|     24|   374|
|6-24 months |EE             |PAKISTAN     |3       |           0|     14|   374|
|6-24 months |EE             |PAKISTAN     |3       |           1|     20|   374|
|6-24 months |EE             |PAKISTAN     |4       |           0|     11|   374|
|6-24 months |EE             |PAKISTAN     |4       |           1|      8|   374|
|6-24 months |EE             |PAKISTAN     |5       |           0|      0|   374|
|6-24 months |EE             |PAKISTAN     |5       |           1|      0|   374|
|6-24 months |EE             |PAKISTAN     |6       |           0|      0|   374|
|6-24 months |EE             |PAKISTAN     |6       |           1|      0|   374|
|6-24 months |EE             |PAKISTAN     |7       |           0|      0|   374|
|6-24 months |EE             |PAKISTAN     |7       |           1|      0|   374|
|6-24 months |EE             |PAKISTAN     |8       |           0|      0|   374|
|6-24 months |EE             |PAKISTAN     |8       |           1|      0|   374|
|6-24 months |EE             |PAKISTAN     |9       |           0|      0|   374|
|6-24 months |EE             |PAKISTAN     |9       |           1|      0|   374|
|6-24 months |EE             |PAKISTAN     |10      |           0|      2|   374|
|6-24 months |EE             |PAKISTAN     |10      |           1|      0|   374|
|6-24 months |EE             |PAKISTAN     |11      |           0|     49|   374|
|6-24 months |EE             |PAKISTAN     |11      |           1|     34|   374|
|6-24 months |EE             |PAKISTAN     |12      |           0|     39|   374|
|6-24 months |EE             |PAKISTAN     |12      |           1|     34|   374|
|6-24 months |GMS-Nepal      |NEPAL        |1       |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |1       |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2       |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2       |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3       |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3       |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |4       |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |4       |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |5       |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |5       |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |6       |           0|     71|   590|
|6-24 months |GMS-Nepal      |NEPAL        |6       |           1|     63|   590|
|6-24 months |GMS-Nepal      |NEPAL        |7       |           0|    115|   590|
|6-24 months |GMS-Nepal      |NEPAL        |7       |           1|    122|   590|
|6-24 months |GMS-Nepal      |NEPAL        |8       |           0|    125|   590|
|6-24 months |GMS-Nepal      |NEPAL        |8       |           1|     94|   590|
|6-24 months |GMS-Nepal      |NEPAL        |9       |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |9       |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |10      |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |10      |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |11      |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |11      |           1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |12      |           0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |12      |           1|      0|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |           0|     23|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |           1|      3|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |           0|     27|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |           1|      1|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |           0|     18|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |           1|      3|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |           0|     22|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |           1|      3|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |           0|     28|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |           1|      3|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |           0|     16|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |           1|      3|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |           0|     15|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |           1|      1|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |           0|     17|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |           1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |           0|     14|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |           1|      1|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |           0|     27|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |           1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |           0|     15|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |           1|      2|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |           0|     32|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |           1|      3|   277|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           0|    247|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           1|     74|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           0|    134|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |           1|     44|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           0|    156|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |           1|     50|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           0|    156|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |           1|     49|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           0|    166|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |           1|     51|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           0|    135|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |           1|     48|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           0|    153|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |           1|     39|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           0|    276|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |           1|     76|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           0|    278|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |           1|    107|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           0|    290|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |           1|     74|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           0|    269|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |           1|     76|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           0|    249|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |           1|     69|  3266|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |           0|   1479| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |           1|    284| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |           0|   1240| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |           1|    233| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |           0|   1497| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |           1|    276| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |           0|   1186| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |           1|    232| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |           0|    935| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |           1|    199| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |           0|    972| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |           1|    181| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |           0|    911| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |           1|    192| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |           0|   1155| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |           1|    231| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |           0|   1300| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |           1|    273| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |           0|   1263| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |           1|    228| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |           0|   1279| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |           1|    259| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |           0|   1235| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |           1|    247| 17287|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |           0|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |           1|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |           0|    725|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |           1|    224|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |           0|    726|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |           1|    255|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |           0|    544|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |           1|    214|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |           0|    469|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |           1|    158|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |           0|    351|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |           1|    106|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |           0|    400|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |           1|    110|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |           0|    459|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |           1|    155|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |           0|    299|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |           1|     91|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |           0|    112|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |           1|     29|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |           0|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |           1|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |           0|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |           1|      0|  5427|
|6-24 months |Keneba         |GAMBIA       |1       |           0|    185|  2738|
|6-24 months |Keneba         |GAMBIA       |1       |           1|     98|  2738|
|6-24 months |Keneba         |GAMBIA       |2       |           0|    161|  2738|
|6-24 months |Keneba         |GAMBIA       |2       |           1|     88|  2738|
|6-24 months |Keneba         |GAMBIA       |3       |           0|    195|  2738|
|6-24 months |Keneba         |GAMBIA       |3       |           1|     88|  2738|
|6-24 months |Keneba         |GAMBIA       |4       |           0|    122|  2738|
|6-24 months |Keneba         |GAMBIA       |4       |           1|     54|  2738|
|6-24 months |Keneba         |GAMBIA       |5       |           0|    130|  2738|
|6-24 months |Keneba         |GAMBIA       |5       |           1|     61|  2738|
|6-24 months |Keneba         |GAMBIA       |6       |           0|    124|  2738|
|6-24 months |Keneba         |GAMBIA       |6       |           1|     47|  2738|
|6-24 months |Keneba         |GAMBIA       |7       |           0|    101|  2738|
|6-24 months |Keneba         |GAMBIA       |7       |           1|     31|  2738|
|6-24 months |Keneba         |GAMBIA       |8       |           0|    156|  2738|
|6-24 months |Keneba         |GAMBIA       |8       |           1|     72|  2738|
|6-24 months |Keneba         |GAMBIA       |9       |           0|    168|  2738|
|6-24 months |Keneba         |GAMBIA       |9       |           1|     72|  2738|
|6-24 months |Keneba         |GAMBIA       |10      |           0|    216|  2738|
|6-24 months |Keneba         |GAMBIA       |10      |           1|    104|  2738|
|6-24 months |Keneba         |GAMBIA       |11      |           0|    156|  2738|
|6-24 months |Keneba         |GAMBIA       |11      |           1|     76|  2738|
|6-24 months |Keneba         |GAMBIA       |12      |           0|    157|  2738|
|6-24 months |Keneba         |GAMBIA       |12      |           1|     76|  2738|
|6-24 months |LCNI-5         |MALAWI       |1       |           0|     46|   826|
|6-24 months |LCNI-5         |MALAWI       |1       |           1|      3|   826|
|6-24 months |LCNI-5         |MALAWI       |2       |           0|     43|   826|
|6-24 months |LCNI-5         |MALAWI       |2       |           1|      2|   826|
|6-24 months |LCNI-5         |MALAWI       |3       |           0|     22|   826|
|6-24 months |LCNI-5         |MALAWI       |3       |           1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |4       |           0|     38|   826|
|6-24 months |LCNI-5         |MALAWI       |4       |           1|      1|   826|
|6-24 months |LCNI-5         |MALAWI       |5       |           0|     42|   826|
|6-24 months |LCNI-5         |MALAWI       |5       |           1|      2|   826|
|6-24 months |LCNI-5         |MALAWI       |6       |           0|     31|   826|
|6-24 months |LCNI-5         |MALAWI       |6       |           1|      3|   826|
|6-24 months |LCNI-5         |MALAWI       |7       |           0|     64|   826|
|6-24 months |LCNI-5         |MALAWI       |7       |           1|      3|   826|
|6-24 months |LCNI-5         |MALAWI       |8       |           0|     83|   826|
|6-24 months |LCNI-5         |MALAWI       |8       |           1|      6|   826|
|6-24 months |LCNI-5         |MALAWI       |9       |           0|     82|   826|
|6-24 months |LCNI-5         |MALAWI       |9       |           1|     10|   826|
|6-24 months |LCNI-5         |MALAWI       |10      |           0|    131|   826|
|6-24 months |LCNI-5         |MALAWI       |10      |           1|     11|   826|
|6-24 months |LCNI-5         |MALAWI       |11      |           0|    105|   826|
|6-24 months |LCNI-5         |MALAWI       |11      |           1|      9|   826|
|6-24 months |LCNI-5         |MALAWI       |12      |           0|     75|   826|
|6-24 months |LCNI-5         |MALAWI       |12      |           1|     14|   826|
|6-24 months |MAL-ED         |INDIA        |1       |           0|     16|   235|
|6-24 months |MAL-ED         |INDIA        |1       |           1|      4|   235|
|6-24 months |MAL-ED         |INDIA        |2       |           0|     21|   235|
|6-24 months |MAL-ED         |INDIA        |2       |           1|      2|   235|
|6-24 months |MAL-ED         |INDIA        |3       |           0|     16|   235|
|6-24 months |MAL-ED         |INDIA        |3       |           1|      7|   235|
|6-24 months |MAL-ED         |INDIA        |4       |           0|      8|   235|
|6-24 months |MAL-ED         |INDIA        |4       |           1|      4|   235|
|6-24 months |MAL-ED         |INDIA        |5       |           0|      2|   235|
|6-24 months |MAL-ED         |INDIA        |5       |           1|      1|   235|
|6-24 months |MAL-ED         |INDIA        |6       |           0|     15|   235|
|6-24 months |MAL-ED         |INDIA        |6       |           1|      3|   235|
|6-24 months |MAL-ED         |INDIA        |7       |           0|      5|   235|
|6-24 months |MAL-ED         |INDIA        |7       |           1|      4|   235|
|6-24 months |MAL-ED         |INDIA        |8       |           0|     20|   235|
|6-24 months |MAL-ED         |INDIA        |8       |           1|      8|   235|
|6-24 months |MAL-ED         |INDIA        |9       |           0|     15|   235|
|6-24 months |MAL-ED         |INDIA        |9       |           1|      6|   235|
|6-24 months |MAL-ED         |INDIA        |10      |           0|     25|   235|
|6-24 months |MAL-ED         |INDIA        |10      |           1|     12|   235|
|6-24 months |MAL-ED         |INDIA        |11      |           0|     15|   235|
|6-24 months |MAL-ED         |INDIA        |11      |           1|      9|   235|
|6-24 months |MAL-ED         |INDIA        |12      |           0|     13|   235|
|6-24 months |MAL-ED         |INDIA        |12      |           1|      4|   235|
|6-24 months |MAL-ED         |BANGLADESH   |1       |           0|     16|   240|
|6-24 months |MAL-ED         |BANGLADESH   |1       |           1|      4|   240|
|6-24 months |MAL-ED         |BANGLADESH   |2       |           0|     18|   240|
|6-24 months |MAL-ED         |BANGLADESH   |2       |           1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |3       |           0|     17|   240|
|6-24 months |MAL-ED         |BANGLADESH   |3       |           1|      9|   240|
|6-24 months |MAL-ED         |BANGLADESH   |4       |           0|      9|   240|
|6-24 months |MAL-ED         |BANGLADESH   |4       |           1|      5|   240|
|6-24 months |MAL-ED         |BANGLADESH   |5       |           0|     15|   240|
|6-24 months |MAL-ED         |BANGLADESH   |5       |           1|      3|   240|
|6-24 months |MAL-ED         |BANGLADESH   |6       |           0|      6|   240|
|6-24 months |MAL-ED         |BANGLADESH   |6       |           1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH   |7       |           0|     11|   240|
|6-24 months |MAL-ED         |BANGLADESH   |7       |           1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH   |8       |           0|     22|   240|
|6-24 months |MAL-ED         |BANGLADESH   |8       |           1|      4|   240|
|6-24 months |MAL-ED         |BANGLADESH   |9       |           0|     24|   240|
|6-24 months |MAL-ED         |BANGLADESH   |9       |           1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH   |10      |           0|     21|   240|
|6-24 months |MAL-ED         |BANGLADESH   |10      |           1|      4|   240|
|6-24 months |MAL-ED         |BANGLADESH   |11      |           0|     14|   240|
|6-24 months |MAL-ED         |BANGLADESH   |11      |           1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH   |12      |           0|     24|   240|
|6-24 months |MAL-ED         |BANGLADESH   |12      |           1|      6|   240|
|6-24 months |MAL-ED         |PERU         |1       |           0|     41|   270|
|6-24 months |MAL-ED         |PERU         |1       |           1|      1|   270|
|6-24 months |MAL-ED         |PERU         |2       |           0|     15|   270|
|6-24 months |MAL-ED         |PERU         |2       |           1|      1|   270|
|6-24 months |MAL-ED         |PERU         |3       |           0|     23|   270|
|6-24 months |MAL-ED         |PERU         |3       |           1|      2|   270|
|6-24 months |MAL-ED         |PERU         |4       |           0|     16|   270|
|6-24 months |MAL-ED         |PERU         |4       |           1|      1|   270|
|6-24 months |MAL-ED         |PERU         |5       |           0|     18|   270|
|6-24 months |MAL-ED         |PERU         |5       |           1|      2|   270|
|6-24 months |MAL-ED         |PERU         |6       |           0|     14|   270|
|6-24 months |MAL-ED         |PERU         |6       |           1|      0|   270|
|6-24 months |MAL-ED         |PERU         |7       |           0|     18|   270|
|6-24 months |MAL-ED         |PERU         |7       |           1|      2|   270|
|6-24 months |MAL-ED         |PERU         |8       |           0|     23|   270|
|6-24 months |MAL-ED         |PERU         |8       |           1|      3|   270|
|6-24 months |MAL-ED         |PERU         |9       |           0|     14|   270|
|6-24 months |MAL-ED         |PERU         |9       |           1|      2|   270|
|6-24 months |MAL-ED         |PERU         |10      |           0|     20|   270|
|6-24 months |MAL-ED         |PERU         |10      |           1|      2|   270|
|6-24 months |MAL-ED         |PERU         |11      |           0|     32|   270|
|6-24 months |MAL-ED         |PERU         |11      |           1|      1|   270|
|6-24 months |MAL-ED         |PERU         |12      |           0|     18|   270|
|6-24 months |MAL-ED         |PERU         |12      |           1|      1|   270|
|6-24 months |MAL-ED         |NEPAL        |1       |           0|     19|   235|
|6-24 months |MAL-ED         |NEPAL        |1       |           1|      4|   235|
|6-24 months |MAL-ED         |NEPAL        |2       |           0|     15|   235|
|6-24 months |MAL-ED         |NEPAL        |2       |           1|      5|   235|
|6-24 months |MAL-ED         |NEPAL        |3       |           0|     13|   235|
|6-24 months |MAL-ED         |NEPAL        |3       |           1|      5|   235|
|6-24 months |MAL-ED         |NEPAL        |4       |           0|     13|   235|
|6-24 months |MAL-ED         |NEPAL        |4       |           1|      5|   235|
|6-24 months |MAL-ED         |NEPAL        |5       |           0|     20|   235|
|6-24 months |MAL-ED         |NEPAL        |5       |           1|      2|   235|
|6-24 months |MAL-ED         |NEPAL        |6       |           0|     15|   235|
|6-24 months |MAL-ED         |NEPAL        |6       |           1|      4|   235|
|6-24 months |MAL-ED         |NEPAL        |7       |           0|     17|   235|
|6-24 months |MAL-ED         |NEPAL        |7       |           1|      3|   235|
|6-24 months |MAL-ED         |NEPAL        |8       |           0|     28|   235|
|6-24 months |MAL-ED         |NEPAL        |8       |           1|      2|   235|
|6-24 months |MAL-ED         |NEPAL        |9       |           0|     13|   235|
|6-24 months |MAL-ED         |NEPAL        |9       |           1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |10      |           0|     11|   235|
|6-24 months |MAL-ED         |NEPAL        |10      |           1|      2|   235|
|6-24 months |MAL-ED         |NEPAL        |11      |           0|     19|   235|
|6-24 months |MAL-ED         |NEPAL        |11      |           1|      2|   235|
|6-24 months |MAL-ED         |NEPAL        |12      |           0|     16|   235|
|6-24 months |MAL-ED         |NEPAL        |12      |           1|      2|   235|
|6-24 months |MAL-ED         |BRAZIL       |1       |           0|     11|   207|
|6-24 months |MAL-ED         |BRAZIL       |1       |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |2       |           0|     28|   207|
|6-24 months |MAL-ED         |BRAZIL       |2       |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |3       |           0|     17|   207|
|6-24 months |MAL-ED         |BRAZIL       |3       |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |4       |           0|     11|   207|
|6-24 months |MAL-ED         |BRAZIL       |4       |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |5       |           0|     15|   207|
|6-24 months |MAL-ED         |BRAZIL       |5       |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |6       |           0|      8|   207|
|6-24 months |MAL-ED         |BRAZIL       |6       |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |7       |           0|     16|   207|
|6-24 months |MAL-ED         |BRAZIL       |7       |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |8       |           0|     26|   207|
|6-24 months |MAL-ED         |BRAZIL       |8       |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |9       |           0|     32|   207|
|6-24 months |MAL-ED         |BRAZIL       |9       |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |10      |           0|     10|   207|
|6-24 months |MAL-ED         |BRAZIL       |10      |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |11      |           0|     12|   207|
|6-24 months |MAL-ED         |BRAZIL       |11      |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |12      |           0|     15|   207|
|6-24 months |MAL-ED         |BRAZIL       |12      |           1|      1|   207|
|6-24 months |MAL-ED         |TANZANIA     |1       |           0|     17|   245|
|6-24 months |MAL-ED         |TANZANIA     |1       |           1|      1|   245|
|6-24 months |MAL-ED         |TANZANIA     |2       |           0|     27|   245|
|6-24 months |MAL-ED         |TANZANIA     |2       |           1|      1|   245|
|6-24 months |MAL-ED         |TANZANIA     |3       |           0|     17|   245|
|6-24 months |MAL-ED         |TANZANIA     |3       |           1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA     |4       |           0|     12|   245|
|6-24 months |MAL-ED         |TANZANIA     |4       |           1|      3|   245|
|6-24 months |MAL-ED         |TANZANIA     |5       |           0|     22|   245|
|6-24 months |MAL-ED         |TANZANIA     |5       |           1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA     |6       |           0|     17|   245|
|6-24 months |MAL-ED         |TANZANIA     |6       |           1|      3|   245|
|6-24 months |MAL-ED         |TANZANIA     |7       |           0|     20|   245|
|6-24 months |MAL-ED         |TANZANIA     |7       |           1|      3|   245|
|6-24 months |MAL-ED         |TANZANIA     |8       |           0|      9|   245|
|6-24 months |MAL-ED         |TANZANIA     |8       |           1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |9       |           0|     12|   245|
|6-24 months |MAL-ED         |TANZANIA     |9       |           1|      3|   245|
|6-24 months |MAL-ED         |TANZANIA     |10      |           0|     16|   245|
|6-24 months |MAL-ED         |TANZANIA     |10      |           1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA     |11      |           0|     20|   245|
|6-24 months |MAL-ED         |TANZANIA     |11      |           1|      4|   245|
|6-24 months |MAL-ED         |TANZANIA     |12      |           0|     28|   245|
|6-24 months |MAL-ED         |TANZANIA     |12      |           1|      4|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |           0|     26|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |           1|      7|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |           0|     20|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |           1|      4|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |           0|     14|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |           1|      3|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |           0|     14|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |           1|      2|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |           0|     11|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |           1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |           0|     12|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |           1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |           0|     21|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |           1|      4|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |           0|     12|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |           1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |           0|     15|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |           1|      2|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |           0|     20|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |           1|      3|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |           0|     18|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |           1|      4|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |           0|     39|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |           1|      5|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |           0|     44|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |           1|     19|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |           0|     33|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |           1|     12|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |           0|     37|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |           1|     19|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |           0|     32|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |           1|     13|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |           0|     33|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |           1|     15|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |           0|     26|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |           1|     12|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |           0|     23|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |           1|      7|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |           0|     22|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |           1|     19|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |           0|     40|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |           1|      7|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |           0|     28|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |           1|      8|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |           0|     32|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |           1|     17|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |           0|     33|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |           1|     11|   542|
|6-24 months |PROBIT         |BELARUS      |1       |           0|    939| 16598|
|6-24 months |PROBIT         |BELARUS      |1       |           1|      7| 16598|
|6-24 months |PROBIT         |BELARUS      |2       |           0|    973| 16598|
|6-24 months |PROBIT         |BELARUS      |2       |           1|      9| 16598|
|6-24 months |PROBIT         |BELARUS      |3       |           0|   1107| 16598|
|6-24 months |PROBIT         |BELARUS      |3       |           1|      6| 16598|
|6-24 months |PROBIT         |BELARUS      |4       |           0|   1137| 16598|
|6-24 months |PROBIT         |BELARUS      |4       |           1|     13| 16598|
|6-24 months |PROBIT         |BELARUS      |5       |           0|   1085| 16598|
|6-24 months |PROBIT         |BELARUS      |5       |           1|      6| 16598|
|6-24 months |PROBIT         |BELARUS      |6       |           0|   1203| 16598|
|6-24 months |PROBIT         |BELARUS      |6       |           1|     10| 16598|
|6-24 months |PROBIT         |BELARUS      |7       |           0|   1536| 16598|
|6-24 months |PROBIT         |BELARUS      |7       |           1|     11| 16598|
|6-24 months |PROBIT         |BELARUS      |8       |           0|   1575| 16598|
|6-24 months |PROBIT         |BELARUS      |8       |           1|     11| 16598|
|6-24 months |PROBIT         |BELARUS      |9       |           0|   1625| 16598|
|6-24 months |PROBIT         |BELARUS      |9       |           1|     14| 16598|
|6-24 months |PROBIT         |BELARUS      |10      |           0|   1756| 16598|
|6-24 months |PROBIT         |BELARUS      |10      |           1|     20| 16598|
|6-24 months |PROBIT         |BELARUS      |11      |           0|   1677| 16598|
|6-24 months |PROBIT         |BELARUS      |11      |           1|     15| 16598|
|6-24 months |PROBIT         |BELARUS      |12      |           0|   1846| 16598|
|6-24 months |PROBIT         |BELARUS      |12      |           1|     17| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |1       |           0|     42|   615|
|6-24 months |PROVIDE        |BANGLADESH   |1       |           1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2       |           0|     23|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2       |           1|      8|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3       |           0|     39|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3       |           1|      9|   615|
|6-24 months |PROVIDE        |BANGLADESH   |4       |           0|     29|   615|
|6-24 months |PROVIDE        |BANGLADESH   |4       |           1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH   |5       |           0|     47|   615|
|6-24 months |PROVIDE        |BANGLADESH   |5       |           1|      7|   615|
|6-24 months |PROVIDE        |BANGLADESH   |6       |           0|     66|   615|
|6-24 months |PROVIDE        |BANGLADESH   |6       |           1|     16|   615|
|6-24 months |PROVIDE        |BANGLADESH   |7       |           0|     59|   615|
|6-24 months |PROVIDE        |BANGLADESH   |7       |           1|     11|   615|
|6-24 months |PROVIDE        |BANGLADESH   |8       |           0|     46|   615|
|6-24 months |PROVIDE        |BANGLADESH   |8       |           1|      8|   615|
|6-24 months |PROVIDE        |BANGLADESH   |9       |           0|     61|   615|
|6-24 months |PROVIDE        |BANGLADESH   |9       |           1|     12|   615|
|6-24 months |PROVIDE        |BANGLADESH   |10      |           0|     56|   615|
|6-24 months |PROVIDE        |BANGLADESH   |10      |           1|     10|   615|
|6-24 months |PROVIDE        |BANGLADESH   |11      |           0|     27|   615|
|6-24 months |PROVIDE        |BANGLADESH   |11      |           1|      5|   615|
|6-24 months |PROVIDE        |BANGLADESH   |12      |           0|     21|   615|
|6-24 months |PROVIDE        |BANGLADESH   |12      |           1|      5|   615|
|6-24 months |ResPak         |PAKISTAN     |1       |           0|      5|   236|
|6-24 months |ResPak         |PAKISTAN     |1       |           1|      3|   236|
|6-24 months |ResPak         |PAKISTAN     |2       |           0|     10|   236|
|6-24 months |ResPak         |PAKISTAN     |2       |           1|      3|   236|
|6-24 months |ResPak         |PAKISTAN     |3       |           0|     20|   236|
|6-24 months |ResPak         |PAKISTAN     |3       |           1|      6|   236|
|6-24 months |ResPak         |PAKISTAN     |4       |           0|     13|   236|
|6-24 months |ResPak         |PAKISTAN     |4       |           1|     10|   236|
|6-24 months |ResPak         |PAKISTAN     |5       |           0|     19|   236|
|6-24 months |ResPak         |PAKISTAN     |5       |           1|     17|   236|
|6-24 months |ResPak         |PAKISTAN     |6       |           0|     22|   236|
|6-24 months |ResPak         |PAKISTAN     |6       |           1|     20|   236|
|6-24 months |ResPak         |PAKISTAN     |7       |           0|     12|   236|
|6-24 months |ResPak         |PAKISTAN     |7       |           1|     10|   236|
|6-24 months |ResPak         |PAKISTAN     |8       |           0|     26|   236|
|6-24 months |ResPak         |PAKISTAN     |8       |           1|     12|   236|
|6-24 months |ResPak         |PAKISTAN     |9       |           0|     14|   236|
|6-24 months |ResPak         |PAKISTAN     |9       |           1|      3|   236|
|6-24 months |ResPak         |PAKISTAN     |10      |           0|      7|   236|
|6-24 months |ResPak         |PAKISTAN     |10      |           1|      0|   236|
|6-24 months |ResPak         |PAKISTAN     |11      |           0|      1|   236|
|6-24 months |ResPak         |PAKISTAN     |11      |           1|      2|   236|
|6-24 months |ResPak         |PAKISTAN     |12      |           0|      1|   236|
|6-24 months |ResPak         |PAKISTAN     |12      |           1|      0|   236|
|6-24 months |SAS-CompFeed   |INDIA        |1       |           0|     71|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |1       |           1|     29|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |2       |           0|     43|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |2       |           1|     24|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |3       |           0|     51|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |3       |           1|     11|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |4       |           0|     45|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |4       |           1|     18|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |5       |           0|     78|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |5       |           1|     34|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |6       |           0|     79|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |6       |           1|     31|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |7       |           0|     75|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |7       |           1|     36|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |8       |           0|    137|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |8       |           1|     53|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |9       |           0|    116|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |9       |           1|     57|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |10      |           0|    114|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |10      |           1|     50|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |11      |           0|     85|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |11      |           1|     45|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |12      |           0|     69|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |12      |           1|     36|  1387|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |           0|     13|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |           1|      4|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |           0|     30|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |           1|     14|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |           0|     11|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |           1|     11|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |           0|      1|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |           1|      2|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |           0|      7|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |           1|      6|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |           0|     13|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |           1|      9|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |           0|     21|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |           1|     12|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |           0|     42|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |           1|     29|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |           0|     36|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |           1|     19|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |           0|     36|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |           1|     14|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |           0|     24|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |           1|      7|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |           0|     25|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |           1|     16|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |           0|    112|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |           1|     17|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |           0|    134|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |           1|     18|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |           0|    103|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |           1|     28|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |           0|    147|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |           1|     20|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |           0|    137|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |           1|     24|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |           0|    124|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |           1|     30|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |           0|    162|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |           1|     38|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |           0|    151|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |           1|     39|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |           0|    137|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |           1|     32|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |           0|    185|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |           1|     30|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |           0|    144|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |           1|     24|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |           0|    158|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |           1|     24|  2018|
|6-24 months |Vellore Crypto |INDIA        |1       |           0|     29|   410|
|6-24 months |Vellore Crypto |INDIA        |1       |           1|     12|   410|
|6-24 months |Vellore Crypto |INDIA        |2       |           0|     11|   410|
|6-24 months |Vellore Crypto |INDIA        |2       |           1|      6|   410|
|6-24 months |Vellore Crypto |INDIA        |3       |           0|     22|   410|
|6-24 months |Vellore Crypto |INDIA        |3       |           1|     13|   410|
|6-24 months |Vellore Crypto |INDIA        |4       |           0|     12|   410|
|6-24 months |Vellore Crypto |INDIA        |4       |           1|      4|   410|
|6-24 months |Vellore Crypto |INDIA        |5       |           0|     16|   410|
|6-24 months |Vellore Crypto |INDIA        |5       |           1|      6|   410|
|6-24 months |Vellore Crypto |INDIA        |6       |           0|     28|   410|
|6-24 months |Vellore Crypto |INDIA        |6       |           1|     19|   410|
|6-24 months |Vellore Crypto |INDIA        |7       |           0|     28|   410|
|6-24 months |Vellore Crypto |INDIA        |7       |           1|      7|   410|
|6-24 months |Vellore Crypto |INDIA        |8       |           0|     30|   410|
|6-24 months |Vellore Crypto |INDIA        |8       |           1|     20|   410|
|6-24 months |Vellore Crypto |INDIA        |9       |           0|     22|   410|
|6-24 months |Vellore Crypto |INDIA        |9       |           1|      9|   410|
|6-24 months |Vellore Crypto |INDIA        |10      |           0|     31|   410|
|6-24 months |Vellore Crypto |INDIA        |10      |           1|     11|   410|
|6-24 months |Vellore Crypto |INDIA        |11      |           0|     26|   410|
|6-24 months |Vellore Crypto |INDIA        |11      |           1|     11|   410|
|6-24 months |Vellore Crypto |INDIA        |12      |           0|     28|   410|
|6-24 months |Vellore Crypto |INDIA        |12      |           1|      9|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |           0|    900| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |           1|    103| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |           0|    734| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |           1|     83| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |           0|    853| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |           1|     89| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |           0|    695| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |           1|     63| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |           0|    688| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |           1|     85| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |           0|    815| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |           1|     87| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |           0|    857| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |           1|     89| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |           0|    861| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |           1|    103| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |           0|    892| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |           1|     90| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |           0|    731| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |           1|     72| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |           0|    875| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |           1|     74| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |           0|    867| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |           1|     97| 10803|


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
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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


