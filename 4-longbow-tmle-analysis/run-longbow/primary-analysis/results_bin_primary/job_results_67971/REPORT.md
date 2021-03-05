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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country                      |brthmon | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |             0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |             1|     20|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2       |             0|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2       |             1|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3       |             0|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3       |             1|     20|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4       |             0|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4       |             1|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |5       |             0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |5       |             1|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |6       |             0|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |6       |             1|     22|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |7       |             0|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |7       |             1|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |8       |             0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |8       |             1|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |9       |             0|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |9       |             1|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |10      |             0|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |10      |             1|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |11      |             0|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |11      |             1|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |12      |             0|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |12      |             1|     21|   373|
|0-24 months |CMIN           |BANGLADESH                   |1       |             0|     14|   277|
|0-24 months |CMIN           |BANGLADESH                   |1       |             1|     16|   277|
|0-24 months |CMIN           |BANGLADESH                   |2       |             0|     19|   277|
|0-24 months |CMIN           |BANGLADESH                   |2       |             1|      8|   277|
|0-24 months |CMIN           |BANGLADESH                   |3       |             0|     12|   277|
|0-24 months |CMIN           |BANGLADESH                   |3       |             1|      8|   277|
|0-24 months |CMIN           |BANGLADESH                   |4       |             0|     12|   277|
|0-24 months |CMIN           |BANGLADESH                   |4       |             1|     11|   277|
|0-24 months |CMIN           |BANGLADESH                   |5       |             0|     12|   277|
|0-24 months |CMIN           |BANGLADESH                   |5       |             1|      8|   277|
|0-24 months |CMIN           |BANGLADESH                   |6       |             0|      2|   277|
|0-24 months |CMIN           |BANGLADESH                   |6       |             1|      7|   277|
|0-24 months |CMIN           |BANGLADESH                   |7       |             0|     12|   277|
|0-24 months |CMIN           |BANGLADESH                   |7       |             1|      5|   277|
|0-24 months |CMIN           |BANGLADESH                   |8       |             0|      7|   277|
|0-24 months |CMIN           |BANGLADESH                   |8       |             1|     17|   277|
|0-24 months |CMIN           |BANGLADESH                   |9       |             0|     17|   277|
|0-24 months |CMIN           |BANGLADESH                   |9       |             1|      5|   277|
|0-24 months |CMIN           |BANGLADESH                   |10      |             0|     10|   277|
|0-24 months |CMIN           |BANGLADESH                   |10      |             1|     17|   277|
|0-24 months |CMIN           |BANGLADESH                   |11      |             0|     12|   277|
|0-24 months |CMIN           |BANGLADESH                   |11      |             1|     18|   277|
|0-24 months |CMIN           |BANGLADESH                   |12      |             0|     10|   277|
|0-24 months |CMIN           |BANGLADESH                   |12      |             1|     18|   277|
|0-24 months |CONTENT        |PERU                         |1       |             0|     10|   215|
|0-24 months |CONTENT        |PERU                         |1       |             1|      0|   215|
|0-24 months |CONTENT        |PERU                         |2       |             0|     17|   215|
|0-24 months |CONTENT        |PERU                         |2       |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |3       |             0|     28|   215|
|0-24 months |CONTENT        |PERU                         |3       |             1|      2|   215|
|0-24 months |CONTENT        |PERU                         |4       |             0|     18|   215|
|0-24 months |CONTENT        |PERU                         |4       |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |5       |             0|     13|   215|
|0-24 months |CONTENT        |PERU                         |5       |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |6       |             0|     13|   215|
|0-24 months |CONTENT        |PERU                         |6       |             1|      0|   215|
|0-24 months |CONTENT        |PERU                         |7       |             0|     27|   215|
|0-24 months |CONTENT        |PERU                         |7       |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |8       |             0|     21|   215|
|0-24 months |CONTENT        |PERU                         |8       |             1|      2|   215|
|0-24 months |CONTENT        |PERU                         |9       |             0|     26|   215|
|0-24 months |CONTENT        |PERU                         |9       |             1|      0|   215|
|0-24 months |CONTENT        |PERU                         |10      |             0|     13|   215|
|0-24 months |CONTENT        |PERU                         |10      |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |11      |             0|      8|   215|
|0-24 months |CONTENT        |PERU                         |11      |             1|      1|   215|
|0-24 months |CONTENT        |PERU                         |12      |             0|     11|   215|
|0-24 months |CONTENT        |PERU                         |12      |             1|      0|   215|
|0-24 months |EE             |PAKISTAN                     |1       |             0|     37|   379|
|0-24 months |EE             |PAKISTAN                     |1       |             1|     58|   379|
|0-24 months |EE             |PAKISTAN                     |2       |             0|     32|   379|
|0-24 months |EE             |PAKISTAN                     |2       |             1|     35|   379|
|0-24 months |EE             |PAKISTAN                     |3       |             0|     22|   379|
|0-24 months |EE             |PAKISTAN                     |3       |             1|     20|   379|
|0-24 months |EE             |PAKISTAN                     |4       |             0|      3|   379|
|0-24 months |EE             |PAKISTAN                     |4       |             1|     13|   379|
|0-24 months |EE             |PAKISTAN                     |5       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN                     |5       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN                     |6       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN                     |6       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN                     |7       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN                     |7       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN                     |8       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN                     |8       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN                     |9       |             0|      0|   379|
|0-24 months |EE             |PAKISTAN                     |9       |             1|      0|   379|
|0-24 months |EE             |PAKISTAN                     |10      |             0|      2|   379|
|0-24 months |EE             |PAKISTAN                     |10      |             1|      2|   379|
|0-24 months |EE             |PAKISTAN                     |11      |             0|     27|   379|
|0-24 months |EE             |PAKISTAN                     |11      |             1|     44|   379|
|0-24 months |EE             |PAKISTAN                     |12      |             0|     28|   379|
|0-24 months |EE             |PAKISTAN                     |12      |             1|     56|   379|
|0-24 months |GMS-Nepal      |NEPAL                        |1       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |4       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |4       |             1|      1|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |5       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |5       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |6       |             0|    130|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |6       |             1|     42|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |7       |             0|    200|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |7       |             1|     69|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |8       |             0|    199|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |8       |             1|     57|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |9       |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |9       |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |10      |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |10      |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |11      |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |11      |             1|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |12      |             0|      0|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |12      |             1|      0|   698|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1       |             0|     20|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1       |             1|      9|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |2       |             0|     21|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |2       |             1|      5|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |3       |             0|     21|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |3       |             1|      6|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |4       |             0|     25|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |4       |             1|      6|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |5       |             0|     27|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |5       |             1|      8|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |6       |             0|     22|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |6       |             1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |7       |             0|     18|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |7       |             1|      4|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |8       |             0|     12|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |8       |             1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |9       |             0|     14|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |9       |             1|      2|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |10      |             0|     29|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |10      |             1|      3|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |11      |             0|     20|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |11      |             1|      4|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |12      |             0|     30|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |12      |             1|      3|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1       |             0|    286|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1       |             1|     37|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2       |             0|    167|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2       |             1|     14|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3       |             0|    179|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3       |             1|     18|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4       |             0|    186|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4       |             1|     23|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5       |             0|    196|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5       |             1|     22|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6       |             0|    169|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6       |             1|     23|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7       |             0|    165|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7       |             1|     31|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8       |             0|    270|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8       |             1|     33|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9       |             0|    365|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9       |             1|     46|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10      |             0|    332|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10      |             1|     40|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11      |             0|    305|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11      |             1|     37|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12      |             0|    288|  3265|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12      |             1|     33|  3265|
|0-24 months |IRC            |INDIA                        |1       |             0|     28|   410|
|0-24 months |IRC            |INDIA                        |1       |             1|     10|   410|
|0-24 months |IRC            |INDIA                        |2       |             0|     17|   410|
|0-24 months |IRC            |INDIA                        |2       |             1|     11|   410|
|0-24 months |IRC            |INDIA                        |3       |             0|     18|   410|
|0-24 months |IRC            |INDIA                        |3       |             1|      9|   410|
|0-24 months |IRC            |INDIA                        |4       |             0|     16|   410|
|0-24 months |IRC            |INDIA                        |4       |             1|      5|   410|
|0-24 months |IRC            |INDIA                        |5       |             0|     11|   410|
|0-24 months |IRC            |INDIA                        |5       |             1|     11|   410|
|0-24 months |IRC            |INDIA                        |6       |             0|     30|   410|
|0-24 months |IRC            |INDIA                        |6       |             1|      7|   410|
|0-24 months |IRC            |INDIA                        |7       |             0|     30|   410|
|0-24 months |IRC            |INDIA                        |7       |             1|      6|   410|
|0-24 months |IRC            |INDIA                        |8       |             0|     39|   410|
|0-24 months |IRC            |INDIA                        |8       |             1|      5|   410|
|0-24 months |IRC            |INDIA                        |9       |             0|     20|   410|
|0-24 months |IRC            |INDIA                        |9       |             1|      7|   410|
|0-24 months |IRC            |INDIA                        |10      |             0|     32|   410|
|0-24 months |IRC            |INDIA                        |10      |             1|      6|   410|
|0-24 months |IRC            |INDIA                        |11      |             0|     33|   410|
|0-24 months |IRC            |INDIA                        |11      |             1|      7|   410|
|0-24 months |IRC            |INDIA                        |12      |             0|     34|   410|
|0-24 months |IRC            |INDIA                        |12      |             1|     18|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |             0|   2014| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |             1|    524| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |2       |             0|   1692| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |2       |             1|    377| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |3       |             0|   2086| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |3       |             1|    347| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |4       |             0|   1540| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |4       |             1|    236| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |5       |             0|   1095| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |5       |             1|    230| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |6       |             0|   1175| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |6       |             1|    226| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |7       |             0|   1317| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |7       |             1|    258| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |8       |             0|   1763| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |8       |             1|    391| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |9       |             0|   2317| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |9       |             1|    482| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |10      |             0|   2366| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |10      |             1|    601| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |11      |             0|   2370| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |11      |             1|    680| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |12      |             0|   2470| 27227|
|0-24 months |JiVitA-3       |BANGLADESH                   |12      |             1|    670| 27227|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |             0|      0|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |             1|      0|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |2       |             0|    735|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |2       |             1|    181|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |3       |             0|    812|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |3       |             1|    212|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |4       |             0|    597|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |4       |             1|    176|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |5       |             0|    494|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |5       |             1|    147|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |6       |             0|    370|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |6       |             1|     90|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |7       |             0|    421|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |7       |             1|    116|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |8       |             0|    457|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |8       |             1|     98|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |9       |             0|    335|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |9       |             1|     68|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |10      |             0|    115|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |10      |             1|     18|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |11      |             0|      0|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |11      |             1|      0|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |12      |             0|      0|  5442|
|0-24 months |JiVitA-4       |BANGLADESH                   |12      |             1|      0|  5442|
|0-24 months |Keneba         |GAMBIA                       |1       |             0|    233|  2915|
|0-24 months |Keneba         |GAMBIA                       |1       |             1|     62|  2915|
|0-24 months |Keneba         |GAMBIA                       |2       |             0|    205|  2915|
|0-24 months |Keneba         |GAMBIA                       |2       |             1|     51|  2915|
|0-24 months |Keneba         |GAMBIA                       |3       |             0|    239|  2915|
|0-24 months |Keneba         |GAMBIA                       |3       |             1|     67|  2915|
|0-24 months |Keneba         |GAMBIA                       |4       |             0|    157|  2915|
|0-24 months |Keneba         |GAMBIA                       |4       |             1|     40|  2915|
|0-24 months |Keneba         |GAMBIA                       |5       |             0|    158|  2915|
|0-24 months |Keneba         |GAMBIA                       |5       |             1|     46|  2915|
|0-24 months |Keneba         |GAMBIA                       |6       |             0|    122|  2915|
|0-24 months |Keneba         |GAMBIA                       |6       |             1|     41|  2915|
|0-24 months |Keneba         |GAMBIA                       |7       |             0|    105|  2915|
|0-24 months |Keneba         |GAMBIA                       |7       |             1|     36|  2915|
|0-24 months |Keneba         |GAMBIA                       |8       |             0|    191|  2915|
|0-24 months |Keneba         |GAMBIA                       |8       |             1|     45|  2915|
|0-24 months |Keneba         |GAMBIA                       |9       |             0|    199|  2915|
|0-24 months |Keneba         |GAMBIA                       |9       |             1|     54|  2915|
|0-24 months |Keneba         |GAMBIA                       |10      |             0|    277|  2915|
|0-24 months |Keneba         |GAMBIA                       |10      |             1|     73|  2915|
|0-24 months |Keneba         |GAMBIA                       |11      |             0|    207|  2915|
|0-24 months |Keneba         |GAMBIA                       |11      |             1|     47|  2915|
|0-24 months |Keneba         |GAMBIA                       |12      |             0|    203|  2915|
|0-24 months |Keneba         |GAMBIA                       |12      |             1|     57|  2915|
|0-24 months |LCNI-5         |MALAWI                       |1       |             0|     51|   840|
|0-24 months |LCNI-5         |MALAWI                       |1       |             1|     17|   840|
|0-24 months |LCNI-5         |MALAWI                       |2       |             0|     43|   840|
|0-24 months |LCNI-5         |MALAWI                       |2       |             1|      3|   840|
|0-24 months |LCNI-5         |MALAWI                       |3       |             0|     21|   840|
|0-24 months |LCNI-5         |MALAWI                       |3       |             1|      5|   840|
|0-24 months |LCNI-5         |MALAWI                       |4       |             0|     34|   840|
|0-24 months |LCNI-5         |MALAWI                       |4       |             1|      5|   840|
|0-24 months |LCNI-5         |MALAWI                       |5       |             0|     33|   840|
|0-24 months |LCNI-5         |MALAWI                       |5       |             1|     11|   840|
|0-24 months |LCNI-5         |MALAWI                       |6       |             0|     20|   840|
|0-24 months |LCNI-5         |MALAWI                       |6       |             1|     14|   840|
|0-24 months |LCNI-5         |MALAWI                       |7       |             0|     51|   840|
|0-24 months |LCNI-5         |MALAWI                       |7       |             1|     11|   840|
|0-24 months |LCNI-5         |MALAWI                       |8       |             0|     79|   840|
|0-24 months |LCNI-5         |MALAWI                       |8       |             1|     14|   840|
|0-24 months |LCNI-5         |MALAWI                       |9       |             0|     74|   840|
|0-24 months |LCNI-5         |MALAWI                       |9       |             1|     19|   840|
|0-24 months |LCNI-5         |MALAWI                       |10      |             0|     96|   840|
|0-24 months |LCNI-5         |MALAWI                       |10      |             1|     39|   840|
|0-24 months |LCNI-5         |MALAWI                       |11      |             0|     85|   840|
|0-24 months |LCNI-5         |MALAWI                       |11      |             1|     20|   840|
|0-24 months |LCNI-5         |MALAWI                       |12      |             0|     76|   840|
|0-24 months |LCNI-5         |MALAWI                       |12      |             1|     19|   840|
|0-24 months |MAL-ED         |BANGLADESH                   |1       |             0|     17|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |1       |             1|      4|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |2       |             0|     18|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |2       |             1|      7|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |3       |             0|     19|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |3       |             1|      6|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |4       |             0|     19|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |4       |             1|      3|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |5       |             0|     15|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |5       |             1|      7|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |6       |             0|     10|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |6       |             1|      1|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |7       |             0|     15|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |7       |             1|      5|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |8       |             0|     17|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |8       |             1|      9|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |9       |             0|     18|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |9       |             1|      5|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |10      |             0|     18|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |10      |             1|      7|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |11      |             0|     16|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |11      |             1|      1|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |12      |             0|     25|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |12      |             1|      3|   265|
|0-24 months |MAL-ED         |BRAZIL                       |1       |             0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1       |             1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL                       |2       |             0|     23|   233|
|0-24 months |MAL-ED         |BRAZIL                       |2       |             1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL                       |3       |             0|     19|   233|
|0-24 months |MAL-ED         |BRAZIL                       |3       |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |4       |             0|     11|   233|
|0-24 months |MAL-ED         |BRAZIL                       |4       |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |5       |             0|     19|   233|
|0-24 months |MAL-ED         |BRAZIL                       |5       |             1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL                       |6       |             0|      7|   233|
|0-24 months |MAL-ED         |BRAZIL                       |6       |             1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL                       |7       |             0|     16|   233|
|0-24 months |MAL-ED         |BRAZIL                       |7       |             1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL                       |8       |             0|     21|   233|
|0-24 months |MAL-ED         |BRAZIL                       |8       |             1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |9       |             0|     28|   233|
|0-24 months |MAL-ED         |BRAZIL                       |9       |             1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL                       |10      |             0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL                       |10      |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |11      |             0|     21|   233|
|0-24 months |MAL-ED         |BRAZIL                       |11      |             1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |12      |             0|     13|   233|
|0-24 months |MAL-ED         |BRAZIL                       |12      |             1|      2|   233|
|0-24 months |MAL-ED         |INDIA                        |1       |             0|     15|   251|
|0-24 months |MAL-ED         |INDIA                        |1       |             1|      5|   251|
|0-24 months |MAL-ED         |INDIA                        |2       |             0|     19|   251|
|0-24 months |MAL-ED         |INDIA                        |2       |             1|      2|   251|
|0-24 months |MAL-ED         |INDIA                        |3       |             0|     20|   251|
|0-24 months |MAL-ED         |INDIA                        |3       |             1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |4       |             0|     12|   251|
|0-24 months |MAL-ED         |INDIA                        |4       |             1|      5|   251|
|0-24 months |MAL-ED         |INDIA                        |5       |             0|      5|   251|
|0-24 months |MAL-ED         |INDIA                        |5       |             1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |6       |             0|     17|   251|
|0-24 months |MAL-ED         |INDIA                        |6       |             1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |7       |             0|     15|   251|
|0-24 months |MAL-ED         |INDIA                        |7       |             1|     10|   251|
|0-24 months |MAL-ED         |INDIA                        |8       |             0|     18|   251|
|0-24 months |MAL-ED         |INDIA                        |8       |             1|      6|   251|
|0-24 months |MAL-ED         |INDIA                        |9       |             0|     18|   251|
|0-24 months |MAL-ED         |INDIA                        |9       |             1|      5|   251|
|0-24 months |MAL-ED         |INDIA                        |10      |             0|     19|   251|
|0-24 months |MAL-ED         |INDIA                        |10      |             1|      7|   251|
|0-24 months |MAL-ED         |INDIA                        |11      |             0|     18|   251|
|0-24 months |MAL-ED         |INDIA                        |11      |             1|      7|   251|
|0-24 months |MAL-ED         |INDIA                        |12      |             0|     16|   251|
|0-24 months |MAL-ED         |INDIA                        |12      |             1|      3|   251|
|0-24 months |MAL-ED         |NEPAL                        |1       |             0|     17|   240|
|0-24 months |MAL-ED         |NEPAL                        |1       |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |2       |             0|     16|   240|
|0-24 months |MAL-ED         |NEPAL                        |2       |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |3       |             0|     14|   240|
|0-24 months |MAL-ED         |NEPAL                        |3       |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |4       |             0|     20|   240|
|0-24 months |MAL-ED         |NEPAL                        |4       |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |5       |             0|     19|   240|
|0-24 months |MAL-ED         |NEPAL                        |5       |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |6       |             0|     18|   240|
|0-24 months |MAL-ED         |NEPAL                        |6       |             1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |7       |             0|     19|   240|
|0-24 months |MAL-ED         |NEPAL                        |7       |             1|      1|   240|
|0-24 months |MAL-ED         |NEPAL                        |8       |             0|     23|   240|
|0-24 months |MAL-ED         |NEPAL                        |8       |             1|      1|   240|
|0-24 months |MAL-ED         |NEPAL                        |9       |             0|     15|   240|
|0-24 months |MAL-ED         |NEPAL                        |9       |             1|      1|   240|
|0-24 months |MAL-ED         |NEPAL                        |10      |             0|     21|   240|
|0-24 months |MAL-ED         |NEPAL                        |10      |             1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |11      |             0|     21|   240|
|0-24 months |MAL-ED         |NEPAL                        |11      |             1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |12      |             0|     16|   240|
|0-24 months |MAL-ED         |NEPAL                        |12      |             1|      1|   240|
|0-24 months |MAL-ED         |PERU                         |1       |             0|     29|   303|
|0-24 months |MAL-ED         |PERU                         |1       |             1|     13|   303|
|0-24 months |MAL-ED         |PERU                         |2       |             0|     18|   303|
|0-24 months |MAL-ED         |PERU                         |2       |             1|      5|   303|
|0-24 months |MAL-ED         |PERU                         |3       |             0|     19|   303|
|0-24 months |MAL-ED         |PERU                         |3       |             1|      4|   303|
|0-24 months |MAL-ED         |PERU                         |4       |             0|     18|   303|
|0-24 months |MAL-ED         |PERU                         |4       |             1|      3|   303|
|0-24 months |MAL-ED         |PERU                         |5       |             0|     20|   303|
|0-24 months |MAL-ED         |PERU                         |5       |             1|      8|   303|
|0-24 months |MAL-ED         |PERU                         |6       |             0|     13|   303|
|0-24 months |MAL-ED         |PERU                         |6       |             1|      4|   303|
|0-24 months |MAL-ED         |PERU                         |7       |             0|     17|   303|
|0-24 months |MAL-ED         |PERU                         |7       |             1|      7|   303|
|0-24 months |MAL-ED         |PERU                         |8       |             0|     16|   303|
|0-24 months |MAL-ED         |PERU                         |8       |             1|      3|   303|
|0-24 months |MAL-ED         |PERU                         |9       |             0|     22|   303|
|0-24 months |MAL-ED         |PERU                         |9       |             1|      1|   303|
|0-24 months |MAL-ED         |PERU                         |10      |             0|     22|   303|
|0-24 months |MAL-ED         |PERU                         |10      |             1|      5|   303|
|0-24 months |MAL-ED         |PERU                         |11      |             0|     25|   303|
|0-24 months |MAL-ED         |PERU                         |11      |             1|      8|   303|
|0-24 months |MAL-ED         |PERU                         |12      |             0|     20|   303|
|0-24 months |MAL-ED         |PERU                         |12      |             1|      3|   303|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1       |             0|     27|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1       |             1|     15|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2       |             0|     24|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2       |             1|      6|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3       |             0|     15|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3       |             1|      3|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4       |             0|     14|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4       |             1|      1|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |5       |             0|     13|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |5       |             1|      3|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |6       |             0|     18|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |6       |             1|      5|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |7       |             0|     19|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |7       |             1|      7|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |8       |             0|     10|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |8       |             1|      2|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |9       |             0|     24|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |9       |             1|      1|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |10      |             0|     23|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |10      |             1|      8|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |11      |             0|     21|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |11      |             1|     10|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |12      |             0|     33|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |12      |             1|     12|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |             0|     11|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |             1|      9|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2       |             0|     11|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2       |             1|     20|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3       |             0|      8|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3       |             1|     11|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4       |             0|      5|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4       |             1|      5|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |5       |             0|     13|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |5       |             1|      7|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |6       |             0|     11|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |6       |             1|      8|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |7       |             0|     10|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |7       |             1|     13|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |8       |             0|      8|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |8       |             1|      4|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |9       |             0|      9|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |9       |             1|     14|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |10      |             0|      9|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |10      |             1|     15|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |11      |             0|     11|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |11      |             1|     16|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |12      |             0|     19|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |12      |             1|     15|   262|
|0-24 months |NIH-Birth      |BANGLADESH                   |1       |             0|     48|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |1       |             1|     25|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |2       |             0|     48|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |2       |             1|     10|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |3       |             0|     45|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |3       |             1|     14|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |4       |             0|     37|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |4       |             1|     16|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |5       |             0|     36|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |5       |             1|     13|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |6       |             0|     32|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |6       |             1|     18|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |7       |             0|     28|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |7       |             1|     13|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |8       |             0|     24|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |8       |             1|     17|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |9       |             0|     34|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |9       |             1|     14|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |10      |             0|     33|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |10      |             1|     16|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |11      |             0|     33|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |11      |             1|     20|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |12      |             0|     35|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |12      |             1|     20|   629|
|0-24 months |PROBIT         |BELARUS                      |1       |             0|    979| 16897|
|0-24 months |PROBIT         |BELARUS                      |1       |             1|     47| 16897|
|0-24 months |PROBIT         |BELARUS                      |2       |             0|    949| 16897|
|0-24 months |PROBIT         |BELARUS                      |2       |             1|     34| 16897|
|0-24 months |PROBIT         |BELARUS                      |3       |             0|   1106| 16897|
|0-24 months |PROBIT         |BELARUS                      |3       |             1|     39| 16897|
|0-24 months |PROBIT         |BELARUS                      |4       |             0|   1131| 16897|
|0-24 months |PROBIT         |BELARUS                      |4       |             1|     32| 16897|
|0-24 months |PROBIT         |BELARUS                      |5       |             0|   1147| 16897|
|0-24 months |PROBIT         |BELARUS                      |5       |             1|     27| 16897|
|0-24 months |PROBIT         |BELARUS                      |6       |             0|   1177| 16897|
|0-24 months |PROBIT         |BELARUS                      |6       |             1|     34| 16897|
|0-24 months |PROBIT         |BELARUS                      |7       |             0|   1556| 16897|
|0-24 months |PROBIT         |BELARUS                      |7       |             1|     34| 16897|
|0-24 months |PROBIT         |BELARUS                      |8       |             0|   1558| 16897|
|0-24 months |PROBIT         |BELARUS                      |8       |             1|     30| 16897|
|0-24 months |PROBIT         |BELARUS                      |9       |             0|   1591| 16897|
|0-24 months |PROBIT         |BELARUS                      |9       |             1|     36| 16897|
|0-24 months |PROBIT         |BELARUS                      |10      |             0|   1766| 16897|
|0-24 months |PROBIT         |BELARUS                      |10      |             1|     48| 16897|
|0-24 months |PROBIT         |BELARUS                      |11      |             0|   1659| 16897|
|0-24 months |PROBIT         |BELARUS                      |11      |             1|     43| 16897|
|0-24 months |PROBIT         |BELARUS                      |12      |             0|   1811| 16897|
|0-24 months |PROBIT         |BELARUS                      |12      |             1|     63| 16897|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |             0|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |             1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2       |             0|     27|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2       |             1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3       |             0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3       |             1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4       |             0|     35|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4       |             1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |5       |             0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |5       |             1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |6       |             0|     76|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |6       |             1|     18|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |7       |             0|     79|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |7       |             1|     13|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |8       |             0|     57|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |8       |             1|     12|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |9       |             0|     69|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |9       |             1|      7|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |10      |             0|     69|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |10      |             1|     10|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |11      |             0|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |11      |             1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |12      |             0|     29|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |12      |             1|      2|   700|
|0-24 months |ResPak         |PAKISTAN                     |1       |             0|      5|   284|
|0-24 months |ResPak         |PAKISTAN                     |1       |             1|      7|   284|
|0-24 months |ResPak         |PAKISTAN                     |2       |             0|     10|   284|
|0-24 months |ResPak         |PAKISTAN                     |2       |             1|      1|   284|
|0-24 months |ResPak         |PAKISTAN                     |3       |             0|     11|   284|
|0-24 months |ResPak         |PAKISTAN                     |3       |             1|     17|   284|
|0-24 months |ResPak         |PAKISTAN                     |4       |             0|     14|   284|
|0-24 months |ResPak         |PAKISTAN                     |4       |             1|     16|   284|
|0-24 months |ResPak         |PAKISTAN                     |5       |             0|     31|   284|
|0-24 months |ResPak         |PAKISTAN                     |5       |             1|     24|   284|
|0-24 months |ResPak         |PAKISTAN                     |6       |             0|     26|   284|
|0-24 months |ResPak         |PAKISTAN                     |6       |             1|     21|   284|
|0-24 months |ResPak         |PAKISTAN                     |7       |             0|     19|   284|
|0-24 months |ResPak         |PAKISTAN                     |7       |             1|     12|   284|
|0-24 months |ResPak         |PAKISTAN                     |8       |             0|     31|   284|
|0-24 months |ResPak         |PAKISTAN                     |8       |             1|     10|   284|
|0-24 months |ResPak         |PAKISTAN                     |9       |             0|     11|   284|
|0-24 months |ResPak         |PAKISTAN                     |9       |             1|      5|   284|
|0-24 months |ResPak         |PAKISTAN                     |10      |             0|      5|   284|
|0-24 months |ResPak         |PAKISTAN                     |10      |             1|      1|   284|
|0-24 months |ResPak         |PAKISTAN                     |11      |             0|      2|   284|
|0-24 months |ResPak         |PAKISTAN                     |11      |             1|      2|   284|
|0-24 months |ResPak         |PAKISTAN                     |12      |             0|      0|   284|
|0-24 months |ResPak         |PAKISTAN                     |12      |             1|      3|   284|
|0-24 months |SAS-CompFeed   |INDIA                        |1       |             0|     76|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |1       |             1|     37|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |2       |             0|     65|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |2       |             1|     26|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |3       |             0|     55|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |3       |             1|     27|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |4       |             0|     55|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |4       |             1|     20|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |5       |             0|     67|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |5       |             1|     34|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |6       |             0|     75|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |6       |             1|     34|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |7       |             0|     72|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |7       |             1|     64|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |8       |             0|    110|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |8       |             1|     72|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |9       |             0|    133|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |9       |             1|     59|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |10      |             0|    115|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |10      |             1|     53|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |11      |             0|    101|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |11      |             1|     41|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |12      |             0|    102|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |12      |             1|     40|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1       |             0|     19|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1       |             1|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2       |             0|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2       |             1|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3       |             0|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3       |             1|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |4       |             0|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |4       |             1|      0|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |5       |             0|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |5       |             1|      8|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |6       |             0|     12|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |6       |             1|     13|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |7       |             0|     20|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |7       |             1|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |8       |             0|     34|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |8       |             1|     33|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |9       |             0|     29|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |9       |             1|     37|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |10      |             0|     23|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |10      |             1|     28|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |11      |             0|     18|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |11      |             1|     15|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |12      |             0|     21|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |12      |             1|     17|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |             0|    154|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |             1|     17|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2       |             0|    161|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2       |             1|     17|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3       |             0|    140|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3       |             1|     24|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4       |             0|    169|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4       |             1|     21|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5       |             0|    167|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5       |             1|     18|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6       |             0|    153|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6       |             1|     13|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7       |             0|    193|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7       |             1|     25|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8       |             0|    210|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8       |             1|     22|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9       |             0|    197|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9       |             1|     19|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10      |             0|    220|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10      |             1|     30|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11      |             0|    201|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11      |             1|     20|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12      |             0|    192|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12      |             1|     13|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |             0|   1134| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |             1|    229| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2       |             0|    868| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2       |             1|    205| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3       |             0|    984| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3       |             1|    221| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4       |             0|    834| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4       |             1|    174| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5       |             0|    839| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5       |             1|    199| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6       |             0|    904| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6       |             1|    250| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7       |             0|    968| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7       |             1|    214| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8       |             0|   1080| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8       |             1|    186| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9       |             0|   1136| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9       |             1|    171| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10      |             0|    892| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10      |             1|    160| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11      |             0|   1024| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11      |             1|    176| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12      |             0|   1045| 14074|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12      |             1|    181| 14074|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/215b653a-44ff-4801-b69e-ebdf4cfc58d0/042369d3-149b-43c9-b8a2-07d1cd9837c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/215b653a-44ff-4801-b69e-ebdf4cfc58d0/042369d3-149b-43c9-b8a2-07d1cd9837c1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/215b653a-44ff-4801-b69e-ebdf4cfc58d0/042369d3-149b-43c9-b8a2-07d1cd9837c1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/215b653a-44ff-4801-b69e-ebdf4cfc58d0/042369d3-149b-43c9-b8a2-07d1cd9837c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.1145511| 0.0656331| 0.1634691|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2                  |NA             | 0.0773481| 0.0065816| 0.1481146|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3                  |NA             | 0.0913706| 0.0543252| 0.1284160|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4                  |NA             | 0.1100478| 0.0520423| 0.1680534|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5                  |NA             | 0.1009174| 0.0566853| 0.1451496|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6                  |NA             | 0.1197917| 0.0683115| 0.1712718|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7                  |NA             | 0.1581633| 0.0933138| 0.2230127|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8                  |NA             | 0.1089109| 0.0706911| 0.1471307|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9                  |NA             | 0.1119221| 0.0777494| 0.1460949|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10                 |NA             | 0.1075269| 0.0634422| 0.1516116|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11                 |NA             | 0.1081871| 0.0640286| 0.1523457|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12                 |NA             | 0.1028037| 0.0287486| 0.1768588|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.2631579| 0.1229792| 0.4033366|
|0-24 months |IRC            |INDIA                        |2                  |NA             | 0.3928571| 0.2117389| 0.5739754|
|0-24 months |IRC            |INDIA                        |3                  |NA             | 0.3333333| 0.1553045| 0.5113621|
|0-24 months |IRC            |INDIA                        |4                  |NA             | 0.2380952| 0.0557080| 0.4204825|
|0-24 months |IRC            |INDIA                        |5                  |NA             | 0.5000000| 0.2908119| 0.7091881|
|0-24 months |IRC            |INDIA                        |6                  |NA             | 0.1891892| 0.0628362| 0.3155422|
|0-24 months |IRC            |INDIA                        |7                  |NA             | 0.1666667| 0.0447787| 0.2885546|
|0-24 months |IRC            |INDIA                        |8                  |NA             | 0.1136364| 0.0197469| 0.2075258|
|0-24 months |IRC            |INDIA                        |9                  |NA             | 0.2592593| 0.0937597| 0.4247588|
|0-24 months |IRC            |INDIA                        |10                 |NA             | 0.1578947| 0.0418158| 0.2739737|
|0-24 months |IRC            |INDIA                        |11                 |NA             | 0.1750000| 0.0571053| 0.2928947|
|0-24 months |IRC            |INDIA                        |12                 |NA             | 0.3461538| 0.2166898| 0.4756179|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2064618| 0.1901470| 0.2227765|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.1822136| 0.1642505| 0.2001768|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.1426223| 0.1275887| 0.1576558|
|0-24 months |JiVitA-3       |BANGLADESH                   |4                  |NA             | 0.1328829| 0.1164758| 0.1492900|
|0-24 months |JiVitA-3       |BANGLADESH                   |5                  |NA             | 0.1735849| 0.1517936| 0.1953762|
|0-24 months |JiVitA-3       |BANGLADESH                   |6                  |NA             | 0.1613133| 0.1393212| 0.1833055|
|0-24 months |JiVitA-3       |BANGLADESH                   |7                  |NA             | 0.1638095| 0.1438782| 0.1837408|
|0-24 months |JiVitA-3       |BANGLADESH                   |8                  |NA             | 0.1815227| 0.1643544| 0.1986911|
|0-24 months |JiVitA-3       |BANGLADESH                   |9                  |NA             | 0.1722044| 0.1573415| 0.1870672|
|0-24 months |JiVitA-3       |BANGLADESH                   |10                 |NA             | 0.2025615| 0.1873778| 0.2177452|
|0-24 months |JiVitA-3       |BANGLADESH                   |11                 |NA             | 0.2229508| 0.2062070| 0.2396947|
|0-24 months |JiVitA-3       |BANGLADESH                   |12                 |NA             | 0.2133758| 0.1978869| 0.2288647|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.2101695| 0.1636684| 0.2566706|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.1992188| 0.1502832| 0.2481543|
|0-24 months |Keneba         |GAMBIA                       |3                  |NA             | 0.2189542| 0.1726120| 0.2652965|
|0-24 months |Keneba         |GAMBIA                       |4                  |NA             | 0.2030457| 0.1468629| 0.2592284|
|0-24 months |Keneba         |GAMBIA                       |5                  |NA             | 0.2254902| 0.1681334| 0.2828470|
|0-24 months |Keneba         |GAMBIA                       |6                  |NA             | 0.2515337| 0.1849125| 0.3181550|
|0-24 months |Keneba         |GAMBIA                       |7                  |NA             | 0.2553191| 0.1833345| 0.3273038|
|0-24 months |Keneba         |GAMBIA                       |8                  |NA             | 0.1906780| 0.1405503| 0.2408056|
|0-24 months |Keneba         |GAMBIA                       |9                  |NA             | 0.2134387| 0.1629418| 0.2639357|
|0-24 months |Keneba         |GAMBIA                       |10                 |NA             | 0.2085714| 0.1659996| 0.2511432|
|0-24 months |Keneba         |GAMBIA                       |11                 |NA             | 0.1850394| 0.1372748| 0.2328040|
|0-24 months |Keneba         |GAMBIA                       |12                 |NA             | 0.2192308| 0.1689331| 0.2695285|
|0-24 months |NIH-Birth      |BANGLADESH                   |1                  |NA             | 0.3424658| 0.2335226| 0.4514089|
|0-24 months |NIH-Birth      |BANGLADESH                   |2                  |NA             | 0.1724138| 0.0751229| 0.2697047|
|0-24 months |NIH-Birth      |BANGLADESH                   |3                  |NA             | 0.2372881| 0.1286491| 0.3459272|
|0-24 months |NIH-Birth      |BANGLADESH                   |4                  |NA             | 0.3018868| 0.1781951| 0.4255785|
|0-24 months |NIH-Birth      |BANGLADESH                   |5                  |NA             | 0.2653061| 0.1415911| 0.3890211|
|0-24 months |NIH-Birth      |BANGLADESH                   |6                  |NA             | 0.3600000| 0.2268473| 0.4931527|
|0-24 months |NIH-Birth      |BANGLADESH                   |7                  |NA             | 0.3170732| 0.1745228| 0.4596236|
|0-24 months |NIH-Birth      |BANGLADESH                   |8                  |NA             | 0.4146341| 0.2637138| 0.5655545|
|0-24 months |NIH-Birth      |BANGLADESH                   |9                  |NA             | 0.2916667| 0.1629795| 0.4203538|
|0-24 months |NIH-Birth      |BANGLADESH                   |10                 |NA             | 0.3265306| 0.1951242| 0.4579370|
|0-24 months |NIH-Birth      |BANGLADESH                   |11                 |NA             | 0.3773585| 0.2467559| 0.5079611|
|0-24 months |NIH-Birth      |BANGLADESH                   |12                 |NA             | 0.3636364| 0.2364037| 0.4908690|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0458090| 0.0293455| 0.0622724|
|0-24 months |PROBIT         |BELARUS                      |2                  |NA             | 0.0345880| 0.0208807| 0.0482953|
|0-24 months |PROBIT         |BELARUS                      |3                  |NA             | 0.0340611| 0.0205924| 0.0475299|
|0-24 months |PROBIT         |BELARUS                      |4                  |NA             | 0.0275150| 0.0129574| 0.0420727|
|0-24 months |PROBIT         |BELARUS                      |5                  |NA             | 0.0229983| 0.0128789| 0.0331177|
|0-24 months |PROBIT         |BELARUS                      |6                  |NA             | 0.0280760| 0.0122327| 0.0439192|
|0-24 months |PROBIT         |BELARUS                      |7                  |NA             | 0.0213836| 0.0100403| 0.0327270|
|0-24 months |PROBIT         |BELARUS                      |8                  |NA             | 0.0188917| 0.0102514| 0.0275320|
|0-24 months |PROBIT         |BELARUS                      |9                  |NA             | 0.0221266| 0.0115950| 0.0326582|
|0-24 months |PROBIT         |BELARUS                      |10                 |NA             | 0.0264609| 0.0166497| 0.0362720|
|0-24 months |PROBIT         |BELARUS                      |11                 |NA             | 0.0252644| 0.0151803| 0.0353485|
|0-24 months |PROBIT         |BELARUS                      |12                 |NA             | 0.0336179| 0.0182640| 0.0489718|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.3274336| 0.2590419| 0.3958253|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.2857143| 0.1998973| 0.3715313|
|0-24 months |SAS-CompFeed   |INDIA                        |3                  |NA             | 0.3292683| 0.2067976| 0.4517390|
|0-24 months |SAS-CompFeed   |INDIA                        |4                  |NA             | 0.2666667| 0.1419314| 0.3914019|
|0-24 months |SAS-CompFeed   |INDIA                        |5                  |NA             | 0.3366337| 0.2186540| 0.4546133|
|0-24 months |SAS-CompFeed   |INDIA                        |6                  |NA             | 0.3119266| 0.2149766| 0.4088766|
|0-24 months |SAS-CompFeed   |INDIA                        |7                  |NA             | 0.4705882| 0.3972341| 0.5439424|
|0-24 months |SAS-CompFeed   |INDIA                        |8                  |NA             | 0.3956044| 0.3114544| 0.4797544|
|0-24 months |SAS-CompFeed   |INDIA                        |9                  |NA             | 0.3072917| 0.2329668| 0.3816165|
|0-24 months |SAS-CompFeed   |INDIA                        |10                 |NA             | 0.3154762| 0.2553351| 0.3756172|
|0-24 months |SAS-CompFeed   |INDIA                        |11                 |NA             | 0.2887324| 0.2303684| 0.3470964|
|0-24 months |SAS-CompFeed   |INDIA                        |12                 |NA             | 0.2816901| 0.2298652| 0.3335150|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0994152| 0.0545583| 0.1442721|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.0955056| 0.0523193| 0.1386919|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3                  |NA             | 0.1463415| 0.0922358| 0.2004471|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4                  |NA             | 0.1105263| 0.0659339| 0.1551188|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5                  |NA             | 0.0972973| 0.0545828| 0.1400118|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6                  |NA             | 0.0783133| 0.0374348| 0.1191917|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7                  |NA             | 0.1146789| 0.0723728| 0.1569850|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8                  |NA             | 0.0948276| 0.0571201| 0.1325351|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9                  |NA             | 0.0879630| 0.0501824| 0.1257435|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10                 |NA             | 0.1200000| 0.0797097| 0.1602903|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11                 |NA             | 0.0904977| 0.0526654| 0.1283301|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12                 |NA             | 0.0634146| 0.0300466| 0.0967826|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1680117| 0.1481625| 0.1878610|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.1910531| 0.1675297| 0.2145766|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3                  |NA             | 0.1834025| 0.1615512| 0.2052538|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4                  |NA             | 0.1726190| 0.1492882| 0.1959499|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5                  |NA             | 0.1917148| 0.1677665| 0.2156632|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6                  |NA             | 0.2166378| 0.1928689| 0.2404067|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7                  |NA             | 0.1810491| 0.1590967| 0.2030015|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8                  |NA             | 0.1469194| 0.1274173| 0.1664215|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9                  |NA             | 0.1308340| 0.1125514| 0.1491165|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10                 |NA             | 0.1520913| 0.1303901| 0.1737924|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11                 |NA             | 0.1466667| 0.1266497| 0.1666836|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12                 |NA             | 0.1476346| 0.1277771| 0.1674921|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1093415| 0.0900773| 0.1286057|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1844493| 0.1788538| 0.1900447|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.2123499| 0.1975010| 0.2271989|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0276380| 0.0201988| 0.0350773|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3307241| 0.3024794| 0.3589688|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0997496| 0.0877482| 0.1117510|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1681114| 0.1619329| 0.1742900|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2                  |1              | 0.6752277| 0.2177221| 2.0941028|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3                  |1              | 0.7976403| 0.4284328| 1.4850171|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4                  |1              | 0.9606880| 0.5072730| 1.8193781|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5                  |1              | 0.8809819| 0.5070830| 1.5305760|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6                  |1              | 1.0457489| 0.5808310| 1.8828037|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7                  |1              | 1.3807226| 0.7093261| 2.6876139|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8                  |1              | 0.9507626| 0.5617538| 1.6091563|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9                  |1              | 0.9770500| 0.6068383| 1.5731155|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10                 |1              | 0.9386806| 0.5327073| 1.6540438|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11                 |1              | 0.9444444| 0.5396290| 1.6529416|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12                 |1              | 0.8974489| 0.4079217| 1.9744341|
|0-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |2                  |1              | 1.4928571| 0.7380162| 3.0197472|
|0-24 months |IRC            |INDIA                        |3                  |1              | 1.2666667| 0.5957531| 2.6931364|
|0-24 months |IRC            |INDIA                        |4                  |1              | 0.9047619| 0.3558975| 2.3000840|
|0-24 months |IRC            |INDIA                        |5                  |1              | 1.9000000| 0.9651389| 3.7403943|
|0-24 months |IRC            |INDIA                        |6                  |1              | 0.7189189| 0.3059649| 1.6892280|
|0-24 months |IRC            |INDIA                        |7                  |1              | 0.6333333| 0.2562718| 1.5651783|
|0-24 months |IRC            |INDIA                        |8                  |1              | 0.4318182| 0.1615717| 1.1540814|
|0-24 months |IRC            |INDIA                        |9                  |1              | 0.9851852| 0.4289835| 2.2625340|
|0-24 months |IRC            |INDIA                        |10                 |1              | 0.6000000| 0.2420309| 1.4874132|
|0-24 months |IRC            |INDIA                        |11                 |1              | 0.6650000| 0.2817309| 1.5696718|
|0-24 months |IRC            |INDIA                        |12                 |1              | 1.3153846| 0.6860957| 2.5218593|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.8825538| 0.7778993| 1.0012880|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |1              | 0.6907926| 0.6094217| 0.7830283|
|0-24 months |JiVitA-3       |BANGLADESH                   |4                  |1              | 0.6436198| 0.5566282| 0.7442067|
|0-24 months |JiVitA-3       |BANGLADESH                   |5                  |1              | 0.8407605| 0.7225505| 0.9783097|
|0-24 months |JiVitA-3       |BANGLADESH                   |6                  |1              | 0.7813230| 0.6670022| 0.9152379|
|0-24 months |JiVitA-3       |BANGLADESH                   |7                  |1              | 0.7934133| 0.6876510| 0.9154420|
|0-24 months |JiVitA-3       |BANGLADESH                   |8                  |1              | 0.8792075| 0.7752317| 0.9971288|
|0-24 months |JiVitA-3       |BANGLADESH                   |9                  |1              | 0.8340738| 0.7446980| 0.9341761|
|0-24 months |JiVitA-3       |BANGLADESH                   |10                 |1              | 0.9811090| 0.8811492| 1.0924085|
|0-24 months |JiVitA-3       |BANGLADESH                   |11                 |1              | 1.0798648| 0.9699017| 1.2022951|
|0-24 months |JiVitA-3       |BANGLADESH                   |12                 |1              | 1.0334881| 0.9273888| 1.1517259|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 0.9478957| 0.6810608| 1.3192746|
|0-24 months |Keneba         |GAMBIA                       |3                  |1              | 1.0417984| 0.7670227| 1.4150089|
|0-24 months |Keneba         |GAMBIA                       |4                  |1              | 0.9661045| 0.6778923| 1.3768528|
|0-24 months |Keneba         |GAMBIA                       |5                  |1              | 1.0728969| 0.7658524| 1.5030412|
|0-24 months |Keneba         |GAMBIA                       |6                  |1              | 1.1968138| 0.8475098| 1.6900846|
|0-24 months |Keneba         |GAMBIA                       |7                  |1              | 1.2148250| 0.8489196| 1.7384447|
|0-24 months |Keneba         |GAMBIA                       |8                  |1              | 0.9072581| 0.6434341| 1.2792564|
|0-24 months |Keneba         |GAMBIA                       |9                  |1              | 1.0155553| 0.7345555| 1.4040499|
|0-24 months |Keneba         |GAMBIA                       |10                 |1              | 0.9923963| 0.7344330| 1.3409671|
|0-24 months |Keneba         |GAMBIA                       |11                 |1              | 0.8804293| 0.6266762| 1.2369317|
|0-24 months |Keneba         |GAMBIA                       |12                 |1              | 1.0431141| 0.7584161| 1.4346835|
|0-24 months |NIH-Birth      |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |2                  |1              | 0.5034483| 0.2634076| 0.9622354|
|0-24 months |NIH-Birth      |BANGLADESH                   |3                  |1              | 0.6928814| 0.3967694| 1.2099839|
|0-24 months |NIH-Birth      |BANGLADESH                   |4                  |1              | 0.8815094| 0.5247448| 1.4808320|
|0-24 months |NIH-Birth      |BANGLADESH                   |5                  |1              | 0.7746939| 0.4405325| 1.3623300|
|0-24 months |NIH-Birth      |BANGLADESH                   |6                  |1              | 1.0512000| 0.6453779| 1.7122084|
|0-24 months |NIH-Birth      |BANGLADESH                   |7                  |1              | 0.9258537| 0.5337730| 1.6059354|
|0-24 months |NIH-Birth      |BANGLADESH                   |8                  |1              | 1.2107317| 0.7466334| 1.9633078|
|0-24 months |NIH-Birth      |BANGLADESH                   |9                  |1              | 0.8516667| 0.4943580| 1.4672284|
|0-24 months |NIH-Birth      |BANGLADESH                   |10                 |1              | 0.9534694| 0.5708507| 1.5925422|
|0-24 months |NIH-Birth      |BANGLADESH                   |11                 |1              | 1.1018868| 0.6886235| 1.7631616|
|0-24 months |NIH-Birth      |BANGLADESH                   |12                 |1              | 1.0618182| 0.6617275| 1.7038098|
|0-24 months |PROBIT         |BELARUS                      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |2                  |1              | 0.7550486| 0.5214510| 1.0932924|
|0-24 months |PROBIT         |BELARUS                      |3                  |1              | 0.7435473| 0.5555562| 0.9951517|
|0-24 months |PROBIT         |BELARUS                      |4                  |1              | 0.6006476| 0.3428708| 1.0522261|
|0-24 months |PROBIT         |BELARUS                      |5                  |1              | 0.5020479| 0.3270949| 0.7705778|
|0-24 months |PROBIT         |BELARUS                      |6                  |1              | 0.6128925| 0.3708059| 1.0130291|
|0-24 months |PROBIT         |BELARUS                      |7                  |1              | 0.4668005| 0.2509054| 0.8684656|
|0-24 months |PROBIT         |BELARUS                      |8                  |1              | 0.4124015| 0.2509756| 0.6776555|
|0-24 months |PROBIT         |BELARUS                      |9                  |1              | 0.4830193| 0.3064891| 0.7612264|
|0-24 months |PROBIT         |BELARUS                      |10                 |1              | 0.5776349| 0.3763585| 0.8865541|
|0-24 months |PROBIT         |BELARUS                      |11                 |1              | 0.5515164| 0.3486005| 0.8725468|
|0-24 months |PROBIT         |BELARUS                      |12                 |1              | 0.7338722| 0.4345986| 1.2392319|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 0.8725869| 0.6578014| 1.1575042|
|0-24 months |SAS-CompFeed   |INDIA                        |3                  |1              | 1.0056032| 0.6911970| 1.4630239|
|0-24 months |SAS-CompFeed   |INDIA                        |4                  |1              | 0.8144144| 0.4363099| 1.5201828|
|0-24 months |SAS-CompFeed   |INDIA                        |5                  |1              | 1.0280974| 0.7536315| 1.4025213|
|0-24 months |SAS-CompFeed   |INDIA                        |6                  |1              | 0.9526407| 0.6313796| 1.4373672|
|0-24 months |SAS-CompFeed   |INDIA                        |7                  |1              | 1.4372019| 1.0931353| 1.8895642|
|0-24 months |SAS-CompFeed   |INDIA                        |8                  |1              | 1.2081972| 0.9780004| 1.4925766|
|0-24 months |SAS-CompFeed   |INDIA                        |9                  |1              | 0.9384854| 0.6394321| 1.3774016|
|0-24 months |SAS-CompFeed   |INDIA                        |10                 |1              | 0.9634813| 0.6936680| 1.3382430|
|0-24 months |SAS-CompFeed   |INDIA                        |11                 |1              | 0.8818043| 0.6924148| 1.1229958|
|0-24 months |SAS-CompFeed   |INDIA                        |12                 |1              | 0.8602969| 0.6513979| 1.1361884|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.9606742| 0.5071663| 1.8197085|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3                  |1              | 1.4720230| 0.8214370| 2.6378791|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4                  |1              | 1.1117647| 0.6069358| 2.0364933|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5                  |1              | 0.9786963| 0.5214863| 1.8367626|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6                  |1              | 0.7877392| 0.3951232| 1.5704797|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7                  |1              | 1.1535348| 0.6440418| 2.0660811|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8                  |1              | 0.9538540| 0.5227424| 1.7405082|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9                  |1              | 0.8848039| 0.4745747| 1.6496412|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10                 |1              | 1.2070588| 0.6878152| 2.1182886|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11                 |1              | 0.9103008| 0.4920949| 1.6839179|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12                 |1              | 0.6378766| 0.3189362| 1.2757615|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.1371415| 0.9587544| 1.3487196|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3                  |1              | 1.0916052| 0.9229884| 1.2910259|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4                  |1              | 1.0274225| 0.8585928| 1.2294502|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5                  |1              | 1.1410800| 0.9608281| 1.3551473|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6                  |1              | 1.2894205| 1.0974200| 1.5150127|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7                  |1              | 1.0775977| 0.9097763| 1.2763762|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8                  |1              | 0.8744593| 0.7320913| 1.0445133|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9                  |1              | 0.7787192| 0.6485006| 0.9350856|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10                 |1              | 0.9052418| 0.7521644| 1.0894729|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11                 |1              | 0.8729549| 0.7287809| 1.0456506|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12                 |1              | 0.8787159| 0.7346831| 1.0509860|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | -0.0052096| -0.0517005|  0.0412813|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.0143774| -0.1476551|  0.1189002|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.0220125| -0.0375469| -0.0064781|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.0021804| -0.0419238|  0.0462846|
|0-24 months |NIH-Birth      |BANGLADESH                   |1                  |NA             | -0.0308600| -0.1329672|  0.0712471|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | -0.0181709| -0.0311026| -0.0052392|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0032904| -0.0623284|  0.0689093|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0003344| -0.0428972|  0.0435659|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0000997| -0.0187644|  0.0189638|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | -0.0476451| -0.5731823|  0.3023312|
|0-24 months |IRC            |INDIA                        |1                  |NA             | -0.0577915| -0.7552536|  0.3625292|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | -0.1193419| -0.2070404| -0.0380152|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.0102681| -0.2208276|  0.1976186|
|0-24 months |NIH-Birth      |BANGLADESH                   |1                  |NA             | -0.0990355| -0.4808036|  0.1843084|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | -0.6574606| -1.1832032| -0.2583234|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0099492| -0.2096216|  0.1896635|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0033522| -0.5395662|  0.3548138|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0005929| -0.1181610|  0.1067346|
