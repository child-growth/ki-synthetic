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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      | month| wasted| n_cell|     n|
|:---------|:--------------|:------------|-----:|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|      0|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|      0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|      0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|      0|     10|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|      0|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|      0|      4|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|      1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|      0|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|      1|      2|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|      0|      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|      1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|      0|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|      1|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|      0|      2|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|      1|      1|    86|
|Birth     |CMIN           |BANGLADESH   |     1|      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     1|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     2|      0|      4|    19|
|Birth     |CMIN           |BANGLADESH   |     2|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     3|      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |     3|      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |     4|      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     4|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     5|      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |     5|      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |     6|      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     6|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     7|      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     7|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |     8|      0|      4|    19|
|Birth     |CMIN           |BANGLADESH   |     8|      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |     9|      0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |     9|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |    10|      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |    10|      1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |    11|      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |    11|      1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |    12|      0|      0|    19|
|Birth     |CMIN           |BANGLADESH   |    12|      1|      0|    19|
|Birth     |CONTENT        |PERU         |     1|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     1|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     2|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     2|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     3|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     3|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     4|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     4|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     5|      0|      2|     2|
|Birth     |CONTENT        |PERU         |     5|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     6|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     6|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     7|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     7|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     8|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     8|      1|      0|     2|
|Birth     |CONTENT        |PERU         |     9|      0|      0|     2|
|Birth     |CONTENT        |PERU         |     9|      1|      0|     2|
|Birth     |CONTENT        |PERU         |    10|      0|      0|     2|
|Birth     |CONTENT        |PERU         |    10|      1|      0|     2|
|Birth     |CONTENT        |PERU         |    11|      0|      0|     2|
|Birth     |CONTENT        |PERU         |    11|      1|      0|     2|
|Birth     |CONTENT        |PERU         |    12|      0|      0|     2|
|Birth     |CONTENT        |PERU         |    12|      1|      0|     2|
|Birth     |EE             |PAKISTAN     |     1|      0|     35|   177|
|Birth     |EE             |PAKISTAN     |     1|      1|      4|   177|
|Birth     |EE             |PAKISTAN     |     2|      0|     35|   177|
|Birth     |EE             |PAKISTAN     |     2|      1|      1|   177|
|Birth     |EE             |PAKISTAN     |     3|      0|     14|   177|
|Birth     |EE             |PAKISTAN     |     3|      1|      2|   177|
|Birth     |EE             |PAKISTAN     |     4|      0|      7|   177|
|Birth     |EE             |PAKISTAN     |     4|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |     5|      0|      0|   177|
|Birth     |EE             |PAKISTAN     |     5|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |     6|      0|      0|   177|
|Birth     |EE             |PAKISTAN     |     6|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |     7|      0|      0|   177|
|Birth     |EE             |PAKISTAN     |     7|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |     8|      0|      0|   177|
|Birth     |EE             |PAKISTAN     |     8|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |     9|      0|      0|   177|
|Birth     |EE             |PAKISTAN     |     9|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |    10|      0|      0|   177|
|Birth     |EE             |PAKISTAN     |    10|      1|      0|   177|
|Birth     |EE             |PAKISTAN     |    11|      0|     32|   177|
|Birth     |EE             |PAKISTAN     |    11|      1|      9|   177|
|Birth     |EE             |PAKISTAN     |    12|      0|     32|   177|
|Birth     |EE             |PAKISTAN     |    12|      1|      6|   177|
|Birth     |GMS-Nepal      |NEPAL        |     1|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     1|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     2|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     2|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     3|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     3|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     4|      0|      1|   641|
|Birth     |GMS-Nepal      |NEPAL        |     4|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     5|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     5|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     6|      0|    122|   641|
|Birth     |GMS-Nepal      |NEPAL        |     6|      1|     29|   641|
|Birth     |GMS-Nepal      |NEPAL        |     7|      0|    192|   641|
|Birth     |GMS-Nepal      |NEPAL        |     7|      1|     48|   641|
|Birth     |GMS-Nepal      |NEPAL        |     8|      0|    194|   641|
|Birth     |GMS-Nepal      |NEPAL        |     8|      1|     55|   641|
|Birth     |GMS-Nepal      |NEPAL        |     9|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |     9|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    10|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    10|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    11|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    11|      1|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    12|      0|      0|   641|
|Birth     |GMS-Nepal      |NEPAL        |    12|      1|      0|   641|
|Birth     |JiVitA-3       |BANGLADESH   |     1|      0|   1483| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     1|      1|    145| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     2|      0|   1271| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     2|      1|    140| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     3|      0|   1535| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     3|      1|    180| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     4|      0|   1121| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     4|      1|    133| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     5|      0|    792| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     5|      1|    103| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     6|      0|    816| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     6|      1|    102| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     7|      0|    958| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     7|      1|     94| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     8|      0|   1225| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     8|      1|    157| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     9|      0|   1605| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |     9|      1|    258| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    10|      0|   1678| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    10|      1|    235| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    11|      0|   1686| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    11|      1|    219| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    12|      0|   1871| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |    12|      1|    207| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |     1|      0|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     1|      1|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     2|      0|    261|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     2|      1|     16|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     3|      0|    281|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     3|      1|     35|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     4|      0|    357|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     4|      1|     38|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     5|      0|    343|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     5|      1|     34|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     6|      0|    264|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     6|      1|     31|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     7|      0|    284|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     7|      1|     31|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     8|      0|    201|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     8|      1|     25|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     9|      0|    112|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |     9|      1|     22|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    10|      0|     54|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    10|      1|      7|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    11|      0|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    11|      1|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    12|      0|      0|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |    12|      1|      0|  2396|
|Birth     |Keneba         |GAMBIA       |     1|      0|     93|  1466|
|Birth     |Keneba         |GAMBIA       |     1|      1|     40|  1466|
|Birth     |Keneba         |GAMBIA       |     2|      0|    113|  1466|
|Birth     |Keneba         |GAMBIA       |     2|      1|     40|  1466|
|Birth     |Keneba         |GAMBIA       |     3|      0|    104|  1466|
|Birth     |Keneba         |GAMBIA       |     3|      1|     36|  1466|
|Birth     |Keneba         |GAMBIA       |     4|      0|    124|  1466|
|Birth     |Keneba         |GAMBIA       |     4|      1|     35|  1466|
|Birth     |Keneba         |GAMBIA       |     5|      0|     79|  1466|
|Birth     |Keneba         |GAMBIA       |     5|      1|     24|  1466|
|Birth     |Keneba         |GAMBIA       |     6|      0|     80|  1466|
|Birth     |Keneba         |GAMBIA       |     6|      1|     22|  1466|
|Birth     |Keneba         |GAMBIA       |     7|      0|     74|  1466|
|Birth     |Keneba         |GAMBIA       |     7|      1|     11|  1466|
|Birth     |Keneba         |GAMBIA       |     8|      0|     57|  1466|
|Birth     |Keneba         |GAMBIA       |     8|      1|     17|  1466|
|Birth     |Keneba         |GAMBIA       |     9|      0|     84|  1466|
|Birth     |Keneba         |GAMBIA       |     9|      1|     32|  1466|
|Birth     |Keneba         |GAMBIA       |    10|      0|     89|  1466|
|Birth     |Keneba         |GAMBIA       |    10|      1|     29|  1466|
|Birth     |Keneba         |GAMBIA       |    11|      0|    121|  1466|
|Birth     |Keneba         |GAMBIA       |    11|      1|     47|  1466|
|Birth     |Keneba         |GAMBIA       |    12|      0|     84|  1466|
|Birth     |Keneba         |GAMBIA       |    12|      1|     31|  1466|
|Birth     |MAL-ED         |INDIA        |     1|      0|      2|    45|
|Birth     |MAL-ED         |INDIA        |     1|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     2|      0|      4|    45|
|Birth     |MAL-ED         |INDIA        |     2|      1|      2|    45|
|Birth     |MAL-ED         |INDIA        |     3|      0|      3|    45|
|Birth     |MAL-ED         |INDIA        |     3|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     4|      0|      4|    45|
|Birth     |MAL-ED         |INDIA        |     4|      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |     5|      0|      3|    45|
|Birth     |MAL-ED         |INDIA        |     5|      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |     6|      0|      1|    45|
|Birth     |MAL-ED         |INDIA        |     6|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     7|      0|      3|    45|
|Birth     |MAL-ED         |INDIA        |     7|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     8|      0|      9|    45|
|Birth     |MAL-ED         |INDIA        |     8|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |     9|      0|      2|    45|
|Birth     |MAL-ED         |INDIA        |     9|      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |    10|      0|      6|    45|
|Birth     |MAL-ED         |INDIA        |    10|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |    11|      0|      3|    45|
|Birth     |MAL-ED         |INDIA        |    11|      1|      0|    45|
|Birth     |MAL-ED         |INDIA        |    12|      0|      0|    45|
|Birth     |MAL-ED         |INDIA        |    12|      1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |     1|      0|     17|   215|
|Birth     |MAL-ED         |BANGLADESH   |     1|      1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |     2|      0|     14|   215|
|Birth     |MAL-ED         |BANGLADESH   |     2|      1|      5|   215|
|Birth     |MAL-ED         |BANGLADESH   |     3|      0|     20|   215|
|Birth     |MAL-ED         |BANGLADESH   |     3|      1|      4|   215|
|Birth     |MAL-ED         |BANGLADESH   |     4|      0|     15|   215|
|Birth     |MAL-ED         |BANGLADESH   |     4|      1|      4|   215|
|Birth     |MAL-ED         |BANGLADESH   |     5|      0|     16|   215|
|Birth     |MAL-ED         |BANGLADESH   |     5|      1|      1|   215|
|Birth     |MAL-ED         |BANGLADESH   |     6|      0|      6|   215|
|Birth     |MAL-ED         |BANGLADESH   |     6|      1|      0|   215|
|Birth     |MAL-ED         |BANGLADESH   |     7|      0|     11|   215|
|Birth     |MAL-ED         |BANGLADESH   |     7|      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |     8|      0|     19|   215|
|Birth     |MAL-ED         |BANGLADESH   |     8|      1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |     9|      0|     11|   215|
|Birth     |MAL-ED         |BANGLADESH   |     9|      1|      6|   215|
|Birth     |MAL-ED         |BANGLADESH   |    10|      0|     17|   215|
|Birth     |MAL-ED         |BANGLADESH   |    10|      1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |    11|      0|     13|   215|
|Birth     |MAL-ED         |BANGLADESH   |    11|      1|      2|   215|
|Birth     |MAL-ED         |BANGLADESH   |    12|      0|     20|   215|
|Birth     |MAL-ED         |BANGLADESH   |    12|      1|      4|   215|
|Birth     |MAL-ED         |PERU         |     1|      0|     27|   228|
|Birth     |MAL-ED         |PERU         |     1|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |     2|      0|     19|   228|
|Birth     |MAL-ED         |PERU         |     2|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |     3|      0|     19|   228|
|Birth     |MAL-ED         |PERU         |     3|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |     4|      0|     14|   228|
|Birth     |MAL-ED         |PERU         |     4|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |     5|      0|     18|   228|
|Birth     |MAL-ED         |PERU         |     5|      1|      1|   228|
|Birth     |MAL-ED         |PERU         |     6|      0|     14|   228|
|Birth     |MAL-ED         |PERU         |     6|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |     7|      0|     18|   228|
|Birth     |MAL-ED         |PERU         |     7|      1|      1|   228|
|Birth     |MAL-ED         |PERU         |     8|      0|     15|   228|
|Birth     |MAL-ED         |PERU         |     8|      1|      1|   228|
|Birth     |MAL-ED         |PERU         |     9|      0|     19|   228|
|Birth     |MAL-ED         |PERU         |     9|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |    10|      0|     20|   228|
|Birth     |MAL-ED         |PERU         |    10|      1|      0|   228|
|Birth     |MAL-ED         |PERU         |    11|      0|     26|   228|
|Birth     |MAL-ED         |PERU         |    11|      1|      2|   228|
|Birth     |MAL-ED         |PERU         |    12|      0|     14|   228|
|Birth     |MAL-ED         |PERU         |    12|      1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |     1|      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     1|      1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     2|      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     2|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     3|      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     3|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     4|      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     4|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     5|      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     5|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     6|      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     6|      1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     7|      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     7|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     8|      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |     8|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |     9|      0|      2|    26|
|Birth     |MAL-ED         |NEPAL        |     9|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |    10|      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |    10|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |    11|      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |    11|      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |    12|      0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |    12|      1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |     1|      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |     1|      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |     2|      0|     10|    62|
|Birth     |MAL-ED         |BRAZIL       |     2|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     3|      0|      7|    62|
|Birth     |MAL-ED         |BRAZIL       |     3|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     4|      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |     4|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     5|      0|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |     5|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     6|      0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |     6|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     7|      0|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |     7|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     8|      0|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |     8|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |     9|      0|      5|    62|
|Birth     |MAL-ED         |BRAZIL       |     9|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |    10|      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |    10|      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |    11|      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |    11|      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |    12|      0|      4|    62|
|Birth     |MAL-ED         |BRAZIL       |    12|      1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |     1|      0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |     1|      1|      1|   115|
|Birth     |MAL-ED         |TANZANIA     |     2|      0|     14|   115|
|Birth     |MAL-ED         |TANZANIA     |     2|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     3|      0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |     3|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     4|      0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |     4|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     5|      0|     10|   115|
|Birth     |MAL-ED         |TANZANIA     |     5|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     6|      0|      8|   115|
|Birth     |MAL-ED         |TANZANIA     |     6|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     7|      0|     15|   115|
|Birth     |MAL-ED         |TANZANIA     |     7|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     8|      0|      7|   115|
|Birth     |MAL-ED         |TANZANIA     |     8|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |     9|      0|      1|   115|
|Birth     |MAL-ED         |TANZANIA     |     9|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |    10|      0|      8|   115|
|Birth     |MAL-ED         |TANZANIA     |    10|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |    11|      0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |    11|      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |    12|      0|      9|   115|
|Birth     |MAL-ED         |TANZANIA     |    12|      1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|      0|      7|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|      0|     11|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|      0|      7|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|      1|      1|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|      0|      4|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|      1|      2|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|      0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|      0|      6|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|      1|      1|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|      0|     12|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|      1|      1|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|      0|      4|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|      0|     10|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|      0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|      0|     13|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|      1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|      0|     15|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|      1|      3|   120|
|Birth     |NIH-Birth      |BANGLADESH   |     1|      0|     39|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     1|      1|     15|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     2|      0|     39|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     2|      1|     16|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     3|      0|     41|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     3|      1|     17|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     4|      0|     34|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     4|      1|     14|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     5|      0|     26|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     5|      1|     19|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     6|      0|     24|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     6|      1|     16|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     7|      0|     28|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     7|      1|     17|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     8|      0|     29|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     8|      1|     12|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     9|      0|     20|   575|
|Birth     |NIH-Birth      |BANGLADESH   |     9|      1|     11|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    10|      0|     45|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    10|      1|     13|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    11|      0|     37|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    11|      1|     12|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    12|      0|     45|   575|
|Birth     |NIH-Birth      |BANGLADESH   |    12|      1|      6|   575|
|Birth     |PROBIT         |BELARUS      |     1|      0|    666| 13817|
|Birth     |PROBIT         |BELARUS      |     1|      1|    189| 13817|
|Birth     |PROBIT         |BELARUS      |     2|      0|    646| 13817|
|Birth     |PROBIT         |BELARUS      |     2|      1|    139| 13817|
|Birth     |PROBIT         |BELARUS      |     3|      0|    765| 13817|
|Birth     |PROBIT         |BELARUS      |     3|      1|    195| 13817|
|Birth     |PROBIT         |BELARUS      |     4|      0|    749| 13817|
|Birth     |PROBIT         |BELARUS      |     4|      1|    206| 13817|
|Birth     |PROBIT         |BELARUS      |     5|      0|    720| 13817|
|Birth     |PROBIT         |BELARUS      |     5|      1|    229| 13817|
|Birth     |PROBIT         |BELARUS      |     6|      0|    792| 13817|
|Birth     |PROBIT         |BELARUS      |     6|      1|    214| 13817|
|Birth     |PROBIT         |BELARUS      |     7|      0|    974| 13817|
|Birth     |PROBIT         |BELARUS      |     7|      1|    301| 13817|
|Birth     |PROBIT         |BELARUS      |     8|      0|   1027| 13817|
|Birth     |PROBIT         |BELARUS      |     8|      1|    291| 13817|
|Birth     |PROBIT         |BELARUS      |     9|      0|   1055| 13817|
|Birth     |PROBIT         |BELARUS      |     9|      1|    256| 13817|
|Birth     |PROBIT         |BELARUS      |    10|      0|   1170| 13817|
|Birth     |PROBIT         |BELARUS      |    10|      1|    326| 13817|
|Birth     |PROBIT         |BELARUS      |    11|      0|   1140| 13817|
|Birth     |PROBIT         |BELARUS      |    11|      1|    252| 13817|
|Birth     |PROBIT         |BELARUS      |    12|      0|   1207| 13817|
|Birth     |PROBIT         |BELARUS      |    12|      1|    308| 13817|
|Birth     |PROVIDE        |BANGLADESH   |     1|      0|     17|   532|
|Birth     |PROVIDE        |BANGLADESH   |     1|      1|      4|   532|
|Birth     |PROVIDE        |BANGLADESH   |     2|      0|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |     2|      1|      1|   532|
|Birth     |PROVIDE        |BANGLADESH   |     3|      0|     20|   532|
|Birth     |PROVIDE        |BANGLADESH   |     3|      1|      4|   532|
|Birth     |PROVIDE        |BANGLADESH   |     4|      0|     37|   532|
|Birth     |PROVIDE        |BANGLADESH   |     4|      1|      8|   532|
|Birth     |PROVIDE        |BANGLADESH   |     5|      0|     26|   532|
|Birth     |PROVIDE        |BANGLADESH   |     5|      1|      2|   532|
|Birth     |PROVIDE        |BANGLADESH   |     6|      0|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |     6|      1|     16|   532|
|Birth     |PROVIDE        |BANGLADESH   |     7|      0|     61|   532|
|Birth     |PROVIDE        |BANGLADESH   |     7|      1|     14|   532|
|Birth     |PROVIDE        |BANGLADESH   |     8|      0|     50|   532|
|Birth     |PROVIDE        |BANGLADESH   |     8|      1|     25|   532|
|Birth     |PROVIDE        |BANGLADESH   |     9|      0|     35|   532|
|Birth     |PROVIDE        |BANGLADESH   |     9|      1|     18|   532|
|Birth     |PROVIDE        |BANGLADESH   |    10|      0|     44|   532|
|Birth     |PROVIDE        |BANGLADESH   |    10|      1|     11|   532|
|Birth     |PROVIDE        |BANGLADESH   |    11|      0|     42|   532|
|Birth     |PROVIDE        |BANGLADESH   |    11|      1|     12|   532|
|Birth     |PROVIDE        |BANGLADESH   |    12|      0|     25|   532|
|Birth     |PROVIDE        |BANGLADESH   |    12|      1|      2|   532|
|Birth     |ResPak         |PAKISTAN     |     1|      0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     1|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     2|      0|      2|    38|
|Birth     |ResPak         |PAKISTAN     |     2|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     3|      0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     3|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     4|      0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     4|      1|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     5|      0|      6|    38|
|Birth     |ResPak         |PAKISTAN     |     5|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |     6|      0|      6|    38|
|Birth     |ResPak         |PAKISTAN     |     6|      1|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     7|      0|      6|    38|
|Birth     |ResPak         |PAKISTAN     |     7|      1|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     8|      0|      7|    38|
|Birth     |ResPak         |PAKISTAN     |     8|      1|      1|    38|
|Birth     |ResPak         |PAKISTAN     |     9|      0|      4|    38|
|Birth     |ResPak         |PAKISTAN     |     9|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    10|      0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |    10|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    11|      0|      1|    38|
|Birth     |ResPak         |PAKISTAN     |    11|      1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    12|      0|      0|    38|
|Birth     |ResPak         |PAKISTAN     |    12|      1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |     1|      0|     60|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     1|      1|      5|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     2|      0|     56|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     2|      1|      6|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     3|      0|     63|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     3|      1|      4|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     4|      0|     55|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     4|      1|      5|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     5|      0|     55|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     5|      1|     10|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     6|      0|     75|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     6|      1|     17|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     7|      0|     82|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     7|      1|     12|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     8|      0|    110|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     8|      1|     13|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     9|      0|    116|  1103|
|Birth     |SAS-CompFeed   |INDIA        |     9|      1|     19|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    10|      0|    104|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    10|      1|     19|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    11|      0|    107|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    11|      1|      6|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    12|      0|    102|  1103|
|Birth     |SAS-CompFeed   |INDIA        |    12|      1|      2|  1103|
|Birth     |Vellore Crypto |INDIA        |     1|      0|     25|   343|
|Birth     |Vellore Crypto |INDIA        |     1|      1|      5|   343|
|Birth     |Vellore Crypto |INDIA        |     2|      0|     20|   343|
|Birth     |Vellore Crypto |INDIA        |     2|      1|      2|   343|
|Birth     |Vellore Crypto |INDIA        |     3|      0|     20|   343|
|Birth     |Vellore Crypto |INDIA        |     3|      1|      6|   343|
|Birth     |Vellore Crypto |INDIA        |     4|      0|     12|   343|
|Birth     |Vellore Crypto |INDIA        |     4|      1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |     5|      0|      8|   343|
|Birth     |Vellore Crypto |INDIA        |     5|      1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |     6|      0|     19|   343|
|Birth     |Vellore Crypto |INDIA        |     6|      1|      6|   343|
|Birth     |Vellore Crypto |INDIA        |     7|      0|     20|   343|
|Birth     |Vellore Crypto |INDIA        |     7|      1|     11|   343|
|Birth     |Vellore Crypto |INDIA        |     8|      0|     27|   343|
|Birth     |Vellore Crypto |INDIA        |     8|      1|     10|   343|
|Birth     |Vellore Crypto |INDIA        |     9|      0|     17|   343|
|Birth     |Vellore Crypto |INDIA        |     9|      1|      7|   343|
|Birth     |Vellore Crypto |INDIA        |    10|      0|     22|   343|
|Birth     |Vellore Crypto |INDIA        |    10|      1|     10|   343|
|Birth     |Vellore Crypto |INDIA        |    11|      0|     30|   343|
|Birth     |Vellore Crypto |INDIA        |    11|      1|      9|   343|
|Birth     |Vellore Crypto |INDIA        |    12|      0|     31|   343|
|Birth     |Vellore Crypto |INDIA        |    12|      1|     12|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|      0|   1057| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|      1|    181| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|      0|    824| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|      1|    124| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|      0|    907| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|      1|    153| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|      0|    821| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|      1|    120| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|      0|    774| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|      1|    140| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|      0|    851| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|      1|    196| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|      0|    885| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|      1|    213| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|      0|    957| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|      1|    209| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|      0|   1086| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|      1|    182| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|      0|    822| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|      1|    162| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|      0|    881| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|      1|    189| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|      0|    991| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|      1|    192| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|      0|     26|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|      1|      8|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|      0|     12|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|      1|      4|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|      0|     28|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|      1|      4|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|      0|     41|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|      0|     28|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|      1|      4|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|      0|     36|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|      0|     38|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|      0|     15|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|      0|     17|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|      1|      2|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|      0|     25|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|      1|      4|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|      0|     36|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|      1|      7|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|      0|     20|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|      1|      5|   368|
|6 months  |CMIN           |BANGLADESH   |     1|      0|     24|   243|
|6 months  |CMIN           |BANGLADESH   |     1|      1|      4|   243|
|6 months  |CMIN           |BANGLADESH   |     2|      0|     26|   243|
|6 months  |CMIN           |BANGLADESH   |     2|      1|      4|   243|
|6 months  |CMIN           |BANGLADESH   |     3|      0|     17|   243|
|6 months  |CMIN           |BANGLADESH   |     3|      1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     4|      0|     14|   243|
|6 months  |CMIN           |BANGLADESH   |     4|      1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |     5|      0|     18|   243|
|6 months  |CMIN           |BANGLADESH   |     5|      1|      2|   243|
|6 months  |CMIN           |BANGLADESH   |     6|      0|     20|   243|
|6 months  |CMIN           |BANGLADESH   |     6|      1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |     7|      0|     11|   243|
|6 months  |CMIN           |BANGLADESH   |     7|      1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     8|      0|     13|   243|
|6 months  |CMIN           |BANGLADESH   |     8|      1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     9|      0|     16|   243|
|6 months  |CMIN           |BANGLADESH   |     9|      1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    10|      0|     20|   243|
|6 months  |CMIN           |BANGLADESH   |    10|      1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    11|      0|      2|   243|
|6 months  |CMIN           |BANGLADESH   |    11|      1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    12|      0|     41|   243|
|6 months  |CMIN           |BANGLADESH   |    12|      1|      3|   243|
|6 months  |CONTENT        |PERU         |     1|      0|      9|   215|
|6 months  |CONTENT        |PERU         |     1|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     2|      0|     13|   215|
|6 months  |CONTENT        |PERU         |     2|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     3|      0|     27|   215|
|6 months  |CONTENT        |PERU         |     3|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     4|      0|     18|   215|
|6 months  |CONTENT        |PERU         |     4|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     5|      0|     25|   215|
|6 months  |CONTENT        |PERU         |     5|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     6|      0|     14|   215|
|6 months  |CONTENT        |PERU         |     6|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     7|      0|     16|   215|
|6 months  |CONTENT        |PERU         |     7|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     8|      0|     26|   215|
|6 months  |CONTENT        |PERU         |     8|      1|      0|   215|
|6 months  |CONTENT        |PERU         |     9|      0|     19|   215|
|6 months  |CONTENT        |PERU         |     9|      1|      0|   215|
|6 months  |CONTENT        |PERU         |    10|      0|     23|   215|
|6 months  |CONTENT        |PERU         |    10|      1|      0|   215|
|6 months  |CONTENT        |PERU         |    11|      0|     18|   215|
|6 months  |CONTENT        |PERU         |    11|      1|      0|   215|
|6 months  |CONTENT        |PERU         |    12|      0|      7|   215|
|6 months  |CONTENT        |PERU         |    12|      1|      0|   215|
|6 months  |EE             |PAKISTAN     |     1|      0|     84|   375|
|6 months  |EE             |PAKISTAN     |     1|      1|      8|   375|
|6 months  |EE             |PAKISTAN     |     2|      0|     54|   375|
|6 months  |EE             |PAKISTAN     |     2|      1|     12|   375|
|6 months  |EE             |PAKISTAN     |     3|      0|     34|   375|
|6 months  |EE             |PAKISTAN     |     3|      1|      9|   375|
|6 months  |EE             |PAKISTAN     |     4|      0|     16|   375|
|6 months  |EE             |PAKISTAN     |     4|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |     5|      0|      0|   375|
|6 months  |EE             |PAKISTAN     |     5|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |     6|      0|      0|   375|
|6 months  |EE             |PAKISTAN     |     6|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |     7|      0|      0|   375|
|6 months  |EE             |PAKISTAN     |     7|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |     8|      0|      0|   375|
|6 months  |EE             |PAKISTAN     |     8|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |     9|      0|      0|   375|
|6 months  |EE             |PAKISTAN     |     9|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |    10|      0|      4|   375|
|6 months  |EE             |PAKISTAN     |    10|      1|      0|   375|
|6 months  |EE             |PAKISTAN     |    11|      0|     59|   375|
|6 months  |EE             |PAKISTAN     |    11|      1|     11|   375|
|6 months  |EE             |PAKISTAN     |    12|      0|     77|   375|
|6 months  |EE             |PAKISTAN     |    12|      1|      7|   375|
|6 months  |GMS-Nepal      |NEPAL        |     1|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     1|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|      0|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|      0|    108|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|      1|      7|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|      0|    194|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|      1|     17|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|      0|    210|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|      1|     27|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|      1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|      0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|      1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|      0|     18|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|      0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|      0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|      0|     25|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|      1|      2|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|      0|     31|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|      0|     39|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|      0|     24|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|      0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|      0|     33|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|      0|     29|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|      1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|      0|     27|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|      0|     10|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|      1|      0|   299|
|6 months  |JiVitA-3       |BANGLADESH   |     1|      0|   1238| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     1|      1|    127| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     2|      0|   1082| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     2|      1|     96| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     3|      0|   1311| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     3|      1|    110| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     4|      0|   1105| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     4|      1|     88| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     5|      0|   1055| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     5|      1|     86| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     6|      0|   1072| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     6|      1|     88| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     7|      0|   1130| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     7|      1|    116| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     8|      0|   1344| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     8|      1|    125| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     9|      0|   1439| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |     9|      1|    119| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    10|      0|   1511| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    10|      1|    163| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    11|      0|   1525| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    11|      1|    154| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    12|      0|   1551| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |    12|      1|    149| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |     1|      0|     47|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     1|      1|      3|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     2|      0|    162|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     2|      1|      3|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     3|      0|    401|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     3|      1|     31|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     4|      0|    798|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     4|      1|     58|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     5|      0|    563|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     5|      1|     28|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     6|      0|    410|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     6|      1|     26|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     7|      0|    782|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     7|      1|     57|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     8|      0|    493|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     8|      1|     24|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     9|      0|    399|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |     9|      1|     19|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    10|      0|    286|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    10|      1|     14|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    11|      0|    143|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    11|      1|     10|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    12|      0|     74|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |    12|      1|      2|  4833|
|6 months  |Keneba         |GAMBIA       |     1|      0|    171|  2089|
|6 months  |Keneba         |GAMBIA       |     1|      1|      9|  2089|
|6 months  |Keneba         |GAMBIA       |     2|      0|    210|  2089|
|6 months  |Keneba         |GAMBIA       |     2|      1|     14|  2089|
|6 months  |Keneba         |GAMBIA       |     3|      0|    173|  2089|
|6 months  |Keneba         |GAMBIA       |     3|      1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |     4|      0|    203|  2089|
|6 months  |Keneba         |GAMBIA       |     4|      1|     17|  2089|
|6 months  |Keneba         |GAMBIA       |     5|      0|    146|  2089|
|6 months  |Keneba         |GAMBIA       |     5|      1|     15|  2089|
|6 months  |Keneba         |GAMBIA       |     6|      0|    133|  2089|
|6 months  |Keneba         |GAMBIA       |     6|      1|     15|  2089|
|6 months  |Keneba         |GAMBIA       |     7|      0|    115|  2089|
|6 months  |Keneba         |GAMBIA       |     7|      1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |     8|      0|    106|  2089|
|6 months  |Keneba         |GAMBIA       |     8|      1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |     9|      0|    158|  2089|
|6 months  |Keneba         |GAMBIA       |     9|      1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |    10|      0|    156|  2089|
|6 months  |Keneba         |GAMBIA       |    10|      1|      6|  2089|
|6 months  |Keneba         |GAMBIA       |    11|      0|    224|  2089|
|6 months  |Keneba         |GAMBIA       |    11|      1|      9|  2089|
|6 months  |Keneba         |GAMBIA       |    12|      0|    173|  2089|
|6 months  |Keneba         |GAMBIA       |    12|      1|      6|  2089|
|6 months  |LCNI-5         |MALAWI       |     1|      0|     55|   839|
|6 months  |LCNI-5         |MALAWI       |     1|      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     2|      0|    111|   839|
|6 months  |LCNI-5         |MALAWI       |     2|      1|      3|   839|
|6 months  |LCNI-5         |MALAWI       |     3|      0|     97|   839|
|6 months  |LCNI-5         |MALAWI       |     3|      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |     4|      0|    109|   839|
|6 months  |LCNI-5         |MALAWI       |     4|      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |     5|      0|    109|   839|
|6 months  |LCNI-5         |MALAWI       |     5|      1|      2|   839|
|6 months  |LCNI-5         |MALAWI       |     6|      0|     88|   839|
|6 months  |LCNI-5         |MALAWI       |     6|      1|      3|   839|
|6 months  |LCNI-5         |MALAWI       |     7|      0|     71|   839|
|6 months  |LCNI-5         |MALAWI       |     7|      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |     8|      0|     41|   839|
|6 months  |LCNI-5         |MALAWI       |     8|      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |     9|      0|     29|   839|
|6 months  |LCNI-5         |MALAWI       |     9|      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |    10|      0|     35|   839|
|6 months  |LCNI-5         |MALAWI       |    10|      1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |    11|      0|     48|   839|
|6 months  |LCNI-5         |MALAWI       |    11|      1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |    12|      0|     32|   839|
|6 months  |LCNI-5         |MALAWI       |    12|      1|      2|   839|
|6 months  |MAL-ED         |INDIA        |     1|      0|     18|   236|
|6 months  |MAL-ED         |INDIA        |     1|      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     2|      0|     16|   236|
|6 months  |MAL-ED         |INDIA        |     2|      1|      2|   236|
|6 months  |MAL-ED         |INDIA        |     3|      0|     19|   236|
|6 months  |MAL-ED         |INDIA        |     3|      1|      2|   236|
|6 months  |MAL-ED         |INDIA        |     4|      0|     15|   236|
|6 months  |MAL-ED         |INDIA        |     4|      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     5|      0|      7|   236|
|6 months  |MAL-ED         |INDIA        |     5|      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     6|      0|     15|   236|
|6 months  |MAL-ED         |INDIA        |     6|      1|      3|   236|
|6 months  |MAL-ED         |INDIA        |     7|      0|     21|   236|
|6 months  |MAL-ED         |INDIA        |     7|      1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     8|      0|     23|   236|
|6 months  |MAL-ED         |INDIA        |     8|      1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     9|      0|     20|   236|
|6 months  |MAL-ED         |INDIA        |     9|      1|      0|   236|
|6 months  |MAL-ED         |INDIA        |    10|      0|     24|   236|
|6 months  |MAL-ED         |INDIA        |    10|      1|      3|   236|
|6 months  |MAL-ED         |INDIA        |    11|      0|     21|   236|
|6 months  |MAL-ED         |INDIA        |    11|      1|      4|   236|
|6 months  |MAL-ED         |INDIA        |    12|      0|     18|   236|
|6 months  |MAL-ED         |INDIA        |    12|      1|      1|   236|
|6 months  |MAL-ED         |BANGLADESH   |     1|      0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |     1|      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|      0|     19|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|      0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|      0|     21|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|      0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|      0|      7|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|      1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|      0|     18|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|      1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|      0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|      0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|      0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|      1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|      0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|      1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|      0|     26|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|      1|      0|   241|
|6 months  |MAL-ED         |PERU         |     1|      0|     36|   273|
|6 months  |MAL-ED         |PERU         |     1|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     2|      0|     21|   273|
|6 months  |MAL-ED         |PERU         |     2|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     3|      0|     21|   273|
|6 months  |MAL-ED         |PERU         |     3|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     4|      0|     20|   273|
|6 months  |MAL-ED         |PERU         |     4|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     5|      0|     25|   273|
|6 months  |MAL-ED         |PERU         |     5|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     6|      0|     18|   273|
|6 months  |MAL-ED         |PERU         |     6|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     7|      0|     22|   273|
|6 months  |MAL-ED         |PERU         |     7|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     8|      0|     16|   273|
|6 months  |MAL-ED         |PERU         |     8|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |     9|      0|     23|   273|
|6 months  |MAL-ED         |PERU         |     9|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |    10|      0|     19|   273|
|6 months  |MAL-ED         |PERU         |    10|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |    11|      0|     32|   273|
|6 months  |MAL-ED         |PERU         |    11|      1|      0|   273|
|6 months  |MAL-ED         |PERU         |    12|      0|     20|   273|
|6 months  |MAL-ED         |PERU         |    12|      1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |     1|      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     1|      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     2|      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     2|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     3|      0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |     3|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     4|      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     4|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     5|      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     5|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     6|      0|     21|   236|
|6 months  |MAL-ED         |NEPAL        |     6|      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     7|      0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |     7|      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     8|      0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |     8|      1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     9|      0|     14|   236|
|6 months  |MAL-ED         |NEPAL        |     9|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    10|      0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |    10|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    11|      0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |    11|      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    12|      0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |    12|      1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |     1|      0|     13|   209|
|6 months  |MAL-ED         |BRAZIL       |     1|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|      0|     24|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|      0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|      0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|      0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|      0|      7|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|      0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|      0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|      0|     29|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|      0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|      1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|      0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|      0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |     1|      0|     23|   247|
|6 months  |MAL-ED         |TANZANIA     |     1|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|      0|     27|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|      0|     21|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|      0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|      0|     13|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|      0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|      0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|      0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|      0|     21|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|      0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|      1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|      0|     28|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|      1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|      0|     29|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|      1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|      0|     37|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|      1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|      0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|      0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|      0|     13|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|      0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|      0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|      0|     24|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|      0|      9|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|      0|     18|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|      1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|      0|     23|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|      1|      3|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|      0|     20|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|      1|      3|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|      0|     36|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|      1|      0|   254|
|6 months  |NIH-Birth      |BANGLADESH   |     1|      0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     1|      1|      6|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|      0|     48|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|      1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|      0|     45|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|      1|      5|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|      0|     39|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|      1|      5|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|      0|     36|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|      1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|      0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|      1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|      0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|      1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|      0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|      1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|      0|     28|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|      1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|      0|     48|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|      1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|      0|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|      1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|      0|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|      1|      3|   537|
|6 months  |PROBIT         |BELARUS      |     1|      0|   1089| 15757|
|6 months  |PROBIT         |BELARUS      |     1|      1|     11| 15757|
|6 months  |PROBIT         |BELARUS      |     2|      0|    944| 15757|
|6 months  |PROBIT         |BELARUS      |     2|      1|      6| 15757|
|6 months  |PROBIT         |BELARUS      |     3|      0|   1110| 15757|
|6 months  |PROBIT         |BELARUS      |     3|      1|      4| 15757|
|6 months  |PROBIT         |BELARUS      |     4|      0|   1065| 15757|
|6 months  |PROBIT         |BELARUS      |     4|      1|      5| 15757|
|6 months  |PROBIT         |BELARUS      |     5|      0|   1090| 15757|
|6 months  |PROBIT         |BELARUS      |     5|      1|      6| 15757|
|6 months  |PROBIT         |BELARUS      |     6|      0|   1113| 15757|
|6 months  |PROBIT         |BELARUS      |     6|      1|      8| 15757|
|6 months  |PROBIT         |BELARUS      |     7|      0|   1356| 15757|
|6 months  |PROBIT         |BELARUS      |     7|      1|      9| 15757|
|6 months  |PROBIT         |BELARUS      |     8|      0|   1493| 15757|
|6 months  |PROBIT         |BELARUS      |     8|      1|      5| 15757|
|6 months  |PROBIT         |BELARUS      |     9|      0|   1474| 15757|
|6 months  |PROBIT         |BELARUS      |     9|      1|      8| 15757|
|6 months  |PROBIT         |BELARUS      |    10|      0|   1651| 15757|
|6 months  |PROBIT         |BELARUS      |    10|      1|     17| 15757|
|6 months  |PROBIT         |BELARUS      |    11|      0|   1571| 15757|
|6 months  |PROBIT         |BELARUS      |    11|      1|     19| 15757|
|6 months  |PROBIT         |BELARUS      |    12|      0|   1693| 15757|
|6 months  |PROBIT         |BELARUS      |    12|      1|     10| 15757|
|6 months  |PROVIDE        |BANGLADESH   |     1|      0|     28|   603|
|6 months  |PROVIDE        |BANGLADESH   |     1|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     2|      0|     33|   603|
|6 months  |PROVIDE        |BANGLADESH   |     2|      1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |     3|      0|     31|   603|
|6 months  |PROVIDE        |BANGLADESH   |     3|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     4|      0|     42|   603|
|6 months  |PROVIDE        |BANGLADESH   |     4|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     5|      0|     35|   603|
|6 months  |PROVIDE        |BANGLADESH   |     5|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     6|      0|     39|   603|
|6 months  |PROVIDE        |BANGLADESH   |     6|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |     7|      0|     72|   603|
|6 months  |PROVIDE        |BANGLADESH   |     7|      1|      5|   603|
|6 months  |PROVIDE        |BANGLADESH   |     8|      0|     73|   603|
|6 months  |PROVIDE        |BANGLADESH   |     8|      1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |     9|      0|     56|   603|
|6 months  |PROVIDE        |BANGLADESH   |     9|      1|      5|   603|
|6 months  |PROVIDE        |BANGLADESH   |    10|      0|     65|   603|
|6 months  |PROVIDE        |BANGLADESH   |    10|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |    11|      0|     66|   603|
|6 months  |PROVIDE        |BANGLADESH   |    11|      1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |    12|      0|     38|   603|
|6 months  |PROVIDE        |BANGLADESH   |    12|      1|      3|   603|
|6 months  |ResPak         |PAKISTAN     |     1|      0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     1|      1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     2|      0|      7|   239|
|6 months  |ResPak         |PAKISTAN     |     2|      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     3|      0|      9|   239|
|6 months  |ResPak         |PAKISTAN     |     3|      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     4|      0|     19|   239|
|6 months  |ResPak         |PAKISTAN     |     4|      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     5|      0|     26|   239|
|6 months  |ResPak         |PAKISTAN     |     5|      1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |     6|      0|     33|   239|
|6 months  |ResPak         |PAKISTAN     |     6|      1|      6|   239|
|6 months  |ResPak         |PAKISTAN     |     7|      0|     40|   239|
|6 months  |ResPak         |PAKISTAN     |     7|      1|      3|   239|
|6 months  |ResPak         |PAKISTAN     |     8|      0|     23|   239|
|6 months  |ResPak         |PAKISTAN     |     8|      1|      3|   239|
|6 months  |ResPak         |PAKISTAN     |     9|      0|     31|   239|
|6 months  |ResPak         |PAKISTAN     |     9|      1|      6|   239|
|6 months  |ResPak         |PAKISTAN     |    10|      0|     15|   239|
|6 months  |ResPak         |PAKISTAN     |    10|      1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |    11|      0|      5|   239|
|6 months  |ResPak         |PAKISTAN     |    11|      1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |    12|      0|      3|   239|
|6 months  |ResPak         |PAKISTAN     |    12|      1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |     1|      0|     64|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     1|      1|     21|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     2|      0|     69|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     2|      1|     12|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     3|      0|     67|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     3|      1|     12|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     4|      0|     67|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     4|      1|      7|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     5|      0|     64|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     5|      1|     12|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     6|      0|     94|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     6|      1|      8|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     7|      0|    110|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     7|      1|      5|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     8|      0|    144|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     8|      1|      8|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     9|      0|    156|  1334|
|6 months  |SAS-CompFeed   |INDIA        |     9|      1|      9|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    10|      0|    133|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    10|      1|     17|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    11|      0|     97|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    11|      1|     29|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    12|      0|    103|  1334|
|6 months  |SAS-CompFeed   |INDIA        |    12|      1|     26|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|      0|     49|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|      1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|      0|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|      1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|      0|     27|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|      1|      9|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|      0|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|      1|      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|      0|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|      1|      6|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|      0|     26|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|      1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|      0|     13|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|      1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|      0|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|      1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|      0|      9|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|      1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|      0|     22|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|      1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|      0|     41|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|      1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|      0|     50|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|      1|     12|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|      0|    130|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|      1|      8|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|      0|    141|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|      1|      8|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|      0|    142|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|      1|      4|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|      0|    142|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|      1|      5|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|      0|    151|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|      1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|      0|    137|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|      1|      5|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|      0|    180|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|      1|      7|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|      0|    201|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|      1|      5|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|      0|    175|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|      1|      5|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|      0|    198|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|      1|     12|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|      0|    176|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|      1|     16|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|      0|    168|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|      1|     10|  2028|
|6 months  |Vellore Crypto |INDIA        |     1|      0|     30|   408|
|6 months  |Vellore Crypto |INDIA        |     1|      1|      6|   408|
|6 months  |Vellore Crypto |INDIA        |     2|      0|     25|   408|
|6 months  |Vellore Crypto |INDIA        |     2|      1|      3|   408|
|6 months  |Vellore Crypto |INDIA        |     3|      0|     24|   408|
|6 months  |Vellore Crypto |INDIA        |     3|      1|      5|   408|
|6 months  |Vellore Crypto |INDIA        |     4|      0|     21|   408|
|6 months  |Vellore Crypto |INDIA        |     4|      1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |     5|      0|     20|   408|
|6 months  |Vellore Crypto |INDIA        |     5|      1|      1|   408|
|6 months  |Vellore Crypto |INDIA        |     6|      0|     30|   408|
|6 months  |Vellore Crypto |INDIA        |     6|      1|      7|   408|
|6 months  |Vellore Crypto |INDIA        |     7|      0|     31|   408|
|6 months  |Vellore Crypto |INDIA        |     7|      1|      5|   408|
|6 months  |Vellore Crypto |INDIA        |     8|      0|     38|   408|
|6 months  |Vellore Crypto |INDIA        |     8|      1|      7|   408|
|6 months  |Vellore Crypto |INDIA        |     9|      0|     23|   408|
|6 months  |Vellore Crypto |INDIA        |     9|      1|      2|   408|
|6 months  |Vellore Crypto |INDIA        |    10|      0|     32|   408|
|6 months  |Vellore Crypto |INDIA        |    10|      1|      5|   408|
|6 months  |Vellore Crypto |INDIA        |    11|      0|     37|   408|
|6 months  |Vellore Crypto |INDIA        |    11|      1|      4|   408|
|6 months  |Vellore Crypto |INDIA        |    12|      0|     43|   408|
|6 months  |Vellore Crypto |INDIA        |    12|      1|      8|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|      0|    792|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|      1|     24|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|      0|    581|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|      1|     21|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|      0|    706|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|      1|     29|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|      0|    644|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|      1|     17|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|      0|    600|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|      1|     17|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|      0|    645|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|      1|     21|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|      0|    643|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|      1|     17|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|      0|    729|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|      1|     31|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|      0|    764|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|      1|     21|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|      0|    598|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|      1|     20|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|      0|    728|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|      1|     18|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|      0|    810|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|      1|     29|  8505|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|      0|     34|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|      1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|      0|     15|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|      0|     31|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|      0|     42|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|      0|     31|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|      1|      3|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|      0|     34|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|      1|      4|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|      0|     36|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|      1|      4|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|      0|     16|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|      0|     18|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|      1|      1|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|      0|     27|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|      0|     42|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|      0|     23|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|      1|      2|   372|
|24 months |CMIN           |BANGLADESH   |     1|      0|     23|   243|
|24 months |CMIN           |BANGLADESH   |     1|      1|      4|   243|
|24 months |CMIN           |BANGLADESH   |     2|      0|     31|   243|
|24 months |CMIN           |BANGLADESH   |     2|      1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     3|      0|     19|   243|
|24 months |CMIN           |BANGLADESH   |     3|      1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     4|      0|     17|   243|
|24 months |CMIN           |BANGLADESH   |     4|      1|      1|   243|
|24 months |CMIN           |BANGLADESH   |     5|      0|     17|   243|
|24 months |CMIN           |BANGLADESH   |     5|      1|      2|   243|
|24 months |CMIN           |BANGLADESH   |     6|      0|     21|   243|
|24 months |CMIN           |BANGLADESH   |     6|      1|      1|   243|
|24 months |CMIN           |BANGLADESH   |     7|      0|     12|   243|
|24 months |CMIN           |BANGLADESH   |     7|      1|      0|   243|
|24 months |CMIN           |BANGLADESH   |     8|      0|     12|   243|
|24 months |CMIN           |BANGLADESH   |     8|      1|      1|   243|
|24 months |CMIN           |BANGLADESH   |     9|      0|     15|   243|
|24 months |CMIN           |BANGLADESH   |     9|      1|      3|   243|
|24 months |CMIN           |BANGLADESH   |    10|      0|     15|   243|
|24 months |CMIN           |BANGLADESH   |    10|      1|      4|   243|
|24 months |CMIN           |BANGLADESH   |    11|      0|      2|   243|
|24 months |CMIN           |BANGLADESH   |    11|      1|      0|   243|
|24 months |CMIN           |BANGLADESH   |    12|      0|     34|   243|
|24 months |CMIN           |BANGLADESH   |    12|      1|      9|   243|
|24 months |CONTENT        |PERU         |     1|      0|      7|   164|
|24 months |CONTENT        |PERU         |     1|      1|      1|   164|
|24 months |CONTENT        |PERU         |     2|      0|     10|   164|
|24 months |CONTENT        |PERU         |     2|      1|      0|   164|
|24 months |CONTENT        |PERU         |     3|      0|     20|   164|
|24 months |CONTENT        |PERU         |     3|      1|      0|   164|
|24 months |CONTENT        |PERU         |     4|      0|     13|   164|
|24 months |CONTENT        |PERU         |     4|      1|      0|   164|
|24 months |CONTENT        |PERU         |     5|      0|     22|   164|
|24 months |CONTENT        |PERU         |     5|      1|      0|   164|
|24 months |CONTENT        |PERU         |     6|      0|     11|   164|
|24 months |CONTENT        |PERU         |     6|      1|      0|   164|
|24 months |CONTENT        |PERU         |     7|      0|     13|   164|
|24 months |CONTENT        |PERU         |     7|      1|      0|   164|
|24 months |CONTENT        |PERU         |     8|      0|     23|   164|
|24 months |CONTENT        |PERU         |     8|      1|      0|   164|
|24 months |CONTENT        |PERU         |     9|      0|     11|   164|
|24 months |CONTENT        |PERU         |     9|      1|      0|   164|
|24 months |CONTENT        |PERU         |    10|      0|     12|   164|
|24 months |CONTENT        |PERU         |    10|      1|      0|   164|
|24 months |CONTENT        |PERU         |    11|      0|     17|   164|
|24 months |CONTENT        |PERU         |    11|      1|      0|   164|
|24 months |CONTENT        |PERU         |    12|      0|      4|   164|
|24 months |CONTENT        |PERU         |    12|      1|      0|   164|
|24 months |EE             |PAKISTAN     |     1|      0|     10|   168|
|24 months |EE             |PAKISTAN     |     1|      1|      4|   168|
|24 months |EE             |PAKISTAN     |     2|      0|      4|   168|
|24 months |EE             |PAKISTAN     |     2|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     3|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     3|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     4|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     4|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     5|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     5|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     6|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     6|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     7|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     7|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     8|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     8|      1|      0|   168|
|24 months |EE             |PAKISTAN     |     9|      0|      0|   168|
|24 months |EE             |PAKISTAN     |     9|      1|      0|   168|
|24 months |EE             |PAKISTAN     |    10|      0|      4|   168|
|24 months |EE             |PAKISTAN     |    10|      1|      0|   168|
|24 months |EE             |PAKISTAN     |    11|      0|     50|   168|
|24 months |EE             |PAKISTAN     |    11|      1|     16|   168|
|24 months |EE             |PAKISTAN     |    12|      0|     70|   168|
|24 months |EE             |PAKISTAN     |    12|      1|     10|   168|
|24 months |GMS-Nepal      |NEPAL        |     1|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     1|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     2|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     2|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     3|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     3|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     4|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     4|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     5|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     5|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     6|      0|     55|   487|
|24 months |GMS-Nepal      |NEPAL        |     6|      1|     17|   487|
|24 months |GMS-Nepal      |NEPAL        |     7|      0|    161|   487|
|24 months |GMS-Nepal      |NEPAL        |     7|      1|     39|   487|
|24 months |GMS-Nepal      |NEPAL        |     8|      0|    180|   487|
|24 months |GMS-Nepal      |NEPAL        |     8|      1|     35|   487|
|24 months |GMS-Nepal      |NEPAL        |     9|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |     9|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    10|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    10|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    11|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    11|      1|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    12|      0|      0|   487|
|24 months |GMS-Nepal      |NEPAL        |    12|      1|      0|   487|
|24 months |JiVitA-3       |BANGLADESH   |     1|      0|    603|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     1|      1|    101|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     2|      0|    505|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     2|      1|    100|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     3|      0|    601|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     3|      1|    129|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     4|      0|    417|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     4|      1|    118|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     5|      0|    302|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     5|      1|     83|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     6|      0|    406|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     6|      1|    158|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     7|      0|    466|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     7|      1|    186|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     8|      0|    475|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     8|      1|    173|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     9|      0|    543|  8603|
|24 months |JiVitA-3       |BANGLADESH   |     9|      1|    191|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    10|      0|    657|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    10|      1|    217|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    11|      0|    738|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    11|      1|    209|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    12|      0|   1012|  8603|
|24 months |JiVitA-3       |BANGLADESH   |    12|      1|    213|  8603|
|24 months |JiVitA-4       |BANGLADESH   |     1|      0|     36|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     1|      1|      9|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     2|      0|    282|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     2|      1|     41|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     3|      0|    343|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     3|      1|     60|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     4|      0|    655|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     4|      1|    149|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     5|      0|    428|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     5|      1|    134|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     6|      0|    321|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     6|      1|    102|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     7|      0|    616|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     7|      1|    172|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     8|      0|    389|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     8|      1|     91|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     9|      0|    357|  4735|
|24 months |JiVitA-4       |BANGLADESH   |     9|      1|     68|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    10|      0|    225|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    10|      1|     45|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    11|      0|    111|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    11|      1|     31|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    12|      0|     52|  4735|
|24 months |JiVitA-4       |BANGLADESH   |    12|      1|     18|  4735|
|24 months |Keneba         |GAMBIA       |     1|      0|    137|  1726|
|24 months |Keneba         |GAMBIA       |     1|      1|     18|  1726|
|24 months |Keneba         |GAMBIA       |     2|      0|    162|  1726|
|24 months |Keneba         |GAMBIA       |     2|      1|     12|  1726|
|24 months |Keneba         |GAMBIA       |     3|      0|    148|  1726|
|24 months |Keneba         |GAMBIA       |     3|      1|      6|  1726|
|24 months |Keneba         |GAMBIA       |     4|      0|    157|  1726|
|24 months |Keneba         |GAMBIA       |     4|      1|     12|  1726|
|24 months |Keneba         |GAMBIA       |     5|      0|    117|  1726|
|24 months |Keneba         |GAMBIA       |     5|      1|      8|  1726|
|24 months |Keneba         |GAMBIA       |     6|      0|    123|  1726|
|24 months |Keneba         |GAMBIA       |     6|      1|      8|  1726|
|24 months |Keneba         |GAMBIA       |     7|      0|     86|  1726|
|24 months |Keneba         |GAMBIA       |     7|      1|      9|  1726|
|24 months |Keneba         |GAMBIA       |     8|      0|     73|  1726|
|24 months |Keneba         |GAMBIA       |     8|      1|     21|  1726|
|24 months |Keneba         |GAMBIA       |     9|      0|    131|  1726|
|24 months |Keneba         |GAMBIA       |     9|      1|     23|  1726|
|24 months |Keneba         |GAMBIA       |    10|      0|    133|  1726|
|24 months |Keneba         |GAMBIA       |    10|      1|     21|  1726|
|24 months |Keneba         |GAMBIA       |    11|      0|    157|  1726|
|24 months |Keneba         |GAMBIA       |    11|      1|     32|  1726|
|24 months |Keneba         |GAMBIA       |    12|      0|    111|  1726|
|24 months |Keneba         |GAMBIA       |    12|      1|     21|  1726|
|24 months |LCNI-5         |MALAWI       |     1|      0|     39|   563|
|24 months |LCNI-5         |MALAWI       |     1|      1|      1|   563|
|24 months |LCNI-5         |MALAWI       |     2|      0|     85|   563|
|24 months |LCNI-5         |MALAWI       |     2|      1|      1|   563|
|24 months |LCNI-5         |MALAWI       |     3|      0|     64|   563|
|24 months |LCNI-5         |MALAWI       |     3|      1|      3|   563|
|24 months |LCNI-5         |MALAWI       |     4|      0|     74|   563|
|24 months |LCNI-5         |MALAWI       |     4|      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     5|      0|     61|   563|
|24 months |LCNI-5         |MALAWI       |     5|      1|      1|   563|
|24 months |LCNI-5         |MALAWI       |     6|      0|     61|   563|
|24 months |LCNI-5         |MALAWI       |     6|      1|      3|   563|
|24 months |LCNI-5         |MALAWI       |     7|      0|     39|   563|
|24 months |LCNI-5         |MALAWI       |     7|      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     8|      0|     27|   563|
|24 months |LCNI-5         |MALAWI       |     8|      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |     9|      0|     19|   563|
|24 months |LCNI-5         |MALAWI       |     9|      1|      1|   563|
|24 months |LCNI-5         |MALAWI       |    10|      0|     25|   563|
|24 months |LCNI-5         |MALAWI       |    10|      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |    11|      0|     35|   563|
|24 months |LCNI-5         |MALAWI       |    11|      1|      0|   563|
|24 months |LCNI-5         |MALAWI       |    12|      0|     24|   563|
|24 months |LCNI-5         |MALAWI       |    12|      1|      0|   563|
|24 months |MAL-ED         |INDIA        |     1|      0|     17|   227|
|24 months |MAL-ED         |INDIA        |     1|      1|      2|   227|
|24 months |MAL-ED         |INDIA        |     2|      0|     16|   227|
|24 months |MAL-ED         |INDIA        |     2|      1|      2|   227|
|24 months |MAL-ED         |INDIA        |     3|      0|     17|   227|
|24 months |MAL-ED         |INDIA        |     3|      1|      1|   227|
|24 months |MAL-ED         |INDIA        |     4|      0|     13|   227|
|24 months |MAL-ED         |INDIA        |     4|      1|      2|   227|
|24 months |MAL-ED         |INDIA        |     5|      0|      8|   227|
|24 months |MAL-ED         |INDIA        |     5|      1|      0|   227|
|24 months |MAL-ED         |INDIA        |     6|      0|     13|   227|
|24 months |MAL-ED         |INDIA        |     6|      1|      4|   227|
|24 months |MAL-ED         |INDIA        |     7|      0|     19|   227|
|24 months |MAL-ED         |INDIA        |     7|      1|      3|   227|
|24 months |MAL-ED         |INDIA        |     8|      0|     20|   227|
|24 months |MAL-ED         |INDIA        |     8|      1|      2|   227|
|24 months |MAL-ED         |INDIA        |     9|      0|     16|   227|
|24 months |MAL-ED         |INDIA        |     9|      1|      2|   227|
|24 months |MAL-ED         |INDIA        |    10|      0|     22|   227|
|24 months |MAL-ED         |INDIA        |    10|      1|      5|   227|
|24 months |MAL-ED         |INDIA        |    11|      0|     21|   227|
|24 months |MAL-ED         |INDIA        |    11|      1|      3|   227|
|24 months |MAL-ED         |INDIA        |    12|      0|     18|   227|
|24 months |MAL-ED         |INDIA        |    12|      1|      1|   227|
|24 months |MAL-ED         |BANGLADESH   |     1|      0|     14|   212|
|24 months |MAL-ED         |BANGLADESH   |     1|      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|      0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|      0|     19|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|      0|     17|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|      1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|      0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|      1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|      0|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|      1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|      0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|      0|     20|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|      1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|      0|     15|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|      1|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|      0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|      0|      8|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|      1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|      0|     25|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|      1|      1|   212|
|24 months |MAL-ED         |PERU         |     1|      0|     27|   201|
|24 months |MAL-ED         |PERU         |     1|      1|      1|   201|
|24 months |MAL-ED         |PERU         |     2|      0|     19|   201|
|24 months |MAL-ED         |PERU         |     2|      1|      0|   201|
|24 months |MAL-ED         |PERU         |     3|      0|     14|   201|
|24 months |MAL-ED         |PERU         |     3|      1|      0|   201|
|24 months |MAL-ED         |PERU         |     4|      0|     12|   201|
|24 months |MAL-ED         |PERU         |     4|      1|      0|   201|
|24 months |MAL-ED         |PERU         |     5|      0|     19|   201|
|24 months |MAL-ED         |PERU         |     5|      1|      0|   201|
|24 months |MAL-ED         |PERU         |     6|      0|     10|   201|
|24 months |MAL-ED         |PERU         |     6|      1|      1|   201|
|24 months |MAL-ED         |PERU         |     7|      0|     15|   201|
|24 months |MAL-ED         |PERU         |     7|      1|      0|   201|
|24 months |MAL-ED         |PERU         |     8|      0|     11|   201|
|24 months |MAL-ED         |PERU         |     8|      1|      1|   201|
|24 months |MAL-ED         |PERU         |     9|      0|     21|   201|
|24 months |MAL-ED         |PERU         |     9|      1|      0|   201|
|24 months |MAL-ED         |PERU         |    10|      0|     13|   201|
|24 months |MAL-ED         |PERU         |    10|      1|      0|   201|
|24 months |MAL-ED         |PERU         |    11|      0|     20|   201|
|24 months |MAL-ED         |PERU         |    11|      1|      1|   201|
|24 months |MAL-ED         |PERU         |    12|      0|     16|   201|
|24 months |MAL-ED         |PERU         |    12|      1|      0|   201|
|24 months |MAL-ED         |NEPAL        |     1|      0|     19|   228|
|24 months |MAL-ED         |NEPAL        |     1|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     2|      0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     2|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     3|      0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     3|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     4|      0|     19|   228|
|24 months |MAL-ED         |NEPAL        |     4|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     5|      0|     18|   228|
|24 months |MAL-ED         |NEPAL        |     5|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     6|      0|     21|   228|
|24 months |MAL-ED         |NEPAL        |     6|      1|      1|   228|
|24 months |MAL-ED         |NEPAL        |     7|      0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     7|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     8|      0|     23|   228|
|24 months |MAL-ED         |NEPAL        |     8|      1|      1|   228|
|24 months |MAL-ED         |NEPAL        |     9|      0|     13|   228|
|24 months |MAL-ED         |NEPAL        |     9|      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |    10|      0|     20|   228|
|24 months |MAL-ED         |NEPAL        |    10|      1|      1|   228|
|24 months |MAL-ED         |NEPAL        |    11|      0|     21|   228|
|24 months |MAL-ED         |NEPAL        |    11|      1|      2|   228|
|24 months |MAL-ED         |NEPAL        |    12|      0|     18|   228|
|24 months |MAL-ED         |NEPAL        |    12|      1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |     1|      0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |     1|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     2|      0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |     2|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     3|      0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     3|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     4|      0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |     4|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     5|      0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     5|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     6|      0|      5|   169|
|24 months |MAL-ED         |BRAZIL       |     6|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     7|      0|     11|   169|
|24 months |MAL-ED         |BRAZIL       |     7|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     8|      0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |     8|      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |     9|      0|     26|   169|
|24 months |MAL-ED         |BRAZIL       |     9|      1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    10|      0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    10|      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |    11|      0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    11|      1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |    12|      0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    12|      1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |     1|      0|     18|   214|
|24 months |MAL-ED         |TANZANIA     |     1|      1|      1|   214|
|24 months |MAL-ED         |TANZANIA     |     2|      0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |     2|      1|      1|   214|
|24 months |MAL-ED         |TANZANIA     |     3|      0|     21|   214|
|24 months |MAL-ED         |TANZANIA     |     3|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     4|      0|      8|   214|
|24 months |MAL-ED         |TANZANIA     |     4|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     5|      0|     14|   214|
|24 months |MAL-ED         |TANZANIA     |     5|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     6|      0|     19|   214|
|24 months |MAL-ED         |TANZANIA     |     6|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     7|      0|     24|   214|
|24 months |MAL-ED         |TANZANIA     |     7|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |     8|      0|     11|   214|
|24 months |MAL-ED         |TANZANIA     |     8|      1|      1|   214|
|24 months |MAL-ED         |TANZANIA     |     9|      0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |     9|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |    10|      0|     15|   214|
|24 months |MAL-ED         |TANZANIA     |    10|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |    11|      0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |    11|      1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |    12|      0|     23|   214|
|24 months |MAL-ED         |TANZANIA     |    12|      1|      1|   214|
|24 months |MAL-ED         |SOUTH AFRICA |     1|      0|     33|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     1|      1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|      0|     21|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|      0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|      0|     12|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|      0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|      0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|      0|     24|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|      0|      8|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|      0|     19|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|      0|     25|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|      0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|      1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|      0|     32|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|      1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |     1|      0|     39|   428|
|24 months |NIH-Birth      |BANGLADESH   |     1|      1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |     2|      0|     33|   428|
|24 months |NIH-Birth      |BANGLADESH   |     2|      1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |     3|      0|     33|   428|
|24 months |NIH-Birth      |BANGLADESH   |     3|      1|      8|   428|
|24 months |NIH-Birth      |BANGLADESH   |     4|      0|     26|   428|
|24 months |NIH-Birth      |BANGLADESH   |     4|      1|      8|   428|
|24 months |NIH-Birth      |BANGLADESH   |     5|      0|     32|   428|
|24 months |NIH-Birth      |BANGLADESH   |     5|      1|      2|   428|
|24 months |NIH-Birth      |BANGLADESH   |     6|      0|     26|   428|
|24 months |NIH-Birth      |BANGLADESH   |     6|      1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |     7|      0|     32|   428|
|24 months |NIH-Birth      |BANGLADESH   |     7|      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |     8|      0|     25|   428|
|24 months |NIH-Birth      |BANGLADESH   |     8|      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |     9|      0|     16|   428|
|24 months |NIH-Birth      |BANGLADESH   |     9|      1|      3|   428|
|24 months |NIH-Birth      |BANGLADESH   |    10|      0|     34|   428|
|24 months |NIH-Birth      |BANGLADESH   |    10|      1|      6|   428|
|24 months |NIH-Birth      |BANGLADESH   |    11|      0|     35|   428|
|24 months |NIH-Birth      |BANGLADESH   |    11|      1|      5|   428|
|24 months |NIH-Birth      |BANGLADESH   |    12|      0|     44|   428|
|24 months |NIH-Birth      |BANGLADESH   |    12|      1|      1|   428|
|24 months |PROBIT         |BELARUS      |     1|      0|    262|  3970|
|24 months |PROBIT         |BELARUS      |     1|      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |     2|      0|    207|  3970|
|24 months |PROBIT         |BELARUS      |     2|      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |     3|      0|    318|  3970|
|24 months |PROBIT         |BELARUS      |     3|      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |     4|      0|    319|  3970|
|24 months |PROBIT         |BELARUS      |     4|      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |     5|      0|    300|  3970|
|24 months |PROBIT         |BELARUS      |     5|      1|      1|  3970|
|24 months |PROBIT         |BELARUS      |     6|      0|    261|  3970|
|24 months |PROBIT         |BELARUS      |     6|      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |     7|      0|    363|  3970|
|24 months |PROBIT         |BELARUS      |     7|      1|      1|  3970|
|24 months |PROBIT         |BELARUS      |     8|      0|    343|  3970|
|24 months |PROBIT         |BELARUS      |     8|      1|      3|  3970|
|24 months |PROBIT         |BELARUS      |     9|      0|    371|  3970|
|24 months |PROBIT         |BELARUS      |     9|      1|      4|  3970|
|24 months |PROBIT         |BELARUS      |    10|      0|    387|  3970|
|24 months |PROBIT         |BELARUS      |    10|      1|      2|  3970|
|24 months |PROBIT         |BELARUS      |    11|      0|    381|  3970|
|24 months |PROBIT         |BELARUS      |    11|      1|      5|  3970|
|24 months |PROBIT         |BELARUS      |    12|      0|    426|  3970|
|24 months |PROBIT         |BELARUS      |    12|      1|      3|  3970|
|24 months |PROVIDE        |BANGLADESH   |     1|      0|     25|   579|
|24 months |PROVIDE        |BANGLADESH   |     1|      1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |     2|      0|     28|   579|
|24 months |PROVIDE        |BANGLADESH   |     2|      1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |     3|      0|     30|   579|
|24 months |PROVIDE        |BANGLADESH   |     3|      1|      0|   579|
|24 months |PROVIDE        |BANGLADESH   |     4|      0|     36|   579|
|24 months |PROVIDE        |BANGLADESH   |     4|      1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |     5|      0|     30|   579|
|24 months |PROVIDE        |BANGLADESH   |     5|      1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |     6|      0|     33|   579|
|24 months |PROVIDE        |BANGLADESH   |     6|      1|      9|   579|
|24 months |PROVIDE        |BANGLADESH   |     7|      0|     64|   579|
|24 months |PROVIDE        |BANGLADESH   |     7|      1|     11|   579|
|24 months |PROVIDE        |BANGLADESH   |     8|      0|     63|   579|
|24 months |PROVIDE        |BANGLADESH   |     8|      1|      7|   579|
|24 months |PROVIDE        |BANGLADESH   |     9|      0|     51|   579|
|24 months |PROVIDE        |BANGLADESH   |     9|      1|      9|   579|
|24 months |PROVIDE        |BANGLADESH   |    10|      0|     61|   579|
|24 months |PROVIDE        |BANGLADESH   |    10|      1|      6|   579|
|24 months |PROVIDE        |BANGLADESH   |    11|      0|     59|   579|
|24 months |PROVIDE        |BANGLADESH   |    11|      1|      5|   579|
|24 months |PROVIDE        |BANGLADESH   |    12|      0|     37|   579|
|24 months |PROVIDE        |BANGLADESH   |    12|      1|      1|   579|
|24 months |TanzaniaChild2 |TANZANIA     |     1|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     1|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     2|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     2|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     3|      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     3|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     4|      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     4|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     5|      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     5|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     7|      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     7|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     8|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     8|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     9|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     9|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    10|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    10|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    11|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    11|      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    12|      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    12|      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |     1|      0|     34|   409|
|24 months |Vellore Crypto |INDIA        |     1|      1|      2|   409|
|24 months |Vellore Crypto |INDIA        |     2|      0|     27|   409|
|24 months |Vellore Crypto |INDIA        |     2|      1|      1|   409|
|24 months |Vellore Crypto |INDIA        |     3|      0|     29|   409|
|24 months |Vellore Crypto |INDIA        |     3|      1|      0|   409|
|24 months |Vellore Crypto |INDIA        |     4|      0|     20|   409|
|24 months |Vellore Crypto |INDIA        |     4|      1|      2|   409|
|24 months |Vellore Crypto |INDIA        |     5|      0|     18|   409|
|24 months |Vellore Crypto |INDIA        |     5|      1|      3|   409|
|24 months |Vellore Crypto |INDIA        |     6|      0|     34|   409|
|24 months |Vellore Crypto |INDIA        |     6|      1|      3|   409|
|24 months |Vellore Crypto |INDIA        |     7|      0|     34|   409|
|24 months |Vellore Crypto |INDIA        |     7|      1|      2|   409|
|24 months |Vellore Crypto |INDIA        |     8|      0|     40|   409|
|24 months |Vellore Crypto |INDIA        |     8|      1|      5|   409|
|24 months |Vellore Crypto |INDIA        |     9|      0|     22|   409|
|24 months |Vellore Crypto |INDIA        |     9|      1|      5|   409|
|24 months |Vellore Crypto |INDIA        |    10|      0|     32|   409|
|24 months |Vellore Crypto |INDIA        |    10|      1|      4|   409|
|24 months |Vellore Crypto |INDIA        |    11|      0|     38|   409|
|24 months |Vellore Crypto |INDIA        |    11|      1|      3|   409|
|24 months |Vellore Crypto |INDIA        |    12|      0|     50|   409|
|24 months |Vellore Crypto |INDIA        |    12|      1|      1|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|      0|     42|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|      1|      7|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|      0|     53|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|      1|     10|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|      0|     43|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|      1|     13|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|      0|     39|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|      1|      6|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|      0|     35|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|      1|     15|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|      0|     37|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|      1|      7|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|      0|     26|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|      1|      6|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|      0|     23|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|      1|      7|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|      0|      2|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|      1|      0|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|      0|      4|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|      1|      0|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|      0|     19|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|      1|      1|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|      0|     31|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|      1|      7|   433|


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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


