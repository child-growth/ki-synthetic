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

|agecat                      |studyid        |country                      |month | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-----|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1     |            0|     25|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1     |            1|      3|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |2     |            0|     20|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |2     |            1|      3|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |3     |            0|     21|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |3     |            1|      3|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |4     |            0|     25|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |4     |            1|      4|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |5     |            0|     36|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |5     |            1|      7|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |6     |            0|     32|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |6     |            1|      3|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |7     |            0|     29|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |7     |            1|      4|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |8     |            0|     33|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |8     |            1|      8|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |9     |            0|     17|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |9     |            1|      6|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |10    |            0|     15|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |10    |            1|      4|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |11    |            0|     35|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |11    |            1|      6|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |12    |            0|     25|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |12    |            1|      4|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1     |            0|     21|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1     |            1|      7|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |2     |            0|     28|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |2     |            1|      6|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |3     |            0|     19|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |3     |            1|      1|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |4     |            0|     18|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |4     |            1|      2|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |5     |            0|     20|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |5     |            1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |6     |            0|     22|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |6     |            1|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |7     |            0|     12|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |7     |            1|      2|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |8     |            0|     14|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |8     |            1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |9     |            0|     17|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |9     |            1|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |10    |            0|     21|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |10    |            1|      2|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |11    |            0|      3|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |11    |            1|      0|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |12    |            0|     36|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |12    |            1|     11|   268|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1     |            0|      8|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1     |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |2     |            0|     13|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |2     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |3     |            0|     27|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |3     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |4     |            0|     18|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |4     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |5     |            0|     25|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |5     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |6     |            0|     14|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |6     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |7     |            0|     16|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |7     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |8     |            0|     26|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |8     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |9     |            0|     19|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |9     |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |10    |            0|     23|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |10    |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |11    |            0|     18|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |11    |            1|      0|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |12    |            0|      7|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |12    |            1|      0|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1     |            0|     72|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1     |            1|     21|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |2     |            0|     59|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |2     |            1|     14|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |3     |            0|     35|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |3     |            1|     11|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |4     |            0|     20|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |4     |            1|      2|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |5     |            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |5     |            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |6     |            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |6     |            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |7     |            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |7     |            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |8     |            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |8     |            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |9     |            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |9     |            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |10    |            0|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |10    |            1|      0|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |11    |            0|     51|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |11    |            1|      8|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |12    |            0|     74|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |12    |            1|     10|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1     |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1     |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |2     |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |2     |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |3     |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |3     |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |4     |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |4     |            1|      1|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |5     |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |5     |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |6     |            0|    118|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |6     |            1|     32|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |7     |            0|    201|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |7     |            1|     48|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |8     |            0|    210|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |8     |            1|     50|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |9     |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |9     |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |10    |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |10    |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |11    |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |11    |            1|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |12    |            0|      0|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |12    |            1|      0|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1     |            0|     19|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |2     |            0|     20|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |2     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |3     |            0|     21|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |3     |            1|      1|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |4     |            0|     28|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |4     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |5     |            0|     32|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |5     |            1|      1|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |6     |            0|     39|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |6     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |7     |            0|     25|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |7     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |8     |            0|     19|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |8     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |9     |            0|     35|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |9     |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |10    |            0|     33|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |10    |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |11    |            0|     30|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |11    |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |12    |            0|     10|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |12    |            1|      0|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1     |            0|    227|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1     |            1|      3|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |2     |            0|    194|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |2     |            1|      0|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |3     |            0|    203|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |3     |            1|      3|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |4     |            0|    171|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |4     |            1|      0|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |5     |            0|    239|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |5     |            1|      3|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |6     |            0|    345|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |6     |            1|      4|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |7     |            0|    390|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |7     |            1|      2|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |8     |            0|    337|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |8     |            1|      1|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |9     |            0|    268|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |9     |            1|      4|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |10    |            0|    360|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |10    |            1|      1|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |11    |            0|    186|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |11    |            1|      1|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |12    |            0|    146|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |12    |            1|      3|  3091|
|0-24 months (no birth wast) |IRC            |INDIA                        |1     |            0|     27|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1     |            1|      8|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |2     |            0|     24|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |2     |            1|      6|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |3     |            0|     25|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |3     |            1|      4|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |4     |            0|     24|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |4     |            1|      0|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |5     |            0|     18|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |5     |            1|      3|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |6     |            0|     27|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |6     |            1|      7|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |7     |            0|     27|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |7     |            1|      9|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |8     |            0|     33|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |8     |            1|      8|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |9     |            0|     24|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |9     |            1|      6|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |10    |            0|     32|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |10    |            1|      7|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |11    |            0|     32|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |11    |            1|      9|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |12    |            0|     39|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |12    |            1|     10|   409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1     |            0|   2455| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1     |            1|     65| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |2     |            0|   2026| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |2     |            1|     65| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |3     |            0|   2346| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |3     |            1|     69| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |4     |            0|   1743| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |4     |            1|     77| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |5     |            0|   1329| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |5     |            1|     55| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |6     |            0|   1275| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |6     |            1|     59| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |7     |            0|   1451| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |7     |            1|     69| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |8     |            0|   1888| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |8     |            1|     81| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |9     |            0|   2495| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |9     |            1|     76| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |10    |            0|   2779| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |10    |            1|    121| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |11    |            0|   2799| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |11    |            1|     92| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |12    |            0|   2995| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |12    |            1|    119| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1     |            0|     54|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1     |            1|      3|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |2     |            0|    348|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |2     |            1|     15|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |3     |            0|    447|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |3     |            1|     21|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |4     |            0|    876|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |4     |            1|     52|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |5     |            0|    595|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |5     |            1|     28|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |6     |            0|    430|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |6     |            1|     26|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |7     |            0|    844|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |7     |            1|     35|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |8     |            0|    512|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |8     |            1|     16|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |9     |            0|    493|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |9     |            1|     19|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |10    |            0|    317|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |10    |            1|     10|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |11    |            0|    164|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |11    |            1|      5|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |12    |            0|     84|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |12    |            1|      2|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1     |            0|    209|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1     |            1|     29|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |2     |            0|    226|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |2     |            1|     49|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |3     |            0|    198|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |3     |            1|     34|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |4     |            0|    261|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |4     |            1|     48|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |5     |            0|    282|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |5     |            1|     30|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |6     |            0|    210|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |6     |            1|     16|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |7     |            0|    151|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |7     |            1|     29|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |8     |            0|    153|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |8     |            1|     22|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |9     |            0|    171|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |9     |            1|     21|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |10    |            0|    186|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |10    |            1|     37|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |11    |            0|    258|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |11    |            1|     41|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |12    |            0|    180|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |12    |            1|     27|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1     |            0|     55|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1     |            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |2     |            0|    112|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |2     |            1|      2|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |3     |            0|     97|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |3     |            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |4     |            0|    109|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |4     |            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |5     |            0|    111|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |5     |            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |6     |            0|     89|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |6     |            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |7     |            0|     71|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |7     |            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |8     |            0|     40|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |8     |            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |9     |            0|     28|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |9     |            1|      1|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |10    |            0|     35|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |10    |            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |11    |            0|     49|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |11    |            1|      0|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |12    |            0|     34|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |12    |            1|      0|   837|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1     |            0|     22|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1     |            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |2     |            0|     23|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |2     |            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |3     |            0|     22|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |3     |            1|      4|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |4     |            0|     23|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |4     |            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |5     |            0|     17|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |5     |            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |6     |            0|     13|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |6     |            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |7     |            0|     17|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |7     |            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |8     |            0|     29|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |8     |            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |9     |            0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |9     |            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |10    |            0|     21|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |10    |            1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |11    |            0|     16|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |11    |            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |12    |            0|     27|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |12    |            1|      1|   263|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1     |            0|     15|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |2     |            0|     25|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |2     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |3     |            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |3     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |4     |            0|     14|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |4     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |5     |            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |5     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |6     |            0|     15|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |6     |            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |7     |            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |7     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |8     |            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |8     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |9     |            0|     25|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |9     |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |10    |            0|     27|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |10    |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |11    |            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |11    |            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |12    |            0|     18|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |12    |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1     |            0|     16|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1     |            1|      0|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |2     |            0|     25|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |2     |            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |3     |            0|     19|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |3     |            1|      2|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |4     |            0|     19|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |4     |            1|      2|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |5     |            0|      7|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |5     |            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |6     |            0|     16|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |6     |            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |7     |            0|     20|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |7     |            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |8     |            0|     24|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |8     |            1|      0|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |9     |            0|     20|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |9     |            1|      3|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |10    |            0|     24|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |10    |            1|      0|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |11    |            0|     23|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |11    |            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |12    |            0|     20|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |12    |            1|      1|   246|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1     |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |2     |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |2     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |3     |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |3     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |4     |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |4     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |5     |            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |5     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |6     |            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |6     |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |7     |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |7     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |8     |            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |8     |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |9     |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |9     |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |10    |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |10    |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |11    |            0|     19|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |11    |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |12    |            0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |12    |            1|      0|   239|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1     |            0|     37|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1     |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |2     |            0|     30|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |2     |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |3     |            0|     23|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |3     |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |4     |            0|     18|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |4     |            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |5     |            0|     25|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |5     |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |6     |            0|     21|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |6     |            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |7     |            0|     24|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |7     |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |8     |            0|     18|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |8     |            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |9     |            0|     21|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |9     |            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |10    |            0|     25|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |10    |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |11    |            0|     37|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |11    |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |12    |            0|     19|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |12    |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1     |            0|     37|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |2     |            0|     39|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |2     |            1|      1|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |3     |            0|     21|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |3     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |4     |            0|     12|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |4     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |5     |            0|     11|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |5     |            1|      1|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |6     |            0|     22|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |6     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |7     |            0|     29|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |7     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |8     |            0|     12|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |8     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |9     |            0|     22|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |9     |            1|      0|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |10    |            0|     26|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |10    |            1|      3|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |11    |            0|     29|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |11    |            1|      5|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |12    |            0|     36|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |12    |            1|      2|   308|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1     |            0|     21|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1     |            1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2     |            0|     27|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2     |            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3     |            0|     24|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3     |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4     |            0|     11|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4     |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |5     |            0|     14|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |5     |            1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |6     |            0|     16|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |6     |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |7     |            0|     28|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |7     |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |8     |            0|     11|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |8     |            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |9     |            0|     19|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |9     |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |10    |            0|     21|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |10    |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |11    |            0|     27|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |11    |            1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |12    |            0|     34|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |12    |            1|      0|   261|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1     |            0|     55|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1     |            1|      9|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |2     |            0|     55|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |2     |            1|      3|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |3     |            0|     48|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |3     |            1|      8|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |4     |            0|     46|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |4     |            1|      4|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |5     |            0|     42|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |5     |            1|      5|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |6     |            0|     40|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |6     |            1|      4|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |7     |            0|     44|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |7     |            1|      3|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |8     |            0|     36|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |8     |            1|      5|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |9     |            0|     31|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |9     |            1|      2|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |10    |            0|     53|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |10    |            1|      5|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |11    |            0|     48|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |11    |            1|      3|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |12    |            0|     50|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |12    |            1|      3|   602|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1     |            0|   1170| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1     |            1|     13| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |2     |            0|    993| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |2     |            1|     11| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |3     |            0|   1171| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |3     |            1|     14| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |4     |            0|   1116| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |4     |            1|     13| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |5     |            0|   1135| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |5     |            1|     15| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |6     |            0|   1204| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |6     |            1|     16| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |7     |            0|   1457| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |7     |            1|     17| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |8     |            0|   1587| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |8     |            1|     28| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |9     |            0|   1572| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |9     |            1|     17| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |10    |            0|   1785| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |10    |            1|     17| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |11    |            0|   1680| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |11    |            1|     24| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |12    |            0|   1805| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |12    |            1|     19| 16879|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1     |            0|      3|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1     |            1|      0|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |2     |            0|      7|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |2     |            1|      3|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |3     |            0|     11|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |3     |            1|      1|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |4     |            0|     17|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |4     |            1|      4|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |5     |            0|     23|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |5     |            1|     13|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |6     |            0|     42|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |6     |            1|      6|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |7     |            0|     39|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |7     |            1|      8|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |8     |            0|     28|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |8     |            1|      2|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |9     |            0|     35|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |9     |            1|     10|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |10    |            0|     13|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |10    |            1|      3|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |11    |            0|      5|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |11    |            1|      2|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |12    |            0|      5|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |12    |            1|      0|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1     |            0|     89|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1     |            1|     18|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |2     |            0|     84|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |2     |            1|      8|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |3     |            0|     81|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |3     |            1|      7|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |4     |            0|     76|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |4     |            1|      8|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |5     |            0|     77|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |5     |            1|     10|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |6     |            0|    100|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |6     |            1|     14|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |7     |            0|    109|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |7     |            1|     15|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |8     |            0|    152|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |8     |            1|     16|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |9     |            0|    162|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |9     |            1|     22|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |10    |            0|    141|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |10    |            1|     22|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |11    |            0|    122|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |11    |            1|     22|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |12    |            0|    137|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |12    |            1|     10|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1     |            0|     55|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1     |            1|      7|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |2     |            0|     37|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |2     |            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |3     |            0|     31|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |3     |            1|      4|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |4     |            0|     24|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |4     |            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |5     |            0|     27|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |5     |            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |6     |            0|     28|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |6     |            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |7     |            0|     17|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |7     |            1|      1|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |8     |            0|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |8     |            1|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |9     |            0|     10|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |9     |            1|      3|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |10    |            0|     26|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |10    |            1|      2|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |11    |            0|     45|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |11    |            1|      6|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |12    |            0|     57|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |12    |            1|      5|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1     |            0|    219|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1     |            1|     12|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2     |            0|    147|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2     |            1|     10|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3     |            0|    175|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3     |            1|      8|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4     |            0|    154|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4     |            1|      7|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5     |            0|    189|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5     |            1|     10|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6     |            0|    164|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6     |            1|      9|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7     |            0|    160|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7     |            1|     12|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8     |            0|    182|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8     |            1|     13|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9     |            0|    217|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9     |            1|     11|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10    |            0|    220|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10    |            1|      8|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11    |            0|    217|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11    |            1|      9|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12    |            0|    219|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12    |            1|     12|  2384|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1     |            0|   1281| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1     |            1|     47| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |2     |            0|    980| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |2     |            1|     43| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |3     |            0|   1066| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |3     |            1|     47| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |4     |            0|    991| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |4     |            1|     29| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |5     |            0|    957| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |5     |            1|     41| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |6     |            0|   1081| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |6     |            1|     41| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |7     |            0|   1111| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |7     |            1|     37| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |8     |            0|   1152| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |8     |            1|     48| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |9     |            0|   1259| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |9     |            1|     36| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |10    |            0|   1003| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |10    |            1|     26| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |11    |            0|   1087| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |11    |            1|     35| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |12    |            0|   1191| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |12    |            1|     48| 13637|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/44e75266-acd3-468d-b25f-4e4d227b3a94/f697a9a3-a45b-4ba2-b065-e46c7b8ca79c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/44e75266-acd3-468d-b25f-4e4d227b3a94/f697a9a3-a45b-4ba2-b065-e46c7b8ca79c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/44e75266-acd3-468d-b25f-4e4d227b3a94/f697a9a3-a45b-4ba2-b065-e46c7b8ca79c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/44e75266-acd3-468d-b25f-4e4d227b3a94/f697a9a3-a45b-4ba2-b065-e46c7b8ca79c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0257937|  0.0192505| 0.0323368|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.0310856|  0.0228944| 0.0392768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.0285714|  0.0213904| 0.0357524|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |4                  |NA             | 0.0423077|  0.0319754| 0.0526400|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |5                  |NA             | 0.0397399|  0.0282721| 0.0512076|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |6                  |NA             | 0.0442279|  0.0309410| 0.0575148|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |7                  |NA             | 0.0453947|  0.0347750| 0.0560145|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |8                  |NA             | 0.0411376|  0.0311867| 0.0510886|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |9                  |NA             | 0.0295605|  0.0224726| 0.0366484|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |10                 |NA             | 0.0417241|  0.0337445| 0.0497038|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |11                 |NA             | 0.0318229|  0.0245690| 0.0390768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |12                 |NA             | 0.0382145|  0.0314003| 0.0450288|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |NA             | 0.1218487|  0.0802835| 0.1634140|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |2                  |NA             | 0.1781818|  0.1329466| 0.2234171|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |3                  |NA             | 0.1465517|  0.1010357| 0.1920677|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |4                  |NA             | 0.1553398|  0.1149449| 0.1957347|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |5                  |NA             | 0.0961538|  0.0634366| 0.1288711|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |6                  |NA             | 0.0707965|  0.0373515| 0.1042414|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |7                  |NA             | 0.1611111|  0.1073953| 0.2148270|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |8                  |NA             | 0.1257143|  0.0765869| 0.1748417|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |9                  |NA             | 0.1093750|  0.0652200| 0.1535300|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |10                 |NA             | 0.1659193|  0.1170851| 0.2147535|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |11                 |NA             | 0.1371237|  0.0981279| 0.1761196|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |12                 |NA             | 0.1304348|  0.0845481| 0.1763214|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |NA             | 0.0109890| -0.0005213| 0.0224994|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |2                  |NA             | 0.0109562|  0.0041463| 0.0177661|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |3                  |NA             | 0.0118143|  0.0038429| 0.0197858|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |4                  |NA             | 0.0115146|  0.0014326| 0.0215966|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |5                  |NA             | 0.0130435|  0.0035236| 0.0225634|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |6                  |NA             | 0.0131148|  0.0057503| 0.0204792|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |7                  |NA             | 0.0115332|  0.0062193| 0.0168472|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |8                  |NA             | 0.0173375|  0.0095079| 0.0251671|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |9                  |NA             | 0.0106986|  0.0036671| 0.0177300|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |10                 |NA             | 0.0094340|  0.0016492| 0.0172187|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |11                 |NA             | 0.0140845|  0.0082830| 0.0198861|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |12                 |NA             | 0.0104167|  0.0045171| 0.0163163|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.1682243|  0.1039350| 0.2325136|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.0869565|  0.0483028| 0.1256102|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |3                  |NA             | 0.0795455|  0.0261268| 0.1329641|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |4                  |NA             | 0.0952381|  0.0443913| 0.1460849|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |5                  |NA             | 0.1149425|  0.0564882| 0.1733969|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |6                  |NA             | 0.1228070|  0.0403659| 0.2052481|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |7                  |NA             | 0.1209677|  0.0863229| 0.1556126|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |8                  |NA             | 0.0952381|  0.0467417| 0.1437345|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |9                  |NA             | 0.1195652|  0.0703630| 0.1687675|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |10                 |NA             | 0.1349693|  0.0960680| 0.1738707|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |11                 |NA             | 0.1527778|  0.1038420| 0.2017135|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |12                 |NA             | 0.0680272|  0.0339271| 0.1021273|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0519481|  0.0233238| 0.0805723|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.0636943|  0.0254868| 0.1019017|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3                  |NA             | 0.0437158|  0.0140862| 0.0733455|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4                  |NA             | 0.0434783|  0.0119711| 0.0749855|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5                  |NA             | 0.0502513|  0.0198920| 0.0806105|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6                  |NA             | 0.0520231|  0.0189242| 0.0851220|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7                  |NA             | 0.0697674|  0.0316874| 0.1078475|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8                  |NA             | 0.0666667|  0.0316484| 0.1016849|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9                  |NA             | 0.0482456|  0.0204252| 0.0760660|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10                 |NA             | 0.0350877|  0.0111990| 0.0589765|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11                 |NA             | 0.0398230|  0.0143237| 0.0653223|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12                 |NA             | 0.0519481|  0.0233238| 0.0805723|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0353916|  0.0254538| 0.0453294|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.0420332|  0.0297363| 0.0543302|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |3                  |NA             | 0.0422282|  0.0304128| 0.0540436|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |4                  |NA             | 0.0284314|  0.0182314| 0.0386314|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |5                  |NA             | 0.0410822|  0.0287677| 0.0533966|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |6                  |NA             | 0.0365419|  0.0255625| 0.0475213|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |7                  |NA             | 0.0322300|  0.0220133| 0.0424466|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |8                  |NA             | 0.0400000|  0.0289124| 0.0510876|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |9                  |NA             | 0.0277992|  0.0188451| 0.0367534|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |10                 |NA             | 0.0252672|  0.0156781| 0.0348564|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |11                 |NA             | 0.0311943|  0.0210219| 0.0413667|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |12                 |NA             | 0.0387409|  0.0279952| 0.0494866|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0357345| 0.0331597| 0.0383093|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.1335425| 0.1210912| 0.1459939|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |NA                 |NA             | 0.0120860| 0.0083142| 0.0158578|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1145140| 0.0913579| 0.1376700|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0507550| 0.0419422| 0.0595679|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0350517| 0.0319649| 0.0381385|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |2                  |1              | 1.2051650| 0.8365768| 1.7361498|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |3                  |1              | 1.1076923| 0.7776758| 1.5777555|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |4                  |1              | 1.6402367| 1.1485684| 2.3423736|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |5                  |1              | 1.5406847| 1.0604710| 2.2383539|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |6                  |1              | 1.7146811| 1.1512416| 2.5538787|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |7                  |1              | 1.7599190| 1.2366060| 2.5046902|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |8                  |1              | 1.5948744| 1.1293147| 2.2523610|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |9                  |1              | 1.1460372| 0.8095903| 1.6223036|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |10                 |1              | 1.6176127| 1.1713218| 2.2339470|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |11                 |1              | 1.2337493| 0.8838897| 1.7220897|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |12                 |1              | 1.4815474| 1.0816787| 2.0292372|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |2                  |1              | 1.4623197| 0.9558071| 2.2372495|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |3                  |1              | 1.2027348| 0.7582590| 1.9077533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |4                  |1              | 1.2748577| 0.8301893| 1.9577007|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |5                  |1              | 0.7891247| 0.4874143| 1.2775943|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |6                  |1              | 0.5810192| 0.3244356| 1.0405249|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |7                  |1              | 1.3222222| 0.8206303| 2.1304009|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |8                  |1              | 1.0317241| 0.6141624| 1.7331811|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |9                  |1              | 0.8976293| 0.5291283| 1.5227655|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |10                 |1              | 1.3616824| 0.8677735| 2.1367083|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |11                 |1              | 1.1253604| 0.7217963| 1.7545615|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |12                 |1              | 1.0704648| 0.6557778| 1.7473829|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |2                  |1              | 0.9970120| 0.3792292| 2.6211931|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |3                  |1              | 1.0751055| 0.3765928| 3.0692349|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |4                  |1              | 1.0478299| 0.3913077| 2.8058418|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |5                  |1              | 1.1869565| 0.3183043| 4.4261602|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |6                  |1              | 1.1934426| 0.3845937| 3.7034024|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |7                  |1              | 1.0495251| 0.3253506| 3.3855877|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |8                  |1              | 1.5777090| 0.4867609| 5.1137335|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |9                  |1              | 0.9735683| 0.3511141| 2.6995080|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |10                 |1              | 0.8584906| 0.3818334| 1.9301769|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |11                 |1              | 1.2816901| 0.4683780| 3.5072736|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |12                 |1              | 0.9479167| 0.4359708| 2.0610235|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |2                  |1              | 0.5169082| 0.2569695| 1.0397892|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |3                  |1              | 0.4728535| 0.2210127| 1.0116632|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |4                  |1              | 0.5661376| 0.3448096| 0.9295325|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |5                  |1              | 0.6832695| 0.3107527| 1.5023429|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |6                  |1              | 0.7300195| 0.4017844| 1.3264042|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |7                  |1              | 0.7190860| 0.5708124| 0.9058750|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |8                  |1              | 0.5661376| 0.4110703| 0.7797005|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |9                  |1              | 0.7107488| 0.4760165| 1.0612317|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |10                 |1              | 0.8023177| 0.5273449| 1.2206692|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |11                 |1              | 0.9081790| 0.6046879| 1.3639915|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |12                 |1              | 0.4043840| 0.2651326| 0.6167722|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 1.2261146| 0.5429854| 2.7686882|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3                  |1              | 0.8415301| 0.3513284| 2.0157004|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4                  |1              | 0.8369565| 0.3367733| 2.0800232|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5                  |1              | 0.9673367| 0.4270317| 2.1912667|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6                  |1              | 1.0014451| 0.4316118| 2.3235976|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7                  |1              | 1.3430233| 0.6183742| 2.9168608|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8                  |1              | 1.2833333| 0.5994102| 2.7476084|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9                  |1              | 0.9287281| 0.4183156| 2.0619263|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10                 |1              | 0.6754386| 0.2813200| 1.6217025|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11                 |1              | 0.7665929| 0.3293741| 1.7841861|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12                 |1              | 1.0000000| 0.4587476| 2.1798478|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.1876625| 0.7917440| 1.7815635|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |3                  |1              | 1.1931716| 0.8026905| 1.7736081|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |4                  |1              | 0.8033375| 0.5093800| 1.2669346|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |5                  |1              | 1.1607897| 0.7697974| 1.7503730|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |6                  |1              | 1.0325027| 0.6843675| 1.5577332|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |7                  |1              | 0.9106680| 0.5962761| 1.3908256|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |8                  |1              | 1.1302128| 0.7617335| 1.6769394|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |9                  |1              | 0.7854761| 0.5123351| 1.2042364|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |10                 |1              | 0.7139342| 0.4452774| 1.1446842|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |11                 |1              | 0.8814048| 0.5731711| 1.3553971|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |12                 |1              | 1.0946371| 0.7376622| 1.6243618|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0099408|  0.0035041|  0.0163775|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |NA             |  0.0116938| -0.0282558|  0.0516434|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |NA             |  0.0010970| -0.0080146|  0.0102086|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.0537103| -0.0998388| -0.0075819|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0011930| -0.0283634|  0.0259774|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0003399| -0.0097767|  0.0090969|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.2781859|  0.0762459|  0.4359802|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |NA             |  0.0875661| -0.2663447|  0.3425679|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |NA             |  0.0907671| -1.1178451|  0.6096483|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.4690285| -0.8573368| -0.1619027|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0235054| -0.7267651|  0.3933377|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0096962| -0.3182281|  0.2266236|
