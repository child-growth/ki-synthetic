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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |brthmon | stunted| n_cell|     n|
|:---------|:--------------|:------------|:-------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       0|      5|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |       0|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |2       |       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |       0|      6|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |3       |       1|      0|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |4       |       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |       0|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |5       |       1|      3|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |       0|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |6       |       1|      3|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |7       |       1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |8       |       1|      3|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |9       |       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |       0|      8|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |10      |       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |       0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |11      |       1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |       0|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |12      |       1|      1|    92|
|Birth     |CMIN           |BANGLADESH   |1       |       0|      1|    26|
|Birth     |CMIN           |BANGLADESH   |1       |       1|      2|    26|
|Birth     |CMIN           |BANGLADESH   |2       |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |2       |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |3       |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |3       |       1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |4       |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |4       |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |5       |       0|      1|    26|
|Birth     |CMIN           |BANGLADESH   |5       |       1|      3|    26|
|Birth     |CMIN           |BANGLADESH   |6       |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |6       |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |7       |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |7       |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |8       |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |8       |       1|      2|    26|
|Birth     |CMIN           |BANGLADESH   |9       |       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |9       |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |10      |       0|      1|    26|
|Birth     |CMIN           |BANGLADESH   |10      |       1|      1|    26|
|Birth     |CMIN           |BANGLADESH   |11      |       0|      2|    26|
|Birth     |CMIN           |BANGLADESH   |11      |       1|      0|    26|
|Birth     |CMIN           |BANGLADESH   |12      |       0|      0|    26|
|Birth     |CMIN           |BANGLADESH   |12      |       1|      0|    26|
|Birth     |CONTENT        |PERU         |1       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |1       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |2       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |2       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |3       |       0|      1|     2|
|Birth     |CONTENT        |PERU         |3       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |4       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |4       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |5       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |5       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |6       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |6       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |7       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |7       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |8       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |8       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |9       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |9       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |10      |       0|      1|     2|
|Birth     |CONTENT        |PERU         |10      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |11      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |11      |       1|      0|     2|
|Birth     |CONTENT        |PERU         |12      |       0|      0|     2|
|Birth     |CONTENT        |PERU         |12      |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |1       |       0|     42|   240|
|Birth     |EE             |PAKISTAN     |1       |       1|     29|   240|
|Birth     |EE             |PAKISTAN     |2       |       0|     17|   240|
|Birth     |EE             |PAKISTAN     |2       |       1|     22|   240|
|Birth     |EE             |PAKISTAN     |3       |       0|     12|   240|
|Birth     |EE             |PAKISTAN     |3       |       1|      9|   240|
|Birth     |EE             |PAKISTAN     |4       |       0|      6|   240|
|Birth     |EE             |PAKISTAN     |4       |       1|      7|   240|
|Birth     |EE             |PAKISTAN     |5       |       0|      0|   240|
|Birth     |EE             |PAKISTAN     |5       |       1|      0|   240|
|Birth     |EE             |PAKISTAN     |6       |       0|      0|   240|
|Birth     |EE             |PAKISTAN     |6       |       1|      0|   240|
|Birth     |EE             |PAKISTAN     |7       |       0|      0|   240|
|Birth     |EE             |PAKISTAN     |7       |       1|      0|   240|
|Birth     |EE             |PAKISTAN     |8       |       0|      0|   240|
|Birth     |EE             |PAKISTAN     |8       |       1|      0|   240|
|Birth     |EE             |PAKISTAN     |9       |       0|      0|   240|
|Birth     |EE             |PAKISTAN     |9       |       1|      0|   240|
|Birth     |EE             |PAKISTAN     |10      |       0|      0|   240|
|Birth     |EE             |PAKISTAN     |10      |       1|      0|   240|
|Birth     |EE             |PAKISTAN     |11      |       0|     33|   240|
|Birth     |EE             |PAKISTAN     |11      |       1|     20|   240|
|Birth     |EE             |PAKISTAN     |12      |       0|     30|   240|
|Birth     |EE             |PAKISTAN     |12      |       1|     13|   240|
|Birth     |GMS-Nepal      |NEPAL        |1       |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |1       |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |2       |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |2       |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |3       |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |3       |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |4       |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |4       |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |5       |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |5       |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |6       |       0|    132|   696|
|Birth     |GMS-Nepal      |NEPAL        |6       |       1|     24|   696|
|Birth     |GMS-Nepal      |NEPAL        |7       |       0|    234|   696|
|Birth     |GMS-Nepal      |NEPAL        |7       |       1|     48|   696|
|Birth     |GMS-Nepal      |NEPAL        |8       |       0|    208|   696|
|Birth     |GMS-Nepal      |NEPAL        |8       |       1|     50|   696|
|Birth     |GMS-Nepal      |NEPAL        |9       |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |9       |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |10      |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |10      |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |11      |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |11      |       1|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |12      |       0|      0|   696|
|Birth     |GMS-Nepal      |NEPAL        |12      |       1|      0|   696|
|Birth     |JiVitA-3       |BANGLADESH   |1       |       0|   1351| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |1       |       1|    716| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |2       |       0|   1187| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |2       |       1|    539| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |3       |       0|   1347| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |3       |       1|    607| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |4       |       0|   1041| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |4       |       1|    481| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |5       |       0|    758| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |5       |       1|    380| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |6       |       0|    817| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |6       |       1|    363| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |7       |       0|    869| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |7       |       1|    393| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |8       |       0|   1143| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |8       |       1|    600| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |9       |       0|   1624| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |9       |       1|    786| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |10      |       0|   1615| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |10      |       1|    808| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |11      |       0|   1578| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |11      |       1|    866| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |12      |       0|   1724| 22434|
|Birth     |JiVitA-3       |BANGLADESH   |12      |       1|    841| 22434|
|Birth     |JiVitA-4       |BANGLADESH   |1       |       0|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |1       |       1|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2       |       0|    331|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |2       |       1|    148|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3       |       0|    326|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |3       |       1|    170|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |4       |       0|    276|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |4       |       1|    126|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |5       |       0|    245|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |5       |       1|     97|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |6       |       0|    187|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |6       |       1|     79|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |7       |       0|    187|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |7       |       1|     84|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |8       |       0|    212|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |8       |       1|     90|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |9       |       0|    141|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |9       |       1|     46|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |10      |       0|     60|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |10      |       1|     17|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |11      |       0|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |11      |       1|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |12      |       0|      0|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |12      |       1|      0|  2822|
|Birth     |Keneba         |GAMBIA       |1       |       0|    152|  1543|
|Birth     |Keneba         |GAMBIA       |1       |       1|      6|  1543|
|Birth     |Keneba         |GAMBIA       |2       |       0|    138|  1543|
|Birth     |Keneba         |GAMBIA       |2       |       1|     14|  1543|
|Birth     |Keneba         |GAMBIA       |3       |       0|    164|  1543|
|Birth     |Keneba         |GAMBIA       |3       |       1|      6|  1543|
|Birth     |Keneba         |GAMBIA       |4       |       0|     92|  1543|
|Birth     |Keneba         |GAMBIA       |4       |       1|      5|  1543|
|Birth     |Keneba         |GAMBIA       |5       |       0|     97|  1543|
|Birth     |Keneba         |GAMBIA       |5       |       1|      1|  1543|
|Birth     |Keneba         |GAMBIA       |6       |       0|     89|  1543|
|Birth     |Keneba         |GAMBIA       |6       |       1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |7       |       0|     68|  1543|
|Birth     |Keneba         |GAMBIA       |7       |       1|      4|  1543|
|Birth     |Keneba         |GAMBIA       |8       |       0|    116|  1543|
|Birth     |Keneba         |GAMBIA       |8       |       1|      7|  1543|
|Birth     |Keneba         |GAMBIA       |9       |       0|    134|  1543|
|Birth     |Keneba         |GAMBIA       |9       |       1|      5|  1543|
|Birth     |Keneba         |GAMBIA       |10      |       0|    169|  1543|
|Birth     |Keneba         |GAMBIA       |10      |       1|     12|  1543|
|Birth     |Keneba         |GAMBIA       |11      |       0|    106|  1543|
|Birth     |Keneba         |GAMBIA       |11      |       1|     13|  1543|
|Birth     |Keneba         |GAMBIA       |12      |       0|    135|  1543|
|Birth     |Keneba         |GAMBIA       |12      |       1|      6|  1543|
|Birth     |MAL-ED         |INDIA        |1       |       0|      1|    47|
|Birth     |MAL-ED         |INDIA        |1       |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |2       |       0|      6|    47|
|Birth     |MAL-ED         |INDIA        |2       |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |3       |       0|      4|    47|
|Birth     |MAL-ED         |INDIA        |3       |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |4       |       0|      4|    47|
|Birth     |MAL-ED         |INDIA        |4       |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |5       |       0|      0|    47|
|Birth     |MAL-ED         |INDIA        |5       |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |6       |       0|      2|    47|
|Birth     |MAL-ED         |INDIA        |6       |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |7       |       0|      2|    47|
|Birth     |MAL-ED         |INDIA        |7       |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |8       |       0|      6|    47|
|Birth     |MAL-ED         |INDIA        |8       |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |9       |       0|      1|    47|
|Birth     |MAL-ED         |INDIA        |9       |       1|      0|    47|
|Birth     |MAL-ED         |INDIA        |10      |       0|      4|    47|
|Birth     |MAL-ED         |INDIA        |10      |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |11      |       0|      5|    47|
|Birth     |MAL-ED         |INDIA        |11      |       1|      1|    47|
|Birth     |MAL-ED         |INDIA        |12      |       0|      2|    47|
|Birth     |MAL-ED         |INDIA        |12      |       1|      1|    47|
|Birth     |MAL-ED         |BANGLADESH   |1       |       0|     17|   231|
|Birth     |MAL-ED         |BANGLADESH   |1       |       1|      3|   231|
|Birth     |MAL-ED         |BANGLADESH   |2       |       0|     15|   231|
|Birth     |MAL-ED         |BANGLADESH   |2       |       1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |3       |       0|     14|   231|
|Birth     |MAL-ED         |BANGLADESH   |3       |       1|      8|   231|
|Birth     |MAL-ED         |BANGLADESH   |4       |       0|     11|   231|
|Birth     |MAL-ED         |BANGLADESH   |4       |       1|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |5       |       0|     14|   231|
|Birth     |MAL-ED         |BANGLADESH   |5       |       1|      6|   231|
|Birth     |MAL-ED         |BANGLADESH   |6       |       0|      6|   231|
|Birth     |MAL-ED         |BANGLADESH   |6       |       1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |7       |       0|     11|   231|
|Birth     |MAL-ED         |BANGLADESH   |7       |       1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |8       |       0|     22|   231|
|Birth     |MAL-ED         |BANGLADESH   |8       |       1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |9       |       0|     21|   231|
|Birth     |MAL-ED         |BANGLADESH   |9       |       1|      6|   231|
|Birth     |MAL-ED         |BANGLADESH   |10      |       0|     20|   231|
|Birth     |MAL-ED         |BANGLADESH   |10      |       1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |11      |       0|     14|   231|
|Birth     |MAL-ED         |BANGLADESH   |11      |       1|      1|   231|
|Birth     |MAL-ED         |BANGLADESH   |12      |       0|     22|   231|
|Birth     |MAL-ED         |BANGLADESH   |12      |       1|      6|   231|
|Birth     |MAL-ED         |PERU         |1       |       0|     35|   233|
|Birth     |MAL-ED         |PERU         |1       |       1|      3|   233|
|Birth     |MAL-ED         |PERU         |2       |       0|      9|   233|
|Birth     |MAL-ED         |PERU         |2       |       1|      3|   233|
|Birth     |MAL-ED         |PERU         |3       |       0|     21|   233|
|Birth     |MAL-ED         |PERU         |3       |       1|      3|   233|
|Birth     |MAL-ED         |PERU         |4       |       0|     16|   233|
|Birth     |MAL-ED         |PERU         |4       |       1|      2|   233|
|Birth     |MAL-ED         |PERU         |5       |       0|     15|   233|
|Birth     |MAL-ED         |PERU         |5       |       1|      1|   233|
|Birth     |MAL-ED         |PERU         |6       |       0|      7|   233|
|Birth     |MAL-ED         |PERU         |6       |       1|      2|   233|
|Birth     |MAL-ED         |PERU         |7       |       0|     15|   233|
|Birth     |MAL-ED         |PERU         |7       |       1|      3|   233|
|Birth     |MAL-ED         |PERU         |8       |       0|     20|   233|
|Birth     |MAL-ED         |PERU         |8       |       1|      1|   233|
|Birth     |MAL-ED         |PERU         |9       |       0|     12|   233|
|Birth     |MAL-ED         |PERU         |9       |       1|      3|   233|
|Birth     |MAL-ED         |PERU         |10      |       0|     17|   233|
|Birth     |MAL-ED         |PERU         |10      |       1|      1|   233|
|Birth     |MAL-ED         |PERU         |11      |       0|     26|   233|
|Birth     |MAL-ED         |PERU         |11      |       1|      3|   233|
|Birth     |MAL-ED         |PERU         |12      |       0|     14|   233|
|Birth     |MAL-ED         |PERU         |12      |       1|      1|   233|
|Birth     |MAL-ED         |NEPAL        |1       |       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |1       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |2       |       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |2       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |3       |       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |3       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |4       |       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |4       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |5       |       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |5       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |6       |       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |6       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |7       |       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |7       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |8       |       0|      2|    27|
|Birth     |MAL-ED         |NEPAL        |8       |       1|      2|    27|
|Birth     |MAL-ED         |NEPAL        |9       |       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |9       |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |10      |       0|      0|    27|
|Birth     |MAL-ED         |NEPAL        |10      |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |11      |       0|      3|    27|
|Birth     |MAL-ED         |NEPAL        |11      |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |12      |       0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |12      |       1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |1       |       0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |1       |       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |2       |       0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |2       |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |3       |       0|      8|    65|
|Birth     |MAL-ED         |BRAZIL       |3       |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |4       |       0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |4       |       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |5       |       0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |5       |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |6       |       0|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |6       |       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |7       |       0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |7       |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |8       |       0|      7|    65|
|Birth     |MAL-ED         |BRAZIL       |8       |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |9       |       0|     10|    65|
|Birth     |MAL-ED         |BRAZIL       |9       |       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |10      |       0|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |10      |       1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |11      |       0|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |11      |       1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |12      |       0|      4|    65|
|Birth     |MAL-ED         |BRAZIL       |12      |       1|      2|    65|
|Birth     |MAL-ED         |TANZANIA     |1       |       0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |1       |       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |2       |       0|     11|   125|
|Birth     |MAL-ED         |TANZANIA     |2       |       1|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |3       |       0|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |3       |       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |4       |       0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |4       |       1|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |5       |       0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |5       |       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |6       |       0|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |6       |       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |7       |       0|     12|   125|
|Birth     |MAL-ED         |TANZANIA     |7       |       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |8       |       0|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |8       |       1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |9       |       0|      6|   125|
|Birth     |MAL-ED         |TANZANIA     |9       |       1|      2|   125|
|Birth     |MAL-ED         |TANZANIA     |10      |       0|      7|   125|
|Birth     |MAL-ED         |TANZANIA     |10      |       1|      1|   125|
|Birth     |MAL-ED         |TANZANIA     |11      |       0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |11      |       1|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |12      |       0|     10|   125|
|Birth     |MAL-ED         |TANZANIA     |12      |       1|      4|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |       0|     16|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |       0|     11|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |2       |       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |       0|      5|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |3       |       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |       0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |4       |       1|      2|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |       0|      4|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |5       |       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |       0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |6       |       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |       0|      9|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |7       |       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |       0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |8       |       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |       0|      6|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |9       |       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |       0|     14|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |10      |       1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |       0|     11|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |11      |       1|      3|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |       0|     19|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |12      |       1|      2|   123|
|Birth     |NIH-Birth      |BANGLADESH   |1       |       0|     51|   608|
|Birth     |NIH-Birth      |BANGLADESH   |1       |       1|     19|   608|
|Birth     |NIH-Birth      |BANGLADESH   |2       |       0|     45|   608|
|Birth     |NIH-Birth      |BANGLADESH   |2       |       1|      6|   608|
|Birth     |NIH-Birth      |BANGLADESH   |3       |       0|     50|   608|
|Birth     |NIH-Birth      |BANGLADESH   |3       |       1|      8|   608|
|Birth     |NIH-Birth      |BANGLADESH   |4       |       0|     48|   608|
|Birth     |NIH-Birth      |BANGLADESH   |4       |       1|      3|   608|
|Birth     |NIH-Birth      |BANGLADESH   |5       |       0|     45|   608|
|Birth     |NIH-Birth      |BANGLADESH   |5       |       1|      8|   608|
|Birth     |NIH-Birth      |BANGLADESH   |6       |       0|     41|   608|
|Birth     |NIH-Birth      |BANGLADESH   |6       |       1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |7       |       0|     26|   608|
|Birth     |NIH-Birth      |BANGLADESH   |7       |       1|      8|   608|
|Birth     |NIH-Birth      |BANGLADESH   |8       |       0|     41|   608|
|Birth     |NIH-Birth      |BANGLADESH   |8       |       1|      8|   608|
|Birth     |NIH-Birth      |BANGLADESH   |9       |       0|     41|   608|
|Birth     |NIH-Birth      |BANGLADESH   |9       |       1|      8|   608|
|Birth     |NIH-Birth      |BANGLADESH   |10      |       0|     34|   608|
|Birth     |NIH-Birth      |BANGLADESH   |10      |       1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |11      |       0|     48|   608|
|Birth     |NIH-Birth      |BANGLADESH   |11      |       1|      7|   608|
|Birth     |NIH-Birth      |BANGLADESH   |12      |       0|     41|   608|
|Birth     |NIH-Birth      |BANGLADESH   |12      |       1|      8|   608|
|Birth     |PROBIT         |BELARUS      |1       |       0|    761| 13893|
|Birth     |PROBIT         |BELARUS      |1       |       1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |2       |       0|    810| 13893|
|Birth     |PROBIT         |BELARUS      |2       |       1|      4| 13893|
|Birth     |PROBIT         |BELARUS      |3       |       0|    921| 13893|
|Birth     |PROBIT         |BELARUS      |3       |       1|      1| 13893|
|Birth     |PROBIT         |BELARUS      |4       |       0|    981| 13893|
|Birth     |PROBIT         |BELARUS      |4       |       1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |5       |       0|    914| 13893|
|Birth     |PROBIT         |BELARUS      |5       |       1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |6       |       0|   1024| 13893|
|Birth     |PROBIT         |BELARUS      |6       |       1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |7       |       0|   1281| 13893|
|Birth     |PROBIT         |BELARUS      |7       |       1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |8       |       0|   1346| 13893|
|Birth     |PROBIT         |BELARUS      |8       |       1|      5| 13893|
|Birth     |PROBIT         |BELARUS      |9       |       0|   1399| 13893|
|Birth     |PROBIT         |BELARUS      |9       |       1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |10      |       0|   1460| 13893|
|Birth     |PROBIT         |BELARUS      |10      |       1|      5| 13893|
|Birth     |PROBIT         |BELARUS      |11      |       0|   1392| 13893|
|Birth     |PROBIT         |BELARUS      |11      |       1|      4| 13893|
|Birth     |PROBIT         |BELARUS      |12      |       0|   1570| 13893|
|Birth     |PROBIT         |BELARUS      |12      |       1|      3| 13893|
|Birth     |PROVIDE        |BANGLADESH   |1       |       0|     31|   539|
|Birth     |PROVIDE        |BANGLADESH   |1       |       1|      5|   539|
|Birth     |PROVIDE        |BANGLADESH   |2       |       0|     30|   539|
|Birth     |PROVIDE        |BANGLADESH   |2       |       1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |3       |       0|     37|   539|
|Birth     |PROVIDE        |BANGLADESH   |3       |       1|      3|   539|
|Birth     |PROVIDE        |BANGLADESH   |4       |       0|     29|   539|
|Birth     |PROVIDE        |BANGLADESH   |4       |       1|      4|   539|
|Birth     |PROVIDE        |BANGLADESH   |5       |       0|     43|   539|
|Birth     |PROVIDE        |BANGLADESH   |5       |       1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |6       |       0|     64|   539|
|Birth     |PROVIDE        |BANGLADESH   |6       |       1|     10|   539|
|Birth     |PROVIDE        |BANGLADESH   |7       |       0|     63|   539|
|Birth     |PROVIDE        |BANGLADESH   |7       |       1|      7|   539|
|Birth     |PROVIDE        |BANGLADESH   |8       |       0|     40|   539|
|Birth     |PROVIDE        |BANGLADESH   |8       |       1|      5|   539|
|Birth     |PROVIDE        |BANGLADESH   |9       |       0|     55|   539|
|Birth     |PROVIDE        |BANGLADESH   |9       |       1|      7|   539|
|Birth     |PROVIDE        |BANGLADESH   |10      |       0|     50|   539|
|Birth     |PROVIDE        |BANGLADESH   |10      |       1|      5|   539|
|Birth     |PROVIDE        |BANGLADESH   |11      |       0|     27|   539|
|Birth     |PROVIDE        |BANGLADESH   |11      |       1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |12      |       0|     22|   539|
|Birth     |PROVIDE        |BANGLADESH   |12      |       1|      0|   539|
|Birth     |ResPak         |PAKISTAN     |1       |       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |1       |       1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |2       |       0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |2       |       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |3       |       0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |3       |       1|      5|    42|
|Birth     |ResPak         |PAKISTAN     |4       |       0|      5|    42|
|Birth     |ResPak         |PAKISTAN     |4       |       1|      1|    42|
|Birth     |ResPak         |PAKISTAN     |5       |       0|      4|    42|
|Birth     |ResPak         |PAKISTAN     |5       |       1|      3|    42|
|Birth     |ResPak         |PAKISTAN     |6       |       0|      3|    42|
|Birth     |ResPak         |PAKISTAN     |6       |       1|      2|    42|
|Birth     |ResPak         |PAKISTAN     |7       |       0|      7|    42|
|Birth     |ResPak         |PAKISTAN     |7       |       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |8       |       0|      3|    42|
|Birth     |ResPak         |PAKISTAN     |8       |       1|      2|    42|
|Birth     |ResPak         |PAKISTAN     |9       |       0|      2|    42|
|Birth     |ResPak         |PAKISTAN     |9       |       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |10      |       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |10      |       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |11      |       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |11      |       1|      0|    42|
|Birth     |ResPak         |PAKISTAN     |12      |       0|      0|    42|
|Birth     |ResPak         |PAKISTAN     |12      |       1|      0|    42|
|Birth     |SAS-CompFeed   |INDIA        |1       |       0|     66|  1251|
|Birth     |SAS-CompFeed   |INDIA        |1       |       1|     30|  1251|
|Birth     |SAS-CompFeed   |INDIA        |2       |       0|     42|  1251|
|Birth     |SAS-CompFeed   |INDIA        |2       |       1|     19|  1251|
|Birth     |SAS-CompFeed   |INDIA        |3       |       0|     40|  1251|
|Birth     |SAS-CompFeed   |INDIA        |3       |       1|     15|  1251|
|Birth     |SAS-CompFeed   |INDIA        |4       |       0|     43|  1251|
|Birth     |SAS-CompFeed   |INDIA        |4       |       1|     13|  1251|
|Birth     |SAS-CompFeed   |INDIA        |5       |       0|     74|  1251|
|Birth     |SAS-CompFeed   |INDIA        |5       |       1|     27|  1251|
|Birth     |SAS-CompFeed   |INDIA        |6       |       0|     86|  1251|
|Birth     |SAS-CompFeed   |INDIA        |6       |       1|     30|  1251|
|Birth     |SAS-CompFeed   |INDIA        |7       |       0|     67|  1251|
|Birth     |SAS-CompFeed   |INDIA        |7       |       1|     21|  1251|
|Birth     |SAS-CompFeed   |INDIA        |8       |       0|    114|  1251|
|Birth     |SAS-CompFeed   |INDIA        |8       |       1|     56|  1251|
|Birth     |SAS-CompFeed   |INDIA        |9       |       0|    110|  1251|
|Birth     |SAS-CompFeed   |INDIA        |9       |       1|     44|  1251|
|Birth     |SAS-CompFeed   |INDIA        |10      |       0|    106|  1251|
|Birth     |SAS-CompFeed   |INDIA        |10      |       1|     38|  1251|
|Birth     |SAS-CompFeed   |INDIA        |11      |       0|     80|  1251|
|Birth     |SAS-CompFeed   |INDIA        |11      |       1|     34|  1251|
|Birth     |SAS-CompFeed   |INDIA        |12      |       0|     74|  1251|
|Birth     |SAS-CompFeed   |INDIA        |12      |       1|     22|  1251|
|Birth     |Vellore Crypto |INDIA        |1       |       0|     32|   388|
|Birth     |Vellore Crypto |INDIA        |1       |       1|      8|   388|
|Birth     |Vellore Crypto |INDIA        |2       |       0|     12|   388|
|Birth     |Vellore Crypto |INDIA        |2       |       1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |3       |       0|     31|   388|
|Birth     |Vellore Crypto |INDIA        |3       |       1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |4       |       0|     14|   388|
|Birth     |Vellore Crypto |INDIA        |4       |       1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |5       |       0|     18|   388|
|Birth     |Vellore Crypto |INDIA        |5       |       1|      2|   388|
|Birth     |Vellore Crypto |INDIA        |6       |       0|     42|   388|
|Birth     |Vellore Crypto |INDIA        |6       |       1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |7       |       0|     29|   388|
|Birth     |Vellore Crypto |INDIA        |7       |       1|      5|   388|
|Birth     |Vellore Crypto |INDIA        |8       |       0|     45|   388|
|Birth     |Vellore Crypto |INDIA        |8       |       1|      5|   388|
|Birth     |Vellore Crypto |INDIA        |9       |       0|     27|   388|
|Birth     |Vellore Crypto |INDIA        |9       |       1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |10      |       0|     37|   388|
|Birth     |Vellore Crypto |INDIA        |10      |       1|      1|   388|
|Birth     |Vellore Crypto |INDIA        |11      |       0|     27|   388|
|Birth     |Vellore Crypto |INDIA        |11      |       1|      9|   388|
|Birth     |Vellore Crypto |INDIA        |12      |       0|     29|   388|
|Birth     |Vellore Crypto |INDIA        |12      |       1|      2|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |       0|   1149| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |       1|    146| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |       0|    929| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |2       |       1|    119| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |       0|   1062| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |3       |       1|    135| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |       0|    864| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |4       |       1|    105| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |       0|    913| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |5       |       1|    103| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |       0|   1055| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |6       |       1|    133| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |       0|   1074| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |7       |       1|    118| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |       0|   1148| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |8       |       1|    129| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |       0|   1124| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |9       |       1|    127| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |       0|    963| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |10      |       1|     87| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |       0|   1090| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |11      |       1|    107| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |       0|   1059| 13861|
|Birth     |ZVITAMBO       |ZIMBABWE     |12      |       1|    122| 13861|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       0|     22|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       1|      9|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |       0|     12|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |2       |       1|      4|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |       0|     21|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |3       |       1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |       0|     31|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |4       |       1|     17|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |       0|     25|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |5       |       1|     14|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |       0|     18|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |6       |       1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |       0|     23|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |7       |       1|     19|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |       0|     16|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |8       |       1|      6|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |       0|     16|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |9       |       1|      5|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |       0|     21|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |10      |       1|      2|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |       0|     34|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |11      |       1|      9|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |       0|     19|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |12      |       1|      6|   369|
|6 months  |CMIN           |BANGLADESH   |1       |       0|     11|   242|
|6 months  |CMIN           |BANGLADESH   |1       |       1|     12|   242|
|6 months  |CMIN           |BANGLADESH   |2       |       0|     19|   242|
|6 months  |CMIN           |BANGLADESH   |2       |       1|      6|   242|
|6 months  |CMIN           |BANGLADESH   |3       |       0|     18|   242|
|6 months  |CMIN           |BANGLADESH   |3       |       1|      6|   242|
|6 months  |CMIN           |BANGLADESH   |4       |       0|      6|   242|
|6 months  |CMIN           |BANGLADESH   |4       |       1|      5|   242|
|6 months  |CMIN           |BANGLADESH   |5       |       0|     12|   242|
|6 months  |CMIN           |BANGLADESH   |5       |       1|      5|   242|
|6 months  |CMIN           |BANGLADESH   |6       |       0|      8|   242|
|6 months  |CMIN           |BANGLADESH   |6       |       1|      2|   242|
|6 months  |CMIN           |BANGLADESH   |7       |       0|      7|   242|
|6 months  |CMIN           |BANGLADESH   |7       |       1|      6|   242|
|6 months  |CMIN           |BANGLADESH   |8       |       0|     14|   242|
|6 months  |CMIN           |BANGLADESH   |8       |       1|     11|   242|
|6 months  |CMIN           |BANGLADESH   |9       |       0|     10|   242|
|6 months  |CMIN           |BANGLADESH   |9       |       1|      6|   242|
|6 months  |CMIN           |BANGLADESH   |10      |       0|     16|   242|
|6 months  |CMIN           |BANGLADESH   |10      |       1|     10|   242|
|6 months  |CMIN           |BANGLADESH   |11      |       0|     13|   242|
|6 months  |CMIN           |BANGLADESH   |11      |       1|     11|   242|
|6 months  |CMIN           |BANGLADESH   |12      |       0|     15|   242|
|6 months  |CMIN           |BANGLADESH   |12      |       1|     13|   242|
|6 months  |CONTENT        |PERU         |1       |       0|      9|   215|
|6 months  |CONTENT        |PERU         |1       |       1|      1|   215|
|6 months  |CONTENT        |PERU         |2       |       0|     15|   215|
|6 months  |CONTENT        |PERU         |2       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |3       |       0|     27|   215|
|6 months  |CONTENT        |PERU         |3       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |4       |       0|     23|   215|
|6 months  |CONTENT        |PERU         |4       |       1|      1|   215|
|6 months  |CONTENT        |PERU         |5       |       0|     13|   215|
|6 months  |CONTENT        |PERU         |5       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |6       |       0|      8|   215|
|6 months  |CONTENT        |PERU         |6       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |7       |       0|     38|   215|
|6 months  |CONTENT        |PERU         |7       |       1|      3|   215|
|6 months  |CONTENT        |PERU         |8       |       0|     16|   215|
|6 months  |CONTENT        |PERU         |8       |       1|      1|   215|
|6 months  |CONTENT        |PERU         |9       |       0|     22|   215|
|6 months  |CONTENT        |PERU         |9       |       1|      1|   215|
|6 months  |CONTENT        |PERU         |10      |       0|     15|   215|
|6 months  |CONTENT        |PERU         |10      |       1|      0|   215|
|6 months  |CONTENT        |PERU         |11      |       0|     10|   215|
|6 months  |CONTENT        |PERU         |11      |       1|      0|   215|
|6 months  |CONTENT        |PERU         |12      |       0|     10|   215|
|6 months  |CONTENT        |PERU         |12      |       1|      2|   215|
|6 months  |EE             |PAKISTAN     |1       |       0|     54|   373|
|6 months  |EE             |PAKISTAN     |1       |       1|     49|   373|
|6 months  |EE             |PAKISTAN     |2       |       0|     32|   373|
|6 months  |EE             |PAKISTAN     |2       |       1|     28|   373|
|6 months  |EE             |PAKISTAN     |3       |       0|     14|   373|
|6 months  |EE             |PAKISTAN     |3       |       1|     19|   373|
|6 months  |EE             |PAKISTAN     |4       |       0|     10|   373|
|6 months  |EE             |PAKISTAN     |4       |       1|      9|   373|
|6 months  |EE             |PAKISTAN     |5       |       0|      0|   373|
|6 months  |EE             |PAKISTAN     |5       |       1|      0|   373|
|6 months  |EE             |PAKISTAN     |6       |       0|      0|   373|
|6 months  |EE             |PAKISTAN     |6       |       1|      0|   373|
|6 months  |EE             |PAKISTAN     |7       |       0|      0|   373|
|6 months  |EE             |PAKISTAN     |7       |       1|      0|   373|
|6 months  |EE             |PAKISTAN     |8       |       0|      0|   373|
|6 months  |EE             |PAKISTAN     |8       |       1|      0|   373|
|6 months  |EE             |PAKISTAN     |9       |       0|      0|   373|
|6 months  |EE             |PAKISTAN     |9       |       1|      0|   373|
|6 months  |EE             |PAKISTAN     |10      |       0|      1|   373|
|6 months  |EE             |PAKISTAN     |10      |       1|      1|   373|
|6 months  |EE             |PAKISTAN     |11      |       0|     41|   373|
|6 months  |EE             |PAKISTAN     |11      |       1|     42|   373|
|6 months  |EE             |PAKISTAN     |12      |       0|     38|   373|
|6 months  |EE             |PAKISTAN     |12      |       1|     35|   373|
|6 months  |GMS-Nepal      |NEPAL        |1       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |2       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |3       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |4       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |5       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |       0|     98|   564|
|6 months  |GMS-Nepal      |NEPAL        |6       |       1|     29|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |       0|    177|   564|
|6 months  |GMS-Nepal      |NEPAL        |7       |       1|     52|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |       0|    167|   564|
|6 months  |GMS-Nepal      |NEPAL        |8       |       1|     41|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |9       |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |10      |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |11      |       1|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |       0|      0|   564|
|6 months  |GMS-Nepal      |NEPAL        |12      |       1|      0|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |       0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |       1|      6|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |       0|     24|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |2       |       1|      4|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |       0|     10|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |3       |       1|     12|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |       0|     16|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |4       |       1|     14|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |       0|     21|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |5       |       1|     10|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |       0|     19|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |6       |       1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |       0|     11|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |7       |       1|      7|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |       0|     13|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |8       |       1|      8|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |       0|     12|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |9       |       1|      4|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |       0|     17|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |10      |       1|     11|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |       0|     14|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |11      |       1|      6|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |       0|     31|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |12      |       1|      7|   299|
|6 months  |JiVitA-3       |BANGLADESH   |1       |       0|   1296| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |1       |       1|    436| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |2       |       0|   1058| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |2       |       1|    374| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |3       |       0|   1318| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |3       |       1|    398| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |4       |       0|   1062| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |4       |       1|    303| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |5       |       0|    833| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |5       |       1|    266| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |6       |       0|    836| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |6       |       1|    265| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |7       |       0|    796| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |7       |       1|    276| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |8       |       0|   1001| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |8       |       1|    358| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |9       |       0|   1155| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |9       |       1|    374| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |10      |       0|   1067| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |10      |       1|    389| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |11      |       0|   1078| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |11      |       1|    413| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |12      |       0|   1079| 16800|
|6 months  |JiVitA-3       |BANGLADESH   |12      |       1|    369| 16800|
|6 months  |JiVitA-4       |BANGLADESH   |1       |       0|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |1       |       1|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2       |       0|    595|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |2       |       1|    208|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3       |       0|    618|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |3       |       1|    225|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |4       |       0|    511|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |4       |       1|    171|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |5       |       0|    432|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |5       |       1|    136|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |6       |       0|    305|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |6       |       1|    102|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |7       |       0|    340|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |7       |       1|    125|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |8       |       0|    437|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |8       |       1|    138|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |9       |       0|    277|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |9       |       1|     83|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |10      |       0|     95|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |10      |       1|     32|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |11      |       0|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |11      |       1|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |12      |       0|      0|  4830|
|6 months  |JiVitA-4       |BANGLADESH   |12      |       1|      0|  4830|
|6 months  |Keneba         |GAMBIA       |1       |       0|    180|  2089|
|6 months  |Keneba         |GAMBIA       |1       |       1|     33|  2089|
|6 months  |Keneba         |GAMBIA       |2       |       0|    187|  2089|
|6 months  |Keneba         |GAMBIA       |2       |       1|     23|  2089|
|6 months  |Keneba         |GAMBIA       |3       |       0|    200|  2089|
|6 months  |Keneba         |GAMBIA       |3       |       1|     35|  2089|
|6 months  |Keneba         |GAMBIA       |4       |       0|    117|  2089|
|6 months  |Keneba         |GAMBIA       |4       |       1|     18|  2089|
|6 months  |Keneba         |GAMBIA       |5       |       0|    123|  2089|
|6 months  |Keneba         |GAMBIA       |5       |       1|     21|  2089|
|6 months  |Keneba         |GAMBIA       |6       |       0|    115|  2089|
|6 months  |Keneba         |GAMBIA       |6       |       1|     16|  2089|
|6 months  |Keneba         |GAMBIA       |7       |       0|     86|  2089|
|6 months  |Keneba         |GAMBIA       |7       |       1|      8|  2089|
|6 months  |Keneba         |GAMBIA       |8       |       0|    140|  2089|
|6 months  |Keneba         |GAMBIA       |8       |       1|     24|  2089|
|6 months  |Keneba         |GAMBIA       |9       |       0|    151|  2089|
|6 months  |Keneba         |GAMBIA       |9       |       1|     26|  2089|
|6 months  |Keneba         |GAMBIA       |10      |       0|    197|  2089|
|6 months  |Keneba         |GAMBIA       |10      |       1|     34|  2089|
|6 months  |Keneba         |GAMBIA       |11      |       0|    148|  2089|
|6 months  |Keneba         |GAMBIA       |11      |       1|     24|  2089|
|6 months  |Keneba         |GAMBIA       |12      |       0|    150|  2089|
|6 months  |Keneba         |GAMBIA       |12      |       1|     33|  2089|
|6 months  |LCNI-5         |MALAWI       |1       |       0|     27|   839|
|6 months  |LCNI-5         |MALAWI       |1       |       1|     22|   839|
|6 months  |LCNI-5         |MALAWI       |2       |       0|     30|   839|
|6 months  |LCNI-5         |MALAWI       |2       |       1|     14|   839|
|6 months  |LCNI-5         |MALAWI       |3       |       0|     17|   839|
|6 months  |LCNI-5         |MALAWI       |3       |       1|      5|   839|
|6 months  |LCNI-5         |MALAWI       |4       |       0|     22|   839|
|6 months  |LCNI-5         |MALAWI       |4       |       1|     17|   839|
|6 months  |LCNI-5         |MALAWI       |5       |       0|     28|   839|
|6 months  |LCNI-5         |MALAWI       |5       |       1|     17|   839|
|6 months  |LCNI-5         |MALAWI       |6       |       0|     23|   839|
|6 months  |LCNI-5         |MALAWI       |6       |       1|     13|   839|
|6 months  |LCNI-5         |MALAWI       |7       |       0|     45|   839|
|6 months  |LCNI-5         |MALAWI       |7       |       1|     22|   839|
|6 months  |LCNI-5         |MALAWI       |8       |       0|     60|   839|
|6 months  |LCNI-5         |MALAWI       |8       |       1|     32|   839|
|6 months  |LCNI-5         |MALAWI       |9       |       0|     59|   839|
|6 months  |LCNI-5         |MALAWI       |9       |       1|     36|   839|
|6 months  |LCNI-5         |MALAWI       |10      |       0|     98|   839|
|6 months  |LCNI-5         |MALAWI       |10      |       1|     46|   839|
|6 months  |LCNI-5         |MALAWI       |11      |       0|     65|   839|
|6 months  |LCNI-5         |MALAWI       |11      |       1|     50|   839|
|6 months  |LCNI-5         |MALAWI       |12      |       0|     56|   839|
|6 months  |LCNI-5         |MALAWI       |12      |       1|     35|   839|
|6 months  |MAL-ED         |INDIA        |1       |       0|     18|   236|
|6 months  |MAL-ED         |INDIA        |1       |       1|      2|   236|
|6 months  |MAL-ED         |INDIA        |2       |       0|     21|   236|
|6 months  |MAL-ED         |INDIA        |2       |       1|      2|   236|
|6 months  |MAL-ED         |INDIA        |3       |       0|     17|   236|
|6 months  |MAL-ED         |INDIA        |3       |       1|      6|   236|
|6 months  |MAL-ED         |INDIA        |4       |       0|     11|   236|
|6 months  |MAL-ED         |INDIA        |4       |       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |5       |       0|      2|   236|
|6 months  |MAL-ED         |INDIA        |5       |       1|      1|   236|
|6 months  |MAL-ED         |INDIA        |6       |       0|     13|   236|
|6 months  |MAL-ED         |INDIA        |6       |       1|      5|   236|
|6 months  |MAL-ED         |INDIA        |7       |       0|      7|   236|
|6 months  |MAL-ED         |INDIA        |7       |       1|      2|   236|
|6 months  |MAL-ED         |INDIA        |8       |       0|     22|   236|
|6 months  |MAL-ED         |INDIA        |8       |       1|      6|   236|
|6 months  |MAL-ED         |INDIA        |9       |       0|     16|   236|
|6 months  |MAL-ED         |INDIA        |9       |       1|      5|   236|
|6 months  |MAL-ED         |INDIA        |10      |       0|     30|   236|
|6 months  |MAL-ED         |INDIA        |10      |       1|      8|   236|
|6 months  |MAL-ED         |INDIA        |11      |       0|     20|   236|
|6 months  |MAL-ED         |INDIA        |11      |       1|      4|   236|
|6 months  |MAL-ED         |INDIA        |12      |       0|     14|   236|
|6 months  |MAL-ED         |INDIA        |12      |       1|      3|   236|
|6 months  |MAL-ED         |BANGLADESH   |1       |       0|     16|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |       1|      4|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |       0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |2       |       1|      4|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |       0|     19|   241|
|6 months  |MAL-ED         |BANGLADESH   |3       |       1|      7|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |       0|     13|   241|
|6 months  |MAL-ED         |BANGLADESH   |4       |       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |       0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |5       |       1|      5|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |       0|      5|   241|
|6 months  |MAL-ED         |BANGLADESH   |6       |       1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |       0|      9|   241|
|6 months  |MAL-ED         |BANGLADESH   |7       |       1|      4|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |       0|     21|   241|
|6 months  |MAL-ED         |BANGLADESH   |8       |       1|      5|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |       0|     20|   241|
|6 months  |MAL-ED         |BANGLADESH   |9       |       1|      5|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |       0|     24|   241|
|6 months  |MAL-ED         |BANGLADESH   |10      |       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |       0|     14|   241|
|6 months  |MAL-ED         |BANGLADESH   |11      |       1|      3|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |       0|     28|   241|
|6 months  |MAL-ED         |BANGLADESH   |12      |       1|      3|   241|
|6 months  |MAL-ED         |PERU         |1       |       0|     36|   273|
|6 months  |MAL-ED         |PERU         |1       |       1|      6|   273|
|6 months  |MAL-ED         |PERU         |2       |       0|     14|   273|
|6 months  |MAL-ED         |PERU         |2       |       1|      2|   273|
|6 months  |MAL-ED         |PERU         |3       |       0|     22|   273|
|6 months  |MAL-ED         |PERU         |3       |       1|      3|   273|
|6 months  |MAL-ED         |PERU         |4       |       0|     13|   273|
|6 months  |MAL-ED         |PERU         |4       |       1|      4|   273|
|6 months  |MAL-ED         |PERU         |5       |       0|     13|   273|
|6 months  |MAL-ED         |PERU         |5       |       1|      7|   273|
|6 months  |MAL-ED         |PERU         |6       |       0|     12|   273|
|6 months  |MAL-ED         |PERU         |6       |       1|      3|   273|
|6 months  |MAL-ED         |PERU         |7       |       0|     17|   273|
|6 months  |MAL-ED         |PERU         |7       |       1|      4|   273|
|6 months  |MAL-ED         |PERU         |8       |       0|     20|   273|
|6 months  |MAL-ED         |PERU         |8       |       1|      6|   273|
|6 months  |MAL-ED         |PERU         |9       |       0|     12|   273|
|6 months  |MAL-ED         |PERU         |9       |       1|      4|   273|
|6 months  |MAL-ED         |PERU         |10      |       0|     17|   273|
|6 months  |MAL-ED         |PERU         |10      |       1|      5|   273|
|6 months  |MAL-ED         |PERU         |11      |       0|     25|   273|
|6 months  |MAL-ED         |PERU         |11      |       1|      9|   273|
|6 months  |MAL-ED         |PERU         |12      |       0|     12|   273|
|6 months  |MAL-ED         |PERU         |12      |       1|      7|   273|
|6 months  |MAL-ED         |NEPAL        |1       |       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |1       |       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |2       |       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |2       |       1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |3       |       0|     15|   236|
|6 months  |MAL-ED         |NEPAL        |3       |       1|      3|   236|
|6 months  |MAL-ED         |NEPAL        |4       |       0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |4       |       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |5       |       0|     22|   236|
|6 months  |MAL-ED         |NEPAL        |5       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |6       |       0|     17|   236|
|6 months  |MAL-ED         |NEPAL        |6       |       1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |7       |       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |7       |       1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |8       |       0|     31|   236|
|6 months  |MAL-ED         |NEPAL        |8       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |9       |       0|     12|   236|
|6 months  |MAL-ED         |NEPAL        |9       |       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |10      |       0|     13|   236|
|6 months  |MAL-ED         |NEPAL        |10      |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |11      |       0|     21|   236|
|6 months  |MAL-ED         |NEPAL        |11      |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |12      |       0|     18|   236|
|6 months  |MAL-ED         |NEPAL        |12      |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |1       |       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |       0|     27|   209|
|6 months  |MAL-ED         |BRAZIL       |2       |       1|      2|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |       0|     17|   209|
|6 months  |MAL-ED         |BRAZIL       |3       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |       0|     11|   209|
|6 months  |MAL-ED         |BRAZIL       |4       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |       0|     15|   209|
|6 months  |MAL-ED         |BRAZIL       |5       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |       0|      8|   209|
|6 months  |MAL-ED         |BRAZIL       |6       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |       0|     16|   209|
|6 months  |MAL-ED         |BRAZIL       |7       |       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |       0|     26|   209|
|6 months  |MAL-ED         |BRAZIL       |8       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |       0|     33|   209|
|6 months  |MAL-ED         |BRAZIL       |9       |       1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |10      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |       0|     12|   209|
|6 months  |MAL-ED         |BRAZIL       |11      |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |       0|     14|   209|
|6 months  |MAL-ED         |BRAZIL       |12      |       1|      2|   209|
|6 months  |MAL-ED         |TANZANIA     |1       |       0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |       1|      6|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |       0|     21|   247|
|6 months  |MAL-ED         |TANZANIA     |2       |       1|      7|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |       0|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |3       |       1|      3|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |       0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |4       |       1|      5|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |       0|     19|   247|
|6 months  |MAL-ED         |TANZANIA     |5       |       1|      5|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |       0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |6       |       1|      6|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |       0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |7       |       1|      4|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |       0|      9|   247|
|6 months  |MAL-ED         |TANZANIA     |8       |       1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |       0|     13|   247|
|6 months  |MAL-ED         |TANZANIA     |9       |       1|      3|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |       0|     13|   247|
|6 months  |MAL-ED         |TANZANIA     |10      |       1|      5|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |       0|     20|   247|
|6 months  |MAL-ED         |TANZANIA     |11      |       1|      5|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |       0|     23|   247|
|6 months  |MAL-ED         |TANZANIA     |12      |       1|      9|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       0|     29|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       1|      5|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |       0|     20|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |2       |       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |       0|     14|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |3       |       1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |       0|     12|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |4       |       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |       0|     11|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |5       |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |       0|     11|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |6       |       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |       0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |7       |       1|      8|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |       0|      8|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |8       |       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |       0|     10|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |9       |       1|      7|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |       0|     18|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |10      |       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |       0|     17|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |11      |       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |       0|     37|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |12      |       1|      7|   254|
|6 months  |NIH-Birth      |BANGLADESH   |1       |       0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |       1|     25|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |       0|     38|   537|
|6 months  |NIH-Birth      |BANGLADESH   |2       |       1|      7|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |       0|     37|   537|
|6 months  |NIH-Birth      |BANGLADESH   |3       |       1|     18|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |       0|     37|   537|
|6 months  |NIH-Birth      |BANGLADESH   |4       |       1|      7|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |       0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |5       |       1|     14|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |       0|     27|   537|
|6 months  |NIH-Birth      |BANGLADESH   |6       |       1|     10|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |       0|     21|   537|
|6 months  |NIH-Birth      |BANGLADESH   |7       |       1|      9|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |       0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |8       |       1|      7|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |       0|     34|   537|
|6 months  |NIH-Birth      |BANGLADESH   |9       |       1|     13|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |       0|     25|   537|
|6 months  |NIH-Birth      |BANGLADESH   |10      |       1|      9|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |       0|     39|   537|
|6 months  |NIH-Birth      |BANGLADESH   |11      |       1|     10|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |       0|     29|   537|
|6 months  |NIH-Birth      |BANGLADESH   |12      |       1|     15|   537|
|6 months  |PROBIT         |BELARUS      |1       |       0|    861| 15760|
|6 months  |PROBIT         |BELARUS      |1       |       1|     49| 15760|
|6 months  |PROBIT         |BELARUS      |2       |       0|    908| 15760|
|6 months  |PROBIT         |BELARUS      |2       |       1|     34| 15760|
|6 months  |PROBIT         |BELARUS      |3       |       0|   1031| 15760|
|6 months  |PROBIT         |BELARUS      |3       |       1|     40| 15760|
|6 months  |PROBIT         |BELARUS      |4       |       0|   1050| 15760|
|6 months  |PROBIT         |BELARUS      |4       |       1|     51| 15760|
|6 months  |PROBIT         |BELARUS      |5       |       0|    998| 15760|
|6 months  |PROBIT         |BELARUS      |5       |       1|     31| 15760|
|6 months  |PROBIT         |BELARUS      |6       |       0|   1100| 15760|
|6 months  |PROBIT         |BELARUS      |6       |       1|     53| 15760|
|6 months  |PROBIT         |BELARUS      |7       |       0|   1421| 15760|
|6 months  |PROBIT         |BELARUS      |7       |       1|     54| 15760|
|6 months  |PROBIT         |BELARUS      |8       |       0|   1456| 15760|
|6 months  |PROBIT         |BELARUS      |8       |       1|     53| 15760|
|6 months  |PROBIT         |BELARUS      |9       |       0|   1484| 15760|
|6 months  |PROBIT         |BELARUS      |9       |       1|     66| 15760|
|6 months  |PROBIT         |BELARUS      |10      |       0|   1610| 15760|
|6 months  |PROBIT         |BELARUS      |10      |       1|     60| 15760|
|6 months  |PROBIT         |BELARUS      |11      |       0|   1531| 15760|
|6 months  |PROBIT         |BELARUS      |11      |       1|     63| 15760|
|6 months  |PROBIT         |BELARUS      |12      |       0|   1690| 15760|
|6 months  |PROBIT         |BELARUS      |12      |       1|     66| 15760|
|6 months  |PROVIDE        |BANGLADESH   |1       |       0|     40|   604|
|6 months  |PROVIDE        |BANGLADESH   |1       |       1|      5|   604|
|6 months  |PROVIDE        |BANGLADESH   |2       |       0|     28|   604|
|6 months  |PROVIDE        |BANGLADESH   |2       |       1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |3       |       0|     40|   604|
|6 months  |PROVIDE        |BANGLADESH   |3       |       1|      8|   604|
|6 months  |PROVIDE        |BANGLADESH   |4       |       0|     24|   604|
|6 months  |PROVIDE        |BANGLADESH   |4       |       1|      8|   604|
|6 months  |PROVIDE        |BANGLADESH   |5       |       0|     42|   604|
|6 months  |PROVIDE        |BANGLADESH   |5       |       1|     12|   604|
|6 months  |PROVIDE        |BANGLADESH   |6       |       0|     66|   604|
|6 months  |PROVIDE        |BANGLADESH   |6       |       1|     10|   604|
|6 months  |PROVIDE        |BANGLADESH   |7       |       0|     56|   604|
|6 months  |PROVIDE        |BANGLADESH   |7       |       1|     13|   604|
|6 months  |PROVIDE        |BANGLADESH   |8       |       0|     49|   604|
|6 months  |PROVIDE        |BANGLADESH   |8       |       1|      6|   604|
|6 months  |PROVIDE        |BANGLADESH   |9       |       0|     60|   604|
|6 months  |PROVIDE        |BANGLADESH   |9       |       1|     13|   604|
|6 months  |PROVIDE        |BANGLADESH   |10      |       0|     55|   604|
|6 months  |PROVIDE        |BANGLADESH   |10      |       1|     11|   604|
|6 months  |PROVIDE        |BANGLADESH   |11      |       0|     28|   604|
|6 months  |PROVIDE        |BANGLADESH   |11      |       1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH   |12      |       0|     20|   604|
|6 months  |PROVIDE        |BANGLADESH   |12      |       1|      3|   604|
|6 months  |ResPak         |PAKISTAN     |1       |       0|      5|   239|
|6 months  |ResPak         |PAKISTAN     |1       |       1|      3|   239|
|6 months  |ResPak         |PAKISTAN     |2       |       0|      9|   239|
|6 months  |ResPak         |PAKISTAN     |2       |       1|      4|   239|
|6 months  |ResPak         |PAKISTAN     |3       |       0|     18|   239|
|6 months  |ResPak         |PAKISTAN     |3       |       1|     10|   239|
|6 months  |ResPak         |PAKISTAN     |4       |       0|     19|   239|
|6 months  |ResPak         |PAKISTAN     |4       |       1|      9|   239|
|6 months  |ResPak         |PAKISTAN     |5       |       0|     21|   239|
|6 months  |ResPak         |PAKISTAN     |5       |       1|     14|   239|
|6 months  |ResPak         |PAKISTAN     |6       |       0|     28|   239|
|6 months  |ResPak         |PAKISTAN     |6       |       1|     13|   239|
|6 months  |ResPak         |PAKISTAN     |7       |       0|     15|   239|
|6 months  |ResPak         |PAKISTAN     |7       |       1|      8|   239|
|6 months  |ResPak         |PAKISTAN     |8       |       0|     22|   239|
|6 months  |ResPak         |PAKISTAN     |8       |       1|     15|   239|
|6 months  |ResPak         |PAKISTAN     |9       |       0|     10|   239|
|6 months  |ResPak         |PAKISTAN     |9       |       1|      7|   239|
|6 months  |ResPak         |PAKISTAN     |10      |       0|      3|   239|
|6 months  |ResPak         |PAKISTAN     |10      |       1|      3|   239|
|6 months  |ResPak         |PAKISTAN     |11      |       0|      2|   239|
|6 months  |ResPak         |PAKISTAN     |11      |       1|      0|   239|
|6 months  |ResPak         |PAKISTAN     |12      |       0|      1|   239|
|6 months  |ResPak         |PAKISTAN     |12      |       1|      0|   239|
|6 months  |SAS-CompFeed   |INDIA        |1       |       0|     66|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |       1|     28|  1334|
|6 months  |SAS-CompFeed   |INDIA        |2       |       0|     41|  1334|
|6 months  |SAS-CompFeed   |INDIA        |2       |       1|     22|  1334|
|6 months  |SAS-CompFeed   |INDIA        |3       |       0|     47|  1334|
|6 months  |SAS-CompFeed   |INDIA        |3       |       1|     16|  1334|
|6 months  |SAS-CompFeed   |INDIA        |4       |       0|     49|  1334|
|6 months  |SAS-CompFeed   |INDIA        |4       |       1|     10|  1334|
|6 months  |SAS-CompFeed   |INDIA        |5       |       0|     75|  1334|
|6 months  |SAS-CompFeed   |INDIA        |5       |       1|     32|  1334|
|6 months  |SAS-CompFeed   |INDIA        |6       |       0|     70|  1334|
|6 months  |SAS-CompFeed   |INDIA        |6       |       1|     36|  1334|
|6 months  |SAS-CompFeed   |INDIA        |7       |       0|     78|  1334|
|6 months  |SAS-CompFeed   |INDIA        |7       |       1|     29|  1334|
|6 months  |SAS-CompFeed   |INDIA        |8       |       0|    124|  1334|
|6 months  |SAS-CompFeed   |INDIA        |8       |       1|     53|  1334|
|6 months  |SAS-CompFeed   |INDIA        |9       |       0|    124|  1334|
|6 months  |SAS-CompFeed   |INDIA        |9       |       1|     42|  1334|
|6 months  |SAS-CompFeed   |INDIA        |10      |       0|    112|  1334|
|6 months  |SAS-CompFeed   |INDIA        |10      |       1|     49|  1334|
|6 months  |SAS-CompFeed   |INDIA        |11      |       0|     91|  1334|
|6 months  |SAS-CompFeed   |INDIA        |11      |       1|     34|  1334|
|6 months  |SAS-CompFeed   |INDIA        |12      |       0|     77|  1334|
|6 months  |SAS-CompFeed   |INDIA        |12      |       1|     29|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |       0|      4|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |       1|     11|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |       0|     25|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |2       |       1|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |       0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |3       |       1|      8|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |       0|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |4       |       1|      1|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |       0|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |5       |       1|      8|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |       0|     10|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |6       |       1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |       0|     19|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |7       |       1|     13|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |       0|     41|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |8       |       1|     25|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |       0|     33|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |9       |       1|     18|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |       0|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |10      |       1|     13|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |       0|     13|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |11      |       1|     18|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |       0|     22|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |12      |       1|     17|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |       0|    118|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |       1|      9|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |       0|    134|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |2       |       1|     21|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |       0|    115|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |3       |       1|     14|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |       0|    154|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |4       |       1|     17|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |       0|    138|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |5       |       1|     25|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |       0|    140|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |6       |       1|     15|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |       0|    183|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |7       |       1|     21|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |       0|    175|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |8       |       1|     16|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |       0|    161|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |9       |       1|     11|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |       0|    196|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |10      |       1|     16|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |       0|    156|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |11      |       1|     15|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |       0|    162|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |12      |       1|     17|  2029|
|6 months  |Vellore Crypto |INDIA        |1       |       0|     29|   407|
|6 months  |Vellore Crypto |INDIA        |1       |       1|     11|   407|
|6 months  |Vellore Crypto |INDIA        |2       |       0|     12|   407|
|6 months  |Vellore Crypto |INDIA        |2       |       1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |3       |       0|     21|   407|
|6 months  |Vellore Crypto |INDIA        |3       |       1|     14|   407|
|6 months  |Vellore Crypto |INDIA        |4       |       0|     11|   407|
|6 months  |Vellore Crypto |INDIA        |4       |       1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |5       |       0|     12|   407|
|6 months  |Vellore Crypto |INDIA        |5       |       1|     10|   407|
|6 months  |Vellore Crypto |INDIA        |6       |       0|     38|   407|
|6 months  |Vellore Crypto |INDIA        |6       |       1|      9|   407|
|6 months  |Vellore Crypto |INDIA        |7       |       0|     27|   407|
|6 months  |Vellore Crypto |INDIA        |7       |       1|      7|   407|
|6 months  |Vellore Crypto |INDIA        |8       |       0|     40|   407|
|6 months  |Vellore Crypto |INDIA        |8       |       1|     10|   407|
|6 months  |Vellore Crypto |INDIA        |9       |       0|     25|   407|
|6 months  |Vellore Crypto |INDIA        |9       |       1|      6|   407|
|6 months  |Vellore Crypto |INDIA        |10      |       0|     38|   407|
|6 months  |Vellore Crypto |INDIA        |10      |       1|      4|   407|
|6 months  |Vellore Crypto |INDIA        |11      |       0|     25|   407|
|6 months  |Vellore Crypto |INDIA        |11      |       1|     12|   407|
|6 months  |Vellore Crypto |INDIA        |12      |       0|     29|   407|
|6 months  |Vellore Crypto |INDIA        |12      |       1|      7|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |       0|    661|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |       1|    123|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |       0|    506|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |2       |       1|    115|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |       0|    625|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |3       |       1|    136|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |       0|    533|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |4       |       1|    101|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |       0|    526|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |5       |       1|    113|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |       0|    614|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |6       |       1|    118|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |       0|    624|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |7       |       1|    131|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |       0|    641|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |8       |       1|    126|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |       0|    650|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |9       |       1|    111|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |       0|    539|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |10      |       1|    106|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |       0|    674|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |11      |       1|    110|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |       0|    658|  8662|
|6 months  |ZVITAMBO       |ZIMBABWE     |12      |       1|    121|  8662|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       0|      6|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       1|     25|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |       0|      6|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |2       |       1|     10|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |       0|     15|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |3       |       1|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |       0|     13|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |4       |       1|     35|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |       0|      9|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |5       |       1|     30|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |       0|      7|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |6       |       1|     22|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |       0|     11|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |7       |       1|     31|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |       0|      6|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |8       |       1|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |       0|      5|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |9       |       1|     16|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |       0|      6|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |10      |       1|     17|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |       0|     14|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |11      |       1|     29|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |       0|      7|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |12      |       1|     19|   371|
|24 months |CMIN           |BANGLADESH   |1       |       0|      9|   241|
|24 months |CMIN           |BANGLADESH   |1       |       1|     13|   241|
|24 months |CMIN           |BANGLADESH   |2       |       0|      7|   241|
|24 months |CMIN           |BANGLADESH   |2       |       1|     17|   241|
|24 months |CMIN           |BANGLADESH   |3       |       0|     10|   241|
|24 months |CMIN           |BANGLADESH   |3       |       1|     15|   241|
|24 months |CMIN           |BANGLADESH   |4       |       0|      3|   241|
|24 months |CMIN           |BANGLADESH   |4       |       1|      8|   241|
|24 months |CMIN           |BANGLADESH   |5       |       0|      8|   241|
|24 months |CMIN           |BANGLADESH   |5       |       1|     10|   241|
|24 months |CMIN           |BANGLADESH   |6       |       0|      5|   241|
|24 months |CMIN           |BANGLADESH   |6       |       1|      6|   241|
|24 months |CMIN           |BANGLADESH   |7       |       0|      3|   241|
|24 months |CMIN           |BANGLADESH   |7       |       1|     10|   241|
|24 months |CMIN           |BANGLADESH   |8       |       0|     10|   241|
|24 months |CMIN           |BANGLADESH   |8       |       1|     15|   241|
|24 months |CMIN           |BANGLADESH   |9       |       0|      2|   241|
|24 months |CMIN           |BANGLADESH   |9       |       1|     15|   241|
|24 months |CMIN           |BANGLADESH   |10      |       0|      5|   241|
|24 months |CMIN           |BANGLADESH   |10      |       1|     22|   241|
|24 months |CMIN           |BANGLADESH   |11      |       0|      6|   241|
|24 months |CMIN           |BANGLADESH   |11      |       1|     15|   241|
|24 months |CMIN           |BANGLADESH   |12      |       0|      9|   241|
|24 months |CMIN           |BANGLADESH   |12      |       1|     18|   241|
|24 months |CONTENT        |PERU         |1       |       0|      8|   164|
|24 months |CONTENT        |PERU         |1       |       1|      0|   164|
|24 months |CONTENT        |PERU         |2       |       0|      9|   164|
|24 months |CONTENT        |PERU         |2       |       1|      1|   164|
|24 months |CONTENT        |PERU         |3       |       0|     17|   164|
|24 months |CONTENT        |PERU         |3       |       1|      2|   164|
|24 months |CONTENT        |PERU         |4       |       0|     13|   164|
|24 months |CONTENT        |PERU         |4       |       1|      3|   164|
|24 months |CONTENT        |PERU         |5       |       0|     11|   164|
|24 months |CONTENT        |PERU         |5       |       1|      0|   164|
|24 months |CONTENT        |PERU         |6       |       0|      4|   164|
|24 months |CONTENT        |PERU         |6       |       1|      1|   164|
|24 months |CONTENT        |PERU         |7       |       0|     31|   164|
|24 months |CONTENT        |PERU         |7       |       1|      1|   164|
|24 months |CONTENT        |PERU         |8       |       0|     14|   164|
|24 months |CONTENT        |PERU         |8       |       1|      1|   164|
|24 months |CONTENT        |PERU         |9       |       0|     16|   164|
|24 months |CONTENT        |PERU         |9       |       1|      3|   164|
|24 months |CONTENT        |PERU         |10      |       0|     10|   164|
|24 months |CONTENT        |PERU         |10      |       1|      0|   164|
|24 months |CONTENT        |PERU         |11      |       0|     10|   164|
|24 months |CONTENT        |PERU         |11      |       1|      0|   164|
|24 months |CONTENT        |PERU         |12      |       0|      8|   164|
|24 months |CONTENT        |PERU         |12      |       1|      1|   164|
|24 months |EE             |PAKISTAN     |1       |       0|      2|   167|
|24 months |EE             |PAKISTAN     |1       |       1|      9|   167|
|24 months |EE             |PAKISTAN     |2       |       0|      1|   167|
|24 months |EE             |PAKISTAN     |2       |       1|      3|   167|
|24 months |EE             |PAKISTAN     |3       |       0|      1|   167|
|24 months |EE             |PAKISTAN     |3       |       1|      1|   167|
|24 months |EE             |PAKISTAN     |4       |       0|      0|   167|
|24 months |EE             |PAKISTAN     |4       |       1|      0|   167|
|24 months |EE             |PAKISTAN     |5       |       0|      0|   167|
|24 months |EE             |PAKISTAN     |5       |       1|      0|   167|
|24 months |EE             |PAKISTAN     |6       |       0|      0|   167|
|24 months |EE             |PAKISTAN     |6       |       1|      0|   167|
|24 months |EE             |PAKISTAN     |7       |       0|      0|   167|
|24 months |EE             |PAKISTAN     |7       |       1|      0|   167|
|24 months |EE             |PAKISTAN     |8       |       0|      0|   167|
|24 months |EE             |PAKISTAN     |8       |       1|      0|   167|
|24 months |EE             |PAKISTAN     |9       |       0|      0|   167|
|24 months |EE             |PAKISTAN     |9       |       1|      0|   167|
|24 months |EE             |PAKISTAN     |10      |       0|      0|   167|
|24 months |EE             |PAKISTAN     |10      |       1|      2|   167|
|24 months |EE             |PAKISTAN     |11      |       0|     26|   167|
|24 months |EE             |PAKISTAN     |11      |       1|     55|   167|
|24 months |EE             |PAKISTAN     |12      |       0|     19|   167|
|24 months |EE             |PAKISTAN     |12      |       1|     48|   167|
|24 months |GMS-Nepal      |NEPAL        |1       |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |1       |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |2       |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |2       |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |3       |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |3       |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |4       |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |4       |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |5       |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |5       |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |6       |       0|     55|   488|
|24 months |GMS-Nepal      |NEPAL        |6       |       1|     57|   488|
|24 months |GMS-Nepal      |NEPAL        |7       |       0|    111|   488|
|24 months |GMS-Nepal      |NEPAL        |7       |       1|     85|   488|
|24 months |GMS-Nepal      |NEPAL        |8       |       0|    103|   488|
|24 months |GMS-Nepal      |NEPAL        |8       |       1|     77|   488|
|24 months |GMS-Nepal      |NEPAL        |9       |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |9       |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |10      |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |10      |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |11      |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |11      |       1|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |12      |       0|      0|   488|
|24 months |GMS-Nepal      |NEPAL        |12      |       1|      0|   488|
|24 months |JiVitA-3       |BANGLADESH   |1       |       0|    372|  8626|
|24 months |JiVitA-3       |BANGLADESH   |1       |       1|    414|  8626|
|24 months |JiVitA-3       |BANGLADESH   |2       |       0|    357|  8626|
|24 months |JiVitA-3       |BANGLADESH   |2       |       1|    346|  8626|
|24 months |JiVitA-3       |BANGLADESH   |3       |       0|    465|  8626|
|24 months |JiVitA-3       |BANGLADESH   |3       |       1|    403|  8626|
|24 months |JiVitA-3       |BANGLADESH   |4       |       0|    389|  8626|
|24 months |JiVitA-3       |BANGLADESH   |4       |       1|    317|  8626|
|24 months |JiVitA-3       |BANGLADESH   |5       |       0|    263|  8626|
|24 months |JiVitA-3       |BANGLADESH   |5       |       1|    278|  8626|
|24 months |JiVitA-3       |BANGLADESH   |6       |       0|    279|  8626|
|24 months |JiVitA-3       |BANGLADESH   |6       |       1|    232|  8626|
|24 months |JiVitA-3       |BANGLADESH   |7       |       0|    275|  8626|
|24 months |JiVitA-3       |BANGLADESH   |7       |       1|    279|  8626|
|24 months |JiVitA-3       |BANGLADESH   |8       |       0|    344|  8626|
|24 months |JiVitA-3       |BANGLADESH   |8       |       1|    307|  8626|
|24 months |JiVitA-3       |BANGLADESH   |9       |       0|    391|  8626|
|24 months |JiVitA-3       |BANGLADESH   |9       |       1|    408|  8626|
|24 months |JiVitA-3       |BANGLADESH   |10      |       0|    387|  8626|
|24 months |JiVitA-3       |BANGLADESH   |10      |       1|    359|  8626|
|24 months |JiVitA-3       |BANGLADESH   |11      |       0|    409|  8626|
|24 months |JiVitA-3       |BANGLADESH   |11      |       1|    423|  8626|
|24 months |JiVitA-3       |BANGLADESH   |12      |       0|    458|  8626|
|24 months |JiVitA-3       |BANGLADESH   |12      |       1|    471|  8626|
|24 months |JiVitA-4       |BANGLADESH   |1       |       0|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |1       |       1|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |2       |       0|    475|  4751|
|24 months |JiVitA-4       |BANGLADESH   |2       |       1|    329|  4751|
|24 months |JiVitA-4       |BANGLADESH   |3       |       0|    475|  4751|
|24 months |JiVitA-4       |BANGLADESH   |3       |       1|    373|  4751|
|24 months |JiVitA-4       |BANGLADESH   |4       |       0|    394|  4751|
|24 months |JiVitA-4       |BANGLADESH   |4       |       1|    278|  4751|
|24 months |JiVitA-4       |BANGLADESH   |5       |       0|    340|  4751|
|24 months |JiVitA-4       |BANGLADESH   |5       |       1|    204|  4751|
|24 months |JiVitA-4       |BANGLADESH   |6       |       0|    250|  4751|
|24 months |JiVitA-4       |BANGLADESH   |6       |       1|    150|  4751|
|24 months |JiVitA-4       |BANGLADESH   |7       |       0|    273|  4751|
|24 months |JiVitA-4       |BANGLADESH   |7       |       1|    189|  4751|
|24 months |JiVitA-4       |BANGLADESH   |8       |       0|    342|  4751|
|24 months |JiVitA-4       |BANGLADESH   |8       |       1|    206|  4751|
|24 months |JiVitA-4       |BANGLADESH   |9       |       0|    225|  4751|
|24 months |JiVitA-4       |BANGLADESH   |9       |       1|    125|  4751|
|24 months |JiVitA-4       |BANGLADESH   |10      |       0|     73|  4751|
|24 months |JiVitA-4       |BANGLADESH   |10      |       1|     50|  4751|
|24 months |JiVitA-4       |BANGLADESH   |11      |       0|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |11      |       1|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |12      |       0|      0|  4751|
|24 months |JiVitA-4       |BANGLADESH   |12      |       1|      0|  4751|
|24 months |Keneba         |GAMBIA       |1       |       0|    103|  1725|
|24 months |Keneba         |GAMBIA       |1       |       1|     70|  1725|
|24 months |Keneba         |GAMBIA       |2       |       0|    109|  1725|
|24 months |Keneba         |GAMBIA       |2       |       1|     52|  1725|
|24 months |Keneba         |GAMBIA       |3       |       0|    125|  1725|
|24 months |Keneba         |GAMBIA       |3       |       1|     62|  1725|
|24 months |Keneba         |GAMBIA       |4       |       0|     83|  1725|
|24 months |Keneba         |GAMBIA       |4       |       1|     31|  1725|
|24 months |Keneba         |GAMBIA       |5       |       0|     75|  1725|
|24 months |Keneba         |GAMBIA       |5       |       1|     34|  1725|
|24 months |Keneba         |GAMBIA       |6       |       0|     76|  1725|
|24 months |Keneba         |GAMBIA       |6       |       1|     37|  1725|
|24 months |Keneba         |GAMBIA       |7       |       0|     55|  1725|
|24 months |Keneba         |GAMBIA       |7       |       1|     28|  1725|
|24 months |Keneba         |GAMBIA       |8       |       0|     93|  1725|
|24 months |Keneba         |GAMBIA       |8       |       1|     59|  1725|
|24 months |Keneba         |GAMBIA       |9       |       0|     98|  1725|
|24 months |Keneba         |GAMBIA       |9       |       1|     50|  1725|
|24 months |Keneba         |GAMBIA       |10      |       0|    132|  1725|
|24 months |Keneba         |GAMBIA       |10      |       1|     69|  1725|
|24 months |Keneba         |GAMBIA       |11      |       0|     99|  1725|
|24 months |Keneba         |GAMBIA       |11      |       1|     44|  1725|
|24 months |Keneba         |GAMBIA       |12      |       0|     96|  1725|
|24 months |Keneba         |GAMBIA       |12      |       1|     45|  1725|
|24 months |LCNI-5         |MALAWI       |1       |       0|     17|   579|
|24 months |LCNI-5         |MALAWI       |1       |       1|     17|   579|
|24 months |LCNI-5         |MALAWI       |2       |       0|     18|   579|
|24 months |LCNI-5         |MALAWI       |2       |       1|     13|   579|
|24 months |LCNI-5         |MALAWI       |3       |       0|     11|   579|
|24 months |LCNI-5         |MALAWI       |3       |       1|      6|   579|
|24 months |LCNI-5         |MALAWI       |4       |       0|     18|   579|
|24 months |LCNI-5         |MALAWI       |4       |       1|     12|   579|
|24 months |LCNI-5         |MALAWI       |5       |       0|     24|   579|
|24 months |LCNI-5         |MALAWI       |5       |       1|     13|   579|
|24 months |LCNI-5         |MALAWI       |6       |       0|     16|   579|
|24 months |LCNI-5         |MALAWI       |6       |       1|     10|   579|
|24 months |LCNI-5         |MALAWI       |7       |       0|     26|   579|
|24 months |LCNI-5         |MALAWI       |7       |       1|     15|   579|
|24 months |LCNI-5         |MALAWI       |8       |       0|     30|   579|
|24 months |LCNI-5         |MALAWI       |8       |       1|     30|   579|
|24 months |LCNI-5         |MALAWI       |9       |       0|     42|   579|
|24 months |LCNI-5         |MALAWI       |9       |       1|     26|   579|
|24 months |LCNI-5         |MALAWI       |10      |       0|     56|   579|
|24 months |LCNI-5         |MALAWI       |10      |       1|     51|   579|
|24 months |LCNI-5         |MALAWI       |11      |       0|     42|   579|
|24 months |LCNI-5         |MALAWI       |11      |       1|     33|   579|
|24 months |LCNI-5         |MALAWI       |12      |       0|     21|   579|
|24 months |LCNI-5         |MALAWI       |12      |       1|     32|   579|
|24 months |MAL-ED         |INDIA        |1       |       0|     14|   227|
|24 months |MAL-ED         |INDIA        |1       |       1|      6|   227|
|24 months |MAL-ED         |INDIA        |2       |       0|     14|   227|
|24 months |MAL-ED         |INDIA        |2       |       1|      8|   227|
|24 months |MAL-ED         |INDIA        |3       |       0|     12|   227|
|24 months |MAL-ED         |INDIA        |3       |       1|     10|   227|
|24 months |MAL-ED         |INDIA        |4       |       0|      9|   227|
|24 months |MAL-ED         |INDIA        |4       |       1|      2|   227|
|24 months |MAL-ED         |INDIA        |5       |       0|      1|   227|
|24 months |MAL-ED         |INDIA        |5       |       1|      2|   227|
|24 months |MAL-ED         |INDIA        |6       |       0|     10|   227|
|24 months |MAL-ED         |INDIA        |6       |       1|      8|   227|
|24 months |MAL-ED         |INDIA        |7       |       0|      5|   227|
|24 months |MAL-ED         |INDIA        |7       |       1|      4|   227|
|24 months |MAL-ED         |INDIA        |8       |       0|     13|   227|
|24 months |MAL-ED         |INDIA        |8       |       1|     14|   227|
|24 months |MAL-ED         |INDIA        |9       |       0|      9|   227|
|24 months |MAL-ED         |INDIA        |9       |       1|     10|   227|
|24 months |MAL-ED         |INDIA        |10      |       0|     21|   227|
|24 months |MAL-ED         |INDIA        |10      |       1|     16|   227|
|24 months |MAL-ED         |INDIA        |11      |       0|     12|   227|
|24 months |MAL-ED         |INDIA        |11      |       1|     11|   227|
|24 months |MAL-ED         |INDIA        |12      |       0|     10|   227|
|24 months |MAL-ED         |INDIA        |12      |       1|      6|   227|
|24 months |MAL-ED         |BANGLADESH   |1       |       0|      8|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |       1|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |       0|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |2       |       1|      9|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |       0|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |3       |       1|     14|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |       0|      6|   212|
|24 months |MAL-ED         |BANGLADESH   |4       |       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |       0|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |5       |       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |       0|      2|   212|
|24 months |MAL-ED         |BANGLADESH   |6       |       1|      4|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |       0|      6|   212|
|24 months |MAL-ED         |BANGLADESH   |7       |       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |       0|     14|   212|
|24 months |MAL-ED         |BANGLADESH   |8       |       1|     10|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |       0|     11|   212|
|24 months |MAL-ED         |BANGLADESH   |9       |       1|     12|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |       0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |10      |       1|      7|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |       0|      8|   212|
|24 months |MAL-ED         |BANGLADESH   |11      |       1|      5|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |       0|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |12      |       1|      9|   212|
|24 months |MAL-ED         |PERU         |1       |       0|     17|   201|
|24 months |MAL-ED         |PERU         |1       |       1|     11|   201|
|24 months |MAL-ED         |PERU         |2       |       0|      9|   201|
|24 months |MAL-ED         |PERU         |2       |       1|      4|   201|
|24 months |MAL-ED         |PERU         |3       |       0|     10|   201|
|24 months |MAL-ED         |PERU         |3       |       1|      3|   201|
|24 months |MAL-ED         |PERU         |4       |       0|      9|   201|
|24 months |MAL-ED         |PERU         |4       |       1|      3|   201|
|24 months |MAL-ED         |PERU         |5       |       0|     12|   201|
|24 months |MAL-ED         |PERU         |5       |       1|      6|   201|
|24 months |MAL-ED         |PERU         |6       |       0|      8|   201|
|24 months |MAL-ED         |PERU         |6       |       1|      2|   201|
|24 months |MAL-ED         |PERU         |7       |       0|     11|   201|
|24 months |MAL-ED         |PERU         |7       |       1|      5|   201|
|24 months |MAL-ED         |PERU         |8       |       0|     14|   201|
|24 months |MAL-ED         |PERU         |8       |       1|      5|   201|
|24 months |MAL-ED         |PERU         |9       |       0|      4|   201|
|24 months |MAL-ED         |PERU         |9       |       1|      6|   201|
|24 months |MAL-ED         |PERU         |10      |       0|     13|   201|
|24 months |MAL-ED         |PERU         |10      |       1|      7|   201|
|24 months |MAL-ED         |PERU         |11      |       0|     15|   201|
|24 months |MAL-ED         |PERU         |11      |       1|     11|   201|
|24 months |MAL-ED         |PERU         |12      |       0|      5|   201|
|24 months |MAL-ED         |PERU         |12      |       1|     11|   201|
|24 months |MAL-ED         |NEPAL        |1       |       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |1       |       1|      5|   228|
|24 months |MAL-ED         |NEPAL        |2       |       0|     16|   228|
|24 months |MAL-ED         |NEPAL        |2       |       1|      3|   228|
|24 months |MAL-ED         |NEPAL        |3       |       0|     11|   228|
|24 months |MAL-ED         |NEPAL        |3       |       1|      6|   228|
|24 months |MAL-ED         |NEPAL        |4       |       0|     12|   228|
|24 months |MAL-ED         |NEPAL        |4       |       1|      5|   228|
|24 months |MAL-ED         |NEPAL        |5       |       0|     13|   228|
|24 months |MAL-ED         |NEPAL        |5       |       1|      7|   228|
|24 months |MAL-ED         |NEPAL        |6       |       0|     12|   228|
|24 months |MAL-ED         |NEPAL        |6       |       1|      7|   228|
|24 months |MAL-ED         |NEPAL        |7       |       0|     14|   228|
|24 months |MAL-ED         |NEPAL        |7       |       1|      6|   228|
|24 months |MAL-ED         |NEPAL        |8       |       0|     23|   228|
|24 months |MAL-ED         |NEPAL        |8       |       1|      6|   228|
|24 months |MAL-ED         |NEPAL        |9       |       0|     13|   228|
|24 months |MAL-ED         |NEPAL        |9       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |10      |       0|     12|   228|
|24 months |MAL-ED         |NEPAL        |10      |       1|      1|   228|
|24 months |MAL-ED         |NEPAL        |11      |       0|     18|   228|
|24 months |MAL-ED         |NEPAL        |11      |       1|      3|   228|
|24 months |MAL-ED         |NEPAL        |12      |       0|     17|   228|
|24 months |MAL-ED         |NEPAL        |12      |       1|      1|   228|
|24 months |MAL-ED         |BRAZIL       |1       |       0|     11|   169|
|24 months |MAL-ED         |BRAZIL       |1       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |2       |       0|     20|   169|
|24 months |MAL-ED         |BRAZIL       |2       |       1|      2|   169|
|24 months |MAL-ED         |BRAZIL       |3       |       0|     14|   169|
|24 months |MAL-ED         |BRAZIL       |3       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |4       |       0|     10|   169|
|24 months |MAL-ED         |BRAZIL       |4       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |5       |       0|     13|   169|
|24 months |MAL-ED         |BRAZIL       |5       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |6       |       0|      8|   169|
|24 months |MAL-ED         |BRAZIL       |6       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |7       |       0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |7       |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |8       |       0|     20|   169|
|24 months |MAL-ED         |BRAZIL       |8       |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |9       |       0|     27|   169|
|24 months |MAL-ED         |BRAZIL       |9       |       1|      2|   169|
|24 months |MAL-ED         |BRAZIL       |10      |       0|      9|   169|
|24 months |MAL-ED         |BRAZIL       |10      |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |11      |       0|      6|   169|
|24 months |MAL-ED         |BRAZIL       |11      |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |12      |       0|     12|   169|
|24 months |MAL-ED         |BRAZIL       |12      |       1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |1       |       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |1       |       1|     11|   214|
|24 months |MAL-ED         |TANZANIA     |2       |       0|      7|   214|
|24 months |MAL-ED         |TANZANIA     |2       |       1|     16|   214|
|24 months |MAL-ED         |TANZANIA     |3       |       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |3       |       1|     13|   214|
|24 months |MAL-ED         |TANZANIA     |4       |       0|      2|   214|
|24 months |MAL-ED         |TANZANIA     |4       |       1|     11|   214|
|24 months |MAL-ED         |TANZANIA     |5       |       0|      7|   214|
|24 months |MAL-ED         |TANZANIA     |5       |       1|     15|   214|
|24 months |MAL-ED         |TANZANIA     |6       |       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |6       |       1|     13|   214|
|24 months |MAL-ED         |TANZANIA     |7       |       0|      5|   214|
|24 months |MAL-ED         |TANZANIA     |7       |       1|     15|   214|
|24 months |MAL-ED         |TANZANIA     |8       |       0|      4|   214|
|24 months |MAL-ED         |TANZANIA     |8       |       1|      4|   214|
|24 months |MAL-ED         |TANZANIA     |9       |       0|      3|   214|
|24 months |MAL-ED         |TANZANIA     |9       |       1|     10|   214|
|24 months |MAL-ED         |TANZANIA     |10      |       0|      5|   214|
|24 months |MAL-ED         |TANZANIA     |10      |       1|     11|   214|
|24 months |MAL-ED         |TANZANIA     |11      |       0|      7|   214|
|24 months |MAL-ED         |TANZANIA     |11      |       1|     16|   214|
|24 months |MAL-ED         |TANZANIA     |12      |       0|      7|   214|
|24 months |MAL-ED         |TANZANIA     |12      |       1|     20|   214|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       0|     19|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       1|     11|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |       0|     12|   238|
|24 months |MAL-ED         |SOUTH AFRICA |2       |       1|     10|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |       0|     12|   238|
|24 months |MAL-ED         |SOUTH AFRICA |3       |       1|      5|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |       0|     10|   238|
|24 months |MAL-ED         |SOUTH AFRICA |4       |       1|      6|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |       0|      6|   238|
|24 months |MAL-ED         |SOUTH AFRICA |5       |       1|      3|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |       0|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |6       |       1|      4|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |       0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |7       |       1|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |       0|      8|   238|
|24 months |MAL-ED         |SOUTH AFRICA |8       |       1|      5|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |       0|     10|   238|
|24 months |MAL-ED         |SOUTH AFRICA |9       |       1|      7|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |       0|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |10      |       1|      9|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |       0|     14|   238|
|24 months |MAL-ED         |SOUTH AFRICA |11      |       1|      6|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |       0|     28|   238|
|24 months |MAL-ED         |SOUTH AFRICA |12      |       1|      9|   238|
|24 months |NIH-Birth      |BANGLADESH   |1       |       0|     21|   429|
|24 months |NIH-Birth      |BANGLADESH   |1       |       1|     29|   429|
|24 months |NIH-Birth      |BANGLADESH   |2       |       0|     15|   429|
|24 months |NIH-Birth      |BANGLADESH   |2       |       1|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |3       |       0|     22|   429|
|24 months |NIH-Birth      |BANGLADESH   |3       |       1|     26|   429|
|24 months |NIH-Birth      |BANGLADESH   |4       |       0|     10|   429|
|24 months |NIH-Birth      |BANGLADESH   |4       |       1|     22|   429|
|24 months |NIH-Birth      |BANGLADESH   |5       |       0|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |5       |       1|     25|   429|
|24 months |NIH-Birth      |BANGLADESH   |6       |       0|     14|   429|
|24 months |NIH-Birth      |BANGLADESH   |6       |       1|     16|   429|
|24 months |NIH-Birth      |BANGLADESH   |7       |       0|     10|   429|
|24 months |NIH-Birth      |BANGLADESH   |7       |       1|     15|   429|
|24 months |NIH-Birth      |BANGLADESH   |8       |       0|     14|   429|
|24 months |NIH-Birth      |BANGLADESH   |8       |       1|     21|   429|
|24 months |NIH-Birth      |BANGLADESH   |9       |       0|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |9       |       1|     17|   429|
|24 months |NIH-Birth      |BANGLADESH   |10      |       0|      9|   429|
|24 months |NIH-Birth      |BANGLADESH   |10      |       1|     17|   429|
|24 months |NIH-Birth      |BANGLADESH   |11      |       0|     20|   429|
|24 months |NIH-Birth      |BANGLADESH   |11      |       1|     18|   429|
|24 months |NIH-Birth      |BANGLADESH   |12      |       0|     14|   429|
|24 months |NIH-Birth      |BANGLADESH   |12      |       1|     20|   429|
|24 months |PROBIT         |BELARUS      |1       |       0|    222|  4035|
|24 months |PROBIT         |BELARUS      |1       |       1|     17|  4035|
|24 months |PROBIT         |BELARUS      |2       |       0|    236|  4035|
|24 months |PROBIT         |BELARUS      |2       |       1|     10|  4035|
|24 months |PROBIT         |BELARUS      |3       |       0|    267|  4035|
|24 months |PROBIT         |BELARUS      |3       |       1|     17|  4035|
|24 months |PROBIT         |BELARUS      |4       |       0|    299|  4035|
|24 months |PROBIT         |BELARUS      |4       |       1|     11|  4035|
|24 months |PROBIT         |BELARUS      |5       |       0|    229|  4035|
|24 months |PROBIT         |BELARUS      |5       |       1|     14|  4035|
|24 months |PROBIT         |BELARUS      |6       |       0|    261|  4035|
|24 months |PROBIT         |BELARUS      |6       |       1|     13|  4035|
|24 months |PROBIT         |BELARUS      |7       |       0|    322|  4035|
|24 months |PROBIT         |BELARUS      |7       |       1|     21|  4035|
|24 months |PROBIT         |BELARUS      |8       |       0|    381|  4035|
|24 months |PROBIT         |BELARUS      |8       |       1|     30|  4035|
|24 months |PROBIT         |BELARUS      |9       |       0|    391|  4035|
|24 months |PROBIT         |BELARUS      |9       |       1|     29|  4035|
|24 months |PROBIT         |BELARUS      |10      |       0|    358|  4035|
|24 months |PROBIT         |BELARUS      |10      |       1|     29|  4035|
|24 months |PROBIT         |BELARUS      |11      |       0|    363|  4035|
|24 months |PROBIT         |BELARUS      |11      |       1|     33|  4035|
|24 months |PROBIT         |BELARUS      |12      |       0|    431|  4035|
|24 months |PROBIT         |BELARUS      |12      |       1|     51|  4035|
|24 months |PROVIDE        |BANGLADESH   |1       |       0|     31|   578|
|24 months |PROVIDE        |BANGLADESH   |1       |       1|     13|   578|
|24 months |PROVIDE        |BANGLADESH   |2       |       0|     19|   578|
|24 months |PROVIDE        |BANGLADESH   |2       |       1|      9|   578|
|24 months |PROVIDE        |BANGLADESH   |3       |       0|     26|   578|
|24 months |PROVIDE        |BANGLADESH   |3       |       1|     19|   578|
|24 months |PROVIDE        |BANGLADESH   |4       |       0|     21|   578|
|24 months |PROVIDE        |BANGLADESH   |4       |       1|     10|   578|
|24 months |PROVIDE        |BANGLADESH   |5       |       0|     33|   578|
|24 months |PROVIDE        |BANGLADESH   |5       |       1|     18|   578|
|24 months |PROVIDE        |BANGLADESH   |6       |       0|     48|   578|
|24 months |PROVIDE        |BANGLADESH   |6       |       1|     29|   578|
|24 months |PROVIDE        |BANGLADESH   |7       |       0|     46|   578|
|24 months |PROVIDE        |BANGLADESH   |7       |       1|     23|   578|
|24 months |PROVIDE        |BANGLADESH   |8       |       0|     37|   578|
|24 months |PROVIDE        |BANGLADESH   |8       |       1|     13|   578|
|24 months |PROVIDE        |BANGLADESH   |9       |       0|     49|   578|
|24 months |PROVIDE        |BANGLADESH   |9       |       1|     20|   578|
|24 months |PROVIDE        |BANGLADESH   |10      |       0|     41|   578|
|24 months |PROVIDE        |BANGLADESH   |10      |       1|     18|   578|
|24 months |PROVIDE        |BANGLADESH   |11      |       0|     23|   578|
|24 months |PROVIDE        |BANGLADESH   |11      |       1|      8|   578|
|24 months |PROVIDE        |BANGLADESH   |12      |       0|     14|   578|
|24 months |PROVIDE        |BANGLADESH   |12      |       1|     10|   578|
|24 months |TanzaniaChild2 |TANZANIA     |1       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |2       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |3       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |4       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |5       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |6       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |7       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |8       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |9       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |10      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |11      |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |12      |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |1       |       0|     22|   409|
|24 months |Vellore Crypto |INDIA        |1       |       1|     19|   409|
|24 months |Vellore Crypto |INDIA        |2       |       0|      6|   409|
|24 months |Vellore Crypto |INDIA        |2       |       1|     11|   409|
|24 months |Vellore Crypto |INDIA        |3       |       0|     13|   409|
|24 months |Vellore Crypto |INDIA        |3       |       1|     22|   409|
|24 months |Vellore Crypto |INDIA        |4       |       0|      6|   409|
|24 months |Vellore Crypto |INDIA        |4       |       1|     10|   409|
|24 months |Vellore Crypto |INDIA        |5       |       0|      9|   409|
|24 months |Vellore Crypto |INDIA        |5       |       1|     13|   409|
|24 months |Vellore Crypto |INDIA        |6       |       0|     30|   409|
|24 months |Vellore Crypto |INDIA        |6       |       1|     17|   409|
|24 months |Vellore Crypto |INDIA        |7       |       0|     20|   409|
|24 months |Vellore Crypto |INDIA        |7       |       1|     14|   409|
|24 months |Vellore Crypto |INDIA        |8       |       0|     34|   409|
|24 months |Vellore Crypto |INDIA        |8       |       1|     16|   409|
|24 months |Vellore Crypto |INDIA        |9       |       0|     15|   409|
|24 months |Vellore Crypto |INDIA        |9       |       1|     16|   409|
|24 months |Vellore Crypto |INDIA        |10      |       0|     34|   409|
|24 months |Vellore Crypto |INDIA        |10      |       1|      8|   409|
|24 months |Vellore Crypto |INDIA        |11      |       0|     24|   409|
|24 months |Vellore Crypto |INDIA        |11      |       1|     13|   409|
|24 months |Vellore Crypto |INDIA        |12      |       0|     24|   409|
|24 months |Vellore Crypto |INDIA        |12      |       1|     13|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |       0|    112|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |       1|     47|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |       0|    119|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |2       |       1|     54|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |       0|    119|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |3       |       1|     70|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |       0|     88|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |4       |       1|     35|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |       0|     79|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |5       |       1|     53|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |       0|    103|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |6       |       1|     53|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |       0|     78|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |7       |       1|     39|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |       0|     63|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |8       |       1|     39|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |       0|     60|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |9       |       1|     33|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |       0|     44|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |10      |       1|     33|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |       0|     87|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |11      |       1|     50|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |       0|    117|  1637|
|24 months |ZVITAMBO       |ZIMBABWE     |12      |       1|     62|  1637|


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
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


