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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country      | month| sstunted| n_cell|     n|
|:---------|:--------------|:------------|-----:|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     1|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|        0|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     2|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|        0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     3|        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     4|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|        0|     12|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     5|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     6|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|        0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     7|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|        0|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     8|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|        0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |     9|        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    10|        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|        0|     11|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    11|        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|        0|      3|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |    12|        1|      1|    92|
|Birth     |CMIN           |BANGLADESH   |     1|        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     1|        1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |     2|        0|      5|    26|
|Birth     |CMIN           |BANGLADESH   |     2|        1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |     3|        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |     3|        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     4|        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     4|        1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |     5|        0|      3|    26|
|Birth     |CMIN           |BANGLADESH   |     5|        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     6|        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     6|        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     7|        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     7|        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |     8|        0|      5|    26|
|Birth     |CMIN           |BANGLADESH   |     8|        1|      2|    26|
|Birth     |CMIN           |BANGLADESH   |     9|        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |     9|        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |    10|        0|      1|    26|
|Birth     |CMIN           |BANGLADESH   |    10|        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |    11|        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |    11|        1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |    12|        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |    12|        1|      0|    26|
|Birth     |CONTENT        |PERU         |     1|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     1|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     2|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     2|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     3|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     3|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     4|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     4|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     5|        0|      2|     2|
|Birth     |CONTENT        |PERU         |     5|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     6|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     6|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     7|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     7|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     8|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     8|        1|      0|     2|
|Birth     |CONTENT        |PERU         |     9|        0|      0|     2|
|Birth     |CONTENT        |PERU         |     9|        1|      0|     2|
|Birth     |CONTENT        |PERU         |    10|        0|      0|     2|
|Birth     |CONTENT        |PERU         |    10|        1|      0|     2|
|Birth     |CONTENT        |PERU         |    11|        0|      0|     2|
|Birth     |CONTENT        |PERU         |    11|        1|      0|     2|
|Birth     |CONTENT        |PERU         |    12|        0|      0|     2|
|Birth     |CONTENT        |PERU         |    12|        1|      0|     2|
|Birth     |EE             |PAKISTAN     |     1|        0|     47|   240|
|Birth     |EE             |PAKISTAN     |     1|        1|     14|   240|
|Birth     |EE             |PAKISTAN     |     2|        0|     38|   240|
|Birth     |EE             |PAKISTAN     |     2|        1|     11|   240|
|Birth     |EE             |PAKISTAN     |     3|        0|     20|   240|
|Birth     |EE             |PAKISTAN     |     3|        1|      4|   240|
|Birth     |EE             |PAKISTAN     |     4|        0|      7|   240|
|Birth     |EE             |PAKISTAN     |     4|        1|      3|   240|
|Birth     |EE             |PAKISTAN     |     5|        0|      0|   240|
|Birth     |EE             |PAKISTAN     |     5|        1|      0|   240|
|Birth     |EE             |PAKISTAN     |     6|        0|      0|   240|
|Birth     |EE             |PAKISTAN     |     6|        1|      0|   240|
|Birth     |EE             |PAKISTAN     |     7|        0|      0|   240|
|Birth     |EE             |PAKISTAN     |     7|        1|      0|   240|
|Birth     |EE             |PAKISTAN     |     8|        0|      0|   240|
|Birth     |EE             |PAKISTAN     |     8|        1|      0|   240|
|Birth     |EE             |PAKISTAN     |     9|        0|      0|   240|
|Birth     |EE             |PAKISTAN     |     9|        1|      0|   240|
|Birth     |EE             |PAKISTAN     |    10|        0|      0|   240|
|Birth     |EE             |PAKISTAN     |    10|        1|      0|   240|
|Birth     |EE             |PAKISTAN     |    11|        0|     41|   240|
|Birth     |EE             |PAKISTAN     |    11|        1|      6|   240|
|Birth     |EE             |PAKISTAN     |    12|        0|     39|   240|
|Birth     |EE             |PAKISTAN     |    12|        1|     10|   240|
|Birth     |GMS-Nepal      |NEPAL        |     1|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     1|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     2|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     2|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     3|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     3|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     4|        0|      1|   696|
|Birth     |GMS-Nepal      |NEPAL        |     4|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     5|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     5|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     6|        0|    155|   696|
|Birth     |GMS-Nepal      |NEPAL        |     6|        1|      5|   696|
|Birth     |GMS-Nepal      |NEPAL        |     7|        0|    248|   696|
|Birth     |GMS-Nepal      |NEPAL        |     7|        1|     17|   696|
|Birth     |GMS-Nepal      |NEPAL        |     8|        0|    261|   696|
|Birth     |GMS-Nepal      |NEPAL        |     8|        1|      9|   696|
|Birth     |GMS-Nepal      |NEPAL        |     9|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |     9|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    10|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    10|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    11|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    11|        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    12|        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |    12|        1|      0|   696|
|Birth     |JiVitA-3       |BANGLADESH   |     1|        0|   1834| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     1|        1|    278| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     2|        0|   1557| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     2|        1|    187| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     3|        0|   1882| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     3|        1|    178| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     4|        0|   1388| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     4|        1|    101| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     5|        0|    980| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     5|        1|    107| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     6|        0|   1008| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     6|        1|    103| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     7|        0|   1134| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     7|        1|    126| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     8|        0|   1530| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     8|        1|    185| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     9|        0|   2047| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |     9|        1|    220| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    10|        0|   2138| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    10|        1|    290| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    11|        0|   2155| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    11|        1|    327| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    12|        0|   2354| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |    12|        1|    346| 22455|
|Birth     |JiVitA-4       |BANGLADESH   |     1|        0|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     1|        1|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     2|        0|    309|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     2|        1|     24|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     3|        0|    352|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     3|        1|     44|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     4|        0|    422|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     4|        1|     45|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     5|        0|    408|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     5|        1|     41|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     6|        0|    323|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     6|        1|     34|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     7|        0|    334|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     7|        1|     24|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     8|        0|    236|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     8|        1|     11|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     9|        0|    144|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |     9|        1|      6|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    10|        0|     62|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    10|        1|      4|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    11|        0|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    11|        1|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    12|        0|      0|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |    12|        1|      0|  2823|
|Birth     |Keneba         |GAMBIA       |     1|        0|    136|  1543|
|Birth     |Keneba         |GAMBIA       |     1|        1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |     2|        0|    156|  1543|
|Birth     |Keneba         |GAMBIA       |     2|        1|      7|  1543|
|Birth     |Keneba         |GAMBIA       |     3|        0|    143|  1543|
|Birth     |Keneba         |GAMBIA       |     3|        1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |     4|        0|    163|  1543|
|Birth     |Keneba         |GAMBIA       |     4|        1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |     5|        0|    104|  1543|
|Birth     |Keneba         |GAMBIA       |     5|        1|      1|  1543|
|Birth     |Keneba         |GAMBIA       |     6|        0|    106|  1543|
|Birth     |Keneba         |GAMBIA       |     6|        1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |     7|        0|     88|  1543|
|Birth     |Keneba         |GAMBIA       |     7|        1|      1|  1543|
|Birth     |Keneba         |GAMBIA       |     8|        0|     75|  1543|
|Birth     |Keneba         |GAMBIA       |     8|        1|      1|  1543|
|Birth     |Keneba         |GAMBIA       |     9|        0|    124|  1543|
|Birth     |Keneba         |GAMBIA       |     9|        1|      1|  1543|
|Birth     |Keneba         |GAMBIA       |    10|        0|    122|  1543|
|Birth     |Keneba         |GAMBIA       |    10|        1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |    11|        0|    175|  1543|
|Birth     |Keneba         |GAMBIA       |    11|        1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |    12|        0|    122|  1543|
|Birth     |Keneba         |GAMBIA       |    12|        1|      2|  1543|
|Birth     |MAL-ED         |INDIA        |     1|        0|      2|    47|
|Birth     |MAL-ED         |INDIA        |     1|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     2|        0|      6|    47|
|Birth     |MAL-ED         |INDIA        |     2|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     3|        0|      3|    47|
|Birth     |MAL-ED         |INDIA        |     3|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     4|        0|      5|    47|
|Birth     |MAL-ED         |INDIA        |     4|        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |     5|        0|      4|    47|
|Birth     |MAL-ED         |INDIA        |     5|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     6|        0|      1|    47|
|Birth     |MAL-ED         |INDIA        |     6|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     7|        0|      3|    47|
|Birth     |MAL-ED         |INDIA        |     7|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     8|        0|      9|    47|
|Birth     |MAL-ED         |INDIA        |     8|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |     9|        0|      3|    47|
|Birth     |MAL-ED         |INDIA        |     9|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |    10|        0|      6|    47|
|Birth     |MAL-ED         |INDIA        |    10|        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |    11|        0|      3|    47|
|Birth     |MAL-ED         |INDIA        |    11|        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |    12|        0|      0|    47|
|Birth     |MAL-ED         |INDIA        |    12|        1|      0|    47|
|Birth     |MAL-ED         |BANGLADESH   |     1|        0|     19|   231|
|Birth     |MAL-ED         |BANGLADESH   |     1|        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |     2|        0|     21|   231|
|Birth     |MAL-ED         |BANGLADESH   |     2|        1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |     3|        0|     27|   231|
|Birth     |MAL-ED         |BANGLADESH   |     3|        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |     4|        0|     19|   231|
|Birth     |MAL-ED         |BANGLADESH   |     4|        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |     5|        0|     16|   231|
|Birth     |MAL-ED         |BANGLADESH   |     5|        1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |     6|        0|      7|   231|
|Birth     |MAL-ED         |BANGLADESH   |     6|        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |     7|        0|     14|   231|
|Birth     |MAL-ED         |BANGLADESH   |     7|        1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |     8|        0|     22|   231|
|Birth     |MAL-ED         |BANGLADESH   |     8|        1|      3|   231|
|Birth     |MAL-ED         |BANGLADESH   |     9|        0|     18|   231|
|Birth     |MAL-ED         |BANGLADESH   |     9|        1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |    10|        0|     20|   231|
|Birth     |MAL-ED         |BANGLADESH   |    10|        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |    11|        0|     15|   231|
|Birth     |MAL-ED         |BANGLADESH   |    11|        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |    12|        0|     24|   231|
|Birth     |MAL-ED         |BANGLADESH   |    12|        1|      1|   231|
|Birth     |MAL-ED         |PERU         |     1|        0|     27|   233|
|Birth     |MAL-ED         |PERU         |     1|        1|      1|   233|
|Birth     |MAL-ED         |PERU         |     2|        0|     20|   233|
|Birth     |MAL-ED         |PERU         |     2|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |     3|        0|     19|   233|
|Birth     |MAL-ED         |PERU         |     3|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |     4|        0|     14|   233|
|Birth     |MAL-ED         |PERU         |     4|        1|      1|   233|
|Birth     |MAL-ED         |PERU         |     5|        0|     20|   233|
|Birth     |MAL-ED         |PERU         |     5|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |     6|        0|     14|   233|
|Birth     |MAL-ED         |PERU         |     6|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |     7|        0|     19|   233|
|Birth     |MAL-ED         |PERU         |     7|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |     8|        0|     16|   233|
|Birth     |MAL-ED         |PERU         |     8|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |     9|        0|     19|   233|
|Birth     |MAL-ED         |PERU         |     9|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |    10|        0|     20|   233|
|Birth     |MAL-ED         |PERU         |    10|        1|      0|   233|
|Birth     |MAL-ED         |PERU         |    11|        0|     27|   233|
|Birth     |MAL-ED         |PERU         |    11|        1|      1|   233|
|Birth     |MAL-ED         |PERU         |    12|        0|     14|   233|
|Birth     |MAL-ED         |PERU         |    12|        1|      1|   233|
|Birth     |MAL-ED         |NEPAL        |     1|        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     1|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     2|        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     2|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     3|        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |     3|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     4|        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     4|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     5|        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     5|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     6|        0|      3|    27|
|Birth     |MAL-ED         |NEPAL        |     6|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     7|        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     7|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     8|        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |     8|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |     9|        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |     9|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |    10|        0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |    10|        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |    11|        0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |    11|        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |    12|        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |    12|        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |     1|        0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     1|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     2|        0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |     2|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     3|        0|      7|    65|
|Birth     |MAL-ED         |BRAZIL       |     3|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     4|        0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |     4|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     5|        0|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |     5|        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |     6|        0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     6|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     7|        0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     7|        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |     8|        0|      7|    65|
|Birth     |MAL-ED         |BRAZIL       |     8|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |     9|        0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |     9|        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |    10|        0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |    10|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |    11|        0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |    11|        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |    12|        0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |    12|        1|      0|    65|
|Birth     |MAL-ED         |TANZANIA     |     1|        0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |     1|        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |     2|        0|     14|   125|
|Birth     |MAL-ED         |TANZANIA     |     2|        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     3|        0|     13|   125|
|Birth     |MAL-ED         |TANZANIA     |     3|        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     4|        0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |     4|        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |     5|        0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |     5|        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     6|        0|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |     6|        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     7|        0|     15|   125|
|Birth     |MAL-ED         |TANZANIA     |     7|        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |     8|        0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |     8|        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |     9|        0|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |     9|        1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |    10|        0|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |    10|        1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |    11|        0|     13|   125|
|Birth     |MAL-ED         |TANZANIA     |    11|        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |    12|        0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |    12|        1|      1|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|        0|      9|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     1|        1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|        0|     13|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     2|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|        0|      9|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     3|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|        0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     4|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|        0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     5|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|        0|      7|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     6|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|        0|     13|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     7|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|        0|      4|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     8|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|        0|     10|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |     9|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|        0|     13|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    10|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|        0|     13|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    11|        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|        0|     18|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |    12|        1|      1|   123|
|Birth     |NIH-Birth      |BANGLADESH   |     1|        0|     58|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     1|        1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     2|        0|     57|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     2|        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     3|        0|     58|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     3|        1|      3|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     4|        0|     50|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     4|        1|      2|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     5|        0|     45|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     5|        1|      0|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     6|        0|     42|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     6|        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     7|        0|     45|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     7|        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     8|        0|     41|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     8|        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     9|        0|     33|   608|
|Birth     |NIH-Birth      |BANGLADESH   |     9|        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    10|        0|     60|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    10|        1|      0|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    11|        0|     49|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    11|        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    12|        0|     51|   608|
|Birth     |NIH-Birth      |BANGLADESH   |    12|        1|      1|   608|
|Birth     |PROBIT         |BELARUS      |     1|        0|    859| 13893|
|Birth     |PROBIT         |BELARUS      |     1|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     2|        0|    791| 13893|
|Birth     |PROBIT         |BELARUS      |     2|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     3|        0|    967| 13893|
|Birth     |PROBIT         |BELARUS      |     3|        1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |     4|        0|    956| 13893|
|Birth     |PROBIT         |BELARUS      |     4|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     5|        0|    957| 13893|
|Birth     |PROBIT         |BELARUS      |     5|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     6|        0|   1007| 13893|
|Birth     |PROBIT         |BELARUS      |     6|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     7|        0|   1281| 13893|
|Birth     |PROBIT         |BELARUS      |     7|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     8|        0|   1327| 13893|
|Birth     |PROBIT         |BELARUS      |     8|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |     9|        0|   1315| 13893|
|Birth     |PROBIT         |BELARUS      |     9|        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |    10|        0|   1509| 13893|
|Birth     |PROBIT         |BELARUS      |    10|        1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |    11|        0|   1396| 13893|
|Birth     |PROBIT         |BELARUS      |    11|        1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |    12|        0|   1523| 13893|
|Birth     |PROBIT         |BELARUS      |    12|        1|      0| 13893|
|Birth     |PROVIDE        |BANGLADESH   |     1|        0|     21|   539|
|Birth     |PROVIDE        |BANGLADESH   |     1|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     2|        0|     30|   539|
|Birth     |PROVIDE        |BANGLADESH   |     2|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     3|        0|     24|   539|
|Birth     |PROVIDE        |BANGLADESH   |     3|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     4|        0|     45|   539|
|Birth     |PROVIDE        |BANGLADESH   |     4|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     5|        0|     28|   539|
|Birth     |PROVIDE        |BANGLADESH   |     5|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     6|        0|     46|   539|
|Birth     |PROVIDE        |BANGLADESH   |     6|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     7|        0|     76|   539|
|Birth     |PROVIDE        |BANGLADESH   |     7|        1|      4|   539|
|Birth     |PROVIDE        |BANGLADESH   |     8|        0|     75|   539|
|Birth     |PROVIDE        |BANGLADESH   |     8|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |     9|        0|     54|   539|
|Birth     |PROVIDE        |BANGLADESH   |     9|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |    10|        0|     55|   539|
|Birth     |PROVIDE        |BANGLADESH   |    10|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |    11|        0|     54|   539|
|Birth     |PROVIDE        |BANGLADESH   |    11|        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |    12|        0|     27|   539|
|Birth     |PROVIDE        |BANGLADESH   |    12|        1|      0|   539|
|Birth     |ResPak         |PAKISTAN     |     1|        0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     1|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     2|        0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |     2|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     3|        0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     3|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     4|        0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     4|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     5|        0|      8|    42|
|Birth     |ResPak         |PAKISTAN     |     5|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     6|        0|      7|    42|
|Birth     |ResPak         |PAKISTAN     |     6|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |     7|        0|      8|    42|
|Birth     |ResPak         |PAKISTAN     |     7|        1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     8|        0|      7|    42|
|Birth     |ResPak         |PAKISTAN     |     8|        1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |     9|        0|      4|    42|
|Birth     |ResPak         |PAKISTAN     |     9|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    10|        0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |    10|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    11|        0|      1|    42|
|Birth     |ResPak         |PAKISTAN     |    11|        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    12|        0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |    12|        1|      0|    42|
|Birth     |SAS-CompFeed   |INDIA        |     1|        0|     75|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     1|        1|      7|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     2|        0|     67|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     2|        1|      5|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     3|        0|     71|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     3|        1|      9|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     4|        0|     61|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     4|        1|      2|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     5|        0|     67|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     5|        1|     13|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     6|        0|     96|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     6|        1|      6|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     7|        0|     96|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     7|        1|      5|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     8|        0|    133|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     8|        1|     12|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     9|        0|    139|  1252|
|Birth     |SAS-CompFeed   |INDIA        |     9|        1|      9|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    10|        0|    129|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    10|        1|      9|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    11|        0|    116|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    11|        1|      6|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    12|        0|    111|  1252|
|Birth     |SAS-CompFeed   |INDIA        |    12|        1|      8|  1252|
|Birth     |Vellore Crypto |INDIA        |     1|        0|     31|   388|
|Birth     |Vellore Crypto |INDIA        |     1|        1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |     2|        0|     24|   388|
|Birth     |Vellore Crypto |INDIA        |     2|        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |     3|        0|     27|   388|
|Birth     |Vellore Crypto |INDIA        |     3|        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |     4|        0|     22|   388|
|Birth     |Vellore Crypto |INDIA        |     4|        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |     5|        0|     20|   388|
|Birth     |Vellore Crypto |INDIA        |     5|        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |     6|        0|     31|   388|
|Birth     |Vellore Crypto |INDIA        |     6|        1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |     7|        0|     34|   388|
|Birth     |Vellore Crypto |INDIA        |     7|        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |     8|        0|     39|   388|
|Birth     |Vellore Crypto |INDIA        |     8|        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |     9|        0|     24|   388|
|Birth     |Vellore Crypto |INDIA        |     9|        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |    10|        0|     35|   388|
|Birth     |Vellore Crypto |INDIA        |    10|        1|      2|   388|
|Birth     |Vellore Crypto |INDIA        |    11|        0|     39|   388|
|Birth     |Vellore Crypto |INDIA        |    11|        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |    12|        0|     46|   388|
|Birth     |Vellore Crypto |INDIA        |    12|        1|      3|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|        0|   1292| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     1|        1|     57| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|        0|    997| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     2|        1|     44| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|        0|   1103| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     3|        1|     41| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|        0|    978| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     4|        1|     36| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|        0|    969| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     5|        1|     35| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|        0|   1091| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     6|        1|     44| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|        0|   1134| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     7|        1|     45| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|        0|   1207| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     8|        1|     25| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|        0|   1302| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |     9|        1|     20| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|        0|   1012| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    10|        1|     35| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|        0|   1108| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    11|        1|     32| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|        0|   1240| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |    12|        1|     28| 13875|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|        0|     31|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     1|        1|      3|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|        0|     14|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     2|        1|      2|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|        0|     32|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     3|        1|      0|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|        0|     40|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     4|        1|      4|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|        0|     27|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     5|        1|      6|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|        0|     32|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     6|        1|      6|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|        0|     29|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     7|        1|     11|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|        0|     17|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     8|        1|      0|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|        0|     16|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |     9|        1|      2|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|        0|     27|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    10|        1|      2|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|        0|     42|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    11|        1|      1|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|        0|     20|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |    12|        1|      5|   369|
|6 months  |CMIN           |BANGLADESH   |     1|        0|     22|   243|
|6 months  |CMIN           |BANGLADESH   |     1|        1|      5|   243|
|6 months  |CMIN           |BANGLADESH   |     2|        0|     27|   243|
|6 months  |CMIN           |BANGLADESH   |     2|        1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |     3|        0|     18|   243|
|6 months  |CMIN           |BANGLADESH   |     3|        1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     4|        0|     16|   243|
|6 months  |CMIN           |BANGLADESH   |     4|        1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     5|        0|     20|   243|
|6 months  |CMIN           |BANGLADESH   |     5|        1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |     6|        0|     22|   243|
|6 months  |CMIN           |BANGLADESH   |     6|        1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     7|        0|     10|   243|
|6 months  |CMIN           |BANGLADESH   |     7|        1|      2|   243|
|6 months  |CMIN           |BANGLADESH   |     8|        0|     12|   243|
|6 months  |CMIN           |BANGLADESH   |     8|        1|      1|   243|
|6 months  |CMIN           |BANGLADESH   |     9|        0|     10|   243|
|6 months  |CMIN           |BANGLADESH   |     9|        1|      6|   243|
|6 months  |CMIN           |BANGLADESH   |    10|        0|     17|   243|
|6 months  |CMIN           |BANGLADESH   |    10|        1|      3|   243|
|6 months  |CMIN           |BANGLADESH   |    11|        0|      2|   243|
|6 months  |CMIN           |BANGLADESH   |    11|        1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |    12|        0|     39|   243|
|6 months  |CMIN           |BANGLADESH   |    12|        1|      6|   243|
|6 months  |CONTENT        |PERU         |     1|        0|      9|   215|
|6 months  |CONTENT        |PERU         |     1|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     2|        0|     13|   215|
|6 months  |CONTENT        |PERU         |     2|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     3|        0|     27|   215|
|6 months  |CONTENT        |PERU         |     3|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     4|        0|     17|   215|
|6 months  |CONTENT        |PERU         |     4|        1|      1|   215|
|6 months  |CONTENT        |PERU         |     5|        0|     25|   215|
|6 months  |CONTENT        |PERU         |     5|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     6|        0|     14|   215|
|6 months  |CONTENT        |PERU         |     6|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     7|        0|     16|   215|
|6 months  |CONTENT        |PERU         |     7|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     8|        0|     26|   215|
|6 months  |CONTENT        |PERU         |     8|        1|      0|   215|
|6 months  |CONTENT        |PERU         |     9|        0|     19|   215|
|6 months  |CONTENT        |PERU         |     9|        1|      0|   215|
|6 months  |CONTENT        |PERU         |    10|        0|     23|   215|
|6 months  |CONTENT        |PERU         |    10|        1|      0|   215|
|6 months  |CONTENT        |PERU         |    11|        0|     18|   215|
|6 months  |CONTENT        |PERU         |    11|        1|      0|   215|
|6 months  |CONTENT        |PERU         |    12|        0|      7|   215|
|6 months  |CONTENT        |PERU         |    12|        1|      0|   215|
|6 months  |EE             |PAKISTAN     |     1|        0|     64|   373|
|6 months  |EE             |PAKISTAN     |     1|        1|     27|   373|
|6 months  |EE             |PAKISTAN     |     2|        0|     52|   373|
|6 months  |EE             |PAKISTAN     |     2|        1|     14|   373|
|6 months  |EE             |PAKISTAN     |     3|        0|     36|   373|
|6 months  |EE             |PAKISTAN     |     3|        1|      6|   373|
|6 months  |EE             |PAKISTAN     |     4|        0|     11|   373|
|6 months  |EE             |PAKISTAN     |     4|        1|      5|   373|
|6 months  |EE             |PAKISTAN     |     5|        0|      0|   373|
|6 months  |EE             |PAKISTAN     |     5|        1|      0|   373|
|6 months  |EE             |PAKISTAN     |     6|        0|      0|   373|
|6 months  |EE             |PAKISTAN     |     6|        1|      0|   373|
|6 months  |EE             |PAKISTAN     |     7|        0|      0|   373|
|6 months  |EE             |PAKISTAN     |     7|        1|      0|   373|
|6 months  |EE             |PAKISTAN     |     8|        0|      0|   373|
|6 months  |EE             |PAKISTAN     |     8|        1|      0|   373|
|6 months  |EE             |PAKISTAN     |     9|        0|      0|   373|
|6 months  |EE             |PAKISTAN     |     9|        1|      0|   373|
|6 months  |EE             |PAKISTAN     |    10|        0|      3|   373|
|6 months  |EE             |PAKISTAN     |    10|        1|      1|   373|
|6 months  |EE             |PAKISTAN     |    11|        0|     56|   373|
|6 months  |EE             |PAKISTAN     |    11|        1|     14|   373|
|6 months  |EE             |PAKISTAN     |    12|        0|     70|   373|
|6 months  |EE             |PAKISTAN     |    12|        1|     14|   373|
|6 months  |GMS-Nepal      |NEPAL        |     1|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     1|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     2|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     3|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     4|        1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     5|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|        0|    110|   564|
|6 months  |GMS-Nepal      |NEPAL        |     6|        1|      5|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|        0|    204|   564|
|6 months  |GMS-Nepal      |NEPAL        |     7|        1|      7|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|        0|    229|   564|
|6 months  |GMS-Nepal      |NEPAL        |     8|        1|      8|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |     9|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    10|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    11|        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |    12|        1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|        0|     17|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     1|        1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|        0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     2|        1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|        0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     3|        1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|        0|     25|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     4|        1|      2|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|        0|     30|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     5|        1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|        0|     35|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     6|        1|      4|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|        0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     7|        1|      4|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|        0|     16|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     8|        1|      3|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|        0|     32|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |     9|        1|      2|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|        0|     23|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    10|        1|      6|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|        0|     25|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    11|        1|      3|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|        0|      9|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |    12|        1|      1|   299|
|6 months  |JiVitA-3       |BANGLADESH   |     1|        0|   1280| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     1|        1|     83| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     2|        0|   1127| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     2|        1|     57| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     3|        0|   1343| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     3|        1|     79| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     4|        0|   1127| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     4|        1|     66| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     5|        0|   1069| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     5|        1|     75| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     6|        0|   1105| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     6|        1|     61| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     7|        0|   1178| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     7|        1|     74| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     8|        0|   1393| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     8|        1|     81| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     9|        0|   1454| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |     9|        1|    103| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    10|        0|   1560| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    10|        1|    115| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    11|        0|   1558| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    11|        1|    119| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    12|        0|   1597| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |    12|        1|    107| 16811|
|6 months  |JiVitA-4       |BANGLADESH   |     1|        0|     49|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     1|        1|      1|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     2|        0|    163|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     2|        1|      2|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     3|        0|    407|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     3|        1|     25|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     4|        0|    804|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     4|        1|     49|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     5|        0|    557|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     5|        1|     33|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     6|        0|    407|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     6|        1|     29|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     7|        0|    778|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     7|        1|     63|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     8|        0|    495|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     8|        1|     22|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     9|        0|    402|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |     9|        1|     16|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    10|        0|    281|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    10|        1|     19|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    11|        0|    146|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    11|        1|      7|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    12|        0|     71|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |    12|        1|      5|  4831|
|6 months  |Keneba         |GAMBIA       |     1|        0|    172|  2089|
|6 months  |Keneba         |GAMBIA       |     1|        1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |     2|        0|    218|  2089|
|6 months  |Keneba         |GAMBIA       |     2|        1|      6|  2089|
|6 months  |Keneba         |GAMBIA       |     3|        0|    171|  2089|
|6 months  |Keneba         |GAMBIA       |     3|        1|      9|  2089|
|6 months  |Keneba         |GAMBIA       |     4|        0|    210|  2089|
|6 months  |Keneba         |GAMBIA       |     4|        1|     11|  2089|
|6 months  |Keneba         |GAMBIA       |     5|        0|    159|  2089|
|6 months  |Keneba         |GAMBIA       |     5|        1|      2|  2089|
|6 months  |Keneba         |GAMBIA       |     6|        0|    142|  2089|
|6 months  |Keneba         |GAMBIA       |     6|        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |     7|        0|    115|  2089|
|6 months  |Keneba         |GAMBIA       |     7|        1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |     8|        0|    109|  2089|
|6 months  |Keneba         |GAMBIA       |     8|        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |     9|        0|    161|  2089|
|6 months  |Keneba         |GAMBIA       |     9|        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |    10|        0|    158|  2089|
|6 months  |Keneba         |GAMBIA       |    10|        1|      4|  2089|
|6 months  |Keneba         |GAMBIA       |    11|        0|    228|  2089|
|6 months  |Keneba         |GAMBIA       |    11|        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |    12|        0|    176|  2089|
|6 months  |Keneba         |GAMBIA       |    12|        1|      3|  2089|
|6 months  |LCNI-5         |MALAWI       |     1|        0|     51|   839|
|6 months  |LCNI-5         |MALAWI       |     1|        1|      4|   839|
|6 months  |LCNI-5         |MALAWI       |     2|        0|    111|   839|
|6 months  |LCNI-5         |MALAWI       |     2|        1|      3|   839|
|6 months  |LCNI-5         |MALAWI       |     3|        0|     89|   839|
|6 months  |LCNI-5         |MALAWI       |     3|        1|      9|   839|
|6 months  |LCNI-5         |MALAWI       |     4|        0|     95|   839|
|6 months  |LCNI-5         |MALAWI       |     4|        1|     15|   839|
|6 months  |LCNI-5         |MALAWI       |     5|        0|    102|   839|
|6 months  |LCNI-5         |MALAWI       |     5|        1|      9|   839|
|6 months  |LCNI-5         |MALAWI       |     6|        0|     87|   839|
|6 months  |LCNI-5         |MALAWI       |     6|        1|      4|   839|
|6 months  |LCNI-5         |MALAWI       |     7|        0|     63|   839|
|6 months  |LCNI-5         |MALAWI       |     7|        1|      9|   839|
|6 months  |LCNI-5         |MALAWI       |     8|        0|     39|   839|
|6 months  |LCNI-5         |MALAWI       |     8|        1|      2|   839|
|6 months  |LCNI-5         |MALAWI       |     9|        0|     26|   839|
|6 months  |LCNI-5         |MALAWI       |     9|        1|      3|   839|
|6 months  |LCNI-5         |MALAWI       |    10|        0|     34|   839|
|6 months  |LCNI-5         |MALAWI       |    10|        1|      1|   839|
|6 months  |LCNI-5         |MALAWI       |    11|        0|     43|   839|
|6 months  |LCNI-5         |MALAWI       |    11|        1|      6|   839|
|6 months  |LCNI-5         |MALAWI       |    12|        0|     28|   839|
|6 months  |LCNI-5         |MALAWI       |    12|        1|      6|   839|
|6 months  |MAL-ED         |INDIA        |     1|        0|     18|   236|
|6 months  |MAL-ED         |INDIA        |     1|        1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     2|        0|     18|   236|
|6 months  |MAL-ED         |INDIA        |     2|        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     3|        0|     21|   236|
|6 months  |MAL-ED         |INDIA        |     3|        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     4|        0|     16|   236|
|6 months  |MAL-ED         |INDIA        |     4|        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     5|        0|      8|   236|
|6 months  |MAL-ED         |INDIA        |     5|        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     6|        0|     18|   236|
|6 months  |MAL-ED         |INDIA        |     6|        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |     7|        0|     19|   236|
|6 months  |MAL-ED         |INDIA        |     7|        1|      3|   236|
|6 months  |MAL-ED         |INDIA        |     8|        0|     22|   236|
|6 months  |MAL-ED         |INDIA        |     8|        1|      1|   236|
|6 months  |MAL-ED         |INDIA        |     9|        0|     19|   236|
|6 months  |MAL-ED         |INDIA        |     9|        1|      1|   236|
|6 months  |MAL-ED         |INDIA        |    10|        0|     25|   236|
|6 months  |MAL-ED         |INDIA        |    10|        1|      2|   236|
|6 months  |MAL-ED         |INDIA        |    11|        0|     25|   236|
|6 months  |MAL-ED         |INDIA        |    11|        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |    12|        0|     18|   236|
|6 months  |MAL-ED         |INDIA        |    12|        1|      1|   236|
|6 months  |MAL-ED         |BANGLADESH   |     1|        0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |     1|        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|        0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |     2|        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|        0|     24|   241|
|6 months  |MAL-ED         |BANGLADESH   |     3|        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|        0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |     4|        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|        0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |     5|        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|        0|      8|   241|
|6 months  |MAL-ED         |BANGLADESH   |     6|        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|        0|     19|   241|
|6 months  |MAL-ED         |BANGLADESH   |     7|        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|        0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |     8|        1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|        0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |     9|        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|        0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |    10|        1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|        0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |    11|        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|        0|     26|   241|
|6 months  |MAL-ED         |BANGLADESH   |    12|        1|      0|   241|
|6 months  |MAL-ED         |PERU         |     1|        0|     35|   273|
|6 months  |MAL-ED         |PERU         |     1|        1|      1|   273|
|6 months  |MAL-ED         |PERU         |     2|        0|     19|   273|
|6 months  |MAL-ED         |PERU         |     2|        1|      2|   273|
|6 months  |MAL-ED         |PERU         |     3|        0|     20|   273|
|6 months  |MAL-ED         |PERU         |     3|        1|      1|   273|
|6 months  |MAL-ED         |PERU         |     4|        0|     19|   273|
|6 months  |MAL-ED         |PERU         |     4|        1|      1|   273|
|6 months  |MAL-ED         |PERU         |     5|        0|     25|   273|
|6 months  |MAL-ED         |PERU         |     5|        1|      0|   273|
|6 months  |MAL-ED         |PERU         |     6|        0|     17|   273|
|6 months  |MAL-ED         |PERU         |     6|        1|      1|   273|
|6 months  |MAL-ED         |PERU         |     7|        0|     22|   273|
|6 months  |MAL-ED         |PERU         |     7|        1|      0|   273|
|6 months  |MAL-ED         |PERU         |     8|        0|     16|   273|
|6 months  |MAL-ED         |PERU         |     8|        1|      0|   273|
|6 months  |MAL-ED         |PERU         |     9|        0|     23|   273|
|6 months  |MAL-ED         |PERU         |     9|        1|      0|   273|
|6 months  |MAL-ED         |PERU         |    10|        0|     19|   273|
|6 months  |MAL-ED         |PERU         |    10|        1|      0|   273|
|6 months  |MAL-ED         |PERU         |    11|        0|     28|   273|
|6 months  |MAL-ED         |PERU         |    11|        1|      4|   273|
|6 months  |MAL-ED         |PERU         |    12|        0|     20|   273|
|6 months  |MAL-ED         |PERU         |    12|        1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |     1|        0|     20|   236|
|6 months  |MAL-ED         |NEPAL        |     1|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     2|        0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |     2|        1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |     3|        0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |     3|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     4|        0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     4|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     5|        0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |     5|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     6|        0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |     6|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     7|        0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |     7|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     8|        0|     24|   236|
|6 months  |MAL-ED         |NEPAL        |     8|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |     9|        0|     14|   236|
|6 months  |MAL-ED         |NEPAL        |     9|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    10|        0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |    10|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    11|        0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |    11|        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |    12|        0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |    12|        1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |     1|        0|     13|   209|
|6 months  |MAL-ED         |BRAZIL       |     1|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|        0|     24|   209|
|6 months  |MAL-ED         |BRAZIL       |     2|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|        0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     3|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|        0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |     4|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|        0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |     5|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|        0|      7|   209|
|6 months  |MAL-ED         |BRAZIL       |     6|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|        0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |     7|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|        0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |     8|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|        0|     29|   209|
|6 months  |MAL-ED         |BRAZIL       |     9|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|        0|     21|   209|
|6 months  |MAL-ED         |BRAZIL       |    10|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|        0|     18|   209|
|6 months  |MAL-ED         |BRAZIL       |    11|        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|        0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |    12|        1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |     1|        0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |     1|        1|      3|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|        0|     26|   247|
|6 months  |MAL-ED         |TANZANIA     |     2|        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|        0|     19|   247|
|6 months  |MAL-ED         |TANZANIA     |     3|        1|      2|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|        0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |     4|        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|        0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |     5|        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|        0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |     6|        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|        0|     22|   247|
|6 months  |MAL-ED         |TANZANIA     |     7|        1|      2|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|        0|     11|   247|
|6 months  |MAL-ED         |TANZANIA     |     8|        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|        0|     21|   247|
|6 months  |MAL-ED         |TANZANIA     |     9|        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|        0|     17|   247|
|6 months  |MAL-ED         |TANZANIA     |    10|        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|        0|     26|   247|
|6 months  |MAL-ED         |TANZANIA     |    11|        1|      3|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|        0|     29|   247|
|6 months  |MAL-ED         |TANZANIA     |    12|        1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|        0|     36|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     1|        1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|        0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     2|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|        0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     3|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|        0|     13|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     4|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|        0|     11|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     5|        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|        0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     6|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|        0|     24|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     7|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|        0|      9|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     8|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|        0|     18|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |     9|        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|        0|     25|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    10|        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|        0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    11|        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|        0|     35|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |    12|        1|      1|   254|
|6 months  |NIH-Birth      |BANGLADESH   |     1|        0|     46|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     1|        1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|        0|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     2|        1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|        0|     46|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     3|        1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|        0|     42|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     4|        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|        0|     39|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     5|        1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|        0|     35|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     6|        1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|        0|     42|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     7|        1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|        0|     36|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     8|        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|        0|     28|   537|
|6 months  |NIH-Birth      |BANGLADESH   |     9|        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|        0|     48|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    10|        1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|        0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    11|        1|      5|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|        0|     49|   537|
|6 months  |NIH-Birth      |BANGLADESH   |    12|        1|      1|   537|
|6 months  |PROBIT         |BELARUS      |     1|        0|   1086| 15760|
|6 months  |PROBIT         |BELARUS      |     1|        1|     15| 15760|
|6 months  |PROBIT         |BELARUS      |     2|        0|    937| 15760|
|6 months  |PROBIT         |BELARUS      |     2|        1|     14| 15760|
|6 months  |PROBIT         |BELARUS      |     3|        0|   1098| 15760|
|6 months  |PROBIT         |BELARUS      |     3|        1|     16| 15760|
|6 months  |PROBIT         |BELARUS      |     4|        0|   1056| 15760|
|6 months  |PROBIT         |BELARUS      |     4|        1|     13| 15760|
|6 months  |PROBIT         |BELARUS      |     5|        0|   1087| 15760|
|6 months  |PROBIT         |BELARUS      |     5|        1|      9| 15760|
|6 months  |PROBIT         |BELARUS      |     6|        0|   1107| 15760|
|6 months  |PROBIT         |BELARUS      |     6|        1|     14| 15760|
|6 months  |PROBIT         |BELARUS      |     7|        0|   1350| 15760|
|6 months  |PROBIT         |BELARUS      |     7|        1|     14| 15760|
|6 months  |PROBIT         |BELARUS      |     8|        0|   1483| 15760|
|6 months  |PROBIT         |BELARUS      |     8|        1|     15| 15760|
|6 months  |PROBIT         |BELARUS      |     9|        0|   1469| 15760|
|6 months  |PROBIT         |BELARUS      |     9|        1|     13| 15760|
|6 months  |PROBIT         |BELARUS      |    10|        0|   1651| 15760|
|6 months  |PROBIT         |BELARUS      |    10|        1|     17| 15760|
|6 months  |PROBIT         |BELARUS      |    11|        0|   1567| 15760|
|6 months  |PROBIT         |BELARUS      |    11|        1|     23| 15760|
|6 months  |PROBIT         |BELARUS      |    12|        0|   1692| 15760|
|6 months  |PROBIT         |BELARUS      |    12|        1|     14| 15760|
|6 months  |PROVIDE        |BANGLADESH   |     1|        0|     29|   604|
|6 months  |PROVIDE        |BANGLADESH   |     1|        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |     2|        0|     35|   604|
|6 months  |PROVIDE        |BANGLADESH   |     2|        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |     3|        0|     32|   604|
|6 months  |PROVIDE        |BANGLADESH   |     3|        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |     4|        0|     42|   604|
|6 months  |PROVIDE        |BANGLADESH   |     4|        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |     5|        0|     35|   604|
|6 months  |PROVIDE        |BANGLADESH   |     5|        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |     6|        0|     40|   604|
|6 months  |PROVIDE        |BANGLADESH   |     6|        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |     7|        0|     73|   604|
|6 months  |PROVIDE        |BANGLADESH   |     7|        1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH   |     8|        0|     74|   604|
|6 months  |PROVIDE        |BANGLADESH   |     8|        1|      2|   604|
|6 months  |PROVIDE        |BANGLADESH   |     9|        0|     59|   604|
|6 months  |PROVIDE        |BANGLADESH   |     9|        1|      2|   604|
|6 months  |PROVIDE        |BANGLADESH   |    10|        0|     64|   604|
|6 months  |PROVIDE        |BANGLADESH   |    10|        1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |    11|        0|     67|   604|
|6 months  |PROVIDE        |BANGLADESH   |    11|        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |    12|        0|     40|   604|
|6 months  |PROVIDE        |BANGLADESH   |    12|        1|      1|   604|
|6 months  |ResPak         |PAKISTAN     |     1|        0|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     1|        1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     2|        0|      7|   239|
|6 months  |ResPak         |PAKISTAN     |     2|        1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |     3|        0|     10|   239|
|6 months  |ResPak         |PAKISTAN     |     3|        1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |     4|        0|     12|   239|
|6 months  |ResPak         |PAKISTAN     |     4|        1|      8|   239|
|6 months  |ResPak         |PAKISTAN     |     5|        0|     22|   239|
|6 months  |ResPak         |PAKISTAN     |     5|        1|      8|   239|
|6 months  |ResPak         |PAKISTAN     |     6|        0|     28|   239|
|6 months  |ResPak         |PAKISTAN     |     6|        1|     11|   239|
|6 months  |ResPak         |PAKISTAN     |     7|        0|     38|   239|
|6 months  |ResPak         |PAKISTAN     |     7|        1|      5|   239|
|6 months  |ResPak         |PAKISTAN     |     8|        0|     24|   239|
|6 months  |ResPak         |PAKISTAN     |     8|        1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |     9|        0|     30|   239|
|6 months  |ResPak         |PAKISTAN     |     9|        1|      7|   239|
|6 months  |ResPak         |PAKISTAN     |    10|        0|     12|   239|
|6 months  |ResPak         |PAKISTAN     |    10|        1|      3|   239|
|6 months  |ResPak         |PAKISTAN     |    11|        0|      6|   239|
|6 months  |ResPak         |PAKISTAN     |    11|        1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |    12|        0|      3|   239|
|6 months  |ResPak         |PAKISTAN     |    12|        1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |     1|        0|     78|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     1|        1|      7|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     2|        0|     74|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     2|        1|      7|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     3|        0|     72|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     3|        1|      7|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     4|        0|     72|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     4|        1|      4|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     5|        0|     67|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     5|        1|      9|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     6|        0|     91|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     6|        1|     11|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     7|        0|     98|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     7|        1|     17|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     8|        0|    136|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     8|        1|     16|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     9|        0|    152|  1336|
|6 months  |SAS-CompFeed   |INDIA        |     9|        1|     14|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    10|        0|    140|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    10|        1|     10|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    11|        0|    114|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    11|        1|     11|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    12|        0|    114|  1336|
|6 months  |SAS-CompFeed   |INDIA        |    12|        1|     15|  1336|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|        0|     49|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     1|        1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|        0|     29|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     2|        1|      8|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|        0|     30|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     3|        1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|        0|     22|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     4|        1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|        0|     25|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     5|        1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|        0|     26|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     6|        1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|        0|     16|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     7|        1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|        0|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     8|        1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|        0|     11|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |     9|        1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|        0|     20|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    10|        1|      6|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|        0|     41|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    11|        1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|        0|     57|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |    12|        1|      5|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|        0|    136|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     1|        1|      2|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|        0|    147|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     2|        1|      2|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|        0|    144|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     3|        1|      2|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|        0|    147|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     4|        1|      0|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|        0|    152|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     5|        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|        0|    141|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     6|        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|        0|    185|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     7|        1|      2|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|        0|    203|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     8|        1|      3|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|        0|    180|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |     9|        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|        0|    205|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    10|        1|      5|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|        0|    192|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    11|        1|      0|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|        0|    178|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |    12|        1|      0|  2029|
|6 months  |Vellore Crypto |INDIA        |     1|        0|     32|   407|
|6 months  |Vellore Crypto |INDIA        |     1|        1|      4|   407|
|6 months  |Vellore Crypto |INDIA        |     2|        0|     24|   407|
|6 months  |Vellore Crypto |INDIA        |     2|        1|      4|   407|
|6 months  |Vellore Crypto |INDIA        |     3|        0|     28|   407|
|6 months  |Vellore Crypto |INDIA        |     3|        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |     4|        0|     18|   407|
|6 months  |Vellore Crypto |INDIA        |     4|        1|      4|   407|
|6 months  |Vellore Crypto |INDIA        |     5|        0|     17|   407|
|6 months  |Vellore Crypto |INDIA        |     5|        1|      3|   407|
|6 months  |Vellore Crypto |INDIA        |     6|        0|     36|   407|
|6 months  |Vellore Crypto |INDIA        |     6|        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |     7|        0|     35|   407|
|6 months  |Vellore Crypto |INDIA        |     7|        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |     8|        0|     44|   407|
|6 months  |Vellore Crypto |INDIA        |     8|        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |     9|        0|     26|   407|
|6 months  |Vellore Crypto |INDIA        |     9|        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |    10|        0|     36|   407|
|6 months  |Vellore Crypto |INDIA        |    10|        1|      0|   407|
|6 months  |Vellore Crypto |INDIA        |    11|        0|     36|   407|
|6 months  |Vellore Crypto |INDIA        |    11|        1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |    12|        0|     46|   407|
|6 months  |Vellore Crypto |INDIA        |    12|        1|      4|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|        0|    802|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     1|        1|     28|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|        0|    592|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     2|        1|     21|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|        0|    704|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     3|        1|     47|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|        0|    646|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     4|        1|     26|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|        0|    608|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     5|        1|     24|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|        0|    644|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     6|        1|     32|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|        0|    636|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     7|        1|     36|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|        0|    746|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     8|        1|     23|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|        0|    771|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |     9|        1|     26|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|        0|    606|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    10|        1|     23|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|        0|    732|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    11|        1|     30|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|        0|    831|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |    12|        1|     35|  8669|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|        0|     26|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     1|        1|      8|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|        0|      9|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     2|        1|      7|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|        0|     18|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     3|        1|     14|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|        0|     28|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     4|        1|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|        0|     21|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     5|        1|     12|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|        0|     26|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     6|        1|     12|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|        0|     29|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     7|        1|     11|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|        0|     12|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     8|        1|      5|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|        0|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |     9|        1|      3|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|        0|     20|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    10|        1|      9|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|        0|     29|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    11|        1|     15|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|        0|     12|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |    12|        1|     13|   371|
|24 months |CMIN           |BANGLADESH   |     1|        0|     21|   242|
|24 months |CMIN           |BANGLADESH   |     1|        1|      5|   242|
|24 months |CMIN           |BANGLADESH   |     2|        0|     20|   242|
|24 months |CMIN           |BANGLADESH   |     2|        1|     11|   242|
|24 months |CMIN           |BANGLADESH   |     3|        0|     15|   242|
|24 months |CMIN           |BANGLADESH   |     3|        1|      4|   242|
|24 months |CMIN           |BANGLADESH   |     4|        0|     14|   242|
|24 months |CMIN           |BANGLADESH   |     4|        1|      4|   242|
|24 months |CMIN           |BANGLADESH   |     5|        0|     16|   242|
|24 months |CMIN           |BANGLADESH   |     5|        1|      3|   242|
|24 months |CMIN           |BANGLADESH   |     6|        0|     19|   242|
|24 months |CMIN           |BANGLADESH   |     6|        1|      3|   242|
|24 months |CMIN           |BANGLADESH   |     7|        0|      7|   242|
|24 months |CMIN           |BANGLADESH   |     7|        1|      5|   242|
|24 months |CMIN           |BANGLADESH   |     8|        0|     11|   242|
|24 months |CMIN           |BANGLADESH   |     8|        1|      2|   242|
|24 months |CMIN           |BANGLADESH   |     9|        0|      9|   242|
|24 months |CMIN           |BANGLADESH   |     9|        1|      9|   242|
|24 months |CMIN           |BANGLADESH   |    10|        0|     15|   242|
|24 months |CMIN           |BANGLADESH   |    10|        1|      4|   242|
|24 months |CMIN           |BANGLADESH   |    11|        0|      1|   242|
|24 months |CMIN           |BANGLADESH   |    11|        1|      1|   242|
|24 months |CMIN           |BANGLADESH   |    12|        0|     26|   242|
|24 months |CMIN           |BANGLADESH   |    12|        1|     17|   242|
|24 months |CONTENT        |PERU         |     1|        0|      8|   164|
|24 months |CONTENT        |PERU         |     1|        1|      0|   164|
|24 months |CONTENT        |PERU         |     2|        0|     10|   164|
|24 months |CONTENT        |PERU         |     2|        1|      0|   164|
|24 months |CONTENT        |PERU         |     3|        0|     20|   164|
|24 months |CONTENT        |PERU         |     3|        1|      0|   164|
|24 months |CONTENT        |PERU         |     4|        0|     13|   164|
|24 months |CONTENT        |PERU         |     4|        1|      0|   164|
|24 months |CONTENT        |PERU         |     5|        0|     22|   164|
|24 months |CONTENT        |PERU         |     5|        1|      0|   164|
|24 months |CONTENT        |PERU         |     6|        0|     11|   164|
|24 months |CONTENT        |PERU         |     6|        1|      0|   164|
|24 months |CONTENT        |PERU         |     7|        0|     13|   164|
|24 months |CONTENT        |PERU         |     7|        1|      0|   164|
|24 months |CONTENT        |PERU         |     8|        0|     23|   164|
|24 months |CONTENT        |PERU         |     8|        1|      0|   164|
|24 months |CONTENT        |PERU         |     9|        0|     10|   164|
|24 months |CONTENT        |PERU         |     9|        1|      1|   164|
|24 months |CONTENT        |PERU         |    10|        0|     12|   164|
|24 months |CONTENT        |PERU         |    10|        1|      0|   164|
|24 months |CONTENT        |PERU         |    11|        0|     17|   164|
|24 months |CONTENT        |PERU         |    11|        1|      0|   164|
|24 months |CONTENT        |PERU         |    12|        0|      4|   164|
|24 months |CONTENT        |PERU         |    12|        1|      0|   164|
|24 months |EE             |PAKISTAN     |     1|        0|     10|   167|
|24 months |EE             |PAKISTAN     |     1|        1|      3|   167|
|24 months |EE             |PAKISTAN     |     2|        0|      1|   167|
|24 months |EE             |PAKISTAN     |     2|        1|      3|   167|
|24 months |EE             |PAKISTAN     |     3|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     3|        1|      0|   167|
|24 months |EE             |PAKISTAN     |     4|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     4|        1|      0|   167|
|24 months |EE             |PAKISTAN     |     5|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     5|        1|      0|   167|
|24 months |EE             |PAKISTAN     |     6|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     6|        1|      0|   167|
|24 months |EE             |PAKISTAN     |     7|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     7|        1|      0|   167|
|24 months |EE             |PAKISTAN     |     8|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     8|        1|      0|   167|
|24 months |EE             |PAKISTAN     |     9|        0|      0|   167|
|24 months |EE             |PAKISTAN     |     9|        1|      0|   167|
|24 months |EE             |PAKISTAN     |    10|        0|      3|   167|
|24 months |EE             |PAKISTAN     |    10|        1|      1|   167|
|24 months |EE             |PAKISTAN     |    11|        0|     45|   167|
|24 months |EE             |PAKISTAN     |    11|        1|     21|   167|
|24 months |EE             |PAKISTAN     |    12|        0|     49|   167|
|24 months |EE             |PAKISTAN     |    12|        1|     31|   167|
|24 months |GMS-Nepal      |NEPAL        |     1|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     1|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     2|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     2|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     3|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     3|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     4|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     4|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     5|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     5|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     6|        0|     66|   488|
|24 months |GMS-Nepal      |NEPAL        |     6|        1|      7|   488|
|24 months |GMS-Nepal      |NEPAL        |     7|        0|    176|   488|
|24 months |GMS-Nepal      |NEPAL        |     7|        1|     24|   488|
|24 months |GMS-Nepal      |NEPAL        |     8|        0|    193|   488|
|24 months |GMS-Nepal      |NEPAL        |     8|        1|     22|   488|
|24 months |GMS-Nepal      |NEPAL        |     9|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |     9|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    10|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    10|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    11|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    11|        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    12|        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |    12|        1|      0|   488|
|24 months |JiVitA-3       |BANGLADESH   |     1|        0|    586|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     1|        1|    118|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     2|        0|    492|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     2|        1|    114|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     3|        0|    624|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     3|        1|    110|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     4|        0|    471|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     4|        1|     67|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     5|        0|    327|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     5|        1|     60|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     6|        0|    489|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     6|        1|     78|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     7|        0|    567|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     7|        1|     85|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     8|        0|    564|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     8|        1|     85|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     9|        0|    646|  8632|
|24 months |JiVitA-3       |BANGLADESH   |     9|        1|     90|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    10|        0|    747|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    10|        1|    126|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    11|        0|    767|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    11|        1|    182|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    12|        0|   1005|  8632|
|24 months |JiVitA-3       |BANGLADESH   |    12|        1|    232|  8632|
|24 months |JiVitA-4       |BANGLADESH   |     1|        0|     43|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     1|        1|      1|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     2|        0|    295|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     2|        1|     33|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     3|        0|    361|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     3|        1|     43|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     4|        0|    713|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     4|        1|     98|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     5|        0|    500|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     5|        1|     62|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     6|        0|    391|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     6|        1|     32|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     7|        0|    702|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     7|        1|     89|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     8|        0|    453|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     8|        1|     27|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     9|        0|    387|  4752|
|24 months |JiVitA-4       |BANGLADESH   |     9|        1|     39|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    10|        0|    254|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    10|        1|     16|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    11|        0|    135|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    11|        1|      8|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    12|        0|     65|  4752|
|24 months |JiVitA-4       |BANGLADESH   |    12|        1|      5|  4752|
|24 months |Keneba         |GAMBIA       |     1|        0|    134|  1725|
|24 months |Keneba         |GAMBIA       |     1|        1|     22|  1725|
|24 months |Keneba         |GAMBIA       |     2|        0|    162|  1725|
|24 months |Keneba         |GAMBIA       |     2|        1|     12|  1725|
|24 months |Keneba         |GAMBIA       |     3|        0|    137|  1725|
|24 months |Keneba         |GAMBIA       |     3|        1|     17|  1725|
|24 months |Keneba         |GAMBIA       |     4|        0|    156|  1725|
|24 months |Keneba         |GAMBIA       |     4|        1|     13|  1725|
|24 months |Keneba         |GAMBIA       |     5|        0|    115|  1725|
|24 months |Keneba         |GAMBIA       |     5|        1|     10|  1725|
|24 months |Keneba         |GAMBIA       |     6|        0|    125|  1725|
|24 months |Keneba         |GAMBIA       |     6|        1|      6|  1725|
|24 months |Keneba         |GAMBIA       |     7|        0|     89|  1725|
|24 months |Keneba         |GAMBIA       |     7|        1|      6|  1725|
|24 months |Keneba         |GAMBIA       |     8|        0|     85|  1725|
|24 months |Keneba         |GAMBIA       |     8|        1|      7|  1725|
|24 months |Keneba         |GAMBIA       |     9|        0|    147|  1725|
|24 months |Keneba         |GAMBIA       |     9|        1|      7|  1725|
|24 months |Keneba         |GAMBIA       |    10|        0|    138|  1725|
|24 months |Keneba         |GAMBIA       |    10|        1|     16|  1725|
|24 months |Keneba         |GAMBIA       |    11|        0|    177|  1725|
|24 months |Keneba         |GAMBIA       |    11|        1|     12|  1725|
|24 months |Keneba         |GAMBIA       |    12|        0|    120|  1725|
|24 months |Keneba         |GAMBIA       |    12|        1|     12|  1725|
|24 months |LCNI-5         |MALAWI       |     1|        0|     35|   579|
|24 months |LCNI-5         |MALAWI       |     1|        1|      6|   579|
|24 months |LCNI-5         |MALAWI       |     2|        0|     83|   579|
|24 months |LCNI-5         |MALAWI       |     2|        1|      5|   579|
|24 months |LCNI-5         |MALAWI       |     3|        0|     65|   579|
|24 months |LCNI-5         |MALAWI       |     3|        1|      5|   579|
|24 months |LCNI-5         |MALAWI       |     4|        0|     62|   579|
|24 months |LCNI-5         |MALAWI       |     4|        1|     17|   579|
|24 months |LCNI-5         |MALAWI       |     5|        0|     58|   579|
|24 months |LCNI-5         |MALAWI       |     5|        1|      6|   579|
|24 months |LCNI-5         |MALAWI       |     6|        0|     51|   579|
|24 months |LCNI-5         |MALAWI       |     6|        1|     13|   579|
|24 months |LCNI-5         |MALAWI       |     7|        0|     36|   579|
|24 months |LCNI-5         |MALAWI       |     7|        1|      5|   579|
|24 months |LCNI-5         |MALAWI       |     8|        0|     27|   579|
|24 months |LCNI-5         |MALAWI       |     8|        1|      0|   579|
|24 months |LCNI-5         |MALAWI       |     9|        0|     19|   579|
|24 months |LCNI-5         |MALAWI       |     9|        1|      1|   579|
|24 months |LCNI-5         |MALAWI       |    10|        0|     24|   579|
|24 months |LCNI-5         |MALAWI       |    10|        1|      1|   579|
|24 months |LCNI-5         |MALAWI       |    11|        0|     30|   579|
|24 months |LCNI-5         |MALAWI       |    11|        1|      6|   579|
|24 months |LCNI-5         |MALAWI       |    12|        0|     19|   579|
|24 months |LCNI-5         |MALAWI       |    12|        1|      5|   579|
|24 months |MAL-ED         |INDIA        |     1|        0|     15|   227|
|24 months |MAL-ED         |INDIA        |     1|        1|      4|   227|
|24 months |MAL-ED         |INDIA        |     2|        0|     17|   227|
|24 months |MAL-ED         |INDIA        |     2|        1|      1|   227|
|24 months |MAL-ED         |INDIA        |     3|        0|     17|   227|
|24 months |MAL-ED         |INDIA        |     3|        1|      1|   227|
|24 months |MAL-ED         |INDIA        |     4|        0|     12|   227|
|24 months |MAL-ED         |INDIA        |     4|        1|      3|   227|
|24 months |MAL-ED         |INDIA        |     5|        0|      7|   227|
|24 months |MAL-ED         |INDIA        |     5|        1|      1|   227|
|24 months |MAL-ED         |INDIA        |     6|        0|     17|   227|
|24 months |MAL-ED         |INDIA        |     6|        1|      0|   227|
|24 months |MAL-ED         |INDIA        |     7|        0|     18|   227|
|24 months |MAL-ED         |INDIA        |     7|        1|      4|   227|
|24 months |MAL-ED         |INDIA        |     8|        0|     19|   227|
|24 months |MAL-ED         |INDIA        |     8|        1|      3|   227|
|24 months |MAL-ED         |INDIA        |     9|        0|     15|   227|
|24 months |MAL-ED         |INDIA        |     9|        1|      3|   227|
|24 months |MAL-ED         |INDIA        |    10|        0|     23|   227|
|24 months |MAL-ED         |INDIA        |    10|        1|      4|   227|
|24 months |MAL-ED         |INDIA        |    11|        0|     20|   227|
|24 months |MAL-ED         |INDIA        |    11|        1|      4|   227|
|24 months |MAL-ED         |INDIA        |    12|        0|     17|   227|
|24 months |MAL-ED         |INDIA        |    12|        1|      2|   227|
|24 months |MAL-ED         |BANGLADESH   |     1|        0|     15|   212|
|24 months |MAL-ED         |BANGLADESH   |     1|        1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|        0|     12|   212|
|24 months |MAL-ED         |BANGLADESH   |     2|        1|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|        0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |     3|        1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|        0|     19|   212|
|24 months |MAL-ED         |BANGLADESH   |     4|        1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|        0|     14|   212|
|24 months |MAL-ED         |BANGLADESH   |     5|        1|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|        0|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |     6|        1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|        0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |     7|        1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|        0|     14|   212|
|24 months |MAL-ED         |BANGLADESH   |     8|        1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|        0|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |     9|        1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|        0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |    10|        1|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|        0|      9|   212|
|24 months |MAL-ED         |BANGLADESH   |    11|        1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|        0|     26|   212|
|24 months |MAL-ED         |BANGLADESH   |    12|        1|      0|   212|
|24 months |MAL-ED         |PERU         |     1|        0|     24|   201|
|24 months |MAL-ED         |PERU         |     1|        1|      4|   201|
|24 months |MAL-ED         |PERU         |     2|        0|     18|   201|
|24 months |MAL-ED         |PERU         |     2|        1|      1|   201|
|24 months |MAL-ED         |PERU         |     3|        0|     14|   201|
|24 months |MAL-ED         |PERU         |     3|        1|      0|   201|
|24 months |MAL-ED         |PERU         |     4|        0|     10|   201|
|24 months |MAL-ED         |PERU         |     4|        1|      2|   201|
|24 months |MAL-ED         |PERU         |     5|        0|     17|   201|
|24 months |MAL-ED         |PERU         |     5|        1|      2|   201|
|24 months |MAL-ED         |PERU         |     6|        0|     10|   201|
|24 months |MAL-ED         |PERU         |     6|        1|      1|   201|
|24 months |MAL-ED         |PERU         |     7|        0|     15|   201|
|24 months |MAL-ED         |PERU         |     7|        1|      0|   201|
|24 months |MAL-ED         |PERU         |     8|        0|     11|   201|
|24 months |MAL-ED         |PERU         |     8|        1|      1|   201|
|24 months |MAL-ED         |PERU         |     9|        0|     21|   201|
|24 months |MAL-ED         |PERU         |     9|        1|      0|   201|
|24 months |MAL-ED         |PERU         |    10|        0|     13|   201|
|24 months |MAL-ED         |PERU         |    10|        1|      0|   201|
|24 months |MAL-ED         |PERU         |    11|        0|     18|   201|
|24 months |MAL-ED         |PERU         |    11|        1|      3|   201|
|24 months |MAL-ED         |PERU         |    12|        0|     15|   201|
|24 months |MAL-ED         |PERU         |    12|        1|      1|   201|
|24 months |MAL-ED         |NEPAL        |     1|        0|     18|   228|
|24 months |MAL-ED         |NEPAL        |     1|        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |     2|        0|     16|   228|
|24 months |MAL-ED         |NEPAL        |     2|        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |     3|        0|     14|   228|
|24 months |MAL-ED         |NEPAL        |     3|        1|      3|   228|
|24 months |MAL-ED         |NEPAL        |     4|        0|     19|   228|
|24 months |MAL-ED         |NEPAL        |     4|        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     5|        0|     18|   228|
|24 months |MAL-ED         |NEPAL        |     5|        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     6|        0|     21|   228|
|24 months |MAL-ED         |NEPAL        |     6|        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |     7|        0|     17|   228|
|24 months |MAL-ED         |NEPAL        |     7|        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     8|        0|     24|   228|
|24 months |MAL-ED         |NEPAL        |     8|        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |     9|        0|     12|   228|
|24 months |MAL-ED         |NEPAL        |     9|        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |    10|        0|     21|   228|
|24 months |MAL-ED         |NEPAL        |    10|        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |    11|        0|     23|   228|
|24 months |MAL-ED         |NEPAL        |    11|        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |    12|        0|     18|   228|
|24 months |MAL-ED         |NEPAL        |    12|        1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |     1|        0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |     1|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     2|        0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |     2|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     3|        0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     3|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     4|        0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |     4|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     5|        0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |     5|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     6|        0|      5|   169|
|24 months |MAL-ED         |BRAZIL       |     6|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     7|        0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |     7|        1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |     8|        0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |     8|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |     9|        0|     26|   169|
|24 months |MAL-ED         |BRAZIL       |     9|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    10|        0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |    10|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    11|        0|     15|   169|
|24 months |MAL-ED         |BRAZIL       |    11|        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |    12|        0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |    12|        1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |     1|        0|     14|   214|
|24 months |MAL-ED         |TANZANIA     |     1|        1|      5|   214|
|24 months |MAL-ED         |TANZANIA     |     2|        0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |     2|        1|      5|   214|
|24 months |MAL-ED         |TANZANIA     |     3|        0|      9|   214|
|24 months |MAL-ED         |TANZANIA     |     3|        1|     12|   214|
|24 months |MAL-ED         |TANZANIA     |     4|        0|      5|   214|
|24 months |MAL-ED         |TANZANIA     |     4|        1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |     5|        0|     11|   214|
|24 months |MAL-ED         |TANZANIA     |     5|        1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |     6|        0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |     6|        1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |     7|        0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |     7|        1|      8|   214|
|24 months |MAL-ED         |TANZANIA     |     8|        0|      9|   214|
|24 months |MAL-ED         |TANZANIA     |     8|        1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |     9|        0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |     9|        1|      4|   214|
|24 months |MAL-ED         |TANZANIA     |    10|        0|      7|   214|
|24 months |MAL-ED         |TANZANIA     |    10|        1|      8|   214|
|24 months |MAL-ED         |TANZANIA     |    11|        0|     15|   214|
|24 months |MAL-ED         |TANZANIA     |    11|        1|      8|   214|
|24 months |MAL-ED         |TANZANIA     |    12|        0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |    12|        1|      8|   214|
|24 months |MAL-ED         |SOUTH AFRICA |     1|        0|     27|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     1|        1|      7|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|        0|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     2|        1|      4|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|        0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     3|        1|      2|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|        0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     4|        1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|        0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     5|        1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|        0|     14|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     6|        1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|        0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     7|        1|      2|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|        0|      8|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     8|        1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|        0|     19|   238|
|24 months |MAL-ED         |SOUTH AFRICA |     9|        1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|        0|     22|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    10|        1|      3|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|        0|     18|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    11|        1|      4|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|        0|     29|   238|
|24 months |MAL-ED         |SOUTH AFRICA |    12|        1|      3|   238|
|24 months |NIH-Birth      |BANGLADESH   |     1|        0|     35|   429|
|24 months |NIH-Birth      |BANGLADESH   |     1|        1|      7|   429|
|24 months |NIH-Birth      |BANGLADESH   |     2|        0|     32|   429|
|24 months |NIH-Birth      |BANGLADESH   |     2|        1|      4|   429|
|24 months |NIH-Birth      |BANGLADESH   |     3|        0|     35|   429|
|24 months |NIH-Birth      |BANGLADESH   |     3|        1|      6|   429|
|24 months |NIH-Birth      |BANGLADESH   |     4|        0|     24|   429|
|24 months |NIH-Birth      |BANGLADESH   |     4|        1|     10|   429|
|24 months |NIH-Birth      |BANGLADESH   |     5|        0|     25|   429|
|24 months |NIH-Birth      |BANGLADESH   |     5|        1|      9|   429|
|24 months |NIH-Birth      |BANGLADESH   |     6|        0|     25|   429|
|24 months |NIH-Birth      |BANGLADESH   |     6|        1|      5|   429|
|24 months |NIH-Birth      |BANGLADESH   |     7|        0|     29|   429|
|24 months |NIH-Birth      |BANGLADESH   |     7|        1|      8|   429|
|24 months |NIH-Birth      |BANGLADESH   |     8|        0|     21|   429|
|24 months |NIH-Birth      |BANGLADESH   |     8|        1|      9|   429|
|24 months |NIH-Birth      |BANGLADESH   |     9|        0|     15|   429|
|24 months |NIH-Birth      |BANGLADESH   |     9|        1|      4|   429|
|24 months |NIH-Birth      |BANGLADESH   |    10|        0|     30|   429|
|24 months |NIH-Birth      |BANGLADESH   |    10|        1|     10|   429|
|24 months |NIH-Birth      |BANGLADESH   |    11|        0|     28|   429|
|24 months |NIH-Birth      |BANGLADESH   |    11|        1|     13|   429|
|24 months |NIH-Birth      |BANGLADESH   |    12|        0|     35|   429|
|24 months |NIH-Birth      |BANGLADESH   |    12|        1|     10|   429|
|24 months |PROBIT         |BELARUS      |     1|        0|    266|  4035|
|24 months |PROBIT         |BELARUS      |     1|        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |     2|        0|    208|  4035|
|24 months |PROBIT         |BELARUS      |     2|        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |     3|        0|    323|  4035|
|24 months |PROBIT         |BELARUS      |     3|        1|      1|  4035|
|24 months |PROBIT         |BELARUS      |     4|        0|    322|  4035|
|24 months |PROBIT         |BELARUS      |     4|        1|      4|  4035|
|24 months |PROBIT         |BELARUS      |     5|        0|    305|  4035|
|24 months |PROBIT         |BELARUS      |     5|        1|      2|  4035|
|24 months |PROBIT         |BELARUS      |     6|        0|    262|  4035|
|24 months |PROBIT         |BELARUS      |     6|        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |     7|        0|    369|  4035|
|24 months |PROBIT         |BELARUS      |     7|        1|      4|  4035|
|24 months |PROBIT         |BELARUS      |     8|        0|    350|  4035|
|24 months |PROBIT         |BELARUS      |     8|        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |     9|        0|    376|  4035|
|24 months |PROBIT         |BELARUS      |     9|        1|      6|  4035|
|24 months |PROBIT         |BELARUS      |    10|        0|    381|  4035|
|24 months |PROBIT         |BELARUS      |    10|        1|     12|  4035|
|24 months |PROBIT         |BELARUS      |    11|        0|    379|  4035|
|24 months |PROBIT         |BELARUS      |    11|        1|     10|  4035|
|24 months |PROBIT         |BELARUS      |    12|        0|    429|  4035|
|24 months |PROBIT         |BELARUS      |    12|        1|     14|  4035|
|24 months |PROVIDE        |BANGLADESH   |     1|        0|     26|   578|
|24 months |PROVIDE        |BANGLADESH   |     1|        1|      2|   578|
|24 months |PROVIDE        |BANGLADESH   |     2|        0|     29|   578|
|24 months |PROVIDE        |BANGLADESH   |     2|        1|      3|   578|
|24 months |PROVIDE        |BANGLADESH   |     3|        0|     26|   578|
|24 months |PROVIDE        |BANGLADESH   |     3|        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |     4|        0|     38|   578|
|24 months |PROVIDE        |BANGLADESH   |     4|        1|      2|   578|
|24 months |PROVIDE        |BANGLADESH   |     5|        0|     29|   578|
|24 months |PROVIDE        |BANGLADESH   |     5|        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |     6|        0|     41|   578|
|24 months |PROVIDE        |BANGLADESH   |     6|        1|      1|   578|
|24 months |PROVIDE        |BANGLADESH   |     7|        0|     62|   578|
|24 months |PROVIDE        |BANGLADESH   |     7|        1|     13|   578|
|24 months |PROVIDE        |BANGLADESH   |     8|        0|     66|   578|
|24 months |PROVIDE        |BANGLADESH   |     8|        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |     9|        0|     54|   578|
|24 months |PROVIDE        |BANGLADESH   |     9|        1|      6|   578|
|24 months |PROVIDE        |BANGLADESH   |    10|        0|     62|   578|
|24 months |PROVIDE        |BANGLADESH   |    10|        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |    11|        0|     60|   578|
|24 months |PROVIDE        |BANGLADESH   |    11|        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |    12|        0|     33|   578|
|24 months |PROVIDE        |BANGLADESH   |    12|        1|      5|   578|
|24 months |TanzaniaChild2 |TANZANIA     |     1|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     1|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     2|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     2|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     3|        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     3|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     4|        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     4|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     5|        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     5|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     6|        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     7|        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     7|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     8|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     8|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     9|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |     9|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    10|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    10|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    11|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    11|        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    12|        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |    12|        1|      0|     6|
|24 months |Vellore Crypto |INDIA        |     1|        0|     31|   409|
|24 months |Vellore Crypto |INDIA        |     1|        1|      5|   409|
|24 months |Vellore Crypto |INDIA        |     2|        0|     24|   409|
|24 months |Vellore Crypto |INDIA        |     2|        1|      4|   409|
|24 months |Vellore Crypto |INDIA        |     3|        0|     24|   409|
|24 months |Vellore Crypto |INDIA        |     3|        1|      5|   409|
|24 months |Vellore Crypto |INDIA        |     4|        0|     19|   409|
|24 months |Vellore Crypto |INDIA        |     4|        1|      3|   409|
|24 months |Vellore Crypto |INDIA        |     5|        0|     15|   409|
|24 months |Vellore Crypto |INDIA        |     5|        1|      6|   409|
|24 months |Vellore Crypto |INDIA        |     6|        0|     36|   409|
|24 months |Vellore Crypto |INDIA        |     6|        1|      1|   409|
|24 months |Vellore Crypto |INDIA        |     7|        0|     36|   409|
|24 months |Vellore Crypto |INDIA        |     7|        1|      0|   409|
|24 months |Vellore Crypto |INDIA        |     8|        0|     41|   409|
|24 months |Vellore Crypto |INDIA        |     8|        1|      4|   409|
|24 months |Vellore Crypto |INDIA        |     9|        0|     24|   409|
|24 months |Vellore Crypto |INDIA        |     9|        1|      3|   409|
|24 months |Vellore Crypto |INDIA        |    10|        0|     35|   409|
|24 months |Vellore Crypto |INDIA        |    10|        1|      1|   409|
|24 months |Vellore Crypto |INDIA        |    11|        0|     39|   409|
|24 months |Vellore Crypto |INDIA        |    11|        1|      2|   409|
|24 months |Vellore Crypto |INDIA        |    12|        0|     44|   409|
|24 months |Vellore Crypto |INDIA        |    12|        1|      7|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|        0|    172|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     1|        1|     17|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|        0|    170|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     2|        1|     24|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|        0|    197|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     3|        1|     25|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|        0|    157|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     4|        1|     17|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|        0|    146|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     5|        1|     19|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|        0|    179|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     6|        1|     18|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|        0|    100|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     7|        1|     25|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|        0|    119|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     8|        1|     10|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|        0|     13|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |     9|        1|      1|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|        0|     22|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    10|        1|      2|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|        0|     60|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    11|        1|      6|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|        0|    127|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |    12|        1|     14|  1640|


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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


