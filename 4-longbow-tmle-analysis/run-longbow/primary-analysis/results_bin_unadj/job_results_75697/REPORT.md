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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      | month| ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:------------|-----:|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     1|            0|     30|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     1|            1|      3|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     2|            0|     14|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     2|            1|      1|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     3|            0|     27|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     3|            1|      4|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     4|            0|     37|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     4|            1|      7|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     5|            0|     28|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     5|            1|      4|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     6|            0|     34|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     6|            1|      4|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     7|            0|     32|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     7|            1|      8|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     8|            0|     13|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     8|            1|      5|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     9|            0|     16|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |     9|            1|      3|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    10|            0|     23|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    10|            1|      6|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    11|            0|     38|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    11|            1|      6|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    12|            0|     21|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |    12|            1|      4|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     1|            0|     21|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     1|            1|      7|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     2|            0|     28|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     2|            1|      6|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     3|            0|     19|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     3|            1|      1|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     4|            0|     18|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     4|            1|      2|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     5|            0|     20|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     5|            1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     6|            0|     22|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     6|            1|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     7|            0|     12|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     7|            1|      2|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     8|            0|     14|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     8|            1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     9|            0|     17|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |     9|            1|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    10|            0|     21|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    10|            1|      2|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    11|            0|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    11|            1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    12|            0|     36|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |    12|            1|     11|   268|
|0-24 months (no birth wast) |CONTENT        |PERU         |     1|            0|      8|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     1|            1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     2|            0|     13|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     2|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     3|            0|     27|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     3|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     4|            0|     18|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     4|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     5|            0|     25|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     5|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     6|            0|     14|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     6|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     7|            0|     16|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     7|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     8|            0|     26|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     8|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     9|            0|     19|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |     9|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    10|            0|     23|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    10|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    11|            0|     18|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    11|            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    12|            0|      7|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |    12|            1|      0|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     1|            0|     73|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     1|            1|     21|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     2|            0|     52|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     2|            1|     15|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     3|            0|     34|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     3|            1|      8|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     4|            0|     14|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     4|            1|      2|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     5|            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     5|            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     6|            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     6|            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     7|            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     7|            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     8|            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     8|            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     9|            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |     9|            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    10|            0|      4|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    10|            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    11|            0|     59|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    11|            1|     10|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    12|            0|     75|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |    12|            1|     10|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     1|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     1|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     2|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     2|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     3|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     3|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     4|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     4|            1|      1|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     5|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     5|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     6|            0|    118|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     6|            1|     32|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     7|            0|    201|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     7|            1|     48|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     8|            0|    210|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     8|            1|     50|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     9|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |     9|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    10|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    10|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    11|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    11|            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    12|            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |    12|            1|      0|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     1|            0|     19|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     1|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     2|            0|     20|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     2|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     3|            0|     21|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     3|            1|      1|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     4|            0|     28|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     4|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     5|            0|     32|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     5|            1|      1|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     6|            0|     39|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     6|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     7|            0|     25|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     7|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     8|            0|     19|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     8|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     9|            0|     35|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |     9|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    10|            0|     33|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    10|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    11|            0|     30|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    11|            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    12|            0|     10|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |    12|            1|      0|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     1|            0|    227|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     1|            1|      3|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     2|            0|    194|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     2|            1|      0|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     3|            0|    203|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     3|            1|      3|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     4|            0|    171|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     4|            1|      0|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     5|            0|    239|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     5|            1|      3|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     6|            0|    346|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     6|            1|      4|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     7|            0|    390|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     7|            1|      2|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     8|            0|    337|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     8|            1|      1|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     9|            0|    267|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |     9|            1|      4|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    10|            0|    360|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    10|            1|      1|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    11|            0|    186|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    11|            1|      1|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    12|            0|    146|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |    12|            1|      3|  3091|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     1|            0|   2457| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     1|            1|     63| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     2|            0|   2018| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     2|            1|     65| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     3|            0|   2346| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     3|            1|     70| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     4|            0|   1742| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     4|            1|     76| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     5|            0|   1314| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     5|            1|     56| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     6|            0|   1274| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     6|            1|     60| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     7|            0|   1455| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     7|            1|     69| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     8|            0|   1903| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     8|            1|     80| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     9|            0|   2510| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |     9|            1|     77| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    10|            0|   2768| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    10|            1|    120| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    11|            0|   2798| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    11|            1|     93| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    12|            0|   2996| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |    12|            1|    119| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     1|            0|     51|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     1|            1|      3|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     2|            0|    351|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     2|            1|     15|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     3|            0|    450|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     3|            1|     21|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     4|            0|    884|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     4|            1|     52|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     5|            0|    596|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     5|            1|     28|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     6|            0|    431|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     6|            1|     26|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     7|            0|    857|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     7|            1|     35|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     8|            0|    522|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     8|            1|     17|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     9|            0|    470|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |     9|            1|     18|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    10|            0|    310|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    10|            1|     10|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    11|            0|    159|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    11|            1|      5|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    12|            0|     83|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |    12|            1|      2|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     1|            0|    219|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     1|            1|     26|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     2|            0|    245|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     2|            1|     53|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     3|            0|    199|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     3|            1|     31|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     4|            0|    247|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     4|            1|     44|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     5|            0|    220|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     5|            1|     25|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     6|            0|    195|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     6|            1|     18|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     7|            0|    141|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     7|            1|     29|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     8|            0|    153|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     8|            1|     24|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     9|            0|    193|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |     9|            1|     27|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    10|            0|    197|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    10|            1|     31|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    11|            0|    272|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    11|            1|     42|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    12|            0|    204|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |    12|            1|     33|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     1|            0|     55|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     1|            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     2|            0|    112|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     2|            1|      2|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     3|            0|     97|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     3|            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     4|            0|    109|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     4|            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     5|            0|    111|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     5|            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     6|            0|     89|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     6|            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     7|            0|     71|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     7|            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     8|            0|     40|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     8|            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     9|            0|     28|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |     9|            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    10|            0|     35|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    10|            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    11|            0|     49|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    11|            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    12|            0|     34|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |    12|            1|      0|   837|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     1|            0|     19|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     1|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     2|            0|     20|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     2|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     3|            0|     20|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     3|            1|      2|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     4|            0|     16|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     4|            1|      2|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     5|            0|      8|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     5|            1|      0|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     6|            0|     16|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     6|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     7|            0|     22|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     7|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     8|            0|     24|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     8|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     9|            0|     21|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |     9|            1|      2|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    10|            0|     26|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    10|            1|      0|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    11|            0|     23|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    11|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    12|            0|     18|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |    12|            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     1|            0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     1|            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     2|            0|     23|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     2|            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     3|            0|     23|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     3|            1|      4|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     4|            0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     4|            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     5|            0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     5|            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     6|            0|      9|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     6|            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     7|            0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     7|            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     8|            0|     25|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     8|            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     9|            0|     22|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |     9|            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    10|            0|     22|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    10|            1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    11|            0|     17|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    11|            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    12|            0|     26|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |    12|            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     1|            0|     39|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     1|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     2|            0|     25|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     2|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     3|            0|     22|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     3|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     4|            0|     20|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     4|            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     5|            0|     25|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     5|            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     6|            0|     20|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     6|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     7|            0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     7|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     8|            0|     18|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     8|            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     9|            0|     22|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |     9|            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    10|            0|     26|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    10|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    11|            0|     33|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    11|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    12|            0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |    12|            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     1|            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     1|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     2|            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     2|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     3|            0|     17|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     3|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     4|            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     4|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     5|            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     5|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     6|            0|     21|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     6|            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     7|            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     7|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     8|            0|     23|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     8|            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     9|            0|     14|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |     9|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    10|            0|     21|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    10|            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    11|            0|     23|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    11|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    12|            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |    12|            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     1|            0|     13|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     1|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     2|            0|     26|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     2|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     3|            0|     21|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     3|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     4|            0|     11|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     4|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     5|            0|     24|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     5|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     6|            0|      7|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     6|            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     7|            0|     19|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     7|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     8|            0|     21|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     8|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     9|            0|     31|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |     9|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    10|            0|     21|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    10|            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    11|            0|     17|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    11|            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    12|            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |    12|            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     1|            0|     22|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     1|            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     2|            0|     26|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     2|            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     3|            0|     22|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     3|            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     4|            0|     11|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     4|            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     5|            0|     15|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     5|            1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     6|            0|     20|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     6|            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     7|            0|     24|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     7|            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     8|            0|     11|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     8|            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     9|            0|     22|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |     9|            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    10|            0|     21|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    10|            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    11|            0|     27|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    11|            1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    12|            0|     32|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |    12|            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     1|            0|     42|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     1|            1|      1|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     2|            0|     29|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     2|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     3|            0|     18|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     3|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     4|            0|     14|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     4|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     5|            0|     13|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     5|            1|      1|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     6|            0|     21|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     6|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     7|            0|     26|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     7|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     8|            0|     14|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     8|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     9|            0|     25|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |     9|            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    10|            0|     27|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    10|            1|      4|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    11|            0|     24|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    11|            1|      4|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    12|            0|     43|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |    12|            1|      2|   308|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     1|            0|     55|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     1|            1|      9|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     2|            0|     55|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     2|            1|      3|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     3|            0|     48|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     3|            1|      8|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     4|            0|     46|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     4|            1|      4|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     5|            0|     42|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     5|            1|      5|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     6|            0|     40|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     6|            1|      4|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     7|            0|     44|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     7|            1|      3|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     8|            0|     36|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     8|            1|      5|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     9|            0|     31|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |     9|            1|      2|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    10|            0|     53|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    10|            1|      5|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    11|            0|     48|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    11|            1|      3|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    12|            0|     50|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |    12|            1|      3|   602|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     1|            0|   1169| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     1|            1|     13| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     2|            0|    993| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     2|            1|     11| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     3|            0|   1171| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     3|            1|     14| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     4|            0|   1116| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     4|            1|     13| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     5|            0|   1135| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     5|            1|     15| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     6|            0|   1205| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     6|            1|     16| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     7|            0|   1456| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     7|            1|     17| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     8|            0|   1587| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     8|            1|     28| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     9|            0|   1573| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |     9|            1|     17| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    10|            0|   1784| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    10|            1|     17| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    11|            0|   1681| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    11|            1|     24| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    12|            0|   1805| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |    12|            1|     19| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     1|            0|     31|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     1|            1|      0|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     2|            0|     36|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     2|            1|      2|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     3|            0|     35|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     3|            1|      0|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     4|            0|     52|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     4|            1|      1|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     5|            0|     39|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     5|            1|      0|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     6|            0|     47|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     6|            1|      1|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     7|            0|     88|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     7|            1|      5|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     8|            0|     85|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     8|            1|      1|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     9|            0|     66|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |     9|            1|      2|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    10|            0|     72|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    10|            1|      4|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    11|            0|     75|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    11|            1|      3|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    12|            0|     42|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |    12|            1|      0|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     1|            0|      3|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     1|            1|      0|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     2|            0|      7|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     2|            1|      3|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     3|            0|     11|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     3|            1|      1|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     4|            0|     17|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     4|            1|      4|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     5|            0|     23|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     5|            1|     13|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     6|            0|     42|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     6|            1|      6|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     7|            0|     39|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     7|            1|      8|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     8|            0|     28|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     8|            1|      2|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     9|            0|     35|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |     9|            1|     10|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    10|            0|     13|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    10|            1|      3|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    11|            0|      5|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    11|            1|      2|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    12|            0|      5|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |    12|            1|      0|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     1|            0|     89|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     1|            1|     18|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     2|            0|     84|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     2|            1|      8|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     3|            0|     80|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     3|            1|      7|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     4|            0|     75|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     4|            1|      7|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     5|            0|     77|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     5|            1|     10|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     6|            0|    100|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     6|            1|     14|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     7|            0|    110|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     7|            1|     15|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     8|            0|    152|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     8|            1|     16|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     9|            0|    162|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |     9|            1|     22|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    10|            0|    142|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    10|            1|     23|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    11|            0|    122|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    11|            1|     22|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    12|            0|    137|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |    12|            1|     10|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     1|            0|     55|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     1|            1|      7|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     2|            0|     37|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     2|            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     3|            0|     31|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     3|            1|      4|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     4|            0|     24|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     4|            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     5|            0|     27|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     5|            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     6|            0|     28|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     6|            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     7|            0|     17|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     7|            1|      1|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     8|            0|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     8|            1|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     9|            0|     10|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |     9|            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    10|            0|     26|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    10|            1|      2|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    11|            0|     45|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    11|            1|      6|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    12|            0|     57|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |    12|            1|      5|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     1|            0|    149|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     1|            1|     11|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     2|            0|    170|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     2|            1|      7|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     3|            0|    166|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     3|            1|      6|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     4|            0|    171|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     4|            1|     13|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     5|            0|    181|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     5|            1|      9|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     6|            0|    151|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     6|            1|     12|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     7|            0|    196|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     7|            1|     11|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     8|            0|    225|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     8|            1|     12|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     9|            0|    206|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |     9|            1|      9|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    10|            0|    240|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    10|            1|     11|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    11|            0|    205|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    11|            1|     11|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    12|            0|    203|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |    12|            1|      9|  2384|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     1|            0|     28|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     1|            1|      8|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     2|            0|     22|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     2|            1|      6|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     3|            0|     26|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     3|            1|      3|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     4|            0|     22|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     4|            1|      0|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     5|            0|     18|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     5|            1|      3|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     6|            0|     29|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     6|            1|      7|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     7|            0|     27|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     7|            1|      9|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     8|            0|     37|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     8|            1|      8|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     9|            0|     21|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |     9|            1|      6|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    10|            0|     30|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    10|            1|      7|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    11|            0|     32|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    11|            1|      9|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    12|            0|     40|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |    12|            1|     11|   409|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     1|            0|   1280| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     1|            1|     47| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     2|            0|    987| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     2|            1|     43| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     3|            0|   1092| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     3|            1|     47| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     4|            0|    976| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     4|            1|     31| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     5|            0|    953| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     5|            1|     40| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     6|            0|   1077| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     6|            1|     40| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     7|            0|   1105| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     7|            1|     37| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     8|            0|   1153| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     8|            1|     48| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     9|            0|   1254| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |     9|            1|     36| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    10|            0|   1000| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    10|            1|     26| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    11|            0|   1091| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    11|            1|     35| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    12|            0|   1191| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |    12|            1|     48| 13637|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     1|            0|     29|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     1|            1|      2|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     2|            0|     14|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     2|            1|      0|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     3|            0|     26|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     3|            1|      2|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     4|            0|     38|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     4|            1|      5|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     5|            0|     27|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     5|            1|      4|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     6|            0|     33|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     6|            1|      3|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     7|            0|     35|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     7|            1|      3|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     8|            0|     14|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     8|            1|      2|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     9|            0|     16|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |     9|            1|      2|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    10|            0|     26|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    10|            1|      3|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    11|            0|     38|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    11|            1|      3|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    12|            0|     24|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |    12|            1|      1|   350|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     1|            0|     25|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     1|            1|      3|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     2|            0|     33|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     2|            1|      1|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     3|            0|     20|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     3|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     4|            0|     20|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     4|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     5|            0|     20|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     5|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     6|            0|     22|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     6|            1|      2|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     7|            0|     12|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     7|            1|      2|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     8|            0|     14|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     8|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     9|            0|     20|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |     9|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    10|            0|     23|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    10|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    11|            0|      3|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    11|            1|      0|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    12|            0|     46|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |    12|            1|      1|   267|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     1|            0|      8|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     1|            1|      1|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     2|            0|     13|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     2|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     3|            0|     27|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     3|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     4|            0|     18|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     4|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     5|            0|     25|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     5|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     6|            0|     14|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     6|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     7|            0|     16|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     7|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     8|            0|     26|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     8|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     9|            0|     19|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |     9|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    10|            0|     23|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    10|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    11|            0|     18|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    11|            1|      0|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    12|            0|      7|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |    12|            1|      0|   215|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     1|            0|     84|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     1|            1|      9|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     2|            0|     64|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     2|            1|      3|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     3|            0|     41|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     3|            1|      1|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     4|            0|     16|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     4|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     5|            0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     5|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     6|            0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     6|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     7|            0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     7|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     8|            0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     8|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     9|            0|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |     9|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    10|            0|      4|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    10|            1|      0|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    11|            0|     66|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    11|            1|      3|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    12|            0|     80|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |    12|            1|      4|   375|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     1|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     1|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     2|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     2|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     3|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     3|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     4|            0|      1|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     4|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     5|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     5|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     6|            0|    139|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     6|            1|      7|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     7|            0|    231|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     7|            1|     14|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     8|            0|    240|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     8|            1|     10|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     9|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |     9|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    10|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    10|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    11|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    11|            1|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    12|            0|      0|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |    12|            1|      0|   642|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     1|            0|     18|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     1|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     2|            0|     19|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     2|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     3|            0|     21|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     3|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     4|            0|     23|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     4|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     5|            0|     27|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     5|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     6|            0|     36|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     6|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     7|            0|     25|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     7|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     8|            0|     18|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     8|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     9|            0|     31|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |     9|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    10|            0|     32|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    10|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    11|            0|     30|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    11|            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    12|            0|     10|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |    12|            1|      0|   290|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     1|            0|   2454| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     1|            1|     38| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     2|            0|   2020| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     2|            1|     41| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     3|            0|   2362| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     3|            1|     29| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     4|            0|   1754| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     4|            1|     35| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     5|            0|   1328| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     5|            1|     11| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     6|            0|   1295| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     6|            1|     18| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     7|            0|   1492| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     7|            1|     19| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     8|            0|   1938| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     8|            1|     31| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     9|            0|   2526| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |     9|            1|     37| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    10|            0|   2809| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    10|            1|     56| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    11|            0|   2813| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    11|            1|     49| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    12|            0|   3008| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |    12|            1|     71| 26234|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     1|            0|     50|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     1|            1|      0|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     2|            0|    352|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     2|            1|      3|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     3|            0|    442|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     3|            1|      1|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     4|            0|    903|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     4|            1|      5|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     5|            0|    595|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     5|            1|      3|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     6|            0|    437|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     6|            1|      4|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     7|            0|    843|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     7|            1|      3|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     8|            0|    513|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     8|            1|      1|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     9|            0|    332|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |     9|            1|      1|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    10|            0|    262|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    10|            1|      0|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    11|            0|    137|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    11|            1|      0|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    12|            0|     70|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |    12|            1|      0|  4957|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     1|            0|    205|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     1|            1|      6|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     2|            0|    250|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     2|            1|     12|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     3|            0|    202|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     3|            1|      8|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     4|            0|    247|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     4|            1|      8|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     5|            0|    179|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     5|            1|     10|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     6|            0|    169|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     6|            1|      5|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     7|            0|    126|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     7|            1|      8|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     8|            0|    126|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     8|            1|      6|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     9|            0|    179|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |     9|            1|      7|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    10|            0|    184|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    10|            1|     10|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    11|            0|    264|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    11|            1|      8|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    12|            0|    198|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |    12|            1|      7|  2424|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     1|            0|      7|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     1|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     2|            0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     2|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     3|            0|     56|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     3|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     4|            0|     48|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     4|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     5|            0|     26|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     5|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     6|            0|     28|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     6|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     7|            0|     28|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     7|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     8|            0|      4|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     8|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     9|            0|      4|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |     9|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    10|            0|      5|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    10|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    11|            0|     10|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    11|            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    12|            0|      5|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |    12|            1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     1|            0|     19|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     1|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     2|            0|     19|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     2|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     3|            0|     21|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     3|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     4|            0|     18|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     4|            1|      0|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     5|            0|      8|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     5|            1|      0|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     6|            0|     16|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     6|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     7|            0|     22|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     7|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     8|            0|     24|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     8|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     9|            0|     22|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |     9|            1|      1|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    10|            0|     26|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    10|            1|      0|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    11|            0|     23|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    11|            1|      0|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    12|            0|     19|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |    12|            1|      0|   244|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     1|            0|     21|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     1|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     2|            0|     24|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     2|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     3|            0|     24|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     3|            1|      3|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     4|            0|     20|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     4|            1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     5|            0|     21|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     5|            1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     6|            0|      9|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     6|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     7|            0|     21|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     7|            1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     8|            0|     25|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     8|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     9|            0|     23|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |     9|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    10|            0|     23|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    10|            1|      1|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    11|            0|     17|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    11|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    12|            0|     27|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |    12|            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     1|            0|     39|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     1|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     2|            0|     25|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     2|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     3|            0|     22|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     3|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     4|            0|     21|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     4|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     5|            0|     25|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     5|            1|      1|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     6|            0|     20|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     6|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     7|            0|     24|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     7|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     8|            0|     19|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     8|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     9|            0|     23|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |     9|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    10|            0|     26|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    10|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    11|            0|     33|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    11|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    12|            0|     24|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |    12|            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     1|            0|     19|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     1|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     2|            0|     19|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     2|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     3|            0|     17|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     3|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     4|            0|     19|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     4|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     5|            0|     20|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     5|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     6|            0|     22|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     6|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     7|            0|     20|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     7|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     8|            0|     23|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     8|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     9|            0|     14|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |     9|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    10|            0|     21|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    10|            1|      1|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    11|            0|     23|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    11|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    12|            0|     19|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |    12|            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     1|            0|     13|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     1|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     2|            0|     26|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     2|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     3|            0|     21|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     3|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     4|            0|     11|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     4|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     5|            0|     24|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     5|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     6|            0|      7|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     6|            1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     7|            0|     19|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     7|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     8|            0|     21|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     8|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     9|            0|     31|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |     9|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    10|            0|     21|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    10|            1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    11|            0|     18|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    11|            1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    12|            0|     18|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |    12|            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     1|            0|     22|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     1|            1|      1|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     2|            0|     27|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     2|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     3|            0|     22|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     3|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     4|            0|     11|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     4|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     5|            0|     16|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     5|            1|      1|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     6|            0|     20|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     6|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     7|            0|     24|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     7|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     8|            0|     12|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     8|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     9|            0|     22|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |     9|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    10|            0|     21|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    10|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    11|            0|     29|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    11|            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    12|            0|     32|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |    12|            1|      1|   261|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     1|            0|     42|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     1|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     2|            0|     29|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     2|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     3|            0|     18|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     3|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     4|            0|     14|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     4|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     5|            0|     14|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     5|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     6|            0|     21|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     6|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     7|            0|     26|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     7|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     8|            0|     14|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     8|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     9|            0|     25|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |     9|            1|      0|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    10|            0|     30|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    10|            1|      1|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    11|            0|     26|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    11|            1|      2|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    12|            0|     45|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |    12|            1|      0|   307|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     1|            0|     59|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     1|            1|      4|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     2|            0|     58|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     2|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     3|            0|     51|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     3|            1|      3|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     4|            0|     49|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     4|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     5|            0|     44|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     5|            1|      1|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     6|            0|     44|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     6|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     7|            0|     43|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     7|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     8|            0|     40|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     8|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     9|            0|     32|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |     9|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    10|            0|     56|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    10|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    11|            0|     48|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    11|            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    12|            0|     51|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |    12|            1|      1|   584|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     1|            0|   1152| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     1|            1|     13| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     2|            0|    985| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     2|            1|     10| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     3|            0|   1165| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     3|            1|     11| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     4|            0|   1103| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     4|            1|     13| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     5|            0|   1119| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     5|            1|     15| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     6|            0|   1189| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     6|            1|     16| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     7|            0|   1443| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     7|            1|     15| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     8|            0|   1571| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     8|            1|     27| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     9|            0|   1554| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |     9|            1|     15| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    10|            0|   1760| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    10|            1|     16| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    11|            0|   1665| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    11|            1|     24| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    12|            0|   1795| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |    12|            1|     17| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     1|            0|     31|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     1|            1|      0|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     2|            0|     37|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     2|            1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     3|            0|     35|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     3|            1|      0|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     4|            0|     52|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     4|            1|      0|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     5|            0|     39|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     5|            1|      0|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     6|            0|     47|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     6|            1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     7|            0|     89|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     7|            1|      2|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     8|            0|     84|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     8|            1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     9|            0|     68|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |     9|            1|      0|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    10|            0|     75|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    10|            1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    11|            0|     78|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    11|            1|      0|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    12|            0|     42|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |    12|            1|      0|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     1|            0|      3|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     1|            1|      0|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     2|            0|      6|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     2|            1|      3|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     3|            0|     11|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     3|            1|      0|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     4|            0|     19|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     4|            1|      2|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     5|            0|     31|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     5|            1|      5|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     6|            0|     46|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     6|            1|      1|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     7|            0|     43|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     7|            1|      4|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     8|            0|     29|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     8|            1|      1|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     9|            0|     39|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |     9|            1|      5|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    10|            0|     15|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    10|            1|      1|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    11|            0|      7|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    11|            1|      0|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    12|            0|      5|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |    12|            1|      0|   276|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     1|            0|     97|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     1|            1|      7|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     2|            0|     87|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     2|            1|      3|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     3|            0|     82|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     3|            1|      3|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     4|            0|     78|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     4|            1|      2|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     5|            0|     84|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     5|            1|      0|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     6|            0|    106|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     6|            1|      8|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     7|            0|    119|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     7|            1|      1|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     8|            0|    164|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     8|            1|      2|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     9|            0|    177|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |     9|            1|      3|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    10|            0|    154|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    10|            1|      7|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    11|            0|    135|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    11|            1|      7|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    12|            0|    144|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |    12|            1|      3|  1473|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     1|            0|     54|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     1|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     2|            0|     32|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     2|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     3|            0|     31|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     3|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     4|            0|     23|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     4|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     5|            0|     27|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     5|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     6|            0|     26|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     6|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     7|            0|     14|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     7|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     8|            0|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     8|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     9|            0|     11|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |     9|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    10|            0|     24|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    10|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    11|            0|     49|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    11|            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    12|            0|     50|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |    12|            1|      0|   341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     1|            0|    157|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     1|            1|      3|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     2|            0|    174|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     2|            1|      3|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     3|            0|    171|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     3|            1|      1|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     4|            0|    180|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     4|            1|      3|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     5|            0|    186|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     5|            1|      3|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     6|            0|    159|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     6|            1|      4|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     7|            0|    201|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     7|            1|      5|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     8|            0|    232|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     8|            1|      5|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     9|            0|    215|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |     9|            1|      0|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    10|            0|    244|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    10|            1|      6|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    11|            0|    208|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    11|            1|      5|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    12|            0|    207|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |    12|            1|      4|  2376|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     1|            0|     30|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     1|            1|      6|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     2|            0|     24|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     2|            1|      4|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     3|            0|     25|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     3|            1|      3|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     4|            0|     21|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     4|            1|      0|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     5|            0|     18|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     5|            1|      3|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     6|            0|     28|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     6|            1|      5|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     7|            0|     28|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     7|            1|      6|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     8|            0|     35|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     8|            1|      7|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     9|            0|     22|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |     9|            1|      4|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    10|            0|     28|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    10|            1|      6|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    11|            0|     34|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    11|            1|      7|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    12|            0|     40|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |    12|            1|      6|   390|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     1|            0|   1284| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     1|            1|     14| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     2|            0|    988| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     2|            1|     11| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     3|            0|   1102| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     3|            1|     14| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     4|            0|    983| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     4|            1|      9| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     5|            0|    975| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     5|            1|      5| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     6|            0|   1095| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     6|            1|      9| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     7|            0|   1110| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     7|            1|     12| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     8|            0|   1161| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     8|            1|     19| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     9|            0|   1251| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |     9|            1|     15| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    10|            0|   1001| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    10|            1|      4| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    11|            0|   1088| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    11|            1|      8| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    12|            0|   1206| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |    12|            1|     12| 13376|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     1|            0|     31|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     1|            1|      3|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     2|            0|     15|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     2|            1|      1|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     3|            0|     29|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     3|            1|      3|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     4|            0|     41|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     4|            1|      3|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     5|            0|     34|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     5|            1|      0|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     6|            0|     37|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     6|            1|      1|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     7|            0|     34|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     7|            1|      6|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     8|            0|     15|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     8|            1|      3|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     9|            0|     18|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |     9|            1|      1|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    10|            0|     26|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    10|            1|      3|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    11|            0|     41|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    11|            1|      3|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    12|            0|     22|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |    12|            1|      3|   373|
|6-24 months                 |CMIN           |BANGLADESH   |     1|            0|     23|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     1|            1|      4|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     2|            0|     26|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     2|            1|      5|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     3|            0|     19|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     3|            1|      1|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     4|            0|     16|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     4|            1|      2|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     5|            0|     20|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     5|            1|      0|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     6|            0|     21|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     6|            1|      2|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     7|            0|     13|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     7|            1|      0|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     8|            0|     14|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     8|            1|      0|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     9|            0|     16|   252|
|6-24 months                 |CMIN           |BANGLADESH   |     9|            1|      3|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    10|            0|     17|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    10|            1|      2|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    11|            0|      2|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    11|            1|      0|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    12|            0|     36|   252|
|6-24 months                 |CMIN           |BANGLADESH   |    12|            1|     10|   252|
|6-24 months                 |CONTENT        |PERU         |     1|            0|      9|   215|
|6-24 months                 |CONTENT        |PERU         |     1|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     2|            0|     13|   215|
|6-24 months                 |CONTENT        |PERU         |     2|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     3|            0|     27|   215|
|6-24 months                 |CONTENT        |PERU         |     3|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     4|            0|     18|   215|
|6-24 months                 |CONTENT        |PERU         |     4|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     5|            0|     25|   215|
|6-24 months                 |CONTENT        |PERU         |     5|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     6|            0|     14|   215|
|6-24 months                 |CONTENT        |PERU         |     6|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     7|            0|     16|   215|
|6-24 months                 |CONTENT        |PERU         |     7|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     8|            0|     26|   215|
|6-24 months                 |CONTENT        |PERU         |     8|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |     9|            0|     19|   215|
|6-24 months                 |CONTENT        |PERU         |     9|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |    10|            0|     23|   215|
|6-24 months                 |CONTENT        |PERU         |    10|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |    11|            0|     18|   215|
|6-24 months                 |CONTENT        |PERU         |    11|            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |    12|            0|      7|   215|
|6-24 months                 |CONTENT        |PERU         |    12|            1|      0|   215|
|6-24 months                 |EE             |PAKISTAN     |     1|            0|     79|   374|
|6-24 months                 |EE             |PAKISTAN     |     1|            1|     13|   374|
|6-24 months                 |EE             |PAKISTAN     |     2|            0|     54|   374|
|6-24 months                 |EE             |PAKISTAN     |     2|            1|     12|   374|
|6-24 months                 |EE             |PAKISTAN     |     3|            0|     33|   374|
|6-24 months                 |EE             |PAKISTAN     |     3|            1|      9|   374|
|6-24 months                 |EE             |PAKISTAN     |     4|            0|     14|   374|
|6-24 months                 |EE             |PAKISTAN     |     4|            1|      2|   374|
|6-24 months                 |EE             |PAKISTAN     |     5|            0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     5|            1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     6|            0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     6|            1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     7|            0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     7|            1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     8|            0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     8|            1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     9|            0|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |     9|            1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |    10|            0|      4|   374|
|6-24 months                 |EE             |PAKISTAN     |    10|            1|      0|   374|
|6-24 months                 |EE             |PAKISTAN     |    11|            0|     61|   374|
|6-24 months                 |EE             |PAKISTAN     |    11|            1|      8|   374|
|6-24 months                 |EE             |PAKISTAN     |    12|            0|     78|   374|
|6-24 months                 |EE             |PAKISTAN     |    12|            1|      7|   374|
|6-24 months                 |GMS-Nepal      |NEPAL        |     1|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     1|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     2|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     2|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     3|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     3|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     4|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     4|            1|      1|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     5|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     5|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     6|            0|     92|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     6|            1|     26|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     7|            0|    185|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     7|            1|     40|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     8|            0|    201|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     8|            1|     45|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     9|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |     9|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    10|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    10|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    11|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    11|            1|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    12|            0|      0|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |    12|            1|      0|   590|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     1|            0|     15|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     1|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     2|            0|     18|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     2|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     3|            0|     18|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     3|            1|      1|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     4|            0|     23|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     4|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     5|            0|     30|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     5|            1|      1|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     6|            0|     37|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     6|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     7|            0|     24|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     7|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     8|            0|     19|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     8|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     9|            0|     32|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |     9|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    10|            0|     24|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    10|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    11|            0|     26|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    11|            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    12|            0|      9|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |    12|            1|      0|   277|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     1|            0|    228|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     1|            1|     11|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     2|            0|    197|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     2|            1|     11|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     3|            0|    205|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     3|            1|      9|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     4|            0|    173|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     4|            1|     10|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     5|            0|    245|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     5|            1|     12|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     6|            0|    350|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     6|            1|     17|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     7|            0|    394|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     7|            1|     17|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     8|            0|    339|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     8|            1|     23|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     9|            0|    275|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |     9|            1|     19|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    10|            0|    358|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    10|            1|     14|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    11|            0|    187|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    11|            1|     10|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    12|            0|    150|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |    12|            1|     12|  3266|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     1|            0|   1368| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     1|            1|     30| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     2|            0|   1192| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     2|            1|     24| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     3|            0|   1424| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     3|            1|     43| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     4|            0|   1187| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     4|            1|     46| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     5|            0|   1154| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     5|            1|     47| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     6|            0|   1162| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     6|            1|     49| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     7|            0|   1237| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     7|            1|     53| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     8|            0|   1445| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     8|            1|     54| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     9|            0|   1554| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |     9|            1|     42| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    10|            0|   1649| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    10|            1|     68| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    11|            0|   1666| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    11|            1|     46| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    12|            0|   1707| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |    12|            1|     51| 17298|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     1|            0|     51|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     1|            1|      3|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     2|            0|    355|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     2|            1|     13|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     3|            0|    451|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     3|            1|     23|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     4|            0|    888|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     4|            1|     49|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     5|            0|    598|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     5|            1|     26|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     6|            0|    437|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     6|            1|     24|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     7|            0|    864|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     7|            1|     37|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     8|            0|    523|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     8|            1|     21|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     9|            0|    473|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |     9|            1|     19|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    10|            0|    311|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    10|            1|     14|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    11|            0|    158|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    11|            1|      7|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    12|            0|     82|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |    12|            1|      3|  5430|
|6-24 months                 |Keneba         |GAMBIA       |     1|            0|    210|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     1|            1|     22|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     2|            0|    245|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     2|            1|     41|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     3|            0|    193|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     3|            1|     25|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     4|            0|    233|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     4|            1|     41|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     5|            0|    208|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     5|            1|     21|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     6|            0|    192|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     6|            1|     14|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     7|            0|    142|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     7|            1|     21|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     8|            0|    152|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     8|            1|     19|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     9|            0|    192|  2738|
|6-24 months                 |Keneba         |GAMBIA       |     9|            1|     21|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    10|            0|    191|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    10|            1|     28|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    11|            0|    266|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    11|            1|     39|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    12|            0|    193|  2738|
|6-24 months                 |Keneba         |GAMBIA       |    12|            1|     29|  2738|
|6-24 months                 |LCNI-5         |MALAWI       |     1|            0|     55|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     1|            1|      0|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     2|            0|    112|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     2|            1|      2|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     3|            0|     93|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     3|            1|      1|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     4|            0|    106|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     4|            1|      1|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     5|            0|    109|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     5|            1|      0|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     6|            0|     89|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     6|            1|      1|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     7|            0|     71|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     7|            1|      0|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     8|            0|     40|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     8|            1|      1|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     9|            0|     28|   826|
|6-24 months                 |LCNI-5         |MALAWI       |     9|            1|      1|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    10|            0|     35|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    10|            1|      0|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    11|            0|     47|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    11|            1|      0|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    12|            0|     33|   826|
|6-24 months                 |LCNI-5         |MALAWI       |    12|            1|      1|   826|
|6-24 months                 |MAL-ED         |INDIA        |     1|            0|     19|   235|
|6-24 months                 |MAL-ED         |INDIA        |     1|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |     2|            0|     18|   235|
|6-24 months                 |MAL-ED         |INDIA        |     2|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |     3|            0|     20|   235|
|6-24 months                 |MAL-ED         |INDIA        |     3|            1|      1|   235|
|6-24 months                 |MAL-ED         |INDIA        |     4|            0|     13|   235|
|6-24 months                 |MAL-ED         |INDIA        |     4|            1|      2|   235|
|6-24 months                 |MAL-ED         |INDIA        |     5|            0|      8|   235|
|6-24 months                 |MAL-ED         |INDIA        |     5|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |     6|            0|     18|   235|
|6-24 months                 |MAL-ED         |INDIA        |     6|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |     7|            0|     22|   235|
|6-24 months                 |MAL-ED         |INDIA        |     7|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |     8|            0|     23|   235|
|6-24 months                 |MAL-ED         |INDIA        |     8|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |     9|            0|     19|   235|
|6-24 months                 |MAL-ED         |INDIA        |     9|            1|      1|   235|
|6-24 months                 |MAL-ED         |INDIA        |    10|            0|     27|   235|
|6-24 months                 |MAL-ED         |INDIA        |    10|            1|      0|   235|
|6-24 months                 |MAL-ED         |INDIA        |    11|            0|     24|   235|
|6-24 months                 |MAL-ED         |INDIA        |    11|            1|      1|   235|
|6-24 months                 |MAL-ED         |INDIA        |    12|            0|     18|   235|
|6-24 months                 |MAL-ED         |INDIA        |    12|            1|      1|   235|
|6-24 months                 |MAL-ED         |BANGLADESH   |     1|            0|     18|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     1|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     2|            0|     19|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     2|            1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     3|            0|     24|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     3|            1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     4|            0|     22|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     4|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     5|            0|     21|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     5|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     6|            0|      8|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     6|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     7|            0|     20|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     7|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     8|            0|     22|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     8|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     9|            0|     20|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |     9|            1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    10|            0|     20|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    10|            1|      1|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    11|            0|     15|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    11|            1|      0|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    12|            0|     26|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |    12|            1|      1|   240|
|6-24 months                 |MAL-ED         |PERU         |     1|            0|     36|   270|
|6-24 months                 |MAL-ED         |PERU         |     1|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     2|            0|     21|   270|
|6-24 months                 |MAL-ED         |PERU         |     2|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     3|            0|     21|   270|
|6-24 months                 |MAL-ED         |PERU         |     3|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     4|            0|     19|   270|
|6-24 months                 |MAL-ED         |PERU         |     4|            1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |     5|            0|     23|   270|
|6-24 months                 |MAL-ED         |PERU         |     5|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     6|            0|     18|   270|
|6-24 months                 |MAL-ED         |PERU         |     6|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     7|            0|     22|   270|
|6-24 months                 |MAL-ED         |PERU         |     7|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |     8|            0|     15|   270|
|6-24 months                 |MAL-ED         |PERU         |     8|            1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |     9|            0|     22|   270|
|6-24 months                 |MAL-ED         |PERU         |     9|            1|      1|   270|
|6-24 months                 |MAL-ED         |PERU         |    10|            0|     18|   270|
|6-24 months                 |MAL-ED         |PERU         |    10|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |    11|            0|     32|   270|
|6-24 months                 |MAL-ED         |PERU         |    11|            1|      0|   270|
|6-24 months                 |MAL-ED         |PERU         |    12|            0|     20|   270|
|6-24 months                 |MAL-ED         |PERU         |    12|            1|      0|   270|
|6-24 months                 |MAL-ED         |NEPAL        |     1|            0|     20|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     1|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     2|            0|     19|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     2|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     3|            0|     17|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     3|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     4|            0|     19|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     4|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     5|            0|     19|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     5|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     6|            0|     21|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     6|            1|      1|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     7|            0|     18|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     7|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     8|            0|     23|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     8|            1|      1|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     9|            0|     13|   235|
|6-24 months                 |MAL-ED         |NEPAL        |     9|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    10|            0|     22|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    10|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    11|            0|     23|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    11|            1|      0|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    12|            0|     19|   235|
|6-24 months                 |MAL-ED         |NEPAL        |    12|            1|      0|   235|
|6-24 months                 |MAL-ED         |BRAZIL       |     1|            0|     13|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     1|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     2|            0|     23|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     2|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     3|            0|     17|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     3|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     4|            0|     11|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     4|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     5|            0|     21|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     5|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     6|            0|      7|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     6|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     7|            0|     17|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     7|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     8|            0|     16|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     8|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     9|            0|     29|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |     9|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    10|            0|     20|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    10|            1|      0|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    11|            0|     17|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    11|            1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    12|            0|     15|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |    12|            1|      0|   207|
|6-24 months                 |MAL-ED         |TANZANIA     |     1|            0|     20|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     1|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     2|            0|     26|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     2|            1|      1|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     3|            0|     21|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     3|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     4|            0|     10|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     4|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     5|            0|     15|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     5|            1|      1|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     6|            0|     20|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     6|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     7|            0|     24|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     7|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     8|            0|     11|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     8|            1|      1|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     9|            0|     21|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |     9|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    10|            0|     18|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    10|            1|      0|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    11|            0|     27|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    11|            1|      2|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    12|            0|     27|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |    12|            1|      0|   245|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     1|            0|     35|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     1|            1|      2|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     2|            0|     23|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     2|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     3|            0|     16|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     3|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     4|            0|     13|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     4|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     5|            0|     11|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     5|            1|      1|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     6|            0|     17|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     6|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     7|            0|     24|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     7|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     8|            0|     10|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     8|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     9|            0|     19|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |     9|            1|      0|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    10|            0|     24|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    10|            1|      3|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    11|            0|     23|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    11|            1|      2|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    12|            0|     34|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |    12|            1|      2|   259|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     1|            0|     47|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     1|            1|      5|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     2|            0|     46|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     2|            1|      4|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     3|            0|     46|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     3|            1|      5|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     4|            0|     41|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     4|            1|      4|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     5|            0|     38|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     5|            1|      4|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     6|            0|     36|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     6|            1|      4|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     7|            0|     42|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     7|            1|      3|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     8|            0|     32|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     8|            1|      5|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     9|            0|     27|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |     9|            1|      2|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    10|            0|     47|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    10|            1|      6|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    11|            0|     45|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    11|            1|      3|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    12|            0|     47|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |    12|            1|      3|   542|
|6-24 months                 |PROBIT         |BELARUS      |     1|            0|   1146| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     1|            1|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     2|            0|    987| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     2|            1|      1| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     3|            0|   1166| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     3|            1|      3| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     4|            0|   1118| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     4|            1|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     5|            0|   1133| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     5|            1|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     6|            0|   1192| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     6|            1|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     7|            0|   1453| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     7|            1|      2| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     8|            0|   1584| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     8|            1|      1| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     9|            0|   1560| 16598|
|6-24 months                 |PROBIT         |BELARUS      |     9|            1|      2| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    10|            0|   1766| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    10|            1|      1| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    11|            0|   1682| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    11|            1|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    12|            0|   1799| 16598|
|6-24 months                 |PROBIT         |BELARUS      |    12|            1|      2| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |     1|            0|     29|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     1|            1|      0|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     2|            0|     35|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     2|            1|      1|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     3|            0|     34|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     3|            1|      0|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     4|            0|     43|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     4|            1|      1|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     5|            0|     36|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     5|            1|      0|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     6|            0|     44|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     6|            1|      0|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     7|            0|     75|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     7|            1|      3|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     8|            0|     76|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     8|            1|      0|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     9|            0|     60|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |     9|            1|      2|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    10|            0|     66|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    10|            1|      3|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    11|            0|     65|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    11|            1|      3|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    12|            0|     39|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |    12|            1|      0|   615|
|6-24 months                 |ResPak         |PAKISTAN     |     1|            0|      2|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     1|            1|      0|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     2|            0|     10|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     2|            1|      0|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     3|            0|      9|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     3|            1|      1|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     4|            0|     19|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     4|            1|      2|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     5|            0|     18|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     5|            1|      8|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     6|            0|     33|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     6|            1|      6|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     7|            0|     35|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     7|            1|      6|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     8|            0|     24|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     8|            1|      1|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     9|            0|     32|   236|
|6-24 months                 |ResPak         |PAKISTAN     |     9|            1|      5|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    10|            0|     13|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    10|            1|      2|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    11|            0|      5|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    11|            1|      2|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    12|            0|      3|   236|
|6-24 months                 |ResPak         |PAKISTAN     |    12|            1|      0|   236|
|6-24 months                 |SAS-CompFeed   |INDIA        |     1|            0|     83|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     1|            1|     13|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     2|            0|     77|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     2|            1|      5|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     3|            0|     77|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     3|            1|      4|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     4|            0|     73|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     4|            1|      5|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     5|            0|     71|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     5|            1|     10|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     6|            0|    100|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     6|            1|      7|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     7|            0|    103|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     7|            1|     15|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     8|            0|    139|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     8|            1|     15|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     9|            0|    152|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |     9|            1|     20|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    10|            0|    135|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    10|            1|     17|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    11|            0|    116|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    11|            1|     15|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    12|            0|    129|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |    12|            1|      8|  1389|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     1|            0|     54|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     1|            1|      8|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     2|            0|     35|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     2|            1|      4|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     3|            0|     31|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     3|            1|      6|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     4|            0|     24|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     4|            1|      5|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     5|            0|     28|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     5|            1|      3|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     6|            0|     29|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     6|            1|      4|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     7|            0|     17|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     7|            1|      1|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     8|            0|      0|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     8|            1|      0|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     9|            0|      9|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |     9|            1|      3|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    10|            0|     25|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    10|            1|      4|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    11|            0|     42|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    11|            1|      6|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    12|            0|     57|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |    12|            1|      7|   402|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     1|            0|    127|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     1|            1|      8|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     2|            0|    144|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     2|            1|      6|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     3|            0|    143|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     3|            1|      5|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     4|            0|    131|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     4|            1|     10|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     5|            0|    147|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     5|            1|      6|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     6|            0|    131|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     6|            1|      8|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     7|            0|    181|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     7|            1|      6|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     8|            0|    200|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     8|            1|      7|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     9|            0|    175|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |     9|            1|      9|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    10|            0|    205|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    10|            1|      5|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    11|            0|    182|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    11|            1|      8|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    12|            0|    169|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |    12|            1|      5|  2018|
|6-24 months                 |Vellore Crypto |INDIA        |     1|            0|     34|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     1|            1|      2|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     2|            0|     26|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     2|            1|      2|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     3|            0|     28|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     3|            1|      1|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     4|            0|     22|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     4|            1|      0|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     5|            0|     20|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     5|            1|      1|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     6|            0|     33|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     6|            1|      4|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     7|            0|     33|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     7|            1|      3|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     8|            0|     43|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     8|            1|      2|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     9|            0|     25|   410|
|6-24 months                 |Vellore Crypto |INDIA        |     9|            1|      2|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    10|            0|     35|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    10|            1|      2|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    11|            0|     39|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    11|            1|      2|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    12|            0|     46|   410|
|6-24 months                 |Vellore Crypto |INDIA        |    12|            1|      5|   410|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     1|            0|   1031| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     1|            1|     34| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     2|            0|    789| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     2|            1|     35| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     3|            0|    864| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     3|            1|     34| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     4|            0|    783| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     4|            1|     23| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     5|            0|    735| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     5|            1|     35| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     6|            0|    849| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     6|            1|     32| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     7|            0|    872| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     7|            1|     26| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     8|            0|    904| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     8|            1|     29| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     9|            0|    997| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |     9|            1|     21| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    10|            0|    771| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    10|            1|     24| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    11|            0|    876| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    11|            1|     27| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    12|            0|    988| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |    12|            1|     36| 10815|


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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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


