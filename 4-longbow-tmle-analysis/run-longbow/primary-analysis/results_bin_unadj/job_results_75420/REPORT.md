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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |nrooms | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            0|      0|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            1|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |            0|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |            1|    186|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |            0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |            1|     89|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |            0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |            1|     56|   373|
|0-24 months |COHORTS        |INDIA        |4+     |            0|     81|  5942|
|0-24 months |COHORTS        |INDIA        |4+     |            1|     40|  5942|
|0-24 months |COHORTS        |INDIA        |1      |            0|   1941|  5942|
|0-24 months |COHORTS        |INDIA        |1      |            1|   1165|  5942|
|0-24 months |COHORTS        |INDIA        |2      |            0|   1604|  5942|
|0-24 months |COHORTS        |INDIA        |2      |            1|    931|  5942|
|0-24 months |COHORTS        |INDIA        |3      |            0|    113|  5942|
|0-24 months |COHORTS        |INDIA        |3      |            1|     67|  5942|
|0-24 months |CONTENT        |PERU         |4+     |            0|     45|   215|
|0-24 months |CONTENT        |PERU         |4+     |            1|     21|   215|
|0-24 months |CONTENT        |PERU         |1      |            0|     33|   215|
|0-24 months |CONTENT        |PERU         |1      |            1|     11|   215|
|0-24 months |CONTENT        |PERU         |2      |            0|     48|   215|
|0-24 months |CONTENT        |PERU         |2      |            1|     12|   215|
|0-24 months |CONTENT        |PERU         |3      |            0|     36|   215|
|0-24 months |CONTENT        |PERU         |3      |            1|      9|   215|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |            0|    119|   698|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |            1|    205|   698|
|0-24 months |GMS-Nepal      |NEPAL        |1      |            0|     13|   698|
|0-24 months |GMS-Nepal      |NEPAL        |1      |            1|     36|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2      |            0|     62|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2      |            1|     83|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3      |            0|     58|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3      |            1|    122|   698|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |            0|    582| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |            1|    503| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |            0|   7981| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |            1|   8169| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |            0|   3806| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |            1|   3564| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |            0|   1361| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |            1|   1236| 27202|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |            0|    124|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |            1|    154|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            0|   1312|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            1|   1914|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |            0|    564|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |            1|    797|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |            0|    279|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |            1|    295|  5439|
|0-24 months |MAL-ED         |INDIA        |4+     |            0|     10|   245|
|0-24 months |MAL-ED         |INDIA        |4+     |            1|      4|   245|
|0-24 months |MAL-ED         |INDIA        |1      |            0|     30|   245|
|0-24 months |MAL-ED         |INDIA        |1      |            1|     44|   245|
|0-24 months |MAL-ED         |INDIA        |2      |            0|     34|   245|
|0-24 months |MAL-ED         |INDIA        |2      |            1|     61|   245|
|0-24 months |MAL-ED         |INDIA        |3      |            0|     23|   245|
|0-24 months |MAL-ED         |INDIA        |3      |            1|     39|   245|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |            0|      3|   254|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |            1|      6|   254|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            0|     51|   254|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            1|     86|   254|
|0-24 months |MAL-ED         |BANGLADESH   |2      |            0|     31|   254|
|0-24 months |MAL-ED         |BANGLADESH   |2      |            1|     44|   254|
|0-24 months |MAL-ED         |BANGLADESH   |3      |            0|     16|   254|
|0-24 months |MAL-ED         |BANGLADESH   |3      |            1|     17|   254|
|0-24 months |MAL-ED         |PERU         |4+     |            0|     44|   295|
|0-24 months |MAL-ED         |PERU         |4+     |            1|     76|   295|
|0-24 months |MAL-ED         |PERU         |1      |            0|      7|   295|
|0-24 months |MAL-ED         |PERU         |1      |            1|     11|   295|
|0-24 months |MAL-ED         |PERU         |2      |            0|     18|   295|
|0-24 months |MAL-ED         |PERU         |2      |            1|     29|   295|
|0-24 months |MAL-ED         |PERU         |3      |            0|     45|   295|
|0-24 months |MAL-ED         |PERU         |3      |            1|     65|   295|
|0-24 months |MAL-ED         |NEPAL        |4+     |            0|     92|   236|
|0-24 months |MAL-ED         |NEPAL        |4+     |            1|     47|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |            0|      6|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |            1|      2|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |            0|     41|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |            1|     28|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |            0|     13|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |            1|      7|   236|
|0-24 months |MAL-ED         |BRAZIL       |4+     |            0|     73|   211|
|0-24 months |MAL-ED         |BRAZIL       |4+     |            1|     27|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |            0|      3|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |            1|      0|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |            0|     18|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |            1|      3|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |            0|     60|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |            1|     27|   211|
|0-24 months |MAL-ED         |TANZANIA     |4+     |            0|     20|   256|
|0-24 months |MAL-ED         |TANZANIA     |4+     |            1|     87|   256|
|0-24 months |MAL-ED         |TANZANIA     |1      |            0|      1|   256|
|0-24 months |MAL-ED         |TANZANIA     |1      |            1|      9|   256|
|0-24 months |MAL-ED         |TANZANIA     |2      |            0|      7|   256|
|0-24 months |MAL-ED         |TANZANIA     |2      |            1|     37|   256|
|0-24 months |MAL-ED         |TANZANIA     |3      |            0|     10|   256|
|0-24 months |MAL-ED         |TANZANIA     |3      |            1|     85|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |            0|     86|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |            1|    117|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|      3|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|      7|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |            0|     12|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |            1|     14|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |            0|     15|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |            1|     17|   271|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |            0|     59|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |            1|     55|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |            0|    161|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |            1|    169|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |            0|    111|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |            1|     97|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |            0|     65|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |            1|     41|   758|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |            0|     20|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |            1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |            0|    274|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |            1|    220|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |            0|     66|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |            1|     44|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |            0|     35|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |            1|     33|   700|
|0-24 months |Vellore Crypto |INDIA        |4+     |            0|      4|   408|
|0-24 months |Vellore Crypto |INDIA        |4+     |            1|      8|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |            0|     73|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |            1|    131|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |            0|     58|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |            1|    101|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |            0|     12|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |            1|     21|   408|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |            0|      5|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |            1|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |            0|     97|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |            1|     97|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |            0|     47|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |            1|     51|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |            0|     31|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |            1|     31|   368|
|0-6 months  |COHORTS        |INDIA        |4+     |            0|     95|  5744|
|0-6 months  |COHORTS        |INDIA        |4+     |            1|     22|  5744|
|0-6 months  |COHORTS        |INDIA        |1      |            0|   2444|  5744|
|0-6 months  |COHORTS        |INDIA        |1      |            1|    567|  5744|
|0-6 months  |COHORTS        |INDIA        |2      |            0|   1987|  5744|
|0-6 months  |COHORTS        |INDIA        |2      |            1|    459|  5744|
|0-6 months  |COHORTS        |INDIA        |3      |            0|    140|  5744|
|0-6 months  |COHORTS        |INDIA        |3      |            1|     30|  5744|
|0-6 months  |CONTENT        |PERU         |4+     |            0|     55|   215|
|0-6 months  |CONTENT        |PERU         |4+     |            1|     11|   215|
|0-6 months  |CONTENT        |PERU         |1      |            0|     39|   215|
|0-6 months  |CONTENT        |PERU         |1      |            1|      5|   215|
|0-6 months  |CONTENT        |PERU         |2      |            0|     55|   215|
|0-6 months  |CONTENT        |PERU         |2      |            1|      5|   215|
|0-6 months  |CONTENT        |PERU         |3      |            0|     39|   215|
|0-6 months  |CONTENT        |PERU         |3      |            1|      6|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |            0|    221|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |            1|    103|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |            0|     30|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |            1|     19|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |            0|     99|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |            1|     46|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |            0|    126|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |            1|     54|   698|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |            0|    666| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |            1|    414| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |            0|   9275| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |            1|   6843| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |            0|   4417| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |            1|   2931| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |            0|   1576| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |            1|   1015| 27137|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |            0|    174|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |            1|     87|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            0|   1944|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            1|   1091|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |            0|    847|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |            1|    444|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |            0|    379|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |            1|    161|  5127|
|0-6 months  |MAL-ED         |INDIA        |4+     |            0|     12|   245|
|0-6 months  |MAL-ED         |INDIA        |4+     |            1|      2|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |            0|     47|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |            1|     27|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |            0|     65|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |            1|     30|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |            0|     36|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |            1|     26|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |            0|      8|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |            1|      1|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            0|     84|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            1|     53|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |            0|     51|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |            1|     24|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |            0|     22|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |            1|     11|   254|
|0-6 months  |MAL-ED         |PERU         |4+     |            0|     63|   295|
|0-6 months  |MAL-ED         |PERU         |4+     |            1|     57|   295|
|0-6 months  |MAL-ED         |PERU         |1      |            0|      9|   295|
|0-6 months  |MAL-ED         |PERU         |1      |            1|      9|   295|
|0-6 months  |MAL-ED         |PERU         |2      |            0|     29|   295|
|0-6 months  |MAL-ED         |PERU         |2      |            1|     18|   295|
|0-6 months  |MAL-ED         |PERU         |3      |            0|     69|   295|
|0-6 months  |MAL-ED         |PERU         |3      |            1|     41|   295|
|0-6 months  |MAL-ED         |NEPAL        |4+     |            0|    117|   236|
|0-6 months  |MAL-ED         |NEPAL        |4+     |            1|     22|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |            0|      7|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |            1|      1|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |            0|     53|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |            1|     16|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |            0|     16|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |            1|      4|   236|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |            0|     79|   211|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |            1|     21|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            0|      3|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            1|      0|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |            0|     18|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |            1|      3|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |            0|     64|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |            1|     23|   211|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |            0|     69|   256|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |            1|     38|   256|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            0|      3|   256|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            1|      7|   256|
|0-6 months  |MAL-ED         |TANZANIA     |2      |            0|     27|   256|
|0-6 months  |MAL-ED         |TANZANIA     |2      |            1|     17|   256|
|0-6 months  |MAL-ED         |TANZANIA     |3      |            0|     52|   256|
|0-6 months  |MAL-ED         |TANZANIA     |3      |            1|     43|   256|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |            0|    129|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |            1|     74|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            0|      4|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            1|      6|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |            0|     18|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |            1|      8|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |            0|     19|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |            1|     13|   271|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |            0|     81|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |            1|     33|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |            0|    226|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |            1|    104|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |            0|    142|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |            1|     66|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |            0|     80|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |            1|     26|   758|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |            0|     23|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |            1|      5|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |            0|    375|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |            1|    119|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |            0|     86|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |            1|     24|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |            0|     48|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |            1|     20|   700|
|0-6 months  |Vellore Crypto |INDIA        |4+     |            0|      7|   408|
|0-6 months  |Vellore Crypto |INDIA        |4+     |            1|      5|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |            0|    114|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |            1|     90|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |            0|     98|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |            1|     61|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |            0|     17|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |            1|     16|   408|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            0|      0|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |            1|      5|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |            0|     11|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |            1|     89|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |            0|      9|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |            1|     38|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |            0|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |            1|     25|   185|
|6-24 months |COHORTS        |INDIA        |4+     |            0|     75|  4567|
|6-24 months |COHORTS        |INDIA        |4+     |            1|     18|  4567|
|6-24 months |COHORTS        |INDIA        |1      |            0|   1790|  4567|
|6-24 months |COHORTS        |INDIA        |1      |            1|    598|  4567|
|6-24 months |COHORTS        |INDIA        |2      |            0|   1471|  4567|
|6-24 months |COHORTS        |INDIA        |2      |            1|    472|  4567|
|6-24 months |COHORTS        |INDIA        |3      |            0|    106|  4567|
|6-24 months |COHORTS        |INDIA        |3      |            1|     37|  4567|
|6-24 months |CONTENT        |PERU         |4+     |            0|     45|   188|
|6-24 months |CONTENT        |PERU         |4+     |            1|     10|   188|
|6-24 months |CONTENT        |PERU         |1      |            0|     33|   188|
|6-24 months |CONTENT        |PERU         |1      |            1|      6|   188|
|6-24 months |CONTENT        |PERU         |2      |            0|     48|   188|
|6-24 months |CONTENT        |PERU         |2      |            1|      7|   188|
|6-24 months |CONTENT        |PERU         |3      |            0|     36|   188|
|6-24 months |CONTENT        |PERU         |3      |            1|      3|   188|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |            0|     77|   397|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |            1|    102|   397|
|6-24 months |GMS-Nepal      |NEPAL        |1      |            0|      9|   397|
|6-24 months |GMS-Nepal      |NEPAL        |1      |            1|     17|   397|
|6-24 months |GMS-Nepal      |NEPAL        |2      |            0|     47|   397|
|6-24 months |GMS-Nepal      |NEPAL        |2      |            1|     37|   397|
|6-24 months |GMS-Nepal      |NEPAL        |3      |            0|     40|   397|
|6-24 months |GMS-Nepal      |NEPAL        |3      |            1|     68|   397|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |            0|    376| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |            1|     89| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |            0|   4693| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |            1|   1326| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |            0|   2310| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |            1|    633| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |            0|    843| 10491|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |            1|    221| 10491|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |            0|    123|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |            1|     67|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            0|   1307|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            1|    823|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |            0|    563|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |            1|    353|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |            0|    277|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |            1|    134|  3647|
|6-24 months |MAL-ED         |INDIA        |4+     |            0|     10|   150|
|6-24 months |MAL-ED         |INDIA        |4+     |            1|      2|   150|
|6-24 months |MAL-ED         |INDIA        |1      |            0|     27|   150|
|6-24 months |MAL-ED         |INDIA        |1      |            1|     17|   150|
|6-24 months |MAL-ED         |INDIA        |2      |            0|     30|   150|
|6-24 months |MAL-ED         |INDIA        |2      |            1|     31|   150|
|6-24 months |MAL-ED         |INDIA        |3      |            0|     20|   150|
|6-24 months |MAL-ED         |INDIA        |3      |            1|     13|   150|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |            0|      3|   153|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |            1|      5|   153|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            0|     42|   153|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            1|     33|   153|
|6-24 months |MAL-ED         |BANGLADESH   |2      |            0|     30|   153|
|6-24 months |MAL-ED         |BANGLADESH   |2      |            1|     20|   153|
|6-24 months |MAL-ED         |BANGLADESH   |3      |            0|     14|   153|
|6-24 months |MAL-ED         |BANGLADESH   |3      |            1|      6|   153|
|6-24 months |MAL-ED         |PERU         |4+     |            0|     33|   145|
|6-24 months |MAL-ED         |PERU         |4+     |            1|     19|   145|
|6-24 months |MAL-ED         |PERU         |1      |            0|      5|   145|
|6-24 months |MAL-ED         |PERU         |1      |            1|      2|   145|
|6-24 months |MAL-ED         |PERU         |2      |            0|     16|   145|
|6-24 months |MAL-ED         |PERU         |2      |            1|     11|   145|
|6-24 months |MAL-ED         |PERU         |3      |            0|     35|   145|
|6-24 months |MAL-ED         |PERU         |3      |            1|     24|   145|
|6-24 months |MAL-ED         |NEPAL        |4+     |            0|     90|   190|
|6-24 months |MAL-ED         |NEPAL        |4+     |            1|     25|   190|
|6-24 months |MAL-ED         |NEPAL        |1      |            0|      6|   190|
|6-24 months |MAL-ED         |NEPAL        |1      |            1|      1|   190|
|6-24 months |MAL-ED         |NEPAL        |2      |            0|     40|   190|
|6-24 months |MAL-ED         |NEPAL        |2      |            1|     12|   190|
|6-24 months |MAL-ED         |NEPAL        |3      |            0|     13|   190|
|6-24 months |MAL-ED         |NEPAL        |3      |            1|      3|   190|
|6-24 months |MAL-ED         |BRAZIL       |4+     |            0|     66|   148|
|6-24 months |MAL-ED         |BRAZIL       |4+     |            1|      6|   148|
|6-24 months |MAL-ED         |BRAZIL       |1      |            0|      3|   148|
|6-24 months |MAL-ED         |BRAZIL       |1      |            1|      0|   148|
|6-24 months |MAL-ED         |BRAZIL       |2      |            0|     12|   148|
|6-24 months |MAL-ED         |BRAZIL       |2      |            1|      0|   148|
|6-24 months |MAL-ED         |BRAZIL       |3      |            0|     57|   148|
|6-24 months |MAL-ED         |BRAZIL       |3      |            1|      4|   148|
|6-24 months |MAL-ED         |TANZANIA     |4+     |            0|     17|   144|
|6-24 months |MAL-ED         |TANZANIA     |4+     |            1|     49|   144|
|6-24 months |MAL-ED         |TANZANIA     |1      |            0|      1|   144|
|6-24 months |MAL-ED         |TANZANIA     |1      |            1|      2|   144|
|6-24 months |MAL-ED         |TANZANIA     |2      |            0|      5|   144|
|6-24 months |MAL-ED         |TANZANIA     |2      |            1|     20|   144|
|6-24 months |MAL-ED         |TANZANIA     |3      |            0|      8|   144|
|6-24 months |MAL-ED         |TANZANIA     |3      |            1|     42|   144|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |            0|     66|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |            1|     43|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|      2|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|      1|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |            0|      8|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |            1|      6|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |            0|     12|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |            1|      4|   142|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |            0|     57|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |            1|     22|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |            0|    152|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |            1|     65|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |            0|    106|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |            1|     31|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |            0|     58|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |            1|     15|   506|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |            0|     16|   456|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |            1|      3|   456|
|6-24 months |PROVIDE        |BANGLADESH   |1      |            0|    222|   456|
|6-24 months |PROVIDE        |BANGLADESH   |1      |            1|    101|   456|
|6-24 months |PROVIDE        |BANGLADESH   |2      |            0|     51|   456|
|6-24 months |PROVIDE        |BANGLADESH   |2      |            1|     20|   456|
|6-24 months |PROVIDE        |BANGLADESH   |3      |            0|     30|   456|
|6-24 months |PROVIDE        |BANGLADESH   |3      |            1|     13|   456|
|6-24 months |Vellore Crypto |INDIA        |4+     |            0|      4|   236|
|6-24 months |Vellore Crypto |INDIA        |4+     |            1|      3|   236|
|6-24 months |Vellore Crypto |INDIA        |1      |            0|     73|   236|
|6-24 months |Vellore Crypto |INDIA        |1      |            1|     41|   236|
|6-24 months |Vellore Crypto |INDIA        |2      |            0|     58|   236|
|6-24 months |Vellore Crypto |INDIA        |2      |            1|     40|   236|
|6-24 months |Vellore Crypto |INDIA        |3      |            0|     12|   236|
|6-24 months |Vellore Crypto |INDIA        |3      |            1|      5|   236|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


