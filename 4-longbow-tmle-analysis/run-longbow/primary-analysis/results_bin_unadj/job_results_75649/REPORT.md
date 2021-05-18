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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid        |country      |brthmon | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |            0|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |            1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |            0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2       |            1|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |            0|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3       |            1|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |            0|     37|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4       |            1|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |            0|     34|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |5       |            1|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |            0|     19|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |6       |            1|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |            0|     33|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |7       |            1|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |            0|     16|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |8       |            1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |            0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |9       |            1|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |            0|     17|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |10      |            1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |            0|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |11      |            1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |            0|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |12      |            1|      8|   373|
|0-24 months |CMIN           |BANGLADESH   |1       |            0|     28|   271|
|0-24 months |CMIN           |BANGLADESH   |1       |            1|      1|   271|
|0-24 months |CMIN           |BANGLADESH   |2       |            0|     24|   271|
|0-24 months |CMIN           |BANGLADESH   |2       |            1|      3|   271|
|0-24 months |CMIN           |BANGLADESH   |3       |            0|     21|   271|
|0-24 months |CMIN           |BANGLADESH   |3       |            1|      5|   271|
|0-24 months |CMIN           |BANGLADESH   |4       |            0|     11|   271|
|0-24 months |CMIN           |BANGLADESH   |4       |            1|      1|   271|
|0-24 months |CMIN           |BANGLADESH   |5       |            0|     17|   271|
|0-24 months |CMIN           |BANGLADESH   |5       |            1|      2|   271|
|0-24 months |CMIN           |BANGLADESH   |6       |            0|     11|   271|
|0-24 months |CMIN           |BANGLADESH   |6       |            1|      0|   271|
|0-24 months |CMIN           |BANGLADESH   |7       |            0|     14|   271|
|0-24 months |CMIN           |BANGLADESH   |7       |            1|      1|   271|
|0-24 months |CMIN           |BANGLADESH   |8       |            0|     24|   271|
|0-24 months |CMIN           |BANGLADESH   |8       |            1|      5|   271|
|0-24 months |CMIN           |BANGLADESH   |9       |            0|     18|   271|
|0-24 months |CMIN           |BANGLADESH   |9       |            1|      1|   271|
|0-24 months |CMIN           |BANGLADESH   |10      |            0|     23|   271|
|0-24 months |CMIN           |BANGLADESH   |10      |            1|      6|   271|
|0-24 months |CMIN           |BANGLADESH   |11      |            0|     20|   271|
|0-24 months |CMIN           |BANGLADESH   |11      |            1|      7|   271|
|0-24 months |CMIN           |BANGLADESH   |12      |            0|     18|   271|
|0-24 months |CMIN           |BANGLADESH   |12      |            1|     10|   271|
|0-24 months |CONTENT        |PERU         |1       |            0|      9|   215|
|0-24 months |CONTENT        |PERU         |1       |            1|      1|   215|
|0-24 months |CONTENT        |PERU         |2       |            0|     15|   215|
|0-24 months |CONTENT        |PERU         |2       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |3       |            0|     27|   215|
|0-24 months |CONTENT        |PERU         |3       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |4       |            0|     24|   215|
|0-24 months |CONTENT        |PERU         |4       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |5       |            0|     13|   215|
|0-24 months |CONTENT        |PERU         |5       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |6       |            0|      8|   215|
|0-24 months |CONTENT        |PERU         |6       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |7       |            0|     41|   215|
|0-24 months |CONTENT        |PERU         |7       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |8       |            0|     17|   215|
|0-24 months |CONTENT        |PERU         |8       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |9       |            0|     23|   215|
|0-24 months |CONTENT        |PERU         |9       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |10      |            0|     15|   215|
|0-24 months |CONTENT        |PERU         |10      |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |11      |            0|     10|   215|
|0-24 months |CONTENT        |PERU         |11      |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |12      |            0|     12|   215|
|0-24 months |CONTENT        |PERU         |12      |            1|      0|   215|
|0-24 months |EE             |PAKISTAN     |1       |            0|     81|   380|
|0-24 months |EE             |PAKISTAN     |1       |            1|     26|   380|
|0-24 months |EE             |PAKISTAN     |2       |            0|     47|   380|
|0-24 months |EE             |PAKISTAN     |2       |            1|     13|   380|
|0-24 months |EE             |PAKISTAN     |3       |            0|     27|   380|
|0-24 months |EE             |PAKISTAN     |3       |            1|      8|   380|
|0-24 months |EE             |PAKISTAN     |4       |            0|     14|   380|
|0-24 months |EE             |PAKISTAN     |4       |            1|      5|   380|
|0-24 months |EE             |PAKISTAN     |5       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN     |5       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN     |6       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN     |6       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN     |7       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN     |7       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN     |8       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN     |8       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN     |9       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN     |9       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN     |10      |            0|      2|   380|
|0-24 months |EE             |PAKISTAN     |10      |            1|      0|   380|
|0-24 months |EE             |PAKISTAN     |11      |            0|     67|   380|
|0-24 months |EE             |PAKISTAN     |11      |            1|     17|   380|
|0-24 months |EE             |PAKISTAN     |12      |            0|     62|   380|
|0-24 months |EE             |PAKISTAN     |12      |            1|     11|   380|
|0-24 months |GMS-Nepal      |NEPAL        |1       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |1       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |2       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |3       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |4       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |4       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |5       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |5       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |6       |            0|    115|   686|
|0-24 months |GMS-Nepal      |NEPAL        |6       |            1|     40|   686|
|0-24 months |GMS-Nepal      |NEPAL        |7       |            0|    199|   686|
|0-24 months |GMS-Nepal      |NEPAL        |7       |            1|     75|   686|
|0-24 months |GMS-Nepal      |NEPAL        |8       |            0|    195|   686|
|0-24 months |GMS-Nepal      |NEPAL        |8       |            1|     62|   686|
|0-24 months |GMS-Nepal      |NEPAL        |9       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |9       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |10      |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |10      |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |11      |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |11      |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |12      |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL        |12      |            1|      0|   686|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |            0|     30|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |            0|     28|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |2       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |            0|     23|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |3       |            1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |            0|     31|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |4       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |            0|     32|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |5       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |            0|     20|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |6       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |            0|     18|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |7       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |            0|     22|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |8       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |            0|     17|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |9       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |            0|     31|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |10      |            1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |            0|     19|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |11      |            1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |            0|     41|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |12      |            1|      0|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            0|    309|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            1|     12|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            0|    172|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            1|      6|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            0|    194|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            1|     12|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            0|    196|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            1|      9|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            0|    204|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            1|     13|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            0|    172|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            1|     11|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            0|    184|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            1|      8|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            0|    333|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            1|     19|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            0|    360|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            1|     25|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            0|    347|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            1|     17|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            0|    328|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            1|     17|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            0|    302|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            1|     16|  3266|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |            0|   2327| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |            1|    143| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |            0|   1933| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |2       |            1|    113| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |            0|   2235| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |3       |            1|    121| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |            0|   1678| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |4       |            1|    118| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |            0|   1276| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |5       |            1|    101| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |            0|   1330| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |6       |            1|     95| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |            0|   1417| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |7       |            1|     97| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |            0|   1993| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |8       |            1|    118| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |            0|   2695| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |9       |            1|    185| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |            0|   2738| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |10      |            1|    181| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |            0|   2744| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |11      |            1|    198| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |            0|   2925| 26934|
|0-24 months |JiVitA-3       |BANGLADESH   |12      |            1|    173| 26934|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |            0|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |            1|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |            0|    901|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |2       |            1|     49|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |            0|    928|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |3       |            1|     56|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |            0|    704|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |4       |            1|     57|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |            0|    591|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |5       |            1|     36|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |            0|    421|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |6       |            1|     36|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |            0|    477|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |7       |            1|     35|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |            0|    577|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |8       |            1|     40|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |            0|    364|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |9       |            1|     27|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |            0|    134|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |10      |            1|      7|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |            0|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |11      |            1|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |            0|      0|  5440|
|0-24 months |JiVitA-4       |BANGLADESH   |12      |            1|      0|  5440|
|0-24 months |Keneba         |GAMBIA       |1       |            0|    260|  2920|
|0-24 months |Keneba         |GAMBIA       |1       |            1|     45|  2920|
|0-24 months |Keneba         |GAMBIA       |2       |            0|    215|  2920|
|0-24 months |Keneba         |GAMBIA       |2       |            1|     56|  2920|
|0-24 months |Keneba         |GAMBIA       |3       |            0|    252|  2920|
|0-24 months |Keneba         |GAMBIA       |3       |            1|     58|  2920|
|0-24 months |Keneba         |GAMBIA       |4       |            0|    153|  2920|
|0-24 months |Keneba         |GAMBIA       |4       |            1|     36|  2920|
|0-24 months |Keneba         |GAMBIA       |5       |            0|    164|  2920|
|0-24 months |Keneba         |GAMBIA       |5       |            1|     38|  2920|
|0-24 months |Keneba         |GAMBIA       |6       |            0|    154|  2920|
|0-24 months |Keneba         |GAMBIA       |6       |            1|     29|  2920|
|0-24 months |Keneba         |GAMBIA       |7       |            0|    121|  2920|
|0-24 months |Keneba         |GAMBIA       |7       |            1|     18|  2920|
|0-24 months |Keneba         |GAMBIA       |8       |            0|    194|  2920|
|0-24 months |Keneba         |GAMBIA       |8       |            1|     41|  2920|
|0-24 months |Keneba         |GAMBIA       |9       |            0|    210|  2920|
|0-24 months |Keneba         |GAMBIA       |9       |            1|     42|  2920|
|0-24 months |Keneba         |GAMBIA       |10      |            0|    278|  2920|
|0-24 months |Keneba         |GAMBIA       |10      |            1|     65|  2920|
|0-24 months |Keneba         |GAMBIA       |11      |            0|    196|  2920|
|0-24 months |Keneba         |GAMBIA       |11      |            1|     50|  2920|
|0-24 months |Keneba         |GAMBIA       |12      |            0|    197|  2920|
|0-24 months |Keneba         |GAMBIA       |12      |            1|     48|  2920|
|0-24 months |LCNI-5         |MALAWI       |1       |            0|     48|   840|
|0-24 months |LCNI-5         |MALAWI       |1       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |            0|     45|   840|
|0-24 months |LCNI-5         |MALAWI       |2       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |            0|     22|   840|
|0-24 months |LCNI-5         |MALAWI       |3       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |            0|     39|   840|
|0-24 months |LCNI-5         |MALAWI       |4       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |            0|     45|   840|
|0-24 months |LCNI-5         |MALAWI       |5       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |            0|     35|   840|
|0-24 months |LCNI-5         |MALAWI       |6       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |            0|     66|   840|
|0-24 months |LCNI-5         |MALAWI       |7       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |            0|     92|   840|
|0-24 months |LCNI-5         |MALAWI       |8       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |            0|     95|   840|
|0-24 months |LCNI-5         |MALAWI       |9       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |            0|    142|   840|
|0-24 months |LCNI-5         |MALAWI       |10      |            1|      2|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |            0|    115|   840|
|0-24 months |LCNI-5         |MALAWI       |11      |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |            0|     88|   840|
|0-24 months |LCNI-5         |MALAWI       |12      |            1|      3|   840|
|0-24 months |MAL-ED         |INDIA        |1       |            0|     17|   251|
|0-24 months |MAL-ED         |INDIA        |1       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA        |2       |            0|     25|   251|
|0-24 months |MAL-ED         |INDIA        |2       |            1|      1|   251|
|0-24 months |MAL-ED         |INDIA        |3       |            0|     23|   251|
|0-24 months |MAL-ED         |INDIA        |3       |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA        |4       |            0|     11|   251|
|0-24 months |MAL-ED         |INDIA        |4       |            1|      1|   251|
|0-24 months |MAL-ED         |INDIA        |5       |            0|      3|   251|
|0-24 months |MAL-ED         |INDIA        |5       |            1|      0|   251|
|0-24 months |MAL-ED         |INDIA        |6       |            0|     17|   251|
|0-24 months |MAL-ED         |INDIA        |6       |            1|      4|   251|
|0-24 months |MAL-ED         |INDIA        |7       |            0|     10|   251|
|0-24 months |MAL-ED         |INDIA        |7       |            1|      1|   251|
|0-24 months |MAL-ED         |INDIA        |8       |            0|     28|   251|
|0-24 months |MAL-ED         |INDIA        |8       |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA        |9       |            0|     20|   251|
|0-24 months |MAL-ED         |INDIA        |9       |            1|      1|   251|
|0-24 months |MAL-ED         |INDIA        |10      |            0|     34|   251|
|0-24 months |MAL-ED         |INDIA        |10      |            1|      5|   251|
|0-24 months |MAL-ED         |INDIA        |11      |            0|     23|   251|
|0-24 months |MAL-ED         |INDIA        |11      |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA        |12      |            0|     14|   251|
|0-24 months |MAL-ED         |INDIA        |12      |            1|      3|   251|
|0-24 months |MAL-ED         |BANGLADESH   |1       |            0|     20|   263|
|0-24 months |MAL-ED         |BANGLADESH   |1       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH   |2       |            0|     19|   263|
|0-24 months |MAL-ED         |BANGLADESH   |2       |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |3       |            0|     23|   263|
|0-24 months |MAL-ED         |BANGLADESH   |3       |            1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH   |4       |            0|     16|   263|
|0-24 months |MAL-ED         |BANGLADESH   |4       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH   |5       |            0|     22|   263|
|0-24 months |MAL-ED         |BANGLADESH   |5       |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |6       |            0|      7|   263|
|0-24 months |MAL-ED         |BANGLADESH   |6       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH   |7       |            0|     11|   263|
|0-24 months |MAL-ED         |BANGLADESH   |7       |            1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH   |8       |            0|     26|   263|
|0-24 months |MAL-ED         |BANGLADESH   |8       |            1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH   |9       |            0|     27|   263|
|0-24 months |MAL-ED         |BANGLADESH   |9       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH   |10      |            0|     24|   263|
|0-24 months |MAL-ED         |BANGLADESH   |10      |            1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH   |11      |            0|     19|   263|
|0-24 months |MAL-ED         |BANGLADESH   |11      |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |12      |            0|     28|   263|
|0-24 months |MAL-ED         |BANGLADESH   |12      |            1|      5|   263|
|0-24 months |MAL-ED         |PERU         |1       |            0|     51|   302|
|0-24 months |MAL-ED         |PERU         |1       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |2       |            0|     17|   302|
|0-24 months |MAL-ED         |PERU         |2       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |3       |            0|     25|   302|
|0-24 months |MAL-ED         |PERU         |3       |            1|      2|   302|
|0-24 months |MAL-ED         |PERU         |4       |            0|     19|   302|
|0-24 months |MAL-ED         |PERU         |4       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |5       |            0|     24|   302|
|0-24 months |MAL-ED         |PERU         |5       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |6       |            0|     17|   302|
|0-24 months |MAL-ED         |PERU         |6       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |7       |            0|     24|   302|
|0-24 months |MAL-ED         |PERU         |7       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |8       |            0|     25|   302|
|0-24 months |MAL-ED         |PERU         |8       |            1|      1|   302|
|0-24 months |MAL-ED         |PERU         |9       |            0|     17|   302|
|0-24 months |MAL-ED         |PERU         |9       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |10      |            0|     23|   302|
|0-24 months |MAL-ED         |PERU         |10      |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |11      |            0|     36|   302|
|0-24 months |MAL-ED         |PERU         |11      |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |12      |            0|     20|   302|
|0-24 months |MAL-ED         |PERU         |12      |            1|      1|   302|
|0-24 months |MAL-ED         |NEPAL        |1       |            0|     22|   240|
|0-24 months |MAL-ED         |NEPAL        |1       |            1|      1|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |            0|     20|   240|
|0-24 months |MAL-ED         |NEPAL        |2       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |            0|     18|   240|
|0-24 months |MAL-ED         |NEPAL        |3       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |            0|     18|   240|
|0-24 months |MAL-ED         |NEPAL        |4       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |            0|     24|   240|
|0-24 months |MAL-ED         |NEPAL        |5       |            1|      1|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |            0|     17|   240|
|0-24 months |MAL-ED         |NEPAL        |6       |            1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |            0|     19|   240|
|0-24 months |MAL-ED         |NEPAL        |7       |            1|      1|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |            0|     27|   240|
|0-24 months |MAL-ED         |NEPAL        |8       |            1|      4|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |            0|     13|   240|
|0-24 months |MAL-ED         |NEPAL        |9       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |            0|     14|   240|
|0-24 months |MAL-ED         |NEPAL        |10      |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |            0|     21|   240|
|0-24 months |MAL-ED         |NEPAL        |11      |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |            0|     18|   240|
|0-24 months |MAL-ED         |NEPAL        |12      |            1|      0|   240|
|0-24 months |MAL-ED         |BRAZIL       |1       |            0|     14|   233|
|0-24 months |MAL-ED         |BRAZIL       |1       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |            0|     29|   233|
|0-24 months |MAL-ED         |BRAZIL       |2       |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |            0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL       |3       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |            0|     15|   233|
|0-24 months |MAL-ED         |BRAZIL       |4       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |            0|     16|   233|
|0-24 months |MAL-ED         |BRAZIL       |5       |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |            0|      8|   233|
|0-24 months |MAL-ED         |BRAZIL       |6       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |            0|     17|   233|
|0-24 months |MAL-ED         |BRAZIL       |7       |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |            0|     29|   233|
|0-24 months |MAL-ED         |BRAZIL       |8       |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |            0|     37|   233|
|0-24 months |MAL-ED         |BRAZIL       |9       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |            0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL       |10      |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |            0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL       |11      |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |            0|     18|   233|
|0-24 months |MAL-ED         |BRAZIL       |12      |            1|      0|   233|
|0-24 months |MAL-ED         |TANZANIA     |1       |            0|     17|   261|
|0-24 months |MAL-ED         |TANZANIA     |1       |            1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA     |2       |            0|     28|   261|
|0-24 months |MAL-ED         |TANZANIA     |2       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |3       |            0|     18|   261|
|0-24 months |MAL-ED         |TANZANIA     |3       |            1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA     |4       |            0|     14|   261|
|0-24 months |MAL-ED         |TANZANIA     |4       |            1|      2|   261|
|0-24 months |MAL-ED         |TANZANIA     |5       |            0|     24|   261|
|0-24 months |MAL-ED         |TANZANIA     |5       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |6       |            0|     19|   261|
|0-24 months |MAL-ED         |TANZANIA     |6       |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA     |7       |            0|     24|   261|
|0-24 months |MAL-ED         |TANZANIA     |7       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |8       |            0|     10|   261|
|0-24 months |MAL-ED         |TANZANIA     |8       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |9       |            0|     17|   261|
|0-24 months |MAL-ED         |TANZANIA     |9       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |10      |            0|     20|   261|
|0-24 months |MAL-ED         |TANZANIA     |10      |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |11      |            0|     27|   261|
|0-24 months |MAL-ED         |TANZANIA     |11      |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |12      |            0|     34|   261|
|0-24 months |MAL-ED         |TANZANIA     |12      |            1|      2|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |            0|     44|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |            1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |            0|     25|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |2       |            1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |            0|     18|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |3       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |            0|     17|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |4       |            1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |            0|     15|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |5       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |            0|     14|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |6       |            1|      3|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |            0|     23|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |7       |            1|      4|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |            0|     15|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |8       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |            0|     20|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |9       |            1|      2|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |            0|     29|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |10      |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |            0|     25|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |11      |            1|      2|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |            0|     51|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |12      |            1|      2|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |            0|     60|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |            1|     12|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |            0|     49|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |2       |            1|      4|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |            0|     54|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |3       |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |            0|     44|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |4       |            1|      7|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |            0|     45|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |5       |            1|      9|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |            0|     40|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |6       |            1|      9|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |            0|     29|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |7       |            1|      5|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |            0|     39|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |8       |            1|     11|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |            0|     42|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |9       |            1|     12|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |            0|     34|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |10      |            1|      6|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |            0|     48|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |11      |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |            0|     41|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |12      |            1|      8|   624|
|0-24 months |PROBIT         |BELARUS      |1       |            0|    887| 16898|
|0-24 months |PROBIT         |BELARUS      |1       |            1|     75| 16898|
|0-24 months |PROBIT         |BELARUS      |2       |            0|    918| 16898|
|0-24 months |PROBIT         |BELARUS      |2       |            1|     78| 16898|
|0-24 months |PROBIT         |BELARUS      |3       |            0|   1032| 16898|
|0-24 months |PROBIT         |BELARUS      |3       |            1|    106| 16898|
|0-24 months |PROBIT         |BELARUS      |4       |            0|   1085| 16898|
|0-24 months |PROBIT         |BELARUS      |4       |            1|     86| 16898|
|0-24 months |PROBIT         |BELARUS      |5       |            0|   1029| 16898|
|0-24 months |PROBIT         |BELARUS      |5       |            1|     91| 16898|
|0-24 months |PROBIT         |BELARUS      |6       |            0|   1151| 16898|
|0-24 months |PROBIT         |BELARUS      |6       |            1|     81| 16898|
|0-24 months |PROBIT         |BELARUS      |7       |            0|   1456| 16898|
|0-24 months |PROBIT         |BELARUS      |7       |            1|    125| 16898|
|0-24 months |PROBIT         |BELARUS      |8       |            0|   1487| 16898|
|0-24 months |PROBIT         |BELARUS      |8       |            1|    123| 16898|
|0-24 months |PROBIT         |BELARUS      |9       |            0|   1547| 16898|
|0-24 months |PROBIT         |BELARUS      |9       |            1|    127| 16898|
|0-24 months |PROBIT         |BELARUS      |10      |            0|   1653| 16898|
|0-24 months |PROBIT         |BELARUS      |10      |            1|    149| 16898|
|0-24 months |PROBIT         |BELARUS      |11      |            0|   1585| 16898|
|0-24 months |PROBIT         |BELARUS      |11      |            1|    130| 16898|
|0-24 months |PROBIT         |BELARUS      |12      |            0|   1743| 16898|
|0-24 months |PROBIT         |BELARUS      |12      |            1|    154| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |1       |            0|     46|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1       |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |            0|     36|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2       |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |            0|     50|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3       |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |            0|     39|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4       |            1|      1|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |            0|     57|   700|
|0-24 months |PROVIDE        |BANGLADESH   |5       |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |            0|     84|   700|
|0-24 months |PROVIDE        |BANGLADESH   |6       |            1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |            0|     81|   700|
|0-24 months |PROVIDE        |BANGLADESH   |7       |            1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |            0|     57|   700|
|0-24 months |PROVIDE        |BANGLADESH   |8       |            1|      3|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |            0|     76|   700|
|0-24 months |PROVIDE        |BANGLADESH   |9       |            1|      7|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |            0|     73|   700|
|0-24 months |PROVIDE        |BANGLADESH   |10      |            1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |            0|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH   |11      |            1|      3|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |            0|     25|   700|
|0-24 months |PROVIDE        |BANGLADESH   |12      |            1|      3|   700|
|0-24 months |ResPak         |PAKISTAN     |1       |            0|      8|   284|
|0-24 months |ResPak         |PAKISTAN     |1       |            1|      2|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |            0|     11|   284|
|0-24 months |ResPak         |PAKISTAN     |2       |            1|      3|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |            0|     27|   284|
|0-24 months |ResPak         |PAKISTAN     |3       |            1|      8|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |            0|     27|   284|
|0-24 months |ResPak         |PAKISTAN     |4       |            1|      6|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |            0|     31|   284|
|0-24 months |ResPak         |PAKISTAN     |5       |            1|     11|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |            0|     31|   284|
|0-24 months |ResPak         |PAKISTAN     |6       |            1|     15|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |            0|     26|   284|
|0-24 months |ResPak         |PAKISTAN     |7       |            1|      2|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |            0|     35|   284|
|0-24 months |ResPak         |PAKISTAN     |8       |            1|      9|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |            0|      9|   284|
|0-24 months |ResPak         |PAKISTAN     |9       |            1|      9|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |            0|      6|   284|
|0-24 months |ResPak         |PAKISTAN     |10      |            1|      2|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |            0|      4|   284|
|0-24 months |ResPak         |PAKISTAN     |11      |            1|      0|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |            0|      0|   284|
|0-24 months |ResPak         |PAKISTAN     |12      |            1|      2|   284|
|0-24 months |SAS-CompFeed   |INDIA        |1       |            0|     90|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |1       |            1|     18|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |2       |            0|     60|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |2       |            1|     13|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |3       |            0|     59|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |3       |            1|     10|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |4       |            0|     55|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |4       |            1|     10|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |5       |            0|    108|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |5       |            1|     14|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |6       |            0|    109|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |6       |            1|     17|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |7       |            0|    106|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |7       |            1|     18|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |8       |            0|    176|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |8       |            1|     28|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |9       |            0|    156|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |9       |            1|     29|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |10      |            0|    143|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |10      |            1|     33|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |11      |            0|    123|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |11      |            1|     17|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |12      |            0|    103|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |12      |            1|     16|  1511|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |            0|     16|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |            1|      2|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |            0|     40|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |2       |            1|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |            0|     18|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |3       |            1|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |            0|      1|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |4       |            1|      2|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |            0|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |5       |            1|      1|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |            0|     18|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |6       |            1|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |            0|     30|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |7       |            1|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |            0|     59|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |8       |            1|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |            0|     46|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |9       |            1|     11|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |            0|     46|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |10      |            1|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |            0|     26|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |11      |            1|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |            0|     35|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |12      |            1|      7|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |            0|    159|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |            1|      8|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |            0|    174|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |2       |            1|     15|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |            0|    150|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |3       |            1|      9|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |            0|    199|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |4       |            1|     10|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |            0|    176|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |5       |            1|     14|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |            0|    168|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |6       |            1|     10|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |            0|    221|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |7       |            1|     12|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |            0|    200|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |8       |            1|     22|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |            0|    185|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |9       |            1|     15|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |            0|    224|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |10      |            1|     23|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |            0|    185|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |11      |            1|     11|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |            0|    197|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |12      |            1|      9|  2396|
|0-24 months |Vellore Crypto |INDIA        |1       |            0|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |1       |            1|     13|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |            0|     15|   410|
|0-24 months |Vellore Crypto |INDIA        |2       |            1|      2|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |            0|     27|   410|
|0-24 months |Vellore Crypto |INDIA        |3       |            1|      8|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |            0|     11|   410|
|0-24 months |Vellore Crypto |INDIA        |4       |            1|      5|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |            0|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |5       |            1|      8|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |            0|     30|   410|
|0-24 months |Vellore Crypto |INDIA        |6       |            1|     17|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |            0|     25|   410|
|0-24 months |Vellore Crypto |INDIA        |7       |            1|     10|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |            0|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |8       |            1|     22|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |            0|     13|   410|
|0-24 months |Vellore Crypto |INDIA        |9       |            1|     18|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |            0|     27|   410|
|0-24 months |Vellore Crypto |INDIA        |10      |            1|     15|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |            0|     24|   410|
|0-24 months |Vellore Crypto |INDIA        |11      |            1|     13|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |            0|     28|   410|
|0-24 months |Vellore Crypto |INDIA        |12      |            1|      9|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |            0|   1182| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |            1|    119| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |            0|    953| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |2       |            1|    104| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |            0|   1099| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |3       |            1|    109| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |            0|    886| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |4       |            1|     85| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |            0|    931| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |5       |            1|     93| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |            0|   1064| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |6       |            1|    125| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |            0|   1087| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |7       |            1|    112| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |            0|   1164| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |8       |            1|    115| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |            0|   1136| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |9       |            1|    118| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |            0|    957| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |10      |            1|     94| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |            0|   1104| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |11      |            1|    100| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |            0|   1084| 13931|
|0-24 months |ZVITAMBO       |ZIMBABWE     |12      |            1|    110| 13931|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |            0|     30|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |            1|      1|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |            0|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2       |            1|      6|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |            0|     27|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3       |            1|      4|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |            0|     40|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4       |            1|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |            0|     35|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |5       |            1|      3|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |            0|     21|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |6       |            1|      8|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |            0|     36|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |7       |            1|      6|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |            0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |8       |            1|      6|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |            0|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |9       |            1|      4|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |            0|     18|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |10      |            1|      5|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |            0|     32|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |11      |            1|     10|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |            0|     20|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |12      |            1|      6|   368|
|0-6 months  |CMIN           |BANGLADESH   |1       |            0|     28|   271|
|0-6 months  |CMIN           |BANGLADESH   |1       |            1|      1|   271|
|0-6 months  |CMIN           |BANGLADESH   |2       |            0|     24|   271|
|0-6 months  |CMIN           |BANGLADESH   |2       |            1|      3|   271|
|0-6 months  |CMIN           |BANGLADESH   |3       |            0|     23|   271|
|0-6 months  |CMIN           |BANGLADESH   |3       |            1|      3|   271|
|0-6 months  |CMIN           |BANGLADESH   |4       |            0|     12|   271|
|0-6 months  |CMIN           |BANGLADESH   |4       |            1|      0|   271|
|0-6 months  |CMIN           |BANGLADESH   |5       |            0|     19|   271|
|0-6 months  |CMIN           |BANGLADESH   |5       |            1|      0|   271|
|0-6 months  |CMIN           |BANGLADESH   |6       |            0|     11|   271|
|0-6 months  |CMIN           |BANGLADESH   |6       |            1|      0|   271|
|0-6 months  |CMIN           |BANGLADESH   |7       |            0|     15|   271|
|0-6 months  |CMIN           |BANGLADESH   |7       |            1|      0|   271|
|0-6 months  |CMIN           |BANGLADESH   |8       |            0|     28|   271|
|0-6 months  |CMIN           |BANGLADESH   |8       |            1|      1|   271|
|0-6 months  |CMIN           |BANGLADESH   |9       |            0|     19|   271|
|0-6 months  |CMIN           |BANGLADESH   |9       |            1|      0|   271|
|0-6 months  |CMIN           |BANGLADESH   |10      |            0|     28|   271|
|0-6 months  |CMIN           |BANGLADESH   |10      |            1|      1|   271|
|0-6 months  |CMIN           |BANGLADESH   |11      |            0|     24|   271|
|0-6 months  |CMIN           |BANGLADESH   |11      |            1|      3|   271|
|0-6 months  |CMIN           |BANGLADESH   |12      |            0|     26|   271|
|0-6 months  |CMIN           |BANGLADESH   |12      |            1|      2|   271|
|0-6 months  |CONTENT        |PERU         |1       |            0|      9|   215|
|0-6 months  |CONTENT        |PERU         |1       |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |2       |            0|     15|   215|
|0-6 months  |CONTENT        |PERU         |2       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3       |            0|     27|   215|
|0-6 months  |CONTENT        |PERU         |3       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |4       |            0|     24|   215|
|0-6 months  |CONTENT        |PERU         |4       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |5       |            0|     13|   215|
|0-6 months  |CONTENT        |PERU         |5       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |6       |            0|      8|   215|
|0-6 months  |CONTENT        |PERU         |6       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |7       |            0|     41|   215|
|0-6 months  |CONTENT        |PERU         |7       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |8       |            0|     17|   215|
|0-6 months  |CONTENT        |PERU         |8       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |9       |            0|     23|   215|
|0-6 months  |CONTENT        |PERU         |9       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |10      |            0|     15|   215|
|0-6 months  |CONTENT        |PERU         |10      |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |11      |            0|     10|   215|
|0-6 months  |CONTENT        |PERU         |11      |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |12      |            0|     12|   215|
|0-6 months  |CONTENT        |PERU         |12      |            1|      0|   215|
|0-6 months  |EE             |PAKISTAN     |1       |            0|     98|   380|
|0-6 months  |EE             |PAKISTAN     |1       |            1|      9|   380|
|0-6 months  |EE             |PAKISTAN     |2       |            0|     55|   380|
|0-6 months  |EE             |PAKISTAN     |2       |            1|      5|   380|
|0-6 months  |EE             |PAKISTAN     |3       |            0|     32|   380|
|0-6 months  |EE             |PAKISTAN     |3       |            1|      3|   380|
|0-6 months  |EE             |PAKISTAN     |4       |            0|     15|   380|
|0-6 months  |EE             |PAKISTAN     |4       |            1|      4|   380|
|0-6 months  |EE             |PAKISTAN     |5       |            0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |5       |            1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |6       |            0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |6       |            1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |7       |            0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |7       |            1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |8       |            0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |8       |            1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |9       |            0|      0|   380|
|0-6 months  |EE             |PAKISTAN     |9       |            1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |10      |            0|      2|   380|
|0-6 months  |EE             |PAKISTAN     |10      |            1|      0|   380|
|0-6 months  |EE             |PAKISTAN     |11      |            0|     74|   380|
|0-6 months  |EE             |PAKISTAN     |11      |            1|     10|   380|
|0-6 months  |EE             |PAKISTAN     |12      |            0|     68|   380|
|0-6 months  |EE             |PAKISTAN     |12      |            1|      5|   380|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |2       |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |3       |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |4       |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |5       |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |            0|    138|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |6       |            1|     17|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |            0|    241|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |7       |            1|     33|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |            0|    228|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |8       |            1|     29|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |9       |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |10      |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |11      |            1|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |            0|      0|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |12      |            1|      0|   686|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |            0|     30|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |            0|     27|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |2       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |            0|     23|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |3       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |            0|     30|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |4       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |            0|     32|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |5       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |            0|     19|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |6       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |            0|     18|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |7       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |            0|     21|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |8       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |            0|     17|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |9       |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |            0|     26|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |10      |            1|      1|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |            0|     17|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |11      |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |            0|     34|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |12      |            1|      0|   295|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |            0|   2364| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |            1|     93| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |            0|   1961| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |2       |            1|     77| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |            0|   2274| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |3       |            1|     75| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |            0|   1723| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |4       |            1|     69| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |            0|   1317| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |5       |            1|     56| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |            0|   1362| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |6       |            1|     55| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |            0|   1452| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |7       |            1|     54| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |            0|   2030| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |8       |            1|     74| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |            0|   2732| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |9       |            1|    137| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |            0|   2772| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |10      |            1|    141| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |            0|   2789| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |11      |            1|    145| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |            0|   2952| 26838|
|0-6 months  |JiVitA-3       |BANGLADESH   |12      |            1|    134| 26838|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |            0|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |            1|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |            0|    853|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |2       |            1|     16|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |            0|    887|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |3       |            1|     12|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |            0|    696|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |4       |            1|     19|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |            0|    566|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |5       |            1|     16|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |            0|    425|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |6       |            1|     11|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |            0|    473|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |7       |            1|     13|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |            0|    583|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |8       |            1|     11|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |            0|    363|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |9       |            1|     11|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |            0|    137|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |10      |            1|      2|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |            0|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |11      |            1|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |            0|      0|  5094|
|0-6 months  |JiVitA-4       |BANGLADESH   |12      |            1|      0|  5094|
|0-6 months  |Keneba         |GAMBIA       |1       |            0|    232|  2466|
|0-6 months  |Keneba         |GAMBIA       |1       |            1|     25|  2466|
|0-6 months  |Keneba         |GAMBIA       |2       |            0|    217|  2466|
|0-6 months  |Keneba         |GAMBIA       |2       |            1|     24|  2466|
|0-6 months  |Keneba         |GAMBIA       |3       |            0|    252|  2466|
|0-6 months  |Keneba         |GAMBIA       |3       |            1|     28|  2466|
|0-6 months  |Keneba         |GAMBIA       |4       |            0|    146|  2466|
|0-6 months  |Keneba         |GAMBIA       |4       |            1|     10|  2466|
|0-6 months  |Keneba         |GAMBIA       |5       |            0|    142|  2466|
|0-6 months  |Keneba         |GAMBIA       |5       |            1|     22|  2466|
|0-6 months  |Keneba         |GAMBIA       |6       |            0|    135|  2466|
|0-6 months  |Keneba         |GAMBIA       |6       |            1|     16|  2466|
|0-6 months  |Keneba         |GAMBIA       |7       |            0|    102|  2466|
|0-6 months  |Keneba         |GAMBIA       |7       |            1|     10|  2466|
|0-6 months  |Keneba         |GAMBIA       |8       |            0|    179|  2466|
|0-6 months  |Keneba         |GAMBIA       |8       |            1|     14|  2466|
|0-6 months  |Keneba         |GAMBIA       |9       |            0|    193|  2466|
|0-6 months  |Keneba         |GAMBIA       |9       |            1|     18|  2466|
|0-6 months  |Keneba         |GAMBIA       |10      |            0|    264|  2466|
|0-6 months  |Keneba         |GAMBIA       |10      |            1|     23|  2466|
|0-6 months  |Keneba         |GAMBIA       |11      |            0|    183|  2466|
|0-6 months  |Keneba         |GAMBIA       |11      |            1|     20|  2466|
|0-6 months  |Keneba         |GAMBIA       |12      |            0|    190|  2466|
|0-6 months  |Keneba         |GAMBIA       |12      |            1|     21|  2466|
|0-6 months  |LCNI-5         |MALAWI       |1       |            0|     11|   272|
|0-6 months  |LCNI-5         |MALAWI       |1       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |            0|     14|   272|
|0-6 months  |LCNI-5         |MALAWI       |2       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |            0|      2|   272|
|0-6 months  |LCNI-5         |MALAWI       |3       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |            0|      8|   272|
|0-6 months  |LCNI-5         |MALAWI       |4       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |            0|     12|   272|
|0-6 months  |LCNI-5         |MALAWI       |5       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |            0|      9|   272|
|0-6 months  |LCNI-5         |MALAWI       |6       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |            0|     16|   272|
|0-6 months  |LCNI-5         |MALAWI       |7       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |            0|     24|   272|
|0-6 months  |LCNI-5         |MALAWI       |8       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |            0|     39|   272|
|0-6 months  |LCNI-5         |MALAWI       |9       |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |            0|     44|   272|
|0-6 months  |LCNI-5         |MALAWI       |10      |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |            0|     44|   272|
|0-6 months  |LCNI-5         |MALAWI       |11      |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |            0|     49|   272|
|0-6 months  |LCNI-5         |MALAWI       |12      |            1|      0|   272|
|0-6 months  |MAL-ED         |INDIA        |1       |            0|     17|   251|
|0-6 months  |MAL-ED         |INDIA        |1       |            1|      3|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |            0|     26|   251|
|0-6 months  |MAL-ED         |INDIA        |2       |            1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |            0|     24|   251|
|0-6 months  |MAL-ED         |INDIA        |3       |            1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |            0|     11|   251|
|0-6 months  |MAL-ED         |INDIA        |4       |            1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |            0|      3|   251|
|0-6 months  |MAL-ED         |INDIA        |5       |            1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |            0|     17|   251|
|0-6 months  |MAL-ED         |INDIA        |6       |            1|      4|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |            0|     10|   251|
|0-6 months  |MAL-ED         |INDIA        |7       |            1|      1|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |            0|     28|   251|
|0-6 months  |MAL-ED         |INDIA        |8       |            1|      2|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |            0|     21|   251|
|0-6 months  |MAL-ED         |INDIA        |9       |            1|      0|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |            0|     34|   251|
|0-6 months  |MAL-ED         |INDIA        |10      |            1|      5|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |            0|     24|   251|
|0-6 months  |MAL-ED         |INDIA        |11      |            1|      2|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |            0|     15|   251|
|0-6 months  |MAL-ED         |INDIA        |12      |            1|      2|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |            0|     20|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |            1|      1|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |            0|     19|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |2       |            1|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |            0|     24|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |3       |            1|      2|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |            0|     16|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |4       |            1|      1|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |            0|     22|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |5       |            1|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |            0|      8|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |6       |            1|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |            0|     11|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |7       |            1|      3|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |            0|     26|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |8       |            1|      3|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |            0|     27|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |9       |            1|      1|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |            0|     24|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |10      |            1|      3|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |            0|     19|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |11      |            1|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |            0|     31|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |12      |            1|      2|   263|
|0-6 months  |MAL-ED         |PERU         |1       |            0|     51|   302|
|0-6 months  |MAL-ED         |PERU         |1       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |2       |            0|     17|   302|
|0-6 months  |MAL-ED         |PERU         |2       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |3       |            0|     27|   302|
|0-6 months  |MAL-ED         |PERU         |3       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |4       |            0|     19|   302|
|0-6 months  |MAL-ED         |PERU         |4       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |5       |            0|     24|   302|
|0-6 months  |MAL-ED         |PERU         |5       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |6       |            0|     17|   302|
|0-6 months  |MAL-ED         |PERU         |6       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |7       |            0|     24|   302|
|0-6 months  |MAL-ED         |PERU         |7       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |8       |            0|     26|   302|
|0-6 months  |MAL-ED         |PERU         |8       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |9       |            0|     17|   302|
|0-6 months  |MAL-ED         |PERU         |9       |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |10      |            0|     23|   302|
|0-6 months  |MAL-ED         |PERU         |10      |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |11      |            0|     36|   302|
|0-6 months  |MAL-ED         |PERU         |11      |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |12      |            0|     20|   302|
|0-6 months  |MAL-ED         |PERU         |12      |            1|      1|   302|
|0-6 months  |MAL-ED         |NEPAL        |1       |            0|     22|   240|
|0-6 months  |MAL-ED         |NEPAL        |1       |            1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |            0|     20|   240|
|0-6 months  |MAL-ED         |NEPAL        |2       |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |            0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |3       |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |            0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |4       |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |            0|     24|   240|
|0-6 months  |MAL-ED         |NEPAL        |5       |            1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |            0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |6       |            1|      1|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |            0|     20|   240|
|0-6 months  |MAL-ED         |NEPAL        |7       |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |            0|     27|   240|
|0-6 months  |MAL-ED         |NEPAL        |8       |            1|      4|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |            0|     13|   240|
|0-6 months  |MAL-ED         |NEPAL        |9       |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |            0|     14|   240|
|0-6 months  |MAL-ED         |NEPAL        |10      |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |            0|     21|   240|
|0-6 months  |MAL-ED         |NEPAL        |11      |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |            0|     18|   240|
|0-6 months  |MAL-ED         |NEPAL        |12      |            1|      0|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1       |            0|     14|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1       |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |            0|     29|   233|
|0-6 months  |MAL-ED         |BRAZIL       |2       |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |            0|     20|   233|
|0-6 months  |MAL-ED         |BRAZIL       |3       |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |            0|     15|   233|
|0-6 months  |MAL-ED         |BRAZIL       |4       |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |            0|     16|   233|
|0-6 months  |MAL-ED         |BRAZIL       |5       |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |            0|      8|   233|
|0-6 months  |MAL-ED         |BRAZIL       |6       |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |            0|     18|   233|
|0-6 months  |MAL-ED         |BRAZIL       |7       |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |            0|     29|   233|
|0-6 months  |MAL-ED         |BRAZIL       |8       |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |            0|     37|   233|
|0-6 months  |MAL-ED         |BRAZIL       |9       |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |            0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |10      |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |            0|     13|   233|
|0-6 months  |MAL-ED         |BRAZIL       |11      |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |            0|     18|   233|
|0-6 months  |MAL-ED         |BRAZIL       |12      |            1|      0|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1       |            0|     18|   261|
|0-6 months  |MAL-ED         |TANZANIA     |1       |            1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |2       |            0|     28|   261|
|0-6 months  |MAL-ED         |TANZANIA     |2       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |3       |            0|     18|   261|
|0-6 months  |MAL-ED         |TANZANIA     |3       |            1|      2|   261|
|0-6 months  |MAL-ED         |TANZANIA     |4       |            0|     16|   261|
|0-6 months  |MAL-ED         |TANZANIA     |4       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |5       |            0|     24|   261|
|0-6 months  |MAL-ED         |TANZANIA     |5       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |6       |            0|     20|   261|
|0-6 months  |MAL-ED         |TANZANIA     |6       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |7       |            0|     24|   261|
|0-6 months  |MAL-ED         |TANZANIA     |7       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |8       |            0|     10|   261|
|0-6 months  |MAL-ED         |TANZANIA     |8       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |9       |            0|     17|   261|
|0-6 months  |MAL-ED         |TANZANIA     |9       |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |10      |            0|     20|   261|
|0-6 months  |MAL-ED         |TANZANIA     |10      |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |11      |            0|     27|   261|
|0-6 months  |MAL-ED         |TANZANIA     |11      |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |12      |            0|     35|   261|
|0-6 months  |MAL-ED         |TANZANIA     |12      |            1|      1|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |            0|     45|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |            0|     26|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |            0|     18|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |            0|     18|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |            0|     15|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |5       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |            0|     15|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |6       |            1|      2|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |            0|     26|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |7       |            1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |            0|     15|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |8       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |            0|     22|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |9       |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |            0|     29|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |10      |            1|      0|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |            0|     26|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |11      |            1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |            0|     51|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |12      |            1|      2|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |            0|     63|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |            1|      8|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |            0|     51|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |2       |            1|      1|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |            0|     60|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |3       |            1|      2|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |            0|     46|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |4       |            1|      5|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |            0|     49|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |5       |            1|      5|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |            0|     44|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |6       |            1|      5|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |            0|     31|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |7       |            1|      3|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |            0|     44|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |8       |            1|      6|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |            0|     46|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |9       |            1|      8|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |            0|     37|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |10      |            1|      3|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |            0|     52|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |11      |            1|      4|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |            0|     43|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |12      |            1|      6|   622|
|0-6 months  |PROBIT         |BELARUS      |1       |            0|    887| 16895|
|0-6 months  |PROBIT         |BELARUS      |1       |            1|     75| 16895|
|0-6 months  |PROBIT         |BELARUS      |2       |            0|    919| 16895|
|0-6 months  |PROBIT         |BELARUS      |2       |            1|     77| 16895|
|0-6 months  |PROBIT         |BELARUS      |3       |            0|   1034| 16895|
|0-6 months  |PROBIT         |BELARUS      |3       |            1|    104| 16895|
|0-6 months  |PROBIT         |BELARUS      |4       |            0|   1085| 16895|
|0-6 months  |PROBIT         |BELARUS      |4       |            1|     85| 16895|
|0-6 months  |PROBIT         |BELARUS      |5       |            0|   1029| 16895|
|0-6 months  |PROBIT         |BELARUS      |5       |            1|     91| 16895|
|0-6 months  |PROBIT         |BELARUS      |6       |            0|   1152| 16895|
|0-6 months  |PROBIT         |BELARUS      |6       |            1|     80| 16895|
|0-6 months  |PROBIT         |BELARUS      |7       |            0|   1457| 16895|
|0-6 months  |PROBIT         |BELARUS      |7       |            1|    124| 16895|
|0-6 months  |PROBIT         |BELARUS      |8       |            0|   1486| 16895|
|0-6 months  |PROBIT         |BELARUS      |8       |            1|    122| 16895|
|0-6 months  |PROBIT         |BELARUS      |9       |            0|   1549| 16895|
|0-6 months  |PROBIT         |BELARUS      |9       |            1|    125| 16895|
|0-6 months  |PROBIT         |BELARUS      |10      |            0|   1654| 16895|
|0-6 months  |PROBIT         |BELARUS      |10      |            1|    148| 16895|
|0-6 months  |PROBIT         |BELARUS      |11      |            0|   1585| 16895|
|0-6 months  |PROBIT         |BELARUS      |11      |            1|    130| 16895|
|0-6 months  |PROBIT         |BELARUS      |12      |            0|   1745| 16895|
|0-6 months  |PROBIT         |BELARUS      |12      |            1|    152| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |            0|     46|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |            1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |            0|     37|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2       |            1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |            0|     50|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3       |            1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |            0|     39|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4       |            1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |            0|     58|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |5       |            1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |            0|     87|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |6       |            1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |            0|     83|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |7       |            1|      6|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |            0|     58|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |8       |            1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |            0|     77|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |9       |            1|      6|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |            0|     75|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |10      |            1|      2|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |            0|     34|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |11      |            1|      3|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |            0|     27|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |12      |            1|      1|   700|
|0-6 months  |ResPak         |PAKISTAN     |1       |            0|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |1       |            1|      1|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |            0|     12|   282|
|0-6 months  |ResPak         |PAKISTAN     |2       |            1|      2|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |            0|     31|   282|
|0-6 months  |ResPak         |PAKISTAN     |3       |            1|      4|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |            0|     30|   282|
|0-6 months  |ResPak         |PAKISTAN     |4       |            1|      3|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |            0|     36|   282|
|0-6 months  |ResPak         |PAKISTAN     |5       |            1|      5|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |            0|     37|   282|
|0-6 months  |ResPak         |PAKISTAN     |6       |            1|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |            0|     27|   282|
|0-6 months  |ResPak         |PAKISTAN     |7       |            1|      1|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |            0|     37|   282|
|0-6 months  |ResPak         |PAKISTAN     |8       |            1|      6|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |            0|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |9       |            1|      9|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |            0|      7|   282|
|0-6 months  |ResPak         |PAKISTAN     |10      |            1|      1|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |            0|      4|   282|
|0-6 months  |ResPak         |PAKISTAN     |11      |            1|      0|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |            0|      0|   282|
|0-6 months  |ResPak         |PAKISTAN     |12      |            1|      2|   282|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |            0|     97|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |            1|     10|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |            0|     64|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |2       |            1|      8|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |            0|     61|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |3       |            1|      8|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |            0|     62|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |4       |            1|      3|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |            0|    117|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |5       |            1|      5|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |            0|    116|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |6       |            1|     10|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |            0|    113|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |7       |            1|     11|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |            0|    192|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |8       |            1|     10|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |            0|    176|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |9       |            1|      8|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |            0|    162|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |10      |            1|     14|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |            0|    133|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |11      |            1|      6|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |            0|    110|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |12      |            1|      7|  1503|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |            0|     17|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |            1|      1|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |            0|     44|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |2       |            1|      0|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |            0|     19|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |3       |            1|      3|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |            0|      3|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |4       |            1|      0|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |            0|     13|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |5       |            1|      0|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |            0|     22|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |6       |            1|      0|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |            0|     36|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |7       |            1|      0|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |            0|     69|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |8       |            1|      4|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |            0|     51|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |9       |            1|      6|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |            0|     52|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |10      |            1|      3|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |            0|     32|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |11      |            1|      1|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |            0|     40|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |12      |            1|      2|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |            0|    164|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |            1|      3|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |            0|    181|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2       |            1|      8|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |            0|    156|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |3       |            1|      3|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |            0|    205|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |4       |            1|      4|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |            0|    184|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |5       |            1|      6|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |            0|    174|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |6       |            1|      4|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |            0|    227|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |7       |            1|      6|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |            0|    209|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |8       |            1|     13|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |            0|    191|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |9       |            1|      9|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |            0|    235|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |10      |            1|     12|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |            0|    189|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |11      |            1|      7|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |            0|    202|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |12      |            1|      4|  2396|
|0-6 months  |Vellore Crypto |INDIA        |1       |            0|     29|   410|
|0-6 months  |Vellore Crypto |INDIA        |1       |            1|     12|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |            0|     15|   410|
|0-6 months  |Vellore Crypto |INDIA        |2       |            1|      2|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |            0|     27|   410|
|0-6 months  |Vellore Crypto |INDIA        |3       |            1|      8|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |            0|     13|   410|
|0-6 months  |Vellore Crypto |INDIA        |4       |            1|      3|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |            0|     14|   410|
|0-6 months  |Vellore Crypto |INDIA        |5       |            1|      8|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |            0|     31|   410|
|0-6 months  |Vellore Crypto |INDIA        |6       |            1|     16|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |            0|     28|   410|
|0-6 months  |Vellore Crypto |INDIA        |7       |            1|      7|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |            0|     29|   410|
|0-6 months  |Vellore Crypto |INDIA        |8       |            1|     21|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |            0|     14|   410|
|0-6 months  |Vellore Crypto |INDIA        |9       |            1|     17|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |            0|     27|   410|
|0-6 months  |Vellore Crypto |INDIA        |10      |            1|     15|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |            0|     28|   410|
|0-6 months  |Vellore Crypto |INDIA        |11      |            1|      9|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |            0|     29|   410|
|0-6 months  |Vellore Crypto |INDIA        |12      |            1|      8|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |            0|   1209| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |            1|     81| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |            0|    975| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |2       |            1|     75| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |            0|   1117| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |3       |            1|     77| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |            0|    905| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |4       |            1|     61| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |            0|    944| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |5       |            1|     72| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |            0|   1097| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |6       |            1|     89| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |            0|   1102| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |7       |            1|     87| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |            0|   1183| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |8       |            1|     86| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |            0|   1148| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |9       |            1|     96| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |            0|    974| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |10      |            1|     72| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |            0|   1127| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |11      |            1|     74| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |            0|   1106| 13838|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |12      |            1|     81| 13838|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |            0|     29|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |            1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |            0|     14|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2       |            1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |            0|     29|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3       |            1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |            0|     45|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4       |            1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |            0|     37|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |5       |            1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |            0|     26|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |6       |            1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |            0|     37|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |7       |            1|      5|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |            0|     22|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |8       |            1|      0|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |            0|     18|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |9       |            1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |            0|     22|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |10      |            1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |            0|     40|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |11      |            1|      5|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |            0|     24|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |12      |            1|      2|   373|
|6-24 months |CMIN           |BANGLADESH   |1       |            0|     24|   251|
|6-24 months |CMIN           |BANGLADESH   |1       |            1|      0|   251|
|6-24 months |CMIN           |BANGLADESH   |2       |            0|     25|   251|
|6-24 months |CMIN           |BANGLADESH   |2       |            1|      0|   251|
|6-24 months |CMIN           |BANGLADESH   |3       |            0|     23|   251|
|6-24 months |CMIN           |BANGLADESH   |3       |            1|      2|   251|
|6-24 months |CMIN           |BANGLADESH   |4       |            0|     11|   251|
|6-24 months |CMIN           |BANGLADESH   |4       |            1|      1|   251|
|6-24 months |CMIN           |BANGLADESH   |5       |            0|     17|   251|
|6-24 months |CMIN           |BANGLADESH   |5       |            1|      2|   251|
|6-24 months |CMIN           |BANGLADESH   |6       |            0|     11|   251|
|6-24 months |CMIN           |BANGLADESH   |6       |            1|      0|   251|
|6-24 months |CMIN           |BANGLADESH   |7       |            0|     12|   251|
|6-24 months |CMIN           |BANGLADESH   |7       |            1|      1|   251|
|6-24 months |CMIN           |BANGLADESH   |8       |            0|     22|   251|
|6-24 months |CMIN           |BANGLADESH   |8       |            1|      4|   251|
|6-24 months |CMIN           |BANGLADESH   |9       |            0|     16|   251|
|6-24 months |CMIN           |BANGLADESH   |9       |            1|      1|   251|
|6-24 months |CMIN           |BANGLADESH   |10      |            0|     22|   251|
|6-24 months |CMIN           |BANGLADESH   |10      |            1|      5|   251|
|6-24 months |CMIN           |BANGLADESH   |11      |            0|     20|   251|
|6-24 months |CMIN           |BANGLADESH   |11      |            1|      4|   251|
|6-24 months |CMIN           |BANGLADESH   |12      |            0|     19|   251|
|6-24 months |CMIN           |BANGLADESH   |12      |            1|      9|   251|
|6-24 months |CONTENT        |PERU         |1       |            0|     10|   215|
|6-24 months |CONTENT        |PERU         |1       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |2       |            0|     15|   215|
|6-24 months |CONTENT        |PERU         |2       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |3       |            0|     27|   215|
|6-24 months |CONTENT        |PERU         |3       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |4       |            0|     24|   215|
|6-24 months |CONTENT        |PERU         |4       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |5       |            0|     13|   215|
|6-24 months |CONTENT        |PERU         |5       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |6       |            0|      8|   215|
|6-24 months |CONTENT        |PERU         |6       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |7       |            0|     41|   215|
|6-24 months |CONTENT        |PERU         |7       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |8       |            0|     17|   215|
|6-24 months |CONTENT        |PERU         |8       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |9       |            0|     23|   215|
|6-24 months |CONTENT        |PERU         |9       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |10      |            0|     15|   215|
|6-24 months |CONTENT        |PERU         |10      |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |11      |            0|     10|   215|
|6-24 months |CONTENT        |PERU         |11      |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |12      |            0|     12|   215|
|6-24 months |CONTENT        |PERU         |12      |            1|      0|   215|
|6-24 months |EE             |PAKISTAN     |1       |            0|     84|   374|
|6-24 months |EE             |PAKISTAN     |1       |            1|     19|   374|
|6-24 months |EE             |PAKISTAN     |2       |            0|     50|   374|
|6-24 months |EE             |PAKISTAN     |2       |            1|     10|   374|
|6-24 months |EE             |PAKISTAN     |3       |            0|     28|   374|
|6-24 months |EE             |PAKISTAN     |3       |            1|      6|   374|
|6-24 months |EE             |PAKISTAN     |4       |            0|     18|   374|
|6-24 months |EE             |PAKISTAN     |4       |            1|      1|   374|
|6-24 months |EE             |PAKISTAN     |5       |            0|      0|   374|
|6-24 months |EE             |PAKISTAN     |5       |            1|      0|   374|
|6-24 months |EE             |PAKISTAN     |6       |            0|      0|   374|
|6-24 months |EE             |PAKISTAN     |6       |            1|      0|   374|
|6-24 months |EE             |PAKISTAN     |7       |            0|      0|   374|
|6-24 months |EE             |PAKISTAN     |7       |            1|      0|   374|
|6-24 months |EE             |PAKISTAN     |8       |            0|      0|   374|
|6-24 months |EE             |PAKISTAN     |8       |            1|      0|   374|
|6-24 months |EE             |PAKISTAN     |9       |            0|      0|   374|
|6-24 months |EE             |PAKISTAN     |9       |            1|      0|   374|
|6-24 months |EE             |PAKISTAN     |10      |            0|      2|   374|
|6-24 months |EE             |PAKISTAN     |10      |            1|      0|   374|
|6-24 months |EE             |PAKISTAN     |11      |            0|     74|   374|
|6-24 months |EE             |PAKISTAN     |11      |            1|      9|   374|
|6-24 months |EE             |PAKISTAN     |12      |            0|     67|   374|
|6-24 months |EE             |PAKISTAN     |12      |            1|      6|   374|
|6-24 months |GMS-Nepal      |NEPAL        |1       |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |1       |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2       |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |2       |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3       |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |3       |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |4       |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |4       |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |5       |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |5       |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |6       |            0|    109|   590|
|6-24 months |GMS-Nepal      |NEPAL        |6       |            1|     25|   590|
|6-24 months |GMS-Nepal      |NEPAL        |7       |            0|    184|   590|
|6-24 months |GMS-Nepal      |NEPAL        |7       |            1|     53|   590|
|6-24 months |GMS-Nepal      |NEPAL        |8       |            0|    185|   590|
|6-24 months |GMS-Nepal      |NEPAL        |8       |            1|     34|   590|
|6-24 months |GMS-Nepal      |NEPAL        |9       |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |9       |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |10      |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |10      |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |11      |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |11      |            1|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |12      |            0|      0|   590|
|6-24 months |GMS-Nepal      |NEPAL        |12      |            1|      0|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |            0|     26|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |            0|     28|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |2       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |            0|     20|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |3       |            1|      1|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |            0|     25|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |4       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |            0|     31|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |5       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |            0|     19|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |6       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |            0|     16|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |7       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |            0|     17|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |8       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |            0|     15|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |9       |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |            0|     27|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |10      |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |            0|     16|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |11      |            1|      1|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |            0|     35|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |12      |            1|      0|   277|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            0|    309|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |            1|     12|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            0|    172|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2       |            1|      6|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            0|    194|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |3       |            1|     12|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            0|    196|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |4       |            1|      9|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            0|    204|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |5       |            1|     13|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            0|    172|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |6       |            1|     11|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            0|    184|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |7       |            1|      8|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            0|    333|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |8       |            1|     19|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            0|    360|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |9       |            1|     25|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            0|    347|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |10      |            1|     17|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            0|    328|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |11      |            1|     17|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            0|    302|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |12      |            1|     16|  3266|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |            0|   1709| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |            1|     54| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |            0|   1436| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |2       |            1|     37| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |            0|   1727| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |3       |            1|     46| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |            0|   1366| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |4       |            1|     52| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |            0|   1086| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |5       |            1|     48| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |            0|   1112| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |6       |            1|     41| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |            0|   1057| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |7       |            1|     46| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |            0|   1342| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |8       |            1|     44| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |            0|   1525| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |9       |            1|     48| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |            0|   1450| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |10      |            1|     41| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |            0|   1482| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |11      |            1|     56| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |            0|   1443| 17287|
|6-24 months |JiVitA-3       |BANGLADESH   |12      |            1|     39| 17287|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |            0|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |            1|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |            0|    916|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |2       |            1|     33|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |            0|    937|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |3       |            1|     44|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |            0|    719|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |4       |            1|     39|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |            0|    603|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |5       |            1|     24|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |            0|    430|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |6       |            1|     27|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |            0|    488|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |7       |            1|     22|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |            0|    585|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |8       |            1|     29|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |            0|    374|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |9       |            1|     16|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |            0|    136|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |10      |            1|      5|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |            0|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |11      |            1|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |            0|      0|  5427|
|6-24 months |JiVitA-4       |BANGLADESH   |12      |            1|      0|  5427|
|6-24 months |Keneba         |GAMBIA       |1       |            0|    259|  2738|
|6-24 months |Keneba         |GAMBIA       |1       |            1|     24|  2738|
|6-24 months |Keneba         |GAMBIA       |2       |            0|    212|  2738|
|6-24 months |Keneba         |GAMBIA       |2       |            1|     37|  2738|
|6-24 months |Keneba         |GAMBIA       |3       |            0|    249|  2738|
|6-24 months |Keneba         |GAMBIA       |3       |            1|     34|  2738|
|6-24 months |Keneba         |GAMBIA       |4       |            0|    149|  2738|
|6-24 months |Keneba         |GAMBIA       |4       |            1|     27|  2738|
|6-24 months |Keneba         |GAMBIA       |5       |            0|    174|  2738|
|6-24 months |Keneba         |GAMBIA       |5       |            1|     17|  2738|
|6-24 months |Keneba         |GAMBIA       |6       |            0|    157|  2738|
|6-24 months |Keneba         |GAMBIA       |6       |            1|     14|  2738|
|6-24 months |Keneba         |GAMBIA       |7       |            0|    123|  2738|
|6-24 months |Keneba         |GAMBIA       |7       |            1|      9|  2738|
|6-24 months |Keneba         |GAMBIA       |8       |            0|    199|  2738|
|6-24 months |Keneba         |GAMBIA       |8       |            1|     29|  2738|
|6-24 months |Keneba         |GAMBIA       |9       |            0|    214|  2738|
|6-24 months |Keneba         |GAMBIA       |9       |            1|     26|  2738|
|6-24 months |Keneba         |GAMBIA       |10      |            0|    276|  2738|
|6-24 months |Keneba         |GAMBIA       |10      |            1|     44|  2738|
|6-24 months |Keneba         |GAMBIA       |11      |            0|    200|  2738|
|6-24 months |Keneba         |GAMBIA       |11      |            1|     32|  2738|
|6-24 months |Keneba         |GAMBIA       |12      |            0|    205|  2738|
|6-24 months |Keneba         |GAMBIA       |12      |            1|     28|  2738|
|6-24 months |LCNI-5         |MALAWI       |1       |            0|     48|   826|
|6-24 months |LCNI-5         |MALAWI       |1       |            1|      1|   826|
|6-24 months |LCNI-5         |MALAWI       |2       |            0|     45|   826|
|6-24 months |LCNI-5         |MALAWI       |2       |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |3       |            0|     22|   826|
|6-24 months |LCNI-5         |MALAWI       |3       |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |4       |            0|     39|   826|
|6-24 months |LCNI-5         |MALAWI       |4       |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |5       |            0|     44|   826|
|6-24 months |LCNI-5         |MALAWI       |5       |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |6       |            0|     33|   826|
|6-24 months |LCNI-5         |MALAWI       |6       |            1|      1|   826|
|6-24 months |LCNI-5         |MALAWI       |7       |            0|     66|   826|
|6-24 months |LCNI-5         |MALAWI       |7       |            1|      1|   826|
|6-24 months |LCNI-5         |MALAWI       |8       |            0|     89|   826|
|6-24 months |LCNI-5         |MALAWI       |8       |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |9       |            0|     92|   826|
|6-24 months |LCNI-5         |MALAWI       |9       |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |10      |            0|    140|   826|
|6-24 months |LCNI-5         |MALAWI       |10      |            1|      2|   826|
|6-24 months |LCNI-5         |MALAWI       |11      |            0|    114|   826|
|6-24 months |LCNI-5         |MALAWI       |11      |            1|      0|   826|
|6-24 months |LCNI-5         |MALAWI       |12      |            0|     86|   826|
|6-24 months |LCNI-5         |MALAWI       |12      |            1|      3|   826|
|6-24 months |MAL-ED         |INDIA        |1       |            0|     20|   235|
|6-24 months |MAL-ED         |INDIA        |1       |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |2       |            0|     22|   235|
|6-24 months |MAL-ED         |INDIA        |2       |            1|      1|   235|
|6-24 months |MAL-ED         |INDIA        |3       |            0|     21|   235|
|6-24 months |MAL-ED         |INDIA        |3       |            1|      2|   235|
|6-24 months |MAL-ED         |INDIA        |4       |            0|     12|   235|
|6-24 months |MAL-ED         |INDIA        |4       |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |5       |            0|      3|   235|
|6-24 months |MAL-ED         |INDIA        |5       |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |6       |            0|     18|   235|
|6-24 months |MAL-ED         |INDIA        |6       |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |7       |            0|      9|   235|
|6-24 months |MAL-ED         |INDIA        |7       |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |8       |            0|     28|   235|
|6-24 months |MAL-ED         |INDIA        |8       |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |9       |            0|     20|   235|
|6-24 months |MAL-ED         |INDIA        |9       |            1|      1|   235|
|6-24 months |MAL-ED         |INDIA        |10      |            0|     37|   235|
|6-24 months |MAL-ED         |INDIA        |10      |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |11      |            0|     23|   235|
|6-24 months |MAL-ED         |INDIA        |11      |            1|      1|   235|
|6-24 months |MAL-ED         |INDIA        |12      |            0|     16|   235|
|6-24 months |MAL-ED         |INDIA        |12      |            1|      1|   235|
|6-24 months |MAL-ED         |BANGLADESH   |1       |            0|     20|   240|
|6-24 months |MAL-ED         |BANGLADESH   |1       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |2       |            0|     18|   240|
|6-24 months |MAL-ED         |BANGLADESH   |2       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |3       |            0|     25|   240|
|6-24 months |MAL-ED         |BANGLADESH   |3       |            1|      1|   240|
|6-24 months |MAL-ED         |BANGLADESH   |4       |            0|     14|   240|
|6-24 months |MAL-ED         |BANGLADESH   |4       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |5       |            0|     18|   240|
|6-24 months |MAL-ED         |BANGLADESH   |5       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |6       |            0|      7|   240|
|6-24 months |MAL-ED         |BANGLADESH   |6       |            1|      1|   240|
|6-24 months |MAL-ED         |BANGLADESH   |7       |            0|     13|   240|
|6-24 months |MAL-ED         |BANGLADESH   |7       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |8       |            0|     26|   240|
|6-24 months |MAL-ED         |BANGLADESH   |8       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |9       |            0|     26|   240|
|6-24 months |MAL-ED         |BANGLADESH   |9       |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |10      |            0|     25|   240|
|6-24 months |MAL-ED         |BANGLADESH   |10      |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |11      |            0|     16|   240|
|6-24 months |MAL-ED         |BANGLADESH   |11      |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |12      |            0|     27|   240|
|6-24 months |MAL-ED         |BANGLADESH   |12      |            1|      3|   240|
|6-24 months |MAL-ED         |PERU         |1       |            0|     42|   270|
|6-24 months |MAL-ED         |PERU         |1       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |2       |            0|     16|   270|
|6-24 months |MAL-ED         |PERU         |2       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |3       |            0|     23|   270|
|6-24 months |MAL-ED         |PERU         |3       |            1|      2|   270|
|6-24 months |MAL-ED         |PERU         |4       |            0|     17|   270|
|6-24 months |MAL-ED         |PERU         |4       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |5       |            0|     20|   270|
|6-24 months |MAL-ED         |PERU         |5       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |6       |            0|     14|   270|
|6-24 months |MAL-ED         |PERU         |6       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |7       |            0|     20|   270|
|6-24 months |MAL-ED         |PERU         |7       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |8       |            0|     25|   270|
|6-24 months |MAL-ED         |PERU         |8       |            1|      1|   270|
|6-24 months |MAL-ED         |PERU         |9       |            0|     16|   270|
|6-24 months |MAL-ED         |PERU         |9       |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |10      |            0|     22|   270|
|6-24 months |MAL-ED         |PERU         |10      |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |11      |            0|     33|   270|
|6-24 months |MAL-ED         |PERU         |11      |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |12      |            0|     19|   270|
|6-24 months |MAL-ED         |PERU         |12      |            1|      0|   270|
|6-24 months |MAL-ED         |NEPAL        |1       |            0|     23|   235|
|6-24 months |MAL-ED         |NEPAL        |1       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |2       |            0|     20|   235|
|6-24 months |MAL-ED         |NEPAL        |2       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |3       |            0|     18|   235|
|6-24 months |MAL-ED         |NEPAL        |3       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |4       |            0|     18|   235|
|6-24 months |MAL-ED         |NEPAL        |4       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |5       |            0|     22|   235|
|6-24 months |MAL-ED         |NEPAL        |5       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |6       |            0|     18|   235|
|6-24 months |MAL-ED         |NEPAL        |6       |            1|      1|   235|
|6-24 months |MAL-ED         |NEPAL        |7       |            0|     19|   235|
|6-24 months |MAL-ED         |NEPAL        |7       |            1|      1|   235|
|6-24 months |MAL-ED         |NEPAL        |8       |            0|     30|   235|
|6-24 months |MAL-ED         |NEPAL        |8       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |9       |            0|     13|   235|
|6-24 months |MAL-ED         |NEPAL        |9       |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |10      |            0|     13|   235|
|6-24 months |MAL-ED         |NEPAL        |10      |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |11      |            0|     21|   235|
|6-24 months |MAL-ED         |NEPAL        |11      |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |12      |            0|     18|   235|
|6-24 months |MAL-ED         |NEPAL        |12      |            1|      0|   235|
|6-24 months |MAL-ED         |BRAZIL       |1       |            0|     12|   207|
|6-24 months |MAL-ED         |BRAZIL       |1       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |2       |            0|     29|   207|
|6-24 months |MAL-ED         |BRAZIL       |2       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |3       |            0|     17|   207|
|6-24 months |MAL-ED         |BRAZIL       |3       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |4       |            0|     11|   207|
|6-24 months |MAL-ED         |BRAZIL       |4       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |5       |            0|     15|   207|
|6-24 months |MAL-ED         |BRAZIL       |5       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |6       |            0|      8|   207|
|6-24 months |MAL-ED         |BRAZIL       |6       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |7       |            0|     16|   207|
|6-24 months |MAL-ED         |BRAZIL       |7       |            1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |8       |            0|     26|   207|
|6-24 months |MAL-ED         |BRAZIL       |8       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |9       |            0|     33|   207|
|6-24 months |MAL-ED         |BRAZIL       |9       |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |10      |            0|     11|   207|
|6-24 months |MAL-ED         |BRAZIL       |10      |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |11      |            0|     12|   207|
|6-24 months |MAL-ED         |BRAZIL       |11      |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |12      |            0|     16|   207|
|6-24 months |MAL-ED         |BRAZIL       |12      |            1|      0|   207|
|6-24 months |MAL-ED         |TANZANIA     |1       |            0|     17|   245|
|6-24 months |MAL-ED         |TANZANIA     |1       |            1|      1|   245|
|6-24 months |MAL-ED         |TANZANIA     |2       |            0|     28|   245|
|6-24 months |MAL-ED         |TANZANIA     |2       |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |3       |            0|     19|   245|
|6-24 months |MAL-ED         |TANZANIA     |3       |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |4       |            0|     13|   245|
|6-24 months |MAL-ED         |TANZANIA     |4       |            1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA     |5       |            0|     24|   245|
|6-24 months |MAL-ED         |TANZANIA     |5       |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |6       |            0|     19|   245|
|6-24 months |MAL-ED         |TANZANIA     |6       |            1|      1|   245|
|6-24 months |MAL-ED         |TANZANIA     |7       |            0|     23|   245|
|6-24 months |MAL-ED         |TANZANIA     |7       |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |8       |            0|      9|   245|
|6-24 months |MAL-ED         |TANZANIA     |8       |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |9       |            0|     15|   245|
|6-24 months |MAL-ED         |TANZANIA     |9       |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |10      |            0|     18|   245|
|6-24 months |MAL-ED         |TANZANIA     |10      |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |11      |            0|     24|   245|
|6-24 months |MAL-ED         |TANZANIA     |11      |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |12      |            0|     31|   245|
|6-24 months |MAL-ED         |TANZANIA     |12      |            1|      1|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |            0|     32|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |            1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |            0|     23|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |2       |            1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |            0|     17|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |3       |            1|      0|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |            0|     15|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |4       |            1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |            0|     12|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |5       |            1|      0|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |            0|     12|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |6       |            1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |            0|     22|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |7       |            1|      3|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |            0|     13|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |8       |            1|      0|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |            0|     15|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |9       |            1|      2|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |            0|     23|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |10      |            1|      0|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |            0|     21|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |11      |            1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |            0|     44|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |12      |            1|      0|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |            0|     57|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |            1|      6|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |            0|     42|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |2       |            1|      3|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |            0|     50|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |3       |            1|      6|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |            0|     43|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |4       |            1|      2|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |            0|     43|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |5       |            1|      5|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |            0|     34|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |6       |            1|      4|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |            0|     28|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |7       |            1|      2|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |            0|     36|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |8       |            1|      5|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |            0|     43|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |9       |            1|      4|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |            0|     33|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |10      |            1|      3|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |            0|     44|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |11      |            1|      5|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |            0|     41|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |12      |            1|      3|   542|
|6-24 months |PROBIT         |BELARUS      |1       |            0|    946| 16598|
|6-24 months |PROBIT         |BELARUS      |1       |            1|      0| 16598|
|6-24 months |PROBIT         |BELARUS      |2       |            0|    981| 16598|
|6-24 months |PROBIT         |BELARUS      |2       |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |3       |            0|   1111| 16598|
|6-24 months |PROBIT         |BELARUS      |3       |            1|      2| 16598|
|6-24 months |PROBIT         |BELARUS      |4       |            0|   1149| 16598|
|6-24 months |PROBIT         |BELARUS      |4       |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |5       |            0|   1091| 16598|
|6-24 months |PROBIT         |BELARUS      |5       |            1|      0| 16598|
|6-24 months |PROBIT         |BELARUS      |6       |            0|   1212| 16598|
|6-24 months |PROBIT         |BELARUS      |6       |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |7       |            0|   1546| 16598|
|6-24 months |PROBIT         |BELARUS      |7       |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |8       |            0|   1585| 16598|
|6-24 months |PROBIT         |BELARUS      |8       |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |9       |            0|   1637| 16598|
|6-24 months |PROBIT         |BELARUS      |9       |            1|      2| 16598|
|6-24 months |PROBIT         |BELARUS      |10      |            0|   1775| 16598|
|6-24 months |PROBIT         |BELARUS      |10      |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |11      |            0|   1692| 16598|
|6-24 months |PROBIT         |BELARUS      |11      |            1|      0| 16598|
|6-24 months |PROBIT         |BELARUS      |12      |            0|   1861| 16598|
|6-24 months |PROBIT         |BELARUS      |12      |            1|      2| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |1       |            0|     46|   615|
|6-24 months |PROVIDE        |BANGLADESH   |1       |            1|      0|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2       |            0|     30|   615|
|6-24 months |PROVIDE        |BANGLADESH   |2       |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3       |            0|     48|   615|
|6-24 months |PROVIDE        |BANGLADESH   |3       |            1|      0|   615|
|6-24 months |PROVIDE        |BANGLADESH   |4       |            0|     33|   615|
|6-24 months |PROVIDE        |BANGLADESH   |4       |            1|      0|   615|
|6-24 months |PROVIDE        |BANGLADESH   |5       |            0|     53|   615|
|6-24 months |PROVIDE        |BANGLADESH   |5       |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |6       |            0|     79|   615|
|6-24 months |PROVIDE        |BANGLADESH   |6       |            1|      3|   615|
|6-24 months |PROVIDE        |BANGLADESH   |7       |            0|     68|   615|
|6-24 months |PROVIDE        |BANGLADESH   |7       |            1|      2|   615|
|6-24 months |PROVIDE        |BANGLADESH   |8       |            0|     53|   615|
|6-24 months |PROVIDE        |BANGLADESH   |8       |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |9       |            0|     72|   615|
|6-24 months |PROVIDE        |BANGLADESH   |9       |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |10      |            0|     64|   615|
|6-24 months |PROVIDE        |BANGLADESH   |10      |            1|      2|   615|
|6-24 months |PROVIDE        |BANGLADESH   |11      |            0|     32|   615|
|6-24 months |PROVIDE        |BANGLADESH   |11      |            1|      0|   615|
|6-24 months |PROVIDE        |BANGLADESH   |12      |            0|     24|   615|
|6-24 months |PROVIDE        |BANGLADESH   |12      |            1|      2|   615|
|6-24 months |ResPak         |PAKISTAN     |1       |            0|      7|   236|
|6-24 months |ResPak         |PAKISTAN     |1       |            1|      1|   236|
|6-24 months |ResPak         |PAKISTAN     |2       |            0|     12|   236|
|6-24 months |ResPak         |PAKISTAN     |2       |            1|      1|   236|
|6-24 months |ResPak         |PAKISTAN     |3       |            0|     22|   236|
|6-24 months |ResPak         |PAKISTAN     |3       |            1|      4|   236|
|6-24 months |ResPak         |PAKISTAN     |4       |            0|     19|   236|
|6-24 months |ResPak         |PAKISTAN     |4       |            1|      4|   236|
|6-24 months |ResPak         |PAKISTAN     |5       |            0|     30|   236|
|6-24 months |ResPak         |PAKISTAN     |5       |            1|      6|   236|
|6-24 months |ResPak         |PAKISTAN     |6       |            0|     34|   236|
|6-24 months |ResPak         |PAKISTAN     |6       |            1|      8|   236|
|6-24 months |ResPak         |PAKISTAN     |7       |            0|     20|   236|
|6-24 months |ResPak         |PAKISTAN     |7       |            1|      2|   236|
|6-24 months |ResPak         |PAKISTAN     |8       |            0|     34|   236|
|6-24 months |ResPak         |PAKISTAN     |8       |            1|      4|   236|
|6-24 months |ResPak         |PAKISTAN     |9       |            0|     15|   236|
|6-24 months |ResPak         |PAKISTAN     |9       |            1|      2|   236|
|6-24 months |ResPak         |PAKISTAN     |10      |            0|      6|   236|
|6-24 months |ResPak         |PAKISTAN     |10      |            1|      1|   236|
|6-24 months |ResPak         |PAKISTAN     |11      |            0|      3|   236|
|6-24 months |ResPak         |PAKISTAN     |11      |            1|      0|   236|
|6-24 months |ResPak         |PAKISTAN     |12      |            0|      1|   236|
|6-24 months |ResPak         |PAKISTAN     |12      |            1|      0|   236|
|6-24 months |SAS-CompFeed   |INDIA        |1       |            0|     89|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |1       |            1|     11|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |2       |            0|     61|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |2       |            1|      6|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |3       |            0|     60|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |3       |            1|      2|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |4       |            0|     56|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |4       |            1|      7|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |5       |            0|    101|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |5       |            1|     11|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |6       |            0|    103|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |6       |            1|      7|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |7       |            0|    103|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |7       |            1|      8|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |8       |            0|    171|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |8       |            1|     19|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |9       |            0|    152|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |9       |            1|     21|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |10      |            0|    145|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |10      |            1|     19|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |11      |            0|    118|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |11      |            1|     12|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |12      |            0|     94|  1387|
|6-24 months |SAS-CompFeed   |INDIA        |12      |            1|     11|  1387|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |            0|     16|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |            1|      1|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |            0|     40|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |2       |            1|      4|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |            0|     21|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |3       |            1|      1|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |            0|      1|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |4       |            1|      2|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |            0|     12|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |5       |            1|      1|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |            0|     18|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |6       |            1|      4|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |            0|     27|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |7       |            1|      6|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |            0|     61|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |8       |            1|     10|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |            0|     50|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |9       |            1|      5|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |            0|     44|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |10      |            1|      6|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |            0|     25|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |11      |            1|      6|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |            0|     36|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |12      |            1|      5|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |            0|    124|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |            1|      5|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |            0|    145|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |2       |            1|      7|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |            0|    124|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |3       |            1|      7|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |            0|    161|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |4       |            1|      6|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |            0|    153|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |5       |            1|      8|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |            0|    148|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |6       |            1|      6|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |            0|    194|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |7       |            1|      6|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |            0|    178|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |8       |            1|     12|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |            0|    163|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |9       |            1|      6|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |            0|    204|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |10      |            1|     11|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |            0|    164|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |11      |            1|      4|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |            0|    177|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |12      |            1|      5|  2018|
|6-24 months |Vellore Crypto |INDIA        |1       |            0|     38|   410|
|6-24 months |Vellore Crypto |INDIA        |1       |            1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |2       |            0|     17|   410|
|6-24 months |Vellore Crypto |INDIA        |2       |            1|      0|   410|
|6-24 months |Vellore Crypto |INDIA        |3       |            0|     35|   410|
|6-24 months |Vellore Crypto |INDIA        |3       |            1|      0|   410|
|6-24 months |Vellore Crypto |INDIA        |4       |            0|     13|   410|
|6-24 months |Vellore Crypto |INDIA        |4       |            1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |5       |            0|     22|   410|
|6-24 months |Vellore Crypto |INDIA        |5       |            1|      0|   410|
|6-24 months |Vellore Crypto |INDIA        |6       |            0|     45|   410|
|6-24 months |Vellore Crypto |INDIA        |6       |            1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |7       |            0|     32|   410|
|6-24 months |Vellore Crypto |INDIA        |7       |            1|      3|   410|
|6-24 months |Vellore Crypto |INDIA        |8       |            0|     48|   410|
|6-24 months |Vellore Crypto |INDIA        |8       |            1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |9       |            0|     27|   410|
|6-24 months |Vellore Crypto |INDIA        |9       |            1|      4|   410|
|6-24 months |Vellore Crypto |INDIA        |10      |            0|     40|   410|
|6-24 months |Vellore Crypto |INDIA        |10      |            1|      2|   410|
|6-24 months |Vellore Crypto |INDIA        |11      |            0|     31|   410|
|6-24 months |Vellore Crypto |INDIA        |11      |            1|      6|   410|
|6-24 months |Vellore Crypto |INDIA        |12      |            0|     36|   410|
|6-24 months |Vellore Crypto |INDIA        |12      |            1|      1|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |            0|    962| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |            1|     41| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |            0|    784| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |2       |            1|     33| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |            0|    909| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |3       |            1|     33| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |            0|    732| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |4       |            1|     26| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |            0|    751| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |5       |            1|     22| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |            0|    866| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |6       |            1|     36| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |            0|    918| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |7       |            1|     28| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |            0|    933| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |8       |            1|     31| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |            0|    958| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |9       |            1|     24| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |            0|    781| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |10      |            1|     22| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |            0|    921| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |11      |            1|     28| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |            0|    932| 10803|
|6-24 months |ZVITAMBO       |ZIMBABWE     |12      |            1|     32| 10803|


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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


