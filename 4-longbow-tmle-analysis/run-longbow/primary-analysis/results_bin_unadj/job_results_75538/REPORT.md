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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      | month| swasted| n_cell|     n|
|:---------|:--------------|:------------|-----:|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|       0|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|       0|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|       0|     10|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|       0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|       0|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|       0|      4|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|       0|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|       0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|       0|     11|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|       0|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|       1|      0|    86|
|Birth     |CMIN           |BANGLADESH   |     1|       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     1|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     2|       0|      4|    19|
|Birth     |CMIN           |BANGLADESH   |     2|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     3|       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |     3|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     4|       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     4|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     5|       0|      3|    19|
|Birth     |CMIN           |BANGLADESH   |     5|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     6|       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     6|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     7|       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     7|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     8|       0|      5|    19|
|Birth     |CMIN           |BANGLADESH   |     8|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     9|       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |     9|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |    10|       0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |    10|       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |    11|       0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |    11|       1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |    12|       0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |    12|       1|      0|    19|
|Birth     |CONTENT        |PERU         |     1|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     1|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     2|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     2|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     3|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     3|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     4|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     4|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     5|       0|      2|     2|
|Birth     |CONTENT        |PERU         |     5|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     6|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     6|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     7|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     7|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     8|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     8|       1|      0|     2|
|Birth     |CONTENT        |PERU         |     9|       0|      0|     2|
|Birth     |CONTENT        |PERU         |     9|       1|      0|     2|
|Birth     |CONTENT        |PERU         |    10|       0|      0|     2|
|Birth     |CONTENT        |PERU         |    10|       1|      0|     2|
|Birth     |CONTENT        |PERU         |    11|       0|      0|     2|
|Birth     |CONTENT        |PERU         |    11|       1|      0|     2|
|Birth     |CONTENT        |PERU         |    12|       0|      0|     2|
|Birth     |CONTENT        |PERU         |    12|       1|      0|     2|
|Birth     |EE             |PAKISTAN     |     1|       0|     37|   177|
|Birth     |EE             |PAKISTAN     |     1|       1|      2|   177|
|Birth     |EE             |PAKISTAN     |     2|       0|     36|   177|
|Birth     |EE             |PAKISTAN     |     2|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |     3|       0|     15|   177|
|Birth     |EE             |PAKISTAN     |     3|       1|      1|   177|
|Birth     |EE             |PAKISTAN     |     4|       0|      7|   177|
|Birth     |EE             |PAKISTAN     |     4|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |     5|       0|      0|   177|
|Birth     |EE             |PAKISTAN     |     5|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |     6|       0|      0|   177|
|Birth     |EE             |PAKISTAN     |     6|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |     7|       0|      0|   177|
|Birth     |EE             |PAKISTAN     |     7|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |     8|       0|      0|   177|
|Birth     |EE             |PAKISTAN     |     8|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |     9|       0|      0|   177|
|Birth     |EE             |PAKISTAN     |     9|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |    10|       0|      0|   177|
|Birth     |EE             |PAKISTAN     |    10|       1|      0|   177|
|Birth     |EE             |PAKISTAN     |    11|       0|     39|   177|
|Birth     |EE             |PAKISTAN     |    11|       1|      2|   177|
|Birth     |EE             |PAKISTAN     |    12|       0|     37|   177|
|Birth     |EE             |PAKISTAN     |    12|       1|      1|   177|
|Birth     |GMS-Nepal      |NEPAL        |     1|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     1|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     2|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     2|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     3|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     3|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     4|       0|      1|   641|
|Birth     |GMS-Nepal      |NEPAL        |     4|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     5|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     5|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     6|       0|    143|   641|
|Birth     |GMS-Nepal      |NEPAL        |     6|       1|      8|   641|
|Birth     |GMS-Nepal      |NEPAL        |     7|       0|    233|   641|
|Birth     |GMS-Nepal      |NEPAL        |     7|       1|      7|   641|
|Birth     |GMS-Nepal      |NEPAL        |     8|       0|    237|   641|
|Birth     |GMS-Nepal      |NEPAL        |     8|       1|     12|   641|
|Birth     |GMS-Nepal      |NEPAL        |     9|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     9|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    10|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    10|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    11|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    11|       1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    12|       0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    12|       1|      0|   641|
|Birth     |JiVitA-3       |BANGLADESH   |     1|       0|   1603| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     1|       1|     25| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     2|       0|   1386| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     2|       1|     25| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     3|       0|   1683| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     3|       1|     32| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     4|       0|   1233| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     4|       1|     21| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     5|       0|    877| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     5|       1|     18| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     6|       0|    905| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     6|       1|     13| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     7|       0|   1035| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     7|       1|     17| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     8|       0|   1356| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     8|       1|     26| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     9|       0|   1811| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     9|       1|     52| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    10|       0|   1871| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    10|       1|     42| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    11|       0|   1864| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    11|       1|     41| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    12|       0|   2041| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    12|       1|     37| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |     1|       0|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     1|       1|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     2|       0|    277|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     2|       1|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     3|       0|    311|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     3|       1|      5|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     4|       0|    390|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     4|       1|      5|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     5|       0|    375|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     5|       1|      2|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     6|       0|    288|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     6|       1|      7|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     7|       0|    311|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     7|       1|      4|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     8|       0|    222|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     8|       1|      4|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     9|       0|    130|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     9|       1|      4|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    10|       0|     61|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    10|       1|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    11|       0|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    11|       1|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    12|       0|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    12|       1|      0|  2396|
|Birth     |Keneba         |GAMBIA       |     1|       0|    124|  1466|
|Birth     |Keneba         |GAMBIA       |     1|       1|      9|  1466|
|Birth     |Keneba         |GAMBIA       |     2|       0|    139|  1466|
|Birth     |Keneba         |GAMBIA       |     2|       1|     14|  1466|
|Birth     |Keneba         |GAMBIA       |     3|       0|    131|  1466|
|Birth     |Keneba         |GAMBIA       |     3|       1|      9|  1466|
|Birth     |Keneba         |GAMBIA       |     4|       0|    150|  1466|
|Birth     |Keneba         |GAMBIA       |     4|       1|      9|  1466|
|Birth     |Keneba         |GAMBIA       |     5|       0|     99|  1466|
|Birth     |Keneba         |GAMBIA       |     5|       1|      4|  1466|
|Birth     |Keneba         |GAMBIA       |     6|       0|     94|  1466|
|Birth     |Keneba         |GAMBIA       |     6|       1|      8|  1466|
|Birth     |Keneba         |GAMBIA       |     7|       0|     81|  1466|
|Birth     |Keneba         |GAMBIA       |     7|       1|      4|  1466|
|Birth     |Keneba         |GAMBIA       |     8|       0|     68|  1466|
|Birth     |Keneba         |GAMBIA       |     8|       1|      6|  1466|
|Birth     |Keneba         |GAMBIA       |     9|       0|    108|  1466|
|Birth     |Keneba         |GAMBIA       |     9|       1|      8|  1466|
|Birth     |Keneba         |GAMBIA       |    10|       0|    106|  1466|
|Birth     |Keneba         |GAMBIA       |    10|       1|     12|  1466|
|Birth     |Keneba         |GAMBIA       |    11|       0|    158|  1466|
|Birth     |Keneba         |GAMBIA       |    11|       1|     10|  1466|
|Birth     |Keneba         |GAMBIA       |    12|       0|    105|  1466|
|Birth     |Keneba         |GAMBIA       |    12|       1|     10|  1466|
|Birth     |MAL-ED         |INDIA        |     1|       0|      2|    45|
|Birth     |MAL-ED         |INDIA        |     1|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     2|       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |     2|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     3|       0|      3|    45|
|Birth     |MAL-ED         |INDIA        |     3|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     4|       0|      5|    45|
|Birth     |MAL-ED         |INDIA        |     4|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     5|       0|      4|    45|
|Birth     |MAL-ED         |INDIA        |     5|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     6|       0|      1|    45|
|Birth     |MAL-ED         |INDIA        |     6|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     7|       0|      3|    45|
|Birth     |MAL-ED         |INDIA        |     7|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     8|       0|      9|    45|
|Birth     |MAL-ED         |INDIA        |     8|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     9|       0|      3|    45|
|Birth     |MAL-ED         |INDIA        |     9|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |    10|       0|      6|    45|
|Birth     |MAL-ED         |INDIA        |    10|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |    11|       0|      3|    45|
|Birth     |MAL-ED         |INDIA        |    11|       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |    12|       0|      0|    45|
|Birth     |MAL-ED         |INDIA        |    12|       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |     1|       0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |     1|       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |     2|       0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |     2|       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |     3|       0|     22|   215|
|Birth     |MAL-ED         |BANGLADESH   |     3|       1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |     4|       0|     17|   215|
|Birth     |MAL-ED         |BANGLADESH   |     4|       1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |     5|       0|     17|   215|
|Birth     |MAL-ED         |BANGLADESH   |     5|       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |     6|       0|      6|   215|
|Birth     |MAL-ED         |BANGLADESH   |     6|       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |     7|       0|     14|   215|
|Birth     |MAL-ED         |BANGLADESH   |     7|       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |     8|       0|     21|   215|
|Birth     |MAL-ED         |BANGLADESH   |     8|       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |     9|       0|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |     9|       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |    10|       0|     18|   215|
|Birth     |MAL-ED         |BANGLADESH   |    10|       1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |    11|       0|     15|   215|
|Birth     |MAL-ED         |BANGLADESH   |    11|       1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |    12|       0|     23|   215|
|Birth     |MAL-ED         |BANGLADESH   |    12|       1|      1|   215|
|Birth     |MAL-ED         |PERU         |     1|       0|     27|   228|
|Birth     |MAL-ED         |PERU         |     1|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     2|       0|     19|   228|
|Birth     |MAL-ED         |PERU         |     2|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     3|       0|     19|   228|
|Birth     |MAL-ED         |PERU         |     3|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     4|       0|     14|   228|
|Birth     |MAL-ED         |PERU         |     4|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     5|       0|     19|   228|
|Birth     |MAL-ED         |PERU         |     5|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     6|       0|     14|   228|
|Birth     |MAL-ED         |PERU         |     6|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     7|       0|     19|   228|
|Birth     |MAL-ED         |PERU         |     7|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     8|       0|     16|   228|
|Birth     |MAL-ED         |PERU         |     8|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |     9|       0|     19|   228|
|Birth     |MAL-ED         |PERU         |     9|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |    10|       0|     20|   228|
|Birth     |MAL-ED         |PERU         |    10|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |    11|       0|     28|   228|
|Birth     |MAL-ED         |PERU         |    11|       1|      0|   228|
|Birth     |MAL-ED         |PERU         |    12|       0|     14|   228|
|Birth     |MAL-ED         |PERU         |    12|       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |     1|       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     1|       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     2|       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     2|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     3|       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     3|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     4|       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     4|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     5|       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     5|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     6|       0|      3|    26|
|Birth     |MAL-ED         |NEPAL        |     6|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     7|       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     7|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     8|       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     8|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     9|       0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     9|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |    10|       0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |    10|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |    11|       0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |    11|       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |    12|       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |    12|       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |     1|       0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |     1|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     2|       0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |     2|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     3|       0|      7|    62|
|Birth     |MAL-ED         |BRAZIL       |     3|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     4|       0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |     4|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     5|       0|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |     5|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     6|       0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |     6|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     7|       0|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |     7|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     8|       0|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |     8|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     9|       0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |     9|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |    10|       0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |    10|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |    11|       0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |    11|       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |    12|       0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |    12|       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |     1|       0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |     1|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     2|       0|     14|   115|
|Birth     |MAL-ED         |TANZANIA     |     2|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     3|       0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |     3|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     4|       0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |     4|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     5|       0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |     5|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     6|       0|      8|   115|
|Birth     |MAL-ED         |TANZANIA     |     6|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     7|       0|     15|   115|
|Birth     |MAL-ED         |TANZANIA     |     7|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     8|       0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |     8|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     9|       0|      1|   115|
|Birth     |MAL-ED         |TANZANIA     |     9|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |    10|       0|      8|   115|
|Birth     |MAL-ED         |TANZANIA     |    10|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |    11|       0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |    11|       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |    12|       0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |    12|       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|       0|      9|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|       0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|       0|      8|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|       0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|       0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|       0|      7|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|       0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|       0|      4|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|       0|     10|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|       0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|       0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|       0|     18|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |     1|       0|     47|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     1|       1|      7|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     2|       0|     53|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     2|       1|      2|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     3|       0|     56|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     3|       1|      2|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     4|       0|     44|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     4|       1|      4|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     5|       0|     42|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     5|       1|      3|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     6|       0|     36|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     6|       1|      4|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     7|       0|     39|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     7|       1|      6|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     8|       0|     37|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     8|       1|      4|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     9|       0|     30|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     9|       1|      1|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    10|       0|     55|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    10|       1|      3|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    11|       0|     47|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    11|       1|      2|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    12|       0|     51|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    12|       1|      0|   575|
|Birth     |PROBIT         |BELARUS      |     1|       0|    788| 13817|
|Birth     |PROBIT         |BELARUS      |     1|       1|     67| 13817|
|Birth     |PROBIT         |BELARUS      |     2|       0|    745| 13817|
|Birth     |PROBIT         |BELARUS      |     2|       1|     40| 13817|
|Birth     |PROBIT         |BELARUS      |     3|       0|    890| 13817|
|Birth     |PROBIT         |BELARUS      |     3|       1|     70| 13817|
|Birth     |PROBIT         |BELARUS      |     4|       0|    900| 13817|
|Birth     |PROBIT         |BELARUS      |     4|       1|     55| 13817|
|Birth     |PROBIT         |BELARUS      |     5|       0|    872| 13817|
|Birth     |PROBIT         |BELARUS      |     5|       1|     77| 13817|
|Birth     |PROBIT         |BELARUS      |     6|       0|    947| 13817|
|Birth     |PROBIT         |BELARUS      |     6|       1|     59| 13817|
|Birth     |PROBIT         |BELARUS      |     7|       0|   1171| 13817|
|Birth     |PROBIT         |BELARUS      |     7|       1|    104| 13817|
|Birth     |PROBIT         |BELARUS      |     8|       0|   1237| 13817|
|Birth     |PROBIT         |BELARUS      |     8|       1|     81| 13817|
|Birth     |PROBIT         |BELARUS      |     9|       0|   1215| 13817|
|Birth     |PROBIT         |BELARUS      |     9|       1|     96| 13817|
|Birth     |PROBIT         |BELARUS      |    10|       0|   1402| 13817|
|Birth     |PROBIT         |BELARUS      |    10|       1|     94| 13817|
|Birth     |PROBIT         |BELARUS      |    11|       0|   1310| 13817|
|Birth     |PROBIT         |BELARUS      |    11|       1|     82| 13817|
|Birth     |PROBIT         |BELARUS      |    12|       0|   1421| 13817|
|Birth     |PROBIT         |BELARUS      |    12|       1|     94| 13817|
|Birth     |PROVIDE        |BANGLADESH   |     1|       0|     21|   532|
|Birth     |PROVIDE        |BANGLADESH   |     1|       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |     2|       0|     30|   532|
|Birth     |PROVIDE        |BANGLADESH   |     2|       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |     3|       0|     22|   532|
|Birth     |PROVIDE        |BANGLADESH   |     3|       1|      2|   532|
|Birth     |PROVIDE        |BANGLADESH   |     4|       0|     45|   532|
|Birth     |PROVIDE        |BANGLADESH   |     4|       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |     5|       0|     28|   532|
|Birth     |PROVIDE        |BANGLADESH   |     5|       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |     6|       0|     44|   532|
|Birth     |PROVIDE        |BANGLADESH   |     6|       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |     7|       0|     73|   532|
|Birth     |PROVIDE        |BANGLADESH   |     7|       1|      2|   532|
|Birth     |PROVIDE        |BANGLADESH   |     8|       0|     72|   532|
|Birth     |PROVIDE        |BANGLADESH   |     8|       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |     9|       0|     50|   532|
|Birth     |PROVIDE        |BANGLADESH   |     9|       1|      3|   532|
|Birth     |PROVIDE        |BANGLADESH   |    10|       0|     54|   532|
|Birth     |PROVIDE        |BANGLADESH   |    10|       1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |    11|       0|     54|   532|
|Birth     |PROVIDE        |BANGLADESH   |    11|       1|      0|   532|
|Birth     |PROVIDE        |BANGLADESH   |    12|       0|     26|   532|
|Birth     |PROVIDE        |BANGLADESH   |    12|       1|      1|   532|
|Birth     |ResPak         |PAKISTAN     |     1|       0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     1|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     2|       0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |     2|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     3|       0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     3|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     4|       0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     4|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     5|       0|      6|    38|
|Birth     |ResPak         |PAKISTAN     |     5|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     6|       0|      7|    38|
|Birth     |ResPak         |PAKISTAN     |     6|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     7|       0|      7|    38|
|Birth     |ResPak         |PAKISTAN     |     7|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     8|       0|      8|    38|
|Birth     |ResPak         |PAKISTAN     |     8|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     9|       0|      4|    38|
|Birth     |ResPak         |PAKISTAN     |     9|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    10|       0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |    10|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    11|       0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |    11|       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    12|       0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    12|       1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |     1|       0|     65|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     1|       1|      0|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     2|       0|     61|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     2|       1|      1|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     3|       0|     66|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     3|       1|      1|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     4|       0|     58|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     4|       1|      2|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     5|       0|     62|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     5|       1|      3|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     6|       0|     86|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     6|       1|      6|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     7|       0|     90|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     7|       1|      4|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     8|       0|    121|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     8|       1|      2|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     9|       0|    128|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     9|       1|      7|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    10|       0|    120|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    10|       1|      3|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    11|       0|    113|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    11|       1|      0|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    12|       0|    104|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    12|       1|      0|  1103|
|Birth     |Vellore Crypto |INDIA        |     1|       0|     28|   343|
|Birth     |Vellore Crypto |INDIA        |     1|       1|      2|   343|
|Birth     |Vellore Crypto |INDIA        |     2|       0|     21|   343|
|Birth     |Vellore Crypto |INDIA        |     2|       1|      1|   343|
|Birth     |Vellore Crypto |INDIA        |     3|       0|     21|   343|
|Birth     |Vellore Crypto |INDIA        |     3|       1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |     4|       0|     17|   343|
|Birth     |Vellore Crypto |INDIA        |     4|       1|      2|   343|
|Birth     |Vellore Crypto |INDIA        |     5|       0|     11|   343|
|Birth     |Vellore Crypto |INDIA        |     5|       1|      4|   343|
|Birth     |Vellore Crypto |INDIA        |     6|       0|     20|   343|
|Birth     |Vellore Crypto |INDIA        |     6|       1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |     7|       0|     26|   343|
|Birth     |Vellore Crypto |INDIA        |     7|       1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |     8|       0|     31|   343|
|Birth     |Vellore Crypto |INDIA        |     8|       1|      6|   343|
|Birth     |Vellore Crypto |INDIA        |     9|       0|     17|   343|
|Birth     |Vellore Crypto |INDIA        |     9|       1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |    10|       0|     24|   343|
|Birth     |Vellore Crypto |INDIA        |    10|       1|      8|   343|
|Birth     |Vellore Crypto |INDIA        |    11|       0|     36|   343|
|Birth     |Vellore Crypto |INDIA        |    11|       1|      3|   343|
|Birth     |Vellore Crypto |INDIA        |    12|       0|     37|   343|
|Birth     |Vellore Crypto |INDIA        |    12|       1|      6|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|       0|   1173| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|       1|     65| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|       0|    892| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|       1|     56| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|       0|   1001| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|       1|     59| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|       0|    891| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|       1|     50| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|       0|    853| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|       1|     61| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|       0|    970| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|       1|     77| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|       0|   1011| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|       1|     87| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|       0|   1092| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|       1|     74| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|       0|   1203| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|       1|     65| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|       0|    922| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|       1|     62| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|       0|   1011| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|       1|     59| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|       0|   1106| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|       1|     77| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|       0|     33|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|       0|     15|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|       0|     30|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|       1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|       0|     42|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|       0|     30|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|       1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|       0|     37|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|       0|     39|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|       0|     17|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|       0|     19|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|       1|      0|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|       0|     28|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|       0|     42|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|       1|      1|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|       0|     24|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|       1|      1|   368|
|6 months  |CMIN           |BANGLADESH   |     1|       0|     25|   243|
|6 months  |CMIN           |BANGLADESH   |     1|       1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |     2|       0|     29|   243|
|6 months  |CMIN           |BANGLADESH   |     2|       1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     3|       0|     18|   243|
|6 months  |CMIN           |BANGLADESH   |     3|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     4|       0|     17|   243|
|6 months  |CMIN           |BANGLADESH   |     4|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     5|       0|     20|   243|
|6 months  |CMIN           |BANGLADESH   |     5|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     6|       0|     22|   243|
|6 months  |CMIN           |BANGLADESH   |     6|       1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     7|       0|     12|   243|
|6 months  |CMIN           |BANGLADESH   |     7|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     8|       0|     13|   243|
|6 months  |CMIN           |BANGLADESH   |     8|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     9|       0|     16|   243|
|6 months  |CMIN           |BANGLADESH   |     9|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    10|       0|     20|   243|
|6 months  |CMIN           |BANGLADESH   |    10|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    11|       0|      2|   243|
|6 months  |CMIN           |BANGLADESH   |    11|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    12|       0|     44|   243|
|6 months  |CMIN           |BANGLADESH   |    12|       1|      0|   243|
|6 months  |CONTENT        |PERU         |     1|       0|      9|   215|
|6 months  |CONTENT        |PERU         |     1|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     2|       0|     13|   215|
|6 months  |CONTENT        |PERU         |     2|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     3|       0|     27|   215|
|6 months  |CONTENT        |PERU         |     3|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     4|       0|     18|   215|
|6 months  |CONTENT        |PERU         |     4|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     5|       0|     25|   215|
|6 months  |CONTENT        |PERU         |     5|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     6|       0|     14|   215|
|6 months  |CONTENT        |PERU         |     6|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     7|       0|     16|   215|
|6 months  |CONTENT        |PERU         |     7|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     8|       0|     26|   215|
|6 months  |CONTENT        |PERU         |     8|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     9|       0|     19|   215|
|6 months  |CONTENT        |PERU         |     9|       1|      0|   215|
|6 months  |CONTENT        |PERU         |    10|       0|     23|   215|
|6 months  |CONTENT        |PERU         |    10|       1|      0|   215|
|6 months  |CONTENT        |PERU         |    11|       0|     18|   215|
|6 months  |CONTENT        |PERU         |    11|       1|      0|   215|
|6 months  |CONTENT        |PERU         |    12|       0|      7|   215|
|6 months  |CONTENT        |PERU         |    12|       1|      0|   215|
|6 months  |EE             |PAKISTAN     |     1|       0|     88|   375|
|6 months  |EE             |PAKISTAN     |     1|       1|      4|   375|
|6 months  |EE             |PAKISTAN     |     2|       0|     63|   375|
|6 months  |EE             |PAKISTAN     |     2|       1|      3|   375|
|6 months  |EE             |PAKISTAN     |     3|       0|     43|   375|
|6 months  |EE             |PAKISTAN     |     3|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |     4|       0|     16|   375|
|6 months  |EE             |PAKISTAN     |     4|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |     5|       0|      0|   375|
|6 months  |EE             |PAKISTAN     |     5|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |     6|       0|      0|   375|
|6 months  |EE             |PAKISTAN     |     6|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |     7|       0|      0|   375|
|6 months  |EE             |PAKISTAN     |     7|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |     8|       0|      0|   375|
|6 months  |EE             |PAKISTAN     |     8|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |     9|       0|      0|   375|
|6 months  |EE             |PAKISTAN     |     9|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |    10|       0|      4|   375|
|6 months  |EE             |PAKISTAN     |    10|       1|      0|   375|
|6 months  |EE             |PAKISTAN     |    11|       0|     68|   375|
|6 months  |EE             |PAKISTAN     |    11|       1|      2|   375|
|6 months  |EE             |PAKISTAN     |    12|       0|     80|   375|
|6 months  |EE             |PAKISTAN     |    12|       1|      4|   375|
|6 months  |GMS-Nepal      |NEPAL        |     1|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     1|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|       0|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|       0|    115|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|       0|    208|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|       1|      3|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|       0|    233|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|       1|      4|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|       1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|       0|     18|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|       0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|       0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|       0|     27|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|       0|     31|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|       0|     39|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|       0|     24|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|       0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|       0|     34|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|       0|     29|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|       0|     28|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|       0|     10|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|       1|      0|   299|
|6 months  |JiVitA-3       |BANGLADESH   |     1|       0|   1350| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     1|       1|     15| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     2|       0|   1164| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     2|       1|     14| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     3|       0|   1402| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     3|       1|     19| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     4|       0|   1174| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     4|       1|     19| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     5|       0|   1123| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     5|       1|     18| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     6|       0|   1148| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     6|       1|     12| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     7|       0|   1226| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     7|       1|     20| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     8|       0|   1453| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     8|       1|     16| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     9|       0|   1540| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     9|       1|     18| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    10|       0|   1644| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    10|       1|     30| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    11|       0|   1658| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    11|       1|     21| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    12|       0|   1672| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    12|       1|     28| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |     1|       0|     50|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     1|       1|      0|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     2|       0|    165|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     2|       1|      0|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     3|       0|    428|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     3|       1|      4|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     4|       0|    847|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     4|       1|      9|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     5|       0|    586|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     5|       1|      5|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     6|       0|    433|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     6|       1|      3|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     7|       0|    829|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     7|       1|     10|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     8|       0|    517|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     8|       1|      0|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     9|       0|    417|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     9|       1|      1|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    10|       0|    299|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    10|       1|      1|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    11|       0|    153|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    11|       1|      0|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    12|       0|     76|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    12|       1|      0|  4833|
|6 months  |Keneba         |GAMBIA       |     1|       0|    175|  2089|
|6 months  |Keneba         |GAMBIA       |     1|       1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |     2|       0|    222|  2089|
|6 months  |Keneba         |GAMBIA       |     2|       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |     3|       0|    179|  2089|
|6 months  |Keneba         |GAMBIA       |     3|       1|      1|  2089|
|6 months  |Keneba         |GAMBIA       |     4|       0|    215|  2089|
|6 months  |Keneba         |GAMBIA       |     4|       1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |     5|       0|    154|  2089|
|6 months  |Keneba         |GAMBIA       |     5|       1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |     6|       0|    145|  2089|
|6 months  |Keneba         |GAMBIA       |     6|       1|      3|  2089|
|6 months  |Keneba         |GAMBIA       |     7|       0|    121|  2089|
|6 months  |Keneba         |GAMBIA       |     7|       1|      1|  2089|
|6 months  |Keneba         |GAMBIA       |     8|       0|    112|  2089|
|6 months  |Keneba         |GAMBIA       |     8|       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |     9|       0|    164|  2089|
|6 months  |Keneba         |GAMBIA       |     9|       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |    10|       0|    160|  2089|
|6 months  |Keneba         |GAMBIA       |    10|       1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |    11|       0|    229|  2089|
|6 months  |Keneba         |GAMBIA       |    11|       1|      4|  2089|
|6 months  |Keneba         |GAMBIA       |    12|       0|    179|  2089|
|6 months  |Keneba         |GAMBIA       |    12|       1|      0|  2089|
|6 months  |LCNI-5         |MALAWI       |     1|       0|     55|   839|
|6 months  |LCNI-5         |MALAWI       |     1|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     2|       0|    114|   839|
|6 months  |LCNI-5         |MALAWI       |     2|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     3|       0|     98|   839|
|6 months  |LCNI-5         |MALAWI       |     3|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     4|       0|    110|   839|
|6 months  |LCNI-5         |MALAWI       |     4|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     5|       0|    111|   839|
|6 months  |LCNI-5         |MALAWI       |     5|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     6|       0|     91|   839|
|6 months  |LCNI-5         |MALAWI       |     6|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     7|       0|     72|   839|
|6 months  |LCNI-5         |MALAWI       |     7|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     8|       0|     41|   839|
|6 months  |LCNI-5         |MALAWI       |     8|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     9|       0|     29|   839|
|6 months  |LCNI-5         |MALAWI       |     9|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |    10|       0|     35|   839|
|6 months  |LCNI-5         |MALAWI       |    10|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |    11|       0|     49|   839|
|6 months  |LCNI-5         |MALAWI       |    11|       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |    12|       0|     34|   839|
|6 months  |LCNI-5         |MALAWI       |    12|       1|      0|   839|
|6 months  |MAL-ED         |INDIA        |     1|       0|     19|   236|
|6 months  |MAL-ED         |INDIA        |     1|       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     2|       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |     2|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     3|       0|     20|   236|
|6 months  |MAL-ED         |INDIA        |     3|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     4|       0|     16|   236|
|6 months  |MAL-ED         |INDIA        |     4|       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     5|       0|      8|   236|
|6 months  |MAL-ED         |INDIA        |     5|       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     6|       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |     6|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     7|       0|     21|   236|
|6 months  |MAL-ED         |INDIA        |     7|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     8|       0|     23|   236|
|6 months  |MAL-ED         |INDIA        |     8|       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     9|       0|     20|   236|
|6 months  |MAL-ED         |INDIA        |     9|       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |    10|       0|     26|   236|
|6 months  |MAL-ED         |INDIA        |    10|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |    11|       0|     25|   236|
|6 months  |MAL-ED         |INDIA        |    11|       1|      0|   236|
|6 months  |MAL-ED         |INDIA        |    12|       0|     18|   236|
|6 months  |MAL-ED         |INDIA        |    12|       1|      1|   236|
|6 months  |MAL-ED         |BANGLADESH   |     1|       0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |     1|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|       0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|       0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|       0|     21|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|       0|     21|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|       0|      8|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|       0|     19|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|       0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|       0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|       0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|       0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|       1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|       0|     26|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|       1|      0|   241|
|6 months  |MAL-ED         |PERU         |     1|       0|     36|   273|
|6 months  |MAL-ED         |PERU         |     1|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     2|       0|     21|   273|
|6 months  |MAL-ED         |PERU         |     2|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     3|       0|     21|   273|
|6 months  |MAL-ED         |PERU         |     3|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     4|       0|     20|   273|
|6 months  |MAL-ED         |PERU         |     4|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     5|       0|     25|   273|
|6 months  |MAL-ED         |PERU         |     5|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     6|       0|     18|   273|
|6 months  |MAL-ED         |PERU         |     6|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     7|       0|     22|   273|
|6 months  |MAL-ED         |PERU         |     7|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     8|       0|     16|   273|
|6 months  |MAL-ED         |PERU         |     8|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |     9|       0|     23|   273|
|6 months  |MAL-ED         |PERU         |     9|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |    10|       0|     19|   273|
|6 months  |MAL-ED         |PERU         |    10|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |    11|       0|     32|   273|
|6 months  |MAL-ED         |PERU         |    11|       1|      0|   273|
|6 months  |MAL-ED         |PERU         |    12|       0|     20|   273|
|6 months  |MAL-ED         |PERU         |    12|       1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |     1|       0|     20|   236|
|6 months  |MAL-ED         |NEPAL        |     1|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     2|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     2|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     3|       0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |     3|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     4|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     4|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     5|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     5|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     6|       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |     6|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     7|       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |     7|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     8|       0|     24|   236|
|6 months  |MAL-ED         |NEPAL        |     8|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     9|       0|     14|   236|
|6 months  |MAL-ED         |NEPAL        |     9|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    10|       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |    10|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    11|       0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |    11|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    12|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |    12|       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |     1|       0|     13|   209|
|6 months  |MAL-ED         |BRAZIL       |     1|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|       0|     24|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|       0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|       0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|       0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|       0|      7|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|       0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|       0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|       0|     29|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|       0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|       0|     18|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|       0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |     1|       0|     23|   247|
|6 months  |MAL-ED         |TANZANIA     |     1|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|       0|     27|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|       0|     21|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|       0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|       0|     13|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|       0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|       0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|       0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|       0|     21|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|       0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|       0|     29|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|       0|     29|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|       1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|       0|     38|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|       0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|       0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|       0|     13|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|       0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|       0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|       0|     24|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|       0|      9|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|       0|     18|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|       0|     24|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|       0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|       1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|       0|     36|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|       1|      0|   254|
|6 months  |NIH-Birth      |BANGLADESH   |     1|       0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     1|       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|       0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|       0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|       0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|       0|     39|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|       1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|       0|     39|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|       0|     45|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|       0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|       0|     30|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|       0|     52|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|       0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|       0|     48|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|       1|      2|   537|
|6 months  |PROBIT         |BELARUS      |     1|       0|   1100| 15757|
|6 months  |PROBIT         |BELARUS      |     1|       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |     2|       0|    949| 15757|
|6 months  |PROBIT         |BELARUS      |     2|       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |     3|       0|   1114| 15757|
|6 months  |PROBIT         |BELARUS      |     3|       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |     4|       0|   1070| 15757|
|6 months  |PROBIT         |BELARUS      |     4|       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |     5|       0|   1096| 15757|
|6 months  |PROBIT         |BELARUS      |     5|       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |     6|       0|   1121| 15757|
|6 months  |PROBIT         |BELARUS      |     6|       1|      0| 15757|
|6 months  |PROBIT         |BELARUS      |     7|       0|   1363| 15757|
|6 months  |PROBIT         |BELARUS      |     7|       1|      2| 15757|
|6 months  |PROBIT         |BELARUS      |     8|       0|   1496| 15757|
|6 months  |PROBIT         |BELARUS      |     8|       1|      2| 15757|
|6 months  |PROBIT         |BELARUS      |     9|       0|   1481| 15757|
|6 months  |PROBIT         |BELARUS      |     9|       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |    10|       0|   1667| 15757|
|6 months  |PROBIT         |BELARUS      |    10|       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |    11|       0|   1589| 15757|
|6 months  |PROBIT         |BELARUS      |    11|       1|      1| 15757|
|6 months  |PROBIT         |BELARUS      |    12|       0|   1702| 15757|
|6 months  |PROBIT         |BELARUS      |    12|       1|      1| 15757|
|6 months  |PROVIDE        |BANGLADESH   |     1|       0|     29|   603|
|6 months  |PROVIDE        |BANGLADESH   |     1|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |     2|       0|     34|   603|
|6 months  |PROVIDE        |BANGLADESH   |     2|       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     3|       0|     32|   603|
|6 months  |PROVIDE        |BANGLADESH   |     3|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |     4|       0|     43|   603|
|6 months  |PROVIDE        |BANGLADESH   |     4|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |     5|       0|     36|   603|
|6 months  |PROVIDE        |BANGLADESH   |     5|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |     6|       0|     39|   603|
|6 months  |PROVIDE        |BANGLADESH   |     6|       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     7|       0|     75|   603|
|6 months  |PROVIDE        |BANGLADESH   |     7|       1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |     8|       0|     76|   603|
|6 months  |PROVIDE        |BANGLADESH   |     8|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |     9|       0|     60|   603|
|6 months  |PROVIDE        |BANGLADESH   |     9|       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |    10|       0|     66|   603|
|6 months  |PROVIDE        |BANGLADESH   |    10|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |    11|       0|     67|   603|
|6 months  |PROVIDE        |BANGLADESH   |    11|       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |    12|       0|     41|   603|
|6 months  |PROVIDE        |BANGLADESH   |    12|       1|      0|   603|
|6 months  |ResPak         |PAKISTAN     |     1|       0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     1|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     2|       0|      8|   239|
|6 months  |ResPak         |PAKISTAN     |     2|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     3|       0|     10|   239|
|6 months  |ResPak         |PAKISTAN     |     3|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     4|       0|     20|   239|
|6 months  |ResPak         |PAKISTAN     |     4|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     5|       0|     26|   239|
|6 months  |ResPak         |PAKISTAN     |     5|       1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |     6|       0|     38|   239|
|6 months  |ResPak         |PAKISTAN     |     6|       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     7|       0|     42|   239|
|6 months  |ResPak         |PAKISTAN     |     7|       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     8|       0|     25|   239|
|6 months  |ResPak         |PAKISTAN     |     8|       1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     9|       0|     35|   239|
|6 months  |ResPak         |PAKISTAN     |     9|       1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |    10|       0|     15|   239|
|6 months  |ResPak         |PAKISTAN     |    10|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |    11|       0|      6|   239|
|6 months  |ResPak         |PAKISTAN     |    11|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |    12|       0|      3|   239|
|6 months  |ResPak         |PAKISTAN     |    12|       1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |     1|       0|     79|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     1|       1|      6|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     2|       0|     77|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     2|       1|      4|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     3|       0|     75|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     3|       1|      4|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     4|       0|     72|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     4|       1|      2|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     5|       0|     76|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     5|       1|      0|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     6|       0|    100|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     6|       1|      2|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     7|       0|    114|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     7|       1|      1|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     8|       0|    151|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     8|       1|      1|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     9|       0|    161|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     9|       1|      4|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    10|       0|    145|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    10|       1|      5|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    11|       0|    117|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    11|       1|      9|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    12|       0|    124|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    12|       1|      5|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|       0|     58|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|       1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|       0|     37|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|       0|     33|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|       1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|       0|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|       1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|       0|     27|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|       0|     29|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|       1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|       0|     16|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|       0|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|       0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|       0|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|       1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|       0|     44|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|       0|     59|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|       1|      3|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|       0|    137|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|       0|    149|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|       0|    146|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|       0|    146|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|       0|    153|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|       1|      0|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|       0|    141|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|       0|    186|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|       0|    203|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|       1|      3|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|       0|    179|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|       0|    208|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|       1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|       0|    191|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|       1|      1|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|       0|    177|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|       1|      1|  2028|
|6 months  |Vellore Crypto |INDIA        |     1|       0|     34|   408|
|6 months  |Vellore Crypto |INDIA        |     1|       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |     2|       0|     26|   408|
|6 months  |Vellore Crypto |INDIA        |     2|       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |     3|       0|     29|   408|
|6 months  |Vellore Crypto |INDIA        |     3|       1|      0|   408|
|6 months  |Vellore Crypto |INDIA        |     4|       0|     22|   408|
|6 months  |Vellore Crypto |INDIA        |     4|       1|      0|   408|
|6 months  |Vellore Crypto |INDIA        |     5|       0|     20|   408|
|6 months  |Vellore Crypto |INDIA        |     5|       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |     6|       0|     36|   408|
|6 months  |Vellore Crypto |INDIA        |     6|       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |     7|       0|     33|   408|
|6 months  |Vellore Crypto |INDIA        |     7|       1|      3|   408|
|6 months  |Vellore Crypto |INDIA        |     8|       0|     41|   408|
|6 months  |Vellore Crypto |INDIA        |     8|       1|      4|   408|
|6 months  |Vellore Crypto |INDIA        |     9|       0|     23|   408|
|6 months  |Vellore Crypto |INDIA        |     9|       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |    10|       0|     36|   408|
|6 months  |Vellore Crypto |INDIA        |    10|       1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |    11|       0|     39|   408|
|6 months  |Vellore Crypto |INDIA        |    11|       1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |    12|       0|     47|   408|
|6 months  |Vellore Crypto |INDIA        |    12|       1|      4|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|       0|    805|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|       1|     11|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|       0|    594|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|       1|      8|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|       0|    727|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|       1|      8|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|       0|    656|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|       1|      5|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|       0|    612|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|       1|      5|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|       0|    654|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|       1|     12|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|       0|    656|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|       1|      4|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|       0|    754|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|       1|      6|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|       0|    776|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|       1|      9|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|       0|    616|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|       1|      2|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|       0|    741|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|       1|      5|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|       0|    835|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|       1|      4|  8505|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|       0|     34|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|       0|     16|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|       0|     32|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|       0|     44|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|       0|     32|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|       1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|       0|     38|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|       0|     39|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|       1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|       0|     17|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|       0|     19|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|       0|     29|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|       0|     44|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|       0|     25|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|       1|      0|   372|
|24 months |CMIN           |BANGLADESH   |     1|       0|     26|   243|
|24 months |CMIN           |BANGLADESH   |     1|       1|      1|   243|
|24 months |CMIN           |BANGLADESH   |     2|       0|     31|   243|
|24 months |CMIN           |BANGLADESH   |     2|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     3|       0|     19|   243|
|24 months |CMIN           |BANGLADESH   |     3|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     4|       0|     18|   243|
|24 months |CMIN           |BANGLADESH   |     4|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     5|       0|     19|   243|
|24 months |CMIN           |BANGLADESH   |     5|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     6|       0|     22|   243|
|24 months |CMIN           |BANGLADESH   |     6|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     7|       0|     12|   243|
|24 months |CMIN           |BANGLADESH   |     7|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     8|       0|     13|   243|
|24 months |CMIN           |BANGLADESH   |     8|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     9|       0|     18|   243|
|24 months |CMIN           |BANGLADESH   |     9|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |    10|       0|     18|   243|
|24 months |CMIN           |BANGLADESH   |    10|       1|      1|   243|
|24 months |CMIN           |BANGLADESH   |    11|       0|      2|   243|
|24 months |CMIN           |BANGLADESH   |    11|       1|      0|   243|
|24 months |CMIN           |BANGLADESH   |    12|       0|     43|   243|
|24 months |CMIN           |BANGLADESH   |    12|       1|      0|   243|
|24 months |CONTENT        |PERU         |     1|       0|      8|   164|
|24 months |CONTENT        |PERU         |     1|       1|      0|   164|
|24 months |CONTENT        |PERU         |     2|       0|     10|   164|
|24 months |CONTENT        |PERU         |     2|       1|      0|   164|
|24 months |CONTENT        |PERU         |     3|       0|     20|   164|
|24 months |CONTENT        |PERU         |     3|       1|      0|   164|
|24 months |CONTENT        |PERU         |     4|       0|     13|   164|
|24 months |CONTENT        |PERU         |     4|       1|      0|   164|
|24 months |CONTENT        |PERU         |     5|       0|     22|   164|
|24 months |CONTENT        |PERU         |     5|       1|      0|   164|
|24 months |CONTENT        |PERU         |     6|       0|     11|   164|
|24 months |CONTENT        |PERU         |     6|       1|      0|   164|
|24 months |CONTENT        |PERU         |     7|       0|     13|   164|
|24 months |CONTENT        |PERU         |     7|       1|      0|   164|
|24 months |CONTENT        |PERU         |     8|       0|     23|   164|
|24 months |CONTENT        |PERU         |     8|       1|      0|   164|
|24 months |CONTENT        |PERU         |     9|       0|     11|   164|
|24 months |CONTENT        |PERU         |     9|       1|      0|   164|
|24 months |CONTENT        |PERU         |    10|       0|     12|   164|
|24 months |CONTENT        |PERU         |    10|       1|      0|   164|
|24 months |CONTENT        |PERU         |    11|       0|     17|   164|
|24 months |CONTENT        |PERU         |    11|       1|      0|   164|
|24 months |CONTENT        |PERU         |    12|       0|      4|   164|
|24 months |CONTENT        |PERU         |    12|       1|      0|   164|
|24 months |EE             |PAKISTAN     |     1|       0|     13|   168|
|24 months |EE             |PAKISTAN     |     1|       1|      1|   168|
|24 months |EE             |PAKISTAN     |     2|       0|      4|   168|
|24 months |EE             |PAKISTAN     |     2|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     3|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     3|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     4|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     4|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     5|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     5|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     6|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     6|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     7|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     7|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     8|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     8|       1|      0|   168|
|24 months |EE             |PAKISTAN     |     9|       0|      0|   168|
|24 months |EE             |PAKISTAN     |     9|       1|      0|   168|
|24 months |EE             |PAKISTAN     |    10|       0|      4|   168|
|24 months |EE             |PAKISTAN     |    10|       1|      0|   168|
|24 months |EE             |PAKISTAN     |    11|       0|     64|   168|
|24 months |EE             |PAKISTAN     |    11|       1|      2|   168|
|24 months |EE             |PAKISTAN     |    12|       0|     79|   168|
|24 months |EE             |PAKISTAN     |    12|       1|      1|   168|
|24 months |GMS-Nepal      |NEPAL        |     1|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     1|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     2|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     2|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     3|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     3|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     4|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     4|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     5|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     5|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     6|       0|     66|   487|
|24 months |GMS-Nepal      |NEPAL        |     6|       1|      6|   487|
|24 months |GMS-Nepal      |NEPAL        |     7|       0|    195|   487|
|24 months |GMS-Nepal      |NEPAL        |     7|       1|      5|   487|
|24 months |GMS-Nepal      |NEPAL        |     8|       0|    211|   487|
|24 months |GMS-Nepal      |NEPAL        |     8|       1|      4|   487|
|24 months |GMS-Nepal      |NEPAL        |     9|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     9|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    10|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    10|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    11|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    11|       1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    12|       0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    12|       1|      0|   487|
|24 months |JiVitA-3       |BANGLADESH   |     1|       0|    689|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     1|       1|     15|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     2|       0|    590|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     2|       1|     15|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     3|       0|    704|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     3|       1|     26|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     4|       0|    510|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     4|       1|     25|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     5|       0|    370|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     5|       1|     15|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     6|       0|    542|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     6|       1|     22|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     7|       0|    609|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     7|       1|     43|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     8|       0|    610|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     8|       1|     38|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     9|       0|    697|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     9|       1|     37|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    10|       0|    840|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    10|       1|     34|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    11|       0|    913|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    11|       1|     34|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    12|       0|   1194|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    12|       1|     31|  8603|
|24 months |JiVitA-4       |BANGLADESH   |     1|       0|     44|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     1|       1|      1|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     2|       0|    313|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     2|       1|     10|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     3|       0|    398|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     3|       1|      5|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     4|       0|    778|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     4|       1|     26|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     5|       0|    540|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     5|       1|     22|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     6|       0|    405|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     6|       1|     18|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     7|       0|    768|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     7|       1|     20|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     8|       0|    475|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     8|       1|      5|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     9|       0|    417|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     9|       1|      8|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    10|       0|    266|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    10|       1|      4|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    11|       0|    134|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    11|       1|      8|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    12|       0|     68|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    12|       1|      2|  4735|
|24 months |Keneba         |GAMBIA       |     1|       0|    153|  1726|
|24 months |Keneba         |GAMBIA       |     1|       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |     2|       0|    172|  1726|
|24 months |Keneba         |GAMBIA       |     2|       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |     3|       0|    154|  1726|
|24 months |Keneba         |GAMBIA       |     3|       1|      0|  1726|
|24 months |Keneba         |GAMBIA       |     4|       0|    167|  1726|
|24 months |Keneba         |GAMBIA       |     4|       1|      2|  1726|
|24 months |Keneba         |GAMBIA       |     5|       0|    121|  1726|
|24 months |Keneba         |GAMBIA       |     5|       1|      4|  1726|
|24 months |Keneba         |GAMBIA       |     6|       0|    130|  1726|
|24 months |Keneba         |GAMBIA       |     6|       1|      1|  1726|
|24 months |Keneba         |GAMBIA       |     7|       0|     95|  1726|
|24 months |Keneba         |GAMBIA       |     7|       1|      0|  1726|
|24 months |Keneba         |GAMBIA       |     8|       0|     90|  1726|
|24 months |Keneba         |GAMBIA       |     8|       1|      4|  1726|
|24 months |Keneba         |GAMBIA       |     9|       0|    151|  1726|
|24 months |Keneba         |GAMBIA       |     9|       1|      3|  1726|
|24 months |Keneba         |GAMBIA       |    10|       0|    150|  1726|
|24 months |Keneba         |GAMBIA       |    10|       1|      4|  1726|
|24 months |Keneba         |GAMBIA       |    11|       0|    188|  1726|
|24 months |Keneba         |GAMBIA       |    11|       1|      1|  1726|
|24 months |Keneba         |GAMBIA       |    12|       0|    125|  1726|
|24 months |Keneba         |GAMBIA       |    12|       1|      7|  1726|
|24 months |LCNI-5         |MALAWI       |     1|       0|     40|   563|
|24 months |LCNI-5         |MALAWI       |     1|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     2|       0|     86|   563|
|24 months |LCNI-5         |MALAWI       |     2|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     3|       0|     67|   563|
|24 months |LCNI-5         |MALAWI       |     3|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     4|       0|     74|   563|
|24 months |LCNI-5         |MALAWI       |     4|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     5|       0|     62|   563|
|24 months |LCNI-5         |MALAWI       |     5|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     6|       0|     63|   563|
|24 months |LCNI-5         |MALAWI       |     6|       1|      1|   563|
|24 months |LCNI-5         |MALAWI       |     7|       0|     39|   563|
|24 months |LCNI-5         |MALAWI       |     7|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     8|       0|     27|   563|
|24 months |LCNI-5         |MALAWI       |     8|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     9|       0|     20|   563|
|24 months |LCNI-5         |MALAWI       |     9|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |    10|       0|     25|   563|
|24 months |LCNI-5         |MALAWI       |    10|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |    11|       0|     35|   563|
|24 months |LCNI-5         |MALAWI       |    11|       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |    12|       0|     24|   563|
|24 months |LCNI-5         |MALAWI       |    12|       1|      0|   563|
|24 months |MAL-ED         |INDIA        |     1|       0|     19|   227|
|24 months |MAL-ED         |INDIA        |     1|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     2|       0|     18|   227|
|24 months |MAL-ED         |INDIA        |     2|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     3|       0|     18|   227|
|24 months |MAL-ED         |INDIA        |     3|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     4|       0|     15|   227|
|24 months |MAL-ED         |INDIA        |     4|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     5|       0|      8|   227|
|24 months |MAL-ED         |INDIA        |     5|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     6|       0|     15|   227|
|24 months |MAL-ED         |INDIA        |     6|       1|      2|   227|
|24 months |MAL-ED         |INDIA        |     7|       0|     22|   227|
|24 months |MAL-ED         |INDIA        |     7|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     8|       0|     22|   227|
|24 months |MAL-ED         |INDIA        |     8|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |     9|       0|     18|   227|
|24 months |MAL-ED         |INDIA        |     9|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |    10|       0|     27|   227|
|24 months |MAL-ED         |INDIA        |    10|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |    11|       0|     24|   227|
|24 months |MAL-ED         |INDIA        |    11|       1|      0|   227|
|24 months |MAL-ED         |INDIA        |    12|       0|     19|   227|
|24 months |MAL-ED         |INDIA        |    12|       1|      0|   227|
|24 months |MAL-ED         |BANGLADESH   |     1|       0|     15|   212|
|24 months |MAL-ED         |BANGLADESH   |     1|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|       0|     17|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|       0|     20|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|       0|     20|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|       0|     19|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|       0|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|       0|     20|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|       0|     21|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|       0|     19|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|       0|     20|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|       0|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|       0|     26|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|       1|      0|   212|
|24 months |MAL-ED         |PERU         |     1|       0|     28|   201|
|24 months |MAL-ED         |PERU         |     1|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     2|       0|     19|   201|
|24 months |MAL-ED         |PERU         |     2|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     3|       0|     14|   201|
|24 months |MAL-ED         |PERU         |     3|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     4|       0|     12|   201|
|24 months |MAL-ED         |PERU         |     4|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     5|       0|     19|   201|
|24 months |MAL-ED         |PERU         |     5|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     6|       0|     11|   201|
|24 months |MAL-ED         |PERU         |     6|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     7|       0|     15|   201|
|24 months |MAL-ED         |PERU         |     7|       1|      0|   201|
|24 months |MAL-ED         |PERU         |     8|       0|     11|   201|
|24 months |MAL-ED         |PERU         |     8|       1|      1|   201|
|24 months |MAL-ED         |PERU         |     9|       0|     21|   201|
|24 months |MAL-ED         |PERU         |     9|       1|      0|   201|
|24 months |MAL-ED         |PERU         |    10|       0|     13|   201|
|24 months |MAL-ED         |PERU         |    10|       1|      0|   201|
|24 months |MAL-ED         |PERU         |    11|       0|     20|   201|
|24 months |MAL-ED         |PERU         |    11|       1|      1|   201|
|24 months |MAL-ED         |PERU         |    12|       0|     16|   201|
|24 months |MAL-ED         |PERU         |    12|       1|      0|   201|
|24 months |MAL-ED         |NEPAL        |     1|       0|     19|   228|
|24 months |MAL-ED         |NEPAL        |     1|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     2|       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     2|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     3|       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     3|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     4|       0|     19|   228|
|24 months |MAL-ED         |NEPAL        |     4|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     5|       0|     18|   228|
|24 months |MAL-ED         |NEPAL        |     5|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     6|       0|     22|   228|
|24 months |MAL-ED         |NEPAL        |     6|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     7|       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     7|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     8|       0|     24|   228|
|24 months |MAL-ED         |NEPAL        |     8|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     9|       0|     13|   228|
|24 months |MAL-ED         |NEPAL        |     9|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |    10|       0|     21|   228|
|24 months |MAL-ED         |NEPAL        |    10|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |    11|       0|     23|   228|
|24 months |MAL-ED         |NEPAL        |    11|       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |    12|       0|     18|   228|
|24 months |MAL-ED         |NEPAL        |    12|       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |     1|       0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |     1|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     2|       0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |     2|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     3|       0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     3|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     4|       0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |     4|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     5|       0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     5|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     6|       0|      5|   169|
|24 months |MAL-ED         |BRAZIL       |     6|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     7|       0|     11|   169|
|24 months |MAL-ED         |BRAZIL       |     7|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     8|       0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |     8|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     9|       0|     26|   169|
|24 months |MAL-ED         |BRAZIL       |     9|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    10|       0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |    10|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    11|       0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    11|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |    12|       0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    12|       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |     1|       0|     19|   214|
|24 months |MAL-ED         |TANZANIA     |     1|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     2|       0|     18|   214|
|24 months |MAL-ED         |TANZANIA     |     2|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     3|       0|     21|   214|
|24 months |MAL-ED         |TANZANIA     |     3|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     4|       0|      8|   214|
|24 months |MAL-ED         |TANZANIA     |     4|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     5|       0|     14|   214|
|24 months |MAL-ED         |TANZANIA     |     5|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     6|       0|     19|   214|
|24 months |MAL-ED         |TANZANIA     |     6|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     7|       0|     24|   214|
|24 months |MAL-ED         |TANZANIA     |     7|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     8|       0|     12|   214|
|24 months |MAL-ED         |TANZANIA     |     8|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     9|       0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |     9|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |    10|       0|     15|   214|
|24 months |MAL-ED         |TANZANIA     |    10|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |    11|       0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |    11|       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |    12|       0|     24|   214|
|24 months |MAL-ED         |TANZANIA     |    12|       1|      0|   214|
|24 months |MAL-ED         |SOUTH AFRICA |     1|       0|     34|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     1|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|       0|     21|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|       0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|       0|     12|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|       0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|       0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|       0|     24|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|       0|      8|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|       0|     19|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|       0|     25|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|       0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|       0|     32|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|       1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |     1|       0|     42|   428|
|24 months |NIH-Birth      |BANGLADESH   |     1|       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |     2|       0|     36|   428|
|24 months |NIH-Birth      |BANGLADESH   |     2|       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |     3|       0|     40|   428|
|24 months |NIH-Birth      |BANGLADESH   |     3|       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |     4|       0|     33|   428|
|24 months |NIH-Birth      |BANGLADESH   |     4|       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |     5|       0|     33|   428|
|24 months |NIH-Birth      |BANGLADESH   |     5|       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |     6|       0|     30|   428|
|24 months |NIH-Birth      |BANGLADESH   |     6|       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |     7|       0|     36|   428|
|24 months |NIH-Birth      |BANGLADESH   |     7|       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |     8|       0|     30|   428|
|24 months |NIH-Birth      |BANGLADESH   |     8|       1|      0|   428|
|24 months |NIH-Birth      |BANGLADESH   |     9|       0|     18|   428|
|24 months |NIH-Birth      |BANGLADESH   |     9|       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |    10|       0|     38|   428|
|24 months |NIH-Birth      |BANGLADESH   |    10|       1|      2|   428|
|24 months |NIH-Birth      |BANGLADESH   |    11|       0|     38|   428|
|24 months |NIH-Birth      |BANGLADESH   |    11|       1|      2|   428|
|24 months |NIH-Birth      |BANGLADESH   |    12|       0|     44|   428|
|24 months |NIH-Birth      |BANGLADESH   |    12|       1|      1|   428|
|24 months |PROBIT         |BELARUS      |     1|       0|    263|  3970|
|24 months |PROBIT         |BELARUS      |     1|       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |     2|       0|    209|  3970|
|24 months |PROBIT         |BELARUS      |     2|       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |     3|       0|    319|  3970|
|24 months |PROBIT         |BELARUS      |     3|       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |     4|       0|    322|  3970|
|24 months |PROBIT         |BELARUS      |     4|       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |     5|       0|    301|  3970|
|24 months |PROBIT         |BELARUS      |     5|       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |     6|       0|    264|  3970|
|24 months |PROBIT         |BELARUS      |     6|       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |     7|       0|    363|  3970|
|24 months |PROBIT         |BELARUS      |     7|       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |     8|       0|    346|  3970|
|24 months |PROBIT         |BELARUS      |     8|       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |     9|       0|    374|  3970|
|24 months |PROBIT         |BELARUS      |     9|       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |    10|       0|    388|  3970|
|24 months |PROBIT         |BELARUS      |    10|       1|      1|  3970|
|24 months |PROBIT         |BELARUS      |    11|       0|    386|  3970|
|24 months |PROBIT         |BELARUS      |    11|       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |    12|       0|    428|  3970|
|24 months |PROBIT         |BELARUS      |    12|       1|      1|  3970|
|24 months |PROVIDE        |BANGLADESH   |     1|       0|     28|   579|
|24 months |PROVIDE        |BANGLADESH   |     1|       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |     2|       0|     32|   579|
|24 months |PROVIDE        |BANGLADESH   |     2|       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |     3|       0|     30|   579|
|24 months |PROVIDE        |BANGLADESH   |     3|       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |     4|       0|     40|   579|
|24 months |PROVIDE        |BANGLADESH   |     4|       1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |     5|       0|     32|   579|
|24 months |PROVIDE        |BANGLADESH   |     5|       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |     6|       0|     40|   579|
|24 months |PROVIDE        |BANGLADESH   |     6|       1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |     7|       0|     74|   579|
|24 months |PROVIDE        |BANGLADESH   |     7|       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |     8|       0|     68|   579|
|24 months |PROVIDE        |BANGLADESH   |     8|       1|      2|   579|
|24 months |PROVIDE        |BANGLADESH   |     9|       0|     59|   579|
|24 months |PROVIDE        |BANGLADESH   |     9|       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |    10|       0|     66|   579|
|24 months |PROVIDE        |BANGLADESH   |    10|       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |    11|       0|     63|   579|
|24 months |PROVIDE        |BANGLADESH   |    11|       1|      1|   579|
|24 months |PROVIDE        |BANGLADESH   |    12|       0|     38|   579|
|24 months |PROVIDE        |BANGLADESH   |    12|       1|      0|   579|
|24 months |TanzaniaChild2 |TANZANIA     |     1|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     1|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     2|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     2|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     3|       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     3|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     4|       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     4|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     5|       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     5|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     7|       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     7|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     8|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     8|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     9|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     9|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    10|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    10|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    11|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    11|       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    12|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    12|       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |     1|       0|     35|   409|
|24 months |Vellore Crypto |INDIA        |     1|       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |     2|       0|     28|   409|
|24 months |Vellore Crypto |INDIA        |     2|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |     3|       0|     29|   409|
|24 months |Vellore Crypto |INDIA        |     3|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |     4|       0|     22|   409|
|24 months |Vellore Crypto |INDIA        |     4|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |     5|       0|     20|   409|
|24 months |Vellore Crypto |INDIA        |     5|       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |     6|       0|     36|   409|
|24 months |Vellore Crypto |INDIA        |     6|       1|      1|   409|
|24 months |Vellore Crypto |INDIA        |     7|       0|     36|   409|
|24 months |Vellore Crypto |INDIA        |     7|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |     8|       0|     43|   409|
|24 months |Vellore Crypto |INDIA        |     8|       1|      2|   409|
|24 months |Vellore Crypto |INDIA        |     9|       0|     27|   409|
|24 months |Vellore Crypto |INDIA        |     9|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |    10|       0|     36|   409|
|24 months |Vellore Crypto |INDIA        |    10|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |    11|       0|     41|   409|
|24 months |Vellore Crypto |INDIA        |    11|       1|      0|   409|
|24 months |Vellore Crypto |INDIA        |    12|       0|     51|   409|
|24 months |Vellore Crypto |INDIA        |    12|       1|      0|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|       0|     47|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|       1|      2|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|       0|     60|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|       1|      3|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|       0|     50|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|       1|      6|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|       0|     42|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|       1|      3|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|       0|     44|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|       1|      6|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|       0|     41|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|       1|      3|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|       0|     30|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|       1|      2|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|       0|     27|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|       1|      3|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|       0|      2|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|       1|      0|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|       0|      4|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|       1|      0|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|       0|     20|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|       1|      0|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|       0|     35|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|       1|      3|   433|


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
* agecat: Birth, studyid: Keneba, country: GAMBIA
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


