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

**Outcome Variable:** stunted

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

|agecat    |studyid        |country      | month| stunted| n_cell|     n|
|:---------|:--------------|:------------|-----:|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|       0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|       1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|       0|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|       0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|       0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|       1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|       0|     11|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|       0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|       1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|       0|      3|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|       0|      5|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|       1|      3|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|       1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|       0|     10|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|       0|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|       1|      2|    92|
|Birth     |CMIN           |BANGLADESH   |     1|       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     1|       1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |     2|       0|      3|    26|
|Birth     |CMIN           |BANGLADESH   |     2|       1|      3|    26|
|Birth     |CMIN           |BANGLADESH   |     3|       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |     3|       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     4|       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     4|       1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |     5|       0|      3|    26|
|Birth     |CMIN           |BANGLADESH   |     5|       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     6|       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     6|       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     7|       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     7|       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     8|       0|      4|    26|
|Birth     |CMIN           |BANGLADESH   |     8|       1|      3|    26|
|Birth     |CMIN           |BANGLADESH   |     9|       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |     9|       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |    10|       0|      1|    26|
|Birth     |CMIN           |BANGLADESH   |    10|       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |    11|       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |    11|       1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |    12|       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |    12|       1|      0|    26|
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
|Birth     |EE             |PAKISTAN     |     1|       0|     26|   240|
|Birth     |EE             |PAKISTAN     |     1|       1|     35|   240|
|Birth     |EE             |PAKISTAN     |     2|       0|     31|   240|
|Birth     |EE             |PAKISTAN     |     2|       1|     18|   240|
|Birth     |EE             |PAKISTAN     |     3|       0|     15|   240|
|Birth     |EE             |PAKISTAN     |     3|       1|      9|   240|
|Birth     |EE             |PAKISTAN     |     4|       0|      5|   240|
|Birth     |EE             |PAKISTAN     |     4|       1|      5|   240|
|Birth     |EE             |PAKISTAN     |     5|       0|      0|   240|
|Birth     |EE             |PAKISTAN     |     5|       1|      0|   240|
|Birth     |EE             |PAKISTAN     |     6|       0|      0|   240|
|Birth     |EE             |PAKISTAN     |     6|       1|      0|   240|
|Birth     |EE             |PAKISTAN     |     7|       0|      0|   240|
|Birth     |EE             |PAKISTAN     |     7|       1|      0|   240|
|Birth     |EE             |PAKISTAN     |     8|       0|      0|   240|
|Birth     |EE             |PAKISTAN     |     8|       1|      0|   240|
|Birth     |EE             |PAKISTAN     |     9|       0|      0|   240|
|Birth     |EE             |PAKISTAN     |     9|       1|      0|   240|
|Birth     |EE             |PAKISTAN     |    10|       0|      0|   240|
|Birth     |EE             |PAKISTAN     |    10|       1|      0|   240|
|Birth     |EE             |PAKISTAN     |    11|       0|     33|   240|
|Birth     |EE             |PAKISTAN     |    11|       1|     14|   240|
|Birth     |EE             |PAKISTAN     |    12|       0|     30|   240|
|Birth     |EE             |PAKISTAN     |    12|       1|     19|   240|
|Birth     |GMS-Nepal      |NEPAL        |     1|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     1|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     2|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     2|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     3|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     3|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     4|       0|      1|   696|
|Birth     |GMS-Nepal      |NEPAL        |     4|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     5|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     5|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     6|       0|    132|   696|
|Birth     |GMS-Nepal      |NEPAL        |     6|       1|     28|   696|
|Birth     |GMS-Nepal      |NEPAL        |     7|       0|    213|   696|
|Birth     |GMS-Nepal      |NEPAL        |     7|       1|     52|   696|
|Birth     |GMS-Nepal      |NEPAL        |     8|       0|    228|   696|
|Birth     |GMS-Nepal      |NEPAL        |     8|       1|     42|   696|
|Birth     |GMS-Nepal      |NEPAL        |     9|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     9|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    10|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    10|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    11|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    11|       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    12|       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    12|       1|      0|   696|
|Birth     |JiVitA-3       |BANGLADESH   |     1|       0|   1336| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     1|       1|    776| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     2|       0|   1186| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     2|       1|    558| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     3|       0|   1453| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     3|       1|    607| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     4|       0|   1069| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     4|       1|    420| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     5|       0|    766| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     5|       1|    321| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     6|       0|    792| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     6|       1|    319| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     7|       0|    883| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     7|       1|    377| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     8|       0|   1170| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     8|       1|    545| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     9|       0|   1594| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     9|       1|    673| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    10|       0|   1589| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    10|       1|    839| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    11|       0|   1555| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    11|       1|    927| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    12|       0|   1675| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    12|       1|   1025| 22455|
|Birth     |JiVitA-4       |BANGLADESH   |     1|       0|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     1|       1|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     2|       0|    219|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     2|       1|    114|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     3|       0|    247|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     3|       1|    149|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     4|       0|    323|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     4|       1|    144|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     5|       0|    315|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     5|       1|    134|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     6|       0|    244|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     6|       1|    113|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     7|       0|    259|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     7|       1|     99|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     8|       0|    191|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     8|       1|     56|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     9|       0|    114|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     9|       1|     36|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    10|       0|     54|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    10|       1|     12|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    11|       0|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    11|       1|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    12|       0|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    12|       1|      0|  2823|
|Birth     |Keneba         |GAMBIA       |     1|       0|    130|  1543|
|Birth     |Keneba         |GAMBIA       |     1|       1|      8|  1543|
|Birth     |Keneba         |GAMBIA       |     2|       0|    151|  1543|
|Birth     |Keneba         |GAMBIA       |     2|       1|     12|  1543|
|Birth     |Keneba         |GAMBIA       |     3|       0|    142|  1543|
|Birth     |Keneba         |GAMBIA       |     3|       1|      5|  1543|
|Birth     |Keneba         |GAMBIA       |     4|       0|    161|  1543|
|Birth     |Keneba         |GAMBIA       |     4|       1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |     5|       0|    103|  1543|
|Birth     |Keneba         |GAMBIA       |     5|       1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |     6|       0|    105|  1543|
|Birth     |Keneba         |GAMBIA       |     6|       1|      3|  1543|
|Birth     |Keneba         |GAMBIA       |     7|       0|     85|  1543|
|Birth     |Keneba         |GAMBIA       |     7|       1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |     8|       0|     71|  1543|
|Birth     |Keneba         |GAMBIA       |     8|       1|      5|  1543|
|Birth     |Keneba         |GAMBIA       |     9|       0|    119|  1543|
|Birth     |Keneba         |GAMBIA       |     9|       1|      6|  1543|
|Birth     |Keneba         |GAMBIA       |    10|       0|    116|  1543|
|Birth     |Keneba         |GAMBIA       |    10|       1|      8|  1543|
|Birth     |Keneba         |GAMBIA       |    11|       0|    164|  1543|
|Birth     |Keneba         |GAMBIA       |    11|       1|     15|  1543|
|Birth     |Keneba         |GAMBIA       |    12|       0|    113|  1543|
|Birth     |Keneba         |GAMBIA       |    12|       1|     11|  1543|
|Birth     |MAL-ED         |INDIA        |     1|       0|      2|    47|
|Birth     |MAL-ED         |INDIA        |     1|       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     2|       0|      6|    47|
|Birth     |MAL-ED         |INDIA        |     2|       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     3|       0|      3|    47|
|Birth     |MAL-ED         |INDIA        |     3|       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     4|       0|      4|    47|
|Birth     |MAL-ED         |INDIA        |     4|       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |     5|       0|      4|    47|
|Birth     |MAL-ED         |INDIA        |     5|       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     6|       0|      1|    47|
|Birth     |MAL-ED         |INDIA        |     6|       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     7|       0|      3|    47|
|Birth     |MAL-ED         |INDIA        |     7|       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     8|       0|      6|    47|
|Birth     |MAL-ED         |INDIA        |     8|       1|      3|    47|
|Birth     |MAL-ED         |INDIA        |     9|       0|      2|    47|
|Birth     |MAL-ED         |INDIA        |     9|       1|      1|    47|
|Birth     |MAL-ED         |INDIA        |    10|       0|      5|    47|
|Birth     |MAL-ED         |INDIA        |    10|       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |    11|       0|      1|    47|
|Birth     |MAL-ED         |INDIA        |    11|       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |    12|       0|      0|    47|
|Birth     |MAL-ED         |INDIA        |    12|       1|      0|    47|
|Birth     |MAL-ED         |BANGLADESH   |     1|       0|     16|   231|
|Birth     |MAL-ED         |BANGLADESH   |     1|       1|      3|   231|
|Birth     |MAL-ED         |BANGLADESH   |     2|       0|     17|   231|
|Birth     |MAL-ED         |BANGLADESH   |     2|       1|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |     3|       0|     19|   231|
|Birth     |MAL-ED         |BANGLADESH   |     3|       1|      8|   231|
|Birth     |MAL-ED         |BANGLADESH   |     4|       0|     19|   231|
|Birth     |MAL-ED         |BANGLADESH   |     4|       1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |     5|       0|     13|   231|
|Birth     |MAL-ED         |BANGLADESH   |     5|       1|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |     6|       0|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |     6|       1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |     7|       0|     11|   231|
|Birth     |MAL-ED         |BANGLADESH   |     7|       1|      4|   231|
|Birth     |MAL-ED         |BANGLADESH   |     8|       0|     20|   231|
|Birth     |MAL-ED         |BANGLADESH   |     8|       1|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |     9|       0|     16|   231|
|Birth     |MAL-ED         |BANGLADESH   |     9|       1|      3|   231|
|Birth     |MAL-ED         |BANGLADESH   |    10|       0|     15|   231|
|Birth     |MAL-ED         |BANGLADESH   |    10|       1|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |    11|       0|     13|   231|
|Birth     |MAL-ED         |BANGLADESH   |    11|       1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |    12|       0|     23|   231|
|Birth     |MAL-ED         |BANGLADESH   |    12|       1|      2|   231|
|Birth     |MAL-ED         |PERU         |     1|       0|     24|   233|
|Birth     |MAL-ED         |PERU         |     1|       1|      4|   233|
|Birth     |MAL-ED         |PERU         |     2|       0|     17|   233|
|Birth     |MAL-ED         |PERU         |     2|       1|      3|   233|
|Birth     |MAL-ED         |PERU         |     3|       0|     16|   233|
|Birth     |MAL-ED         |PERU         |     3|       1|      3|   233|
|Birth     |MAL-ED         |PERU         |     4|       0|     13|   233|
|Birth     |MAL-ED         |PERU         |     4|       1|      2|   233|
|Birth     |MAL-ED         |PERU         |     5|       0|     19|   233|
|Birth     |MAL-ED         |PERU         |     5|       1|      1|   233|
|Birth     |MAL-ED         |PERU         |     6|       0|     13|   233|
|Birth     |MAL-ED         |PERU         |     6|       1|      1|   233|
|Birth     |MAL-ED         |PERU         |     7|       0|     17|   233|
|Birth     |MAL-ED         |PERU         |     7|       1|      2|   233|
|Birth     |MAL-ED         |PERU         |     8|       0|     16|   233|
|Birth     |MAL-ED         |PERU         |     8|       1|      0|   233|
|Birth     |MAL-ED         |PERU         |     9|       0|     19|   233|
|Birth     |MAL-ED         |PERU         |     9|       1|      0|   233|
|Birth     |MAL-ED         |PERU         |    10|       0|     20|   233|
|Birth     |MAL-ED         |PERU         |    10|       1|      0|   233|
|Birth     |MAL-ED         |PERU         |    11|       0|     21|   233|
|Birth     |MAL-ED         |PERU         |    11|       1|      7|   233|
|Birth     |MAL-ED         |PERU         |    12|       0|     12|   233|
|Birth     |MAL-ED         |PERU         |    12|       1|      3|   233|
|Birth     |MAL-ED         |NEPAL        |     1|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     1|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     2|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     2|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     3|       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |     3|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     4|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     4|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     5|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     5|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     6|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     6|       1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |     7|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     7|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     8|       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |     8|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     9|       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     9|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |    10|       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |    10|       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |    11|       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |    11|       1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |    12|       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |    12|       1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |     1|       0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     1|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     2|       0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |     2|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     3|       0|      7|    65|
|Birth     |MAL-ED         |BRAZIL       |     3|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     4|       0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |     4|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     5|       0|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |     5|       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |     6|       0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     6|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     7|       0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |     7|       1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |     8|       0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     8|       1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |     9|       0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |     9|       1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |    10|       0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |    10|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |    11|       0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |    11|       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |    12|       0|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |    12|       1|      2|    65|
|Birth     |MAL-ED         |TANZANIA     |     1|       0|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |     1|       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |     2|       0|     12|   125|
|Birth     |MAL-ED         |TANZANIA     |     2|       1|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |     3|       0|     13|   125|
|Birth     |MAL-ED         |TANZANIA     |     3|       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     4|       0|      6|   125|
|Birth     |MAL-ED         |TANZANIA     |     4|       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     5|       0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |     5|       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |     6|       0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |     6|       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |     7|       0|     13|   125|
|Birth     |MAL-ED         |TANZANIA     |     7|       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |     8|       0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |     8|       1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |     9|       0|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     9|       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |    10|       0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |    10|       1|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |    11|       0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |    11|       1|      4|   125|
|Birth     |MAL-ED         |TANZANIA     |    12|       0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |    12|       1|      1|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|       0|      9|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|       0|     13|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|       0|      8|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|       0|      5|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|       0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|       0|      7|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|       0|     11|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|       1|      2|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|       0|      3|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|       0|     10|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|       0|     13|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|       0|     10|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|       1|      3|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|       0|     18|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|       1|      1|   123|
|Birth     |NIH-Birth      |BANGLADESH   |     1|       0|     47|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     1|       1|     18|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     2|       0|     47|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     2|       1|     11|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     3|       0|     54|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     3|       1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     4|       0|     43|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     4|       1|      9|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     5|       0|     39|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     5|       1|      6|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     6|       0|     38|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     6|       1|      5|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     7|       0|     40|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     7|       1|      6|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     8|       0|     37|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     8|       1|      5|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     9|       0|     28|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     9|       1|      6|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    10|       0|     49|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    10|       1|     11|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    11|       0|     43|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    11|       1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    12|       0|     46|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    12|       1|      6|   608|
|Birth     |PROBIT         |BELARUS      |     1|       0|    858| 13893|
|Birth     |PROBIT         |BELARUS      |     1|       1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |     2|       0|    788| 13893|
|Birth     |PROBIT         |BELARUS      |     2|       1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |     3|       0|    965| 13893|
|Birth     |PROBIT         |BELARUS      |     3|       1|      4| 13893|
|Birth     |PROBIT         |BELARUS      |     4|       0|    952| 13893|
|Birth     |PROBIT         |BELARUS      |     4|       1|      4| 13893|
|Birth     |PROBIT         |BELARUS      |     5|       0|    957| 13893|
|Birth     |PROBIT         |BELARUS      |     5|       1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     6|       0|   1007| 13893|
|Birth     |PROBIT         |BELARUS      |     6|       1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     7|       0|   1278| 13893|
|Birth     |PROBIT         |BELARUS      |     7|       1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |     8|       0|   1324| 13893|
|Birth     |PROBIT         |BELARUS      |     8|       1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |     9|       0|   1311| 13893|
|Birth     |PROBIT         |BELARUS      |     9|       1|      4| 13893|
|Birth     |PROBIT         |BELARUS      |    10|       0|   1504| 13893|
|Birth     |PROBIT         |BELARUS      |    10|       1|      7| 13893|
|Birth     |PROBIT         |BELARUS      |    11|       0|   1394| 13893|
|Birth     |PROBIT         |BELARUS      |    11|       1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |    12|       0|   1521| 13893|
|Birth     |PROBIT         |BELARUS      |    12|       1|      2| 13893|
|Birth     |PROVIDE        |BANGLADESH   |     1|       0|     19|   539|
|Birth     |PROVIDE        |BANGLADESH   |     1|       1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |     2|       0|     28|   539|
|Birth     |PROVIDE        |BANGLADESH   |     2|       1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |     3|       0|     19|   539|
|Birth     |PROVIDE        |BANGLADESH   |     3|       1|      5|   539|
|Birth     |PROVIDE        |BANGLADESH   |     4|       0|     42|   539|
|Birth     |PROVIDE        |BANGLADESH   |     4|       1|      3|   539|
|Birth     |PROVIDE        |BANGLADESH   |     5|       0|     27|   539|
|Birth     |PROVIDE        |BANGLADESH   |     5|       1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |     6|       0|     41|   539|
|Birth     |PROVIDE        |BANGLADESH   |     6|       1|      5|   539|
|Birth     |PROVIDE        |BANGLADESH   |     7|       0|     65|   539|
|Birth     |PROVIDE        |BANGLADESH   |     7|       1|     15|   539|
|Birth     |PROVIDE        |BANGLADESH   |     8|       0|     67|   539|
|Birth     |PROVIDE        |BANGLADESH   |     8|       1|      8|   539|
|Birth     |PROVIDE        |BANGLADESH   |     9|       0|     51|   539|
|Birth     |PROVIDE        |BANGLADESH   |     9|       1|      3|   539|
|Birth     |PROVIDE        |BANGLADESH   |    10|       0|     54|   539|
|Birth     |PROVIDE        |BANGLADESH   |    10|       1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |    11|       0|     52|   539|
|Birth     |PROVIDE        |BANGLADESH   |    11|       1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |    12|       0|     26|   539|
|Birth     |PROVIDE        |BANGLADESH   |    12|       1|      1|   539|
|Birth     |ResPak         |PAKISTAN     |     1|       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     1|       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     2|       0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |     2|       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     3|       0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     3|       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     4|       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     4|       1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     5|       0|      4|    42|
|Birth     |ResPak         |PAKISTAN     |     5|       1|      4|    42|
|Birth     |ResPak         |PAKISTAN     |     6|       0|      6|    42|
|Birth     |ResPak         |PAKISTAN     |     6|       1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     7|       0|      6|    42|
|Birth     |ResPak         |PAKISTAN     |     7|       1|      3|    42|
|Birth     |ResPak         |PAKISTAN     |     8|       0|      3|    42|
|Birth     |ResPak         |PAKISTAN     |     8|       1|      5|    42|
|Birth     |ResPak         |PAKISTAN     |     9|       0|      4|    42|
|Birth     |ResPak         |PAKISTAN     |     9|       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    10|       0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |    10|       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    11|       0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |    11|       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    12|       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    12|       1|      0|    42|
|Birth     |SAS-CompFeed   |INDIA        |     1|       0|     55|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     1|       1|     27|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     2|       0|     52|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     2|       1|     20|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     3|       0|     53|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     3|       1|     27|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     4|       0|     52|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     4|       1|     11|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     5|       0|     56|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     5|       1|     24|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     6|       0|     76|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     6|       1|     26|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     7|       0|     69|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     7|       1|     32|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     8|       0|     93|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     8|       1|     52|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     9|       0|    116|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     9|       1|     32|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    10|       0|    101|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    10|       1|     37|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    11|       0|     94|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    11|       1|     28|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    12|       0|     86|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    12|       1|     33|  1252|
|Birth     |Vellore Crypto |INDIA        |     1|       0|     27|   388|
|Birth     |Vellore Crypto |INDIA        |     1|       1|      7|   388|
|Birth     |Vellore Crypto |INDIA        |     2|       0|     23|   388|
|Birth     |Vellore Crypto |INDIA        |     2|       1|      2|   388|
|Birth     |Vellore Crypto |INDIA        |     3|       0|     23|   388|
|Birth     |Vellore Crypto |INDIA        |     3|       1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |     4|       0|     20|   388|
|Birth     |Vellore Crypto |INDIA        |     4|       1|      2|   388|
|Birth     |Vellore Crypto |INDIA        |     5|       0|     20|   388|
|Birth     |Vellore Crypto |INDIA        |     5|       1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |     6|       0|     30|   388|
|Birth     |Vellore Crypto |INDIA        |     6|       1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |     7|       0|     31|   388|
|Birth     |Vellore Crypto |INDIA        |     7|       1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |     8|       0|     36|   388|
|Birth     |Vellore Crypto |INDIA        |     8|       1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |     9|       0|     23|   388|
|Birth     |Vellore Crypto |INDIA        |     9|       1|      2|   388|
|Birth     |Vellore Crypto |INDIA        |    10|       0|     33|   388|
|Birth     |Vellore Crypto |INDIA        |    10|       1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |    11|       0|     34|   388|
|Birth     |Vellore Crypto |INDIA        |    11|       1|      6|   388|
|Birth     |Vellore Crypto |INDIA        |    12|       0|     43|   388|
|Birth     |Vellore Crypto |INDIA        |    12|       1|      6|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|       0|   1173| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|       1|    176| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|       0|    887| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|       1|    154| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|       0|   1008| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|       1|    136| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|       0|    903| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|       1|    111| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|       0|    875| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|       1|    129| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|       0|   1006| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|       1|    129| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|       0|   1058| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|       1|    121| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|       0|   1141| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|       1|     91| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|       0|   1239| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|       1|     83| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|       0|    962| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|       1|     85| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|       0|   1045| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|       1|     95| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|       0|   1144| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|       1|    124| 13875|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|       0|     24|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|       1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|       0|     11|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|       1|      5|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|       0|     26|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|       1|      6|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|       0|     36|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|       1|      8|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|       0|     23|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|       1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|       0|     20|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|       1|     18|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|       0|     20|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|       1|     20|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|       0|     11|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|       1|      6|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|       0|     12|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|       1|      6|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|       0|     21|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|       1|      8|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|       0|     36|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|       1|      7|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|       0|     18|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|       1|      7|   369|
|6 months  |CMIN           |BANGLADESH   |     1|       0|     15|   243|
|6 months  |CMIN           |BANGLADESH   |     1|       1|     12|   243|
|6 months  |CMIN           |BANGLADESH   |     2|       0|     16|   243|
|6 months  |CMIN           |BANGLADESH   |     2|       1|     14|   243|
|6 months  |CMIN           |BANGLADESH   |     3|       0|     13|   243|
|6 months  |CMIN           |BANGLADESH   |     3|       1|      5|   243|
|6 months  |CMIN           |BANGLADESH   |     4|       0|     14|   243|
|6 months  |CMIN           |BANGLADESH   |     4|       1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |     5|       0|     15|   243|
|6 months  |CMIN           |BANGLADESH   |     5|       1|      5|   243|
|6 months  |CMIN           |BANGLADESH   |     6|       0|     17|   243|
|6 months  |CMIN           |BANGLADESH   |     6|       1|      6|   243|
|6 months  |CMIN           |BANGLADESH   |     7|       0|      9|   243|
|6 months  |CMIN           |BANGLADESH   |     7|       1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |     8|       0|      9|   243|
|6 months  |CMIN           |BANGLADESH   |     8|       1|      4|   243|
|6 months  |CMIN           |BANGLADESH   |     9|       0|      7|   243|
|6 months  |CMIN           |BANGLADESH   |     9|       1|      9|   243|
|6 months  |CMIN           |BANGLADESH   |    10|       0|      8|   243|
|6 months  |CMIN           |BANGLADESH   |    10|       1|     12|   243|
|6 months  |CMIN           |BANGLADESH   |    11|       0|      2|   243|
|6 months  |CMIN           |BANGLADESH   |    11|       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    12|       0|     25|   243|
|6 months  |CMIN           |BANGLADESH   |    12|       1|     20|   243|
|6 months  |CONTENT        |PERU         |     1|       0|      9|   215|
|6 months  |CONTENT        |PERU         |     1|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     2|       0|     13|   215|
|6 months  |CONTENT        |PERU         |     2|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     3|       0|     27|   215|
|6 months  |CONTENT        |PERU         |     3|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     4|       0|     16|   215|
|6 months  |CONTENT        |PERU         |     4|       1|      2|   215|
|6 months  |CONTENT        |PERU         |     5|       0|     24|   215|
|6 months  |CONTENT        |PERU         |     5|       1|      1|   215|
|6 months  |CONTENT        |PERU         |     6|       0|     13|   215|
|6 months  |CONTENT        |PERU         |     6|       1|      1|   215|
|6 months  |CONTENT        |PERU         |     7|       0|     16|   215|
|6 months  |CONTENT        |PERU         |     7|       1|      0|   215|
|6 months  |CONTENT        |PERU         |     8|       0|     23|   215|
|6 months  |CONTENT        |PERU         |     8|       1|      3|   215|
|6 months  |CONTENT        |PERU         |     9|       0|     18|   215|
|6 months  |CONTENT        |PERU         |     9|       1|      1|   215|
|6 months  |CONTENT        |PERU         |    10|       0|     23|   215|
|6 months  |CONTENT        |PERU         |    10|       1|      0|   215|
|6 months  |CONTENT        |PERU         |    11|       0|     17|   215|
|6 months  |CONTENT        |PERU         |    11|       1|      1|   215|
|6 months  |CONTENT        |PERU         |    12|       0|      7|   215|
|6 months  |CONTENT        |PERU         |    12|       1|      0|   215|
|6 months  |EE             |PAKISTAN     |     1|       0|     46|   373|
|6 months  |EE             |PAKISTAN     |     1|       1|     45|   373|
|6 months  |EE             |PAKISTAN     |     2|       0|     34|   373|
|6 months  |EE             |PAKISTAN     |     2|       1|     32|   373|
|6 months  |EE             |PAKISTAN     |     3|       0|     25|   373|
|6 months  |EE             |PAKISTAN     |     3|       1|     17|   373|
|6 months  |EE             |PAKISTAN     |     4|       0|      5|   373|
|6 months  |EE             |PAKISTAN     |     4|       1|     11|   373|
|6 months  |EE             |PAKISTAN     |     5|       0|      0|   373|
|6 months  |EE             |PAKISTAN     |     5|       1|      0|   373|
|6 months  |EE             |PAKISTAN     |     6|       0|      0|   373|
|6 months  |EE             |PAKISTAN     |     6|       1|      0|   373|
|6 months  |EE             |PAKISTAN     |     7|       0|      0|   373|
|6 months  |EE             |PAKISTAN     |     7|       1|      0|   373|
|6 months  |EE             |PAKISTAN     |     8|       0|      0|   373|
|6 months  |EE             |PAKISTAN     |     8|       1|      0|   373|
|6 months  |EE             |PAKISTAN     |     9|       0|      0|   373|
|6 months  |EE             |PAKISTAN     |     9|       1|      0|   373|
|6 months  |EE             |PAKISTAN     |    10|       0|      2|   373|
|6 months  |EE             |PAKISTAN     |    10|       1|      2|   373|
|6 months  |EE             |PAKISTAN     |    11|       0|     36|   373|
|6 months  |EE             |PAKISTAN     |    11|       1|     34|   373|
|6 months  |EE             |PAKISTAN     |    12|       0|     42|   373|
|6 months  |EE             |PAKISTAN     |    12|       1|     42|   373|
|6 months  |GMS-Nepal      |NEPAL        |     1|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     1|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|       1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|       0|     91|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|       1|     24|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|       0|    160|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|       1|     51|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|       0|    191|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|       1|     46|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|       1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|       0|     16|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|       1|      2|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|       0|     15|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|       1|      4|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|       0|     12|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|       1|      9|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|       0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|       1|      8|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|       0|     25|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|       1|      6|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|       0|     27|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|       1|     12|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|       0|     15|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|       1|      9|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|       0|     14|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|       1|      5|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|       0|     23|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|       1|     11|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|       0|     18|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|       1|     11|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|       0|     18|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|       1|     10|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|       0|      7|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|       1|      3|   299|
|6 months  |JiVitA-3       |BANGLADESH   |     1|       0|   1007| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     1|       1|    356| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     2|       0|    892| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     2|       1|    292| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     3|       0|   1092| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     3|       1|    330| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     4|       0|    921| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     4|       1|    272| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     5|       0|    862| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     5|       1|    282| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     6|       0|    887| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     6|       1|    279| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     7|       0|    931| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     7|       1|    321| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     8|       0|   1127| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     8|       1|    347| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     9|       0|   1192| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     9|       1|    365| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    10|       0|   1228| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    10|       1|    447| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    11|       0|   1198| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    11|       1|    479| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    12|       0|   1248| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    12|       1|    456| 16811|
|6 months  |JiVitA-4       |BANGLADESH   |     1|       0|     38|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     1|       1|     12|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     2|       0|    134|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     2|       1|     31|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     3|       0|    326|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     3|       1|    106|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     4|       0|    620|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     4|       1|    233|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     5|       0|    442|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     5|       1|    148|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     6|       0|    332|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     6|       1|    104|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     7|       0|    595|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     7|       1|    246|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     8|       0|    409|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     8|       1|    108|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     9|       0|    319|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     9|       1|     99|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    10|       0|    220|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    10|       1|     80|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    11|       0|    119|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    11|       1|     34|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    12|       0|     56|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    12|       1|     20|  4831|
|6 months  |Keneba         |GAMBIA       |     1|       0|    155|  2089|
|6 months  |Keneba         |GAMBIA       |     1|       1|     25|  2089|
|6 months  |Keneba         |GAMBIA       |     2|       0|    199|  2089|
|6 months  |Keneba         |GAMBIA       |     2|       1|     25|  2089|
|6 months  |Keneba         |GAMBIA       |     3|       0|    160|  2089|
|6 months  |Keneba         |GAMBIA       |     3|       1|     20|  2089|
|6 months  |Keneba         |GAMBIA       |     4|       0|    188|  2089|
|6 months  |Keneba         |GAMBIA       |     4|       1|     33|  2089|
|6 months  |Keneba         |GAMBIA       |     5|       0|    143|  2089|
|6 months  |Keneba         |GAMBIA       |     5|       1|     18|  2089|
|6 months  |Keneba         |GAMBIA       |     6|       0|    126|  2089|
|6 months  |Keneba         |GAMBIA       |     6|       1|     21|  2089|
|6 months  |Keneba         |GAMBIA       |     7|       0|     99|  2089|
|6 months  |Keneba         |GAMBIA       |     7|       1|     23|  2089|
|6 months  |Keneba         |GAMBIA       |     8|       0|     94|  2089|
|6 months  |Keneba         |GAMBIA       |     8|       1|     20|  2089|
|6 months  |Keneba         |GAMBIA       |     9|       0|    141|  2089|
|6 months  |Keneba         |GAMBIA       |     9|       1|     25|  2089|
|6 months  |Keneba         |GAMBIA       |    10|       0|    137|  2089|
|6 months  |Keneba         |GAMBIA       |    10|       1|     25|  2089|
|6 months  |Keneba         |GAMBIA       |    11|       0|    197|  2089|
|6 months  |Keneba         |GAMBIA       |    11|       1|     36|  2089|
|6 months  |Keneba         |GAMBIA       |    12|       0|    155|  2089|
|6 months  |Keneba         |GAMBIA       |    12|       1|     24|  2089|
|6 months  |LCNI-5         |MALAWI       |     1|       0|     39|   839|
|6 months  |LCNI-5         |MALAWI       |     1|       1|     16|   839|
|6 months  |LCNI-5         |MALAWI       |     2|       0|     75|   839|
|6 months  |LCNI-5         |MALAWI       |     2|       1|     39|   839|
|6 months  |LCNI-5         |MALAWI       |     3|       0|     63|   839|
|6 months  |LCNI-5         |MALAWI       |     3|       1|     35|   839|
|6 months  |LCNI-5         |MALAWI       |     4|       0|     61|   839|
|6 months  |LCNI-5         |MALAWI       |     4|       1|     49|   839|
|6 months  |LCNI-5         |MALAWI       |     5|       0|     72|   839|
|6 months  |LCNI-5         |MALAWI       |     5|       1|     39|   839|
|6 months  |LCNI-5         |MALAWI       |     6|       0|     62|   839|
|6 months  |LCNI-5         |MALAWI       |     6|       1|     29|   839|
|6 months  |LCNI-5         |MALAWI       |     7|       0|     40|   839|
|6 months  |LCNI-5         |MALAWI       |     7|       1|     32|   839|
|6 months  |LCNI-5         |MALAWI       |     8|       0|     28|   839|
|6 months  |LCNI-5         |MALAWI       |     8|       1|     13|   839|
|6 months  |LCNI-5         |MALAWI       |     9|       0|     18|   839|
|6 months  |LCNI-5         |MALAWI       |     9|       1|     11|   839|
|6 months  |LCNI-5         |MALAWI       |    10|       0|     21|   839|
|6 months  |LCNI-5         |MALAWI       |    10|       1|     14|   839|
|6 months  |LCNI-5         |MALAWI       |    11|       0|     32|   839|
|6 months  |LCNI-5         |MALAWI       |    11|       1|     17|   839|
|6 months  |LCNI-5         |MALAWI       |    12|       0|     19|   839|
|6 months  |LCNI-5         |MALAWI       |    12|       1|     15|   839|
|6 months  |MAL-ED         |INDIA        |     1|       0|     15|   236|
|6 months  |MAL-ED         |INDIA        |     1|       1|      4|   236|
|6 months  |MAL-ED         |INDIA        |     2|       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |     2|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     3|       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |     3|       1|      4|   236|
|6 months  |MAL-ED         |INDIA        |     4|       0|     11|   236|
|6 months  |MAL-ED         |INDIA        |     4|       1|      5|   236|
|6 months  |MAL-ED         |INDIA        |     5|       0|      7|   236|
|6 months  |MAL-ED         |INDIA        |     5|       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     6|       0|     16|   236|
|6 months  |MAL-ED         |INDIA        |     6|       1|      2|   236|
|6 months  |MAL-ED         |INDIA        |     7|       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |     7|       1|      5|   236|
|6 months  |MAL-ED         |INDIA        |     8|       0|     19|   236|
|6 months  |MAL-ED         |INDIA        |     8|       1|      4|   236|
|6 months  |MAL-ED         |INDIA        |     9|       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |     9|       1|      3|   236|
|6 months  |MAL-ED         |INDIA        |    10|       0|     20|   236|
|6 months  |MAL-ED         |INDIA        |    10|       1|      7|   236|
|6 months  |MAL-ED         |INDIA        |    11|       0|     19|   236|
|6 months  |MAL-ED         |INDIA        |    11|       1|      6|   236|
|6 months  |MAL-ED         |INDIA        |    12|       0|     16|   236|
|6 months  |MAL-ED         |INDIA        |    12|       1|      3|   236|
|6 months  |MAL-ED         |BANGLADESH   |     1|       0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |     1|       1|      3|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|       0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|       1|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|       0|     21|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|       1|      4|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|       0|     21|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|       0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|       1|      4|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|       0|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|       1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|       0|     13|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|       1|      7|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|       0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|       1|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|       0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|       1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|       0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|       1|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|       0|     15|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|       0|     24|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|       1|      2|   241|
|6 months  |MAL-ED         |PERU         |     1|       0|     27|   273|
|6 months  |MAL-ED         |PERU         |     1|       1|      9|   273|
|6 months  |MAL-ED         |PERU         |     2|       0|     16|   273|
|6 months  |MAL-ED         |PERU         |     2|       1|      5|   273|
|6 months  |MAL-ED         |PERU         |     3|       0|     14|   273|
|6 months  |MAL-ED         |PERU         |     3|       1|      7|   273|
|6 months  |MAL-ED         |PERU         |     4|       0|     16|   273|
|6 months  |MAL-ED         |PERU         |     4|       1|      4|   273|
|6 months  |MAL-ED         |PERU         |     5|       0|     22|   273|
|6 months  |MAL-ED         |PERU         |     5|       1|      3|   273|
|6 months  |MAL-ED         |PERU         |     6|       0|     15|   273|
|6 months  |MAL-ED         |PERU         |     6|       1|      3|   273|
|6 months  |MAL-ED         |PERU         |     7|       0|     19|   273|
|6 months  |MAL-ED         |PERU         |     7|       1|      3|   273|
|6 months  |MAL-ED         |PERU         |     8|       0|     13|   273|
|6 months  |MAL-ED         |PERU         |     8|       1|      3|   273|
|6 months  |MAL-ED         |PERU         |     9|       0|     18|   273|
|6 months  |MAL-ED         |PERU         |     9|       1|      5|   273|
|6 months  |MAL-ED         |PERU         |    10|       0|     16|   273|
|6 months  |MAL-ED         |PERU         |    10|       1|      3|   273|
|6 months  |MAL-ED         |PERU         |    11|       0|     21|   273|
|6 months  |MAL-ED         |PERU         |    11|       1|     11|   273|
|6 months  |MAL-ED         |PERU         |    12|       0|     16|   273|
|6 months  |MAL-ED         |PERU         |    12|       1|      4|   273|
|6 months  |MAL-ED         |NEPAL        |     1|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     1|       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     2|       0|     16|   236|
|6 months  |MAL-ED         |NEPAL        |     2|       1|      3|   236|
|6 months  |MAL-ED         |NEPAL        |     3|       0|     15|   236|
|6 months  |MAL-ED         |NEPAL        |     3|       1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |     4|       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |     4|       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     5|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     5|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     6|       0|     21|   236|
|6 months  |MAL-ED         |NEPAL        |     6|       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     7|       0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |     7|       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     8|       0|     24|   236|
|6 months  |MAL-ED         |NEPAL        |     8|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     9|       0|     12|   236|
|6 months  |MAL-ED         |NEPAL        |     9|       1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |    10|       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |    10|       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    11|       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |    11|       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |    12|       0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |    12|       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |     1|       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |     1|       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|       0|     23|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|       0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|       0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|       0|     20|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|       0|      7|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|       0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|       0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|       0|     28|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|       0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|       0|     18|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|       0|     14|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|       1|      1|   209|
|6 months  |MAL-ED         |TANZANIA     |     1|       0|     17|   247|
|6 months  |MAL-ED         |TANZANIA     |     1|       1|      6|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|       0|     22|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|       1|      5|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|       0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|       1|      9|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|       0|      7|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|       1|      3|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|       0|      9|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|       1|      4|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|       0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|       0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|       1|      6|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|       0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|       1|      2|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|       0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|       1|      5|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|       0|     14|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|       1|      4|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|       0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|       1|      9|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|       0|     23|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|       1|      6|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|       0|     29|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|       1|      9|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|       0|     20|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|       0|     14|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|       0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|       1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|       0|     10|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|       0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|       0|     18|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|       1|      6|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|       0|      7|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|       0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|       0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|       0|     14|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|       1|      9|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|       0|     25|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|       1|     11|   254|
|6 months  |NIH-Birth      |BANGLADESH   |     1|       0|     35|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     1|       1|     15|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|       0|     36|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|       1|     14|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|       0|     36|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|       1|     14|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|       0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|       1|     10|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|       0|     32|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|       1|      8|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|       0|     28|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|       1|     11|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|       0|     27|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|       1|     18|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|       0|     31|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|       1|      7|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|       0|     23|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|       1|      7|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|       0|     37|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|       1|     15|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|       0|     31|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|       1|     18|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|       0|     43|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|       1|      7|   537|
|6 months  |PROBIT         |BELARUS      |     1|       0|   1049| 15760|
|6 months  |PROBIT         |BELARUS      |     1|       1|     52| 15760|
|6 months  |PROBIT         |BELARUS      |     2|       0|    898| 15760|
|6 months  |PROBIT         |BELARUS      |     2|       1|     53| 15760|
|6 months  |PROBIT         |BELARUS      |     3|       0|   1068| 15760|
|6 months  |PROBIT         |BELARUS      |     3|       1|     46| 15760|
|6 months  |PROBIT         |BELARUS      |     4|       0|   1036| 15760|
|6 months  |PROBIT         |BELARUS      |     4|       1|     33| 15760|
|6 months  |PROBIT         |BELARUS      |     5|       0|   1066| 15760|
|6 months  |PROBIT         |BELARUS      |     5|       1|     30| 15760|
|6 months  |PROBIT         |BELARUS      |     6|       0|   1076| 15760|
|6 months  |PROBIT         |BELARUS      |     6|       1|     45| 15760|
|6 months  |PROBIT         |BELARUS      |     7|       0|   1320| 15760|
|6 months  |PROBIT         |BELARUS      |     7|       1|     44| 15760|
|6 months  |PROBIT         |BELARUS      |     8|       0|   1439| 15760|
|6 months  |PROBIT         |BELARUS      |     8|       1|     59| 15760|
|6 months  |PROBIT         |BELARUS      |     9|       0|   1420| 15760|
|6 months  |PROBIT         |BELARUS      |     9|       1|     62| 15760|
|6 months  |PROBIT         |BELARUS      |    10|       0|   1596| 15760|
|6 months  |PROBIT         |BELARUS      |    10|       1|     72| 15760|
|6 months  |PROBIT         |BELARUS      |    11|       0|   1526| 15760|
|6 months  |PROBIT         |BELARUS      |    11|       1|     64| 15760|
|6 months  |PROBIT         |BELARUS      |    12|       0|   1646| 15760|
|6 months  |PROBIT         |BELARUS      |    12|       1|     60| 15760|
|6 months  |PROVIDE        |BANGLADESH   |     1|       0|     27|   604|
|6 months  |PROVIDE        |BANGLADESH   |     1|       1|      2|   604|
|6 months  |PROVIDE        |BANGLADESH   |     2|       0|     33|   604|
|6 months  |PROVIDE        |BANGLADESH   |     2|       1|      2|   604|
|6 months  |PROVIDE        |BANGLADESH   |     3|       0|     23|   604|
|6 months  |PROVIDE        |BANGLADESH   |     3|       1|      9|   604|
|6 months  |PROVIDE        |BANGLADESH   |     4|       0|     37|   604|
|6 months  |PROVIDE        |BANGLADESH   |     4|       1|      6|   604|
|6 months  |PROVIDE        |BANGLADESH   |     5|       0|     33|   604|
|6 months  |PROVIDE        |BANGLADESH   |     5|       1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |     6|       0|     37|   604|
|6 months  |PROVIDE        |BANGLADESH   |     6|       1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |     7|       0|     57|   604|
|6 months  |PROVIDE        |BANGLADESH   |     7|       1|     20|   604|
|6 months  |PROVIDE        |BANGLADESH   |     8|       0|     64|   604|
|6 months  |PROVIDE        |BANGLADESH   |     8|       1|     12|   604|
|6 months  |PROVIDE        |BANGLADESH   |     9|       0|     45|   604|
|6 months  |PROVIDE        |BANGLADESH   |     9|       1|     16|   604|
|6 months  |PROVIDE        |BANGLADESH   |    10|       0|     57|   604|
|6 months  |PROVIDE        |BANGLADESH   |    10|       1|     10|   604|
|6 months  |PROVIDE        |BANGLADESH   |    11|       0|     60|   604|
|6 months  |PROVIDE        |BANGLADESH   |    11|       1|      7|   604|
|6 months  |PROVIDE        |BANGLADESH   |    12|       0|     35|   604|
|6 months  |PROVIDE        |BANGLADESH   |    12|       1|      6|   604|
|6 months  |ResPak         |PAKISTAN     |     1|       0|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     1|       1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     2|       0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     2|       1|      6|   239|
|6 months  |ResPak         |PAKISTAN     |     3|       0|      8|   239|
|6 months  |ResPak         |PAKISTAN     |     3|       1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     4|       0|      9|   239|
|6 months  |ResPak         |PAKISTAN     |     4|       1|     11|   239|
|6 months  |ResPak         |PAKISTAN     |     5|       0|     18|   239|
|6 months  |ResPak         |PAKISTAN     |     5|       1|     12|   239|
|6 months  |ResPak         |PAKISTAN     |     6|       0|     24|   239|
|6 months  |ResPak         |PAKISTAN     |     6|       1|     15|   239|
|6 months  |ResPak         |PAKISTAN     |     7|       0|     29|   239|
|6 months  |ResPak         |PAKISTAN     |     7|       1|     14|   239|
|6 months  |ResPak         |PAKISTAN     |     8|       0|     20|   239|
|6 months  |ResPak         |PAKISTAN     |     8|       1|      6|   239|
|6 months  |ResPak         |PAKISTAN     |     9|       0|     24|   239|
|6 months  |ResPak         |PAKISTAN     |     9|       1|     13|   239|
|6 months  |ResPak         |PAKISTAN     |    10|       0|     10|   239|
|6 months  |ResPak         |PAKISTAN     |    10|       1|      5|   239|
|6 months  |ResPak         |PAKISTAN     |    11|       0|      6|   239|
|6 months  |ResPak         |PAKISTAN     |    11|       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |    12|       0|      3|   239|
|6 months  |ResPak         |PAKISTAN     |    12|       1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |     1|       0|     61|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     1|       1|     24|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     2|       0|     59|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     2|       1|     22|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     3|       0|     60|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     3|       1|     19|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     4|       0|     57|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     4|       1|     19|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     5|       0|     49|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     5|       1|     27|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     6|       0|     74|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     6|       1|     28|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     7|       0|     65|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     7|       1|     50|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     8|       0|    101|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     8|       1|     51|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     9|       0|    132|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     9|       1|     34|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    10|       0|    113|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    10|       1|     37|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    11|       0|     93|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    11|       1|     32|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    12|       0|     92|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    12|       1|     37|  1336|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|       0|     29|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|       1|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|       0|     21|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|       1|     16|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|       0|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|       1|     16|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|       0|     14|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|       1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|       0|     15|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|       1|     14|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|       0|     18|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|       1|     13|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|       0|      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|       1|     10|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|       0|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|       1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|       0|      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|       1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|       0|     14|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|       1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|       0|     33|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|       1|     11|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|       0|     40|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|       1|     22|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|       0|    123|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|       1|     15|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|       0|    137|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|       1|     12|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|       0|    133|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|       1|     13|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|       0|    133|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|       1|     14|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|       0|    133|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|       1|     20|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|       0|    126|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|       1|     16|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|       0|    166|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|       1|     21|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|       0|    178|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|       1|     28|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|       0|    167|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|       1|     14|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|       0|    186|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|       1|     24|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|       0|    181|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|       1|     11|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|       0|    169|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|       1|      9|  2029|
|6 months  |Vellore Crypto |INDIA        |     1|       0|     25|   407|
|6 months  |Vellore Crypto |INDIA        |     1|       1|     11|   407|
|6 months  |Vellore Crypto |INDIA        |     2|       0|     16|   407|
|6 months  |Vellore Crypto |INDIA        |     2|       1|     12|   407|
|6 months  |Vellore Crypto |INDIA        |     3|       0|     19|   407|
|6 months  |Vellore Crypto |INDIA        |     3|       1|     10|   407|
|6 months  |Vellore Crypto |INDIA        |     4|       0|     16|   407|
|6 months  |Vellore Crypto |INDIA        |     4|       1|      6|   407|
|6 months  |Vellore Crypto |INDIA        |     5|       0|     13|   407|
|6 months  |Vellore Crypto |INDIA        |     5|       1|      7|   407|
|6 months  |Vellore Crypto |INDIA        |     6|       0|     32|   407|
|6 months  |Vellore Crypto |INDIA        |     6|       1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |     7|       0|     25|   407|
|6 months  |Vellore Crypto |INDIA        |     7|       1|     11|   407|
|6 months  |Vellore Crypto |INDIA        |     8|       0|     39|   407|
|6 months  |Vellore Crypto |INDIA        |     8|       1|      6|   407|
|6 months  |Vellore Crypto |INDIA        |     9|       0|     20|   407|
|6 months  |Vellore Crypto |INDIA        |     9|       1|      7|   407|
|6 months  |Vellore Crypto |INDIA        |    10|       0|     31|   407|
|6 months  |Vellore Crypto |INDIA        |    10|       1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |    11|       0|     34|   407|
|6 months  |Vellore Crypto |INDIA        |    11|       1|      7|   407|
|6 months  |Vellore Crypto |INDIA        |    12|       0|     37|   407|
|6 months  |Vellore Crypto |INDIA        |    12|       1|     13|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|       0|    690|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|       1|    140|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|       0|    511|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|       1|    102|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|       0|    589|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|       1|    162|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|       0|    554|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|       1|    118|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|       0|    525|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|       1|    107|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|       0|    564|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|       1|    112|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|       0|    550|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|       1|    122|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|       0|    665|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|       1|    104|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|       0|    689|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|       1|    108|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|       0|    530|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|       1|     99|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|       0|    641|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|       1|    121|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|       0|    749|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|       1|    117|  8669|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|       0|     15|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|       1|     19|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|       0|      4|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|       1|     12|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|       0|      6|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|       1|     26|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|       0|     15|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|       1|     29|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|       0|      8|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|       1|     25|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|       0|     10|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|       1|     28|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|       0|     10|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|       1|     30|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|       0|      5|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|       1|     12|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|       0|      6|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|       1|     13|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|       0|      9|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|       1|     20|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|       0|     13|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|       1|     31|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|       0|      4|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|       1|     21|   371|
|24 months |CMIN           |BANGLADESH   |     1|       0|      7|   242|
|24 months |CMIN           |BANGLADESH   |     1|       1|     19|   242|
|24 months |CMIN           |BANGLADESH   |     2|       0|      8|   242|
|24 months |CMIN           |BANGLADESH   |     2|       1|     23|   242|
|24 months |CMIN           |BANGLADESH   |     3|       0|      8|   242|
|24 months |CMIN           |BANGLADESH   |     3|       1|     11|   242|
|24 months |CMIN           |BANGLADESH   |     4|       0|      6|   242|
|24 months |CMIN           |BANGLADESH   |     4|       1|     12|   242|
|24 months |CMIN           |BANGLADESH   |     5|       0|     10|   242|
|24 months |CMIN           |BANGLADESH   |     5|       1|      9|   242|
|24 months |CMIN           |BANGLADESH   |     6|       0|      6|   242|
|24 months |CMIN           |BANGLADESH   |     6|       1|     16|   242|
|24 months |CMIN           |BANGLADESH   |     7|       0|      3|   242|
|24 months |CMIN           |BANGLADESH   |     7|       1|      9|   242|
|24 months |CMIN           |BANGLADESH   |     8|       0|      4|   242|
|24 months |CMIN           |BANGLADESH   |     8|       1|      9|   242|
|24 months |CMIN           |BANGLADESH   |     9|       0|      5|   242|
|24 months |CMIN           |BANGLADESH   |     9|       1|     13|   242|
|24 months |CMIN           |BANGLADESH   |    10|       0|      7|   242|
|24 months |CMIN           |BANGLADESH   |    10|       1|     12|   242|
|24 months |CMIN           |BANGLADESH   |    11|       0|      1|   242|
|24 months |CMIN           |BANGLADESH   |    11|       1|      1|   242|
|24 months |CMIN           |BANGLADESH   |    12|       0|     12|   242|
|24 months |CMIN           |BANGLADESH   |    12|       1|     31|   242|
|24 months |CONTENT        |PERU         |     1|       0|      8|   164|
|24 months |CONTENT        |PERU         |     1|       1|      0|   164|
|24 months |CONTENT        |PERU         |     2|       0|      9|   164|
|24 months |CONTENT        |PERU         |     2|       1|      1|   164|
|24 months |CONTENT        |PERU         |     3|       0|     19|   164|
|24 months |CONTENT        |PERU         |     3|       1|      1|   164|
|24 months |CONTENT        |PERU         |     4|       0|     11|   164|
|24 months |CONTENT        |PERU         |     4|       1|      2|   164|
|24 months |CONTENT        |PERU         |     5|       0|     21|   164|
|24 months |CONTENT        |PERU         |     5|       1|      1|   164|
|24 months |CONTENT        |PERU         |     6|       0|      9|   164|
|24 months |CONTENT        |PERU         |     6|       1|      2|   164|
|24 months |CONTENT        |PERU         |     7|       0|     13|   164|
|24 months |CONTENT        |PERU         |     7|       1|      0|   164|
|24 months |CONTENT        |PERU         |     8|       0|     21|   164|
|24 months |CONTENT        |PERU         |     8|       1|      2|   164|
|24 months |CONTENT        |PERU         |     9|       0|      8|   164|
|24 months |CONTENT        |PERU         |     9|       1|      3|   164|
|24 months |CONTENT        |PERU         |    10|       0|     12|   164|
|24 months |CONTENT        |PERU         |    10|       1|      0|   164|
|24 months |CONTENT        |PERU         |    11|       0|     16|   164|
|24 months |CONTENT        |PERU         |    11|       1|      1|   164|
|24 months |CONTENT        |PERU         |    12|       0|      4|   164|
|24 months |CONTENT        |PERU         |    12|       1|      0|   164|
|24 months |EE             |PAKISTAN     |     1|       0|      4|   167|
|24 months |EE             |PAKISTAN     |     1|       1|      9|   167|
|24 months |EE             |PAKISTAN     |     2|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     2|       1|      4|   167|
|24 months |EE             |PAKISTAN     |     3|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     3|       1|      0|   167|
|24 months |EE             |PAKISTAN     |     4|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     4|       1|      0|   167|
|24 months |EE             |PAKISTAN     |     5|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     5|       1|      0|   167|
|24 months |EE             |PAKISTAN     |     6|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     6|       1|      0|   167|
|24 months |EE             |PAKISTAN     |     7|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     7|       1|      0|   167|
|24 months |EE             |PAKISTAN     |     8|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     8|       1|      0|   167|
|24 months |EE             |PAKISTAN     |     9|       0|      0|   167|
|24 months |EE             |PAKISTAN     |     9|       1|      0|   167|
|24 months |EE             |PAKISTAN     |    10|       0|      1|   167|
|24 months |EE             |PAKISTAN     |    10|       1|      3|   167|
|24 months |EE             |PAKISTAN     |    11|       0|     22|   167|
|24 months |EE             |PAKISTAN     |    11|       1|     44|   167|
|24 months |EE             |PAKISTAN     |    12|       0|     22|   167|
|24 months |EE             |PAKISTAN     |    12|       1|     58|   167|
|24 months |GMS-Nepal      |NEPAL        |     1|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     1|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     2|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     2|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     3|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     3|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     4|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     4|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     5|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     5|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     6|       0|     42|   488|
|24 months |GMS-Nepal      |NEPAL        |     6|       1|     31|   488|
|24 months |GMS-Nepal      |NEPAL        |     7|       0|    103|   488|
|24 months |GMS-Nepal      |NEPAL        |     7|       1|     97|   488|
|24 months |GMS-Nepal      |NEPAL        |     8|       0|    124|   488|
|24 months |GMS-Nepal      |NEPAL        |     8|       1|     91|   488|
|24 months |GMS-Nepal      |NEPAL        |     9|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     9|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    10|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    10|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    11|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    11|       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    12|       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    12|       1|      0|   488|
|24 months |JiVitA-3       |BANGLADESH   |     1|       0|    317|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     1|       1|    387|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     2|       0|    290|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     2|       1|    316|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     3|       0|    376|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     3|       1|    358|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     4|       0|    294|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     4|       1|    244|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     5|       0|    207|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     5|       1|    180|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     6|       0|    283|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     6|       1|    284|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     7|       0|    374|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     7|       1|    278|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     8|       0|    355|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     8|       1|    294|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     9|       0|    387|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     9|       1|    349|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    10|       0|    455|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    10|       1|    418|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    11|       0|    459|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    11|       1|    490|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    12|       0|    596|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    12|       1|    641|  8632|
|24 months |JiVitA-4       |BANGLADESH   |     1|       0|     27|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     1|       1|     17|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     2|       0|    188|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     2|       1|    140|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     3|       0|    228|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     3|       1|    176|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     4|       0|    453|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     4|       1|    358|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     5|       0|    349|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     5|       1|    213|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     6|       0|    255|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     6|       1|    168|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     7|       0|    454|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     7|       1|    337|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     8|       0|    315|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     8|       1|    165|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     9|       0|    261|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     9|       1|    165|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    10|       0|    181|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    10|       1|     89|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    11|       0|     88|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    11|       1|     55|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    12|       0|     48|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    12|       1|     22|  4752|
|24 months |Keneba         |GAMBIA       |     1|       0|    102|  1725|
|24 months |Keneba         |GAMBIA       |     1|       1|     54|  1725|
|24 months |Keneba         |GAMBIA       |     2|       0|    117|  1725|
|24 months |Keneba         |GAMBIA       |     2|       1|     57|  1725|
|24 months |Keneba         |GAMBIA       |     3|       0|    110|  1725|
|24 months |Keneba         |GAMBIA       |     3|       1|     44|  1725|
|24 months |Keneba         |GAMBIA       |     4|       0|    115|  1725|
|24 months |Keneba         |GAMBIA       |     4|       1|     54|  1725|
|24 months |Keneba         |GAMBIA       |     5|       0|     85|  1725|
|24 months |Keneba         |GAMBIA       |     5|       1|     40|  1725|
|24 months |Keneba         |GAMBIA       |     6|       0|     81|  1725|
|24 months |Keneba         |GAMBIA       |     6|       1|     50|  1725|
|24 months |Keneba         |GAMBIA       |     7|       0|     61|  1725|
|24 months |Keneba         |GAMBIA       |     7|       1|     34|  1725|
|24 months |Keneba         |GAMBIA       |     8|       0|     55|  1725|
|24 months |Keneba         |GAMBIA       |     8|       1|     37|  1725|
|24 months |Keneba         |GAMBIA       |     9|       0|    111|  1725|
|24 months |Keneba         |GAMBIA       |     9|       1|     43|  1725|
|24 months |Keneba         |GAMBIA       |    10|       0|    104|  1725|
|24 months |Keneba         |GAMBIA       |    10|       1|     50|  1725|
|24 months |Keneba         |GAMBIA       |    11|       0|    117|  1725|
|24 months |Keneba         |GAMBIA       |    11|       1|     72|  1725|
|24 months |Keneba         |GAMBIA       |    12|       0|     86|  1725|
|24 months |Keneba         |GAMBIA       |    12|       1|     46|  1725|
|24 months |LCNI-5         |MALAWI       |     1|       0|     20|   579|
|24 months |LCNI-5         |MALAWI       |     1|       1|     21|   579|
|24 months |LCNI-5         |MALAWI       |     2|       0|     57|   579|
|24 months |LCNI-5         |MALAWI       |     2|       1|     31|   579|
|24 months |LCNI-5         |MALAWI       |     3|       0|     38|   579|
|24 months |LCNI-5         |MALAWI       |     3|       1|     32|   579|
|24 months |LCNI-5         |MALAWI       |     4|       0|     38|   579|
|24 months |LCNI-5         |MALAWI       |     4|       1|     41|   579|
|24 months |LCNI-5         |MALAWI       |     5|       0|     34|   579|
|24 months |LCNI-5         |MALAWI       |     5|       1|     30|   579|
|24 months |LCNI-5         |MALAWI       |     6|       0|     30|   579|
|24 months |LCNI-5         |MALAWI       |     6|       1|     34|   579|
|24 months |LCNI-5         |MALAWI       |     7|       0|     26|   579|
|24 months |LCNI-5         |MALAWI       |     7|       1|     15|   579|
|24 months |LCNI-5         |MALAWI       |     8|       0|     20|   579|
|24 months |LCNI-5         |MALAWI       |     8|       1|      7|   579|
|24 months |LCNI-5         |MALAWI       |     9|       0|     12|   579|
|24 months |LCNI-5         |MALAWI       |     9|       1|      8|   579|
|24 months |LCNI-5         |MALAWI       |    10|       0|     16|   579|
|24 months |LCNI-5         |MALAWI       |    10|       1|      9|   579|
|24 months |LCNI-5         |MALAWI       |    11|       0|     20|   579|
|24 months |LCNI-5         |MALAWI       |    11|       1|     16|   579|
|24 months |LCNI-5         |MALAWI       |    12|       0|     10|   579|
|24 months |LCNI-5         |MALAWI       |    12|       1|     14|   579|
|24 months |MAL-ED         |INDIA        |     1|       0|      6|   227|
|24 months |MAL-ED         |INDIA        |     1|       1|     13|   227|
|24 months |MAL-ED         |INDIA        |     2|       0|     14|   227|
|24 months |MAL-ED         |INDIA        |     2|       1|      4|   227|
|24 months |MAL-ED         |INDIA        |     3|       0|     11|   227|
|24 months |MAL-ED         |INDIA        |     3|       1|      7|   227|
|24 months |MAL-ED         |INDIA        |     4|       0|      8|   227|
|24 months |MAL-ED         |INDIA        |     4|       1|      7|   227|
|24 months |MAL-ED         |INDIA        |     5|       0|      5|   227|
|24 months |MAL-ED         |INDIA        |     5|       1|      3|   227|
|24 months |MAL-ED         |INDIA        |     6|       0|     12|   227|
|24 months |MAL-ED         |INDIA        |     6|       1|      5|   227|
|24 months |MAL-ED         |INDIA        |     7|       0|     12|   227|
|24 months |MAL-ED         |INDIA        |     7|       1|     10|   227|
|24 months |MAL-ED         |INDIA        |     8|       0|     10|   227|
|24 months |MAL-ED         |INDIA        |     8|       1|     12|   227|
|24 months |MAL-ED         |INDIA        |     9|       0|     12|   227|
|24 months |MAL-ED         |INDIA        |     9|       1|      6|   227|
|24 months |MAL-ED         |INDIA        |    10|       0|     13|   227|
|24 months |MAL-ED         |INDIA        |    10|       1|     14|   227|
|24 months |MAL-ED         |INDIA        |    11|       0|     14|   227|
|24 months |MAL-ED         |INDIA        |    11|       1|     10|   227|
|24 months |MAL-ED         |INDIA        |    12|       0|     13|   227|
|24 months |MAL-ED         |INDIA        |    12|       1|      6|   227|
|24 months |MAL-ED         |BANGLADESH   |     1|       0|      8|   212|
|24 months |MAL-ED         |BANGLADESH   |     1|       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|       0|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|       1|     12|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|       0|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|       1|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|       0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|       0|      9|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|       1|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|       0|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|       1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|       0|     11|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|       1|      9|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|       0|     11|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|       1|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|       0|     12|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|       0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|       0|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|       1|      6|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|       0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|       1|     10|   212|
|24 months |MAL-ED         |PERU         |     1|       0|     13|   201|
|24 months |MAL-ED         |PERU         |     1|       1|     15|   201|
|24 months |MAL-ED         |PERU         |     2|       0|     13|   201|
|24 months |MAL-ED         |PERU         |     2|       1|      6|   201|
|24 months |MAL-ED         |PERU         |     3|       0|      8|   201|
|24 months |MAL-ED         |PERU         |     3|       1|      6|   201|
|24 months |MAL-ED         |PERU         |     4|       0|      7|   201|
|24 months |MAL-ED         |PERU         |     4|       1|      5|   201|
|24 months |MAL-ED         |PERU         |     5|       0|     11|   201|
|24 months |MAL-ED         |PERU         |     5|       1|      8|   201|
|24 months |MAL-ED         |PERU         |     6|       0|      8|   201|
|24 months |MAL-ED         |PERU         |     6|       1|      3|   201|
|24 months |MAL-ED         |PERU         |     7|       0|     11|   201|
|24 months |MAL-ED         |PERU         |     7|       1|      4|   201|
|24 months |MAL-ED         |PERU         |     8|       0|      8|   201|
|24 months |MAL-ED         |PERU         |     8|       1|      4|   201|
|24 months |MAL-ED         |PERU         |     9|       0|     17|   201|
|24 months |MAL-ED         |PERU         |     9|       1|      4|   201|
|24 months |MAL-ED         |PERU         |    10|       0|     11|   201|
|24 months |MAL-ED         |PERU         |    10|       1|      2|   201|
|24 months |MAL-ED         |PERU         |    11|       0|     12|   201|
|24 months |MAL-ED         |PERU         |    11|       1|      9|   201|
|24 months |MAL-ED         |PERU         |    12|       0|      8|   201|
|24 months |MAL-ED         |PERU         |    12|       1|      8|   201|
|24 months |MAL-ED         |NEPAL        |     1|       0|     15|   228|
|24 months |MAL-ED         |NEPAL        |     1|       1|      4|   228|
|24 months |MAL-ED         |NEPAL        |     2|       0|     11|   228|
|24 months |MAL-ED         |NEPAL        |     2|       1|      6|   228|
|24 months |MAL-ED         |NEPAL        |     3|       0|      8|   228|
|24 months |MAL-ED         |NEPAL        |     3|       1|      9|   228|
|24 months |MAL-ED         |NEPAL        |     4|       0|     16|   228|
|24 months |MAL-ED         |NEPAL        |     4|       1|      3|   228|
|24 months |MAL-ED         |NEPAL        |     5|       0|     14|   228|
|24 months |MAL-ED         |NEPAL        |     5|       1|      4|   228|
|24 months |MAL-ED         |NEPAL        |     6|       0|     19|   228|
|24 months |MAL-ED         |NEPAL        |     6|       1|      3|   228|
|24 months |MAL-ED         |NEPAL        |     7|       0|     15|   228|
|24 months |MAL-ED         |NEPAL        |     7|       1|      2|   228|
|24 months |MAL-ED         |NEPAL        |     8|       0|     22|   228|
|24 months |MAL-ED         |NEPAL        |     8|       1|      2|   228|
|24 months |MAL-ED         |NEPAL        |     9|       0|     11|   228|
|24 months |MAL-ED         |NEPAL        |     9|       1|      2|   228|
|24 months |MAL-ED         |NEPAL        |    10|       0|     18|   228|
|24 months |MAL-ED         |NEPAL        |    10|       1|      3|   228|
|24 months |MAL-ED         |NEPAL        |    11|       0|     15|   228|
|24 months |MAL-ED         |NEPAL        |    11|       1|      8|   228|
|24 months |MAL-ED         |NEPAL        |    12|       0|     14|   228|
|24 months |MAL-ED         |NEPAL        |    12|       1|      4|   228|
|24 months |MAL-ED         |BRAZIL       |     1|       0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |     1|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |     2|       0|     16|   169|
|24 months |MAL-ED         |BRAZIL       |     2|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |     3|       0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     3|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     4|       0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |     4|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     5|       0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     5|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     6|       0|      5|   169|
|24 months |MAL-ED         |BRAZIL       |     6|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     7|       0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |     7|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |     8|       0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |     8|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |     9|       0|     25|   169|
|24 months |MAL-ED         |BRAZIL       |     9|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |    10|       0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    10|       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |    11|       0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |    11|       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    12|       0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |    12|       1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |     1|       0|      6|   214|
|24 months |MAL-ED         |TANZANIA     |     1|       1|     13|   214|
|24 months |MAL-ED         |TANZANIA     |     2|       0|      3|   214|
|24 months |MAL-ED         |TANZANIA     |     2|       1|     15|   214|
|24 months |MAL-ED         |TANZANIA     |     3|       0|      3|   214|
|24 months |MAL-ED         |TANZANIA     |     3|       1|     18|   214|
|24 months |MAL-ED         |TANZANIA     |     4|       0|      1|   214|
|24 months |MAL-ED         |TANZANIA     |     4|       1|      7|   214|
|24 months |MAL-ED         |TANZANIA     |     5|       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |     5|       1|     10|   214|
|24 months |MAL-ED         |TANZANIA     |     6|       0|      6|   214|
|24 months |MAL-ED         |TANZANIA     |     6|       1|     13|   214|
|24 months |MAL-ED         |TANZANIA     |     7|       0|      9|   214|
|24 months |MAL-ED         |TANZANIA     |     7|       1|     15|   214|
|24 months |MAL-ED         |TANZANIA     |     8|       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |     8|       1|      8|   214|
|24 months |MAL-ED         |TANZANIA     |     9|       0|      5|   214|
|24 months |MAL-ED         |TANZANIA     |     9|       1|     12|   214|
|24 months |MAL-ED         |TANZANIA     |    10|       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |    10|       1|     11|   214|
|24 months |MAL-ED         |TANZANIA     |    11|       0|      5|   214|
|24 months |MAL-ED         |TANZANIA     |    11|       1|     18|   214|
|24 months |MAL-ED         |TANZANIA     |    12|       0|      9|   214|
|24 months |MAL-ED         |TANZANIA     |    12|       1|     15|   214|
|24 months |MAL-ED         |SOUTH AFRICA |     1|       0|     21|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     1|       1|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|       0|     10|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|       1|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|       0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|       1|      4|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|       0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|       1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|       0|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|       1|      2|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|       0|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|       1|      6|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|       0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|       1|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|       0|      7|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|       1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|       0|     14|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|       1|      5|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|       0|     18|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|       1|      7|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|       0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|       1|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|       0|     18|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|       1|     14|   238|
|24 months |NIH-Birth      |BANGLADESH   |     1|       0|     15|   429|
|24 months |NIH-Birth      |BANGLADESH   |     1|       1|     27|   429|
|24 months |NIH-Birth      |BANGLADESH   |     2|       0|     13|   429|
|24 months |NIH-Birth      |BANGLADESH   |     2|       1|     23|   429|
|24 months |NIH-Birth      |BANGLADESH   |     3|       0|     23|   429|
|24 months |NIH-Birth      |BANGLADESH   |     3|       1|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |     4|       0|     11|   429|
|24 months |NIH-Birth      |BANGLADESH   |     4|       1|     23|   429|
|24 months |NIH-Birth      |BANGLADESH   |     5|       0|     13|   429|
|24 months |NIH-Birth      |BANGLADESH   |     5|       1|     21|   429|
|24 months |NIH-Birth      |BANGLADESH   |     6|       0|     12|   429|
|24 months |NIH-Birth      |BANGLADESH   |     6|       1|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |     7|       0|     17|   429|
|24 months |NIH-Birth      |BANGLADESH   |     7|       1|     20|   429|
|24 months |NIH-Birth      |BANGLADESH   |     8|       0|     13|   429|
|24 months |NIH-Birth      |BANGLADESH   |     8|       1|     17|   429|
|24 months |NIH-Birth      |BANGLADESH   |     9|       0|     11|   429|
|24 months |NIH-Birth      |BANGLADESH   |     9|       1|      8|   429|
|24 months |NIH-Birth      |BANGLADESH   |    10|       0|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |    10|       1|     22|   429|
|24 months |NIH-Birth      |BANGLADESH   |    11|       0|     19|   429|
|24 months |NIH-Birth      |BANGLADESH   |    11|       1|     22|   429|
|24 months |NIH-Birth      |BANGLADESH   |    12|       0|     20|   429|
|24 months |NIH-Birth      |BANGLADESH   |    12|       1|     25|   429|
|24 months |PROBIT         |BELARUS      |     1|       0|    255|  4035|
|24 months |PROBIT         |BELARUS      |     1|       1|     14|  4035|
|24 months |PROBIT         |BELARUS      |     2|       0|    195|  4035|
|24 months |PROBIT         |BELARUS      |     2|       1|     16|  4035|
|24 months |PROBIT         |BELARUS      |     3|       0|    307|  4035|
|24 months |PROBIT         |BELARUS      |     3|       1|     17|  4035|
|24 months |PROBIT         |BELARUS      |     4|       0|    313|  4035|
|24 months |PROBIT         |BELARUS      |     4|       1|     13|  4035|
|24 months |PROBIT         |BELARUS      |     5|       0|    293|  4035|
|24 months |PROBIT         |BELARUS      |     5|       1|     14|  4035|
|24 months |PROBIT         |BELARUS      |     6|       0|    253|  4035|
|24 months |PROBIT         |BELARUS      |     6|       1|     12|  4035|
|24 months |PROBIT         |BELARUS      |     7|       0|    358|  4035|
|24 months |PROBIT         |BELARUS      |     7|       1|     15|  4035|
|24 months |PROBIT         |BELARUS      |     8|       0|    337|  4035|
|24 months |PROBIT         |BELARUS      |     8|       1|     16|  4035|
|24 months |PROBIT         |BELARUS      |     9|       0|    352|  4035|
|24 months |PROBIT         |BELARUS      |     9|       1|     30|  4035|
|24 months |PROBIT         |BELARUS      |    10|       0|    349|  4035|
|24 months |PROBIT         |BELARUS      |    10|       1|     44|  4035|
|24 months |PROBIT         |BELARUS      |    11|       0|    350|  4035|
|24 months |PROBIT         |BELARUS      |    11|       1|     39|  4035|
|24 months |PROBIT         |BELARUS      |    12|       0|    398|  4035|
|24 months |PROBIT         |BELARUS      |    12|       1|     45|  4035|
|24 months |PROVIDE        |BANGLADESH   |     1|       0|     16|   578|
|24 months |PROVIDE        |BANGLADESH   |     1|       1|     12|   578|
|24 months |PROVIDE        |BANGLADESH   |     2|       0|     19|   578|
|24 months |PROVIDE        |BANGLADESH   |     2|       1|     13|   578|
|24 months |PROVIDE        |BANGLADESH   |     3|       0|     17|   578|
|24 months |PROVIDE        |BANGLADESH   |     3|       1|     13|   578|
|24 months |PROVIDE        |BANGLADESH   |     4|       0|     33|   578|
|24 months |PROVIDE        |BANGLADESH   |     4|       1|      7|   578|
|24 months |PROVIDE        |BANGLADESH   |     5|       0|     23|   578|
|24 months |PROVIDE        |BANGLADESH   |     5|       1|     10|   578|
|24 months |PROVIDE        |BANGLADESH   |     6|       0|     32|   578|
|24 months |PROVIDE        |BANGLADESH   |     6|       1|     10|   578|
|24 months |PROVIDE        |BANGLADESH   |     7|       0|     42|   578|
|24 months |PROVIDE        |BANGLADESH   |     7|       1|     33|   578|
|24 months |PROVIDE        |BANGLADESH   |     8|       0|     45|   578|
|24 months |PROVIDE        |BANGLADESH   |     8|       1|     25|   578|
|24 months |PROVIDE        |BANGLADESH   |     9|       0|     44|   578|
|24 months |PROVIDE        |BANGLADESH   |     9|       1|     16|   578|
|24 months |PROVIDE        |BANGLADESH   |    10|       0|     45|   578|
|24 months |PROVIDE        |BANGLADESH   |    10|       1|     21|   578|
|24 months |PROVIDE        |BANGLADESH   |    11|       0|     44|   578|
|24 months |PROVIDE        |BANGLADESH   |    11|       1|     20|   578|
|24 months |PROVIDE        |BANGLADESH   |    12|       0|     28|   578|
|24 months |PROVIDE        |BANGLADESH   |    12|       1|     10|   578|
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
|24 months |TanzaniaChild2 |TANZANIA     |     6|       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|       1|      1|     6|
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
|24 months |Vellore Crypto |INDIA        |     1|       0|     17|   409|
|24 months |Vellore Crypto |INDIA        |     1|       1|     19|   409|
|24 months |Vellore Crypto |INDIA        |     2|       0|     13|   409|
|24 months |Vellore Crypto |INDIA        |     2|       1|     15|   409|
|24 months |Vellore Crypto |INDIA        |     3|       0|     14|   409|
|24 months |Vellore Crypto |INDIA        |     3|       1|     15|   409|
|24 months |Vellore Crypto |INDIA        |     4|       0|      9|   409|
|24 months |Vellore Crypto |INDIA        |     4|       1|     13|   409|
|24 months |Vellore Crypto |INDIA        |     5|       0|      4|   409|
|24 months |Vellore Crypto |INDIA        |     5|       1|     17|   409|
|24 months |Vellore Crypto |INDIA        |     6|       0|     29|   409|
|24 months |Vellore Crypto |INDIA        |     6|       1|      8|   409|
|24 months |Vellore Crypto |INDIA        |     7|       0|     21|   409|
|24 months |Vellore Crypto |INDIA        |     7|       1|     15|   409|
|24 months |Vellore Crypto |INDIA        |     8|       0|     33|   409|
|24 months |Vellore Crypto |INDIA        |     8|       1|     12|   409|
|24 months |Vellore Crypto |INDIA        |     9|       0|     13|   409|
|24 months |Vellore Crypto |INDIA        |     9|       1|     14|   409|
|24 months |Vellore Crypto |INDIA        |    10|       0|     27|   409|
|24 months |Vellore Crypto |INDIA        |    10|       1|      9|   409|
|24 months |Vellore Crypto |INDIA        |    11|       0|     26|   409|
|24 months |Vellore Crypto |INDIA        |    11|       1|     15|   409|
|24 months |Vellore Crypto |INDIA        |    12|       0|     31|   409|
|24 months |Vellore Crypto |INDIA        |    12|       1|     20|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|       0|    127|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|       1|     62|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|       0|    121|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|       1|     73|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|       0|    155|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|       1|     67|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|       0|    119|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|       1|     55|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|       0|    107|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|       1|     58|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|       0|    129|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|       1|     68|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|       0|     72|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|       1|     53|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|       0|     79|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|       1|     50|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|       0|     10|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|       1|      4|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|       0|     18|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|       1|      6|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|       0|     42|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|       1|     24|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|       0|     92|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|       1|     49|  1640|


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


