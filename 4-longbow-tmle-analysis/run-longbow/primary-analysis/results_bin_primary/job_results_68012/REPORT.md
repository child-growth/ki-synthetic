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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |brthmon | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |            0|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |            1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2       |            0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2       |            1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3       |            0|     23|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3       |            1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4       |            0|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4       |            1|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |5       |            0|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |5       |            1|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |6       |            0|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |6       |            1|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |7       |            0|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |7       |            1|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |8       |            0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |8       |            1|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |9       |            0|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |9       |            1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |10      |            0|     21|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |10      |            1|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |11      |            0|     34|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |11      |            1|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |12      |            0|     20|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |12      |            1|      5|   373|
|0-24 months |CMIN           |BANGLADESH                   |1       |            0|     24|   272|
|0-24 months |CMIN           |BANGLADESH                   |1       |            1|      4|   272|
|0-24 months |CMIN           |BANGLADESH                   |2       |            0|     26|   272|
|0-24 months |CMIN           |BANGLADESH                   |2       |            1|      1|   272|
|0-24 months |CMIN           |BANGLADESH                   |3       |            0|     17|   272|
|0-24 months |CMIN           |BANGLADESH                   |3       |            1|      3|   272|
|0-24 months |CMIN           |BANGLADESH                   |4       |            0|     20|   272|
|0-24 months |CMIN           |BANGLADESH                   |4       |            1|      2|   272|
|0-24 months |CMIN           |BANGLADESH                   |5       |            0|     19|   272|
|0-24 months |CMIN           |BANGLADESH                   |5       |            1|      1|   272|
|0-24 months |CMIN           |BANGLADESH                   |6       |            0|      9|   272|
|0-24 months |CMIN           |BANGLADESH                   |6       |            1|      1|   272|
|0-24 months |CMIN           |BANGLADESH                   |7       |            0|     15|   272|
|0-24 months |CMIN           |BANGLADESH                   |7       |            1|      2|   272|
|0-24 months |CMIN           |BANGLADESH                   |8       |            0|     20|   272|
|0-24 months |CMIN           |BANGLADESH                   |8       |            1|      2|   272|
|0-24 months |CMIN           |BANGLADESH                   |9       |            0|     19|   272|
|0-24 months |CMIN           |BANGLADESH                   |9       |            1|      3|   272|
|0-24 months |CMIN           |BANGLADESH                   |10      |            0|     20|   272|
|0-24 months |CMIN           |BANGLADESH                   |10      |            1|      7|   272|
|0-24 months |CMIN           |BANGLADESH                   |11      |            0|     23|   272|
|0-24 months |CMIN           |BANGLADESH                   |11      |            1|      6|   272|
|0-24 months |CMIN           |BANGLADESH                   |12      |            0|     18|   272|
|0-24 months |CMIN           |BANGLADESH                   |12      |            1|     10|   272|
|0-24 months |CONTENT        |PERU                         |1       |            0|     10|   215|
|0-24 months |CONTENT        |PERU                         |1       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |2       |            0|     18|   215|
|0-24 months |CONTENT        |PERU                         |2       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |3       |            0|     30|   215|
|0-24 months |CONTENT        |PERU                         |3       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |4       |            0|     19|   215|
|0-24 months |CONTENT        |PERU                         |4       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |5       |            0|     14|   215|
|0-24 months |CONTENT        |PERU                         |5       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |6       |            0|     13|   215|
|0-24 months |CONTENT        |PERU                         |6       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |7       |            0|     28|   215|
|0-24 months |CONTENT        |PERU                         |7       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |8       |            0|     23|   215|
|0-24 months |CONTENT        |PERU                         |8       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |9       |            0|     26|   215|
|0-24 months |CONTENT        |PERU                         |9       |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |10      |            0|     14|   215|
|0-24 months |CONTENT        |PERU                         |10      |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |11      |            0|      9|   215|
|0-24 months |CONTENT        |PERU                         |11      |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |12      |            0|     10|   215|
|0-24 months |CONTENT        |PERU                         |12      |            1|      1|   215|
|0-24 months |EE             |PAKISTAN                     |1       |            0|     70|   380|
|0-24 months |EE             |PAKISTAN                     |1       |            1|     25|   380|
|0-24 months |EE             |PAKISTAN                     |2       |            0|     52|   380|
|0-24 months |EE             |PAKISTAN                     |2       |            1|     15|   380|
|0-24 months |EE             |PAKISTAN                     |3       |            0|     33|   380|
|0-24 months |EE             |PAKISTAN                     |3       |            1|     10|   380|
|0-24 months |EE             |PAKISTAN                     |4       |            0|     14|   380|
|0-24 months |EE             |PAKISTAN                     |4       |            1|      2|   380|
|0-24 months |EE             |PAKISTAN                     |5       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN                     |5       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN                     |6       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN                     |6       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN                     |7       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN                     |7       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN                     |8       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN                     |8       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN                     |9       |            0|      0|   380|
|0-24 months |EE             |PAKISTAN                     |9       |            1|      0|   380|
|0-24 months |EE             |PAKISTAN                     |10      |            0|      4|   380|
|0-24 months |EE             |PAKISTAN                     |10      |            1|      0|   380|
|0-24 months |EE             |PAKISTAN                     |11      |            0|     56|   380|
|0-24 months |EE             |PAKISTAN                     |11      |            1|     15|   380|
|0-24 months |EE             |PAKISTAN                     |12      |            0|     71|   380|
|0-24 months |EE             |PAKISTAN                     |12      |            1|     13|   380|
|0-24 months |GMS-Nepal      |NEPAL                        |1       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |4       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |4       |            1|      1|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |5       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |5       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |6       |            0|    119|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |6       |            1|     49|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |7       |            0|    203|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |7       |            1|     60|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |8       |            0|    187|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |8       |            1|     67|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |9       |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |9       |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |10      |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |10      |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |11      |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |11      |            1|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |12      |            0|      0|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |12      |            1|      0|   686|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1       |            0|     28|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1       |            1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |2       |            0|     26|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |2       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |3       |            0|     27|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |3       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |4       |            0|     31|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |4       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |5       |            0|     35|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |5       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |6       |            0|     25|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |6       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |7       |            0|     22|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |7       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |8       |            0|     15|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |8       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |9       |            0|     16|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |9       |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |10      |            0|     31|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |10      |            1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |11      |            0|     23|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |11      |            1|      1|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |12      |            0|     33|   315|
|0-24 months |Guatemala BSC  |GUATEMALA                    |12      |            1|      0|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1       |            0|    309|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1       |            1|     14|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2       |            0|    170|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2       |            1|     11|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3       |            0|    187|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3       |            1|     10|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4       |            0|    198|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4       |            1|     11|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5       |            0|    207|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5       |            1|     11|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6       |            0|    181|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6       |            1|     11|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7       |            0|    190|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7       |            1|      6|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8       |            0|    290|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8       |            1|     13|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9       |            0|    388|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9       |            1|     23|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10      |            0|    356|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10      |            1|     16|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11      |            0|    319|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11      |            1|     24|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12      |            0|    306|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12      |            1|     15|  3266|
|0-24 months |IRC            |INDIA                        |1       |            0|     28|   410|
|0-24 months |IRC            |INDIA                        |1       |            1|     10|   410|
|0-24 months |IRC            |INDIA                        |2       |            0|     21|   410|
|0-24 months |IRC            |INDIA                        |2       |            1|      7|   410|
|0-24 months |IRC            |INDIA                        |3       |            0|     18|   410|
|0-24 months |IRC            |INDIA                        |3       |            1|      9|   410|
|0-24 months |IRC            |INDIA                        |4       |            0|     18|   410|
|0-24 months |IRC            |INDIA                        |4       |            1|      3|   410|
|0-24 months |IRC            |INDIA                        |5       |            0|     14|   410|
|0-24 months |IRC            |INDIA                        |5       |            1|      8|   410|
|0-24 months |IRC            |INDIA                        |6       |            0|     23|   410|
|0-24 months |IRC            |INDIA                        |6       |            1|     14|   410|
|0-24 months |IRC            |INDIA                        |7       |            0|     19|   410|
|0-24 months |IRC            |INDIA                        |7       |            1|     17|   410|
|0-24 months |IRC            |INDIA                        |8       |            0|     27|   410|
|0-24 months |IRC            |INDIA                        |8       |            1|     17|   410|
|0-24 months |IRC            |INDIA                        |9       |            0|     17|   410|
|0-24 months |IRC            |INDIA                        |9       |            1|     10|   410|
|0-24 months |IRC            |INDIA                        |10      |            0|     23|   410|
|0-24 months |IRC            |INDIA                        |10      |            1|     15|   410|
|0-24 months |IRC            |INDIA                        |11      |            0|     28|   410|
|0-24 months |IRC            |INDIA                        |11      |            1|     12|   410|
|0-24 months |IRC            |INDIA                        |12      |            0|     34|   410|
|0-24 months |IRC            |INDIA                        |12      |            1|     18|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |            0|   2382| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |            1|    116| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |2       |            0|   1929| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |2       |            1|    118| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |3       |            0|   2287| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |3       |            1|    129| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |4       |            0|   1651| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |4       |            1|    121| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |5       |            0|   1229| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |5       |            1|     91| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |6       |            0|   1291| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |6       |            1|     98| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |7       |            0|   1453| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |7       |            1|    103| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |8       |            0|   1986| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |8       |            1|    143| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |9       |            0|   2608| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |9       |            1|    169| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |10      |            0|   2746| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |10      |            1|    195| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |11      |            0|   2831| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |11      |            1|    176| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |12      |            0|   2918| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |12      |            1|    186| 26956|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |            0|      0|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |            1|      0|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |2       |            0|    869|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |2       |            1|     48|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |3       |            0|    961|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |3       |            1|     63|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |4       |            0|    711|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |4       |            1|     62|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |5       |            0|    600|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |5       |            1|     41|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |6       |            0|    423|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |6       |            1|     37|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |7       |            0|    511|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |7       |            1|     26|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |8       |            0|    525|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |8       |            1|     30|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |9       |            0|    371|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |9       |            1|     32|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |10      |            0|    129|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |10      |            1|      4|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |11      |            0|      0|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |11      |            1|      0|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |12      |            0|      0|  5443|
|0-24 months |JiVitA-4       |BANGLADESH                   |12      |            1|      0|  5443|
|0-24 months |Keneba         |GAMBIA                       |1       |            0|    232|  2920|
|0-24 months |Keneba         |GAMBIA                       |1       |            1|     64|  2920|
|0-24 months |Keneba         |GAMBIA                       |2       |            0|    213|  2920|
|0-24 months |Keneba         |GAMBIA                       |2       |            1|     45|  2920|
|0-24 months |Keneba         |GAMBIA                       |3       |            0|    249|  2920|
|0-24 months |Keneba         |GAMBIA                       |3       |            1|     57|  2920|
|0-24 months |Keneba         |GAMBIA                       |4       |            0|    170|  2920|
|0-24 months |Keneba         |GAMBIA                       |4       |            1|     27|  2920|
|0-24 months |Keneba         |GAMBIA                       |5       |            0|    166|  2920|
|0-24 months |Keneba         |GAMBIA                       |5       |            1|     37|  2920|
|0-24 months |Keneba         |GAMBIA                       |6       |            0|    135|  2920|
|0-24 months |Keneba         |GAMBIA                       |6       |            1|     29|  2920|
|0-24 months |Keneba         |GAMBIA                       |7       |            0|    113|  2920|
|0-24 months |Keneba         |GAMBIA                       |7       |            1|     28|  2920|
|0-24 months |Keneba         |GAMBIA                       |8       |            0|    195|  2920|
|0-24 months |Keneba         |GAMBIA                       |8       |            1|     41|  2920|
|0-24 months |Keneba         |GAMBIA                       |9       |            0|    204|  2920|
|0-24 months |Keneba         |GAMBIA                       |9       |            1|     49|  2920|
|0-24 months |Keneba         |GAMBIA                       |10      |            0|    295|  2920|
|0-24 months |Keneba         |GAMBIA                       |10      |            1|     57|  2920|
|0-24 months |Keneba         |GAMBIA                       |11      |            0|    210|  2920|
|0-24 months |Keneba         |GAMBIA                       |11      |            1|     45|  2920|
|0-24 months |Keneba         |GAMBIA                       |12      |            0|    212|  2920|
|0-24 months |Keneba         |GAMBIA                       |12      |            1|     47|  2920|
|0-24 months |LCNI-5         |MALAWI                       |1       |            0|     68|   840|
|0-24 months |LCNI-5         |MALAWI                       |1       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI                       |2       |            0|     45|   840|
|0-24 months |LCNI-5         |MALAWI                       |2       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI                       |3       |            0|     25|   840|
|0-24 months |LCNI-5         |MALAWI                       |3       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI                       |4       |            0|     39|   840|
|0-24 months |LCNI-5         |MALAWI                       |4       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI                       |5       |            0|     44|   840|
|0-24 months |LCNI-5         |MALAWI                       |5       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI                       |6       |            0|     33|   840|
|0-24 months |LCNI-5         |MALAWI                       |6       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI                       |7       |            0|     62|   840|
|0-24 months |LCNI-5         |MALAWI                       |7       |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI                       |8       |            0|     92|   840|
|0-24 months |LCNI-5         |MALAWI                       |8       |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI                       |9       |            0|     91|   840|
|0-24 months |LCNI-5         |MALAWI                       |9       |            1|      2|   840|
|0-24 months |LCNI-5         |MALAWI                       |10      |            0|    134|   840|
|0-24 months |LCNI-5         |MALAWI                       |10      |            1|      1|   840|
|0-24 months |LCNI-5         |MALAWI                       |11      |            0|    105|   840|
|0-24 months |LCNI-5         |MALAWI                       |11      |            1|      0|   840|
|0-24 months |LCNI-5         |MALAWI                       |12      |            0|     94|   840|
|0-24 months |LCNI-5         |MALAWI                       |12      |            1|      1|   840|
|0-24 months |MAL-ED         |BANGLADESH                   |1       |            0|     21|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |1       |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |2       |            0|     24|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |2       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |3       |            0|     19|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |3       |            1|      5|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |4       |            0|     19|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |4       |            1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |5       |            0|     20|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |5       |            1|      2|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |6       |            0|     11|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |6       |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |7       |            0|     19|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |7       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |8       |            0|     25|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |8       |            1|      1|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |9       |            0|     21|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |9       |            1|      2|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |10      |            0|     21|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |10      |            1|      3|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |11      |            0|     17|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |11      |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |12      |            0|     25|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |12      |            1|      3|   263|
|0-24 months |MAL-ED         |BRAZIL                       |1       |            0|     15|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |2       |            0|     25|   233|
|0-24 months |MAL-ED         |BRAZIL                       |2       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |3       |            0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL                       |3       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |4       |            0|     12|   233|
|0-24 months |MAL-ED         |BRAZIL                       |4       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |5       |            0|     23|   233|
|0-24 months |MAL-ED         |BRAZIL                       |5       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |6       |            0|      8|   233|
|0-24 months |MAL-ED         |BRAZIL                       |6       |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |7       |            0|     18|   233|
|0-24 months |MAL-ED         |BRAZIL                       |7       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |8       |            0|     21|   233|
|0-24 months |MAL-ED         |BRAZIL                       |8       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |9       |            0|     32|   233|
|0-24 months |MAL-ED         |BRAZIL                       |9       |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL                       |10      |            0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL                       |10      |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL                       |11      |            0|     20|   233|
|0-24 months |MAL-ED         |BRAZIL                       |11      |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL                       |12      |            0|     15|   233|
|0-24 months |MAL-ED         |BRAZIL                       |12      |            1|      0|   233|
|0-24 months |MAL-ED         |INDIA                        |1       |            0|     18|   251|
|0-24 months |MAL-ED         |INDIA                        |1       |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA                        |2       |            0|     19|   251|
|0-24 months |MAL-ED         |INDIA                        |2       |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA                        |3       |            0|     20|   251|
|0-24 months |MAL-ED         |INDIA                        |3       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |4       |            0|     15|   251|
|0-24 months |MAL-ED         |INDIA                        |4       |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA                        |5       |            0|      8|   251|
|0-24 months |MAL-ED         |INDIA                        |5       |            1|      0|   251|
|0-24 months |MAL-ED         |INDIA                        |6       |            0|     17|   251|
|0-24 months |MAL-ED         |INDIA                        |6       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |7       |            0|     22|   251|
|0-24 months |MAL-ED         |INDIA                        |7       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |8       |            0|     21|   251|
|0-24 months |MAL-ED         |INDIA                        |8       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |9       |            0|     20|   251|
|0-24 months |MAL-ED         |INDIA                        |9       |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA                        |10      |            0|     24|   251|
|0-24 months |MAL-ED         |INDIA                        |10      |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA                        |11      |            0|     23|   251|
|0-24 months |MAL-ED         |INDIA                        |11      |            1|      2|   251|
|0-24 months |MAL-ED         |INDIA                        |12      |            0|     18|   251|
|0-24 months |MAL-ED         |INDIA                        |12      |            1|      1|   251|
|0-24 months |MAL-ED         |NEPAL                        |1       |            0|     18|   240|
|0-24 months |MAL-ED         |NEPAL                        |1       |            1|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |2       |            0|     19|   240|
|0-24 months |MAL-ED         |NEPAL                        |2       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |3       |            0|     17|   240|
|0-24 months |MAL-ED         |NEPAL                        |3       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |4       |            0|     21|   240|
|0-24 months |MAL-ED         |NEPAL                        |4       |            1|      1|   240|
|0-24 months |MAL-ED         |NEPAL                        |5       |            0|     20|   240|
|0-24 months |MAL-ED         |NEPAL                        |5       |            1|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |6       |            0|     18|   240|
|0-24 months |MAL-ED         |NEPAL                        |6       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |7       |            0|     20|   240|
|0-24 months |MAL-ED         |NEPAL                        |7       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |8       |            0|     21|   240|
|0-24 months |MAL-ED         |NEPAL                        |8       |            1|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |9       |            0|     16|   240|
|0-24 months |MAL-ED         |NEPAL                        |9       |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |10      |            0|     20|   240|
|0-24 months |MAL-ED         |NEPAL                        |10      |            1|      1|   240|
|0-24 months |MAL-ED         |NEPAL                        |11      |            0|     24|   240|
|0-24 months |MAL-ED         |NEPAL                        |11      |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |12      |            0|     17|   240|
|0-24 months |MAL-ED         |NEPAL                        |12      |            1|      0|   240|
|0-24 months |MAL-ED         |PERU                         |1       |            0|     41|   302|
|0-24 months |MAL-ED         |PERU                         |1       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |2       |            0|     23|   302|
|0-24 months |MAL-ED         |PERU                         |2       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |3       |            0|     22|   302|
|0-24 months |MAL-ED         |PERU                         |3       |            1|      1|   302|
|0-24 months |MAL-ED         |PERU                         |4       |            0|     21|   302|
|0-24 months |MAL-ED         |PERU                         |4       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |5       |            0|     27|   302|
|0-24 months |MAL-ED         |PERU                         |5       |            1|      1|   302|
|0-24 months |MAL-ED         |PERU                         |6       |            0|     17|   302|
|0-24 months |MAL-ED         |PERU                         |6       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |7       |            0|     24|   302|
|0-24 months |MAL-ED         |PERU                         |7       |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |8       |            0|     18|   302|
|0-24 months |MAL-ED         |PERU                         |8       |            1|      1|   302|
|0-24 months |MAL-ED         |PERU                         |9       |            0|     22|   302|
|0-24 months |MAL-ED         |PERU                         |9       |            1|      1|   302|
|0-24 months |MAL-ED         |PERU                         |10      |            0|     27|   302|
|0-24 months |MAL-ED         |PERU                         |10      |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |11      |            0|     33|   302|
|0-24 months |MAL-ED         |PERU                         |11      |            1|      0|   302|
|0-24 months |MAL-ED         |PERU                         |12      |            0|     23|   302|
|0-24 months |MAL-ED         |PERU                         |12      |            1|      0|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1       |            0|     40|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1       |            1|      2|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2       |            0|     30|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3       |            0|     17|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4       |            0|     15|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |5       |            0|     15|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |5       |            1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |6       |            0|     22|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |6       |            1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |7       |            0|     25|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |7       |            1|      1|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |8       |            0|     12|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |8       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |9       |            0|     25|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |9       |            1|      0|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |10      |            0|     27|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |10      |            1|      4|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |11      |            0|     26|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |11      |            1|      5|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |12      |            0|     42|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |12      |            1|      2|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |            0|     19|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2       |            0|     29|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2       |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3       |            0|     19|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4       |            0|      9|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4       |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |5       |            0|     19|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |5       |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |6       |            0|     19|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |6       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |7       |            0|     22|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |7       |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |8       |            0|     12|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |8       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |9       |            0|     23|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |9       |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |10      |            0|     23|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |10      |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |11      |            0|     26|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |11      |            1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |12      |            0|     32|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |12      |            1|      2|   261|
|0-24 months |NIH-Birth      |BANGLADESH                   |1       |            0|     58|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |1       |            1|     15|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |2       |            0|     50|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |2       |            1|      7|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |3       |            0|     49|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |3       |            1|     10|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |4       |            0|     44|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |4       |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |5       |            0|     41|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |5       |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |6       |            0|     42|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |6       |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |7       |            0|     31|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |7       |            1|     10|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |8       |            0|     31|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |8       |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |9       |            0|     43|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |9       |            1|      4|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |10      |            0|     41|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |10      |            1|      8|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |11      |            0|     44|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |11      |            1|      9|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |12      |            0|     51|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |12      |            1|      4|   624|
|0-24 months |PROBIT         |BELARUS                      |1       |            0|    942| 16898|
|0-24 months |PROBIT         |BELARUS                      |1       |            1|     84| 16898|
|0-24 months |PROBIT         |BELARUS                      |2       |            0|    908| 16898|
|0-24 months |PROBIT         |BELARUS                      |2       |            1|     75| 16898|
|0-24 months |PROBIT         |BELARUS                      |3       |            0|   1053| 16898|
|0-24 months |PROBIT         |BELARUS                      |3       |            1|     92| 16898|
|0-24 months |PROBIT         |BELARUS                      |4       |            0|   1082| 16898|
|0-24 months |PROBIT         |BELARUS                      |4       |            1|     81| 16898|
|0-24 months |PROBIT         |BELARUS                      |5       |            0|   1064| 16898|
|0-24 months |PROBIT         |BELARUS                      |5       |            1|    110| 16898|
|0-24 months |PROBIT         |BELARUS                      |6       |            0|   1121| 16898|
|0-24 months |PROBIT         |BELARUS                      |6       |            1|     90| 16898|
|0-24 months |PROBIT         |BELARUS                      |7       |            0|   1447| 16898|
|0-24 months |PROBIT         |BELARUS                      |7       |            1|    143| 16898|
|0-24 months |PROBIT         |BELARUS                      |8       |            0|   1465| 16898|
|0-24 months |PROBIT         |BELARUS                      |8       |            1|    123| 16898|
|0-24 months |PROBIT         |BELARUS                      |9       |            0|   1496| 16898|
|0-24 months |PROBIT         |BELARUS                      |9       |            1|    131| 16898|
|0-24 months |PROBIT         |BELARUS                      |10      |            0|   1672| 16898|
|0-24 months |PROBIT         |BELARUS                      |10      |            1|    143| 16898|
|0-24 months |PROBIT         |BELARUS                      |11      |            0|   1582| 16898|
|0-24 months |PROBIT         |BELARUS                      |11      |            1|    120| 16898|
|0-24 months |PROBIT         |BELARUS                      |12      |            0|   1741| 16898|
|0-24 months |PROBIT         |BELARUS                      |12      |            1|    133| 16898|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |            0|     36|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2       |            0|     33|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2       |            1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3       |            0|     52|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3       |            1|      1|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4       |            0|     39|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4       |            1|      0|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |5       |            0|     48|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |5       |            1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |6       |            0|     85|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |6       |            1|      9|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |7       |            0|     86|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |7       |            1|      6|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |8       |            0|     61|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |8       |            1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |9       |            0|     71|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |9       |            1|      5|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |10      |            0|     75|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |10      |            1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |11      |            0|     41|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |11      |            1|      1|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |12      |            0|     31|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |12      |            1|      0|   700|
|0-24 months |ResPak         |PAKISTAN                     |1       |            0|     10|   284|
|0-24 months |ResPak         |PAKISTAN                     |1       |            1|      2|   284|
|0-24 months |ResPak         |PAKISTAN                     |2       |            0|      9|   284|
|0-24 months |ResPak         |PAKISTAN                     |2       |            1|      2|   284|
|0-24 months |ResPak         |PAKISTAN                     |3       |            0|     14|   284|
|0-24 months |ResPak         |PAKISTAN                     |3       |            1|     14|   284|
|0-24 months |ResPak         |PAKISTAN                     |4       |            0|     21|   284|
|0-24 months |ResPak         |PAKISTAN                     |4       |            1|      9|   284|
|0-24 months |ResPak         |PAKISTAN                     |5       |            0|     44|   284|
|0-24 months |ResPak         |PAKISTAN                     |5       |            1|     11|   284|
|0-24 months |ResPak         |PAKISTAN                     |6       |            0|     39|   284|
|0-24 months |ResPak         |PAKISTAN                     |6       |            1|      8|   284|
|0-24 months |ResPak         |PAKISTAN                     |7       |            0|     27|   284|
|0-24 months |ResPak         |PAKISTAN                     |7       |            1|      4|   284|
|0-24 months |ResPak         |PAKISTAN                     |8       |            0|     30|   284|
|0-24 months |ResPak         |PAKISTAN                     |8       |            1|     11|   284|
|0-24 months |ResPak         |PAKISTAN                     |9       |            0|     11|   284|
|0-24 months |ResPak         |PAKISTAN                     |9       |            1|      5|   284|
|0-24 months |ResPak         |PAKISTAN                     |10      |            0|      5|   284|
|0-24 months |ResPak         |PAKISTAN                     |10      |            1|      1|   284|
|0-24 months |ResPak         |PAKISTAN                     |11      |            0|      4|   284|
|0-24 months |ResPak         |PAKISTAN                     |11      |            1|      0|   284|
|0-24 months |ResPak         |PAKISTAN                     |12      |            0|      1|   284|
|0-24 months |ResPak         |PAKISTAN                     |12      |            1|      2|   284|
|0-24 months |SAS-CompFeed   |INDIA                        |1       |            0|     93|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |1       |            1|     18|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |2       |            0|     82|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |2       |            1|      8|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |3       |            0|     73|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |3       |            1|      8|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |4       |            0|     64|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |4       |            1|     10|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |5       |            0|     83|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |5       |            1|     16|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |6       |            0|     87|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |6       |            1|     22|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |7       |            0|    113|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |7       |            1|     23|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |8       |            0|    156|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |8       |            1|     23|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |9       |            0|    157|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |9       |            1|     34|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |10      |            0|    138|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |10      |            1|     27|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |11      |            0|    118|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |11      |            1|     22|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |12      |            0|    126|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |12      |            1|     12|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1       |            0|     24|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1       |            1|      2|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2       |            0|     30|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2       |            1|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3       |            0|     18|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3       |            1|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |4       |            0|      3|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |4       |            1|      1|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |5       |            0|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |5       |            1|      5|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |6       |            0|     19|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |6       |            1|      6|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |7       |            0|     32|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |7       |            1|      5|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |8       |            0|     58|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |8       |            1|      9|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |9       |            0|     56|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |9       |            1|     10|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |10      |            0|     44|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |10      |            1|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |11      |            0|     26|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |11      |            1|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |12      |            0|     28|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |12      |            1|     10|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            0|    156|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            1|     15|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2       |            0|    166|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2       |            1|     12|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3       |            0|    158|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3       |            1|      6|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4       |            0|    175|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4       |            1|     15|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5       |            0|    175|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5       |            1|     10|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6       |            0|    153|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6       |            1|     13|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7       |            0|    203|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7       |            1|     15|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8       |            0|    220|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8       |            1|     12|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9       |            0|    205|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9       |            1|     11|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10      |            0|    233|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10      |            1|     17|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11      |            0|    204|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11      |            1|     17|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12      |            0|    190|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12      |            1|     15|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |            0|   1226| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |            1|    119| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2       |            0|    964| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2       |            1|    101| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3       |            0|   1082| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3       |            1|    109| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4       |            0|    913| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4       |            1|     82| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5       |            0|    932| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5       |            1|     97| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6       |            0|   1022| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6       |            1|    122| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7       |            0|   1042| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7       |            1|    125| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8       |            0|   1136| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8       |            1|    119| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9       |            0|   1188| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9       |            1|    108| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10      |            0|    960| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10      |            1|     87| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11      |            0|   1092| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11      |            1|     99| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12      |            0|   1103| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12      |            1|    118| 13946|


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
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
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
![](/tmp/c1a23f0d-b3f8-4e3c-b28c-30f14ad3228b/01a8edbe-ff3a-47c4-9e6c-9d6c0a87c47b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1a23f0d-b3f8-4e3c-b28c-30f14ad3228b/01a8edbe-ff3a-47c4-9e6c-9d6c0a87c47b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1a23f0d-b3f8-4e3c-b28c-30f14ad3228b/01a8edbe-ff3a-47c4-9e6c-9d6c0a87c47b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1a23f0d-b3f8-4e3c-b28c-30f14ad3228b/01a8edbe-ff3a-47c4-9e6c-9d6c0a87c47b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.0433437|  0.0198991| 0.0667882|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2                  |NA             | 0.0607735|  0.0224422| 0.0991048|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3                  |NA             | 0.0507614|  0.0284726| 0.0730503|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4                  |NA             | 0.0526316| -0.0420863| 0.1473495|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5                  |NA             | 0.0504587|  0.0256286| 0.0752888|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6                  |NA             | 0.0572917|  0.0207105| 0.0938728|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7                  |NA             | 0.0306122|  0.0112769| 0.0499476|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8                  |NA             | 0.0429043|  0.0152235| 0.0705851|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9                  |NA             | 0.0559611|  0.0264954| 0.0854267|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10                 |NA             | 0.0430108|  0.0091555| 0.0768660|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11                 |NA             | 0.0699708|  0.0375841| 0.1023576|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12                 |NA             | 0.0467290|  0.0115597| 0.0818982|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0464371|  0.0365988| 0.0562755|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.0576453|  0.0471384| 0.0681523|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.0533940|  0.0438940| 0.0628941|
|0-24 months |JiVitA-3       |BANGLADESH                   |4                  |NA             | 0.0682844|  0.0557362| 0.0808326|
|0-24 months |JiVitA-3       |BANGLADESH                   |5                  |NA             | 0.0689394|  0.0545056| 0.0833732|
|0-24 months |JiVitA-3       |BANGLADESH                   |6                  |NA             | 0.0705544|  0.0549151| 0.0861936|
|0-24 months |JiVitA-3       |BANGLADESH                   |7                  |NA             | 0.0661954|  0.0531844| 0.0792063|
|0-24 months |JiVitA-3       |BANGLADESH                   |8                  |NA             | 0.0671677|  0.0558491| 0.0784863|
|0-24 months |JiVitA-3       |BANGLADESH                   |9                  |NA             | 0.0608570|  0.0512338| 0.0704803|
|0-24 months |JiVitA-3       |BANGLADESH                   |10                 |NA             | 0.0663040|  0.0555781| 0.0770298|
|0-24 months |JiVitA-3       |BANGLADESH                   |11                 |NA             | 0.0585301|  0.0493823| 0.0676779|
|0-24 months |JiVitA-3       |BANGLADESH                   |12                 |NA             | 0.0599227|  0.0503409| 0.0695044|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.2162162|  0.1693112| 0.2631212|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.1744186|  0.1281071| 0.2207301|
|0-24 months |Keneba         |GAMBIA                       |3                  |NA             | 0.1862745|  0.1426453| 0.2299037|
|0-24 months |Keneba         |GAMBIA                       |4                  |NA             | 0.1370558|  0.0890240| 0.1850877|
|0-24 months |Keneba         |GAMBIA                       |5                  |NA             | 0.1822660|  0.1291490| 0.2353830|
|0-24 months |Keneba         |GAMBIA                       |6                  |NA             | 0.1768293|  0.1184280| 0.2352306|
|0-24 months |Keneba         |GAMBIA                       |7                  |NA             | 0.1985816|  0.1327230| 0.2644401|
|0-24 months |Keneba         |GAMBIA                       |8                  |NA             | 0.1737288|  0.1253825| 0.2220752|
|0-24 months |Keneba         |GAMBIA                       |9                  |NA             | 0.1936759|  0.1449730| 0.2423788|
|0-24 months |Keneba         |GAMBIA                       |10                 |NA             | 0.1619318|  0.1234410| 0.2004226|
|0-24 months |Keneba         |GAMBIA                       |11                 |NA             | 0.1764706|  0.1296725| 0.2232687|
|0-24 months |Keneba         |GAMBIA                       |12                 |NA             | 0.1814672|  0.1345221| 0.2284122|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0818713|  0.0340922| 0.1296505|
|0-24 months |PROBIT         |BELARUS                      |2                  |NA             | 0.0762970|  0.0304232| 0.1221709|
|0-24 months |PROBIT         |BELARUS                      |3                  |NA             | 0.0803493|  0.0362338| 0.1244649|
|0-24 months |PROBIT         |BELARUS                      |4                  |NA             | 0.0696475|  0.0330088| 0.1062861|
|0-24 months |PROBIT         |BELARUS                      |5                  |NA             | 0.0936968|  0.0419903| 0.1454033|
|0-24 months |PROBIT         |BELARUS                      |6                  |NA             | 0.0743187|  0.0482217| 0.1004158|
|0-24 months |PROBIT         |BELARUS                      |7                  |NA             | 0.0899371|  0.0544233| 0.1254509|
|0-24 months |PROBIT         |BELARUS                      |8                  |NA             | 0.0774559|  0.0465769| 0.1083349|
|0-24 months |PROBIT         |BELARUS                      |9                  |NA             | 0.0805163|  0.0358552| 0.1251774|
|0-24 months |PROBIT         |BELARUS                      |10                 |NA             | 0.0787879|  0.0446757| 0.1129000|
|0-24 months |PROBIT         |BELARUS                      |11                 |NA             | 0.0705053|  0.0394752| 0.1015353|
|0-24 months |PROBIT         |BELARUS                      |12                 |NA             | 0.0709712|  0.0401719| 0.1017705|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.1621622|  0.0998823| 0.2244420|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.0888889|  0.0421925| 0.1355853|
|0-24 months |SAS-CompFeed   |INDIA                        |3                  |NA             | 0.0987654|  0.0364389| 0.1610919|
|0-24 months |SAS-CompFeed   |INDIA                        |4                  |NA             | 0.1351351|  0.0816900| 0.1885803|
|0-24 months |SAS-CompFeed   |INDIA                        |5                  |NA             | 0.1616162|  0.1000143| 0.2232181|
|0-24 months |SAS-CompFeed   |INDIA                        |6                  |NA             | 0.2018349|  0.1224321| 0.2812376|
|0-24 months |SAS-CompFeed   |INDIA                        |7                  |NA             | 0.1691176|  0.1048189| 0.2334164|
|0-24 months |SAS-CompFeed   |INDIA                        |8                  |NA             | 0.1284916|  0.0694079| 0.1875754|
|0-24 months |SAS-CompFeed   |INDIA                        |9                  |NA             | 0.1780105|  0.1217106| 0.2343103|
|0-24 months |SAS-CompFeed   |INDIA                        |10                 |NA             | 0.1636364|  0.1087663| 0.2185064|
|0-24 months |SAS-CompFeed   |INDIA                        |11                 |NA             | 0.1571429|  0.1007371| 0.2135487|
|0-24 months |SAS-CompFeed   |INDIA                        |12                 |NA             | 0.0869565|  0.0581315| 0.1157815|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0877193|  0.0453108| 0.1301278|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.0674157|  0.0305729| 0.1042586|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3                  |NA             | 0.0365854|  0.0078460| 0.0653247|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4                  |NA             | 0.0789474|  0.0405967| 0.1172980|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5                  |NA             | 0.0540541|  0.0214629| 0.0866452|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6                  |NA             | 0.0783133|  0.0374348| 0.1191917|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7                  |NA             | 0.0688073|  0.0351990| 0.1024157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8                  |NA             | 0.0517241|  0.0232199| 0.0802283|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9                  |NA             | 0.0509259|  0.0216014| 0.0802505|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10                 |NA             | 0.0680000|  0.0367873| 0.0992127|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11                 |NA             | 0.0769231|  0.0417840| 0.1120621|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12                 |NA             | 0.0731707|  0.0375149| 0.1088265|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0884758|  0.0732984| 0.1036533|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.0948357|  0.0772387| 0.1124327|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3                  |NA             | 0.0915197|  0.0751432| 0.1078963|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4                  |NA             | 0.0824121|  0.0653248| 0.0994993|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5                  |NA             | 0.0942663|  0.0764123| 0.1121202|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6                  |NA             | 0.1066434|  0.0887567| 0.1245300|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7                  |NA             | 0.1071123|  0.0893685| 0.1248560|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8                  |NA             | 0.0948207|  0.0786115| 0.1110299|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9                  |NA             | 0.0833333|  0.0682854| 0.0983812|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10                 |NA             | 0.0830946|  0.0663745| 0.0998147|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11                 |NA             | 0.0831234|  0.0674442| 0.0988027|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12                 |NA             | 0.0966421|  0.0800684| 0.1132158|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0505205| 0.0383088| 0.0627322|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610254| 0.0575469| 0.0645038|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.1801370| 0.1661957| 0.1940783|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0784116| 0.0458146| 0.1110087|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1473893| 0.1184132| 0.1763654|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0659432| 0.0560037| 0.0758828|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0922128| 0.0874108| 0.0970149|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2                  |1              | 1.4021310| 0.6098925| 3.2234720|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |3                  |1              | 1.1711385| 0.6044760| 2.2690155|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |4                  |1              | 1.2142857| 0.1884255| 7.8253207|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |5                  |1              | 1.1641547| 0.6105681| 2.2196641|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |6                  |1              | 1.3218006| 0.5830174| 2.9967488|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |7                  |1              | 0.7062682| 0.3287114| 1.5174854|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |8                  |1              | 0.9898633| 0.4100658| 2.3894440|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |9                  |1              | 1.2911018| 0.6091635| 2.7364478|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |10                 |1              | 0.9923195| 0.3601550| 2.7340954|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |11                 |1              | 1.6143274| 0.9266839| 2.8122349|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |12                 |1              | 1.0781041| 0.4136187| 2.8100963|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 1.2413625| 0.9334046| 1.6509248|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |1              | 1.1498130| 0.8821344| 1.4987171|
|0-24 months |JiVitA-3       |BANGLADESH                   |4                  |1              | 1.4704698| 1.1116734| 1.9450688|
|0-24 months |JiVitA-3       |BANGLADESH                   |5                  |1              | 1.4845742| 1.0967696| 2.0095019|
|0-24 months |JiVitA-3       |BANGLADESH                   |6                  |1              | 1.5193516| 1.1176165| 2.0654931|
|0-24 months |JiVitA-3       |BANGLADESH                   |7                  |1              | 1.4254831| 1.0596199| 1.9176708|
|0-24 months |JiVitA-3       |BANGLADESH                   |8                  |1              | 1.4464213| 1.1144384| 1.8772996|
|0-24 months |JiVitA-3       |BANGLADESH                   |9                  |1              | 1.3105249| 1.0091300| 1.7019368|
|0-24 months |JiVitA-3       |BANGLADESH                   |10                 |1              | 1.4278219| 1.0984528| 1.8559517|
|0-24 months |JiVitA-3       |BANGLADESH                   |11                 |1              | 1.2604154| 0.9826912| 1.6166287|
|0-24 months |JiVitA-3       |BANGLADESH                   |12                 |1              | 1.2904039| 0.9832016| 1.6935919|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 0.8066860| 0.5725283| 1.1366118|
|0-24 months |Keneba         |GAMBIA                       |3                  |1              | 0.8615196| 0.6260615| 1.1855321|
|0-24 months |Keneba         |GAMBIA                       |4                  |1              | 0.6338832| 0.4197672| 0.9572162|
|0-24 months |Keneba         |GAMBIA                       |5                  |1              | 0.8429803| 0.5861874| 1.2122673|
|0-24 months |Keneba         |GAMBIA                       |6                  |1              | 0.8178354| 0.5508799| 1.2141569|
|0-24 months |Keneba         |GAMBIA                       |7                  |1              | 0.9184397| 0.6179341| 1.3650832|
|0-24 months |Keneba         |GAMBIA                       |8                  |1              | 0.8034958| 0.5646016| 1.1434709|
|0-24 months |Keneba         |GAMBIA                       |9                  |1              | 0.8957510| 0.6426202| 1.2485911|
|0-24 months |Keneba         |GAMBIA                       |10                 |1              | 0.7489347| 0.5428552| 1.0332463|
|0-24 months |Keneba         |GAMBIA                       |11                 |1              | 0.8161765| 0.5794120| 1.1496898|
|0-24 months |Keneba         |GAMBIA                       |12                 |1              | 0.8392857| 0.5988039| 1.1763458|
|0-24 months |PROBIT         |BELARUS                      |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |2                  |1              | 0.9319140| 0.6649757| 1.3060082|
|0-24 months |PROBIT         |BELARUS                      |3                  |1              | 0.9814099| 0.6932302| 1.3893873|
|0-24 months |PROBIT         |BELARUS                      |4                  |1              | 0.8506940| 0.5895859| 1.2274382|
|0-24 months |PROBIT         |BELARUS                      |5                  |1              | 1.1444390| 0.7549872| 1.7347854|
|0-24 months |PROBIT         |BELARUS                      |6                  |1              | 0.9077504| 0.5558641| 1.4823960|
|0-24 months |PROBIT         |BELARUS                      |7                  |1              | 1.0985175| 0.6832683| 1.7661302|
|0-24 months |PROBIT         |BELARUS                      |8                  |1              | 0.9460687| 0.6177345| 1.4489169|
|0-24 months |PROBIT         |BELARUS                      |9                  |1              | 0.9834489| 0.6531513| 1.4807777|
|0-24 months |PROBIT         |BELARUS                      |10                 |1              | 0.9623377| 0.6500844| 1.4245747|
|0-24 months |PROBIT         |BELARUS                      |11                 |1              | 0.8611717| 0.5986649| 1.2387844|
|0-24 months |PROBIT         |BELARUS                      |12                 |1              | 0.8668623| 0.5813320| 1.2926354|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 0.5481481| 0.2747139| 1.0937428|
|0-24 months |SAS-CompFeed   |INDIA                        |3                  |1              | 0.6090535| 0.2876798| 1.2894412|
|0-24 months |SAS-CompFeed   |INDIA                        |4                  |1              | 0.8333333| 0.5400637| 1.2858565|
|0-24 months |SAS-CompFeed   |INDIA                        |5                  |1              | 0.9966330| 0.4862095| 2.0428997|
|0-24 months |SAS-CompFeed   |INDIA                        |6                  |1              | 1.2446483| 0.8263132| 1.8747728|
|0-24 months |SAS-CompFeed   |INDIA                        |7                  |1              | 1.0428922| 0.6681305| 1.6278616|
|0-24 months |SAS-CompFeed   |INDIA                        |8                  |1              | 0.7923650| 0.4847086| 1.2952985|
|0-24 months |SAS-CompFeed   |INDIA                        |9                  |1              | 1.0977312| 0.7292891| 1.6523131|
|0-24 months |SAS-CompFeed   |INDIA                        |10                 |1              | 1.0090909| 0.6011482| 1.6938660|
|0-24 months |SAS-CompFeed   |INDIA                        |11                 |1              | 0.9690476| 0.6124283| 1.5333277|
|0-24 months |SAS-CompFeed   |INDIA                        |12                 |1              | 0.5362319| 0.4192876| 0.6857933|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.7685393| 0.3704941| 1.5942295|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3                  |1              | 0.4170732| 0.1658145| 1.0490642|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |4                  |1              | 0.9000000| 0.4535214| 1.7860236|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |5                  |1              | 0.6162162| 0.2845104| 1.3346520|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |6                  |1              | 0.8927711| 0.4382780| 1.8185724|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |7                  |1              | 0.7844037| 0.3945236| 1.5595751|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |8                  |1              | 0.5896552| 0.2832835| 1.2273683|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |9                  |1              | 0.5805556| 0.2737229| 1.2313358|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |10                 |1              | 0.7752000| 0.3980081| 1.5098562|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |11                 |1              | 0.8769231| 0.4509179| 1.7053971|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |12                 |1              | 0.8341463| 0.4198837| 1.6571259|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 1.0718823| 0.8325325| 1.3800441|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3                  |1              | 1.0344037| 0.8073003| 1.3253940|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |4                  |1              | 0.9314640| 0.7116985| 1.2190911|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |5                  |1              | 1.0654466| 0.8251888| 1.3756566|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |6                  |1              | 1.2053388| 0.9482348| 1.5321538|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |7                  |1              | 1.2106385| 0.9537779| 1.5366739|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |8                  |1              | 1.0717131| 0.8412064| 1.3653831|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |9                  |1              | 0.9418768| 0.7342189| 1.2082661|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |10                 |1              | 0.9391780| 0.7209639| 1.2234388|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |11                 |1              | 0.9395043| 0.7280631| 1.2123512|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |12                 |1              | 1.0922993| 0.8570318| 1.3921511|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.0071769| -0.0157387| 0.0300924|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0145882|  0.0052183| 0.0239581|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | -0.0360792| -0.0802198| 0.0080614|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | -0.0034597| -0.0293134| 0.0223940|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.0147729| -0.0692896| 0.0397439|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0217761| -0.0622799| 0.0187278|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0037370| -0.0107192| 0.0181932|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             |  0.1420584| -0.4448819| 0.4905716|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.2390518|  0.0689769| 0.3780582|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | -0.2002877| -0.4718476| 0.0211686|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | -0.0441223| -0.4242614| 0.2345567|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | -0.1002303| -0.5400317| 0.2139729|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.3302243| -1.1082504| 0.1606800|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             |  0.0405256| -0.1297655| 0.1851486|
