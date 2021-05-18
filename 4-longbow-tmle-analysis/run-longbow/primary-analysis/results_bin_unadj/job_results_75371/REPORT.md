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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |brthmon | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:-------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |        0|      5|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |        0|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |        0|      6|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |        0|     10|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |        0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |        1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |        0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |        0|     10|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |        1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |        0|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |        1|      1|    92|
|Birth     |CMIN           |BANGLADESH   |1       |        0|      3|    26|
|Birth     |CMIN           |BANGLADESH   |1       |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |2       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |2       |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |3       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |3       |        1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |4       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |4       |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |5       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |5       |        1|      2|    26|
|Birth     |CMIN           |BANGLADESH   |6       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |6       |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |7       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |7       |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |8       |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |8       |        1|      2|    26|
|Birth     |CMIN           |BANGLADESH   |9       |        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |9       |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |10      |        0|      1|    26|
|Birth     |CMIN           |BANGLADESH   |10      |        1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |11      |        0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |11      |        1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |12      |        0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |12      |        1|      0|    26|
|Birth     |CONTENT        |PERU         |1       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |1       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |2       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |2       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |3       |        0|      1|     2|
|Birth     |CONTENT        |PERU         |3       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |4       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |4       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |5       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |5       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |6       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |6       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |7       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |7       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |8       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |8       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |9       |        0|      0|     2|
|Birth     |CONTENT        |PERU         |9       |        1|      0|     2|
|Birth     |CONTENT        |PERU         |10      |        0|      1|     2|
|Birth     |CONTENT        |PERU         |10      |        1|      0|     2|
|Birth     |CONTENT        |PERU         |11      |        0|      0|     2|
|Birth     |CONTENT        |PERU         |11      |        1|      0|     2|
|Birth     |CONTENT        |PERU         |12      |        0|      0|     2|
|Birth     |CONTENT        |PERU         |12      |        1|      0|     2|
|Birth     |EE             |PAKISTAN     |1       |        0|     57|   240|
|Birth     |EE             |PAKISTAN     |1       |        1|     14|   240|
|Birth     |EE             |PAKISTAN     |2       |        0|     29|   240|
|Birth     |EE             |PAKISTAN     |2       |        1|     10|   240|
|Birth     |EE             |PAKISTAN     |3       |        0|     16|   240|
|Birth     |EE             |PAKISTAN     |3       |        1|      5|   240|
|Birth     |EE             |PAKISTAN     |4       |        0|     10|   240|
|Birth     |EE             |PAKISTAN     |4       |        1|      3|   240|
|Birth     |EE             |PAKISTAN     |5       |        0|      0|   240|
|Birth     |EE             |PAKISTAN     |5       |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |6       |        0|      0|   240|
|Birth     |EE             |PAKISTAN     |6       |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |7       |        0|      0|   240|
|Birth     |EE             |PAKISTAN     |7       |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |8       |        0|      0|   240|
|Birth     |EE             |PAKISTAN     |8       |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |9       |        0|      0|   240|
|Birth     |EE             |PAKISTAN     |9       |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |10      |        0|      0|   240|
|Birth     |EE             |PAKISTAN     |10      |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |11      |        0|     43|   240|
|Birth     |EE             |PAKISTAN     |11      |        1|     10|   240|
|Birth     |EE             |PAKISTAN     |12      |        0|     37|   240|
|Birth     |EE             |PAKISTAN     |12      |        1|      6|   240|
|Birth     |GMS-Nepal      |NEPAL        |1       |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |1       |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |2       |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |2       |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |3       |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |3       |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |4       |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |4       |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |5       |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |5       |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |6       |        0|    151|   696|
|Birth     |GMS-Nepal      |NEPAL        |6       |        1|      5|   696|
|Birth     |GMS-Nepal      |NEPAL        |7       |        0|    268|   696|
|Birth     |GMS-Nepal      |NEPAL        |7       |        1|     14|   696|
|Birth     |GMS-Nepal      |NEPAL        |8       |        0|    246|   696|
|Birth     |GMS-Nepal      |NEPAL        |8       |        1|     12|   696|
|Birth     |GMS-Nepal      |NEPAL        |9       |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |9       |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |10      |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |10      |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |11      |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |11      |        1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |12      |        0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |12      |        1|      0|   696|
|Birth     |JiVitA-3       |BANGLADESH   |1       |        0|   1827| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |1       |        1|    240| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |2       |        0|   1547| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |2       |        1|    179| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |3       |        0|   1759| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |3       |        1|    195| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |4       |        0|   1371| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |4       |        1|    151| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |5       |        0|   1008| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |5       |        1|    130| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |6       |        0|   1059| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |6       |        1|    121| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |7       |        0|   1135| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |7       |        1|    127| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |8       |        0|   1539| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |8       |        1|    204| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |9       |        0|   2135| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |9       |        1|    275| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |10      |        0|   2179| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |10      |        1|    244| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |11      |        0|   2134| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |11      |        1|    310| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |12      |        0|   2296| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |12      |        1|    269| 22434|
|Birth     |JiVitA-4       |BANGLADESH   |1       |        0|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |1       |        1|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2       |        0|    440|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2       |        1|     39|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3       |        0|    448|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3       |        1|     48|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |4       |        0|    370|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |4       |        1|     32|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |5       |        0|    317|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |5       |        1|     25|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |6       |        0|    244|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |6       |        1|     22|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |7       |        0|    248|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |7       |        1|     23|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |8       |        0|    276|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |8       |        1|     26|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |9       |        0|    172|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |9       |        1|     15|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |10      |        0|     74|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |10      |        1|      3|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |11      |        0|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |11      |        1|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |12      |        0|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |12      |        1|      0|  2822|
|Birth     |Keneba         |GAMBIA       |1       |        0|    158|  1543|
|Birth     |Keneba         |GAMBIA       |1       |        1|      0|  1543|
|Birth     |Keneba         |GAMBIA       |2       |        0|    145|  1543|
|Birth     |Keneba         |GAMBIA       |2       |        1|      7|  1543|
|Birth     |Keneba         |GAMBIA       |3       |        0|    167|  1543|
|Birth     |Keneba         |GAMBIA       |3       |        1|      3|  1543|
|Birth     |Keneba         |GAMBIA       |4       |        0|     94|  1543|
|Birth     |Keneba         |GAMBIA       |4       |        1|      3|  1543|
|Birth     |Keneba         |GAMBIA       |5       |        0|     98|  1543|
|Birth     |Keneba         |GAMBIA       |5       |        1|      0|  1543|
|Birth     |Keneba         |GAMBIA       |6       |        0|     91|  1543|
|Birth     |Keneba         |GAMBIA       |6       |        1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |7       |        0|     72|  1543|
|Birth     |Keneba         |GAMBIA       |7       |        1|      0|  1543|
|Birth     |Keneba         |GAMBIA       |8       |        0|    120|  1543|
|Birth     |Keneba         |GAMBIA       |8       |        1|      3|  1543|
|Birth     |Keneba         |GAMBIA       |9       |        0|    137|  1543|
|Birth     |Keneba         |GAMBIA       |9       |        1|      2|  1543|
|Birth     |Keneba         |GAMBIA       |10      |        0|    177|  1543|
|Birth     |Keneba         |GAMBIA       |10      |        1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |11      |        0|    115|  1543|
|Birth     |Keneba         |GAMBIA       |11      |        1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |12      |        0|    140|  1543|
|Birth     |Keneba         |GAMBIA       |12      |        1|      1|  1543|
|Birth     |MAL-ED         |INDIA        |1       |        0|      1|    47|
|Birth     |MAL-ED         |INDIA        |1       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |2       |        0|      6|    47|
|Birth     |MAL-ED         |INDIA        |2       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |3       |        0|      5|    47|
|Birth     |MAL-ED         |INDIA        |3       |        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |4       |        0|      4|    47|
|Birth     |MAL-ED         |INDIA        |4       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |5       |        0|      0|    47|
|Birth     |MAL-ED         |INDIA        |5       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |6       |        0|      4|    47|
|Birth     |MAL-ED         |INDIA        |6       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |7       |        0|      2|    47|
|Birth     |MAL-ED         |INDIA        |7       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |8       |        0|      8|    47|
|Birth     |MAL-ED         |INDIA        |8       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |9       |        0|      1|    47|
|Birth     |MAL-ED         |INDIA        |9       |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |10      |        0|      6|    47|
|Birth     |MAL-ED         |INDIA        |10      |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |11      |        0|      6|    47|
|Birth     |MAL-ED         |INDIA        |11      |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |12      |        0|      2|    47|
|Birth     |MAL-ED         |INDIA        |12      |        1|      1|    47|
|Birth     |MAL-ED         |BANGLADESH   |1       |        0|     20|   231|
|Birth     |MAL-ED         |BANGLADESH   |1       |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |2       |        0|     17|   231|
|Birth     |MAL-ED         |BANGLADESH   |2       |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |3       |        0|     19|   231|
|Birth     |MAL-ED         |BANGLADESH   |3       |        1|      3|   231|
|Birth     |MAL-ED         |BANGLADESH   |4       |        0|     15|   231|
|Birth     |MAL-ED         |BANGLADESH   |4       |        1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |5       |        0|     20|   231|
|Birth     |MAL-ED         |BANGLADESH   |5       |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |6       |        0|      7|   231|
|Birth     |MAL-ED         |BANGLADESH   |6       |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |7       |        0|     12|   231|
|Birth     |MAL-ED         |BANGLADESH   |7       |        1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |8       |        0|     24|   231|
|Birth     |MAL-ED         |BANGLADESH   |8       |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |9       |        0|     25|   231|
|Birth     |MAL-ED         |BANGLADESH   |9       |        1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |10      |        0|     21|   231|
|Birth     |MAL-ED         |BANGLADESH   |10      |        1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |11      |        0|     15|   231|
|Birth     |MAL-ED         |BANGLADESH   |11      |        1|      0|   231|
|Birth     |MAL-ED         |BANGLADESH   |12      |        0|     27|   231|
|Birth     |MAL-ED         |BANGLADESH   |12      |        1|      1|   231|
|Birth     |MAL-ED         |PERU         |1       |        0|     37|   233|
|Birth     |MAL-ED         |PERU         |1       |        1|      1|   233|
|Birth     |MAL-ED         |PERU         |2       |        0|     11|   233|
|Birth     |MAL-ED         |PERU         |2       |        1|      1|   233|
|Birth     |MAL-ED         |PERU         |3       |        0|     24|   233|
|Birth     |MAL-ED         |PERU         |3       |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |4       |        0|     16|   233|
|Birth     |MAL-ED         |PERU         |4       |        1|      2|   233|
|Birth     |MAL-ED         |PERU         |5       |        0|     16|   233|
|Birth     |MAL-ED         |PERU         |5       |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |6       |        0|      9|   233|
|Birth     |MAL-ED         |PERU         |6       |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |7       |        0|     18|   233|
|Birth     |MAL-ED         |PERU         |7       |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |8       |        0|     21|   233|
|Birth     |MAL-ED         |PERU         |8       |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |9       |        0|     15|   233|
|Birth     |MAL-ED         |PERU         |9       |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |10      |        0|     18|   233|
|Birth     |MAL-ED         |PERU         |10      |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |11      |        0|     29|   233|
|Birth     |MAL-ED         |PERU         |11      |        1|      0|   233|
|Birth     |MAL-ED         |PERU         |12      |        0|     15|   233|
|Birth     |MAL-ED         |PERU         |12      |        1|      0|   233|
|Birth     |MAL-ED         |NEPAL        |1       |        0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |1       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |2       |        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |2       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |3       |        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |3       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |4       |        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |4       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |5       |        0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |5       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |6       |        0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |6       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |7       |        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |7       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |8       |        0|      3|    27|
|Birth     |MAL-ED         |NEPAL        |8       |        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |9       |        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |9       |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |10      |        0|      0|    27|
|Birth     |MAL-ED         |NEPAL        |10      |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |11      |        0|      3|    27|
|Birth     |MAL-ED         |NEPAL        |11      |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |12      |        0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |12      |        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |1       |        0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |1       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |2       |        0|     11|    65|
|Birth     |MAL-ED         |BRAZIL       |2       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |3       |        0|      9|    65|
|Birth     |MAL-ED         |BRAZIL       |3       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |4       |        0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |4       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |5       |        0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |5       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |6       |        0|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |6       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |7       |        0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |7       |        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |8       |        0|      8|    65|
|Birth     |MAL-ED         |BRAZIL       |8       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |9       |        0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |9       |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |10      |        0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |10      |        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |11      |        0|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |11      |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |12      |        0|      5|    65|
|Birth     |MAL-ED         |BRAZIL       |12      |        1|      1|    65|
|Birth     |MAL-ED         |TANZANIA     |1       |        0|     11|   125|
|Birth     |MAL-ED         |TANZANIA     |1       |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |2       |        0|     14|   125|
|Birth     |MAL-ED         |TANZANIA     |2       |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |3       |        0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |3       |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |4       |        0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |4       |        1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |5       |        0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |5       |        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |6       |        0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |6       |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |7       |        0|     13|   125|
|Birth     |MAL-ED         |TANZANIA     |7       |        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |8       |        0|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |8       |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |9       |        0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |9       |        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |10      |        0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |10      |        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |11      |        0|     11|   125|
|Birth     |MAL-ED         |TANZANIA     |11      |        1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |12      |        0|     11|   125|
|Birth     |MAL-ED         |TANZANIA     |12      |        1|      3|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |        0|     17|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |        0|     11|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |        1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |        0|      5|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |        1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |        0|      8|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |        0|      4|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |        0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |        0|      9|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |        0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |        0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |        0|     14|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |        0|     14|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |        0|     21|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |        1|      0|   123|
|Birth     |NIH-Birth      |BANGLADESH   |1       |        0|     65|   608|
|Birth     |NIH-Birth      |BANGLADESH   |1       |        1|      5|   608|
|Birth     |NIH-Birth      |BANGLADESH   |2       |        0|     50|   608|
|Birth     |NIH-Birth      |BANGLADESH   |2       |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |3       |        0|     57|   608|
|Birth     |NIH-Birth      |BANGLADESH   |3       |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |4       |        0|     51|   608|
|Birth     |NIH-Birth      |BANGLADESH   |4       |        1|      0|   608|
|Birth     |NIH-Birth      |BANGLADESH   |5       |        0|     52|   608|
|Birth     |NIH-Birth      |BANGLADESH   |5       |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |6       |        0|     48|   608|
|Birth     |NIH-Birth      |BANGLADESH   |6       |        1|      0|   608|
|Birth     |NIH-Birth      |BANGLADESH   |7       |        0|     34|   608|
|Birth     |NIH-Birth      |BANGLADESH   |7       |        1|      0|   608|
|Birth     |NIH-Birth      |BANGLADESH   |8       |        0|     48|   608|
|Birth     |NIH-Birth      |BANGLADESH   |8       |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |9       |        0|     46|   608|
|Birth     |NIH-Birth      |BANGLADESH   |9       |        1|      3|   608|
|Birth     |NIH-Birth      |BANGLADESH   |10      |        0|     36|   608|
|Birth     |NIH-Birth      |BANGLADESH   |10      |        1|      5|   608|
|Birth     |NIH-Birth      |BANGLADESH   |11      |        0|     54|   608|
|Birth     |NIH-Birth      |BANGLADESH   |11      |        1|      1|   608|
|Birth     |NIH-Birth      |BANGLADESH   |12      |        0|     48|   608|
|Birth     |NIH-Birth      |BANGLADESH   |12      |        1|      1|   608|
|Birth     |PROBIT         |BELARUS      |1       |        0|    762| 13893|
|Birth     |PROBIT         |BELARUS      |1       |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |2       |        0|    813| 13893|
|Birth     |PROBIT         |BELARUS      |2       |        1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |3       |        0|    922| 13893|
|Birth     |PROBIT         |BELARUS      |3       |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |4       |        0|    982| 13893|
|Birth     |PROBIT         |BELARUS      |4       |        1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |5       |        0|    916| 13893|
|Birth     |PROBIT         |BELARUS      |5       |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |6       |        0|   1026| 13893|
|Birth     |PROBIT         |BELARUS      |6       |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |7       |        0|   1284| 13893|
|Birth     |PROBIT         |BELARUS      |7       |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |8       |        0|   1350| 13893|
|Birth     |PROBIT         |BELARUS      |8       |        1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |9       |        0|   1401| 13893|
|Birth     |PROBIT         |BELARUS      |9       |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |10      |        0|   1464| 13893|
|Birth     |PROBIT         |BELARUS      |10      |        1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |11      |        0|   1395| 13893|
|Birth     |PROBIT         |BELARUS      |11      |        1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |12      |        0|   1573| 13893|
|Birth     |PROBIT         |BELARUS      |12      |        1|      0| 13893|
|Birth     |PROVIDE        |BANGLADESH   |1       |        0|     36|   539|
|Birth     |PROVIDE        |BANGLADESH   |1       |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |2       |        0|     30|   539|
|Birth     |PROVIDE        |BANGLADESH   |2       |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |3       |        0|     39|   539|
|Birth     |PROVIDE        |BANGLADESH   |3       |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |4       |        0|     33|   539|
|Birth     |PROVIDE        |BANGLADESH   |4       |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |5       |        0|     44|   539|
|Birth     |PROVIDE        |BANGLADESH   |5       |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |6       |        0|     73|   539|
|Birth     |PROVIDE        |BANGLADESH   |6       |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |7       |        0|     70|   539|
|Birth     |PROVIDE        |BANGLADESH   |7       |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |8       |        0|     45|   539|
|Birth     |PROVIDE        |BANGLADESH   |8       |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |9       |        0|     61|   539|
|Birth     |PROVIDE        |BANGLADESH   |9       |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |10      |        0|     55|   539|
|Birth     |PROVIDE        |BANGLADESH   |10      |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |11      |        0|     27|   539|
|Birth     |PROVIDE        |BANGLADESH   |11      |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |12      |        0|     22|   539|
|Birth     |PROVIDE        |BANGLADESH   |12      |        1|      0|   539|
|Birth     |ResPak         |PAKISTAN     |1       |        0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |1       |        1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |2       |        0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |2       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |3       |        0|      6|    42|
|Birth     |ResPak         |PAKISTAN     |3       |        1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |4       |        0|      6|    42|
|Birth     |ResPak         |PAKISTAN     |4       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |5       |        0|      7|    42|
|Birth     |ResPak         |PAKISTAN     |5       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |6       |        0|      5|    42|
|Birth     |ResPak         |PAKISTAN     |6       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |7       |        0|      7|    42|
|Birth     |ResPak         |PAKISTAN     |7       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |8       |        0|      5|    42|
|Birth     |ResPak         |PAKISTAN     |8       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |9       |        0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |9       |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |10      |        0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |10      |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |11      |        0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |11      |        1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |12      |        0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |12      |        1|      0|    42|
|Birth     |SAS-CompFeed   |INDIA        |1       |        0|     85|  1251|
|Birth     |SAS-CompFeed   |INDIA        |1       |        1|     11|  1251|
|Birth     |SAS-CompFeed   |INDIA        |2       |        0|     55|  1251|
|Birth     |SAS-CompFeed   |INDIA        |2       |        1|      6|  1251|
|Birth     |SAS-CompFeed   |INDIA        |3       |        0|     50|  1251|
|Birth     |SAS-CompFeed   |INDIA        |3       |        1|      5|  1251|
|Birth     |SAS-CompFeed   |INDIA        |4       |        0|     53|  1251|
|Birth     |SAS-CompFeed   |INDIA        |4       |        1|      3|  1251|
|Birth     |SAS-CompFeed   |INDIA        |5       |        0|     95|  1251|
|Birth     |SAS-CompFeed   |INDIA        |5       |        1|      6|  1251|
|Birth     |SAS-CompFeed   |INDIA        |6       |        0|    105|  1251|
|Birth     |SAS-CompFeed   |INDIA        |6       |        1|     11|  1251|
|Birth     |SAS-CompFeed   |INDIA        |7       |        0|     81|  1251|
|Birth     |SAS-CompFeed   |INDIA        |7       |        1|      7|  1251|
|Birth     |SAS-CompFeed   |INDIA        |8       |        0|    157|  1251|
|Birth     |SAS-CompFeed   |INDIA        |8       |        1|     13|  1251|
|Birth     |SAS-CompFeed   |INDIA        |9       |        0|    146|  1251|
|Birth     |SAS-CompFeed   |INDIA        |9       |        1|      8|  1251|
|Birth     |SAS-CompFeed   |INDIA        |10      |        0|    135|  1251|
|Birth     |SAS-CompFeed   |INDIA        |10      |        1|      9|  1251|
|Birth     |SAS-CompFeed   |INDIA        |11      |        0|    108|  1251|
|Birth     |SAS-CompFeed   |INDIA        |11      |        1|      6|  1251|
|Birth     |SAS-CompFeed   |INDIA        |12      |        0|     90|  1251|
|Birth     |SAS-CompFeed   |INDIA        |12      |        1|      6|  1251|
|Birth     |Vellore Crypto |INDIA        |1       |        0|     36|   388|
|Birth     |Vellore Crypto |INDIA        |1       |        1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |2       |        0|     15|   388|
|Birth     |Vellore Crypto |INDIA        |2       |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |3       |        0|     33|   388|
|Birth     |Vellore Crypto |INDIA        |3       |        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |4       |        0|     15|   388|
|Birth     |Vellore Crypto |INDIA        |4       |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |5       |        0|     20|   388|
|Birth     |Vellore Crypto |INDIA        |5       |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |6       |        0|     44|   388|
|Birth     |Vellore Crypto |INDIA        |6       |        1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |7       |        0|     31|   388|
|Birth     |Vellore Crypto |INDIA        |7       |        1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |8       |        0|     50|   388|
|Birth     |Vellore Crypto |INDIA        |8       |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |9       |        0|     28|   388|
|Birth     |Vellore Crypto |INDIA        |9       |        1|      2|   388|
|Birth     |Vellore Crypto |INDIA        |10      |        0|     38|   388|
|Birth     |Vellore Crypto |INDIA        |10      |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |11      |        0|     32|   388|
|Birth     |Vellore Crypto |INDIA        |11      |        1|      4|   388|
|Birth     |Vellore Crypto |INDIA        |12      |        0|     30|   388|
|Birth     |Vellore Crypto |INDIA        |12      |        1|      1|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |        0|   1254| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |        1|     41| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |        0|   1020| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |        1|     28| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |        0|   1153| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |        1|     44| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |        0|    934| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |        1|     35| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |        0|    981| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |        1|     35| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |        0|   1148| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |        1|     40| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |        0|   1158| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |        1|     34| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |        0|   1235| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |        1|     42| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |        0|   1213| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |        1|     38| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |        0|   1014| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |        1|     36| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |        0|   1168| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |        1|     29| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |        0|   1141| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |        1|     40| 13861|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |        0|     28|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |        1|      3|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |        0|     14|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |        1|      2|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |        0|     27|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |        1|      4|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |        0|     38|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |        1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |        0|     35|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |        1|      4|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |        0|     27|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |        1|      1|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |        0|     34|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |        1|      8|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |        0|     21|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |        1|      1|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |        0|     19|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |        1|      2|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |        0|     22|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |        1|      1|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |        0|     40|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |        1|      3|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |        0|     22|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |        1|      3|   369|
|6 months  |CMIN           |BANGLADESH   |1       |        0|     19|   242|
|6 months  |CMIN           |BANGLADESH   |1       |        1|      4|   242|
|6 months  |CMIN           |BANGLADESH   |2       |        0|     24|   242|
|6 months  |CMIN           |BANGLADESH   |2       |        1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |3       |        0|     23|   242|
|6 months  |CMIN           |BANGLADESH   |3       |        1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |4       |        0|     10|   242|
|6 months  |CMIN           |BANGLADESH   |4       |        1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |5       |        0|     16|   242|
|6 months  |CMIN           |BANGLADESH   |5       |        1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |6       |        0|      8|   242|
|6 months  |CMIN           |BANGLADESH   |6       |        1|      2|   242|
|6 months  |CMIN           |BANGLADESH   |7       |        0|     10|   242|
|6 months  |CMIN           |BANGLADESH   |7       |        1|      3|   242|
|6 months  |CMIN           |BANGLADESH   |8       |        0|     22|   242|
|6 months  |CMIN           |BANGLADESH   |8       |        1|      3|   242|
|6 months  |CMIN           |BANGLADESH   |9       |        0|     15|   242|
|6 months  |CMIN           |BANGLADESH   |9       |        1|      1|   242|
|6 months  |CMIN           |BANGLADESH   |10      |        0|     22|   242|
|6 months  |CMIN           |BANGLADESH   |10      |        1|      4|   242|
|6 months  |CMIN           |BANGLADESH   |11      |        0|     22|   242|
|6 months  |CMIN           |BANGLADESH   |11      |        1|      2|   242|
|6 months  |CMIN           |BANGLADESH   |12      |        0|     23|   242|
|6 months  |CMIN           |BANGLADESH   |12      |        1|      5|   242|
|6 months  |CONTENT        |PERU         |1       |        0|     10|   215|
|6 months  |CONTENT        |PERU         |1       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |2       |        0|     15|   215|
|6 months  |CONTENT        |PERU         |2       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |3       |        0|     27|   215|
|6 months  |CONTENT        |PERU         |3       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |4       |        0|     24|   215|
|6 months  |CONTENT        |PERU         |4       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |5       |        0|     13|   215|
|6 months  |CONTENT        |PERU         |5       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |6       |        0|      8|   215|
|6 months  |CONTENT        |PERU         |6       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |7       |        0|     40|   215|
|6 months  |CONTENT        |PERU         |7       |        1|      1|   215|
|6 months  |CONTENT        |PERU         |8       |        0|     17|   215|
|6 months  |CONTENT        |PERU         |8       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |9       |        0|     23|   215|
|6 months  |CONTENT        |PERU         |9       |        1|      0|   215|
|6 months  |CONTENT        |PERU         |10      |        0|     15|   215|
|6 months  |CONTENT        |PERU         |10      |        1|      0|   215|
|6 months  |CONTENT        |PERU         |11      |        0|     10|   215|
|6 months  |CONTENT        |PERU         |11      |        1|      0|   215|
|6 months  |CONTENT        |PERU         |12      |        0|     12|   215|
|6 months  |CONTENT        |PERU         |12      |        1|      0|   215|
|6 months  |EE             |PAKISTAN     |1       |        0|     83|   373|
|6 months  |EE             |PAKISTAN     |1       |        1|     20|   373|
|6 months  |EE             |PAKISTAN     |2       |        0|     43|   373|
|6 months  |EE             |PAKISTAN     |2       |        1|     17|   373|
|6 months  |EE             |PAKISTAN     |3       |        0|     23|   373|
|6 months  |EE             |PAKISTAN     |3       |        1|     10|   373|
|6 months  |EE             |PAKISTAN     |4       |        0|     14|   373|
|6 months  |EE             |PAKISTAN     |4       |        1|      5|   373|
|6 months  |EE             |PAKISTAN     |5       |        0|      0|   373|
|6 months  |EE             |PAKISTAN     |5       |        1|      0|   373|
|6 months  |EE             |PAKISTAN     |6       |        0|      0|   373|
|6 months  |EE             |PAKISTAN     |6       |        1|      0|   373|
|6 months  |EE             |PAKISTAN     |7       |        0|      0|   373|
|6 months  |EE             |PAKISTAN     |7       |        1|      0|   373|
|6 months  |EE             |PAKISTAN     |8       |        0|      0|   373|
|6 months  |EE             |PAKISTAN     |8       |        1|      0|   373|
|6 months  |EE             |PAKISTAN     |9       |        0|      0|   373|
|6 months  |EE             |PAKISTAN     |9       |        1|      0|   373|
|6 months  |EE             |PAKISTAN     |10      |        0|      2|   373|
|6 months  |EE             |PAKISTAN     |10      |        1|      0|   373|
|6 months  |EE             |PAKISTAN     |11      |        0|     68|   373|
|6 months  |EE             |PAKISTAN     |11      |        1|     15|   373|
|6 months  |EE             |PAKISTAN     |12      |        0|     59|   373|
|6 months  |EE             |PAKISTAN     |12      |        1|     14|   373|
|6 months  |GMS-Nepal      |NEPAL        |1       |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |        0|    123|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |        1|      4|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |        0|    223|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |        1|      6|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |        0|    197|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |        1|     11|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |        1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |        0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |        1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |        0|     24|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |        1|      3|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |        0|     28|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |        1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |        0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |        1|      2|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |        0|     22|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |        1|      8|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |        0|     28|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |        1|      3|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |        0|     20|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |        1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |        0|     16|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |        1|      2|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |        0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |        1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |        0|     15|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |        1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |        0|     22|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |        1|      6|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |        0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |        1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |        0|     37|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |        1|      1|   299|
|6 months  |JiVitA-3       |BANGLADESH   |1       |        0|   1639| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |1       |        1|     93| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |2       |        0|   1354| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |2       |        1|     78| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |3       |        0|   1612| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |3       |        1|    104| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |4       |        0|   1282| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |4       |        1|     83| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |5       |        0|   1033| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |5       |        1|     66| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |6       |        0|   1041| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |6       |        1|     60| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |7       |        0|   1008| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |7       |        1|     64| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |8       |        0|   1271| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |8       |        1|     88| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |9       |        0|   1430| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |9       |        1|     99| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |10      |        0|   1364| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |10      |        1|     92| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |11      |        0|   1385| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |11      |        1|    106| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |12      |        0|   1364| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |12      |        1|     84| 16800|
|6 months  |JiVitA-4       |BANGLADESH   |1       |        0|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |1       |        1|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2       |        0|    754|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2       |        1|     49|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3       |        0|    792|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3       |        1|     51|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |4       |        0|    640|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |4       |        1|     42|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |5       |        0|    536|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |5       |        1|     32|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |6       |        0|    388|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |6       |        1|     19|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |7       |        0|    442|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |7       |        1|     23|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |8       |        0|    545|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |8       |        1|     30|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |9       |        0|    344|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |9       |        1|     16|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |10      |        0|    118|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |10      |        1|      9|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |11      |        0|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |11      |        1|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |12      |        0|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |12      |        1|      0|  4830|
|6 months  |Keneba         |GAMBIA       |1       |        0|    208|  2089|
|6 months  |Keneba         |GAMBIA       |1       |        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |2       |        0|    202|  2089|
|6 months  |Keneba         |GAMBIA       |2       |        1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |3       |        0|    227|  2089|
|6 months  |Keneba         |GAMBIA       |3       |        1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |4       |        0|    131|  2089|
|6 months  |Keneba         |GAMBIA       |4       |        1|      4|  2089|
|6 months  |Keneba         |GAMBIA       |5       |        0|    137|  2089|
|6 months  |Keneba         |GAMBIA       |5       |        1|      7|  2089|
|6 months  |Keneba         |GAMBIA       |6       |        0|    127|  2089|
|6 months  |Keneba         |GAMBIA       |6       |        1|      4|  2089|
|6 months  |Keneba         |GAMBIA       |7       |        0|     93|  2089|
|6 months  |Keneba         |GAMBIA       |7       |        1|      1|  2089|
|6 months  |Keneba         |GAMBIA       |8       |        0|    159|  2089|
|6 months  |Keneba         |GAMBIA       |8       |        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |9       |        0|    174|  2089|
|6 months  |Keneba         |GAMBIA       |9       |        1|      3|  2089|
|6 months  |Keneba         |GAMBIA       |10      |        0|    226|  2089|
|6 months  |Keneba         |GAMBIA       |10      |        1|      5|  2089|
|6 months  |Keneba         |GAMBIA       |11      |        0|    162|  2089|
|6 months  |Keneba         |GAMBIA       |11      |        1|     10|  2089|
|6 months  |Keneba         |GAMBIA       |12      |        0|    173|  2089|
|6 months  |Keneba         |GAMBIA       |12      |        1|     10|  2089|
|6 months  |LCNI-5         |MALAWI       |1       |        0|     46|   839|
|6 months  |LCNI-5         |MALAWI       |1       |        1|      3|   839|
|6 months  |LCNI-5         |MALAWI       |2       |        0|     40|   839|
|6 months  |LCNI-5         |MALAWI       |2       |        1|      4|   839|
|6 months  |LCNI-5         |MALAWI       |3       |        0|     20|   839|
|6 months  |LCNI-5         |MALAWI       |3       |        1|      2|   839|
|6 months  |LCNI-5         |MALAWI       |4       |        0|     36|   839|
|6 months  |LCNI-5         |MALAWI       |4       |        1|      3|   839|
|6 months  |LCNI-5         |MALAWI       |5       |        0|     38|   839|
|6 months  |LCNI-5         |MALAWI       |5       |        1|      7|   839|
|6 months  |LCNI-5         |MALAWI       |6       |        0|     31|   839|
|6 months  |LCNI-5         |MALAWI       |6       |        1|      5|   839|
|6 months  |LCNI-5         |MALAWI       |7       |        0|     62|   839|
|6 months  |LCNI-5         |MALAWI       |7       |        1|      5|   839|
|6 months  |LCNI-5         |MALAWI       |8       |        0|     87|   839|
|6 months  |LCNI-5         |MALAWI       |8       |        1|      5|   839|
|6 months  |LCNI-5         |MALAWI       |9       |        0|     88|   839|
|6 months  |LCNI-5         |MALAWI       |9       |        1|      7|   839|
|6 months  |LCNI-5         |MALAWI       |10      |        0|    129|   839|
|6 months  |LCNI-5         |MALAWI       |10      |        1|     15|   839|
|6 months  |LCNI-5         |MALAWI       |11      |        0|    107|   839|
|6 months  |LCNI-5         |MALAWI       |11      |        1|      8|   839|
|6 months  |LCNI-5         |MALAWI       |12      |        0|     84|   839|
|6 months  |LCNI-5         |MALAWI       |12      |        1|      7|   839|
|6 months  |MAL-ED         |INDIA        |1       |        0|     20|   236|
|6 months  |MAL-ED         |INDIA        |1       |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |2       |        0|     21|   236|
|6 months  |MAL-ED         |INDIA        |2       |        1|      2|   236|
|6 months  |MAL-ED         |INDIA        |3       |        0|     22|   236|
|6 months  |MAL-ED         |INDIA        |3       |        1|      1|   236|
|6 months  |MAL-ED         |INDIA        |4       |        0|     12|   236|
|6 months  |MAL-ED         |INDIA        |4       |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |5       |        0|      3|   236|
|6 months  |MAL-ED         |INDIA        |5       |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |6       |        0|     18|   236|
|6 months  |MAL-ED         |INDIA        |6       |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |7       |        0|      9|   236|
|6 months  |MAL-ED         |INDIA        |7       |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |8       |        0|     28|   236|
|6 months  |MAL-ED         |INDIA        |8       |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |9       |        0|     20|   236|
|6 months  |MAL-ED         |INDIA        |9       |        1|      1|   236|
|6 months  |MAL-ED         |INDIA        |10      |        0|     35|   236|
|6 months  |MAL-ED         |INDIA        |10      |        1|      3|   236|
|6 months  |MAL-ED         |INDIA        |11      |        0|     23|   236|
|6 months  |MAL-ED         |INDIA        |11      |        1|      1|   236|
|6 months  |MAL-ED         |INDIA        |12      |        0|     16|   236|
|6 months  |MAL-ED         |INDIA        |12      |        1|      1|   236|
|6 months  |MAL-ED         |BANGLADESH   |1       |        0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |        0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |        0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |        0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |        0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |        1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |        0|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |        1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |        0|     13|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |        0|     26|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |        0|     22|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |        1|      3|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |        0|     25|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |        0|     17|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |        1|      0|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |        0|     31|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |        1|      0|   241|
|6 months  |MAL-ED         |PERU         |1       |        0|     42|   273|
|6 months  |MAL-ED         |PERU         |1       |        1|      0|   273|
|6 months  |MAL-ED         |PERU         |2       |        0|     16|   273|
|6 months  |MAL-ED         |PERU         |2       |        1|      0|   273|
|6 months  |MAL-ED         |PERU         |3       |        0|     24|   273|
|6 months  |MAL-ED         |PERU         |3       |        1|      1|   273|
|6 months  |MAL-ED         |PERU         |4       |        0|     15|   273|
|6 months  |MAL-ED         |PERU         |4       |        1|      2|   273|
|6 months  |MAL-ED         |PERU         |5       |        0|     19|   273|
|6 months  |MAL-ED         |PERU         |5       |        1|      1|   273|
|6 months  |MAL-ED         |PERU         |6       |        0|     15|   273|
|6 months  |MAL-ED         |PERU         |6       |        1|      0|   273|
|6 months  |MAL-ED         |PERU         |7       |        0|     21|   273|
|6 months  |MAL-ED         |PERU         |7       |        1|      0|   273|
|6 months  |MAL-ED         |PERU         |8       |        0|     25|   273|
|6 months  |MAL-ED         |PERU         |8       |        1|      1|   273|
|6 months  |MAL-ED         |PERU         |9       |        0|     16|   273|
|6 months  |MAL-ED         |PERU         |9       |        1|      0|   273|
|6 months  |MAL-ED         |PERU         |10      |        0|     20|   273|
|6 months  |MAL-ED         |PERU         |10      |        1|      2|   273|
|6 months  |MAL-ED         |PERU         |11      |        0|     31|   273|
|6 months  |MAL-ED         |PERU         |11      |        1|      3|   273|
|6 months  |MAL-ED         |PERU         |12      |        0|     19|   273|
|6 months  |MAL-ED         |PERU         |12      |        1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |1       |        0|     23|   236|
|6 months  |MAL-ED         |NEPAL        |1       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |2       |        0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |2       |        1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |3       |        0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |3       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |4       |        0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |4       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |5       |        0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |5       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |6       |        0|     19|   236|
|6 months  |MAL-ED         |NEPAL        |6       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |7       |        0|     20|   236|
|6 months  |MAL-ED         |NEPAL        |7       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |8       |        0|     31|   236|
|6 months  |MAL-ED         |NEPAL        |8       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |9       |        0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |9       |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |10      |        0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |10      |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |11      |        0|     21|   236|
|6 months  |MAL-ED         |NEPAL        |11      |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |12      |        0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |12      |        1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |1       |        0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |        0|     29|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |        0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |        0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |        0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |        0|      8|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |        0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |        0|     26|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |        0|     34|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |        0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |        0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |        0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |        1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |1       |        0|     17|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |        0|     27|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |        0|     18|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |        0|     14|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |        0|     24|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |        0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |        1|      2|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |        0|     23|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |        1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |        0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |        0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |        0|     14|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |        1|      4|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |        0|     25|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |        0|     29|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |        1|      3|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |        0|     34|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |        0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |        1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |        0|     15|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |        0|     16|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |        0|     11|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |        0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |        0|     24|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |        0|     10|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |        1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |        0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |        0|     22|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |        0|     21|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |        0|     44|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |        1|      0|   254|
|6 months  |NIH-Birth      |BANGLADESH   |1       |        0|     55|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |        1|      8|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |        0|     43|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |        0|     51|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |        1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |        0|     41|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |        1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |        0|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |        1|      1|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |        0|     35|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |        0|     30|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |        1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |        0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |        1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |        0|     44|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |        1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |        0|     32|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |        0|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |        0|     39|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |        1|      5|   537|
|6 months  |PROBIT         |BELARUS      |1       |        0|    895| 15760|
|6 months  |PROBIT         |BELARUS      |1       |        1|     15| 15760|
|6 months  |PROBIT         |BELARUS      |2       |        0|    933| 15760|
|6 months  |PROBIT         |BELARUS      |2       |        1|      9| 15760|
|6 months  |PROBIT         |BELARUS      |3       |        0|   1060| 15760|
|6 months  |PROBIT         |BELARUS      |3       |        1|     11| 15760|
|6 months  |PROBIT         |BELARUS      |4       |        0|   1077| 15760|
|6 months  |PROBIT         |BELARUS      |4       |        1|     24| 15760|
|6 months  |PROBIT         |BELARUS      |5       |        0|   1021| 15760|
|6 months  |PROBIT         |BELARUS      |5       |        1|      8| 15760|
|6 months  |PROBIT         |BELARUS      |6       |        0|   1140| 15760|
|6 months  |PROBIT         |BELARUS      |6       |        1|     13| 15760|
|6 months  |PROBIT         |BELARUS      |7       |        0|   1457| 15760|
|6 months  |PROBIT         |BELARUS      |7       |        1|     18| 15760|
|6 months  |PROBIT         |BELARUS      |8       |        0|   1495| 15760|
|6 months  |PROBIT         |BELARUS      |8       |        1|     14| 15760|
|6 months  |PROBIT         |BELARUS      |9       |        0|   1536| 15760|
|6 months  |PROBIT         |BELARUS      |9       |        1|     14| 15760|
|6 months  |PROBIT         |BELARUS      |10      |        0|   1657| 15760|
|6 months  |PROBIT         |BELARUS      |10      |        1|     13| 15760|
|6 months  |PROBIT         |BELARUS      |11      |        0|   1576| 15760|
|6 months  |PROBIT         |BELARUS      |11      |        1|     18| 15760|
|6 months  |PROBIT         |BELARUS      |12      |        0|   1736| 15760|
|6 months  |PROBIT         |BELARUS      |12      |        1|     20| 15760|
|6 months  |PROVIDE        |BANGLADESH   |1       |        0|     45|   604|
|6 months  |PROVIDE        |BANGLADESH   |1       |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |2       |        0|     30|   604|
|6 months  |PROVIDE        |BANGLADESH   |2       |        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |3       |        0|     47|   604|
|6 months  |PROVIDE        |BANGLADESH   |3       |        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |4       |        0|     32|   604|
|6 months  |PROVIDE        |BANGLADESH   |4       |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |5       |        0|     53|   604|
|6 months  |PROVIDE        |BANGLADESH   |5       |        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |6       |        0|     73|   604|
|6 months  |PROVIDE        |BANGLADESH   |6       |        1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |7       |        0|     68|   604|
|6 months  |PROVIDE        |BANGLADESH   |7       |        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |8       |        0|     54|   604|
|6 months  |PROVIDE        |BANGLADESH   |8       |        1|      1|   604|
|6 months  |PROVIDE        |BANGLADESH   |9       |        0|     68|   604|
|6 months  |PROVIDE        |BANGLADESH   |9       |        1|      5|   604|
|6 months  |PROVIDE        |BANGLADESH   |10      |        0|     66|   604|
|6 months  |PROVIDE        |BANGLADESH   |10      |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |11      |        0|     32|   604|
|6 months  |PROVIDE        |BANGLADESH   |11      |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |12      |        0|     22|   604|
|6 months  |PROVIDE        |BANGLADESH   |12      |        1|      1|   604|
|6 months  |ResPak         |PAKISTAN     |1       |        0|      7|   239|
|6 months  |ResPak         |PAKISTAN     |1       |        1|      1|   239|
|6 months  |ResPak         |PAKISTAN     |2       |        0|     11|   239|
|6 months  |ResPak         |PAKISTAN     |2       |        1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |3       |        0|     20|   239|
|6 months  |ResPak         |PAKISTAN     |3       |        1|      8|   239|
|6 months  |ResPak         |PAKISTAN     |4       |        0|     25|   239|
|6 months  |ResPak         |PAKISTAN     |4       |        1|      3|   239|
|6 months  |ResPak         |PAKISTAN     |5       |        0|     28|   239|
|6 months  |ResPak         |PAKISTAN     |5       |        1|      7|   239|
|6 months  |ResPak         |PAKISTAN     |6       |        0|     34|   239|
|6 months  |ResPak         |PAKISTAN     |6       |        1|      7|   239|
|6 months  |ResPak         |PAKISTAN     |7       |        0|     19|   239|
|6 months  |ResPak         |PAKISTAN     |7       |        1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |8       |        0|     28|   239|
|6 months  |ResPak         |PAKISTAN     |8       |        1|      9|   239|
|6 months  |ResPak         |PAKISTAN     |9       |        0|     13|   239|
|6 months  |ResPak         |PAKISTAN     |9       |        1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |10      |        0|      4|   239|
|6 months  |ResPak         |PAKISTAN     |10      |        1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |11      |        0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |11      |        1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |12      |        0|      1|   239|
|6 months  |ResPak         |PAKISTAN     |12      |        1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |1       |        0|     83|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |        1|     11|  1334|
|6 months  |SAS-CompFeed   |INDIA        |2       |        0|     58|  1334|
|6 months  |SAS-CompFeed   |INDIA        |2       |        1|      5|  1334|
|6 months  |SAS-CompFeed   |INDIA        |3       |        0|     60|  1334|
|6 months  |SAS-CompFeed   |INDIA        |3       |        1|      3|  1334|
|6 months  |SAS-CompFeed   |INDIA        |4       |        0|     53|  1334|
|6 months  |SAS-CompFeed   |INDIA        |4       |        1|      6|  1334|
|6 months  |SAS-CompFeed   |INDIA        |5       |        0|     95|  1334|
|6 months  |SAS-CompFeed   |INDIA        |5       |        1|     12|  1334|
|6 months  |SAS-CompFeed   |INDIA        |6       |        0|     95|  1334|
|6 months  |SAS-CompFeed   |INDIA        |6       |        1|     11|  1334|
|6 months  |SAS-CompFeed   |INDIA        |7       |        0|     99|  1334|
|6 months  |SAS-CompFeed   |INDIA        |7       |        1|      8|  1334|
|6 months  |SAS-CompFeed   |INDIA        |8       |        0|    156|  1334|
|6 months  |SAS-CompFeed   |INDIA        |8       |        1|     21|  1334|
|6 months  |SAS-CompFeed   |INDIA        |9       |        0|    157|  1334|
|6 months  |SAS-CompFeed   |INDIA        |9       |        1|      9|  1334|
|6 months  |SAS-CompFeed   |INDIA        |10      |        0|    139|  1334|
|6 months  |SAS-CompFeed   |INDIA        |10      |        1|     22|  1334|
|6 months  |SAS-CompFeed   |INDIA        |11      |        0|    115|  1334|
|6 months  |SAS-CompFeed   |INDIA        |11      |        1|     10|  1334|
|6 months  |SAS-CompFeed   |INDIA        |12      |        0|     96|  1334|
|6 months  |SAS-CompFeed   |INDIA        |12      |        1|     10|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |        0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |        1|      3|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |        0|     37|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |        1|      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |        0|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |        1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |        0|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |        1|      0|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |        0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |        1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |        0|     15|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |        1|      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |        0|     28|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |        1|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |        0|     56|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |        1|     10|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |        0|     45|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |        1|      6|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |        0|     43|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |        1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |        0|     25|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |        1|      6|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |        0|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |        1|      7|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |        0|    125|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |        1|      2|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |        0|    154|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |        0|    126|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |        1|      3|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |        0|    171|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |        1|      0|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |        0|    158|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |        1|      5|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |        0|    155|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |        1|      0|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |        0|    203|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |        0|    188|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |        1|      3|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |        0|    171|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |        0|    211|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |        1|      1|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |        0|    169|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |        1|      2|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |        0|    179|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |        1|      0|  2029|
|6 months  |Vellore Crypto |INDIA        |1       |        0|     36|   407|
|6 months  |Vellore Crypto |INDIA        |1       |        1|      4|   407|
|6 months  |Vellore Crypto |INDIA        |2       |        0|     14|   407|
|6 months  |Vellore Crypto |INDIA        |2       |        1|      3|   407|
|6 months  |Vellore Crypto |INDIA        |3       |        0|     28|   407|
|6 months  |Vellore Crypto |INDIA        |3       |        1|      7|   407|
|6 months  |Vellore Crypto |INDIA        |4       |        0|     14|   407|
|6 months  |Vellore Crypto |INDIA        |4       |        1|      2|   407|
|6 months  |Vellore Crypto |INDIA        |5       |        0|     22|   407|
|6 months  |Vellore Crypto |INDIA        |5       |        1|      0|   407|
|6 months  |Vellore Crypto |INDIA        |6       |        0|     46|   407|
|6 months  |Vellore Crypto |INDIA        |6       |        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |7       |        0|     33|   407|
|6 months  |Vellore Crypto |INDIA        |7       |        1|      1|   407|
|6 months  |Vellore Crypto |INDIA        |8       |        0|     48|   407|
|6 months  |Vellore Crypto |INDIA        |8       |        1|      2|   407|
|6 months  |Vellore Crypto |INDIA        |9       |        0|     29|   407|
|6 months  |Vellore Crypto |INDIA        |9       |        1|      2|   407|
|6 months  |Vellore Crypto |INDIA        |10      |        0|     42|   407|
|6 months  |Vellore Crypto |INDIA        |10      |        1|      0|   407|
|6 months  |Vellore Crypto |INDIA        |11      |        0|     32|   407|
|6 months  |Vellore Crypto |INDIA        |11      |        1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |12      |        0|     34|   407|
|6 months  |Vellore Crypto |INDIA        |12      |        1|      2|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |        0|    757|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |        1|     27|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |        0|    601|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |        1|     20|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |        0|    721|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |        1|     40|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |        0|    612|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |        1|     22|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |        0|    612|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |        1|     27|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |        0|    702|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |        1|     30|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |        0|    721|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |        1|     34|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |        0|    734|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |        1|     33|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |        0|    731|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |        1|     30|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |        0|    618|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |        1|     27|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |        0|    755|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |        1|     29|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |        0|    747|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |        1|     32|  8662|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |        0|     21|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |        1|     10|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |        0|     13|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |        1|      3|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |        0|     24|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |        1|      7|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |        0|     33|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |        1|     15|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |        0|     23|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |        1|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |        0|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |        1|     13|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |        0|     25|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |        1|     17|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |        0|     15|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |        1|      7|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |        0|     10|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |        1|     11|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |        0|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |        1|      7|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |        0|     33|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |        1|     10|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |        0|     17|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |        1|      9|   371|
|24 months |CMIN           |BANGLADESH   |1       |        0|     16|   241|
|24 months |CMIN           |BANGLADESH   |1       |        1|      6|   241|
|24 months |CMIN           |BANGLADESH   |2       |        0|     17|   241|
|24 months |CMIN           |BANGLADESH   |2       |        1|      7|   241|
|24 months |CMIN           |BANGLADESH   |3       |        0|     21|   241|
|24 months |CMIN           |BANGLADESH   |3       |        1|      4|   241|
|24 months |CMIN           |BANGLADESH   |4       |        0|      9|   241|
|24 months |CMIN           |BANGLADESH   |4       |        1|      2|   241|
|24 months |CMIN           |BANGLADESH   |5       |        0|     14|   241|
|24 months |CMIN           |BANGLADESH   |5       |        1|      4|   241|
|24 months |CMIN           |BANGLADESH   |6       |        0|      8|   241|
|24 months |CMIN           |BANGLADESH   |6       |        1|      3|   241|
|24 months |CMIN           |BANGLADESH   |7       |        0|      8|   241|
|24 months |CMIN           |BANGLADESH   |7       |        1|      5|   241|
|24 months |CMIN           |BANGLADESH   |8       |        0|     19|   241|
|24 months |CMIN           |BANGLADESH   |8       |        1|      6|   241|
|24 months |CMIN           |BANGLADESH   |9       |        0|     10|   241|
|24 months |CMIN           |BANGLADESH   |9       |        1|      7|   241|
|24 months |CMIN           |BANGLADESH   |10      |        0|     14|   241|
|24 months |CMIN           |BANGLADESH   |10      |        1|     13|   241|
|24 months |CMIN           |BANGLADESH   |11      |        0|     16|   241|
|24 months |CMIN           |BANGLADESH   |11      |        1|      5|   241|
|24 months |CMIN           |BANGLADESH   |12      |        0|     21|   241|
|24 months |CMIN           |BANGLADESH   |12      |        1|      6|   241|
|24 months |CONTENT        |PERU         |1       |        0|      8|   164|
|24 months |CONTENT        |PERU         |1       |        1|      0|   164|
|24 months |CONTENT        |PERU         |2       |        0|     10|   164|
|24 months |CONTENT        |PERU         |2       |        1|      0|   164|
|24 months |CONTENT        |PERU         |3       |        0|     19|   164|
|24 months |CONTENT        |PERU         |3       |        1|      0|   164|
|24 months |CONTENT        |PERU         |4       |        0|     16|   164|
|24 months |CONTENT        |PERU         |4       |        1|      0|   164|
|24 months |CONTENT        |PERU         |5       |        0|     11|   164|
|24 months |CONTENT        |PERU         |5       |        1|      0|   164|
|24 months |CONTENT        |PERU         |6       |        0|      5|   164|
|24 months |CONTENT        |PERU         |6       |        1|      0|   164|
|24 months |CONTENT        |PERU         |7       |        0|     32|   164|
|24 months |CONTENT        |PERU         |7       |        1|      0|   164|
|24 months |CONTENT        |PERU         |8       |        0|     15|   164|
|24 months |CONTENT        |PERU         |8       |        1|      0|   164|
|24 months |CONTENT        |PERU         |9       |        0|     18|   164|
|24 months |CONTENT        |PERU         |9       |        1|      1|   164|
|24 months |CONTENT        |PERU         |10      |        0|     10|   164|
|24 months |CONTENT        |PERU         |10      |        1|      0|   164|
|24 months |CONTENT        |PERU         |11      |        0|     10|   164|
|24 months |CONTENT        |PERU         |11      |        1|      0|   164|
|24 months |CONTENT        |PERU         |12      |        0|      9|   164|
|24 months |CONTENT        |PERU         |12      |        1|      0|   164|
|24 months |EE             |PAKISTAN     |1       |        0|      8|   167|
|24 months |EE             |PAKISTAN     |1       |        1|      3|   167|
|24 months |EE             |PAKISTAN     |2       |        0|      1|   167|
|24 months |EE             |PAKISTAN     |2       |        1|      3|   167|
|24 months |EE             |PAKISTAN     |3       |        0|      2|   167|
|24 months |EE             |PAKISTAN     |3       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |4       |        0|      0|   167|
|24 months |EE             |PAKISTAN     |4       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |5       |        0|      0|   167|
|24 months |EE             |PAKISTAN     |5       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |6       |        0|      0|   167|
|24 months |EE             |PAKISTAN     |6       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |7       |        0|      0|   167|
|24 months |EE             |PAKISTAN     |7       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |8       |        0|      0|   167|
|24 months |EE             |PAKISTAN     |8       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |9       |        0|      0|   167|
|24 months |EE             |PAKISTAN     |9       |        1|      0|   167|
|24 months |EE             |PAKISTAN     |10      |        0|      2|   167|
|24 months |EE             |PAKISTAN     |10      |        1|      0|   167|
|24 months |EE             |PAKISTAN     |11      |        0|     51|   167|
|24 months |EE             |PAKISTAN     |11      |        1|     30|   167|
|24 months |EE             |PAKISTAN     |12      |        0|     44|   167|
|24 months |EE             |PAKISTAN     |12      |        1|     23|   167|
|24 months |GMS-Nepal      |NEPAL        |1       |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |1       |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |2       |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |2       |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |3       |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |3       |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |4       |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |4       |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |5       |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |5       |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |6       |        0|     97|   488|
|24 months |GMS-Nepal      |NEPAL        |6       |        1|     15|   488|
|24 months |GMS-Nepal      |NEPAL        |7       |        0|    176|   488|
|24 months |GMS-Nepal      |NEPAL        |7       |        1|     20|   488|
|24 months |GMS-Nepal      |NEPAL        |8       |        0|    162|   488|
|24 months |GMS-Nepal      |NEPAL        |8       |        1|     18|   488|
|24 months |GMS-Nepal      |NEPAL        |9       |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |9       |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |10      |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |10      |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |11      |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |11      |        1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |12      |        0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |12      |        1|      0|   488|
|24 months |JiVitA-3       |BANGLADESH   |1       |        0|    662|  8626|
|24 months |JiVitA-3       |BANGLADESH   |1       |        1|    124|  8626|
|24 months |JiVitA-3       |BANGLADESH   |2       |        0|    586|  8626|
|24 months |JiVitA-3       |BANGLADESH   |2       |        1|    117|  8626|
|24 months |JiVitA-3       |BANGLADESH   |3       |        0|    739|  8626|
|24 months |JiVitA-3       |BANGLADESH   |3       |        1|    129|  8626|
|24 months |JiVitA-3       |BANGLADESH   |4       |        0|    608|  8626|
|24 months |JiVitA-3       |BANGLADESH   |4       |        1|     98|  8626|
|24 months |JiVitA-3       |BANGLADESH   |5       |        0|    447|  8626|
|24 months |JiVitA-3       |BANGLADESH   |5       |        1|     94|  8626|
|24 months |JiVitA-3       |BANGLADESH   |6       |        0|    444|  8626|
|24 months |JiVitA-3       |BANGLADESH   |6       |        1|     67|  8626|
|24 months |JiVitA-3       |BANGLADESH   |7       |        0|    459|  8626|
|24 months |JiVitA-3       |BANGLADESH   |7       |        1|     95|  8626|
|24 months |JiVitA-3       |BANGLADESH   |8       |        0|    551|  8626|
|24 months |JiVitA-3       |BANGLADESH   |8       |        1|    100|  8626|
|24 months |JiVitA-3       |BANGLADESH   |9       |        0|    670|  8626|
|24 months |JiVitA-3       |BANGLADESH   |9       |        1|    129|  8626|
|24 months |JiVitA-3       |BANGLADESH   |10      |        0|    649|  8626|
|24 months |JiVitA-3       |BANGLADESH   |10      |        1|     97|  8626|
|24 months |JiVitA-3       |BANGLADESH   |11      |        0|    678|  8626|
|24 months |JiVitA-3       |BANGLADESH   |11      |        1|    154|  8626|
|24 months |JiVitA-3       |BANGLADESH   |12      |        0|    787|  8626|
|24 months |JiVitA-3       |BANGLADESH   |12      |        1|    142|  8626|
|24 months |JiVitA-4       |BANGLADESH   |1       |        0|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |1       |        1|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |2       |        0|    711|  4751|
|24 months |JiVitA-4       |BANGLADESH   |2       |        1|     93|  4751|
|24 months |JiVitA-4       |BANGLADESH   |3       |        0|    766|  4751|
|24 months |JiVitA-4       |BANGLADESH   |3       |        1|     82|  4751|
|24 months |JiVitA-4       |BANGLADESH   |4       |        0|    613|  4751|
|24 months |JiVitA-4       |BANGLADESH   |4       |        1|     59|  4751|
|24 months |JiVitA-4       |BANGLADESH   |5       |        0|    492|  4751|
|24 months |JiVitA-4       |BANGLADESH   |5       |        1|     52|  4751|
|24 months |JiVitA-4       |BANGLADESH   |6       |        0|    361|  4751|
|24 months |JiVitA-4       |BANGLADESH   |6       |        1|     39|  4751|
|24 months |JiVitA-4       |BANGLADESH   |7       |        0|    430|  4751|
|24 months |JiVitA-4       |BANGLADESH   |7       |        1|     32|  4751|
|24 months |JiVitA-4       |BANGLADESH   |8       |        0|    493|  4751|
|24 months |JiVitA-4       |BANGLADESH   |8       |        1|     55|  4751|
|24 months |JiVitA-4       |BANGLADESH   |9       |        0|    321|  4751|
|24 months |JiVitA-4       |BANGLADESH   |9       |        1|     29|  4751|
|24 months |JiVitA-4       |BANGLADESH   |10      |        0|    112|  4751|
|24 months |JiVitA-4       |BANGLADESH   |10      |        1|     11|  4751|
|24 months |JiVitA-4       |BANGLADESH   |11      |        0|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |11      |        1|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |12      |        0|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |12      |        1|      0|  4751|
|24 months |Keneba         |GAMBIA       |1       |        0|    156|  1725|
|24 months |Keneba         |GAMBIA       |1       |        1|     17|  1725|
|24 months |Keneba         |GAMBIA       |2       |        0|    145|  1725|
|24 months |Keneba         |GAMBIA       |2       |        1|     16|  1725|
|24 months |Keneba         |GAMBIA       |3       |        0|    167|  1725|
|24 months |Keneba         |GAMBIA       |3       |        1|     20|  1725|
|24 months |Keneba         |GAMBIA       |4       |        0|    107|  1725|
|24 months |Keneba         |GAMBIA       |4       |        1|      7|  1725|
|24 months |Keneba         |GAMBIA       |5       |        0|    104|  1725|
|24 months |Keneba         |GAMBIA       |5       |        1|      5|  1725|
|24 months |Keneba         |GAMBIA       |6       |        0|    105|  1725|
|24 months |Keneba         |GAMBIA       |6       |        1|      8|  1725|
|24 months |Keneba         |GAMBIA       |7       |        0|     78|  1725|
|24 months |Keneba         |GAMBIA       |7       |        1|      5|  1725|
|24 months |Keneba         |GAMBIA       |8       |        0|    137|  1725|
|24 months |Keneba         |GAMBIA       |8       |        1|     15|  1725|
|24 months |Keneba         |GAMBIA       |9       |        0|    135|  1725|
|24 months |Keneba         |GAMBIA       |9       |        1|     13|  1725|
|24 months |Keneba         |GAMBIA       |10      |        0|    183|  1725|
|24 months |Keneba         |GAMBIA       |10      |        1|     18|  1725|
|24 months |Keneba         |GAMBIA       |11      |        0|    137|  1725|
|24 months |Keneba         |GAMBIA       |11      |        1|      6|  1725|
|24 months |Keneba         |GAMBIA       |12      |        0|    131|  1725|
|24 months |Keneba         |GAMBIA       |12      |        1|     10|  1725|
|24 months |LCNI-5         |MALAWI       |1       |        0|     30|   579|
|24 months |LCNI-5         |MALAWI       |1       |        1|      4|   579|
|24 months |LCNI-5         |MALAWI       |2       |        0|     27|   579|
|24 months |LCNI-5         |MALAWI       |2       |        1|      4|   579|
|24 months |LCNI-5         |MALAWI       |3       |        0|     16|   579|
|24 months |LCNI-5         |MALAWI       |3       |        1|      1|   579|
|24 months |LCNI-5         |MALAWI       |4       |        0|     29|   579|
|24 months |LCNI-5         |MALAWI       |4       |        1|      1|   579|
|24 months |LCNI-5         |MALAWI       |5       |        0|     32|   579|
|24 months |LCNI-5         |MALAWI       |5       |        1|      5|   579|
|24 months |LCNI-5         |MALAWI       |6       |        0|     24|   579|
|24 months |LCNI-5         |MALAWI       |6       |        1|      2|   579|
|24 months |LCNI-5         |MALAWI       |7       |        0|     36|   579|
|24 months |LCNI-5         |MALAWI       |7       |        1|      5|   579|
|24 months |LCNI-5         |MALAWI       |8       |        0|     54|   579|
|24 months |LCNI-5         |MALAWI       |8       |        1|      6|   579|
|24 months |LCNI-5         |MALAWI       |9       |        0|     57|   579|
|24 months |LCNI-5         |MALAWI       |9       |        1|     11|   579|
|24 months |LCNI-5         |MALAWI       |10      |        0|     95|   579|
|24 months |LCNI-5         |MALAWI       |10      |        1|     12|   579|
|24 months |LCNI-5         |MALAWI       |11      |        0|     66|   579|
|24 months |LCNI-5         |MALAWI       |11      |        1|      9|   579|
|24 months |LCNI-5         |MALAWI       |12      |        0|     43|   579|
|24 months |LCNI-5         |MALAWI       |12      |        1|     10|   579|
|24 months |MAL-ED         |INDIA        |1       |        0|     20|   227|
|24 months |MAL-ED         |INDIA        |1       |        1|      0|   227|
|24 months |MAL-ED         |INDIA        |2       |        0|     21|   227|
|24 months |MAL-ED         |INDIA        |2       |        1|      1|   227|
|24 months |MAL-ED         |INDIA        |3       |        0|     18|   227|
|24 months |MAL-ED         |INDIA        |3       |        1|      4|   227|
|24 months |MAL-ED         |INDIA        |4       |        0|     10|   227|
|24 months |MAL-ED         |INDIA        |4       |        1|      1|   227|
|24 months |MAL-ED         |INDIA        |5       |        0|      3|   227|
|24 months |MAL-ED         |INDIA        |5       |        1|      0|   227|
|24 months |MAL-ED         |INDIA        |6       |        0|     13|   227|
|24 months |MAL-ED         |INDIA        |6       |        1|      5|   227|
|24 months |MAL-ED         |INDIA        |7       |        0|      7|   227|
|24 months |MAL-ED         |INDIA        |7       |        1|      2|   227|
|24 months |MAL-ED         |INDIA        |8       |        0|     23|   227|
|24 months |MAL-ED         |INDIA        |8       |        1|      4|   227|
|24 months |MAL-ED         |INDIA        |9       |        0|     17|   227|
|24 months |MAL-ED         |INDIA        |9       |        1|      2|   227|
|24 months |MAL-ED         |INDIA        |10      |        0|     30|   227|
|24 months |MAL-ED         |INDIA        |10      |        1|      7|   227|
|24 months |MAL-ED         |INDIA        |11      |        0|     19|   227|
|24 months |MAL-ED         |INDIA        |11      |        1|      4|   227|
|24 months |MAL-ED         |INDIA        |12      |        0|     16|   227|
|24 months |MAL-ED         |INDIA        |12      |        1|      0|   227|
|24 months |MAL-ED         |BANGLADESH   |1       |        0|     17|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |        1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |        0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |        1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |        0|     20|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |        1|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |        0|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |        1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |        0|     13|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |        1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |        0|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |        1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |        0|      9|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |        1|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |        0|     21|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |        1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |        0|     21|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |        1|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |        0|     22|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |        1|      1|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |        0|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |        1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |        0|     24|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |        1|      1|   212|
|24 months |MAL-ED         |PERU         |1       |        0|     25|   201|
|24 months |MAL-ED         |PERU         |1       |        1|      3|   201|
|24 months |MAL-ED         |PERU         |2       |        0|     13|   201|
|24 months |MAL-ED         |PERU         |2       |        1|      0|   201|
|24 months |MAL-ED         |PERU         |3       |        0|     12|   201|
|24 months |MAL-ED         |PERU         |3       |        1|      1|   201|
|24 months |MAL-ED         |PERU         |4       |        0|     10|   201|
|24 months |MAL-ED         |PERU         |4       |        1|      2|   201|
|24 months |MAL-ED         |PERU         |5       |        0|     15|   201|
|24 months |MAL-ED         |PERU         |5       |        1|      3|   201|
|24 months |MAL-ED         |PERU         |6       |        0|      9|   201|
|24 months |MAL-ED         |PERU         |6       |        1|      1|   201|
|24 months |MAL-ED         |PERU         |7       |        0|     15|   201|
|24 months |MAL-ED         |PERU         |7       |        1|      1|   201|
|24 months |MAL-ED         |PERU         |8       |        0|     18|   201|
|24 months |MAL-ED         |PERU         |8       |        1|      1|   201|
|24 months |MAL-ED         |PERU         |9       |        0|     10|   201|
|24 months |MAL-ED         |PERU         |9       |        1|      0|   201|
|24 months |MAL-ED         |PERU         |10      |        0|     19|   201|
|24 months |MAL-ED         |PERU         |10      |        1|      1|   201|
|24 months |MAL-ED         |PERU         |11      |        0|     24|   201|
|24 months |MAL-ED         |PERU         |11      |        1|      2|   201|
|24 months |MAL-ED         |PERU         |12      |        0|     16|   201|
|24 months |MAL-ED         |PERU         |12      |        1|      0|   201|
|24 months |MAL-ED         |NEPAL        |1       |        0|     22|   228|
|24 months |MAL-ED         |NEPAL        |1       |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |2       |        0|     18|   228|
|24 months |MAL-ED         |NEPAL        |2       |        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |3       |        0|     13|   228|
|24 months |MAL-ED         |NEPAL        |3       |        1|      4|   228|
|24 months |MAL-ED         |NEPAL        |4       |        0|     17|   228|
|24 months |MAL-ED         |NEPAL        |4       |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |5       |        0|     20|   228|
|24 months |MAL-ED         |NEPAL        |5       |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |6       |        0|     18|   228|
|24 months |MAL-ED         |NEPAL        |6       |        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |7       |        0|     19|   228|
|24 months |MAL-ED         |NEPAL        |7       |        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |8       |        0|     29|   228|
|24 months |MAL-ED         |NEPAL        |8       |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |9       |        0|     13|   228|
|24 months |MAL-ED         |NEPAL        |9       |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |10      |        0|     13|   228|
|24 months |MAL-ED         |NEPAL        |10      |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |11      |        0|     21|   228|
|24 months |MAL-ED         |NEPAL        |11      |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |12      |        0|     18|   228|
|24 months |MAL-ED         |NEPAL        |12      |        1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |1       |        0|     11|   169|
|24 months |MAL-ED         |BRAZIL       |1       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |2       |        0|     22|   169|
|24 months |MAL-ED         |BRAZIL       |2       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |3       |        0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |3       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |4       |        0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |4       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |5       |        0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |5       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |6       |        0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |6       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |7       |        0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |7       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |8       |        0|     20|   169|
|24 months |MAL-ED         |BRAZIL       |8       |        1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |9       |        0|     29|   169|
|24 months |MAL-ED         |BRAZIL       |9       |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |10      |        0|      9|   169|
|24 months |MAL-ED         |BRAZIL       |10      |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |11      |        0|      7|   169|
|24 months |MAL-ED         |BRAZIL       |11      |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |12      |        0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |12      |        1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |1       |        0|     10|   214|
|24 months |MAL-ED         |TANZANIA     |1       |        1|      5|   214|
|24 months |MAL-ED         |TANZANIA     |2       |        0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |2       |        1|      7|   214|
|24 months |MAL-ED         |TANZANIA     |3       |        0|     10|   214|
|24 months |MAL-ED         |TANZANIA     |3       |        1|      7|   214|
|24 months |MAL-ED         |TANZANIA     |4       |        0|      6|   214|
|24 months |MAL-ED         |TANZANIA     |4       |        1|      7|   214|
|24 months |MAL-ED         |TANZANIA     |5       |        0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |5       |        1|      9|   214|
|24 months |MAL-ED         |TANZANIA     |6       |        0|     11|   214|
|24 months |MAL-ED         |TANZANIA     |6       |        1|      6|   214|
|24 months |MAL-ED         |TANZANIA     |7       |        0|     16|   214|
|24 months |MAL-ED         |TANZANIA     |7       |        1|      4|   214|
|24 months |MAL-ED         |TANZANIA     |8       |        0|      6|   214|
|24 months |MAL-ED         |TANZANIA     |8       |        1|      2|   214|
|24 months |MAL-ED         |TANZANIA     |9       |        0|      8|   214|
|24 months |MAL-ED         |TANZANIA     |9       |        1|      5|   214|
|24 months |MAL-ED         |TANZANIA     |10      |        0|     13|   214|
|24 months |MAL-ED         |TANZANIA     |10      |        1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |11      |        0|     18|   214|
|24 months |MAL-ED         |TANZANIA     |11      |        1|      5|   214|
|24 months |MAL-ED         |TANZANIA     |12      |        0|     17|   214|
|24 months |MAL-ED         |TANZANIA     |12      |        1|     10|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1       |        0|     24|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |        1|      6|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |        0|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |        1|      5|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |        0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |        1|      2|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |        0|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |        1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |        0|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |        1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |        0|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |        1|      2|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |        0|     19|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |        1|      3|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |        0|     12|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |        1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |        0|     16|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |        1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |        0|     18|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |        1|      4|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |        0|     19|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |        1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |        0|     36|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |        1|      1|   238|
|24 months |NIH-Birth      |BANGLADESH   |1       |        0|     37|   429|
|24 months |NIH-Birth      |BANGLADESH   |1       |        1|     13|   429|
|24 months |NIH-Birth      |BANGLADESH   |2       |        0|     27|   429|
|24 months |NIH-Birth      |BANGLADESH   |2       |        1|      6|   429|
|24 months |NIH-Birth      |BANGLADESH   |3       |        0|     35|   429|
|24 months |NIH-Birth      |BANGLADESH   |3       |        1|     13|   429|
|24 months |NIH-Birth      |BANGLADESH   |4       |        0|     25|   429|
|24 months |NIH-Birth      |BANGLADESH   |4       |        1|      7|   429|
|24 months |NIH-Birth      |BANGLADESH   |5       |        0|     34|   429|
|24 months |NIH-Birth      |BANGLADESH   |5       |        1|      9|   429|
|24 months |NIH-Birth      |BANGLADESH   |6       |        0|     24|   429|
|24 months |NIH-Birth      |BANGLADESH   |6       |        1|      6|   429|
|24 months |NIH-Birth      |BANGLADESH   |7       |        0|     19|   429|
|24 months |NIH-Birth      |BANGLADESH   |7       |        1|      6|   429|
|24 months |NIH-Birth      |BANGLADESH   |8       |        0|     27|   429|
|24 months |NIH-Birth      |BANGLADESH   |8       |        1|      8|   429|
|24 months |NIH-Birth      |BANGLADESH   |9       |        0|     26|   429|
|24 months |NIH-Birth      |BANGLADESH   |9       |        1|      9|   429|
|24 months |NIH-Birth      |BANGLADESH   |10      |        0|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |10      |        1|      8|   429|
|24 months |NIH-Birth      |BANGLADESH   |11      |        0|     34|   429|
|24 months |NIH-Birth      |BANGLADESH   |11      |        1|      4|   429|
|24 months |NIH-Birth      |BANGLADESH   |12      |        0|     28|   429|
|24 months |NIH-Birth      |BANGLADESH   |12      |        1|      6|   429|
|24 months |PROBIT         |BELARUS      |1       |        0|    236|  4035|
|24 months |PROBIT         |BELARUS      |1       |        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |2       |        0|    243|  4035|
|24 months |PROBIT         |BELARUS      |2       |        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |3       |        0|    282|  4035|
|24 months |PROBIT         |BELARUS      |3       |        1|      2|  4035|
|24 months |PROBIT         |BELARUS      |4       |        0|    307|  4035|
|24 months |PROBIT         |BELARUS      |4       |        1|      3|  4035|
|24 months |PROBIT         |BELARUS      |5       |        0|    239|  4035|
|24 months |PROBIT         |BELARUS      |5       |        1|      4|  4035|
|24 months |PROBIT         |BELARUS      |6       |        0|    274|  4035|
|24 months |PROBIT         |BELARUS      |6       |        1|      0|  4035|
|24 months |PROBIT         |BELARUS      |7       |        0|    339|  4035|
|24 months |PROBIT         |BELARUS      |7       |        1|      4|  4035|
|24 months |PROBIT         |BELARUS      |8       |        0|    407|  4035|
|24 months |PROBIT         |BELARUS      |8       |        1|      4|  4035|
|24 months |PROBIT         |BELARUS      |9       |        0|    411|  4035|
|24 months |PROBIT         |BELARUS      |9       |        1|      9|  4035|
|24 months |PROBIT         |BELARUS      |10      |        0|    378|  4035|
|24 months |PROBIT         |BELARUS      |10      |        1|      9|  4035|
|24 months |PROBIT         |BELARUS      |11      |        0|    389|  4035|
|24 months |PROBIT         |BELARUS      |11      |        1|      7|  4035|
|24 months |PROBIT         |BELARUS      |12      |        0|    465|  4035|
|24 months |PROBIT         |BELARUS      |12      |        1|     17|  4035|
|24 months |PROVIDE        |BANGLADESH   |1       |        0|     40|   578|
|24 months |PROVIDE        |BANGLADESH   |1       |        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |2       |        0|     24|   578|
|24 months |PROVIDE        |BANGLADESH   |2       |        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |3       |        0|     41|   578|
|24 months |PROVIDE        |BANGLADESH   |3       |        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |4       |        0|     27|   578|
|24 months |PROVIDE        |BANGLADESH   |4       |        1|      4|   578|
|24 months |PROVIDE        |BANGLADESH   |5       |        0|     44|   578|
|24 months |PROVIDE        |BANGLADESH   |5       |        1|      7|   578|
|24 months |PROVIDE        |BANGLADESH   |6       |        0|     69|   578|
|24 months |PROVIDE        |BANGLADESH   |6       |        1|      8|   578|
|24 months |PROVIDE        |BANGLADESH   |7       |        0|     63|   578|
|24 months |PROVIDE        |BANGLADESH   |7       |        1|      6|   578|
|24 months |PROVIDE        |BANGLADESH   |8       |        0|     49|   578|
|24 months |PROVIDE        |BANGLADESH   |8       |        1|      1|   578|
|24 months |PROVIDE        |BANGLADESH   |9       |        0|     62|   578|
|24 months |PROVIDE        |BANGLADESH   |9       |        1|      7|   578|
|24 months |PROVIDE        |BANGLADESH   |10      |        0|     54|   578|
|24 months |PROVIDE        |BANGLADESH   |10      |        1|      5|   578|
|24 months |PROVIDE        |BANGLADESH   |11      |        0|     31|   578|
|24 months |PROVIDE        |BANGLADESH   |11      |        1|      0|   578|
|24 months |PROVIDE        |BANGLADESH   |12      |        0|     22|   578|
|24 months |PROVIDE        |BANGLADESH   |12      |        1|      2|   578|
|24 months |TanzaniaChild2 |TANZANIA     |1       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |        1|      0|     6|
|24 months |Vellore Crypto |INDIA        |1       |        0|     36|   409|
|24 months |Vellore Crypto |INDIA        |1       |        1|      5|   409|
|24 months |Vellore Crypto |INDIA        |2       |        0|     14|   409|
|24 months |Vellore Crypto |INDIA        |2       |        1|      3|   409|
|24 months |Vellore Crypto |INDIA        |3       |        0|     30|   409|
|24 months |Vellore Crypto |INDIA        |3       |        1|      5|   409|
|24 months |Vellore Crypto |INDIA        |4       |        0|     14|   409|
|24 months |Vellore Crypto |INDIA        |4       |        1|      2|   409|
|24 months |Vellore Crypto |INDIA        |5       |        0|     15|   409|
|24 months |Vellore Crypto |INDIA        |5       |        1|      7|   409|
|24 months |Vellore Crypto |INDIA        |6       |        0|     44|   409|
|24 months |Vellore Crypto |INDIA        |6       |        1|      3|   409|
|24 months |Vellore Crypto |INDIA        |7       |        0|     31|   409|
|24 months |Vellore Crypto |INDIA        |7       |        1|      3|   409|
|24 months |Vellore Crypto |INDIA        |8       |        0|     46|   409|
|24 months |Vellore Crypto |INDIA        |8       |        1|      4|   409|
|24 months |Vellore Crypto |INDIA        |9       |        0|     30|   409|
|24 months |Vellore Crypto |INDIA        |9       |        1|      1|   409|
|24 months |Vellore Crypto |INDIA        |10      |        0|     42|   409|
|24 months |Vellore Crypto |INDIA        |10      |        1|      0|   409|
|24 months |Vellore Crypto |INDIA        |11      |        0|     31|   409|
|24 months |Vellore Crypto |INDIA        |11      |        1|      6|   409|
|24 months |Vellore Crypto |INDIA        |12      |        0|     35|   409|
|24 months |Vellore Crypto |INDIA        |12      |        1|      2|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |        0|    140|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |        1|     19|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |        0|    157|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |        1|     16|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |        0|    164|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |        1|     25|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |        0|    113|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |        1|     10|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |        0|    117|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |        1|     15|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |        0|    137|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |        1|     19|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |        0|    105|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |        1|     12|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |        0|     91|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |        1|     11|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |        0|     85|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |        1|      8|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |        0|     72|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |        1|      5|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |        0|    123|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |        1|     14|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |        0|    156|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |        1|     23|  1637|


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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


