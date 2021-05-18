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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      | month| ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:------------|-----:|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     1|           0|     20|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     1|           1|     13|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     2|           0|      9|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     2|           1|      6|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     3|           0|     21|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     3|           1|     10|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     4|           0|     29|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     4|           1|     15|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     5|           0|     21|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     5|           1|     11|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     6|           0|     19|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     6|           1|     19|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     7|           0|     23|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     7|           1|     17|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     8|           0|      7|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     8|           1|     11|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     9|           0|      8|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     9|           1|     11|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    10|           0|     15|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    10|           1|     14|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    11|           0|     21|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    11|           1|     23|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    12|           0|      9|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    12|           1|     16|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     1|           0|     15|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     1|           1|     13|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     2|           0|     19|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     2|           1|     15|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     3|           0|     13|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     3|           1|      7|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     4|           0|     11|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     4|           1|      9|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     5|           0|     11|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     5|           1|      9|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     6|           0|     15|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     6|           1|     10|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     7|           0|      7|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     7|           1|      7|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     8|           0|     10|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     8|           1|      4|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     9|           0|     13|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     9|           1|      7|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    10|           0|     17|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    10|           1|      6|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    11|           0|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    11|           1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    12|           0|     19|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    12|           1|     28|   268|
|0-24 months (no birth wast) |CONTENT        |PERU         |     1|           0|      8|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     1|           1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     2|           0|     13|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     2|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     3|           0|     25|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     3|           1|      2|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     4|           0|     18|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     4|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     5|           0|     25|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     5|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     6|           0|     13|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     6|           1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     7|           0|     16|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     7|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     8|           0|     26|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     8|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     9|           0|     19|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     9|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    10|           0|     23|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    10|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    11|           0|     18|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    11|           1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    12|           0|      7|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    12|           1|      0|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     1|           0|     44|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     1|           1|     50|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     2|           0|     35|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     2|           1|     32|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     3|           0|     16|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     3|           1|     26|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     4|           0|      4|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     4|           1|     12|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     5|           0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     5|           1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     6|           0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     6|           1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     7|           0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     7|           1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     8|           0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     8|           1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     9|           0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     9|           1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    10|           0|      2|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    10|           1|      2|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    11|           0|     33|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    11|           1|     36|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    12|           0|     40|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    12|           1|     45|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     1|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     1|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     2|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     2|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     3|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     3|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     4|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     4|           1|      1|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     5|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     5|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     6|           0|     78|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     6|           1|     72|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     7|           0|    129|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     7|           1|    120|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     8|           0|    122|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     8|           1|    138|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     9|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     9|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    10|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    10|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    11|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    11|           1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    12|           0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    12|           1|      0|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     1|           0|     17|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     1|           1|      2|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     2|           0|     19|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     2|           1|      1|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     3|           0|     20|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     3|           1|      2|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     4|           0|     24|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     4|           1|      4|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     5|           0|     31|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     5|           1|      2|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     6|           0|     36|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     6|           1|      3|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     7|           0|     22|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     7|           1|      3|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     8|           0|     16|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     8|           1|      3|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     9|           0|     32|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     9|           1|      3|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    10|           0|     32|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    10|           1|      1|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    11|           0|     28|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    11|           1|      2|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    12|           0|     10|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    12|           1|      0|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     1|           0|    209|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     1|           1|     21|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     2|           0|    178|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     2|           1|     16|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     3|           0|    184|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     3|           1|     22|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     4|           0|    161|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     4|           1|     10|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     5|           0|    220|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     5|           1|     22|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     6|           0|    319|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     6|           1|     31|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     7|           0|    363|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     7|           1|     29|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     8|           0|    308|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     8|           1|     30|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     9|           0|    247|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     9|           1|     24|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    10|           0|    334|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    10|           1|     27|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    11|           0|    170|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    11|           1|     17|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    12|           0|    135|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    12|           1|     14|  3091|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     1|           0|   2110| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     1|           1|    410| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     2|           0|   1783| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     2|           1|    300| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     3|           0|   2071| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     3|           1|    345| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     4|           0|   1511| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     4|           1|    307| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     5|           0|   1078| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     5|           1|    292| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     6|           0|   1038| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     6|           1|    296| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     7|           0|   1197| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     7|           1|    327| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     8|           0|   1622| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     8|           1|    361| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     9|           0|   2157| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     9|           1|    430| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    10|           0|   2413| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    10|           1|    475| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    11|           0|   2418| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    11|           1|    473| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    12|           0|   2637| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    12|           1|    478| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     1|           0|     43|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     1|           1|     11|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     2|           0|    277|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     2|           1|     89|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     3|           0|    346|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     3|           1|    125|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     4|           0|    668|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     4|           1|    268|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     5|           0|    437|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     5|           1|    187|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     6|           0|    332|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     6|           1|    125|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     7|           0|    655|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     7|           1|    237|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     8|           0|    420|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     8|           1|    119|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     9|           0|    387|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     9|           1|    101|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    10|           0|    246|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    10|           1|     74|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    11|           0|    126|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    11|           1|     38|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    12|           0|     68|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    12|           1|     17|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     1|           0|    156|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     1|           1|     89|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     2|           0|    184|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     2|           1|    114|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     3|           0|    145|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     3|           1|     85|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     4|           0|    198|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     4|           1|     93|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     5|           0|    179|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     5|           1|     66|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     6|           0|    159|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     6|           1|     54|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     7|           0|    108|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     7|           1|     62|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     8|           0|    117|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     8|           1|     60|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     9|           0|    138|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     9|           1|     82|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    10|           0|    143|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    10|           1|     85|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    11|           0|    209|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    11|           1|    105|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    12|           0|    159|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    12|           1|     78|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     1|           0|     49|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     1|           1|      6|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     2|           0|    108|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     2|           1|      6|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     3|           0|     88|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     3|           1|     10|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     4|           0|    104|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     4|           1|      6|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     5|           0|    106|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     5|           1|      5|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     6|           0|     82|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     6|           1|      8|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     7|           0|     67|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     7|           1|      4|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     8|           0|     38|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     8|           1|      3|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     9|           0|     26|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     9|           1|      3|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    10|           0|     35|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    10|           1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    11|           0|     44|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    11|           1|      5|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    12|           0|     34|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    12|           1|      0|   837|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     1|           0|     12|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     1|           1|      8|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     2|           0|     18|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     2|           1|      3|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     3|           0|     13|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     3|           1|      9|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     4|           0|     13|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     4|           1|      5|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     5|           0|      5|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     5|           1|      3|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     6|           0|     11|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     6|           1|      6|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     7|           0|     11|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     7|           1|     12|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     8|           0|     14|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     8|           1|     11|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     9|           0|     15|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     9|           1|      8|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    10|           0|     18|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    10|           1|      8|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    11|           0|     11|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    11|           1|     13|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    12|           0|     14|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    12|           1|      5|   246|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     1|           0|     18|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     1|           1|      3|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     2|           0|     17|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     2|           1|      7|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     3|           0|     15|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     3|           1|     12|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     4|           0|     18|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     4|           1|      4|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     5|           0|     16|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     5|           1|      6|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     6|           0|      7|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     6|           1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     7|           0|     16|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     7|           1|      6|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     8|           0|     24|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     8|           1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     9|           0|     13|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     9|           1|     10|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    10|           0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    10|           1|      3|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    11|           0|     15|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    11|           1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    12|           0|     25|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    12|           1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     1|           0|     34|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     1|           1|      5|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     2|           0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     2|           1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     3|           0|     19|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     3|           1|      3|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     4|           0|     20|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     4|           1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     5|           0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     5|           1|      2|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     6|           0|     19|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     6|           1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     7|           0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     7|           1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     8|           0|     18|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     8|           1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     9|           0|     21|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     9|           1|      2|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    10|           0|     25|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    10|           1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    11|           0|     29|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    11|           1|      4|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    12|           0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    12|           1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     1|           0|     16|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     1|           1|      4|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     2|           0|     15|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     2|           1|      4|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     3|           0|     16|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     3|           1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     4|           0|     13|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     4|           1|      6|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     5|           0|     13|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     5|           1|      7|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     6|           0|     13|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     6|           1|      9|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     7|           0|     16|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     7|           1|      4|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     8|           0|     21|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     8|           1|      3|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     9|           0|     14|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     9|           1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    10|           0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    10|           1|      2|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    11|           0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    11|           1|      4|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    12|           0|     17|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    12|           1|      2|   239|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     1|           0|     13|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     1|           1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     2|           0|     24|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     2|           1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     3|           0|     20|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     3|           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     4|           0|     10|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     4|           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     5|           0|     24|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     5|           1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     6|           0|      7|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     6|           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     7|           0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     7|           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     8|           0|     19|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     8|           1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     9|           0|     30|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     9|           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    10|           0|     20|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    10|           1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    11|           0|     17|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    11|           1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    12|           0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    12|           1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     1|           0|     16|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     1|           1|      7|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     2|           0|     22|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     2|           1|      5|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     3|           0|     20|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     3|           1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     4|           0|     10|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     4|           1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     5|           0|     15|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     5|           1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     6|           0|     14|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     6|           1|      6|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     7|           0|     24|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     7|           1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     8|           0|      9|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     8|           1|      3|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     9|           0|     22|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     9|           1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    10|           0|     21|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    10|           1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    11|           0|     24|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    11|           1|      5|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    12|           0|     30|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    12|           1|      3|   261|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     1|           0|     32|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     1|           1|     11|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     2|           0|     26|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     2|           1|      3|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     3|           0|     17|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     3|           1|      1|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     4|           0|     12|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     4|           1|      2|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     5|           0|     13|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     5|           1|      1|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     6|           0|     18|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     6|           1|      3|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     7|           0|     23|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     7|           1|      3|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     8|           0|     14|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     8|           1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     9|           0|     22|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     9|           1|      3|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    10|           0|     24|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    10|           1|      7|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    11|           0|     23|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    11|           1|      5|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    12|           0|     39|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    12|           1|      6|   308|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     1|           0|     39|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     1|           1|     25|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     2|           0|     41|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     2|           1|     17|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     3|           0|     37|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     3|           1|     19|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     4|           0|     36|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     4|           1|     14|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     5|           0|     36|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     5|           1|     11|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     6|           0|     32|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     6|           1|     12|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     7|           0|     31|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     7|           1|     16|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     8|           0|     28|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     8|           1|     13|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     9|           0|     25|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     9|           1|      8|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    10|           0|     46|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    10|           1|     12|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    11|           0|     36|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    11|           1|     15|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    12|           0|     37|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    12|           1|     16|   602|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     1|           0|   1110| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     1|           1|     72| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     2|           0|    942| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     2|           1|     62| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     3|           0|   1106| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     3|           1|     79| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     4|           0|   1062| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     4|           1|     67| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     5|           0|   1071| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     5|           1|     79| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     6|           0|   1126| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     6|           1|     95| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     7|           0|   1381| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     7|           1|     92| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     8|           0|   1488| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     8|           1|    127| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     9|           0|   1487| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     9|           1|    103| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    10|           0|   1681| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    10|           1|    120| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    11|           0|   1580| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    11|           1|    125| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    12|           0|   1697| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    12|           1|    127| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     1|           0|     24|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     1|           1|      7|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     2|           0|     31|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     2|           1|      7|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     3|           0|     28|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     3|           1|      7|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     4|           0|     40|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     4|           1|     13|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     5|           0|     30|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     5|           1|      9|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     6|           0|     41|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     6|           1|      7|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     7|           0|     76|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     7|           1|     17|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     8|           0|     72|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     8|           1|     14|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     9|           0|     52|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     9|           1|     16|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    10|           0|     66|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    10|           1|     10|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    11|           0|     66|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    11|           1|     12|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    12|           0|     39|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    12|           1|      3|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     1|           0|      2|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     1|           1|      1|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     2|           0|      6|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     2|           1|      4|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     3|           0|      7|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     3|           1|      5|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     4|           0|     12|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     4|           1|      9|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     5|           0|     15|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     5|           1|     21|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     6|           0|     29|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     6|           1|     19|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     7|           0|     28|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     7|           1|     19|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     8|           0|     12|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     8|           1|     18|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     9|           0|     28|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     9|           1|     17|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    10|           0|      8|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    10|           1|      8|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    11|           0|      2|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    11|           1|      5|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    12|           0|      4|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    12|           1|      1|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     1|           0|     66|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     1|           1|     41|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     2|           0|     67|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     2|           1|     25|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     3|           0|     58|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     3|           1|     29|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     4|           0|     52|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     4|           1|     30|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     5|           0|     50|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     5|           1|     37|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     6|           0|     70|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     6|           1|     44|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     7|           0|     86|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     7|           1|     39|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     8|           0|    104|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     8|           1|     64|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     9|           0|    117|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     9|           1|     67|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    10|           0|    105|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    10|           1|     60|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    11|           0|     83|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    11|           1|     61|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    12|           0|    101|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    12|           1|     46|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     1|           0|     37|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     1|           1|     25|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     2|           0|     25|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     2|           1|     15|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     3|           0|     23|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     3|           1|     12|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     4|           0|     16|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     4|           1|     11|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     5|           0|     17|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     5|           1|     13|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     6|           0|     19|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     6|           1|     12|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     7|           0|     13|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     7|           1|      5|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     8|           0|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     8|           1|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     9|           0|      7|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     9|           1|      6|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    10|           0|     22|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    10|           1|      6|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    11|           0|     33|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    11|           1|     18|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    12|           0|     42|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    12|           1|     20|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     1|           0|    117|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     1|           1|     43|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     2|           0|    142|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     2|           1|     35|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     3|           0|    145|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     3|           1|     27|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     4|           0|    157|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     4|           1|     27|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     5|           0|    160|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     5|           1|     30|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     6|           0|    131|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     6|           1|     32|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     7|           0|    167|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     7|           1|     40|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     8|           0|    186|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     8|           1|     51|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     9|           0|    176|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     9|           1|     39|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    10|           0|    195|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    10|           1|     56|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    11|           0|    168|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    11|           1|     48|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    12|           0|    166|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    12|           1|     46|  2384|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     1|           0|     19|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     1|           1|     17|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     2|           0|     13|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     2|           1|     15|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     3|           0|     16|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     3|           1|     13|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     4|           0|     13|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     4|           1|      9|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     5|           0|      9|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     5|           1|     12|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     6|           0|     15|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     6|           1|     21|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     7|           0|     16|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     7|           1|     20|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     8|           0|     22|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     8|           1|     23|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     9|           0|     11|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     9|           1|     16|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    10|           0|     16|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    10|           1|     21|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    11|           0|     22|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    11|           1|     19|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    12|           0|     24|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    12|           1|     27|   409|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     1|           0|   1188| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     1|           1|    139| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     2|           0|    923| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     2|           1|    107| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     3|           0|   1002| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     3|           1|    137| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     4|           0|    916| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     4|           1|     91| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     5|           0|    896| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     5|           1|     97| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     6|           0|   1012| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     6|           1|    105| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     7|           0|   1028| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     7|           1|    114| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     8|           0|   1075| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     8|           1|    126| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     9|           0|   1185| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     9|           1|    105| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    10|           0|    922| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    10|           1|    104| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    11|           0|    999| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    11|           1|    127| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    12|           0|   1100| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    12|           1|    139| 13637|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     1|           0|     22|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     1|           1|      9|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     2|           0|      8|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     2|           1|      6|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     3|           0|     22|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     3|           1|      6|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     4|           0|     34|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     4|           1|      9|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     5|           0|     21|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     5|           1|     10|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     6|           0|     22|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     6|           1|     14|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     7|           0|     28|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     7|           1|     10|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     8|           0|     12|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     8|           1|      4|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     9|           0|     12|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     9|           1|      6|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    10|           0|     21|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    10|           1|      8|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    11|           0|     26|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    11|           1|     15|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    12|           0|     14|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    12|           1|     11|   350|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     1|           0|     23|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     1|           1|      5|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     2|           0|     27|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     2|           1|      7|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     3|           0|     19|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     3|           1|      1|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     4|           0|     18|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     4|           1|      2|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     5|           0|     15|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     5|           1|      5|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     6|           0|     20|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     6|           1|      4|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     7|           0|     12|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     7|           1|      2|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     8|           0|     14|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     8|           1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     9|           0|     19|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     9|           1|      1|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    10|           0|     23|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    10|           1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    11|           0|      3|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    11|           1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    12|           0|     43|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    12|           1|      4|   267|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     1|           0|      8|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     1|           1|      1|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     2|           0|     13|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     2|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     3|           0|     25|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     3|           1|      2|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     4|           0|     18|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     4|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     5|           0|     25|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     5|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     6|           0|     14|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     6|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     7|           0|     16|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     7|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     8|           0|     26|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     8|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     9|           0|     19|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     9|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    10|           0|     23|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    10|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    11|           0|     18|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    11|           1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    12|           0|      7|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    12|           1|      0|   215|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     1|           0|     70|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     1|           1|     23|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     2|           0|     54|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     2|           1|     13|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     3|           0|     31|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     3|           1|     11|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     4|           0|     12|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     4|           1|      4|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     5|           0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     5|           1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     6|           0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     6|           1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     7|           0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     7|           1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     8|           0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     8|           1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     9|           0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     9|           1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    10|           0|      3|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    10|           1|      1|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    11|           0|     56|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    11|           1|     13|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    12|           0|     68|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    12|           1|     16|   375|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     1|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     1|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     2|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     2|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     3|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     3|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     4|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     4|           1|      1|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     5|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     5|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     6|           0|    118|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     6|           1|     28|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     7|           0|    189|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     7|           1|     56|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     8|           0|    212|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     8|           1|     38|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     9|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     9|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    10|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    10|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    11|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    11|           1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    12|           0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    12|           1|      0|   642|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     1|           0|     18|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     1|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     2|           0|     19|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     2|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     3|           0|     21|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     3|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     4|           0|     22|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     4|           1|      1|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     5|           0|     27|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     5|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     6|           0|     35|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     6|           1|      1|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     7|           0|     23|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     7|           1|      2|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     8|           0|     17|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     8|           1|      1|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     9|           0|     31|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     9|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    10|           0|     32|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    10|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    11|           0|     30|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    11|           1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    12|           0|     10|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    12|           1|      0|   290|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     1|           0|   2285| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     1|           1|    207| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     2|           0|   1910| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     2|           1|    151| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     3|           0|   2227| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     3|           1|    164| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     4|           0|   1661| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     4|           1|    128| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     5|           0|   1258| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     5|           1|     81| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     6|           0|   1225| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     6|           1|     88| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     7|           0|   1408| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     7|           1|    103| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     8|           0|   1854| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     8|           1|    115| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     9|           0|   2381| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     9|           1|    182| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    10|           0|   2658| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    10|           1|    207| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    11|           0|   2651| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    11|           1|    211| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    12|           0|   2835| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    12|           1|    244| 26234|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     1|           0|     49|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     1|           1|      1|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     2|           0|    341|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     2|           1|     14|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     3|           0|    437|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     3|           1|      6|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     4|           0|    883|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     4|           1|     25|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     5|           0|    584|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     5|           1|     14|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     6|           0|    427|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     6|           1|     14|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     7|           0|    822|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     7|           1|     24|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     8|           0|    506|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     8|           1|      8|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     9|           0|    324|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     9|           1|      9|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    10|           0|    254|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    10|           1|      8|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    11|           0|    134|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    11|           1|      3|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    12|           0|     69|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    12|           1|      1|  4957|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     1|           0|    196|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     1|           1|     15|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     2|           0|    236|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     2|           1|     26|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     3|           0|    185|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     3|           1|     25|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     4|           0|    227|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     4|           1|     28|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     5|           0|    163|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     5|           1|     26|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     6|           0|    152|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     6|           1|     22|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     7|           0|    114|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     7|           1|     20|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     8|           0|    112|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     8|           1|     20|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     9|           0|    162|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     9|           1|     24|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    10|           0|    168|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    10|           1|     26|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    11|           0|    248|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    11|           1|     24|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    12|           0|    190|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    12|           1|     15|  2424|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     1|           0|      7|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     1|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     2|           0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     2|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     3|           0|     56|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     3|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     4|           0|     48|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     4|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     5|           0|     26|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     5|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     6|           0|     28|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     6|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     7|           0|     28|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     7|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     8|           0|      4|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     8|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     9|           0|      4|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     9|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    10|           0|      5|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    10|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    11|           0|     10|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    11|           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    12|           0|      5|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    12|           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     1|           0|     16|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     1|           1|      4|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     2|           0|     18|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     2|           1|      2|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     3|           0|     17|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     3|           1|      5|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     4|           0|     16|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     4|           1|      2|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     5|           0|      6|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     5|           1|      2|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     6|           0|     13|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     6|           1|      4|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     7|           0|     18|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     7|           1|      5|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     8|           0|     21|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     8|           1|      4|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     9|           0|     20|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     9|           1|      3|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    10|           0|     24|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    10|           1|      2|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    11|           0|     19|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    11|           1|      4|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    12|           0|     17|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    12|           1|      2|   244|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     1|           0|     20|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     1|           1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     2|           0|     23|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     2|           1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     3|           0|     23|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     3|           1|      4|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     4|           0|     19|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     4|           1|      2|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     5|           0|     19|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     5|           1|      3|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     6|           0|      8|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     6|           1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     7|           0|     19|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     7|           1|      3|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     8|           0|     25|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     8|           1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     9|           0|     22|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     9|           1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    10|           0|     22|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    10|           1|      2|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    11|           0|     17|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    11|           1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    12|           0|     26|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    12|           1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     1|           0|     38|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     1|           1|      1|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     2|           0|     25|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     2|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     3|           0|     22|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     3|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     4|           0|     21|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     4|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     5|           0|     25|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     5|           1|      1|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     6|           0|     20|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     6|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     7|           0|     24|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     7|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     8|           0|     19|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     8|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     9|           0|     23|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     9|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    10|           0|     25|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    10|           1|      1|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    11|           0|     31|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    11|           1|      2|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    12|           0|     24|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    12|           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     1|           0|     17|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     1|           1|      2|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     2|           0|     19|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     2|           1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     3|           0|     17|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     3|           1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     4|           0|     16|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     4|           1|      3|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     5|           0|     18|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     5|           1|      2|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     6|           0|     18|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     6|           1|      4|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     7|           0|     18|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     7|           1|      2|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     8|           0|     22|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     8|           1|      1|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     9|           0|     14|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     9|           1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    10|           0|     21|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    10|           1|      1|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    11|           0|     23|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    11|           1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    12|           0|     18|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    12|           1|      1|   237|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     1|           0|     13|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     1|           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     2|           0|     25|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     2|           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     3|           0|     21|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     3|           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     4|           0|     10|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     4|           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     5|           0|     24|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     5|           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     6|           0|      7|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     6|           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     7|           0|     18|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     7|           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     8|           0|     20|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     8|           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     9|           0|     31|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     9|           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    10|           0|     21|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    10|           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    11|           0|     17|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    11|           1|      2|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    12|           0|     18|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    12|           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     1|           0|     21|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     1|           1|      2|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     2|           0|     27|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     2|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     3|           0|     22|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     3|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     4|           0|     11|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     4|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     5|           0|     16|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     5|           1|      1|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     6|           0|     17|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     6|           1|      3|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     7|           0|     24|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     7|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     8|           0|     12|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     8|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     9|           0|     22|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     9|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    10|           0|     21|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    10|           1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    11|           0|     27|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    11|           1|      2|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    12|           0|     31|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    12|           1|      2|   261|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     1|           0|     41|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     1|           1|      1|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     2|           0|     28|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     2|           1|      1|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     3|           0|     18|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     3|           1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     4|           0|     14|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     4|           1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     5|           0|     14|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     5|           1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     6|           0|     21|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     6|           1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     7|           0|     24|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     7|           1|      2|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     8|           0|     14|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     8|           1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     9|           0|     25|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     9|           1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    10|           0|     27|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    10|           1|      4|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    11|           0|     24|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    11|           1|      4|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    12|           0|     43|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    12|           1|      2|   307|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     1|           0|     52|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     1|           1|     11|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     2|           0|     57|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     2|           1|      1|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     3|           0|     46|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     3|           1|      8|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     4|           0|     42|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     4|           1|      7|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     5|           0|     44|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     5|           1|      1|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     6|           0|     42|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     6|           1|      2|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     7|           0|     39|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     7|           1|      4|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     8|           0|     38|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     8|           1|      2|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     9|           0|     29|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     9|           1|      3|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    10|           0|     54|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    10|           1|      2|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    11|           0|     45|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    11|           1|      3|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    12|           0|     50|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    12|           1|      2|   584|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     1|           0|   1101| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     1|           1|     64| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     2|           0|    940| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     2|           1|     55| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     3|           0|   1105| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     3|           1|     71| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     4|           0|   1055| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     4|           1|     61| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     5|           0|   1063| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     5|           1|     71| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     6|           0|   1115| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     6|           1|     90| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     7|           0|   1372| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     7|           1|     86| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     8|           0|   1477| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     8|           1|    121| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     9|           0|   1477| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     9|           1|     92| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    10|           0|   1679| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    10|           1|     97| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    11|           0|   1581| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    11|           1|    108| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    12|           0|   1706| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    12|           1|    106| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     1|           0|     29|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     1|           1|      2|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     2|           0|     36|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     2|           1|      2|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     3|           0|     32|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     3|           1|      3|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     4|           0|     48|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     4|           1|      4|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     5|           0|     36|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     5|           1|      3|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     6|           0|     47|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     6|           1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     7|           0|     86|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     7|           1|      5|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     8|           0|     80|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     8|           1|      5|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     9|           0|     64|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     9|           1|      4|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    10|           0|     72|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    10|           1|      4|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    11|           0|     77|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    11|           1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    12|           0|     39|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    12|           1|      3|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     1|           0|      3|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     1|           1|      0|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     2|           0|      5|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     2|           1|      4|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     3|           0|      8|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     3|           1|      3|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     4|           0|     19|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     4|           1|      2|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     5|           0|     26|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     5|           1|     10|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     6|           0|     41|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     6|           1|      6|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     7|           0|     36|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     7|           1|     11|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     8|           0|     20|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     8|           1|     10|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     9|           0|     33|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     9|           1|     11|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    10|           0|     13|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    10|           1|      3|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    11|           0|      4|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    11|           1|      3|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    12|           0|      5|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    12|           1|      0|   276|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     1|           0|     81|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     1|           1|     23|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     2|           0|     80|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     2|           1|     10|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     3|           0|     72|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     3|           1|     13|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     4|           0|     69|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     4|           1|     11|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     5|           0|     66|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     5|           1|     18|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     6|           0|     98|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     6|           1|     16|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     7|           0|    114|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     7|           1|      6|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     8|           0|    154|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     8|           1|     12|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     9|           0|    167|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     9|           1|     13|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    10|           0|    143|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    10|           1|     18|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    11|           0|    119|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    11|           1|     23|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    12|           0|    125|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    12|           1|     22|  1473|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     1|           0|     54|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     1|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     2|           0|     32|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     2|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     3|           0|     31|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     3|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     4|           0|     23|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     4|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     5|           0|     27|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     5|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     6|           0|     26|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     6|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     7|           0|     14|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     7|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     8|           0|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     8|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     9|           0|     11|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     9|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    10|           0|     24|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    10|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    11|           0|     49|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    11|           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    12|           0|     50|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    12|           1|      0|   341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     1|           0|    141|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     1|           1|     19|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     2|           0|    157|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     2|           1|     20|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     3|           0|    164|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     3|           1|      8|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     4|           0|    174|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     4|           1|      9|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     5|           0|    181|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     5|           1|      8|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     6|           0|    149|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     6|           1|     14|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     7|           0|    189|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     7|           1|     17|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     8|           0|    215|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     8|           1|     22|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     9|           0|    202|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     9|           1|     13|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    10|           0|    224|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    10|           1|     26|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    11|           0|    189|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    11|           1|     24|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    12|           0|    187|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    12|           1|     24|  2376|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     1|           0|     26|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     1|           1|     10|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     2|           0|     19|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     2|           1|      9|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     3|           0|     17|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     3|           1|     11|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     4|           0|     19|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     4|           1|      2|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     5|           0|     16|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     5|           1|      5|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     6|           0|     20|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     6|           1|     13|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     7|           0|     20|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     7|           1|     14|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     8|           0|     27|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     8|           1|     15|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     9|           0|     17|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     9|           1|      9|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    10|           0|     22|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    10|           1|     12|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    11|           0|     28|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    11|           1|     13|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    12|           0|     26|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    12|           1|     20|   390|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     1|           0|   1256| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     1|           1|     42| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     2|           0|    961| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     2|           1|     38| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     3|           0|   1073| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     3|           1|     43| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     4|           0|    967| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     4|           1|     25| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     5|           0|    962| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     5|           1|     18| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     6|           0|   1076| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     6|           1|     28| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     7|           0|   1081| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     7|           1|     41| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     8|           0|   1136| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     8|           1|     44| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     9|           0|   1221| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     9|           1|     45| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    10|           0|    979| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    10|           1|     26| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    11|           0|   1058| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    11|           1|     38| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    12|           0|   1178| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    12|           1|     40| 13376|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     1|           0|     26|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     1|           1|      8|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     2|           0|     15|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     2|           1|      1|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     3|           0|     25|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     3|           1|      7|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     4|           0|     32|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     4|           1|     12|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     5|           0|     30|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     5|           1|      4|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     6|           0|     27|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     6|           1|     11|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     7|           0|     30|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     7|           1|     10|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     8|           0|     10|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     8|           1|      8|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     9|           0|     13|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     9|           1|      6|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    10|           0|     21|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    10|           1|      8|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    11|           0|     29|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    11|           1|     15|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    12|           0|     16|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    12|           1|      9|   373|
|6-24 months                 |CMIN           |BANGLADESH   |     1|           0|     18|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     1|           1|      9|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     2|           0|     20|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     2|           1|     11|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     3|           0|     14|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     3|           1|      6|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     4|           0|     10|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     4|           1|      8|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     5|           0|     12|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     5|           1|      8|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     6|           0|     17|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     6|           1|      6|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     7|           0|      8|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     7|           1|      5|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     8|           0|     10|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     8|           1|      4|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     9|           0|     12|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     9|           1|      7|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    10|           0|     13|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    10|           1|      6|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    11|           0|      2|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    11|           1|      0|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    12|           0|     19|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    12|           1|     27|   252|
|6-24 months                 |CONTENT        |PERU         |     1|           0|      8|   215|
|6-24 months                 |CONTENT        |PERU         |     1|           1|      1|   215|
|6-24 months                 |CONTENT        |PERU         |     2|           0|     13|   215|
|6-24 months                 |CONTENT        |PERU         |     2|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     3|           0|     27|   215|
|6-24 months                 |CONTENT        |PERU         |     3|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     4|           0|     18|   215|
|6-24 months                 |CONTENT        |PERU         |     4|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     5|           0|     25|   215|
|6-24 months                 |CONTENT        |PERU         |     5|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     6|           0|     13|   215|
|6-24 months                 |CONTENT        |PERU         |     6|           1|      1|   215|
|6-24 months                 |CONTENT        |PERU         |     7|           0|     16|   215|
|6-24 months                 |CONTENT        |PERU         |     7|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     8|           0|     26|   215|
|6-24 months                 |CONTENT        |PERU         |     8|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     9|           0|     19|   215|
|6-24 months                 |CONTENT        |PERU         |     9|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |    10|           0|     23|   215|
|6-24 months                 |CONTENT        |PERU         |    10|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |    11|           0|     18|   215|
|6-24 months                 |CONTENT        |PERU         |    11|           1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |    12|           0|      7|   215|
|6-24 months                 |CONTENT        |PERU         |    12|           1|      0|   215|
|6-24 months                 |EE             |PAKISTAN     |     1|           0|     57|   374|
|6-24 months                 |EE             |PAKISTAN     |     1|           1|     35|   374|
|6-24 months                 |EE             |PAKISTAN     |     2|           0|     41|   374|
|6-24 months                 |EE             |PAKISTAN     |     2|           1|     25|   374|
|6-24 months                 |EE             |PAKISTAN     |     3|           0|     19|   374|
|6-24 months                 |EE             |PAKISTAN     |     3|           1|     23|   374|
|6-24 months                 |EE             |PAKISTAN     |     4|           0|      6|   374|
|6-24 months                 |EE             |PAKISTAN     |     4|           1|     10|   374|
|6-24 months                 |EE             |PAKISTAN     |     5|           0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     5|           1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     6|           0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     6|           1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     7|           0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     7|           1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     8|           0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     8|           1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     9|           0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     9|           1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |    10|           0|      2|   374|
|6-24 months                 |EE             |PAKISTAN     |    10|           1|      2|   374|
|6-24 months                 |EE             |PAKISTAN     |    11|           0|     39|   374|
|6-24 months                 |EE             |PAKISTAN     |    11|           1|     30|   374|
|6-24 months                 |EE             |PAKISTAN     |    12|           0|     49|   374|
|6-24 months                 |EE             |PAKISTAN     |    12|           1|     36|   374|
|6-24 months                 |GMS-Nepal      |NEPAL        |     1|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     1|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     2|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     2|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     3|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     3|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     4|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     4|           1|      1|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     5|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     5|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     6|           0|     58|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     6|           1|     60|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     7|           0|    129|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     7|           1|     96|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     8|           0|    124|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     8|           1|    122|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     9|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     9|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    10|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    10|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    11|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    11|           1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    12|           0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    12|           1|      0|   590|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     1|           0|     13|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     1|           1|      2|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     2|           0|     17|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     2|           1|      1|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     3|           0|     17|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     3|           1|      2|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     4|           0|     20|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     4|           1|      3|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     5|           0|     29|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     5|           1|      2|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     6|           0|     35|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     6|           1|      2|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     7|           0|     23|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     7|           1|      1|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     8|           0|     16|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     8|           1|      3|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     9|           0|     28|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     9|           1|      4|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    10|           0|     23|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    10|           1|      1|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    11|           0|     24|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    11|           1|      2|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    12|           0|      9|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    12|           1|      0|   277|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     1|           0|    184|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     1|           1|     55|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     2|           0|    159|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     2|           1|     49|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     3|           0|    167|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     3|           1|     47|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     4|           0|    144|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     4|           1|     39|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     5|           0|    197|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     5|           1|     60|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     6|           0|    280|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     6|           1|     87|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     7|           0|    320|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     7|           1|     91|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     8|           0|    271|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     8|           1|     91|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     9|           0|    222|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     9|           1|     72|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    10|           0|    303|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    10|           1|     69|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    11|           0|    143|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    11|           1|     54|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    12|           0|    119|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    12|           1|     43|  3266|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     1|           0|   1183| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     1|           1|    215| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     2|           0|   1046| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     2|           1|    170| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     3|           0|   1274| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     3|           1|    193| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     4|           0|   1041| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     4|           1|    192| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     5|           0|    968| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     5|           1|    233| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     6|           0|    982| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     6|           1|    229| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     7|           0|   1049| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     7|           1|    241| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     8|           0|   1230| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     8|           1|    269| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     9|           0|   1330| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     9|           1|    266| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    10|           0|   1426| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    10|           1|    291| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    11|           0|   1426| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    11|           1|    286| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    12|           0|   1506| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    12|           1|    252| 17298|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     1|           0|     44|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     1|           1|     10|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     2|           0|    288|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     2|           1|     80|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     3|           0|    354|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     3|           1|    120|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     4|           0|    680|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     4|           1|    257|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     5|           0|    444|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     5|           1|    180|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     6|           0|    343|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     6|           1|    118|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     7|           0|    674|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     7|           1|    227|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     8|           0|    425|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     8|           1|    119|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     9|           0|    389|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     9|           1|    103|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    10|           0|    249|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    10|           1|     76|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    11|           0|    129|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    11|           1|     36|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    12|           0|     68|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    12|           1|     17|  5430|
|6-24 months                 |Keneba         |GAMBIA       |     1|           0|    150|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     1|           1|     82|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     2|           0|    181|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     2|           1|    105|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     3|           0|    144|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     3|           1|     74|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     4|           0|    193|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     4|           1|     81|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     5|           0|    172|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     5|           1|     57|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     6|           0|    167|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     6|           1|     39|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     7|           0|    109|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     7|           1|     54|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     8|           0|    114|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     8|           1|     57|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     9|           0|    139|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     9|           1|     74|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    10|           0|    145|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    10|           1|     74|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    11|           0|    204|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    11|           1|    101|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    12|           0|    153|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    12|           1|     69|  2738|
|6-24 months                 |LCNI-5         |MALAWI       |     1|           0|     49|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     1|           1|      6|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     2|           0|    105|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     2|           1|      9|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     3|           0|     84|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     3|           1|     10|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     4|           0|    101|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     4|           1|      6|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     5|           0|    104|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     5|           1|      5|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     6|           0|     80|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     6|           1|     10|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     7|           0|     67|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     7|           1|      4|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     8|           0|     38|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     8|           1|      3|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     9|           0|     26|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     9|           1|      3|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    10|           0|     35|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    10|           1|      0|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    11|           0|     41|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    11|           1|      6|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    12|           0|     32|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    12|           1|      2|   826|
|6-24 months                 |MAL-ED         |INDIA        |     1|           0|     14|   235|
|6-24 months                 |MAL-ED         |INDIA        |     1|           1|      5|   235|
|6-24 months                 |MAL-ED         |INDIA        |     2|           0|     17|   235|
|6-24 months                 |MAL-ED         |INDIA        |     2|           1|      1|   235|
|6-24 months                 |MAL-ED         |INDIA        |     3|           0|     16|   235|
|6-24 months                 |MAL-ED         |INDIA        |     3|           1|      5|   235|
|6-24 months                 |MAL-ED         |INDIA        |     4|           0|     11|   235|
|6-24 months                 |MAL-ED         |INDIA        |     4|           1|      4|   235|
|6-24 months                 |MAL-ED         |INDIA        |     5|           0|      5|   235|
|6-24 months                 |MAL-ED         |INDIA        |     5|           1|      3|   235|
|6-24 months                 |MAL-ED         |INDIA        |     6|           0|     14|   235|
|6-24 months                 |MAL-ED         |INDIA        |     6|           1|      4|   235|
|6-24 months                 |MAL-ED         |INDIA        |     7|           0|     14|   235|
|6-24 months                 |MAL-ED         |INDIA        |     7|           1|      8|   235|
|6-24 months                 |MAL-ED         |INDIA        |     8|           0|     14|   235|
|6-24 months                 |MAL-ED         |INDIA        |     8|           1|      9|   235|
|6-24 months                 |MAL-ED         |INDIA        |     9|           0|     15|   235|
|6-24 months                 |MAL-ED         |INDIA        |     9|           1|      5|   235|
|6-24 months                 |MAL-ED         |INDIA        |    10|           0|     21|   235|
|6-24 months                 |MAL-ED         |INDIA        |    10|           1|      6|   235|
|6-24 months                 |MAL-ED         |INDIA        |    11|           0|     14|   235|
|6-24 months                 |MAL-ED         |INDIA        |    11|           1|     11|   235|
|6-24 months                 |MAL-ED         |INDIA        |    12|           0|     16|   235|
|6-24 months                 |MAL-ED         |INDIA        |    12|           1|      3|   235|
|6-24 months                 |MAL-ED         |BANGLADESH   |     1|           0|     16|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     1|           1|      2|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     2|           0|     14|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     2|           1|      6|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     3|           0|     16|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     3|           1|      9|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     4|           0|     19|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     4|           1|      3|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     5|           0|     17|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     5|           1|      4|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     6|           0|      7|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     6|           1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     7|           0|     17|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     7|           1|      3|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     8|           0|     21|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     8|           1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     9|           0|     12|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     9|           1|      9|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    10|           0|     20|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    10|           1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    11|           0|     13|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    11|           1|      2|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    12|           0|     25|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    12|           1|      2|   240|
|6-24 months                 |MAL-ED         |PERU         |     1|           0|     31|   270|
|6-24 months                 |MAL-ED         |PERU         |     1|           1|      5|   270|
|6-24 months                 |MAL-ED         |PERU         |     2|           0|     20|   270|
|6-24 months                 |MAL-ED         |PERU         |     2|           1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |     3|           0|     18|   270|
|6-24 months                 |MAL-ED         |PERU         |     3|           1|      3|   270|
|6-24 months                 |MAL-ED         |PERU         |     4|           0|     19|   270|
|6-24 months                 |MAL-ED         |PERU         |     4|           1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |     5|           0|     21|   270|
|6-24 months                 |MAL-ED         |PERU         |     5|           1|      2|   270|
|6-24 months                 |MAL-ED         |PERU         |     6|           0|     17|   270|
|6-24 months                 |MAL-ED         |PERU         |     6|           1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |     7|           0|     22|   270|
|6-24 months                 |MAL-ED         |PERU         |     7|           1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     8|           0|     15|   270|
|6-24 months                 |MAL-ED         |PERU         |     8|           1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |     9|           0|     21|   270|
|6-24 months                 |MAL-ED         |PERU         |     9|           1|      2|   270|
|6-24 months                 |MAL-ED         |PERU         |    10|           0|     18|   270|
|6-24 months                 |MAL-ED         |PERU         |    10|           1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |    11|           0|     30|   270|
|6-24 months                 |MAL-ED         |PERU         |    11|           1|      2|   270|
|6-24 months                 |MAL-ED         |PERU         |    12|           0|     20|   270|
|6-24 months                 |MAL-ED         |PERU         |    12|           1|      0|   270|
|6-24 months                 |MAL-ED         |NEPAL        |     1|           0|     17|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     1|           1|      3|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     2|           0|     15|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     2|           1|      4|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     3|           0|     16|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     3|           1|      1|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     4|           0|     15|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     4|           1|      4|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     5|           0|     13|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     5|           1|      6|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     6|           0|     16|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     6|           1|      6|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     7|           0|     15|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     7|           1|      3|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     8|           0|     22|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     8|           1|      2|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     9|           0|     13|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     9|           1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    10|           0|     21|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    10|           1|      1|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    11|           0|     19|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    11|           1|      4|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    12|           0|     17|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    12|           1|      2|   235|
|6-24 months                 |MAL-ED         |BRAZIL       |     1|           0|     13|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     1|           1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     2|           0|     22|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     2|           1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     3|           0|     16|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     3|           1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     4|           0|     11|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     4|           1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     5|           0|     21|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     5|           1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     6|           0|      7|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     6|           1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     7|           0|     17|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     7|           1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     8|           0|     15|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     8|           1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     9|           0|     28|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     9|           1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    10|           0|     19|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    10|           1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    11|           0|     17|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    11|           1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    12|           0|     15|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    12|           1|      0|   207|
|6-24 months                 |MAL-ED         |TANZANIA     |     1|           0|     13|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     1|           1|      7|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     2|           0|     22|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     2|           1|      5|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     3|           0|     19|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     3|           1|      2|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     4|           0|      9|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     4|           1|      1|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     5|           0|     15|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     5|           1|      1|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     6|           0|     17|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     6|           1|      3|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     7|           0|     24|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     7|           1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     8|           0|      9|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     8|           1|      3|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     9|           0|     21|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     9|           1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    10|           0|     18|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    10|           1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    11|           0|     25|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    11|           1|      4|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    12|           0|     25|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    12|           1|      2|   245|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     1|           0|     26|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     1|           1|     11|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     2|           0|     21|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     2|           1|      2|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     3|           0|     15|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     3|           1|      1|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     4|           0|     11|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     4|           1|      2|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     5|           0|     11|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     5|           1|      1|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     6|           0|     14|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     6|           1|      3|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     7|           0|     23|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     7|           1|      1|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     8|           0|     10|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     8|           1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     9|           0|     16|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     9|           1|      3|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    10|           0|     23|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    10|           1|      4|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    11|           0|     21|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    11|           1|      4|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    12|           0|     31|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    12|           1|      5|   259|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     1|           0|     30|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     1|           1|     22|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     2|           0|     33|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     2|           1|     17|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     3|           0|     35|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     3|           1|     16|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     4|           0|     34|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     4|           1|     11|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     5|           0|     32|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     5|           1|     10|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     6|           0|     30|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     6|           1|     10|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     7|           0|     31|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     7|           1|     14|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     8|           0|     25|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     8|           1|     12|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     9|           0|     22|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     9|           1|      7|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    10|           0|     41|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    10|           1|     12|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    11|           0|     35|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    11|           1|     13|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    12|           0|     35|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    12|           1|     15|   542|
|6-24 months                 |PROBIT         |BELARUS      |     1|           0|   1137| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     1|           1|      9| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     2|           0|    981| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     2|           1|      7| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     3|           0|   1160| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     3|           1|      9| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     4|           0|   1111| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     4|           1|      7| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     5|           0|   1125| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     5|           1|      8| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     6|           0|   1186| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     6|           1|      6| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     7|           0|   1447| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     7|           1|      8| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     8|           0|   1578| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     8|           1|      7| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     9|           0|   1549| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     9|           1|     13| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    10|           0|   1743| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    10|           1|     24| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    11|           0|   1663| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    11|           1|     19| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    12|           0|   1779| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    12|           1|     22| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |     1|           0|     22|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     1|           1|      7|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     2|           0|     29|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     2|           1|      7|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     3|           0|     29|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     3|           1|      5|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     4|           0|     35|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     4|           1|      9|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     5|           0|     28|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     5|           1|      8|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     6|           0|     38|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     6|           1|      6|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     7|           0|     64|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     7|           1|     14|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     8|           0|     65|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     8|           1|     11|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     9|           0|     49|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     9|           1|     13|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    10|           0|     63|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    10|           1|      6|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    11|           0|     57|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    11|           1|     11|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    12|           0|     37|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    12|           1|      2|   615|
|6-24 months                 |ResPak         |PAKISTAN     |     1|           0|      1|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     1|           1|      1|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     2|           0|     10|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     2|           1|      0|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     3|           0|      8|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     3|           1|      2|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     4|           0|     14|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     4|           1|      7|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     5|           0|     13|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     5|           1|     13|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     6|           0|     22|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     6|           1|     17|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     7|           0|     25|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     7|           1|     16|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     8|           0|     15|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     8|           1|     10|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     9|           0|     27|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     9|           1|     10|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    10|           0|      9|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    10|           1|      6|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    11|           0|      4|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    11|           1|      3|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    12|           0|      2|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    12|           1|      1|   236|
|6-24 months                 |SAS-CompFeed   |INDIA        |     1|           0|     67|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     1|           1|     29|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     2|           0|     63|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     2|           1|     19|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     3|           0|     58|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     3|           1|     23|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     4|           0|     55|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     4|           1|     23|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     5|           0|     55|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     5|           1|     26|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     6|           0|     74|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     6|           1|     33|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     7|           0|     80|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     7|           1|     38|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     8|           0|     99|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     8|           1|     55|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     9|           0|    113|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     9|           1|     59|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    10|           0|    106|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    10|           1|     46|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    11|           0|     88|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    11|           1|     43|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    12|           0|    106|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    12|           1|     31|  1389|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     1|           0|     37|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     1|           1|     25|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     2|           0|     24|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     2|           1|     15|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     3|           0|     25|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     3|           1|     12|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     4|           0|     18|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     4|           1|     11|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     5|           0|     18|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     5|           1|     13|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     6|           0|     21|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     6|           1|     12|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     7|           0|     13|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     7|           1|      5|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     8|           0|      0|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     8|           1|      0|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     9|           0|      6|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     9|           1|      6|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    10|           0|     23|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    10|           1|      6|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    11|           0|     30|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    11|           1|     18|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    12|           0|     44|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    12|           1|     20|   402|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     1|           0|    105|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     1|           1|     30|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     2|           0|    132|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     2|           1|     18|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     3|           0|    126|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     3|           1|     22|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     4|           0|    123|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     4|           1|     18|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     5|           0|    130|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     5|           1|     23|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     6|           0|    114|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     6|           1|     25|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     7|           0|    160|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     7|           1|     27|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     8|           0|    170|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     8|           1|     37|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     9|           0|    154|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     9|           1|     30|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    10|           0|    178|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    10|           1|     32|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    11|           0|    158|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    11|           1|     32|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    12|           0|    144|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    12|           1|     30|  2018|
|6-24 months                 |Vellore Crypto |INDIA        |     1|           0|     24|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     1|           1|     12|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     2|           0|     18|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     2|           1|     10|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     3|           0|     24|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     3|           1|      5|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     4|           0|     14|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     4|           1|      8|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     5|           0|     12|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     5|           1|      9|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     6|           0|     25|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     6|           1|     12|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     7|           0|     24|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     7|           1|     12|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     8|           0|     31|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     8|           1|     14|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     9|           0|     17|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     9|           1|     10|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    10|           0|     21|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    10|           1|     16|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    11|           0|     33|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    11|           1|      8|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    12|           0|     40|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    12|           1|     11|   410|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     1|           0|    960| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     1|           1|    105| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     2|           0|    746| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     2|           1|     78| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     3|           0|    791| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     3|           1|    107| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     4|           0|    735| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     4|           1|     71| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     5|           0|    687| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     5|           1|     83| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     6|           0|    801| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     6|           1|     80| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     7|           0|    820| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     7|           1|     78| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     8|           0|    847| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     8|           1|     86| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     9|           0|    951| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     9|           1|     67| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    10|           0|    714| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    10|           1|     81| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    11|           0|    809| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    11|           1|     94| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    12|           0|    917| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    12|           1|    107| 10815|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


