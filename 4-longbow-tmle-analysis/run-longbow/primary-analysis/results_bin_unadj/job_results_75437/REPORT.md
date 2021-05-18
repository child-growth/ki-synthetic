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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |nrooms | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |             0|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |             1|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |             0|     68|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |             1|    129|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |             0|     36|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |             1|     62|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |             0|     30|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |             1|     34|   373|
|0-24 months |COHORTS        |INDIA        |4+     |             0|    108|  5942|
|0-24 months |COHORTS        |INDIA        |4+     |             1|     13|  5942|
|0-24 months |COHORTS        |INDIA        |1      |             0|   2703|  5942|
|0-24 months |COHORTS        |INDIA        |1      |             1|    403|  5942|
|0-24 months |COHORTS        |INDIA        |2      |             0|   2224|  5942|
|0-24 months |COHORTS        |INDIA        |2      |             1|    311|  5942|
|0-24 months |COHORTS        |INDIA        |3      |             0|    160|  5942|
|0-24 months |COHORTS        |INDIA        |3      |             1|     20|  5942|
|0-24 months |CONTENT        |PERU         |4+     |             0|     63|   215|
|0-24 months |CONTENT        |PERU         |4+     |             1|      3|   215|
|0-24 months |CONTENT        |PERU         |1      |             0|     43|   215|
|0-24 months |CONTENT        |PERU         |1      |             1|      1|   215|
|0-24 months |CONTENT        |PERU         |2      |             0|     57|   215|
|0-24 months |CONTENT        |PERU         |2      |             1|      3|   215|
|0-24 months |CONTENT        |PERU         |3      |             0|     42|   215|
|0-24 months |CONTENT        |PERU         |3      |             1|      3|   215|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |             0|    241|   698|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |             1|     83|   698|
|0-24 months |GMS-Nepal      |NEPAL        |1      |             0|     32|   698|
|0-24 months |GMS-Nepal      |NEPAL        |1      |             1|     17|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2      |             0|    116|   698|
|0-24 months |GMS-Nepal      |NEPAL        |2      |             1|     29|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3      |             0|    140|   698|
|0-24 months |GMS-Nepal      |NEPAL        |3      |             1|     40|   698|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |             0|    891| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |             1|    194| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |             0|  13069| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |             1|   3081| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |             0|   6045| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |             1|   1325| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |             0|   2182| 27202|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |             1|    415| 27202|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |             0|    224|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |             1|     54|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |             0|   2524|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |             1|    702|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |             0|   1104|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |             1|    257|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |             0|    482|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |             1|     92|  5439|
|0-24 months |MAL-ED         |INDIA        |4+     |             0|     13|   245|
|0-24 months |MAL-ED         |INDIA        |4+     |             1|      1|   245|
|0-24 months |MAL-ED         |INDIA        |1      |             0|     58|   245|
|0-24 months |MAL-ED         |INDIA        |1      |             1|     16|   245|
|0-24 months |MAL-ED         |INDIA        |2      |             0|     70|   245|
|0-24 months |MAL-ED         |INDIA        |2      |             1|     25|   245|
|0-24 months |MAL-ED         |INDIA        |3      |             0|     45|   245|
|0-24 months |MAL-ED         |INDIA        |3      |             1|     17|   245|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |             0|      6|   254|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |             1|      3|   254|
|0-24 months |MAL-ED         |BANGLADESH   |1      |             0|    103|   254|
|0-24 months |MAL-ED         |BANGLADESH   |1      |             1|     34|   254|
|0-24 months |MAL-ED         |BANGLADESH   |2      |             0|     63|   254|
|0-24 months |MAL-ED         |BANGLADESH   |2      |             1|     12|   254|
|0-24 months |MAL-ED         |BANGLADESH   |3      |             0|     28|   254|
|0-24 months |MAL-ED         |BANGLADESH   |3      |             1|      5|   254|
|0-24 months |MAL-ED         |PERU         |4+     |             0|     96|   295|
|0-24 months |MAL-ED         |PERU         |4+     |             1|     24|   295|
|0-24 months |MAL-ED         |PERU         |1      |             0|     13|   295|
|0-24 months |MAL-ED         |PERU         |1      |             1|      5|   295|
|0-24 months |MAL-ED         |PERU         |2      |             0|     39|   295|
|0-24 months |MAL-ED         |PERU         |2      |             1|      8|   295|
|0-24 months |MAL-ED         |PERU         |3      |             0|     86|   295|
|0-24 months |MAL-ED         |PERU         |3      |             1|     24|   295|
|0-24 months |MAL-ED         |NEPAL        |4+     |             0|    128|   236|
|0-24 months |MAL-ED         |NEPAL        |4+     |             1|     11|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |             0|      6|   236|
|0-24 months |MAL-ED         |NEPAL        |1      |             1|      2|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |             0|     62|   236|
|0-24 months |MAL-ED         |NEPAL        |2      |             1|      7|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |             0|     19|   236|
|0-24 months |MAL-ED         |NEPAL        |3      |             1|      1|   236|
|0-24 months |MAL-ED         |BRAZIL       |4+     |             0|     90|   211|
|0-24 months |MAL-ED         |BRAZIL       |4+     |             1|     10|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |             0|      3|   211|
|0-24 months |MAL-ED         |BRAZIL       |1      |             1|      0|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |             0|     20|   211|
|0-24 months |MAL-ED         |BRAZIL       |2      |             1|      1|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |             0|     78|   211|
|0-24 months |MAL-ED         |BRAZIL       |3      |             1|      9|   211|
|0-24 months |MAL-ED         |TANZANIA     |4+     |             0|     53|   256|
|0-24 months |MAL-ED         |TANZANIA     |4+     |             1|     54|   256|
|0-24 months |MAL-ED         |TANZANIA     |1      |             0|      4|   256|
|0-24 months |MAL-ED         |TANZANIA     |1      |             1|      6|   256|
|0-24 months |MAL-ED         |TANZANIA     |2      |             0|     21|   256|
|0-24 months |MAL-ED         |TANZANIA     |2      |             1|     23|   256|
|0-24 months |MAL-ED         |TANZANIA     |3      |             0|     44|   256|
|0-24 months |MAL-ED         |TANZANIA     |3      |             1|     51|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |             0|    154|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |             1|     49|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |             0|      7|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |             1|      3|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |             0|     22|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |             1|      4|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |             0|     23|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |             1|      9|   271|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |             0|    104|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |             1|     10|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |             0|    287|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |             1|     43|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |             0|    171|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |             1|     37|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |             0|     97|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |             1|      9|   758|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |             0|     26|   700|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |             1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |             0|    432|   700|
|0-24 months |PROVIDE        |BANGLADESH   |1      |             1|     62|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |             0|     93|   700|
|0-24 months |PROVIDE        |BANGLADESH   |2      |             1|     17|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |             0|     54|   700|
|0-24 months |PROVIDE        |BANGLADESH   |3      |             1|     14|   700|
|0-24 months |Vellore Crypto |INDIA        |4+     |             0|      8|   408|
|0-24 months |Vellore Crypto |INDIA        |4+     |             1|      4|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |             0|    152|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |             1|     52|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |             0|    121|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |             1|     38|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |             0|     25|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |             1|      8|   408|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |             0|      9|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |             1|      5|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |             0|    152|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |             1|     42|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |             0|     68|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |             1|     30|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |             0|     48|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |             1|     14|   368|
|0-6 months  |COHORTS        |INDIA        |4+     |             0|    111|  5744|
|0-6 months  |COHORTS        |INDIA        |4+     |             1|      6|  5744|
|0-6 months  |COHORTS        |INDIA        |1      |             0|   2861|  5744|
|0-6 months  |COHORTS        |INDIA        |1      |             1|    150|  5744|
|0-6 months  |COHORTS        |INDIA        |2      |             0|   2313|  5744|
|0-6 months  |COHORTS        |INDIA        |2      |             1|    133|  5744|
|0-6 months  |COHORTS        |INDIA        |3      |             0|    165|  5744|
|0-6 months  |COHORTS        |INDIA        |3      |             1|      5|  5744|
|0-6 months  |CONTENT        |PERU         |4+     |             0|     64|   215|
|0-6 months  |CONTENT        |PERU         |4+     |             1|      2|   215|
|0-6 months  |CONTENT        |PERU         |1      |             0|     43|   215|
|0-6 months  |CONTENT        |PERU         |1      |             1|      1|   215|
|0-6 months  |CONTENT        |PERU         |2      |             0|     58|   215|
|0-6 months  |CONTENT        |PERU         |2      |             1|      2|   215|
|0-6 months  |CONTENT        |PERU         |3      |             0|     42|   215|
|0-6 months  |CONTENT        |PERU         |3      |             1|      3|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |             0|    297|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |             1|     27|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |             0|     41|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |             1|      8|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |             0|    129|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |             1|     16|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |             0|    171|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |             1|      9|   698|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |             0|    918| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |             1|    162| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |             0|  13664| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |             1|   2454| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |             0|   6284| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |             1|   1064| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |             0|   2273| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |             1|    318| 27137|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |             0|    230|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |4+     |             1|     31|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |             0|   2712|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |             1|    323|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |             0|   1175|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |2      |             1|    116|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |             0|    490|  5127|
|0-6 months  |JiVitA-4       |BANGLADESH   |3      |             1|     50|  5127|
|0-6 months  |MAL-ED         |INDIA        |4+     |             0|     14|   245|
|0-6 months  |MAL-ED         |INDIA        |4+     |             1|      0|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |             0|     70|   245|
|0-6 months  |MAL-ED         |INDIA        |1      |             1|      4|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |             0|     84|   245|
|0-6 months  |MAL-ED         |INDIA        |2      |             1|     11|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |             0|     56|   245|
|0-6 months  |MAL-ED         |INDIA        |3      |             1|      6|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |             0|      9|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |             1|      0|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |             0|    124|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |             1|     13|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |             0|     71|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |             1|      4|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |             0|     30|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |             1|      3|   254|
|0-6 months  |MAL-ED         |PERU         |4+     |             0|    102|   295|
|0-6 months  |MAL-ED         |PERU         |4+     |             1|     18|   295|
|0-6 months  |MAL-ED         |PERU         |1      |             0|     14|   295|
|0-6 months  |MAL-ED         |PERU         |1      |             1|      4|   295|
|0-6 months  |MAL-ED         |PERU         |2      |             0|     41|   295|
|0-6 months  |MAL-ED         |PERU         |2      |             1|      6|   295|
|0-6 months  |MAL-ED         |PERU         |3      |             0|    101|   295|
|0-6 months  |MAL-ED         |PERU         |3      |             1|      9|   295|
|0-6 months  |MAL-ED         |NEPAL        |4+     |             0|    131|   236|
|0-6 months  |MAL-ED         |NEPAL        |4+     |             1|      8|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |             0|      8|   236|
|0-6 months  |MAL-ED         |NEPAL        |1      |             1|      0|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |             0|     67|   236|
|0-6 months  |MAL-ED         |NEPAL        |2      |             1|      2|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |             0|     20|   236|
|0-6 months  |MAL-ED         |NEPAL        |3      |             1|      0|   236|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |             0|     92|   211|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |             1|      8|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |             0|      3|   211|
|0-6 months  |MAL-ED         |BRAZIL       |1      |             1|      0|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |             0|     21|   211|
|0-6 months  |MAL-ED         |BRAZIL       |2      |             1|      0|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |             0|     79|   211|
|0-6 months  |MAL-ED         |BRAZIL       |3      |             1|      8|   211|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |             0|     90|   256|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |             1|     17|   256|
|0-6 months  |MAL-ED         |TANZANIA     |1      |             0|      7|   256|
|0-6 months  |MAL-ED         |TANZANIA     |1      |             1|      3|   256|
|0-6 months  |MAL-ED         |TANZANIA     |2      |             0|     38|   256|
|0-6 months  |MAL-ED         |TANZANIA     |2      |             1|      6|   256|
|0-6 months  |MAL-ED         |TANZANIA     |3      |             0|     85|   256|
|0-6 months  |MAL-ED         |TANZANIA     |3      |             1|     10|   256|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |             0|    182|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |             1|     21|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |             0|      8|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |             1|      2|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |             0|     26|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |             1|      0|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |             0|     30|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |             1|      2|   271|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |             0|    111|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |             1|      3|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |             0|    308|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |             1|     22|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |             0|    189|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |             1|     19|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |             0|    103|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |             1|      3|   758|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |             0|     27|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |             1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |             0|    473|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |             1|     21|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |             0|    105|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |             1|      5|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |             0|     64|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |             1|      4|   700|
|0-6 months  |Vellore Crypto |INDIA        |4+     |             0|     10|   408|
|0-6 months  |Vellore Crypto |INDIA        |4+     |             1|      2|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |             0|    176|   408|
|0-6 months  |Vellore Crypto |INDIA        |1      |             1|     28|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |             0|    133|   408|
|0-6 months  |Vellore Crypto |INDIA        |2      |             1|     26|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |             0|     27|   408|
|0-6 months  |Vellore Crypto |INDIA        |3      |             1|      6|   408|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


